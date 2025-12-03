@interface AXValidationManager
+ (id)sharedInstance;
- (AXValidationManager)init;
- (BOOL)_client:(id)_client validateClass:(id)class hasClassMethod:(id)method withFullSignature:(const char *)signature argList:(char *)list;
- (BOOL)_client:(id)_client validateClass:(id)class hasMethod:(id)method methodType:(int)type returnType:(id)returnType arguments:(id)arguments;
- (BOOL)_client:(id)_client validateClass:(id)class hasSwiftField:(id)field withTypeString:(const char *)string isAnyClass:(BOOL)anyClass;
- (BOOL)_client:(id)_client validateStruct:(id)struct hasSwiftField:(id)field withTypeString:(const char *)string isAnyClass:(BOOL)class;
- (BOOL)_client:(id)_client validateSwiftEnum:(id)enum hasCase:(id)case withTypeString:(const char *)string isAnyClass:(BOOL)class;
- (BOOL)_client:(id)_client validateType:(id)type hasSwiftField:(id)field handleSwiftValidationProblems:(id)problems;
- (BOOL)client:(id)client validateClass:(id)class;
- (BOOL)client:(id)client validateClass:(id)class conformsToProtocol:(id)protocol;
- (BOOL)client:(id)client validateClass:(id)class hasInstanceMethod:(id)method withFullSignature:(const char *)signature argList:(char *)list;
- (BOOL)client:(id)client validateClass:(id)class hasInstanceVariable:(id)variable withType:(const char *)type;
- (BOOL)client:(id)client validateClass:(id)class hasProperty:(id)property customGetter:(id)getter customSetter:(id)setter withType:(const char *)type;
- (BOOL)client:(id)client validateClass:(id)class isKindOfClass:(id)ofClass;
- (BOOL)client:(id)client validateProtocol:(id)protocol conformsToProtocol:(id)toProtocol;
- (BOOL)client:(id)client validateProtocol:(id)protocol hasMethod:(id)method isInstanceMethod:(BOOL)instanceMethod isRequired:(BOOL)required;
- (BOOL)client:(id)client validateSwiftEnum:(id)enum;
- (BOOL)client:(id)client validateSwiftEnum:(id)enum hasCase:(id)case;
- (BOOL)client:(id)client validateSwiftStruct:(id)struct;
- (BOOL)client:(id)client validateSwiftStruct:(id)struct hasSize:(int64_t)size;
- (BOOL)installSafeCategory:(id)category canInteractWithTargetClass:(BOOL)class;
- (BOOL)installSwiftDynamicReplacementUnit:(id)unit inBundle:(id)bundle withPrecondition:(id)precondition;
- (BOOL)validateClass:(id)class hasClassMethod:(id)method withReturnType:(id)type args:(id)args;
- (BOOL)validateClass:(id)class hasInstanceMethod:(id)method withReturnType:(id)type args:(id)args;
- (id)_nameForMethod:(objc_method *)method;
- (void)_clearState;
- (void)_generateWarningsForMethodType:(int)type onClass:(Class)class superclassMethods:(objc_method *)methods numberOfSuperclassMethods:(unsigned int)superclassMethods;
- (void)_generateWarningsForPrefixedMethodNames:(id)names client:(id)client methodType:(int)type methodName:(id)name className:(id)className;
- (void)_generateWarningsOnSafeCategoryClass:(Class)class;
- (void)_iterateMethodsOfType:(int)type onClass:(Class)Class block:(id)block;
- (void)_resetState;
- (void)installSafeCategories:(id)categories afterDelay:(double)delay validationTargetName:(id)name overrideProcessName:(id)processName;
- (void)performValidations:(id)validations withPreValidationHandler:(id)handler postValidationHandler:(id)validationHandler safeCategoryInstallationHandler:(id)installationHandler;
- (void)sendExceptionForInstallingSafeCategory:(id)category onTarget:(id)target overrideProcessName:(id)name;
- (void)sendExceptionForSafeBlock:(id)block overrideProcessName:(id)name;
- (void)sendExceptionForSafeCategoryOnWrongTarget:(id)target targetBundle:(id)bundle expectedBundle:(id)expectedBundle overrideProcessName:(id)name;
- (void)sendExceptionForSafeIVarKey:(id)key onTarget:(id)target overrideProcessName:(id)name;
- (void)sendExceptionForSafeValueKey:(id)key onTarget:(id)target overrideProcessName:(id)name;
- (void)sendFailedAssertionWithErrorMessage:(id)message overrideProcessName:(id)name;
- (void)sendFailedTestCase:(id)case withTag:(id)tag overrideProcessName:(id)name;
- (void)sendGenericReport:(id)report withTag:(id)tag overrideProcessName:(id)name;
- (void)sendValidateExceptionForClass:(id)class conformsToProtocol:(id)protocol errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForClass:(id)class errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForClass:(id)class hasClassMethod:(id)method errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForClass:(id)class hasInstanceMethod:(id)method errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForClass:(id)class hasInstanceVariable:(id)variable errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForClass:(id)class hasProperty:(id)property errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForClass:(id)class isKindOfClass:(id)ofClass errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForProtocol:(id)protocol conformsToProtocol:(id)toProtocol errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForProtocol:(id)protocol hasMethod:(id)method errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidateExceptionForProtocol:(id)protocol hasProperty:(id)property errorMessage:(id)message overrideProcessName:(id)name;
- (void)sendValidationSuccessForProcessName:(id)name;
@end

@implementation AXValidationManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[AXValidationManager sharedInstance];
  }

  v3 = sharedInstance__shared_0;

  return v3;
}

uint64_t __37__AXValidationManager_sharedInstance__block_invoke()
{
  sharedInstance__shared_0 = objc_alloc_init(AXValidationManager);

  return MEMORY[0x1EEE66BB8]();
}

- (AXValidationManager)init
{
  v5.receiver = self;
  v5.super_class = AXValidationManager;
  v2 = [(AXValidationManager *)&v5 init];
  if (v2)
  {
    AXSetValidationErrorLoggingFunction();
    AXSetUIAXReportSenderErrorLoggerFunction();
    if (_AXSReportValidationErrors())
    {
      AXLoadAccessibilityDebuggerIfNeeded();
      v3 = [NSClassFromString(&cfstr_Adtarget.isa) safeValueForKey:@"target"];
      [(AXValidationManager *)v2 setValidationReportingServices:v3];
    }
  }

  return v2;
}

- (void)performValidations:(id)validations withPreValidationHandler:(id)handler postValidationHandler:(id)validationHandler safeCategoryInstallationHandler:(id)installationHandler
{
  validationsCopy = validations;
  handlerCopy = handler;
  validationHandlerCopy = validationHandler;
  installationHandlerCopy = installationHandler;
  if ([(AXValidationManager *)self installSafeCategoriesOffMainThread])
  {
    v14 = +[AXAccessQueue backgroundAccessQueue];
    v15 = AXLogValidations();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19159B000, v15, OS_LOG_TYPE_INFO, "Processing safe categories off main thread", buf, 2u);
    }
  }

  else
  {
    v14 = +[AXAccessQueue mainAccessQueue];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __121__AXValidationManager_performValidations_withPreValidationHandler_postValidationHandler_safeCategoryInstallationHandler___block_invoke;
  v20[3] = &unk_1E735BD98;
  v20[4] = self;
  v21 = handlerCopy;
  v22 = validationsCopy;
  v23 = validationHandlerCopy;
  v24 = installationHandlerCopy;
  v16 = installationHandlerCopy;
  v17 = validationHandlerCopy;
  v18 = validationsCopy;
  v19 = handlerCopy;
  [v14 performSynchronousWritingBlock:v20];
}

