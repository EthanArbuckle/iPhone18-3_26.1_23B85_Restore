@interface DiagnosticsController
+ (id)loggingStateCache;
+ (void)initialize;
- (BOOL)_loadLoggingSupport;
- (BOOL)validateActionsDictionary:(id)dictionary;
- (BOOL)validateActionsDictionaryContent:(id)content identifier:(id)identifier;
- (BOOL)validateDiagnosticsConfiguration:(id)configuration;
- (BOOL)validateOSLogPreferencesProtocol:(id)protocol;
- (BOOL)validateSettingsDictionary:(id)dictionary;
- (BOOL)validateSettingsNodeContents:(id)contents identifier:(id)identifier;
- (BOOL)validateSettingsNodeDictionary:(id)dictionary identifier:(id)identifier isDefault:(BOOL)default;
- (DiagnosticsController)initWithConfiguration:(id)configuration;
- (id)actionsDictionaryForProcess:(id)process logLevel:(id)level diagnosticExtensions:(id)extensions;
- (id)consolidatedLogLevelSetsFromActions:(id)actions;
- (id)defaultsDictionaryWithAlwaysRunActions:(id)actions;
- (id)diagActionsForSignature:(id)signature commonActions:(id)actions;
- (id)diagExtensionCollector;
- (id)diagnosticExtensionsForDiagnosticCase:(id)case enableCommonActions:(id)actions;
- (unint64_t)collectDiagnosticExtensionFilesForDiagnosticCase:(id)case parameters:(id)parameters options:(id)options queue:(id)queue reply:(id)reply;
- (void)applyLogLevel:(id)level forIdentifier:(id)identifier logSettingType:(unint64_t)type;
- (void)applyLogLevelSets:(id)sets;
- (void)configureWithDiagnosticActions:(id)actions;
- (void)consolidateLoggingLevelsIntoSet:(id)set withCurrentState:(id)state;
- (void)dealloc;
- (void)lowerLoggingForDiagnosticCase:(id)case;
- (void)lowerLoggingForIdentifier:(id)identifier;
- (void)raiseLoggingForActions:(id)actions identifier:(id)identifier;
- (void)raiseLoggingForDiagnosticCase:(id)case;
@end

@implementation DiagnosticsController

+ (void)initialize
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_28537A0B0;
  v5[1] = &unk_28537A0C8;
  v6[0] = @"process";
  v6[1] = @"subsystem";
  v5[2] = &unk_28537A0E0;
  v6[2] = @"category";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = LogSettingToString;
  LogSettingToString = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (DiagnosticsController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8.receiver = self;
  v8.super_class = DiagnosticsController;
  v5 = [(DiagnosticsController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DiagnosticsController *)v5 configureWithDiagnosticActions:configurationCopy];
  }

  return v6;
}

- (void)dealloc
{
  if (gLoggingSupportDyLibHandle)
  {
    dlclose(gLoggingSupportDyLibHandle);
    gLoggingSupportDyLibHandle = 0;
  }

  v3.receiver = self;
  v3.super_class = DiagnosticsController;
  [(DiagnosticsController *)&v3 dealloc];
}

- (BOOL)_loadLoggingSupport
{
  if (_loadLoggingSupport_symbolLoadOnce != -1)
  {
    [DiagnosticsController _loadLoggingSupport];
  }

  return _loadLoggingSupport_symbolsLoaded;
}

void __44__DiagnosticsController__loadLoggingSupport__block_invoke()
{
  gLoggingSupportDyLibHandle = dlopen("/System/Library/PrivateFrameworks/LoggingSupport.framework/LoggingSupport", 6);
  if (!gLoggingSupportDyLibHandle)
  {
    v6 = diagcollectLogHandle();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v11 = 0;
    v7 = "Failed to load LoggingSupport.framework";
    v8 = &v11;
LABEL_21:
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_22;
  }

  gOSLogPreferencesManager = objc_getClass("OSLogPreferencesManager");
  gOSLogPreferencesSubsystem = objc_getClass("OSLogPreferencesSubsystem");
  gOSLogPreferencesProcess = objc_getClass("OSLogPreferencesProcess");
  Class = objc_getClass("OSLogPreferencesCategory");
  gOSLogPreferencesCategory = Class;
  if (gOSLogPreferencesManager)
  {
    v1 = gOSLogPreferencesSubsystem == 0;
  }

  else
  {
    v1 = 1;
  }

  v4 = !v1 && gOSLogPreferencesProcess != 0 && Class != 0;
  _loadLoggingSupport_symbolsLoaded = v4;
  v5 = diagcollectLogHandle();
  v6 = v5;
  if (v4 != 1)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v7 = "Failed to load OSLogPreferences* classes from LoggingSupport.framework";
    v8 = buf;
    goto LABEL_21;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v13 = 0;
    v7 = "Successfully loaded OSLogPreferences* classes from LoggingSupport.framework.";
    v8 = &v13;
    v9 = v6;
    v10 = OS_LOG_TYPE_INFO;
LABEL_22:
    _os_log_impl(&dword_241804000, v9, v10, v7, v8, 2u);
  }

LABEL_23:
}

- (void)configureWithDiagnosticActions:(id)actions
{
  actionsCopy = actions;
  v5 = +[ABCAdministrator sharedInstance];
  configurationManager = [v5 configurationManager];
  autoBugCaptureRegularPayloads = [configurationManager autoBugCaptureRegularPayloads];

  if (autoBugCaptureRegularPayloads)
  {
    if ([(DiagnosticsController *)self validateDiagnosticsConfiguration:actionsCopy])
    {
      v8 = MEMORY[0x277CBEB38];
      v9 = [actionsCopy objectForKeyedSubscript:@"DIAGNOSTIC_ACTIONS"];
      v10 = [v8 dictionaryWithDictionary:v9];
      actionsDict = self->_actionsDict;
      self->_actionsDict = v10;

      v12 = MEMORY[0x277CBEB38];
      v13 = [actionsCopy objectForKeyedSubscript:@"DIAGNOSTIC_SETTINGS"];
      v14 = [v12 dictionaryWithDictionary:v13];
      settingsDict = self->_settingsDict;
      self->_settingsDict = v14;
    }
  }

  else
  {
    v16 = diagcollectLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "Not configuring for platforms without payloads", v17, 2u);
    }
  }
}

- (BOOL)validateDiagnosticsConfiguration:(id)configuration
{
  v29 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = [configurationCopy objectForKeyedSubscript:@"DIAGNOSTIC_ACTIONS"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(DiagnosticsController *)self validateActionsDictionary:v5];
    v7 = diagcollectLogHandle();
    v8 = v7;
    if (v6)
    {
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      LOWORD(v25) = 0;
      v9 = "Finished validating actions dictionary.";
      v10 = v8;
      v11 = OS_LOG_TYPE_INFO;
    }

    else
    {
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      LOWORD(v25) = 0;
      v9 = "Validation Failure: Errors detected while validating actions dictionary!";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_241804000, v10, v11, v9, &v25, 2u);
  }

  else
  {
    v8 = diagcollectLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v25 = 138412546;
      v26 = v5;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "Unexpected object %@ (%@) found for actions dictionary!", &v25, 0x16u);
    }

    LOBYTE(v6) = 0;
  }

LABEL_11:

  v14 = [configurationCopy objectForKeyedSubscript:@"DIAGNOSTIC_SETTINGS"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [(DiagnosticsController *)self validateSettingsDictionary:v14];
    v16 = diagcollectLogHandle();
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v25) = 0;
        v18 = "Finished validating settings dictionary.";
        v19 = v17;
        v20 = OS_LOG_TYPE_DEBUG;
LABEL_20:
        _os_log_impl(&dword_241804000, v19, v20, v18, &v25, 2u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25) = 0;
      v18 = "Validation Failure: Errors detected while validating settings dictionary!";
      v19 = v17;
      v20 = OS_LOG_TYPE_ERROR;
      goto LABEL_20;
    }
  }

  else
  {
    v17 = diagcollectLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v25 = 138412546;
      v26 = v14;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_ERROR, "Unexpected object %@ (%@) found for settings dictionary!", &v25, 0x16u);
    }

    LOBYTE(v15) = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v6 && v15;
}

- (BOOL)validateActionsDictionary:(id)dictionary
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys = [dictionary allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    v8 = 1;
    v9 = 0x277CCA000uLL;
    v10 = &dword_241804000;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = *(v9 + 3240);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v12;
          if ([v14 length])
          {
            v15 = [(NSMutableDictionary *)self->_actionsDict objectForKeyedSubscript:v14];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(DiagnosticsController *)self validateActionsDictionaryContent:v15 identifier:v14];
            }

            else if (v15)
            {
              v18 = allKeys;
              selfCopy = self;
              v20 = v10;
              v21 = diagcollectLogHandle();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v22 = objc_opt_class();
                v23 = NSStringFromClass(v22);
                *buf = 138412290;
                v31 = v23;
                _os_log_impl(v20, v21, OS_LOG_TYPE_DEBUG, "Found unexpected class for actions value: %@ (should be NSDictionary)", buf, 0xCu);
              }

              v8 = 0;
              v10 = v20;
              self = selfCopy;
              allKeys = v18;
              v9 = 0x277CCA000;
            }
          }

          else
          {
            v15 = diagcollectLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(v10, v15, OS_LOG_TYPE_DEBUG, "Actions identifiers must not be empty", buf, 2u);
            }

            v8 = 0;
          }
        }

        else
        {
          if (!v12)
          {
            continue;
          }

          v14 = diagcollectLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v16 = objc_opt_class();
            v17 = NSStringFromClass(v16);
            *buf = 138412290;
            v31 = v17;
            _os_log_impl(v10, v14, OS_LOG_TYPE_DEBUG, "Found unexpected class for actions identifier: %@ (should be NSString)", buf, 0xCu);
          }

          v8 = 0;
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (!v6)
      {
        goto LABEL_27;
      }
    }
  }

  v8 = 1;
