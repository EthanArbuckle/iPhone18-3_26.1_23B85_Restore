@interface MBMobileInstallation
+ (BOOL)resetContainerWithRoot:(id)root error:(id *)error;
+ (BOOL)uninstallAppWithBundleID:(id)d error:(id *)error;
+ (id)_defaultSubdirectoriesForMCMContainerType:(unint64_t)type withError:(id *)error;
+ (id)containerIDForPath:(id)path error:(id *)error;
+ (id)displayNameForBundleIdentifier:(id)identifier;
+ (id)displayNameForDomain:(id)domain isSystemDomain:(BOOL)systemDomain;
+ (id)displayNamesForDomainNames:(id)names domainManager:(id)manager;
+ (unint64_t)_containerClassForMBContainerType:(int)type;
- (BOOL)registerSafeHarborWithIdentifier:(id)identifier path:(id)path type:(int)type error:(id *)error;
- (BOOL)removeSafeHarborWithIdentifier:(id)identifier type:(int)type error:(id *)error;
- (MBMobileInstallation)init;
- (MBMobileInstallation)initWithSafeHarborDir:(id)dir;
- (id)_systemContainersWithError:(id *)error shared:(BOOL)shared;
- (id)safeHarborsWithError:(id *)error;
- (id)systemContainersWithError:(id *)error;
- (id)systemPluginsForPersona:(id)persona error:(id *)error;
- (id)systemSharedContainersWithError:(id *)error;
- (id)userAppsForPersona:(id)persona error:(id *)error;
- (void)_enumerateAppsWithEnumerationOptions:(unint64_t)options to:(id)to persona:(id)persona;
@end

@implementation MBMobileInstallation