uint64_t __121__AXValidationManager_performValidations_withPreValidationHandler_postValidationHandler_safeCategoryInstallationHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _resetState];
  v2 = *(a1 + 40);
  if (v2 && !(*(v2 + 16))(v2, *(a1 + 32)))
  {
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) shouldPerformValidationChecks];
  }

  v4 = [*(a1 + 32) validationTargetName];

  if (!v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = AXProcessGetName();
    v7 = [v5 stringWithFormat:@"%@ (generic symbols)", v6];
    [*(a1 + 32) setValidationTargetName:v7];
  }

  if (v3)
  {
    v8 = AXLogLoading();
    if (os_signpost_enabled(v8))
    {
      v9 = [*(a1 + 32) validationTargetName];
      *buf = 138412290;
      v23 = v9;
      _os_signpost_emit_with_name_impl(&dword_19159B000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Validations", "Target=%@", buf, 0xCu);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, *(a1 + 32));
    }

    v11 = AXLogLoading();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19159B000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Validations", &unk_19167EAFE, buf, 2u);
    }

    v12 = *(a1 + 56);
    if (v12)
    {
      (*(v12 + 16))(v12, *(a1 + 32), [*(a1 + 32) numberOfValidationErrors]);
    }
  }

  if (*(a1 + 64))
  {
    v13 = AXLogLoading();
    if (os_signpost_enabled(v13))
    {
      v14 = [*(a1 + 32) validationTargetName];
      *buf = 138412290;
      v23 = v14;
      _os_signpost_emit_with_name_impl(&dword_19159B000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "InstallSafeCategories", "Target=%@", buf, 0xCu);
    }

    v15 = *(a1 + 32);
    (*(*(a1 + 64) + 16))();
    v16 = AXLogLoading();
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19159B000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "InstallSafeCategories", &unk_19167EAFE, buf, 2u);
    }
  }

  v17 = *(a1 + 32);
  if (v3)
  {
    v18 = [*(a1 + 32) numberOfValidationErrors];
    v17 = *(a1 + 32);
    if (!v18 && v17[10] == 1 && (v17[11] & 1) == 0 && *(a1 + 64))
    {
      v19 = [*(a1 + 32) overrideProcessName];
      [v17 sendValidationSuccessForProcessName:v19];

      v17 = *(a1 + 32);
    }

    if (v17[8] == 1)
    {
      [v17 _printConsoleReport:*(a1 + 64) != 0 isDelayed:0];
      v17 = *(a1 + 32);
    }
  }

  result = [v17 _clearState];
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)installSafeCategories:(id)categories afterDelay:(double)delay validationTargetName:(id)name overrideProcessName:(id)processName
{
  categoriesCopy = categories;
  nameCopy = name;
  processNameCopy = processName;
  if (categoriesCopy)
  {
    v13 = +[AXAccessQueue mainAccessQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __97__AXValidationManager_installSafeCategories_afterDelay_validationTargetName_overrideProcessName___block_invoke;
    v14[3] = &unk_1E735BDC0;
    v14[4] = self;
    v15 = processNameCopy;
    v16 = nameCopy;
    v17 = categoriesCopy;
    [v13 afterDelay:v14 processWritingBlock:delay];
  }
}

uint64_t __97__AXValidationManager_installSafeCategories_afterDelay_validationTargetName_overrideProcessName___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _resetState];
  [*(a1 + 32) setOverrideProcessName:*(a1 + 40)];
  if (*(a1 + 48))
  {
    [*(a1 + 32) setValidationTargetName:?];
  }

  else
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = AXProcessGetName();
    v4 = [v2 stringWithFormat:@"%@ (generic symbols)", v3];
    [*(a1 + 32) setValidationTargetName:v4];
  }

  v5 = AXLogLoading();
  if (os_signpost_enabled(v5))
  {
    v6 = [*(a1 + 32) validationTargetName];
    *buf = 138412290;
    v13 = v6;
    _os_signpost_emit_with_name_impl(&dword_19159B000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "InstallSafeCategories", "Target=%@", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();
  v8 = AXLogLoading();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19159B000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "InstallSafeCategories", &unk_19167EAFE, buf, 2u);
  }

  [*(a1 + 32) setNumberOfCategories:{objc_msgSend(*(a1 + 32), "numberOfCategories") + 1}];
  v9 = *(a1 + 32);
  if (v9[8] == 1)
  {
    [v9 _printConsoleReport:1 isDelayed:1];
    v9 = *(a1 + 32);
  }

  result = [v9 _clearState];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_resetState
{
  [(AXValidationManager *)self setShouldPerformValidationChecks:AXPerformValidationChecks()];
  [(AXValidationManager *)self setNumberOfValidationErrors:0];
  [(AXValidationManager *)self setNumberOfValidationWarnings:0];
  [(AXValidationManager *)self setValidationTargetName:0];
  [(AXValidationManager *)self setForceDoNotReport:0];
  [(AXValidationManager *)self setDebugBuild:0];
  [(AXValidationManager *)self setNumberOfValidations:0];
  [(AXValidationManager *)self setShouldLogToConsole:AXShouldLogValidationErrors()];
  [(AXValidationManager *)self setShouldCrashOnError:AXShouldCrashOnValidationErrors()];
  [(AXValidationManager *)self setShouldReportToServer:AXShouldReportValidationErrors()];
  array = [MEMORY[0x1E695DF70] array];
  [(AXValidationManager *)self setConsoleErrorMessages:array];

  array2 = [MEMORY[0x1E695DF70] array];
  [(AXValidationManager *)self setConsoleWarningMessages:array2];
}

- (void)_clearState
{
  [(AXValidationManager *)self setConsoleErrorMessages:0];

  [(AXValidationManager *)self setConsoleWarningMessages:0];
}

- (BOOL)client:(id)client validateClass:(id)class
{
  clientCopy = client;
  classCopy = class;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v8 = _AXClassFromStringWithFallback(classCopy);
  Name = class_getName(v8);
  v10 = strcmp(Name, "nil");
  if (!v10)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    classCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Class Not Present: %@", classCopy];
    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:classCopy];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:classCopy errorMessage:classCopy overrideProcessName:overrideProcessName];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return v10 != 0;
}

- (BOOL)client:(id)client validateClass:(id)class isKindOfClass:(id)ofClass
{
  clientCopy = client;
  classCopy = class;
  ofClassCopy = ofClass;
  Superclass = _AXClassFromStringWithFallback(classCopy);
  v12 = _AXClassFromStringWithFallback(ofClassCopy);
  while (1)
  {
    v13 = Superclass;
    if (!Superclass)
    {
      break;
    }

    Superclass = class_getSuperclass(Superclass);
    if (Superclass == v12)
    {
      [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
      goto LABEL_12;
    }
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
  ofClassCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ is not a kind of %@", clientCopy, classCopy, ofClassCopy];
  if (self->_shouldLogToConsole)
  {
    consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
    [consoleErrorMessages addObject:ofClassCopy];
  }

  if (self->_shouldReportToServer && !self->_forceDoNotReport)
  {
    overrideProcessName = [(AXValidationManager *)self overrideProcessName];
    [(AXValidationManager *)self sendValidateExceptionForClass:classCopy isKindOfClass:ofClassCopy errorMessage:ofClassCopy overrideProcessName:overrideProcessName];
  }

  if (self->_shouldCrashOnError)
  {
    abort();
  }

LABEL_12:
  return v13 != 0;
}

- (BOOL)client:(id)client validateSwiftStruct:(id)struct
{
  clientCopy = client;
  structCopy = struct;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v8 = _AXSwiftValidateStruct(structCopy);
  if ((v8 & 1) == 0)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    structCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Struct Not Present: %@", structCopy];
    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:structCopy];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:structCopy errorMessage:structCopy overrideProcessName:overrideProcessName];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return v8;
}