LABEL_27:

  v24 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (BOOL)validateActionsDictionaryContent:(id)content identifier:(id)identifier
{
  v93 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  identifierCopy = identifier;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  allKeys = [contentCopy allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v78 objects:v92 count:16];
  if (!v7)
  {
    v9 = 1;
    goto LABEL_121;
  }

  v8 = v7;
  v9 = 1;
  v10 = *v79;
  v63 = contentCopy;
  v64 = *v79;
  v62 = allKeys;
  do
  {
    v11 = 0;
    v65 = v8;
    do
    {
      if (*v79 != v10)
      {
        objc_enumerationMutation(allKeys);
      }

      v67 = v11;
      v12 = *(*(&v78 + 1) + 8 * v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        v14 = [contentCopy objectForKeyedSubscript:v13];
        v66 = v14;
        if ([v13 isEqualToString:@"oslog"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v69 = v13;
            v15 = v14;
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            allKeys2 = [v15 allKeys];
            v17 = [allKeys2 countByEnumeratingWithState:&v74 objects:v91 count:16];
            if (!v17)
            {
              goto LABEL_54;
            }

            v18 = v17;
            v19 = *v75;
            while (1)
            {
              v20 = 0;
              do
              {
                if (*v75 != v19)
                {
                  objc_enumerationMutation(allKeys2);
                }

                v21 = *(*(&v74 + 1) + 8 * v20);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v22 = v21;
                  v23 = v15;
                  v24 = [v15 objectForKeyedSubscript:v22];
                  if ([v22 isEqualToString:@"level"])
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v25 = v24;
                      if ([v25 length])
                      {
                        if (([v25 isEqualToString:@"default"]& 1) == 0 && ([v25 isEqualToString:@"info"]& 1) == 0 && ([v25 isEqualToString:@"debug"]& 1) == 0 && ([v25 isEqualToString:@"none"]& 1) == 0)
                        {
                          v26 = diagcollectLogHandle();
                          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 138412290;
                            v84 = v25;
                            _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEBUG, "Unknown OSLog level: %@", buf, 0xCu);
                          }

                          goto LABEL_45;
                        }
                      }

                      else
                      {
                        v26 = diagcollectLogHandle();
                        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEBUG, "OSLog level setting must not be empty", buf, 2u);
                        }

                        v9 = 0;
LABEL_45:
                      }

LABEL_46:

LABEL_47:
                      v15 = v23;
                      goto LABEL_48;
                    }

                    if (!v24)
                    {
                      goto LABEL_47;
                    }

                    v25 = diagcollectLogHandle();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                    {
LABEL_40:
                      v30 = objc_opt_class();
                      v31 = NSStringFromClass(v30);
                      *buf = 138413058;
                      v84 = identifierCopy;
                      v85 = 2112;
                      v86 = v69;
                      v87 = 2112;
                      v88 = v22;
                      v89 = 2112;
                      v90 = v31;
                      _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_DEBUG, "Found unexpected class for value of oslog settings key %@.%@.%@: %@ (should be NSString)", buf, 0x2Au);
                    }
                  }

                  else if (([v22 isEqualToString:@"process"]& 1) != 0 || ([v22 isEqualToString:@"category"]& 1) != 0 || [v22 isEqualToString:@"subsystem"])
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v25 = v24;
                      if (![v25 length])
                      {
                        v29 = diagcollectLogHandle();
                        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138412290;
                          v84 = v22;
                          _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_DEBUG, "OSLog %@ identifier must not be empty", buf, 0xCu);
                        }

                        v9 = 0;
                      }

                      goto LABEL_46;
                    }

                    v25 = diagcollectLogHandle();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_40;
                    }
                  }

                  else
                  {
                    v25 = diagcollectLogHandle();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412802;
                      v84 = identifierCopy;
                      v85 = 2112;
                      v86 = v69;
                      v87 = 2112;
                      v88 = v22;
                      _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_DEBUG, "Found unsupported oslog settings key: %@.%@.%@", buf, 0x20u);
                    }
                  }

                  v9 = 0;
                  goto LABEL_46;
                }

                if (!v21)
                {
                  goto LABEL_49;
                }

                v22 = diagcollectLogHandle();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                {
                  v27 = objc_opt_class();
                  v28 = NSStringFromClass(v27);
                  *buf = 138412802;
                  v84 = identifierCopy;
                  v85 = 2112;
                  v86 = v69;
                  v87 = 2112;
                  v88 = v28;
                  _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_DEBUG, "Found unexpected class for oslog settings key in %@.%@: %@ (should be NSString)", buf, 0x20u);
                }

                v9 = 0;
LABEL_48:

LABEL_49:
                ++v20;
              }

              while (v18 != v20);
              v32 = [allKeys2 countByEnumeratingWithState:&v74 objects:v91 count:16];
              v18 = v32;
              if (!v32)
              {
LABEL_54:

                allKeys = v62;
                contentCopy = v63;
                v10 = v64;
                v8 = v65;
                goto LABEL_55;
              }
            }
          }

          if (!v14)
          {
            goto LABEL_110;
          }

          v15 = diagcollectLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v39 = objc_opt_class();
            NSStringFromClass(v39);
            v41 = v40 = v13;
            *buf = 138412802;
            v84 = identifierCopy;
            v85 = 2112;
            v86 = v40;
            v87 = 2112;
            v88 = v41;
            v42 = v15;
            v43 = "Found unexpected class for value of actions key %@.%@: %@ (should be NSDictionary)";
            goto LABEL_107;
          }

          goto LABEL_108;
        }

        if ([v13 isEqualToString:@"process"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v14 length])
            {
              goto LABEL_110;
            }

            v15 = diagcollectLogHandle();
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_108;
            }

            *buf = 0;
            v36 = v15;
            v37 = "OSLog process identifier must not be empty";
            v38 = 2;
LABEL_103:
            _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_DEBUG, v37, buf, v38);
            goto LABEL_108;
          }

          if (!v14)
          {
            goto LABEL_110;
          }

          v15 = diagcollectLogHandle();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_108;
          }

LABEL_106:
          v58 = objc_opt_class();
          NSStringFromClass(v58);
          v41 = v40 = v13;
          *buf = 138412802;
          v84 = identifierCopy;
          v85 = 2112;
          v86 = v40;
          v87 = 2112;
          v88 = v41;
          v42 = v15;
          v43 = "Found unexpected class for value of actions key %@.%@: %@ (should be NSString)";
LABEL_107:
          _os_log_impl(&dword_241804000, v42, OS_LOG_TYPE_DEBUG, v43, buf, 0x20u);

          v13 = v40;
LABEL_108:
          v9 = 0;
          goto LABEL_109;
        }

        if ([v13 isEqualToString:@"level"])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v14)
            {
              goto LABEL_110;
            }

            v15 = diagcollectLogHandle();
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_108;
            }

            goto LABEL_106;
          }

          v15 = v14;
          if ([v15 length])
          {
            if (([v15 isEqualToString:@"default"]& 1) != 0 || ([v15 isEqualToString:@"info"]& 1) != 0 || ([v15 isEqualToString:@"debug"]& 1) != 0 || ([v15 isEqualToString:@"none"]& 1) != 0)
            {
              goto LABEL_109;
            }

            v44 = v15;
            v45 = v13;
            v46 = diagcollectLogHandle();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v84 = v44;
              v47 = v46;
              v48 = "Unsupported OSLog level: %@";
              v49 = 12;
              goto LABEL_116;
            }
          }

          else
          {
            v44 = v15;
            v45 = v13;
            v46 = diagcollectLogHandle();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              v47 = v46;
              v48 = "OSLog level setting must not be empty";
              v49 = 2;
LABEL_116:
              _os_log_impl(&dword_241804000, v47, OS_LOG_TYPE_DEBUG, v48, buf, v49);
            }
          }

          v9 = 0;
          v13 = v45;
          v15 = v44;
          goto LABEL_109;
        }

        if (![v13 isEqualToString:@"diagExt"])
        {
          v15 = diagcollectLogHandle();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_108;
          }

          *buf = 138412546;
          v84 = identifierCopy;
          v85 = 2112;
          v86 = v13;
          v36 = v15;
          v37 = "Found unsupported actions key: %@.%@";
          v38 = 22;
          goto LABEL_103;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v14)
          {
            goto LABEL_110;
          }

          v15 = diagcollectLogHandle();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_108;
          }

          goto LABEL_106;
        }

        v69 = v13;
        v15 = v14;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v50 = [v15 countByEnumeratingWithState:&v70 objects:v82 count:16];
        if (!v50)
        {
          goto LABEL_55;
        }

        v51 = v50;
        v52 = *v71;
        while (2)
        {
          v53 = 0;
LABEL_85:
          if (*v71 != v52)
          {
            objc_enumerationMutation(v15);
          }

          v54 = *(*(&v70 + 1) + 8 * v53);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (![v54 length])
            {
              v55 = diagcollectLogHandle();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_241804000, v55, OS_LOG_TYPE_DEBUG, "Diagnostic Extension identifiers must not be empty", buf, 2u);
              }

              goto LABEL_94;
            }
          }

          else if (v54)
          {
            v55 = diagcollectLogHandle();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              v56 = objc_opt_class();
              v57 = NSStringFromClass(v56);
              *buf = 138412290;
              v84 = v57;
              _os_log_impl(&dword_241804000, v55, OS_LOG_TYPE_DEBUG, "Found unexpected class for Diagnostic Extension identifiers: %@ (should be NSString)", buf, 0xCu);
            }