- (MBMobileInstallation)init
{
  v6.receiver = self;
  v6.super_class = MBMobileInstallation;
  v2 = [(MBMobileInstallation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    accountsTracker = v2->_accountsTracker;
    v2->_accountsTracker = v3;
  }

  return v2;
}

- (MBMobileInstallation)initWithSafeHarborDir:(id)dir
{
  dirCopy = dir;
  v6 = [(MBMobileInstallation *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_safeHarborDir, dir);
  }

  return v7;
}

- (void)_enumerateAppsWithEnumerationOptions:(unint64_t)options to:(id)to persona:(id)persona
{
  toCopy = to;
  personaCopy = persona;
  user = [personaCopy user];
  isPrimaryUser = [user isPrimaryUser];

  LODWORD(user) = [personaCopy isPersonalPersona];
  v50 = personaCopy;
  isDataSeparatedPersona = [personaCopy isDataSeparatedPersona];
  v11 = isDataSeparatedPersona;
  v51 = user;
  if ((user & 1) == 0 && (isDataSeparatedPersona & 1) == 0)
  {
    sub_13774();
  }

  personaIdentifier = [v50 personaIdentifier];
  if (!personaIdentifier)
  {
    sub_137A0();
  }

  v52 = v11;
  v12 = [UMUserPersonaAttributes personaAttributesForPersonaType:3];
  userPersonaUniqueString = [v12 userPersonaUniqueString];

  v49 = userPersonaUniqueString;
  if (userPersonaUniqueString)
  {
    v14 = 0;
  }

  else
  {
    v14 = isPrimaryUser;
  }

  if (v14 == 1)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_FAULT, "Could not fetch system persona for primary user", buf, 2u);
      _MBLog();
    }
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    optionsCopy = options;
    v63 = 2112;
    v64 = v50;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Starting app enumeration (options = %llu) for %@", buf, 0x16u);
    optionsCopy2 = options;
    v46 = v50;
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v18 = v17;
  optionsCopy3 = options;
  [LSApplicationRecord enumeratorWithOptions:options];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v19 = v60 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v57 objects:v69 count:16];
  v56 = v19;
  if (v20)
  {
    v21 = v20;
    v53 = v51 & isPrimaryUser;
    v22 = *v58;
    do
    {
      v23 = 0;
      do
      {
        if (*v58 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v57 + 1) + 8 * v23);
        v25 = objc_autoreleasePoolPush();
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          bundleIdentifier3 = MBGetDefaultLog();
          if (!os_log_type_enabled(bundleIdentifier3, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          bundleIdentifier = [v24 bundleIdentifier];
          *buf = 138412290;
          optionsCopy = bundleIdentifier;
          _os_log_impl(&dword_0, bundleIdentifier3, OS_LOG_TYPE_DEFAULT, "Skipping isKindOfClass for %@", buf, 0xCu);

          bundleIdentifier2 = [v24 bundleIdentifier];
          optionsCopy2 = bundleIdentifier2;
          goto LABEL_27;
        }

        bundleIdentifier3 = [v24 bundleIdentifier];
        if ([v24 mb_isContainerized])
        {
          mb_applicationType = [v24 mb_applicationType];
          v28 = [mb_applicationType isEqualToString:@"Hidden"];

          if (!v28)
          {
            if ([v24 isPlaceholder])
            {
              v31 = [toCopy objectForKeyedSubscript:bundleIdentifier3];
              bundleIdentifier2 = v31;
              if (v31)
              {
                v32 = [v31 objectForKeyedSubscript:@"IsPlaceholder"];
                bOOLValue = [v32 BOOLValue];

                if ((bOOLValue & 1) == 0)
                {
                  v39 = MBGetDefaultLog();
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    optionsCopy = bundleIdentifier3;
                    _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "Skipping placeholder for %@", buf, 0xCu);
                    optionsCopy2 = bundleIdentifier3;
                    _MBLog();
                  }

                  v19 = v56;
                  goto LABEL_28;
                }
              }

              v19 = v56;
            }

            bundleIdentifier2 = [v24 managedPersonas];
            if (![bundleIdentifier2 count])
            {
              if ((v51 & 1) == 0)
              {
                goto LABEL_40;
              }

              goto LABEL_50;
            }

            v34 = MBGetDefaultLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              optionsCopy = bundleIdentifier3;
              v63 = 2114;
              v64 = bundleIdentifier2;
              _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Found app %@ with managed personae: %{public}@", buf, 0x16u);
              optionsCopy2 = bundleIdentifier3;
              v46 = bundleIdentifier2;
              _MBLog();
            }

LABEL_40:
            optionsCopy2 = [bundleIdentifier2 containsObject:personaIdentifier, optionsCopy2];
            if (v53)
            {
              if ((optionsCopy2 & 1) == 0 && ([bundleIdentifier2 containsObject:v49]& 1) == 0)
              {
                userDataVolume = MBGetDefaultLog();
                if (os_log_type_enabled(userDataVolume, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543874;
                  optionsCopy = bundleIdentifier3;
                  v63 = 2112;
                  v64 = personaIdentifier;
                  v65 = 2112;
                  v66 = *&v49;
                  _os_log_impl(&dword_0, userDataVolume, OS_LOG_TYPE_DEFAULT, "Skipping %{public}@ since it's not managed by the personal:%@ persona nor system:%@ persona", buf, 0x20u);
                  v46 = personaIdentifier;
                  v47 = v49;
                  v19 = v56;
                  optionsCopy2 = bundleIdentifier3;
                  goto LABEL_62;
                }

                goto LABEL_63;
              }

LABEL_50:
              v37 = MBExcludedAppTypeFromAppRecord(v24);
              if (v37 == 2)
              {
                userDataVolume = MBGetDefaultLog();
                if (!os_log_type_enabled(userDataVolume, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_63;
                }

                *buf = 138412290;
                optionsCopy = bundleIdentifier3;
                _os_log_impl(&dword_0, userDataVolume, OS_LOG_TYPE_DEFAULT, "Skipping %@ (Swift Playgrounds app)", buf, 0xCu);
                optionsCopy2 = bundleIdentifier3;
              }

              else
              {
                if (v37 != 1)
                {
                  userDataVolume = [v50 userDataVolume];
                  v38 = sub_96FC(v24, userDataVolume);
                  [toCopy setObject:v38 forKeyedSubscript:bundleIdentifier3];

                  v19 = v56;
                  goto LABEL_63;
                }

                userDataVolume = MBGetDefaultLog();
                if (!os_log_type_enabled(userDataVolume, OS_LOG_TYPE_DEFAULT))
                {
LABEL_63:

                  goto LABEL_28;
                }

                *buf = 138412290;
                optionsCopy = bundleIdentifier3;
                _os_log_impl(&dword_0, userDataVolume, OS_LOG_TYPE_DEFAULT, "Skipping %@ (app clip)", buf, 0xCu);
                optionsCopy2 = bundleIdentifier3;
              }
            }

            else if (v52)
            {
              if (optionsCopy2)
              {
                goto LABEL_50;
              }

              userDataVolume = MBGetDefaultLog();
              if (!os_log_type_enabled(userDataVolume, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_63;
              }

              *buf = 138543618;
              optionsCopy = bundleIdentifier3;
              v63 = 2114;
              v64 = personaIdentifier;
              _os_log_impl(&dword_0, userDataVolume, OS_LOG_TYPE_DEFAULT, "Skipping %{public}@ for data-separated persona %{public}@ since it's not in the list of managed personae", buf, 0x16u);
              optionsCopy2 = bundleIdentifier3;
              v46 = personaIdentifier;
              v19 = v56;
            }

            else
            {
              if (optionsCopy2)
              {
                goto LABEL_50;
              }

              userDataVolume = MBGetDefaultLog();
              if (!os_log_type_enabled(userDataVolume, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_63;
              }

              *buf = 138543618;
              optionsCopy = bundleIdentifier3;
              v63 = 2114;
              v64 = personaIdentifier;
              _os_log_impl(&dword_0, userDataVolume, OS_LOG_TYPE_DEFAULT, "Skipping %{public}@ for persona %{public}@ since it's not in the list of managed personae", buf, 0x16u);
              optionsCopy2 = bundleIdentifier3;
              v46 = personaIdentifier;
              v19 = v56;
            }

LABEL_62:
            _MBLog();
            goto LABEL_63;
          }

          bundleIdentifier2 = MBGetDefaultLog();
          if (os_log_type_enabled(bundleIdentifier2, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            optionsCopy = bundleIdentifier3;
            _os_log_impl(&dword_0, bundleIdentifier2, OS_LOG_TYPE_INFO, "Skipping %@ as of Hidden type", buf, 0xCu);
            optionsCopy2 = bundleIdentifier3;
LABEL_27:
            _MBLog();
          }
        }

        else
        {
          bundleIdentifier2 = MBGetDefaultLog();
          if (os_log_type_enabled(bundleIdentifier2, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            optionsCopy = bundleIdentifier3;
            _os_log_impl(&dword_0, bundleIdentifier2, OS_LOG_TYPE_DEBUG, "Skipping isContainerized for %@", buf, 0xCu);
            optionsCopy2 = bundleIdentifier3;
            goto LABEL_27;
          }
        }

LABEL_28:

LABEL_29:
        objc_autoreleasePoolPop(v25);
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v40 = [v19 countByEnumeratingWithState:&v57 objects:v69 count:16];
      v21 = v40;
    }

    while (v40);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v42 = v41;
  v43 = MBGetDefaultLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [toCopy count];
    *buf = 134218754;
    optionsCopy = optionsCopy3;
    v63 = 2112;
    v64 = v50;
    v65 = 2048;
    v66 = v42 - v18;
    v67 = 2048;
    v68 = v44;
    _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "Finished app enumeration (options = %llu) for %@ in %0.3fs: %lu apps", buf, 0x2Au);
    v19 = v56;
    [toCopy count];
    _MBLog();
  }
}

- (id)userAppsForPersona:(id)persona error:(id *)error
{
  personaCopy = persona;
  v6 = +[NSMutableDictionary dictionary];
  v7 = objc_autoreleasePoolPush();
  [(MBMobileInstallation *)self _enumerateAppsWithEnumerationOptions:0 to:v6 persona:personaCopy];
  [(MBMobileInstallation *)self _enumerateAppsWithEnumerationOptions:64 to:v6 persona:personaCopy];
  objc_autoreleasePoolPop(v7);

  return v6;
}

- (id)systemPluginsForPersona:(id)persona error:(id *)error
{
  personaCopy = persona;
  v5 = +[NSMutableDictionary dictionary];
  context = objc_autoreleasePoolPush();
  [LSApplicationExtensionRecord enumeratorWithOptions:0];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v6 = v75 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v73;
    v68 = v5;
    v63 = v6;
    v64 = personaCopy;
    v62 = *v73;
    do
    {
      v10 = 0;
      v65 = v8;
      do
      {
        if (*v73 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v72 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        if ([v11 mb_isContainerized])
        {
          containingBundleRecord = [v11 containingBundleRecord];

          if (!containingBundleRecord)
          {
            v69 = v12;
            userDataVolume = [personaCopy userDataVolume];
            v15 = v11;
            v70 = userDataVolume;
            dataContainerURL = [v15 dataContainerURL];

            if (dataContainerURL)
            {
              mb_bundleURL = [v15 mb_bundleURL];

              if (mb_bundleURL)
              {
                mb_pluginIdentifier = [v15 mb_pluginIdentifier];

                if (mb_pluginIdentifier)
                {
                  mb_entitlements = [v15 mb_entitlements];
                  if (!mb_entitlements)
                  {
                    v20 = MBGetDefaultLog();
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                    {
                      mb_pluginIdentifier2 = [v15 mb_pluginIdentifier];
                      *buf = 138412290;
                      v88 = mb_pluginIdentifier2;
                      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "Plugin %@ found without entitlements.", buf, 0xCu);

                      mb_pluginIdentifier3 = [v15 mb_pluginIdentifier];
                      _MBLog();
                    }

                    mb_entitlements = &__NSDictionary0__struct;
                  }

                  v66 = mb_entitlements;
                  v67 = v10;
                  v22 = [NSMutableArray array:mb_pluginIdentifier3];
                  v76 = 0u;
                  v77 = 0u;
                  v78 = 0u;
                  v79 = 0u;
                  obj = [v15 groupContainerURLs];
                  v23 = [obj countByEnumeratingWithState:&v76 objects:buf count:16];
                  if (v23)
                  {
                    v24 = v23;
                    v25 = *v77;
                    do
                    {
                      v26 = 0;
                      do
                      {
                        v27 = v22;
                        if (*v77 != v25)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v28 = *(*(&v76 + 1) + 8 * v26);
                        groupContainerURLs = [v15 groupContainerURLs];
                        v30 = [groupContainerURLs objectForKeyedSubscript:v28];

                        if (v30)
                        {
                          v31 = sub_CBD0(v30);
                          if (MBPathHasVolumePrefix())
                          {
                            v86[0] = v28;
                            v85[0] = kCFBundleIdentifierKey;
                            v85[1] = @"ContainerContentClass";
                            v32 = MBStringForContainerType(3);
                            v85[2] = @"Container";
                            v86[1] = v32;
                            v86[2] = v31;
                            mb_pluginIdentifier6 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:3];

                            v22 = v27;
                            [v27 addObject:mb_pluginIdentifier6];
LABEL_28:

                            goto LABEL_29;
                          }

                          mb_pluginIdentifier6 = MBGetDefaultLog();
                          if (os_log_type_enabled(mb_pluginIdentifier6, OS_LOG_TYPE_DEFAULT))
                          {
                            mb_pluginIdentifier4 = [v15 mb_pluginIdentifier];
                            *v82 = 138413058;
                            *&v82[4] = mb_pluginIdentifier4;
                            *&v82[12] = 2112;
                            *&v82[14] = v28;
                            *&v82[22] = 2112;
                            v83 = v31;
                            LOWORD(v84) = 2112;
                            *(&v84 + 2) = v70;
                            _os_log_impl(&dword_0, mb_pluginIdentifier6, OS_LOG_TYPE_DEFAULT, "Plugin %@ groupContainer %@ at %@ does not reside on the user data volume %@ - will not be backed up", v82, 0x2Au);

                            [v15 mb_pluginIdentifier];
                            v59 = v31;
                            mb_pluginIdentifier3 = v60 = v70;
                            v58 = v28;
                            _MBLog();
                          }

LABEL_27:
                          v22 = v27;
                          goto LABEL_28;
                        }

                        v31 = MBGetDefaultLog();
                        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                        {
                          mb_pluginIdentifier5 = [v15 mb_pluginIdentifier];
                          *v82 = 138412546;
                          *&v82[4] = mb_pluginIdentifier5;
                          *&v82[12] = 2112;
                          *&v82[14] = v28;
                          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Plugin %@ groupContainer %@ found without a container - will not be backed up", v82, 0x16u);

                          mb_pluginIdentifier6 = [v15 mb_pluginIdentifier];
                          mb_pluginIdentifier3 = mb_pluginIdentifier6;
                          v58 = v28;
                          _MBLog();
                          goto LABEL_27;
                        }

                        v22 = v27;
LABEL_29:

                        v26 = v26 + 1;
                      }

                      while (v24 != v26);
                      v36 = [obj countByEnumeratingWithState:&v76 objects:buf count:16];
                      v24 = v36;
                    }

                    while (v36);
                  }

                  v81[0] = kCFBundleIdentifierKey;
                  mb_pluginIdentifier7 = [v15 mb_pluginIdentifier];
                  *v82 = mb_pluginIdentifier7;
                  v81[1] = @"ContainerContentClass";
                  v38 = MBStringForContainerType(2);
                  *&v82[8] = v38;
                  v81[2] = @"Path";
                  mb_bundleURL2 = [v15 mb_bundleURL];
                  v40 = sub_CBD0(mb_bundleURL2);
                  *&v82[16] = v40;
                  v81[3] = @"Container";
                  dataContainerURL2 = [v15 dataContainerURL];
                  v42 = sub_CBD0(dataContainerURL2);
                  v83 = v42;
                  v43 = v66;
                  *&v84 = v66;
                  v81[4] = @"Entitlements";
                  v81[5] = @"GroupContainers";
                  *(&v84 + 1) = v22;
                  [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:6];
                  v45 = mb_pluginIdentifier11 = v22;

                  v6 = v63;
                  v46 = v64;
                  v8 = v65;
                  v9 = v62;
                  v10 = v67;
LABEL_41:

                  personaCopy = v46;
                  v5 = v68;
LABEL_43:

                  mb_pluginIdentifier8 = [v15 mb_pluginIdentifier];
                  [v5 setObject:v45 forKeyedSubscript:mb_pluginIdentifier8];

                  v12 = v69;
                  goto LABEL_44;
                }

                v43 = MBGetDefaultLog();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v46 = personaCopy;
                  mb_pluginIdentifier9 = [v15 mb_pluginIdentifier];
                  mb_pluginIdentifier10 = [v15 mb_pluginIdentifier];
                  *buf = 138412546;
                  v88 = mb_pluginIdentifier9;
                  v89 = 2112;
                  v90 = mb_pluginIdentifier10;
                  _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a pluginIdentifier (%@) - will not be backed up.", buf, 0x16u);

                  mb_pluginIdentifier11 = [v15 mb_pluginIdentifier];
                  mb_pluginIdentifier7 = [v15 mb_pluginIdentifier];
                  mb_pluginIdentifier3 = mb_pluginIdentifier11;
                  v58 = mb_pluginIdentifier7;
                  goto LABEL_40;
                }

LABEL_42:
                v45 = 0;
                goto LABEL_43;
              }

              v43 = MBGetDefaultLog();
              if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_42;
              }

              v46 = personaCopy;
              mb_pluginIdentifier12 = [v15 mb_pluginIdentifier];
              mb_bundleURL3 = [v15 mb_bundleURL];
              *buf = 138412546;
              v88 = mb_pluginIdentifier12;
              v89 = 2112;
              v90 = mb_bundleURL3;
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a bundle URL (%@) - will not be backed up.", buf, 0x16u);

              mb_pluginIdentifier11 = [v15 mb_pluginIdentifier];
              mb_pluginIdentifier7 = [v15 mb_bundleURL];
              mb_pluginIdentifier3 = mb_pluginIdentifier11;
              v58 = mb_pluginIdentifier7;
            }

            else
            {
              v43 = MBGetDefaultLog();
              if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_42;
              }

              v46 = personaCopy;
              mb_pluginIdentifier13 = [v15 mb_pluginIdentifier];
              dataContainerURL3 = [v15 dataContainerURL];
              *buf = 138412546;
              v88 = mb_pluginIdentifier13;
              v89 = 2112;
              v90 = dataContainerURL3;
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a data container (%@) - will not be backed up.", buf, 0x16u);

              mb_pluginIdentifier11 = [v15 mb_pluginIdentifier];
              mb_pluginIdentifier7 = [v15 dataContainerURL];
              mb_pluginIdentifier3 = mb_pluginIdentifier11;
              v58 = mb_pluginIdentifier7;
            }

LABEL_40:
            _MBLog();
            v45 = 0;
            goto LABEL_41;
          }
        }

LABEL_44:
        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v10 != v8);
      v8 = [v6 countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(context);
  v54 = MBGetDefaultLog();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v55 = [v5 count];
    *buf = 134217984;
    v88 = v55;
    _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "Finished app enumeration PLUGINS: %lu apps", buf, 0xCu);
    [v5 count];
    _MBLog();
  }

  return v5;
}