- (BOOL)client:(id)client validateSwiftStruct:(id)struct hasSize:(int64_t)size
{
  v30 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  structCopy = struct;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  array = [MEMORY[0x1E695DF70] array];
  if ((_AXSwiftValidateStruct(structCopy) & 1) == 0)
  {
    [array addObject:@"Swift field doesn't exist"];
    if (!_AXSwiftValidateStructHasSize(structCopy, size))
    {
      [array addObject:@"Swift field isn't class type"];
    }
  }

  v11 = [array count];
  if (v11)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v12 = MEMORY[0x1E696AD60];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:size];
    v24 = clientCopy;
    v14 = [v12 stringWithFormat:@"%@: Swift enum %@ doesn't match size: %@", clientCopy, structCopy, v13];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = array;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [v14 appendFormat:@" %@", *(*(&v25 + 1) + 8 * v19++)];
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }

    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:v14];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:structCopy errorMessage:v14 overrideProcessName:overrideProcessName];
    }

    clientCopy = v24;
    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v11 == 0;
}

- (BOOL)_client:(id)_client validateStruct:(id)struct hasSwiftField:(id)field withTypeString:(const char *)string isAnyClass:(BOOL)class
{
  classCopy = class;
  structCopy = struct;
  fieldCopy = field;
  v14 = MEMORY[0x1E695DF70];
  _clientCopy = _client;
  array = [v14 array];
  if ((_AXSwiftValidateStructHasField(structCopy, fieldCopy) & 1) == 0)
  {
    v17 = @"Swift field doesn't exist";
    goto LABEL_6;
  }

  if (classCopy)
  {
    if ((_AXSwiftValidateStructHasFieldOfAnyClass(structCopy, fieldCopy) & 1) == 0)
    {
      v17 = @"Swift field isn't class type";
LABEL_6:
      [array addObject:v17];
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    if ((_AXSwiftValidateStructHasFieldWithTypeString(structCopy, fieldCopy, v18) & 1) == 0)
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = _AXSwiftValidateStructGetFieldTypeString(structCopy, fieldCopy);
      v21 = [v19 stringWithFormat:@"Swift field doesn't match: (%@) expected: (%@)", v18, v20];
      [array addObject:v21];
    }
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v22 = [(AXValidationManager *)self _client:_clientCopy validateType:structCopy hasSwiftField:fieldCopy handleSwiftValidationProblems:array];

  return v22;
}

- (BOOL)client:(id)client validateSwiftEnum:(id)enum
{
  clientCopy = client;
  enumCopy = enum;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v8 = _AXSwiftValidateEnum(enumCopy);
  if ((v8 & 1) == 0)
  {
    enumCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Enum Not Present: %@", enumCopy];
    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:enumCopy];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:enumCopy errorMessage:enumCopy overrideProcessName:overrideProcessName];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return v8;
}

- (BOOL)client:(id)client validateSwiftEnum:(id)enum hasCase:(id)case
{
  enumCopy = enum;
  caseCopy = case;
  v10 = MEMORY[0x1E695DF70];
  clientCopy = client;
  array = [v10 array];
  if ((_AXSwiftValidateEnumHasCase(enumCopy, caseCopy) & 1) == 0)
  {
    [array addObject:@"Swift case doesn't exist"];
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v13 = [(AXValidationManager *)self _client:clientCopy validateType:enumCopy hasSwiftField:caseCopy handleSwiftValidationProblems:array];

  return v13;
}

- (BOOL)_client:(id)_client validateSwiftEnum:(id)enum hasCase:(id)case withTypeString:(const char *)string isAnyClass:(BOOL)class
{
  classCopy = class;
  enumCopy = enum;
  caseCopy = case;
  v14 = MEMORY[0x1E695DF70];
  _clientCopy = _client;
  array = [v14 array];
  if ((_AXSwiftValidateEnumHasCase(enumCopy, caseCopy) & 1) == 0)
  {
    v17 = @"Swift case doesn't exist";
    goto LABEL_6;
  }

  if (classCopy)
  {
    if ((_AXSwiftValidateEnumHasCaseOfAnyClass(enumCopy, caseCopy) & 1) == 0)
    {
      v17 = @"Swift case isn't class type";
LABEL_6:
      [array addObject:v17];
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    if ((_AXSwiftValidateEnumHasCaseWithTypeString(enumCopy, caseCopy, v18) & 1) == 0)
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = _AXSwiftValidateEnumGetCaseTypeString(enumCopy, caseCopy);
      v21 = [v19 stringWithFormat:@"Swift case doesn't match: (%@) expected: (%@)", v18, v20];
      [array addObject:v21];
    }
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v22 = [(AXValidationManager *)self _client:_clientCopy validateType:enumCopy hasSwiftField:caseCopy handleSwiftValidationProblems:array];

  return v22;
}

- (BOOL)_client:(id)_client validateClass:(id)class hasSwiftField:(id)field withTypeString:(const char *)string isAnyClass:(BOOL)anyClass
{
  anyClassCopy = anyClass;
  classCopy = class;
  fieldCopy = field;
  v14 = MEMORY[0x1E695DF70];
  _clientCopy = _client;
  array = [v14 array];
  v17 = _AXClassFromStringWithFallback(classCopy);
  if (!v17)
  {
    v19 = @"Class doesn't exist";
    goto LABEL_8;
  }

  v18 = v17;
  if ((_AXSwiftValidateClassHasField(v17, fieldCopy) & 1) == 0)
  {
    v19 = @"Swift field doesn't exist";
    goto LABEL_8;
  }

  if (anyClassCopy)
  {
    if ((_AXSwiftValidateClassHasFieldOfAnyClass(v18, fieldCopy) & 1) == 0)
    {
      v19 = @"Swift field isn't class type";
LABEL_8:
      [array addObject:v19];
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    if ((_AXSwiftValidateClassHasFieldWithTypeString() & 1) == 0)
    {
      v23 = MEMORY[0x1E696AEC0];
      v24 = _AXSwiftValidateClassGetFieldTypeString();
      v25 = [v23 stringWithFormat:@"Swift field doesn't match: (%@) expected: (%@)", v22, v24];
      [array addObject:v25];
    }
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v20 = [(AXValidationManager *)self _client:_clientCopy validateType:classCopy hasSwiftField:fieldCopy handleSwiftValidationProblems:array];

  return v20;
}

- (BOOL)_client:(id)_client validateType:(id)type hasSwiftField:(id)field handleSwiftValidationProblems:(id)problems
{
  v32 = *MEMORY[0x1E69E9840];
  _clientCopy = _client;
  typeCopy = type;
  fieldCopy = field;
  problemsCopy = problems;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v14 = [problemsCopy count];
  if (v14)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v25 = _clientCopy;
    v26 = typeCopy;
    typeCopy = [MEMORY[0x1E696AD60] stringWithFormat:@"%@: Swift field: (%@) on type: %@.", _clientCopy, fieldCopy, typeCopy];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = problemsCopy;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [typeCopy appendFormat:@" %@", *(*(&v27 + 1) + 8 * i)];
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:typeCopy];
    }

    typeCopy = v26;
    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:v26 hasInstanceVariable:fieldCopy errorMessage:typeCopy overrideProcessName:overrideProcessName];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }

    _clientCopy = v25;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v14 == 0;
}