LABEL_94:

            v9 = 0;
          }

          if (v51 == ++v53)
          {
            v51 = [v15 countByEnumeratingWithState:&v70 objects:v82 count:16];
            if (!v51)
            {
              v10 = v64;
              v8 = v65;
LABEL_55:
              v13 = v69;
LABEL_109:

              v14 = v66;
LABEL_110:

LABEL_111:
              goto LABEL_112;
            }

            continue;
          }

          goto LABEL_85;
        }
      }

      if (v12)
      {
        v33 = diagcollectLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          *buf = 138412546;
          v84 = identifierCopy;
          v85 = 2112;
          v86 = v35;
          _os_log_impl(&dword_241804000, v33, OS_LOG_TYPE_DEBUG, "Found unexpected class for actions key %@: %@ (should be NSString)", buf, 0x16u);
        }

        v9 = 0;
        v13 = v33;
        goto LABEL_111;
      }

LABEL_112:
      v11 = v67 + 1;
    }

    while (v67 + 1 != v8);
    v59 = [allKeys countByEnumeratingWithState:&v78 objects:v92 count:16];
    v8 = v59;
  }

  while (v59);
LABEL_121:

  v60 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (BOOL)validateSettingsDictionary:(id)dictionary
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [dictionary allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = 1;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [(NSMutableDictionary *)self->_settingsDict objectForKeyedSubscript:v11];
          if ([v11 length])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v12;
              v8 = [(DiagnosticsController *)self validateSettingsNodeDictionary:v13 identifier:v11 isDefault:[v11 isEqualToString:@"DEFAULTS"]];
              goto LABEL_20;
            }

            if (v12)
            {
              v13 = diagcollectLogHandle();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                v16 = objc_opt_class();
                v17 = NSStringFromClass(v16);
                *buf = 138412546;
                v25 = v11;
                v26 = 2112;
                v27 = v17;
                _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "Found unexpected class for settings domain node %@: %@ (should be NSDictionary)", buf, 0x16u);
              }

LABEL_19:
              v8 = 0;
LABEL_20:
            }

            goto LABEL_22;
          }

          v13 = diagcollectLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "Settings domain identifier must not be empty", buf, 2u);
          }

          goto LABEL_19;
        }

        if (!v10)
        {
          continue;
        }

        v11 = diagcollectLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          *buf = 138412290;
          v25 = v15;
          _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEBUG, "Found unexpected class for settings domain identifier: %@ (should be NSString)", buf, 0xCu);
        }

        v8 = 0;
LABEL_22:
      }

      v6 = [allKeys countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (!v6)
      {
        goto LABEL_27;
      }
    }
  }

  v8 = 1;
LABEL_27:

  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)validateSettingsNodeDictionary:(id)dictionary identifier:(id)identifier isDefault:(BOOL)default
{
  defaultCopy = default;
  v46 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [dictionaryCopy allKeys];
  v8 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 1;
    v11 = *v36;
    v32 = dictionaryCopy;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          v15 = [dictionaryCopy objectForKeyedSubscript:v14];
          if (![v14 length])
          {
            v16 = diagcollectLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v40 = identifierCopy;
              _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEBUG, "Found empty key in node %@", buf, 0xCu);
            }

            goto LABEL_31;
          }

          if (defaultCopy)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (v15)
              {
                v16 = diagcollectLogHandle();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
                {
                  v17 = objc_opt_class();
                  v18 = NSStringFromClass(v17);
                  *buf = 138412802;
                  v40 = identifierCopy;
                  v41 = 2112;
                  v42 = v14;
                  v43 = 2112;
                  v44 = v18;
                  v19 = v16;
                  v20 = "Found unexpected class for value of default node key %@.%@: %@ (should be NSArray)";
                  goto LABEL_30;
                }

                goto LABEL_31;
              }

LABEL_33:

              goto LABEL_34;
            }

LABEL_25:
            v27 = MEMORY[0x277CCACA8];
            v25 = v15;
            v16 = [v27 stringWithFormat:@"%@.%@", identifierCopy, v14];
            v26 = [(DiagnosticsController *)self validateSettingsNodeContents:v25 identifier:v16];
LABEL_26:
            v10 = v26;

            dictionaryCopy = v32;
          }

          else
          {
            if ([v14 isEqualToString:@"alwaysRun"])
            {
              v23 = diagcollectLogHandle();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v40 = @"alwaysRun";
                v41 = 2112;
                v42 = identifierCopy;
                v43 = 2112;
                v44 = v14;
                _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_DEBUG, "Warning: Node key %@ is reserved for default dictionaries. (Found at %@.%@)", buf, 0x20u);
              }

              v10 = 0;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = MEMORY[0x277CCACA8];
              v25 = v15;
              v16 = [v24 stringWithFormat:@"%@.%@", identifierCopy, v14];
              v26 = [(DiagnosticsController *)self validateSettingsNodeDictionary:v25 identifier:v16 isDefault:[v14 isEqualToString:@"DEFAULTS"]];
              goto LABEL_26;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_25;
            }

            if (!v15)
            {
              goto LABEL_33;
            }

            v16 = diagcollectLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v28 = objc_opt_class();
              v18 = NSStringFromClass(v28);
              *buf = 138412802;
              v40 = identifierCopy;
              v41 = 2112;
              v42 = v14;
              v43 = 2112;
              v44 = v18;
              v19 = v16;
              v20 = "Found unexpected class for value of node key %@.%@: %@ (should be NSArray or NSDictionary)";
LABEL_30:
              _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_DEBUG, v20, buf, 0x20u);

              dictionaryCopy = v32;
            }

LABEL_31:
            v10 = 0;
          }

          goto LABEL_33;
        }

        v14 = diagcollectLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          *buf = 138412546;
          v40 = identifierCopy;
          v41 = 2112;
          v42 = v22;
          _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Found unexpected class for key in node %@: %@ (should be NSString)", buf, 0x16u);
        }

        v10 = 0;
LABEL_34:
      }

      v9 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (!v9)
      {
        goto LABEL_38;
      }
    }
  }

  v10 = 1;
LABEL_38:

  v29 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (BOOL)validateSettingsNodeContents:(id)contents identifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  identifierCopy = identifier;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [contentsCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = 1;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(contentsCopy);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v12 length])
          {
            continue;
          }

          v13 = diagcollectLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v23 = identifierCopy;
            _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "Action identifiers must not be empty. (%@)", buf, 0xCu);
          }
        }

        else
        {
          v13 = diagcollectLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            *buf = 138412546;
            v23 = identifierCopy;
            v24 = 2112;
            v25 = v15;
            _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "Found unexpected class for action identifiers in node key %@: %@ (should be NSString)", buf, 0x16u);
          }
        }

        v10 = 0;
      }

      v8 = [contentsCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (!v8)
      {
        goto LABEL_17;
      }
    }
  }

  v10 = 1;
LABEL_17:

  v16 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

+ (id)loggingStateCache
{
  if (loggingStateCache_m_pred != -1)
  {
    +[DiagnosticsController loggingStateCache];
  }

  v3 = loggingStateCache_stateDict;

  return v3;
}

uint64_t __42__DiagnosticsController_loggingStateCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = loggingStateCache_stateDict;
  loggingStateCache_stateDict = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)diagExtensionCollector
{
  deCollector = self->deCollector;
  if (!deCollector)
  {
    v4 = +[ABCAdministrator sharedInstance];
    configurationManager = [v4 configurationManager];

    v6 = [DiagnosticExtensionController alloc];
    logArchivePath = [configurationManager logArchivePath];
    v8 = [(DiagnosticExtensionController *)v6 initWithDestinationDirectory:logArchivePath];
    v9 = self->deCollector;
    self->deCollector = v8;

    deCollector = self->deCollector;
  }

  return deCollector;
}