- (id)_systemContainersWithError:(id *)error shared:(BOOL)shared
{
  v4 = +[NSMutableDictionary dictionary];
  container_get_all_with_class_for_current_user();
  container_free_array_of_containers();
  v5 = v4;

  return v5;
}

- (id)systemContainersWithError:(id *)error
{
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  v6 = objc_autoreleasePoolPush();
  if (qword_2A810)
  {
    v7 = 0;
  }

  else
  {
    v13 = 0;
    v8 = [(MBMobileInstallation *)self _systemContainersWithError:&v13 shared:0];
    v7 = v13;
    v9 = qword_2A810;
    qword_2A810 = v8;
  }

  objc_autoreleasePoolPop(v6);
  if (error)
  {
    v10 = v7;
    *error = v7;
  }

  v11 = qword_2A810;

  objc_sync_exit(v5);

  return v11;
}

- (id)systemSharedContainersWithError:(id *)error
{
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  v6 = objc_autoreleasePoolPush();
  if (qword_2A818)
  {
    v7 = 0;
  }

  else
  {
    v13 = 0;
    v8 = [(MBMobileInstallation *)self _systemContainersWithError:&v13 shared:1];
    v7 = v13;
    v9 = qword_2A818;
    qword_2A818 = v8;
  }

  objc_autoreleasePoolPop(v6);
  if (error)
  {
    v10 = v7;
    *error = v7;
  }

  v11 = qword_2A818;

  objc_sync_exit(v5);

  return v11;
}