- (BOOL)client:(id)client validateClass:(id)class hasInstanceVariable:(id)variable withType:(const char *)type
{
  clientCopy = client;
  classCopy = class;
  variableCopy = variable;
  v13 = _AXClassFromStringWithFallback(classCopy);
  InstanceVariable = class_getInstanceVariable(v13, [variableCopy UTF8String]);
  TypeEncoding = ivar_getTypeEncoding(InstanceVariable);
  if (!type)
  {
    v18 = 0;
    goto LABEL_24;
  }

  v16 = TypeEncoding;
  if (strlen(type) >= 2)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:type];
    if ([v17 isEqualToString:@"NSInteger"])
    {
      type = "q";
    }

    else if ([v17 isEqualToString:@"NSUInteger"])
    {
      type = "Q";
    }

    else if ([v17 isEqualToString:@"int"])
    {
      type = "i";
    }

    else if ([v17 isEqualToString:@"BOOL"])
    {
      type = "B";
    }

    else if ([v17 isEqualToString:@"CGFloat"])
    {
      type = "d";
    }
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:type];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@%@", v19];

  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:type];
  type = v20;
  if (v16 && *v16 == 66 && !v16[1] && [v20 isEqualToString:@"c"])
  {

    type = @"B";
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  if (!v16)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ : Ivar does not exist: %@", clientCopy, classCopy, variableCopy, v26, v27];
    goto LABEL_26;
  }

  if (!strcmp(v16, [v18 UTF8String]) || !strcmp(v16, objc_msgSend(type, "UTF8String")))
  {
LABEL_24:
    v21 = 1;
    goto LABEL_33;
  }

  [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ : Ivar is not the right type: %@ [AX: %@ MAINLINE: %s]", clientCopy, classCopy, variableCopy, v18, v16];
  v22 = LABEL_26:;
  if (self->_shouldLogToConsole)
  {
    consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
    [consoleErrorMessages addObject:v22];
  }

  if (self->_shouldReportToServer && !self->_forceDoNotReport)
  {
    overrideProcessName = [(AXValidationManager *)self overrideProcessName];
    [(AXValidationManager *)self sendValidateExceptionForClass:classCopy hasInstanceVariable:variableCopy errorMessage:v22 overrideProcessName:overrideProcessName];
  }

  if (self->_shouldCrashOnError)
  {
    abort();
  }

  v21 = 0;
LABEL_33:

  return v21;
}

uint64_t __66__AXValidationManager__client_validateClass_hasMethod_methodType___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 40) == a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)_client:(id)_client validateClass:(id)class hasMethod:(id)method methodType:(int)type returnType:(id)returnType arguments:(id)arguments
{
  v58 = *MEMORY[0x1E69E9840];
  _clientCopy = _client;
  classCopy = class;
  returnTypeCopy = returnType;
  argumentsCopy = arguments;
  v14 = MEMORY[0x1E695DF70];
  methodCopy = method;
  array = [v14 array];
  v17 = _AXClassFromStringWithFallback(classCopy);
  aSelectorName = [methodCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_1F0579798];

  v18 = NSSelectorFromString(aSelectorName);
  if (type)
  {
    InstanceMethod = class_getInstanceMethod(v17, v18);
  }

  else
  {
    InstanceMethod = class_getClassMethod(v17, v18);
  }

  v20 = InstanceMethod;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __87__AXValidationManager__client_validateClass_hasMethod_methodType_returnType_arguments___block_invoke;
  v52[3] = &unk_1E735BDE8;
  v52[4] = &v53;
  v52[5] = InstanceMethod;
  [(AXValidationManager *)self _iterateMethodsOfType:type onClass:v17 block:v52];
  if (v54[3])
  {
    v21 = method_copyReturnType(v20);
    if (v21)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v21];
      if (([v22 isEqualToString:returnTypeCopy] & 1) == 0)
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Incorrect return type: expected:%@ actual:%@", returnTypeCopy, v22];
        [array addObject:v23];
      }

      free(v21);
    }

    else
    {
      [array addObject:@"Unable to determine return type."];
    }

    v24 = method_getNumberOfArguments(v20) - 2;
    if (v24 != [argumentsCopy count])
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(argumentsCopy, "count")}];
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
      v28 = [v25 stringWithFormat:@"Incorrect argument count: expected:%@ actual:%@", v26, v27];
      [array addObject:v28];
    }

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __87__AXValidationManager__client_validateClass_hasMethod_methodType_returnType_arguments___block_invoke_2;
    v49[3] = &unk_1E735BE10;
    v51 = v20;
    v50 = array;
    [argumentsCopy enumerateObjectsUsingBlock:v49];
  }

  else
  {
    [array addObject:@"Method does not exist"];
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v29 = [array count];
  if (v29)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v30 = @"Instance";
    if (!type)
    {
      v30 = @"Class";
    }

    classCopy = [MEMORY[0x1E696AD60] stringWithFormat:@"%@: %@ method: (%@) on class: %@.", _clientCopy, v30, aSelectorName, classCopy];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v32 = array;
    v33 = [v32 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v33)
    {
      v34 = *v46;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(v32);
          }

          [classCopy appendFormat:@" %@", *(*(&v45 + 1) + 8 * i)];
        }

        v33 = [v32 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v33);
    }

    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:classCopy];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      if (type)
      {
        [(AXValidationManager *)self sendValidateExceptionForClass:classCopy hasInstanceMethod:aSelectorName errorMessage:classCopy overrideProcessName:overrideProcessName];
      }

      else
      {
        [(AXValidationManager *)self sendValidateExceptionForClass:classCopy hasClassMethod:aSelectorName errorMessage:classCopy overrideProcessName:overrideProcessName];
      }
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  _Block_object_dispose(&v53, 8);

  v38 = *MEMORY[0x1E69E9840];
  return v29 == 0;
}

uint64_t __87__AXValidationManager__client_validateClass_hasMethod_methodType_returnType_arguments___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 40) == a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void __87__AXValidationManager__client_validateClass_hasMethod_methodType_returnType_arguments___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  v5 = method_copyArgumentType(*(a1 + 40), a3 + 2);
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    if (([v7 isEqualToString:v15] & 1) == 0)
    {
      v8 = *(a1 + 32);
      v9 = MEMORY[0x1E696AEC0];
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      v11 = [v9 stringWithFormat:@"Incorrect argument at position:%@\n expected:%@\n actual:%@", v10, v15, v7];
      [v8 addObject:v11];
    }

    free(v6);
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v14 = [v13 stringWithFormat:@"Actual arg not found at position:%@ expected:%@", v7, v15];
    [v12 addObject:v14];
  }
}

- (BOOL)validateClass:(id)class hasClassMethod:(id)method withReturnType:(id)type args:(id)args
{
  if (args)
  {
    argsCopy = args;
  }

  else
  {
    argsCopy = MEMORY[0x1E695E0F0];
  }

  v11 = AXValidationClientAccessibility;
  argsCopy2 = args;
  v13 = [(AXValidationManager *)self _client:v11 validateClass:class hasMethod:method methodType:0 returnType:type arguments:argsCopy];

  return v13;
}

- (BOOL)_client:(id)_client validateClass:(id)class hasClassMethod:(id)method withFullSignature:(const char *)signature argList:(char *)list
{
  _clientCopy = _client;
  classCopy = class;
  methodCopy = method;
  listCopy = list;
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:signature];
  array = [MEMORY[0x1E695DF70] array];
  while (1)
  {
    v17 = listCopy;
    listCopy += 8;
    if (!*v17)
    {
      break;
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [array addObject:v18];
  }

  v19 = [(AXValidationManager *)self _client:_clientCopy validateClass:classCopy hasMethod:methodCopy methodType:0 returnType:v15 arguments:array];

  return v19;
}