- (id)defaultsDictionaryWithAlwaysRunActions:(id)actions
{
  actionsCopy = actions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([actionsCopy count])
  {
    [dictionary setObject:actionsCopy forKey:@"alwaysRun"];
  }

  return dictionary;
}

- (id)actionsDictionaryForProcess:(id)process logLevel:(id)level diagnosticExtensions:(id)extensions
{
  processCopy = process;
  levelCopy = level;
  extensionsCopy = extensions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = [processCopy length];
  if (levelCopy && v11)
  {
    [dictionary setObject:processCopy forKey:@"process"];
    [dictionary setObject:levelCopy forKey:@"level"];
  }

  if ([extensionsCopy count])
  {
    [dictionary setObject:extensionsCopy forKey:@"diagExt"];
  }

  return dictionary;
}

- (id)consolidatedLogLevelSetsFromActions:(id)actions
{
  v75 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  actionsDict = [(DiagnosticsController *)self actionsDict];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = diagcollectLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v67 = [actionsCopy count];
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEBUG, "Consolidating log levels from %ld actions", buf, 0xCu);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = actionsCopy;
  v7 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0x277CBE000uLL;
    v10 = *v63;
    v56 = actionsDict;
    v58 = *v63;
    do
    {
      v11 = 0;
      v57 = v8;
      do
      {
        if (*v63 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [actionsDict objectForKeyedSubscript:*(*(&v62 + 1) + 8 * v11)];
        v13 = *(v9 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v12;
          v15 = [v14 objectForKeyedSubscript:@"process"];
          v16 = [v14 objectForKeyedSubscript:@"level"];
          objc_opt_class();
          v61 = v16;
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = v16;
              v18 = v15;
              dictionary2 = [dictionary objectForKeyedSubscript:@"process"];
              if (!dictionary2)
              {
                dictionary2 = [MEMORY[0x277CBEB38] dictionary];
                [dictionary setObject:dictionary2 forKeyedSubscript:@"process"];
              }

              v20 = [dictionary2 objectForKeyedSubscript:v18];
              v21 = [v17 maximumLogLevelString:v20];

              [dictionary2 setObject:v21 forKeyedSubscript:v18];
              actionsDict = v56;
              v8 = v57;
              v9 = 0x277CBE000;
              v16 = v61;
              goto LABEL_20;
            }
          }

          if (v15 | v16)
          {
            dictionary2 = diagcollectLogHandle();
            if (os_log_type_enabled(dictionary2, OS_LOG_TYPE_DEBUG))
            {
              v24 = objc_opt_class();
              v25 = NSStringFromClass(v24);
              v26 = objc_opt_class();
              v27 = NSStringFromClass(v26);
              *buf = 138413058;
              v67 = @"process";
              v68 = 2112;
              v69 = @"level";
              v70 = 2112;
              v71 = v25;
              v72 = 2112;
              v73 = v27;
              _os_log_impl(&dword_241804000, dictionary2, OS_LOG_TYPE_DEBUG, "Found unexpected class for keys %@,%@ in the action dictionary (should be NSString): %@,%@", buf, 0x2Au);

              v9 = 0x277CBE000uLL;
              v8 = v57;
            }

LABEL_20:
          }

          v28 = [v14 objectForKeyedSubscript:@"oslog"];
          v29 = *(v9 + 2752);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v28)
            {
              v30 = diagcollectLogHandle();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                v39 = objc_opt_class();
                v40 = NSStringFromClass(v39);
                *buf = 138412546;
                v67 = @"oslog";
                v68 = 2112;
                v69 = v40;
                _os_log_impl(&dword_241804000, v30, OS_LOG_TYPE_DEBUG, "Found unexpected class for key %@ in the action dictionary (should be NSDictionary): %@", buf, 0x16u);
              }

              goto LABEL_54;
            }

LABEL_55:

            v10 = v58;
            goto LABEL_56;
          }

          v30 = v28;
          v31 = [v30 objectForKeyedSubscript:@"level"];
          v32 = [v30 objectForKeyedSubscript:@"process"];
          v33 = [v30 objectForKeyedSubscript:@"category"];
          v34 = [v30 objectForKeyedSubscript:@"subsystem"];
          v35 = v34;
          v60 = v33;
          if (!v31)
          {
            v36 = diagcollectLogHandle();
            if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_53;
            }

            *buf = 0;
            v37 = v36;
            v38 = "OSLog setting requires a level to be specified.";
LABEL_36:
            _os_log_impl(&dword_241804000, v37, OS_LOG_TYPE_DEBUG, v38, buf, 2u);
            goto LABEL_53;
          }

          if (v32 && v34)
          {
            v36 = diagcollectLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              v37 = v36;
              v38 = "OSLog setting should identify a process or subsystem, not both.";
              goto LABEL_36;
            }

LABEL_53:

            actionsDict = v56;
            v8 = v57;
            v9 = 0x277CBE000;
LABEL_54:

            v16 = v61;
            goto LABEL_55;
          }

          if (v33 && !v34)
          {
            v36 = diagcollectLogHandle();
            if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_53;
            }

            *buf = 0;
            v37 = v36;
            v38 = "OSLog setting requires a subsystem identifier when specifying a category.";
            goto LABEL_36;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v36 = v31;
            if (v32)
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (v60)
              {
                if ((isKindOfClass & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (v35)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        goto LABEL_53;
                      }
                    }
                  }
                }
              }
            }

            v50 = v32;
            v42 = v32;
            v51 = v60;
            v52 = v35;
            v54 = v42;
            if ([(__CFString *)v42 length])
            {
              dictionary3 = [dictionary objectForKeyedSubscript:@"process"];
              if (!dictionary3)
              {
                dictionary3 = [MEMORY[0x277CBEB38] dictionary];
                [dictionary setObject:? forKeyedSubscript:?];
              }

              v49 = [dictionary3 objectForKeyedSubscript:v42];
              v48 = [v36 maximumLogLevelString:?];
              [dictionary3 setObject:? forKeyedSubscript:?];
              v32 = v50;
              goto LABEL_48;
            }

            v32 = v50;
            if ([v52 length])
            {
              if ([v51 length])
              {
                dictionary3 = [dictionary objectForKeyedSubscript:@"category"];
                if (!dictionary3)
                {
                  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
                  [dictionary setObject:? forKeyedSubscript:?];
                }

                v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v51, v52];
                v48 = [dictionary3 objectForKeyedSubscript:v49];
                v47 = [v36 maximumLogLevelString:?];
                [dictionary3 setObject:v47 forKeyedSubscript:v49];
              }

              else
              {
                dictionary3 = [dictionary objectForKeyedSubscript:@"subsystem"];
                if (!dictionary3)
                {
                  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
                  [dictionary setObject:? forKeyedSubscript:?];
                }

                v49 = [dictionary3 objectForKeyedSubscript:v52];
                v48 = [v36 maximumLogLevelString:?];
                [dictionary3 setObject:? forKeyedSubscript:?];
              }

LABEL_48:
            }
          }

          else
          {
            v36 = diagcollectLogHandle();
            if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_53;
            }

            v43 = objc_opt_class();
            v54 = NSStringFromClass(v43);
            *buf = 138412546;
            v67 = @"level";
            v68 = 2112;
            v69 = v54;
            _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_DEBUG, "Found unexpected class for key %@ in the oslog settings dictionary (should be NSString): %@", buf, 0x16u);
          }

          goto LABEL_53;
        }

        if (!v12)
        {
          goto LABEL_57;
        }

        v14 = diagcollectLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          *buf = 138412290;
          v67 = v23;
          _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Found unexpected class in actions (should be NSDictionary): %@", buf, 0xCu);
        }

LABEL_56:

LABEL_57:
        ++v11;
      }

      while (v8 != v11);
      v44 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
      v8 = v44;
    }

    while (v44);
  }

  v45 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)diagActionsForSignature:(id)signature commonActions:(id)actions
{
  v82 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  actionsCopy = actions;
  v7 = [(__CFString *)signatureCopy objectForKeyedSubscript:@"domain"];
  v70 = [(__CFString *)signatureCopy objectForKeyedSubscript:@"type"];
  v68 = [(__CFString *)signatureCopy objectForKeyedSubscript:@"subtype"];
  v8 = @"additional";
  v67 = [(__CFString *)signatureCopy objectForKeyedSubscript:@"additional"];
  v9 = [(__CFString *)signatureCopy objectForKeyedSubscript:@"detected"];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_285368168;
  }

  v69 = v7;
  if (([v7 isEqualToString:@"UIPerformance"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"Performance") && objc_msgSend(v70, "isEqualToString:", @"MemoryResourceException"))
  {
    v11 = diagcollectLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEBUG, "Will skip evaluating common diagnostic extension actions based on signature match", buf, 2u);
    }

    LOBYTE(v12) = 0;
    v7 = v69;
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  if (actionsCopy)
  {
    LODWORD(v12) = [actionsCopy BOOLValue];
    v13 = diagcollectLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = "not ";
      if (v12)
      {
        v14 = "";
      }

      *buf = 136315138;
      v77 = v14;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "Will %sevaluate common diagnostic extension actions based on client request", buf, 0xCu);
    }

    v7 = v69;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([v7 length] && objc_msgSend(v70, "length"))
  {
    [dictionary setObject:@"type" forKeyedSubscript:@"domain"];
    if ([v70 length] && objc_msgSend(v68, "length"))
    {
      [dictionary setObject:@"subtype" forKeyedSubscript:@"type"];
      if (![v68 length])
      {
        goto LABEL_32;
      }

      if (![v67 length])
      {
        goto LABEL_32;
      }

      [dictionary setObject:@"additional" forKeyedSubscript:@"subtype"];
      if (![v67 length] || !-[__CFString length](v10, "length"))
      {
        goto LABEL_32;
      }

LABEL_31:
      [dictionary setObject:@"detected" forKeyedSubscript:v8];
      goto LABEL_32;
    }

    if ([v70 length])
    {
      v8 = @"type";
      if ([(__CFString *)v10 length])
      {
        goto LABEL_31;
      }
    }
  }

  else if ([v7 length])
  {
    v8 = @"domain";
    if ([(__CFString *)v10 length])
    {
      goto LABEL_31;
    }
  }