+ (unint64_t)_containerClassForMBContainerType:(int)type
{
  if ((type - 1) > 4)
  {
    return 15;
  }

  else
  {
    return qword_17838[type - 1];
  }
}

+ (id)_defaultSubdirectoriesForMCMContainerType:(unint64_t)type withError:(id *)error
{
  v6 = container_subdirectories_for_class();
  if (v6)
  {
    v7 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v11 = 2;
      v12 = 2048;
      v13 = 1;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Failed to get subdirectory names for container class %llu : %llu", buf, 0x16u);
      _MBLog();
    }

    if (error)
    {
      [MBError errorWithCode:1 format:@"container_subdirectories_for_class failed for class %llu with error %llu", type, 1];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (BOOL)uninstallAppWithBundleID:(id)d error:(id *)error
{
  dCopy = d;
  v6 = objc_opt_new();
  [v6 setRequestUserConfirmation:0];
  [v6 setWaitForDeletion:1];
  [v6 setShowArchiveOption:0];
  [v6 setSystemAppNotAllowed:0];
  v7 = [IXAppInstallCoordinator uninstallAppWithBundleID:dCopy options:v6 disposition:0 error:error];
  if ((v7 & 1) == 0)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *error;
      *buf = 138412802;
      v13 = dCopy;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Error uninstalling app with bundleID:%@{public} options:%@ error:%@", buf, 0x20u);
      v11 = *error;
      _MBLog();
    }
  }

  return v7;
}