- (BOOL)client:(id)client validateClass:(id)class hasInstanceMethod:(id)method withFullSignature:(const char *)signature argList:(char *)list
{
  clientCopy = client;
  classCopy = class;
  methodCopy = method;
  listCopy = list;
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:signature];
  array = [MEMORY[0x1E695DF70] array];
  while (1)
  {
    v17 = listCopy;
    listCopy += 8;
    if (!*v17)
    {
      break;
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [array addObject:v18];
  }

  v19 = [(AXValidationManager *)self _client:clientCopy validateClass:classCopy hasMethod:methodCopy methodType:1 returnType:v15 arguments:array];

  return v19;
}

- (BOOL)validateClass:(id)class hasInstanceMethod:(id)method withReturnType:(id)type args:(id)args
{
  if (args)
  {
    argsCopy = args;
  }

  else
  {
    argsCopy = MEMORY[0x1E695E0F0];
  }

  v11 = AXValidationClientAccessibility;
  argsCopy2 = args;
  v13 = [(AXValidationManager *)self _client:v11 validateClass:class hasMethod:method methodType:1 returnType:type arguments:argsCopy];

  return v13;
}

- (BOOL)client:(id)client validateClass:(id)class hasProperty:(id)property customGetter:(id)getter customSetter:(id)setter withType:(const char *)type
{
  clientCopy = client;
  classCopy = class;
  propertyCopy = property;
  getterCopy = getter;
  setterCopy = setter;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__AXValidationManager_client_validateClass_hasProperty_customGetter_customSetter_withType___block_invoke;
  aBlock[3] = &unk_1E735BE38;
  aBlock[4] = self;
  v19 = classCopy;
  v38 = v19;
  v20 = propertyCopy;
  v39 = v20;
  v40 = &v41;
  v21 = _Block_copy(aBlock);
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v22 = _AXClassFromStringWithFallback(v19);
  Property = class_getProperty(v22, [v20 UTF8String]);
  v24 = Property;
  if (Property)
  {
    if (type)
    {
      v25 = property_copyAttributeValue(Property, "T");
      v26 = v25;
      if (v25)
      {
        if (strcmp(v25, type) && (*v26 != 64 || *type != 64))
        {
          type = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) had wrong type:(%s) expected: (%s)", clientCopy, v19, v20, v26, type];
          v21[2](v21, type);

LABEL_33:
          free(v26);
          goto LABEL_34;
        }

        v27 = property_copyAttributeValue(v24, "G");
        v28 = property_copyAttributeValue(v24, "S");
        if (!getterCopy && v27)
        {
          v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) has unexpected custom getter: (%s)", clientCopy, v19, v20, v27];
          v21[2](v21, v29);
        }

        if (!setterCopy && v28)
        {
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) has unexpected custom setter: (%s)", clientCopy, v19, v20, v28];
          v21[2](v21, v30);
        }

        if (getterCopy)
        {
          if (v27)
          {
            if (!strcmp(v27, [getterCopy UTF8String]))
            {
              goto LABEL_23;
            }

            getterCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) has unexpected custom getter: (%s) expected:(%@)", clientCopy, v19, v20, v27, getterCopy];
            v21[2](v21, getterCopy);
          }

          else
          {
            getterCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) does not have custom getter: (%@)", clientCopy, v19, v20, getterCopy];
            v21[2](v21, getterCopy);
          }
        }

LABEL_23:
        if (setterCopy)
        {
          if (!v28)
          {
            setterCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) does not have custom setter: (%@)", clientCopy, v19, v20, setterCopy];
            v21[2](v21, setterCopy);
            goto LABEL_28;
          }

          if (strcmp(v28, [setterCopy UTF8String]))
          {
            setterCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) has unexpected custom setter: (%s) expected:(%@)", clientCopy, v19, v20, v28, setterCopy];
            v21[2](v21, setterCopy);
LABEL_28:
          }
        }

        if (v27)
        {
          free(v27);
        }

        if (v28)
        {
          free(v28);
        }

        goto LABEL_33;
      }
    }

    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property missing type information: %@", clientCopy, v19, v20];
    v21[2](v21, v32);
  }

  else
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property not present: %@", clientCopy, v19, v20];
    v21[2](v21, v32);
  }

LABEL_34:
  v35 = *(v42 + 24);

  _Block_object_dispose(&v41, 8);
  return (v35 & 1) == 0;
}

void __91__AXValidationManager_client_validateClass_hasProperty_customGetter_customSetter_withType___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  [*(a1 + 32) setNumberOfValidationErrors:{objc_msgSend(*(a1 + 32), "numberOfValidationErrors") + 1}];
  v3 = *(a1 + 32);
  if (v3[8] == 1)
  {
    v4 = [*(a1 + 32) consoleErrorMessages];
    [v4 addObject:v8];

    v3 = *(a1 + 32);
  }

  if (v3[10] == 1 && (v3[11] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = [v3 overrideProcessName];
    [v3 sendValidateExceptionForClass:v5 hasProperty:v6 errorMessage:v8 overrideProcessName:v7];

    v3 = *(a1 + 32);
  }

  if (v3[9] == 1)
  {
    abort();
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
}

- (BOOL)client:(id)client validateClass:(id)class conformsToProtocol:(id)protocol
{
  clientCopy = client;
  classCopy = class;
  protocolCopy = protocol;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v11 = _AXClassFromStringWithFallback(classCopy);
  v12 = NSProtocolFromString(protocolCopy);
  v13 = class_conformsToProtocol(v11, v12);

  if (!v13)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    protocolCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Class:%@ Does not conform to Protocol:%@", clientCopy, classCopy, protocolCopy];
    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:protocolCopy];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:classCopy conformsToProtocol:protocolCopy errorMessage:protocolCopy overrideProcessName:overrideProcessName];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return v13;
}

- (BOOL)client:(id)client validateProtocol:(id)protocol conformsToProtocol:(id)toProtocol
{
  clientCopy = client;
  protocolCopy = protocol;
  toProtocolCopy = toProtocol;
  v11 = NSProtocolFromString(protocolCopy);
  v12 = NSProtocolFromString(toProtocolCopy);
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v13 = protocol_conformsToProtocol(v11, v12);
  if (!v13)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    toProtocolCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Protocol does not conform to protocol: %@", clientCopy, protocolCopy, toProtocolCopy];
    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:toProtocolCopy];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForProtocol:protocolCopy conformsToProtocol:toProtocolCopy errorMessage:toProtocolCopy overrideProcessName:overrideProcessName];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return v13;
}

- (BOOL)client:(id)client validateProtocol:(id)protocol hasMethod:(id)method isInstanceMethod:(BOOL)instanceMethod isRequired:(BOOL)required
{
  requiredCopy = required;
  instanceMethodCopy = instanceMethod;
  clientCopy = client;
  protocolCopy = protocol;
  methodCopy = method;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v15 = NSProtocolFromString(protocolCopy);
  v16 = [methodCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_1F0579798];

  v17 = NSSelectorFromString(v16);
  name = protocol_getMethodDescription(v15, v17, requiredCopy, instanceMethodCopy).name;
  if (!name)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v19 = @"optional";
    if (requiredCopy)
    {
      v19 = @"required";
    }

    v20 = @"class";
    if (instanceMethodCopy)
    {
      v20 = @"instance";
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Protocol %@ %@ method not present: %@", clientCopy, protocolCopy, v19, v20, v16];
    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:v21];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForProtocol:protocolCopy hasMethod:v16 errorMessage:v21 overrideProcessName:overrideProcessName];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return name != 0;
}