LABEL_32:
  v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
  settingsDict = [(DiagnosticsController *)self settingsDict];
  v16 = @"domain";
  v18 = v16;
  v19 = "ghtStatus";
  if (settingsDict)
  {
    v20 = 0;
    *&v17 = 134218242;
    v66 = v17;
    v72 = v10;
    v74 = v12;
    while (1)
    {
      v21 = diagcollectLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = @"Top Level";
        if (v20)
        {
          v22 = v20;
        }

        *buf = 138412290;
        v77 = v22;
        _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_DEBUG, "Processing actions for [%@]", buf, 0xCu);
      }

      if ((v20 != 0) | v12 & 1)
      {
        break;
      }

      v23 = diagcollectLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v77 = signatureCopy;
        _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_INFO, "Skipped evaluating common diagnostic extension actions for signature: %@", buf, 0xCu);
      }

LABEL_69:

      v42 = [(__CFString *)signatureCopy objectForKeyedSubscript:v18];

      if ([(__CFString *)v42 length])
      {
        v43 = [settingsDict objectForKeyedSubscript:v42];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = v43;

          v45 = diagcollectLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v45, OS_LOG_TYPE_DEBUG, "We have another level to look into.", buf, 2u);
          }

          goto LABEL_85;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          v45 = v43;
          if ([v45 count])
          {
            [v73 addObjectsFromArray:v45];
            v46 = diagcollectLogHandle();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v47 = [v45 count];
              *buf = 134218498;
              v77 = v47;
              v78 = 2112;
              v79 = v10;
              v80 = 2112;
              v81 = v45;
              v48 = v46;
              v49 = OS_LOG_TYPE_DEBUG;
              v50 = "Added %ld actions for %@: %@";
              v51 = 32;
              goto LABEL_82;
            }

            goto LABEL_83;
          }

          goto LABEL_84;
        }

        if (v43)
        {

          v45 = diagcollectLogHandle();
          if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_84;
          }

          v52 = objc_opt_class();
          v46 = NSStringFromClass(v52);
          *buf = 138412290;
          v77 = v46;
          v48 = v45;
          v49 = OS_LOG_TYPE_ERROR;
          v50 = "Found unexpected class: %@";
          goto LABEL_81;
        }

        v44 = [settingsDict objectForKeyedSubscript:v10];

        if (!v44)
        {
          v45 = settingsDict;
          goto LABEL_85;
        }

        v45 = [settingsDict objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          v46 = diagcollectLogHandle();
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_83;
          }

          *buf = 138412290;
          v77 = v45;
          v48 = v46;
          v49 = OS_LOG_TYPE_ERROR;
          v50 = "Unexpectedly found a dictionary instead of an array: %@";
LABEL_81:
          v51 = 12;
LABEL_82:
          _os_log_impl(&dword_241804000, v48, v49, v50, buf, v51);
LABEL_83:

LABEL_84:
          v44 = 0;
LABEL_85:

          goto LABEL_86;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v46 = v45;
          if (![v46 count])
          {
            goto LABEL_83;
          }

          [v73 addObjectsFromArray:v46];
          v55 = diagcollectLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            v56 = [v46 count];
            *buf = 134218498;
            v77 = v56;
            v78 = 2112;
            v79 = v10;
            v80 = 2112;
            v81 = v46;
            v57 = v55;
            v58 = OS_LOG_TYPE_DEBUG;
            v59 = "Added %ld actions for %@: %@";
            v60 = 32;
            goto LABEL_100;
          }
        }

        else
        {
          if (!v45)
          {
            goto LABEL_84;
          }

          v46 = diagcollectLogHandle();
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_83;
          }

          v61 = objc_opt_class();
          v55 = NSStringFromClass(v61);
          *buf = 138412290;
          v77 = v55;
          v57 = v46;
          v58 = OS_LOG_TYPE_ERROR;
          v59 = "Found unexpected class: %@";
          v60 = 12;
LABEL_100:
          _os_log_impl(&dword_241804000, v57, v58, v59, buf, v60);
        }

        goto LABEL_83;
      }

      v44 = 0;
      v43 = settingsDict;
LABEL_86:

      v53 = [dictionary objectForKeyedSubscript:v18];

      settingsDict = v44;
      v18 = v53;
      v20 = v42;
      if (!v44)
      {

        v7 = v69;
        v19 = "preflightStatus" + 6;
        goto LABEL_103;
      }
    }

    v23 = [settingsDict objectForKeyedSubscript:@"DEFAULTS"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!v23)
      {
        goto LABEL_69;
      }

      v12 = diagcollectLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138412546;
        v77 = @"DEFAULTS";
        v78 = 2112;
        v79 = v32;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "Found unexpected class for key %@ (should be NSDictionary): %@", buf, 0x16u);
      }

      goto LABEL_68;
    }

    v12 = v23;
    v24 = diagcollectLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_DEBUG, "Evaluating default actions.", buf, 2u);
    }

    v25 = [v12 objectForKeyedSubscript:@"alwaysRun"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
      if ([v26 count])
      {
        [v73 addObjectsFromArray:v26];
        v27 = diagcollectLogHandle();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
LABEL_55:

          goto LABEL_56;
        }

        v28 = [v26 count];
        *buf = v66;
        v77 = v28;
        v78 = 2112;
        v79 = v26;
        v29 = v27;
        v30 = "Added %ld always run actions: %@";
LABEL_54:
        _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_DEBUG, v30, buf, 0x16u);
        goto LABEL_55;
      }
    }

    else
    {
      if (!v25)
      {
        goto LABEL_57;
      }

      v26 = diagcollectLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v33 = objc_opt_class();
        v27 = NSStringFromClass(v33);
        *buf = 138412546;
        v77 = @"alwaysRun";
        v78 = 2112;
        v79 = v27;
        v29 = v26;
        v30 = "Found unexpected class for key %@ (should be NSArray): %@";
        goto LABEL_54;
      }
    }

LABEL_56:

LABEL_57:
    v34 = [v12 objectForKeyedSubscript:{v10, v66}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
      if ([v35 count])
      {
        [v73 addObjectsFromArray:v35];
        v36 = diagcollectLogHandle();
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
LABEL_65:

          v10 = v72;
          goto LABEL_66;
        }

        v37 = [v35 count];
        *buf = 134218498;
        v77 = v37;
        v78 = 2112;
        v79 = v72;
        v80 = 2112;
        v81 = v35;
        v38 = v36;
        v39 = "Added %ld default actions for %@: %@";
        v40 = 32;
LABEL_64:
        _os_log_impl(&dword_241804000, v38, OS_LOG_TYPE_DEBUG, v39, buf, v40);
        goto LABEL_65;
      }
    }

    else
    {
      if (!v34)
      {
LABEL_67:

LABEL_68:
        LOBYTE(v12) = v74;
        goto LABEL_69;
      }

      v35 = diagcollectLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v41 = objc_opt_class();
        v36 = NSStringFromClass(v41);
        *buf = 138412546;
        v77 = v72;
        v78 = 2112;
        v79 = v36;
        v38 = v35;
        v39 = "Found unexpected class for key %@ (should be NSArray): %@";
        v40 = 22;
        goto LABEL_64;
      }
    }

LABEL_66:

    goto LABEL_67;
  }

  v53 = v16;
LABEL_103:
  v62 = diagcollectLogHandle();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    v63 = [v73 count];
    *buf = *(v19 + 384);
    v77 = v63;
    v78 = 2112;
    v79 = v73;
    _os_log_impl(&dword_241804000, v62, OS_LOG_TYPE_DEBUG, "Result: Found %ld actions: %@", buf, 0x16u);
  }

  v64 = *MEMORY[0x277D85DE8];

  return v73;
}