+ (BOOL)resetContainerWithRoot:(id)root error:(id *)error
{
  rootCopy = root;
  [rootCopy fileSystemRepresentation];
  if (container_copy_from_path())
  {
    if (container_delete_all_container_content() == 1)
    {
      identifier = container_get_identifier();
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v14 = identifier;
        v15 = 2112;
        v16 = rootCopy;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Reset container %s with root path %@", buf, 0x16u);
        _MBLog();
      }

      v8 = 1;
    }

    else
    {
      error_description = container_get_error_description();
      if (error)
      {
        *error = [MBError errorWithCode:1 format:@"container_delete_all_container_content failed: %s", error_description];
      }

      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v14 = rootCopy;
        v15 = 2080;
        v16 = error_description;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Failed to reset container at %@: %s", buf, 0x16u);
        _MBLog();
      }

      v8 = 0;
    }

    container_free_object();
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = rootCopy;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "No container found to reset at path %@", buf, 0xCu);
      _MBLog();
    }

    v8 = 1;
  }

  return v8 & 1;
}

+ (id)containerIDForPath:(id)path error:(id *)error
{
  [path fileSystemRepresentation];
  if (container_copy_from_path())
  {
    v5 = [NSString stringWithCString:container_get_identifier()];
    container_free_object();
  }

  else
  {
    error_description = container_get_error_description();
    if (error)
    {
      [MBError errorWithCode:1 format:@"container_copy_from_path failed: %s", error_description, 1];
      *error = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)safeHarborsWithError:(id *)error
{
  v4 = MobileInstallationCopySafeHarbors();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else if (error)
  {
    *error = [MBError errorWithCode:1 format:@"MobileInstallationCopySafeHarbors failed"];
  }

  return v5;
}

- (BOOL)registerSafeHarborWithIdentifier:(id)identifier path:(id)path type:(int)type error:(id *)error
{
  identifierCopy = identifier;
  pathCopy = path;
  v11 = MCMContainerContentClassForMBContainerType(type);
  v12 = MobileInstallationRegisterSafeHarborForContainerType();
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v17 = pathCopy;
    v18 = 2112;
    v19 = identifierCopy;
    v20 = 1024;
    v21 = v11;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "MobileInstallationRegisterSafeHarborForContainerType(%@, %@, %d, NULL): %d", buf, 0x22u);
    _MBLog();
  }

  if (error)
  {
    v14 = v12;
  }

  else
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    *error = [MBError errorWithCode:1 format:@"MobileInstallationRegisterSafeHarborForContainerType failed: %@: %@", identifierCopy, pathCopy];
  }

  return v12;
}