- (void)_iterateMethodsOfType:(int)type onClass:(Class)Class block:(id)block
{
  blockCopy = block;
  if (!type)
  {
    Class = object_getClass(Class);
  }

  outCount = 0;
  v8 = class_copyMethodList(Class, &outCount);
  if (v8 && outCount)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    do
    {
      blockCopy[2](blockCopy, v9[v10], &v11);
      if (v11 == 1)
      {
        break;
      }

      ++v10;
    }

    while (v10 < outCount);
    free(v9);
  }
}

- (id)_nameForMethod:(objc_method *)method
{
  if (method)
  {
    Name = method_getName(method);
    if (Name && (v5 = sel_getName(Name)) != 0)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    }

    else
    {
      v6 = @"(null)";
    }
  }

  else
  {
    v6 = @"(null)";
  }

  return v6;
}

- (void)_generateWarningsForPrefixedMethodNames:(id)names client:(id)client methodType:(int)type methodName:(id)name className:(id)className
{
  v35 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  clientCopy = client;
  nameCopy = name;
  classNameCopy = className;
  if ([namesCopy count])
  {
    [(AXValidationManager *)self setNumberOfValidationWarnings:[(AXValidationManager *)self numberOfValidationWarnings]+ 1];
    array = [MEMORY[0x1E695DF70] array];
    v17 = @"Instance";
    if (!type)
    {
      v17 = @"Class";
    }

    v27 = classNameCopy;
    v28 = nameCopy;
    v29 = clientCopy;
    classNameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ method: (%@) on class: %@ has the following more specific variants:", clientCopy, v17, nameCopy, classNameCopy];
    [array addObject:?];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = namesCopy;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@", *(*(&v30 + 1) + 8 * i)];
          [array addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v20);
    }

    if (self->_shouldLogToConsole)
    {
      consoleWarningMessages = [(AXValidationManager *)self consoleWarningMessages];
      [consoleWarningMessages addObjectsFromArray:array];
    }

    nameCopy = v28;
    clientCopy = v29;
    classNameCopy = v27;
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_generateWarningsOnSafeCategoryClass:(Class)class
{
  Superclass = class_getSuperclass(class);
  Class = object_getClass(Superclass);
  outCount = 0;
  v7 = class_copyMethodList(Class, &outCount);
  [(AXValidationManager *)self _generateWarningsForMethodType:0 onClass:class superclassMethods:v7 numberOfSuperclassMethods:outCount];
  if (v7 && outCount)
  {
    free(v7);
  }

  v9 = 0;
  v8 = class_copyMethodList(Superclass, &v9);
  [(AXValidationManager *)self _generateWarningsForMethodType:1 onClass:class superclassMethods:v8 numberOfSuperclassMethods:v9];
  if (v8)
  {
    if (v9)
    {
      free(v8);
    }
  }
}

- (void)_generateWarningsForMethodType:(int)type onClass:(Class)class superclassMethods:(objc_method *)methods numberOfSuperclassMethods:(unsigned int)superclassMethods
{
  if (methods)
  {
    if (superclassMethods)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:class_getName(class)];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __106__AXValidationManager__generateWarningsForMethodType_onClass_superclassMethods_numberOfSuperclassMethods___block_invoke_2;
      v13[3] = &unk_1E735BE80;
      v15 = &__block_literal_global_274_0;
      methodsCopy = methods;
      superclassMethodsCopy = superclassMethods;
      typeCopy = type;
      v13[4] = self;
      v14 = v11;
      v12 = v11;
      [(AXValidationManager *)self _iterateMethodsOfType:0 onClass:class block:v13];
    }
  }
}

uint64_t __106__AXValidationManager__generateWarningsForMethodType_onClass_superclassMethods_numberOfSuperclassMethods___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 length];
  v7 = [v4 length];
  v8 = [v5 hasPrefix:v4];
  v9 = 0;
  if (v6 > v7 && v8)
  {
    v10 = [v5 substringFromIndex:{objc_msgSend(v4, "length")}];
    if ([v4 hasSuffix:@":"])
    {
      v9 = [v10 containsString:@":"];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

void __106__AXValidationManager__generateWarningsForMethodType_onClass_superclassMethods_numberOfSuperclassMethods___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) _nameForMethod:a2];
  v3 = [MEMORY[0x1E695DF70] array];
  if (*(a1 + 64))
  {
    v4 = 0;
    do
    {
      v5 = [*(a1 + 32) _nameForMethod:*(*(a1 + 56) + 8 * v4)];
      if ((*(*(a1 + 48) + 16))())
      {
        [v3 addObject:v5];
      }

      ++v4;
    }

    while (v4 < *(a1 + 64));
  }

  [*(a1 + 32) _generateWarningsForPrefixedMethodNames:v3 client:AXValidationClientAccessibility methodType:*(a1 + 68) methodName:v6 className:*(a1 + 40)];
}