- (void)consolidateLoggingLevelsIntoSet:(id)set withCurrentState:(id)state
{
  v23 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [state allValues];
  v7 = [allValues countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = diagcollectLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v21 = v11;
            _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "sesstionState: %@", buf, 0xCu);
          }

          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __74__DiagnosticsController_consolidateLoggingLevelsIntoSet_withCurrentState___block_invoke;
          v14[3] = &unk_278CF0C68;
          v15 = setCopy;
          [v11 enumerateKeysAndObjectsUsingBlock:v14];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __74__DiagnosticsController_consolidateLoggingLevelsIntoSet_withCurrentState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = diagcollectLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v18 = v5;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "key: %@ object: %@", buf, 0x16u);
      }

      v8 = v6;
      if (([v5 isEqualToString:@"process"]& 1) != 0 || ([v5 isEqualToString:@"subsystem"]& 1) != 0 || [v5 isEqualToString:@"category"])
      {
        v9 = [*(a1 + 32) objectForKeyedSubscript:v5];
        if (!v9)
        {
          v9 = [MEMORY[0x277CBEB38] dictionary];
          [*(a1 + 32) setObject:v9 forKeyedSubscript:v5];
        }

        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __74__DiagnosticsController_consolidateLoggingLevelsIntoSet_withCurrentState___block_invoke_155;
        v15[3] = &unk_278CF0C68;
        v16 = v9;
        v10 = v9;
        [v8 enumerateKeysAndObjectsUsingBlock:v15];
      }

      else
      {
        v10 = diagcollectLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v18 = v5;
          _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "Found unsupported log set key %@", buf, 0xCu);
        }
      }

      goto LABEL_13;
    }
  }

  v8 = diagcollectLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEBUG, "Found unexpected class %@/%@ for consolidated action set (should be NSString/NSDictionary).", buf, 0x16u);

LABEL_13:
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __74__DiagnosticsController_consolidateLoggingLevelsIntoSet_withCurrentState___block_invoke_155(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 objectForKeyedSubscript:v5];
    v10 = [v8 maximumLogLevelString:v9];

    [*(a1 + 32) setObject:v10 forKeyedSubscript:v5];
  }

  else
  {
    v11 = diagcollectLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEBUG, "Found unexpected class %@/%@ for log level setting (should be NSString/NSString).", &v17, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)raiseLoggingForActions:(id)actions identifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
    v8 = diagcollectLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v16) = 0;
    v14 = "A valid identifier is required when raising log levels!";
LABEL_16:
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEBUG, v14, &v16, 2u);
    goto LABEL_17;
  }

  if (![actionsCopy count])
  {
    v8 = diagcollectLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v16) = 0;
    v14 = "No actions to raise log levels for.";
    goto LABEL_16;
  }

  v8 = +[DiagnosticsController loggingStateCache];
  v9 = [(DiagnosticsController *)self consolidatedLogLevelSetsFromActions:actionsCopy];
  v10 = diagcollectLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = 134217984;
    v17 = [v9 count];
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "Consolidated actions to %ld set(s) of log level adjustments", &v16, 0xCu);
  }

  if ([v9 count])
  {
    v11 = diagcollectLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = identifierCopy;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEBUG, "Storing logging state for session: %@", &v16, 0xCu);
    }

    [v8 setObject:v9 forKeyedSubscript:identifierCopy];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(DiagnosticsController *)self consolidateLoggingLevelsIntoSet:dictionary withCurrentState:v8];
    v13 = diagcollectLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "Applying the consolidated log levels", &v16, 2u);
    }

    [(DiagnosticsController *)self applyLogLevelSets:dictionary];
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)lowerLoggingForIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v5 = +[DiagnosticsController loggingStateCache];
    v6 = [v5 objectForKeyedSubscript:identifierCopy];
    if ([v6 count])
    {
      [v5 setObject:0 forKeyedSubscript:identifierCopy];
      v7 = diagcollectLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = identifierCopy;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "Removed logging state for session: %@", buf, 0xCu);
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(DiagnosticsController *)self consolidateLoggingLevelsIntoSet:dictionary withCurrentState:v5];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __51__DiagnosticsController_lowerLoggingForIdentifier___block_invoke;
      v12[3] = &unk_278CF0C68;
      v13 = dictionary;
      v9 = dictionary;
      [v6 enumerateKeysAndObjectsUsingBlock:v12];
      v10 = diagcollectLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "Apply the consolidated log levels", buf, 2u);
      }

      [(DiagnosticsController *)self applyLogLevelSets:v9];
    }

    else
    {
      v9 = diagcollectLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = identifierCopy;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEBUG, "No logging state for session: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = diagcollectLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "A valid identifier is required when lowering log levels!", buf, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __51__DiagnosticsController_lowerLoggingForIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([v5 isEqualToString:@"process"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"subsystem") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"category"))
  {
    v20 = v6;
    v7 = v6;
    v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (!v8)
    {
      v8 = [MEMORY[0x277CBEB38] dictionary];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v7 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            v16 = [v8 objectForKeyedSubscript:v15];
            if (!v16)
            {
              [v8 setObject:@"reset" forKeyedSubscript:v15];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v11);
    }

    v17 = v19;
    v6 = v20;
  }

  else
  {
    v17 = diagcollectLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_DEBUG, "Unsupported log setting type: %@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)applyLogLevelSets:(id)sets
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__DiagnosticsController_applyLogLevelSets___block_invoke;
  v3[3] = &unk_278CF0C68;
  v3[4] = self;
  [sets enumerateKeysAndObjectsUsingBlock:v3];
}

void __43__DiagnosticsController_applyLogLevelSets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"process"])
  {
    v7 = 1;
  }

  else if ([v5 isEqualToString:@"subsystem"])
  {
    v7 = 2;
  }

  else
  {
    v8 = [v5 isEqualToString:@"category"];
    v7 = 3;
    if (!v8)
    {
      v7 = 0;
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__DiagnosticsController_applyLogLevelSets___block_invoke_2;
  v9[3] = &unk_278CF0C90;
  v9[4] = *(a1 + 32);
  v9[5] = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
}

- (BOOL)validateOSLogPreferencesProtocol:(id)protocol
{
  protocolCopy = protocol;
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0;

  return v4;
}

- (void)applyLogLevel:(id)level forIdentifier:(id)identifier logSettingType:(unint64_t)type
{
  v59 = *MEMORY[0x277D85DE8];
  levelCopy = level;
  identifierCopy = identifier;
  _loadLoggingSupport = [(DiagnosticsController *)self _loadLoggingSupport];
  v11 = diagcollectLogHandle();
  v12 = v11;
  if (_loadLoggingSupport)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = LogSettingToString;
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      v15 = [v13 objectForKeyedSubscript:v14];
      v47 = 138412546;
      typeCopy = v15;
      v49 = 2112;
      v50 = identifierCopy;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, " - %@ identifier: %@", &v47, 0x16u);
    }

    switch(type)
    {
      case 3uLL:
        v17 = [identifierCopy componentsSeparatedByString:@":"];
        if ([v17 count] == 2)
        {
          v18 = [v17 objectAtIndexedSubscript:0];
          v19 = [v17 objectAtIndexedSubscript:1];
          v20 = [[gOSLogPreferencesSubsystem alloc] initWithName:v18];
          v12 = [[gOSLogPreferencesCategory alloc] initWithName:v19 subsystem:v20];
        }

        else
        {
          v12 = 0;
        }

        break;
      case 2uLL:
        v16 = [[gOSLogPreferencesSubsystem alloc] initWithName:identifierCopy];
        goto LABEL_11;
      case 1uLL:
        v16 = [[gOSLogPreferencesProcess alloc] initWithBundleID:identifierCopy];
LABEL_11:
        v12 = v16;
        break;
      default:
        v21 = diagcollectLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v47 = 134217984;
          typeCopy = type;
          _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_DEBUG, "Unsupported log setting type: %ld", &v47, 0xCu);
        }

        v12 = 0;
        break;
    }

    v22 = [(DiagnosticsController *)self validateOSLogPreferencesProtocol:v12];
    v23 = diagcollectLogHandle();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    if (!v22)
    {
      if (v24)
      {
        v47 = 138412290;
        typeCopy = v12;
        v32 = "OSLogPreferences object %@ no longer conforms to our expected definition!";
        v33 = v23;
        v34 = 12;
LABEL_53:
        _os_log_impl(&dword_241804000, v33, OS_LOG_TYPE_DEBUG, v32, &v47, v34);
      }

LABEL_54:

      goto LABEL_55;
    }

    if (v24)
    {
      if ([v12 isLocked])
      {
        v25 = @"On";
      }

      else
      {
        v25 = @"Off";
      }

      effectiveEnabledLevel = [v12 effectiveEnabledLevel];
      enabledLevel = [v12 enabledLevel];
      effectivePersistedLevel = [v12 effectivePersistedLevel];
      persistedLevel = [v12 persistedLevel];
      v47 = 138413570;
      typeCopy = v12;
      v49 = 2112;
      v50 = v25;
      v51 = 2048;
      v52 = effectiveEnabledLevel;
      v53 = 2048;
      v54 = enabledLevel;
      v55 = 2048;
      v56 = effectivePersistedLevel;
      v57 = 2048;
      v58 = persistedLevel;
      _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_DEBUG, "(Before) OSLogPreferences: %@, isLocked: %@, effectiveEnabled:%ld, enabled:%ld effectivePersisted: %ld, persisted: %ld", &v47, 0x3Eu);
    }

    if (([v12 isLocked]& 1) != 0)
    {
      v23 = diagcollectLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v47 = 138412290;
        typeCopy = v31;
        _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_DEBUG, "No means to adjust log levels!! (%@ is locked)", &v47, 0xCu);
      }

      goto LABEL_54;
    }

    if ([levelCopy isEqualToString:@"info"])
    {
      v35 = 3;
    }

    else if ([levelCopy isEqualToString:@"debug"])
    {
      v35 = 4;
    }

    else if ([levelCopy isEqualToString:@"none"])
    {
      v35 = 0;
    }

    else
    {
      if ([levelCopy isEqualToString:@"reset"])
      {
        v36 = diagcollectLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v47) = 0;
          _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_DEBUG, "Resetting log level", &v47, 2u);
        }

        [v12 reset];