- (BOOL)removeSafeHarborWithIdentifier:(id)identifier type:(int)type error:(id *)error
{
  identifierCopy = identifier;
  if (type)
  {
    v8 = MCMContainerContentClassForMBContainerType(type);
  }

  else
  {
    v8 = 1;
  }

  v9 = MobileInstallationRemoveSafeHarborForContainerType();
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v14 = identifierCopy;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "MobileInstallationRemoveSafeHarborForContainerType(%@, %d, NULL): %d", buf, 0x18u);
    _MBLog();
  }

  if (error)
  {
    v11 = v9;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    *error = [MBError errorWithCode:1 format:@"MobileInstallationRemoveSafeHarborForContainerType failed: %@", identifierCopy];
  }

  return v9;
}

+ (id)displayNameForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v15];
  v5 = v15;
  if (!v4)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = identifierCopy;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Failed to find the app record for %{public}@: %{public}@", buf, 0x16u);
LABEL_9:
      _MBLog();
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  applicationState = [v4 applicationState];
  isInstalled = [applicationState isInstalled];

  if ((isInstalled & 1) == 0)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = identifierCopy;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Found an app record for %{public}@ but it's not installed", buf, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v8 = MBLocalizations();
  v9 = [v4 localizedNameWithPreferredLocalizations:v8];
  v10 = v9;
  if (v9)
  {
    localizedName = v9;
  }

  else
  {
    localizedName = [v4 localizedName];
  }

  v13 = localizedName;

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v17 = identifierCopy;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "Mapped %{public}@ to %{public}@", buf, 0x16u);
    _MBLog();
  }