- (BOOL)installSafeCategory:(id)category canInteractWithTargetClass:(BOOL)class
{
  classCopy = class;
  v56 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  v7 = objc_autoreleasePoolPush();
  v8 = NSClassFromString(categoryCopy);
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  if (!v8)
  {
    v21 = AXLogValidations();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [AXValidationManager installSafeCategory:canInteractWithTargetClass:];
    }

    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    categoryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"AX Safe Category class not found: %@", categoryCopy];
    v49 = 0;
    bundlePath4 = 0;
    bundlePath3 = 0;
    v9 = 0;
    LOBYTE(v23) = 0;
    goto LABEL_35;
  }

  if (!classCopy || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v17 = categoryCopy;
    v18 = v7;
    v19 = 0;
    bundlePath3 = 0;
    bundlePath4 = 0;
    v49 = 0;
    v9 = 0;
LABEL_28:
    if (objc_opt_respondsToSelector())
    {
      [(objc_class *)v8 performSelector:sel__initializeSafeCategoryFromValidationManager];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not an accessibility class!", v8];
    }
    categoryCopy = ;

    if (categoryCopy)
    {
      [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
      LOBYTE(v23) = 0;
    }

    else
    {
      LOBYTE(v23) = 1;
    }

    v7 = v18;
    categoryCopy = v17;
    goto LABEL_35;
  }

  v9 = [(objc_class *)v8 performSelector:sel_safeCategoryTargetClassName];
  bundlePath3 = NSClassFromString(v9);
  if (!bundlePath3)
  {
    v17 = categoryCopy;
    v18 = v7;
    v19 = 0;
LABEL_27:
    bundlePath4 = 0;
    v49 = 0;
    goto LABEL_28;
  }

  if (![(AXValidationManager *)self shouldPerformValidationChecks])
  {
    v17 = categoryCopy;
    v18 = v7;
LABEL_26:
    v19 = 0;
    bundlePath3 = 0;
    goto LABEL_27;
  }

  v11 = AXLogLoading();
  if (os_signpost_enabled(v11))
  {
    v12 = MEMORY[0x1E696AEC0];
    NSStringFromClass(bundlePath3);
    v14 = v13 = v7;
    v15 = [v12 stringWithFormat:@"Class=%@", v14];
    *buf = 138412290;
    v51 = v15;
    _os_signpost_emit_with_name_impl(&dword_19159B000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Validations", "Target=%@", buf, 0xCu);

    v7 = v13;
  }

  v48 = [(objc_class *)v8 performSelector:sel__installSafeCategoryValidationMethod];
  if (!v48)
  {
    if (objc_opt_respondsToSelector())
    {
      v16 = [(objc_class *)bundlePath3 axTrampolineForClass:bundlePath3];
      [v16 _accessibilityPerformValidations:self];
    }

    else
    {
      [(objc_class *)bundlePath3 _accessibilityPerformValidations:self];
    }
  }

  v24 = AXLogLoading();
  if (os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19159B000, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Validations", &unk_19167EAFE, buf, 2u);
  }

  v25 = [MEMORY[0x1E696AAE8] bundleForClass:v8];
  bundlePath = [v25 bundlePath];
  v27 = [bundlePath hasSuffix:@"axbundle"];

  if ((v27 & 1) == 0)
  {
    v38 = v25;
    v17 = categoryCopy;
    v18 = v7;

    goto LABEL_26;
  }

  v28 = [MEMORY[0x1E696AAE8] bundleForClass:bundlePath3];
  v29 = +[AXCodeLoader defaultLoader];
  v30 = [v29 codeItemForBundle:v28];

  v47 = v30;
  associatedAccessibilityCodeItem = [v30 associatedAccessibilityCodeItem];
  v45 = associatedAccessibilityCodeItem;
  v46 = v28;
  if (associatedAccessibilityCodeItem)
  {
    v32 = associatedAccessibilityCodeItem;
    v44 = v7;
    bundlePath2 = [v25 bundlePath];
    path = [v32 path];
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
    LOBYTE(v32) = [bundlePath2 isEqualToString:stringByDeletingLastPathComponent];

    if ((v32 & 1) != 0 || ([v47 name], v36 = objc_claimAutoreleasedReturnValue(), v37 = -[NSString hasSuffix:](categoryCopy, "hasSuffix:", v36), v36, v37))
    {
      v49 = 0;
      bundlePath4 = 0;
      bundlePath3 = 0;
      categoryCopy = 0;
      v23 = 1;
    }

    else
    {
      bundlePath3 = [v25 bundlePath];
      bundlePath4 = [v28 bundlePath];
      v43 = AXLogValidations();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v51 = categoryCopy;
        v52 = 2112;
        v53 = v25;
        v54 = 2112;
        v55 = v28;
        _os_log_error_impl(&dword_19159B000, v43, OS_LOG_TYPE_ERROR, "AX Safe category class:%@ in wrong AX bundle '%@' should be with '%@'!", buf, 0x20u);
      }

      [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
      categoryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"AX Safe category class:%@ in wrong AX bundle '%@' should be with '%@'", categoryCopy, v25, v28];
      v23 = 0;
      v49 = 1;
    }

    v7 = v44;
  }

  else
  {
    v49 = 0;
    bundlePath4 = 0;
    bundlePath3 = 0;
    categoryCopy = 0;
    v23 = 1;
  }

  if (v23)
  {
    v17 = categoryCopy;
    v18 = v7;
    v19 = categoryCopy;
    goto LABEL_28;
  }

LABEL_35:
  if ([(AXValidationManager *)self shouldPerformValidationChecks])
  {
    [(AXValidationManager *)self _generateWarningsOnSafeCategoryClass:v8];
  }

  if (!v23)
  {
    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      overrideProcessName = [(AXValidationManager *)self overrideProcessName];
      if (v49)
      {
        [(AXValidationManager *)self sendExceptionForSafeCategoryOnWrongTarget:categoryCopy targetBundle:bundlePath3 expectedBundle:bundlePath4 overrideProcessName:overrideProcessName];
      }

      else
      {
        [(AXValidationManager *)self sendExceptionForInstallingSafeCategory:categoryCopy onTarget:v9 overrideProcessName:overrideProcessName];
      }
    }

    if (self->_shouldLogToConsole)
    {
      consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
      [consoleErrorMessages addObject:categoryCopy];
    }
  }

  objc_autoreleasePoolPop(v7);
  v41 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)installSwiftDynamicReplacementUnit:(id)unit inBundle:(id)bundle withPrecondition:(id)precondition
{
  v41 = *MEMORY[0x1E69E9840];
  unitCopy = unit;
  bundleCopy = bundle;
  preconditionCopy = precondition;
  v11 = objc_autoreleasePoolPush();
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  if (!bundleCopy)
  {
    v19 = AXLogValidations();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [AXValidationManager installSwiftDynamicReplacementUnit:inBundle:withPrecondition:];
    }

    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"AX Container bundle was not found when installing Swift dynamic replacement unit %@", unitCopy];
    goto LABEL_17;
  }

  if (![unitCopy length])
  {
    v20 = AXLogValidations();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [AXValidationManager installSwiftDynamicReplacementUnit:v20 inBundle:? withPrecondition:?];
    }

    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v21 = MEMORY[0x1E696AEC0];
    v22 = @"AX Swift dynamic replacement name empty";
    goto LABEL_16;
  }

  if ((preconditionCopy[2](preconditionCopy) & 1) == 0)
  {
    v23 = AXLogValidations();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [AXValidationManager installSwiftDynamicReplacementUnit:inBundle:withPrecondition:];
    }

    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v21 = MEMORY[0x1E696AEC0];
    v32 = unitCopy;
    v22 = @"AX Swift dynamic replacement %@ installation's condition not met";
LABEL_16:
    [v21 stringWithFormat:v22, v32];
    v17 = LABEL_17:;
    goto LABEL_18;
  }

  builtInPlugInsPath = [bundleCopy builtInPlugInsPath];
  v13 = [unitCopy stringByAppendingPathExtension:@"axbundlefile"];
  v14 = [builtInPlugInsPath stringByAppendingPathComponent:v13];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v16 = [defaultManager fileExistsAtPath:v14 isDirectory:0];

  if (v16)
  {
    if (dlopen([v14 UTF8String], 1))
    {

      v17 = 0;
      v18 = 1;
      goto LABEL_24;
    }

    v30 = dlerror();
    v31 = AXLogValidations();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v36 = unitCopy;
      v37 = 2112;
      v38 = bundleCopy;
      v39 = 2080;
      v40 = v30;
      _os_log_error_impl(&dword_19159B000, v31, OS_LOG_TYPE_ERROR, "AX Swift dynamic replacement %@ from bundle %@ not successfully installed: %s", buf, 0x20u);
    }

    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"AX Swift dynamic replacement %@ from bundle %@ not successfully installed: %s", unitCopy, bundleCopy, v30];
  }

  else
  {
    v29 = AXLogValidations();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [AXValidationManager installSwiftDynamicReplacementUnit:inBundle:withPrecondition:];
    }

    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"AX Swift dynamic replacement file not found at path %@", v14, v33, v34];
  }
  v17 = ;

LABEL_18:
  if (self->_shouldReportToServer && !self->_forceDoNotReport)
  {
    unitCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Swift Dynamic Replacement: %@", unitCopy];
    overrideProcessName = [(AXValidationManager *)self overrideProcessName];
    [(AXValidationManager *)self sendExceptionForInstallingSafeCategory:unitCopy onTarget:&stru_1F0579798 overrideProcessName:overrideProcessName];
  }

  if (self->_shouldLogToConsole)
  {
    consoleErrorMessages = [(AXValidationManager *)self consoleErrorMessages];
    [consoleErrorMessages addObject:v17];
  }

  v18 = 0;
LABEL_24:

  objc_autoreleasePoolPop(v11);
  v27 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)sendExceptionForInstallingSafeCategory:(id)category onTarget:(id)target overrideProcessName:(id)name
{
  categoryCopy = category;
  targetCopy = target;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v11 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendExceptionForInstallingSafeCategory:categoryCopy onTarget:targetCopy overrideProcessName:nameCopy];
  }

  else
  {
    v12 = AXProcessGetName();
    [v11 sendExceptionForInstallingSafeCategory:categoryCopy onTarget:targetCopy overrideProcessName:v12];
  }
}