LABEL_48:
        v23 = diagcollectLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          if ([v12 isLocked])
          {
            v41 = @"On";
          }

          else
          {
            v41 = @"Off";
          }

          effectiveEnabledLevel2 = [v12 effectiveEnabledLevel];
          enabledLevel2 = [v12 enabledLevel];
          effectivePersistedLevel2 = [v12 effectivePersistedLevel];
          persistedLevel2 = [v12 persistedLevel];
          v47 = 138413570;
          typeCopy = v12;
          v49 = 2112;
          v50 = v41;
          v51 = 2048;
          v52 = effectiveEnabledLevel2;
          v53 = 2048;
          v54 = enabledLevel2;
          v55 = 2048;
          v56 = effectivePersistedLevel2;
          v57 = 2048;
          v58 = persistedLevel2;
          v32 = "(After) OSLogPreferences: %@, isLocked: %@, effectiveEnabled: %ld, enabled: %ld effectivePersisted: %ld, persisted: %ld";
          v33 = v23;
          v34 = 62;
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      v35 = 1;
    }

    v37 = diagcollectLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v47 = 138412546;
      typeCopy = levelCopy;
      v49 = 2048;
      v50 = v35;
      _os_log_impl(&dword_241804000, v37, OS_LOG_TYPE_DEBUG, "Requesting log level change to: %@ (%ld)", &v47, 0x16u);
    }

    if ([v12 enabledLevel]< v35 || [v12 persistedLevel]< v35)
    {
      [v12 setEnabledLevel:v35];
      [v12 setPersistedLevel:v35];
      v38 = diagcollectLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        persistedLevel3 = [v12 persistedLevel];
        enabledLevel3 = [v12 enabledLevel];
        v47 = 138413058;
        typeCopy = levelCopy;
        v49 = 2048;
        v50 = v35;
        v51 = 2048;
        v52 = persistedLevel3;
        v53 = 2048;
        v54 = enabledLevel3;
        _os_log_impl(&dword_241804000, v38, OS_LOG_TYPE_DEBUG, "Adjusted log level to: %@ (%ld) - p:%ld | e:%ld", &v47, 0x2Au);
      }
    }

    goto LABEL_48;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v47) = 0;
    _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "The dynamic loading of LoggingSupport failed", &v47, 2u);
  }

LABEL_55:

  v46 = *MEMORY[0x277D85DE8];
}

- (void)raiseLoggingForDiagnosticCase:(id)case
{
  v14 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  v5 = diagcollectLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    caseId = [caseCopy caseId];
    v12 = 138412290;
    v13 = caseId;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "raiseLoggingForDiagnosticCase: %@", &v12, 0xCu);
  }

  caseId2 = [caseCopy caseId];
  uUIDString = [caseId2 UUIDString];

  signature = [caseCopy signature];
  if ([uUIDString length] && objc_msgSend(signature, "count"))
  {
    v10 = [(DiagnosticsController *)self diagActionsForSignature:signature];
    [(DiagnosticsController *)self raiseLoggingForActions:v10 identifier:uUIDString];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)lowerLoggingForDiagnosticCase:(id)case
{
  v12 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  v5 = diagcollectLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    caseId = [caseCopy caseId];
    v10 = 138412290;
    v11 = caseId;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "lowerLoggingForDiagnosticCase: %@", &v10, 0xCu);
  }

  caseId2 = [caseCopy caseId];
  uUIDString = [caseId2 UUIDString];

  if ([uUIDString length])
  {
    [(DiagnosticsController *)self lowerLoggingForIdentifier:uUIDString];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)diagnosticExtensionsForDiagnosticCase:(id)case enableCommonActions:(id)actions
{
  v75 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  actionsCopy = actions;
  v6 = diagcollectLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    caseId = [caseCopy caseId];
    *buf = 138412290;
    *&buf[4] = caseId;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEBUG, "diagnosticExtensionsForDiagnosticCase: %@", buf, 0xCu);
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB40]);
  signature = [caseCopy signature];
  actionsDict = [(DiagnosticsController *)self actionsDict];
  if ([signature count])
  {
    v9 = [(DiagnosticsController *)self diagActionsForSignature:signature commonActions:actionsCopy];
    v10 = diagcollectLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v9 count];
      *buf = 134218242;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "Looking up diagnostic extensions in %ld actions: %@", buf, 0x16u);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v9;
    v50 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
    if (v50)
    {
      v49 = *v63;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v63 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v62 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
            v52 = [actionsDict objectForKeyedSubscript:v14];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v52;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              LOBYTE(v67) = 1;
              oslog = v15;
              v48 = [v15 objectForKeyedSubscript:@"matchFilter"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = v48;
                *&v71 = 0;
                *(&v71 + 1) = &v71;
                v72 = 0x2020000000;
                v73 = 1;
                v58[0] = MEMORY[0x277D85DD0];
                v58[1] = 3221225472;
                v58[2] = __83__DiagnosticsController_diagnosticExtensionsForDiagnosticCase_enableCommonActions___block_invoke;
                v58[3] = &unk_278CF0CB8;
                v59 = signature;
                v60 = buf;
                v61 = &v71;
                [v16 enumerateKeysAndObjectsUsingBlock:v58];
                if ((*(*(&v71 + 1) + 24) & 1) == 0)
                {
                  *(*&buf[8] + 24) = 1;
                }

                _Block_object_dispose(&v71, 8);
              }

              if (*(*&buf[8] + 24))
              {
                v47 = [oslog objectForKeyedSubscript:@"diagExt"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v17 = v47;
                  v54 = 0u;
                  v55 = 0u;
                  v56 = 0u;
                  v57 = 0u;
                  v18 = v17;
                  v19 = [v18 countByEnumeratingWithState:&v54 objects:v70 count:16];
                  if (!v19)
                  {
                    goto LABEL_32;
                  }

                  v20 = *v55;
                  while (1)
                  {
                    for (j = 0; j != v19; ++j)
                    {
                      if (*v55 != v20)
                      {
                        objc_enumerationMutation(v18);
                      }

                      v22 = *(*(&v54 + 1) + 8 * j);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v23 = v22;
                        [v8 addObject:v23];
                      }

                      else
                      {
                        if (!v22)
                        {
                          continue;
                        }

                        v23 = diagcollectLogHandle();
                        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                        {
                          v24 = objc_opt_class();
                          v25 = NSStringFromClass(v24);
                          LODWORD(v71) = 138412290;
                          *(&v71 + 4) = v25;
                          _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_DEBUG, "Found unexpected class: %@ (expected NSString)", &v71, 0xCu);
                        }
                      }
                    }

                    v19 = [v18 countByEnumeratingWithState:&v54 objects:v70 count:16];
                    if (!v19)
                    {
LABEL_32:

                      goto LABEL_42;
                    }
                  }
                }

                if (v47)
                {
                  v18 = diagcollectLogHandle();
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                  {
                    v30 = objc_opt_class();
                    v31 = NSStringFromClass(v30);
                    LODWORD(v71) = 138412290;
                    *(&v71 + 4) = v31;
                    _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEBUG, "Found unexpected class: %@ (expected NSArray)", &v71, 0xCu);
                  }

LABEL_42:
                }
              }

              else
              {
              }

              _Block_object_dispose(buf, 8);
LABEL_45:
            }

            else if (v52)
            {
              oslog = diagcollectLogHandle();
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
              {
                v28 = objc_opt_class();
                v29 = NSStringFromClass(v28);
                *buf = 138412290;
                *&buf[4] = v29;
                _os_log_impl(&dword_241804000, oslog, OS_LOG_TYPE_DEBUG, "Found unexpected class: %@ (expected NSDictionary)", buf, 0xCu);
              }

              goto LABEL_45;
            }

            goto LABEL_47;
          }

          v14 = diagcollectLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            *buf = 138412290;
            *&buf[4] = v27;
            _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Found unexpected class: %@ (expected NSString)", buf, 0xCu);
          }