LABEL_11:

  return v13;
}

+ (id)displayNameForDomain:(id)domain isSystemDomain:(BOOL)systemDomain
{
  systemDomainCopy = systemDomain;
  domainCopy = domain;
  if (domainCopy)
  {
    if (([MBDomain isSystemContainerName:domainCopy]& 1) != 0 || [MBDomain isSystemSharedContainerName:domainCopy])
    {
      v6 = MBLocalizedStringFromTable();
    }

    else
    {
      v7 = [MBDomain containerIDWithName:domainCopy];
      if (!v7)
      {
        v7 = domainCopy;
      }

      v8 = [&off_25FF0 objectForKeyedSubscript:v7];
      v9 = v8;
      if (v8)
      {
        v10 = v8;

        v7 = v10;
      }

      v11 = [objc_opt_class() displayNameForBundleIdentifier:v7];
      if (v11)
      {
        v6 = v11;
      }

      else
      {

        if (systemDomainCopy)
        {
          v6 = MBLocalizedStringFromTable();
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)displayNamesForDomainNames:(id)names domainManager:(id)manager
{
  namesCopy = names;
  managerCopy = manager;
  if (!managerCopy)
  {
    sub_137CC();
  }

  v7 = managerCopy;
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(namesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = namesCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = +[MBMobileInstallation displayNameForDomain:isSystemDomain:](MBMobileInstallation, "displayNameForDomain:isSystemDomain:", v14, [v7 isSystemDomainName:{v14, v18}]);
        if (v16)
        {
          [v8 addObject:v16];
        }

        objc_autoreleasePoolPop(v15);
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v8;
}

@end