- (void)sendExceptionForSafeCategoryOnWrongTarget:(id)target targetBundle:(id)bundle expectedBundle:(id)expectedBundle overrideProcessName:(id)name
{
  targetCopy = target;
  bundleCopy = bundle;
  expectedBundleCopy = expectedBundle;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendExceptionForSafeCategoryOnWrongTarget:targetCopy targetBundle:bundleCopy expectedBundle:expectedBundleCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendExceptionForSafeCategoryOnWrongTarget:targetCopy targetBundle:bundleCopy expectedBundle:expectedBundleCopy overrideProcessName:v15];
  }
}

- (void)sendExceptionForSafeValueKey:(id)key onTarget:(id)target overrideProcessName:(id)name
{
  nameCopy = name;
  targetCopy = target;
  keyCopy = key;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v11 = nameCopy;
  if (!nameCopy)
  {
    v11 = AXProcessGetName();
  }

  callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
  v13 = [callStackSymbols componentsJoinedByString:@"\n"];
  [validationReportingServices sendExceptionForSafeValueKey:keyCopy onTarget:targetCopy overrideProcessName:v11 backtrace:v13];

  if (!nameCopy)
  {
  }
}

- (void)sendExceptionForSafeIVarKey:(id)key onTarget:(id)target overrideProcessName:(id)name
{
  keyCopy = key;
  targetCopy = target;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v11 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendExceptionForSafeIVarKey:keyCopy onTarget:targetCopy overrideProcessName:nameCopy];
  }

  else
  {
    v12 = AXProcessGetName();
    [v11 sendExceptionForSafeIVarKey:keyCopy onTarget:targetCopy overrideProcessName:v12];
  }
}

- (void)sendExceptionForSafeBlock:(id)block overrideProcessName:(id)name
{
  blockCopy = block;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v8 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendExceptionForSafeBlock:blockCopy overrideProcessName:nameCopy];
  }

  else
  {
    v9 = AXProcessGetName();
    [v8 sendExceptionForSafeBlock:blockCopy overrideProcessName:v9];
  }
}

- (void)sendGenericReport:(id)report withTag:(id)tag overrideProcessName:(id)name
{
  reportCopy = report;
  tagCopy = tag;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v11 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendGenericReport:reportCopy withTag:tagCopy overrideProcessName:nameCopy];
  }

  else
  {
    v12 = AXProcessGetName();
    [v11 sendGenericReport:reportCopy withTag:tagCopy overrideProcessName:v12];
  }
}

- (void)sendValidateExceptionForClass:(id)class errorMessage:(id)message overrideProcessName:(id)name
{
  classCopy = class;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v11 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForClass:classCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v12 = AXProcessGetName();
    [v11 sendValidateExceptionForClass:classCopy errorMessage:messageCopy overrideProcessName:v12];
  }
}

- (void)sendValidateExceptionForClass:(id)class isKindOfClass:(id)ofClass errorMessage:(id)message overrideProcessName:(id)name
{
  classCopy = class;
  ofClassCopy = ofClass;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForClass:classCopy isKindOfClass:ofClassCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForClass:classCopy isKindOfClass:ofClassCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForClass:(id)class conformsToProtocol:(id)protocol errorMessage:(id)message overrideProcessName:(id)name
{
  classCopy = class;
  protocolCopy = protocol;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForClass:classCopy conformsToProtocol:protocolCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForClass:classCopy conformsToProtocol:protocolCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForClass:(id)class hasInstanceVariable:(id)variable errorMessage:(id)message overrideProcessName:(id)name
{
  classCopy = class;
  variableCopy = variable;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForClass:classCopy hasInstanceVariable:variableCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForClass:classCopy hasInstanceVariable:variableCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForClass:(id)class hasInstanceMethod:(id)method errorMessage:(id)message overrideProcessName:(id)name
{
  classCopy = class;
  methodCopy = method;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForClass:classCopy hasInstanceMethod:methodCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForClass:classCopy hasInstanceMethod:methodCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForClass:(id)class hasClassMethod:(id)method errorMessage:(id)message overrideProcessName:(id)name
{
  classCopy = class;
  methodCopy = method;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForClass:classCopy hasClassMethod:methodCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForClass:classCopy hasClassMethod:methodCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForClass:(id)class hasProperty:(id)property errorMessage:(id)message overrideProcessName:(id)name
{
  classCopy = class;
  propertyCopy = property;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForClass:classCopy hasProperty:propertyCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForClass:classCopy hasProperty:propertyCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForProtocol:(id)protocol conformsToProtocol:(id)toProtocol errorMessage:(id)message overrideProcessName:(id)name
{
  protocolCopy = protocol;
  toProtocolCopy = toProtocol;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForProtocol:protocolCopy conformsToProtocol:toProtocolCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForProtocol:protocolCopy conformsToProtocol:toProtocolCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForProtocol:(id)protocol hasMethod:(id)method errorMessage:(id)message overrideProcessName:(id)name
{
  protocolCopy = protocol;
  methodCopy = method;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForProtocol:protocolCopy hasMethod:methodCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForProtocol:protocolCopy hasMethod:methodCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForProtocol:(id)protocol hasProperty:(id)property errorMessage:(id)message overrideProcessName:(id)name
{
  protocolCopy = protocol;
  propertyCopy = property;
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v14 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidateExceptionForProtocol:protocolCopy hasProperty:propertyCopy errorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForProtocol:protocolCopy hasProperty:propertyCopy errorMessage:messageCopy overrideProcessName:v15];
  }
}

- (void)sendFailedAssertionWithErrorMessage:(id)message overrideProcessName:(id)name
{
  messageCopy = message;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v8 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendFailedAssertionWithErrorMessage:messageCopy overrideProcessName:nameCopy];
  }

  else
  {
    v9 = AXProcessGetName();
    [v8 sendFailedAssertionWithErrorMessage:messageCopy overrideProcessName:v9];
  }
}

- (void)sendFailedTestCase:(id)case withTag:(id)tag overrideProcessName:(id)name
{
  caseCopy = case;
  tagCopy = tag;
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v11 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendFailedTestCase:caseCopy withTag:tagCopy overrideProcessName:nameCopy];
  }

  else
  {
    v12 = AXProcessGetName();
    [v11 sendFailedTestCase:caseCopy withTag:tagCopy overrideProcessName:v12];
  }
}

- (void)sendValidationSuccessForProcessName:(id)name
{
  nameCopy = name;
  validationReportingServices = [(AXValidationManager *)self validationReportingServices];
  v5 = validationReportingServices;
  if (nameCopy)
  {
    [validationReportingServices sendValidationSuccessForProcessName:nameCopy];
  }

  else
  {
    v6 = AXProcessGetName();
    [v5 sendValidationSuccessForProcessName:v6];
  }
}

- (void)_printEncodedConsoleReportForValidationRunner:isDelayed:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(&dword_19159B000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_printConsoleReport:isDelayed:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(&dword_19159B000, v0, v1, "%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)installSafeCategory:canInteractWithTargetClass:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(&dword_19159B000, v0, v1, "AX Safe category class '%@' was not found!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)installSwiftDynamicReplacementUnit:inBundle:withPrecondition:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(&dword_19159B000, v0, v1, "AX Swift dynamic replacement %@ installation's precondition not met", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)installSwiftDynamicReplacementUnit:inBundle:withPrecondition:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_19159B000, v1, OS_LOG_TYPE_ERROR, "AX Swift dynamic replacement %@ not found in bundle %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)installSwiftDynamicReplacementUnit:inBundle:withPrecondition:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(&dword_19159B000, v0, v1, "AX Container bundle was not found when installing Swift dynamic replacement unit %@!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end