LABEL_47:
        }

        v50 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
      }

      while (v50);
    }
  }

  v32 = +[SystemProperties sharedInstance];
  customerSeedBuild = [v32 customerSeedBuild];

  if (customerSeedBuild)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v67 = __Block_byref_object_copy__2;
    v68 = __Block_byref_object_dispose__2;
    v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __83__DiagnosticsController_diagnosticExtensionsForDiagnosticCase_enableCommonActions___block_invoke_192;
    v53[3] = &unk_278CF0CE0;
    v53[4] = buf;
    [v8 enumerateObjectsUsingBlock:v53];
    if ([*(*&buf[8] + 40) count])
    {
      [v8 removeObjectsInArray:*(*&buf[8] + 40)];
      v34 = diagcollectLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = [*(*&buf[8] + 40) count];
        LODWORD(v71) = 134217984;
        *(&v71 + 4) = v35;
        _os_log_impl(&dword_241804000, v34, OS_LOG_TYPE_INFO, "Removed %ld diagnostic extensions that were not privacy approved for CustomerSeed", &v71, 0xCu);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  v36 = diagcollectLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = [v8 count];
    *buf = 134218242;
    *&buf[4] = v37;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_INFO, "Found %ld diagnostic extensions: %@", buf, 0x16u);
  }

  array = [v8 array];

  v39 = *MEMORY[0x277D85DE8];

  return array;
}

void __83__DiagnosticsController_diagnosticExtensionsForDiagnosticCase_enableCommonActions___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      v10 = v8;
      v11 = [*(a1 + 32) objectForKeyedSubscript:v9];
      v12 = diagcollectLogHandle();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      if (v11)
      {
        if (v13)
        {
          v20 = 138412802;
          v21 = v9;
          v22 = 2112;
          v23 = v11;
          v24 = 2112;
          v25 = v10;
          _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "Found filter key '%@' with value '%@' in signature dictionary. (Expecting to match '%@')", &v20, 0x20u);
        }

        if ([v11 isEqualToString:v10])
        {
          goto LABEL_14;
        }

        v14 = 40;
      }

      else
      {
        if (v13)
        {
          v20 = 138412290;
          v21 = v9;
          _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "Did not find applicable filter key '%@' in signature dictionary. Allowing.", &v20, 0xCu);
        }

        v14 = 48;
      }

      *(*(*(a1 + v14) + 8) + 24) = 0;
      *a4 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  v9 = diagcollectLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v20 = 138413058;
    v21 = v7;
    v22 = 2112;
    v23 = v16;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v18;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "Found unexpected class in actions filter dictionary! key: %@ (%@) value: %@ (%@)", &v20, 0x2Au);
  }

LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
}

void __83__DiagnosticsController_diagnosticExtensionsForDiagnosticCase_enableCommonActions___block_invoke_192(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isEqualToString:@"com.apple.DiagnosticExtensions.tailspin"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"com.apple.osx-tailspin") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"com.apple.DiagnosticExtensions.Microstackshot") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"com.apple.PowerlogCore.diagnosticextension") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"com.apple.DiagnosticExtensions.Cellular") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"com.apple.Search.framework.SpotlightDiagnostic") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"com.apple.diagnosticextensions.osx.spotlight") & 1) == 0)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
    v4 = diagcollectLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_ERROR, "Flagging DiagnosticExtension %@ as not privacy approved for CustomerSeed", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (unint64_t)collectDiagnosticExtensionFilesForDiagnosticCase:(id)case parameters:(id)parameters options:(id)options queue:(id)queue reply:(id)reply
{
  v80 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  parametersCopy = parameters;
  optionsCopy = options;
  queueCopy = queue;
  replyCopy = reply;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = diagcollectLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v75 = optionsCopy;
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEBUG, "Found diagnostic extensions options dictionary: %@", buf, 0xCu);
    }

    v17 = [optionsCopy objectForKeyedSubscript:@"diagextcommon"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
      v19 = diagcollectLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v75 = v18;
        _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_DEBUG, "Enable common diagnostic extensions: %@", buf, 0xCu);
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = [(DiagnosticsController *)self diagnosticExtensionsForDiagnosticCase:caseCopy enableCommonActions:v18];
  v21 = [v20 count];
  v22 = diagcollectLogHandle();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
  if (v21)
  {
    selfCopy = self;
    v55 = replyCopy;
    v56 = queueCopy;
    if (v23)
    {
      v24 = [v20 count];
      *buf = 134218498;
      v75 = v24;
      v76 = 2112;
      v77 = v20;
      v78 = 2112;
      v79 = parametersCopy;
      _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_DEBUG, "Ready to collect from %ld diagnostic extensions (%@) with parameters: %@", buf, 0x20u);
    }

    v57 = optionsCopy;

    v54 = v20;
    v25 = [MEMORY[0x277CBEB98] setWithArray:v20];
    v52 = [v25 count];
    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __105__DiagnosticsController_collectDiagnosticExtensionFilesForDiagnosticCase_parameters_options_queue_reply___block_invoke;
    v71[3] = &unk_278CF0C68;
    v60 = v26;
    v72 = v60;
    v58 = parametersCopy;
    [parametersCopy enumerateKeysAndObjectsUsingBlock:v71];
    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v28 = v25;
    v29 = [v28 countByEnumeratingWithState:&v67 objects:v73 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v68;
      obj = v28;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v68 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v67 + 1) + 8 * i);
          v34 = diagcollectLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v75 = v33;
            _os_log_impl(&dword_241804000, v34, OS_LOG_TYPE_DEBUG, "Will call Diag Extension: %@", buf, 0xCu);
          }

          v35 = [v60 objectForKeyedSubscript:v33];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            dictionary = [v35 mutableCopy];
          }

          else
          {
            if (v35)
            {
              v37 = diagcollectLogHandle();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                v38 = objc_opt_class();
                v39 = NSStringFromClass(v38);
                *buf = 138412546;
                v75 = v39;
                v76 = 2112;
                v77 = v35;
                _os_log_impl(&dword_241804000, v37, OS_LOG_TYPE_ERROR, "Expected NSDictionary, but found unexpected class %@ as a DE parameter: %@", buf, 0x16u);
              }
            }

            dictionary = [MEMORY[0x277CBEB38] dictionary];
          }

          v40 = dictionary;

          [v40 setObject:@"com.apple.symptomsd" forKeyedSubscript:@"DEExtensionHostAppKey"];
          if (([v33 isEqualToString:@"com.apple.DiagnosticExtensions.WiFi"] & 1) != 0 || objc_msgSend(v33, "isEqualToString:", @"com.apple.diagnosticextensions.osx.wifi"))
          {
            signature = [caseCopy signature];
            v42 = [signature objectForKeyedSubscript:@"subtype"];

            [v40 setObject:v42 forKeyedSubscript:@"trigger"];
          }

          if ([v40 count])
          {
            [v27 setValue:v40 forKey:v33];
          }

          else
          {
            null = [MEMORY[0x277CBEB68] null];
            [v27 setValue:null forKey:v33];
          }

          [caseCopy addRequiredAttachmentType:@"diagext" pattern:v33];
        }

        v28 = obj;
        v30 = [obj countByEnumeratingWithState:&v67 objects:v73 count:16];
      }

      while (v30);
    }

    diagExtensionCollector = [(DiagnosticsController *)selfCopy diagExtensionCollector];
    caseId = [caseCopy caseId];
    uUIDString = [caseId UUIDString];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __105__DiagnosticsController_collectDiagnosticExtensionFilesForDiagnosticCase_parameters_options_queue_reply___block_invoke_226;
    v64[3] = &unk_278CF0D08;
    replyCopy = v55;
    v66 = v55;
    queueCopy = v56;
    v65 = v56;
    [diagExtensionCollector collectDEPayloadsWithIdentifier:uUIDString diagnosticExtensionsWithParameters:v27 queue:v65 reply:v64];

    optionsCopy = v57;
    parametersCopy = v58;
    v20 = v54;
    v47 = v52;
  }

  else
  {
    if (v23)
    {
      caseId2 = [caseCopy caseId];
      uUIDString2 = [caseId2 UUIDString];
      *buf = 138412290;
      v75 = uUIDString2;
      _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_DEBUG, "No matching diagnostic extensions found for the case ID %@", buf, 0xCu);
    }

    if (!replyCopy)
    {
      v47 = 0;
      goto LABEL_42;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__DiagnosticsController_collectDiagnosticExtensionFilesForDiagnosticCase_parameters_options_queue_reply___block_invoke_229;
    block[3] = &unk_278CF0A58;
    v63 = replyCopy;
    dispatch_async(queueCopy, block);
    v47 = 0;
    v28 = v63;
  }

LABEL_42:
  v50 = *MEMORY[0x277D85DE8];
  return v47;
}

void __105__DiagnosticsController_collectDiagnosticExtensionFilesForDiagnosticCase_parameters_options_queue_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  else
  {
    v7 = diagcollectLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v13 = 138413058;
      v14 = v5;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "Dropping unexpected content from DE parameters. key (%@): %@, value (%@): %@", &v13, 0x2Au);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __105__DiagnosticsController_collectDiagnosticExtensionFilesForDiagnosticCase_parameters_options_queue_reply___block_invoke_226(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = diagcollectLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "Collecting Diagnostic Extension payloads failed with error: %@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __105__DiagnosticsController_collectDiagnosticExtensionFilesForDiagnosticCase_parameters_options_queue_reply___block_invoke_227;
    v11[3] = &unk_278CEFF50;
    v13 = v8;
    v12 = v5;
    dispatch_async(v9, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end