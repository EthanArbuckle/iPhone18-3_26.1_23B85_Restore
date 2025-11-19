@interface AXValidationManager
+ (id)sharedInstance;
- (AXValidationManager)init;
- (BOOL)_client:(id)a3 validateClass:(id)a4 hasClassMethod:(id)a5 withFullSignature:(const char *)a6 argList:(char *)a7;
- (BOOL)_client:(id)a3 validateClass:(id)a4 hasMethod:(id)a5 methodType:(int)a6 returnType:(id)a7 arguments:(id)a8;
- (BOOL)_client:(id)a3 validateClass:(id)a4 hasSwiftField:(id)a5 withTypeString:(const char *)a6 isAnyClass:(BOOL)a7;
- (BOOL)_client:(id)a3 validateStruct:(id)a4 hasSwiftField:(id)a5 withTypeString:(const char *)a6 isAnyClass:(BOOL)a7;
- (BOOL)_client:(id)a3 validateSwiftEnum:(id)a4 hasCase:(id)a5 withTypeString:(const char *)a6 isAnyClass:(BOOL)a7;
- (BOOL)_client:(id)a3 validateType:(id)a4 hasSwiftField:(id)a5 handleSwiftValidationProblems:(id)a6;
- (BOOL)client:(id)a3 validateClass:(id)a4;
- (BOOL)client:(id)a3 validateClass:(id)a4 conformsToProtocol:(id)a5;
- (BOOL)client:(id)a3 validateClass:(id)a4 hasInstanceMethod:(id)a5 withFullSignature:(const char *)a6 argList:(char *)a7;
- (BOOL)client:(id)a3 validateClass:(id)a4 hasInstanceVariable:(id)a5 withType:(const char *)a6;
- (BOOL)client:(id)a3 validateClass:(id)a4 hasProperty:(id)a5 customGetter:(id)a6 customSetter:(id)a7 withType:(const char *)a8;
- (BOOL)client:(id)a3 validateClass:(id)a4 isKindOfClass:(id)a5;
- (BOOL)client:(id)a3 validateProtocol:(id)a4 conformsToProtocol:(id)a5;
- (BOOL)client:(id)a3 validateProtocol:(id)a4 hasMethod:(id)a5 isInstanceMethod:(BOOL)a6 isRequired:(BOOL)a7;
- (BOOL)client:(id)a3 validateSwiftEnum:(id)a4;
- (BOOL)client:(id)a3 validateSwiftEnum:(id)a4 hasCase:(id)a5;
- (BOOL)client:(id)a3 validateSwiftStruct:(id)a4;
- (BOOL)client:(id)a3 validateSwiftStruct:(id)a4 hasSize:(int64_t)a5;
- (BOOL)installSafeCategory:(id)a3 canInteractWithTargetClass:(BOOL)a4;
- (BOOL)installSwiftDynamicReplacementUnit:(id)a3 inBundle:(id)a4 withPrecondition:(id)a5;
- (BOOL)validateClass:(id)a3 hasClassMethod:(id)a4 withReturnType:(id)a5 args:(id)a6;
- (BOOL)validateClass:(id)a3 hasInstanceMethod:(id)a4 withReturnType:(id)a5 args:(id)a6;
- (id)_nameForMethod:(objc_method *)a3;
- (void)_clearState;
- (void)_generateWarningsForMethodType:(int)a3 onClass:(Class)a4 superclassMethods:(objc_method *)a5 numberOfSuperclassMethods:(unsigned int)a6;
- (void)_generateWarningsForPrefixedMethodNames:(id)a3 client:(id)a4 methodType:(int)a5 methodName:(id)a6 className:(id)a7;
- (void)_generateWarningsOnSafeCategoryClass:(Class)a3;
- (void)_iterateMethodsOfType:(int)a3 onClass:(Class)Class block:(id)a5;
- (void)_resetState;
- (void)installSafeCategories:(id)a3 afterDelay:(double)a4 validationTargetName:(id)a5 overrideProcessName:(id)a6;
- (void)performValidations:(id)a3 withPreValidationHandler:(id)a4 postValidationHandler:(id)a5 safeCategoryInstallationHandler:(id)a6;
- (void)sendExceptionForInstallingSafeCategory:(id)a3 onTarget:(id)a4 overrideProcessName:(id)a5;
- (void)sendExceptionForSafeBlock:(id)a3 overrideProcessName:(id)a4;
- (void)sendExceptionForSafeCategoryOnWrongTarget:(id)a3 targetBundle:(id)a4 expectedBundle:(id)a5 overrideProcessName:(id)a6;
- (void)sendExceptionForSafeIVarKey:(id)a3 onTarget:(id)a4 overrideProcessName:(id)a5;
- (void)sendExceptionForSafeValueKey:(id)a3 onTarget:(id)a4 overrideProcessName:(id)a5;
- (void)sendFailedAssertionWithErrorMessage:(id)a3 overrideProcessName:(id)a4;
- (void)sendFailedTestCase:(id)a3 withTag:(id)a4 overrideProcessName:(id)a5;
- (void)sendGenericReport:(id)a3 withTag:(id)a4 overrideProcessName:(id)a5;
- (void)sendValidateExceptionForClass:(id)a3 conformsToProtocol:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6;
- (void)sendValidateExceptionForClass:(id)a3 errorMessage:(id)a4 overrideProcessName:(id)a5;
- (void)sendValidateExceptionForClass:(id)a3 hasClassMethod:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6;
- (void)sendValidateExceptionForClass:(id)a3 hasInstanceMethod:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6;
- (void)sendValidateExceptionForClass:(id)a3 hasInstanceVariable:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6;
- (void)sendValidateExceptionForClass:(id)a3 hasProperty:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6;
- (void)sendValidateExceptionForClass:(id)a3 isKindOfClass:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6;
- (void)sendValidateExceptionForProtocol:(id)a3 conformsToProtocol:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6;
- (void)sendValidateExceptionForProtocol:(id)a3 hasMethod:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6;
- (void)sendValidateExceptionForProtocol:(id)a3 hasProperty:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6;
- (void)sendValidationSuccessForProcessName:(id)a3;
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

- (void)performValidations:(id)a3 withPreValidationHandler:(id)a4 postValidationHandler:(id)a5 safeCategoryInstallationHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
  v21 = v11;
  v22 = v10;
  v23 = v12;
  v24 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v10;
  v19 = v11;
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

- (void)installSafeCategories:(id)a3 afterDelay:(double)a4 validationTargetName:(id)a5 overrideProcessName:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v10)
  {
    v13 = +[AXAccessQueue mainAccessQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __97__AXValidationManager_installSafeCategories_afterDelay_validationTargetName_overrideProcessName___block_invoke;
    v14[3] = &unk_1E735BDC0;
    v14[4] = self;
    v15 = v12;
    v16 = v11;
    v17 = v10;
    [v13 afterDelay:v14 processWritingBlock:a4];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [(AXValidationManager *)self setConsoleErrorMessages:v3];

  v4 = [MEMORY[0x1E695DF70] array];
  [(AXValidationManager *)self setConsoleWarningMessages:v4];
}

- (void)_clearState
{
  [(AXValidationManager *)self setConsoleErrorMessages:0];

  [(AXValidationManager *)self setConsoleWarningMessages:0];
}

- (BOOL)client:(id)a3 validateClass:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v8 = _AXClassFromStringWithFallback(v7);
  Name = class_getName(v8);
  v10 = strcmp(Name, "nil");
  if (!v10)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Class Not Present: %@", v7];
    if (self->_shouldLogToConsole)
    {
      v12 = [(AXValidationManager *)self consoleErrorMessages];
      [v12 addObject:v11];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      v13 = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:v7 errorMessage:v11 overrideProcessName:v13];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return v10 != 0;
}

- (BOOL)client:(id)a3 validateClass:(id)a4 isKindOfClass:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  Superclass = _AXClassFromStringWithFallback(v9);
  v12 = _AXClassFromStringWithFallback(v10);
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
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ is not a kind of %@", v8, v9, v10];
  if (self->_shouldLogToConsole)
  {
    v15 = [(AXValidationManager *)self consoleErrorMessages];
    [v15 addObject:v14];
  }

  if (self->_shouldReportToServer && !self->_forceDoNotReport)
  {
    v16 = [(AXValidationManager *)self overrideProcessName];
    [(AXValidationManager *)self sendValidateExceptionForClass:v9 isKindOfClass:v10 errorMessage:v14 overrideProcessName:v16];
  }

  if (self->_shouldCrashOnError)
  {
    abort();
  }

LABEL_12:
  return v13 != 0;
}

- (BOOL)client:(id)a3 validateSwiftStruct:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v8 = _AXSwiftValidateStruct(v7);
  if ((v8 & 1) == 0)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Struct Not Present: %@", v7];
    if (self->_shouldLogToConsole)
    {
      v10 = [(AXValidationManager *)self consoleErrorMessages];
      [v10 addObject:v9];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      v11 = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:v7 errorMessage:v9 overrideProcessName:v11];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return v8;
}

- (BOOL)client:(id)a3 validateSwiftStruct:(id)a4 hasSize:(int64_t)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v10 = [MEMORY[0x1E695DF70] array];
  if ((_AXSwiftValidateStruct(v9) & 1) == 0)
  {
    [v10 addObject:@"Swift field doesn't exist"];
    if (!_AXSwiftValidateStructHasSize(v9, a5))
    {
      [v10 addObject:@"Swift field isn't class type"];
    }
  }

  v11 = [v10 count];
  if (v11)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v12 = MEMORY[0x1E696AD60];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    v24 = v8;
    v14 = [v12 stringWithFormat:@"%@: Swift enum %@ doesn't match size: %@", v8, v9, v13];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v10;
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
      v20 = [(AXValidationManager *)self consoleErrorMessages];
      [v20 addObject:v14];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      v21 = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:v9 errorMessage:v14 overrideProcessName:v21];
    }

    v8 = v24;
    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v11 == 0;
}

- (BOOL)_client:(id)a3 validateStruct:(id)a4 hasSwiftField:(id)a5 withTypeString:(const char *)a6 isAnyClass:(BOOL)a7
{
  v7 = a7;
  v12 = a4;
  v13 = a5;
  v14 = MEMORY[0x1E695DF70];
  v15 = a3;
  v16 = [v14 array];
  if ((_AXSwiftValidateStructHasField(v12, v13) & 1) == 0)
  {
    v17 = @"Swift field doesn't exist";
    goto LABEL_6;
  }

  if (v7)
  {
    if ((_AXSwiftValidateStructHasFieldOfAnyClass(v12, v13) & 1) == 0)
    {
      v17 = @"Swift field isn't class type";
LABEL_6:
      [v16 addObject:v17];
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a6];
    if ((_AXSwiftValidateStructHasFieldWithTypeString(v12, v13, v18) & 1) == 0)
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = _AXSwiftValidateStructGetFieldTypeString(v12, v13);
      v21 = [v19 stringWithFormat:@"Swift field doesn't match: (%@) expected: (%@)", v18, v20];
      [v16 addObject:v21];
    }
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v22 = [(AXValidationManager *)self _client:v15 validateType:v12 hasSwiftField:v13 handleSwiftValidationProblems:v16];

  return v22;
}

- (BOOL)client:(id)a3 validateSwiftEnum:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v8 = _AXSwiftValidateEnum(v7);
  if ((v8 & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Enum Not Present: %@", v7];
    if (self->_shouldLogToConsole)
    {
      v10 = [(AXValidationManager *)self consoleErrorMessages];
      [v10 addObject:v9];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      v11 = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:v7 errorMessage:v9 overrideProcessName:v11];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return v8;
}

- (BOOL)client:(id)a3 validateSwiftEnum:(id)a4 hasCase:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695DF70];
  v11 = a3;
  v12 = [v10 array];
  if ((_AXSwiftValidateEnumHasCase(v8, v9) & 1) == 0)
  {
    [v12 addObject:@"Swift case doesn't exist"];
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v13 = [(AXValidationManager *)self _client:v11 validateType:v8 hasSwiftField:v9 handleSwiftValidationProblems:v12];

  return v13;
}

- (BOOL)_client:(id)a3 validateSwiftEnum:(id)a4 hasCase:(id)a5 withTypeString:(const char *)a6 isAnyClass:(BOOL)a7
{
  v7 = a7;
  v12 = a4;
  v13 = a5;
  v14 = MEMORY[0x1E695DF70];
  v15 = a3;
  v16 = [v14 array];
  if ((_AXSwiftValidateEnumHasCase(v12, v13) & 1) == 0)
  {
    v17 = @"Swift case doesn't exist";
    goto LABEL_6;
  }

  if (v7)
  {
    if ((_AXSwiftValidateEnumHasCaseOfAnyClass(v12, v13) & 1) == 0)
    {
      v17 = @"Swift case isn't class type";
LABEL_6:
      [v16 addObject:v17];
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a6];
    if ((_AXSwiftValidateEnumHasCaseWithTypeString(v12, v13, v18) & 1) == 0)
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = _AXSwiftValidateEnumGetCaseTypeString(v12, v13);
      v21 = [v19 stringWithFormat:@"Swift case doesn't match: (%@) expected: (%@)", v18, v20];
      [v16 addObject:v21];
    }
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v22 = [(AXValidationManager *)self _client:v15 validateType:v12 hasSwiftField:v13 handleSwiftValidationProblems:v16];

  return v22;
}

- (BOOL)_client:(id)a3 validateClass:(id)a4 hasSwiftField:(id)a5 withTypeString:(const char *)a6 isAnyClass:(BOOL)a7
{
  v7 = a7;
  v12 = a4;
  v13 = a5;
  v14 = MEMORY[0x1E695DF70];
  v15 = a3;
  v16 = [v14 array];
  v17 = _AXClassFromStringWithFallback(v12);
  if (!v17)
  {
    v19 = @"Class doesn't exist";
    goto LABEL_8;
  }

  v18 = v17;
  if ((_AXSwiftValidateClassHasField(v17, v13) & 1) == 0)
  {
    v19 = @"Swift field doesn't exist";
    goto LABEL_8;
  }

  if (v7)
  {
    if ((_AXSwiftValidateClassHasFieldOfAnyClass(v18, v13) & 1) == 0)
    {
      v19 = @"Swift field isn't class type";
LABEL_8:
      [v16 addObject:v19];
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a6];
    if ((_AXSwiftValidateClassHasFieldWithTypeString() & 1) == 0)
    {
      v23 = MEMORY[0x1E696AEC0];
      v24 = _AXSwiftValidateClassGetFieldTypeString();
      v25 = [v23 stringWithFormat:@"Swift field doesn't match: (%@) expected: (%@)", v22, v24];
      [v16 addObject:v25];
    }
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v20 = [(AXValidationManager *)self _client:v15 validateType:v12 hasSwiftField:v13 handleSwiftValidationProblems:v16];

  return v20;
}

- (BOOL)_client:(id)a3 validateType:(id)a4 hasSwiftField:(id)a5 handleSwiftValidationProblems:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v14 = [v13 count];
  if (v14)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v25 = v10;
    v26 = v11;
    v15 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@: Swift field: (%@) on type: %@.", v10, v12, v11];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = v13;
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

          [v15 appendFormat:@" %@", *(*(&v27 + 1) + 8 * i)];
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    if (self->_shouldLogToConsole)
    {
      v21 = [(AXValidationManager *)self consoleErrorMessages];
      [v21 addObject:v15];
    }

    v11 = v26;
    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      v22 = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:v26 hasInstanceVariable:v12 errorMessage:v15 overrideProcessName:v22];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }

    v10 = v25;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v14 == 0;
}

- (BOOL)client:(id)a3 validateClass:(id)a4 hasInstanceVariable:(id)a5 withType:(const char *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _AXClassFromStringWithFallback(v11);
  InstanceVariable = class_getInstanceVariable(v13, [v12 UTF8String]);
  TypeEncoding = ivar_getTypeEncoding(InstanceVariable);
  if (!a6)
  {
    v18 = 0;
    goto LABEL_24;
  }

  v16 = TypeEncoding;
  if (strlen(a6) >= 2)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a6];
    if ([v17 isEqualToString:@"NSInteger"])
    {
      a6 = "q";
    }

    else if ([v17 isEqualToString:@"NSUInteger"])
    {
      a6 = "Q";
    }

    else if ([v17 isEqualToString:@"int"])
    {
      a6 = "i";
    }

    else if ([v17 isEqualToString:@"BOOL"])
    {
      a6 = "B";
    }

    else if ([v17 isEqualToString:@"CGFloat"])
    {
      a6 = "d";
    }
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a6];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@%@", v19];

  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a6];
  a6 = v20;
  if (v16 && *v16 == 66 && !v16[1] && [v20 isEqualToString:@"c"])
  {

    a6 = @"B";
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  if (!v16)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ : Ivar does not exist: %@", v10, v11, v12, v26, v27];
    goto LABEL_26;
  }

  if (!strcmp(v16, [v18 UTF8String]) || !strcmp(v16, objc_msgSend(a6, "UTF8String")))
  {
LABEL_24:
    v21 = 1;
    goto LABEL_33;
  }

  [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ : Ivar is not the right type: %@ [AX: %@ MAINLINE: %s]", v10, v11, v12, v18, v16];
  v22 = LABEL_26:;
  if (self->_shouldLogToConsole)
  {
    v23 = [(AXValidationManager *)self consoleErrorMessages];
    [v23 addObject:v22];
  }

  if (self->_shouldReportToServer && !self->_forceDoNotReport)
  {
    v24 = [(AXValidationManager *)self overrideProcessName];
    [(AXValidationManager *)self sendValidateExceptionForClass:v11 hasInstanceVariable:v12 errorMessage:v22 overrideProcessName:v24];
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

- (BOOL)_client:(id)a3 validateClass:(id)a4 hasMethod:(id)a5 methodType:(int)a6 returnType:(id)a7 arguments:(id)a8
{
  v58 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v43 = a4;
  v40 = a7;
  v41 = a8;
  v14 = MEMORY[0x1E695DF70];
  v15 = a5;
  v16 = [v14 array];
  v17 = _AXClassFromStringWithFallback(v43);
  aSelectorName = [v15 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F0579798];

  v18 = NSSelectorFromString(aSelectorName);
  if (a6)
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
  [(AXValidationManager *)self _iterateMethodsOfType:a6 onClass:v17 block:v52];
  if (v54[3])
  {
    v21 = method_copyReturnType(v20);
    if (v21)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v21];
      if (([v22 isEqualToString:v40] & 1) == 0)
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Incorrect return type: expected:%@ actual:%@", v40, v22];
        [v16 addObject:v23];
      }

      free(v21);
    }

    else
    {
      [v16 addObject:@"Unable to determine return type."];
    }

    v24 = method_getNumberOfArguments(v20) - 2;
    if (v24 != [v41 count])
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v41, "count")}];
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
      v28 = [v25 stringWithFormat:@"Incorrect argument count: expected:%@ actual:%@", v26, v27];
      [v16 addObject:v28];
    }

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __87__AXValidationManager__client_validateClass_hasMethod_methodType_returnType_arguments___block_invoke_2;
    v49[3] = &unk_1E735BE10;
    v51 = v20;
    v50 = v16;
    [v41 enumerateObjectsUsingBlock:v49];
  }

  else
  {
    [v16 addObject:@"Method does not exist"];
  }

  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v29 = [v16 count];
  if (v29)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v30 = @"Instance";
    if (!a6)
    {
      v30 = @"Class";
    }

    v31 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@: %@ method: (%@) on class: %@.", v13, v30, aSelectorName, v43];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v32 = v16;
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

          [v31 appendFormat:@" %@", *(*(&v45 + 1) + 8 * i)];
        }

        v33 = [v32 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v33);
    }

    if (self->_shouldLogToConsole)
    {
      v36 = [(AXValidationManager *)self consoleErrorMessages];
      [v36 addObject:v31];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      v37 = [(AXValidationManager *)self overrideProcessName];
      if (a6)
      {
        [(AXValidationManager *)self sendValidateExceptionForClass:v43 hasInstanceMethod:aSelectorName errorMessage:v31 overrideProcessName:v37];
      }

      else
      {
        [(AXValidationManager *)self sendValidateExceptionForClass:v43 hasClassMethod:aSelectorName errorMessage:v31 overrideProcessName:v37];
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

- (BOOL)validateClass:(id)a3 hasClassMethod:(id)a4 withReturnType:(id)a5 args:(id)a6
{
  if (a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = AXValidationClientAccessibility;
  v12 = a6;
  v13 = [(AXValidationManager *)self _client:v11 validateClass:a3 hasMethod:a4 methodType:0 returnType:a5 arguments:v10];

  return v13;
}

- (BOOL)_client:(id)a3 validateClass:(id)a4 hasClassMethod:(id)a5 withFullSignature:(const char *)a6 argList:(char *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v21 = a7;
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a6];
  v16 = [MEMORY[0x1E695DF70] array];
  while (1)
  {
    v17 = v21;
    v21 += 8;
    if (!*v17)
    {
      break;
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [v16 addObject:v18];
  }

  v19 = [(AXValidationManager *)self _client:v12 validateClass:v13 hasMethod:v14 methodType:0 returnType:v15 arguments:v16];

  return v19;
}

- (BOOL)client:(id)a3 validateClass:(id)a4 hasInstanceMethod:(id)a5 withFullSignature:(const char *)a6 argList:(char *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v21 = a7;
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a6];
  v16 = [MEMORY[0x1E695DF70] array];
  while (1)
  {
    v17 = v21;
    v21 += 8;
    if (!*v17)
    {
      break;
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [v16 addObject:v18];
  }

  v19 = [(AXValidationManager *)self _client:v12 validateClass:v13 hasMethod:v14 methodType:1 returnType:v15 arguments:v16];

  return v19;
}

- (BOOL)validateClass:(id)a3 hasInstanceMethod:(id)a4 withReturnType:(id)a5 args:(id)a6
{
  if (a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = AXValidationClientAccessibility;
  v12 = a6;
  v13 = [(AXValidationManager *)self _client:v11 validateClass:a3 hasMethod:a4 methodType:1 returnType:a5 arguments:v10];

  return v13;
}

- (BOOL)client:(id)a3 validateClass:(id)a4 hasProperty:(id)a5 customGetter:(id)a6 customSetter:(id)a7 withType:(const char *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__AXValidationManager_client_validateClass_hasProperty_customGetter_customSetter_withType___block_invoke;
  aBlock[3] = &unk_1E735BE38;
  aBlock[4] = self;
  v19 = v15;
  v38 = v19;
  v20 = v16;
  v39 = v20;
  v40 = &v41;
  v21 = _Block_copy(aBlock);
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v22 = _AXClassFromStringWithFallback(v19);
  Property = class_getProperty(v22, [v20 UTF8String]);
  v24 = Property;
  if (Property)
  {
    if (a8)
    {
      v25 = property_copyAttributeValue(Property, "T");
      v26 = v25;
      if (v25)
      {
        if (strcmp(v25, a8) && (*v26 != 64 || *a8 != 64))
        {
          v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) had wrong type:(%s) expected: (%s)", v14, v19, v20, v26, a8];
          v21[2](v21, v33);

LABEL_33:
          free(v26);
          goto LABEL_34;
        }

        v27 = property_copyAttributeValue(v24, "G");
        v28 = property_copyAttributeValue(v24, "S");
        if (!v17 && v27)
        {
          v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) has unexpected custom getter: (%s)", v14, v19, v20, v27];
          v21[2](v21, v29);
        }

        if (!v18 && v28)
        {
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) has unexpected custom setter: (%s)", v14, v19, v20, v28];
          v21[2](v21, v30);
        }

        if (v17)
        {
          if (v27)
          {
            if (!strcmp(v27, [v17 UTF8String]))
            {
              goto LABEL_23;
            }

            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) has unexpected custom getter: (%s) expected:(%@)", v14, v19, v20, v27, v17];
            v21[2](v21, v31);
          }

          else
          {
            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) does not have custom getter: (%@)", v14, v19, v20, v17];
            v21[2](v21, v31);
          }
        }

LABEL_23:
        if (v18)
        {
          if (!v28)
          {
            v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) does not have custom setter: (%@)", v14, v19, v20, v18];
            v21[2](v21, v34);
            goto LABEL_28;
          }

          if (strcmp(v28, [v18 UTF8String]))
          {
            v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property: (%@) has unexpected custom setter: (%s) expected:(%@)", v14, v19, v20, v28, v18];
            v21[2](v21, v34);
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

    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property missing type information: %@", v14, v19, v20];
    v21[2](v21, v32);
  }

  else
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Property not present: %@", v14, v19, v20];
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

- (BOOL)client:(id)a3 validateClass:(id)a4 conformsToProtocol:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v11 = _AXClassFromStringWithFallback(v9);
  v12 = NSProtocolFromString(v10);
  v13 = class_conformsToProtocol(v11, v12);

  if (!v13)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Class:%@ Does not conform to Protocol:%@", v8, v9, v10];
    if (self->_shouldLogToConsole)
    {
      v15 = [(AXValidationManager *)self consoleErrorMessages];
      [v15 addObject:v14];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      v16 = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForClass:v9 conformsToProtocol:v10 errorMessage:v14 overrideProcessName:v16];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return v13;
}

- (BOOL)client:(id)a3 validateProtocol:(id)a4 conformsToProtocol:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NSProtocolFromString(v9);
  v12 = NSProtocolFromString(v10);
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v13 = protocol_conformsToProtocol(v11, v12);
  if (!v13)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Protocol does not conform to protocol: %@", v8, v9, v10];
    if (self->_shouldLogToConsole)
    {
      v15 = [(AXValidationManager *)self consoleErrorMessages];
      [v15 addObject:v14];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      v16 = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForProtocol:v9 conformsToProtocol:v10 errorMessage:v14 overrideProcessName:v16];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return v13;
}

- (BOOL)client:(id)a3 validateProtocol:(id)a4 hasMethod:(id)a5 isInstanceMethod:(BOOL)a6 isRequired:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  v15 = NSProtocolFromString(v13);
  v16 = [v14 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F0579798];

  v17 = NSSelectorFromString(v16);
  name = protocol_getMethodDescription(v15, v17, v7, v8).name;
  if (!name)
  {
    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v19 = @"optional";
    if (v7)
    {
      v19 = @"required";
    }

    v20 = @"class";
    if (v8)
    {
      v20 = @"instance";
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ Protocol %@ %@ method not present: %@", v12, v13, v19, v20, v16];
    if (self->_shouldLogToConsole)
    {
      v22 = [(AXValidationManager *)self consoleErrorMessages];
      [v22 addObject:v21];
    }

    if (self->_shouldReportToServer && !self->_forceDoNotReport)
    {
      v23 = [(AXValidationManager *)self overrideProcessName];
      [(AXValidationManager *)self sendValidateExceptionForProtocol:v13 hasMethod:v16 errorMessage:v21 overrideProcessName:v23];
    }

    if (self->_shouldCrashOnError)
    {
      abort();
    }
  }

  return name != 0;
}

- (void)_iterateMethodsOfType:(int)a3 onClass:(Class)Class block:(id)a5
{
  v7 = a5;
  if (!a3)
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
      v7[2](v7, v9[v10], &v11);
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

- (id)_nameForMethod:(objc_method *)a3
{
  if (a3)
  {
    Name = method_getName(a3);
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

- (void)_generateWarningsForPrefixedMethodNames:(id)a3 client:(id)a4 methodType:(int)a5 methodName:(id)a6 className:(id)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if ([v12 count])
  {
    [(AXValidationManager *)self setNumberOfValidationWarnings:[(AXValidationManager *)self numberOfValidationWarnings]+ 1];
    v16 = [MEMORY[0x1E695DF70] array];
    v17 = @"Instance";
    if (!a5)
    {
      v17 = @"Class";
    }

    v27 = v15;
    v28 = v14;
    v29 = v13;
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ method: (%@) on class: %@ has the following more specific variants:", v13, v17, v14, v15];
    [v16 addObject:?];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v12;
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
          [v16 addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v20);
    }

    if (self->_shouldLogToConsole)
    {
      v24 = [(AXValidationManager *)self consoleWarningMessages];
      [v24 addObjectsFromArray:v16];
    }

    v14 = v28;
    v13 = v29;
    v15 = v27;
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_generateWarningsOnSafeCategoryClass:(Class)a3
{
  Superclass = class_getSuperclass(a3);
  Class = object_getClass(Superclass);
  outCount = 0;
  v7 = class_copyMethodList(Class, &outCount);
  [(AXValidationManager *)self _generateWarningsForMethodType:0 onClass:a3 superclassMethods:v7 numberOfSuperclassMethods:outCount];
  if (v7 && outCount)
  {
    free(v7);
  }

  v9 = 0;
  v8 = class_copyMethodList(Superclass, &v9);
  [(AXValidationManager *)self _generateWarningsForMethodType:1 onClass:a3 superclassMethods:v8 numberOfSuperclassMethods:v9];
  if (v8)
  {
    if (v9)
    {
      free(v8);
    }
  }
}

- (void)_generateWarningsForMethodType:(int)a3 onClass:(Class)a4 superclassMethods:(objc_method *)a5 numberOfSuperclassMethods:(unsigned int)a6
{
  if (a5)
  {
    if (a6)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:class_getName(a4)];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __106__AXValidationManager__generateWarningsForMethodType_onClass_superclassMethods_numberOfSuperclassMethods___block_invoke_2;
      v13[3] = &unk_1E735BE80;
      v15 = &__block_literal_global_274_0;
      v16 = a5;
      v17 = a6;
      v18 = a3;
      v13[4] = self;
      v14 = v11;
      v12 = v11;
      [(AXValidationManager *)self _iterateMethodsOfType:0 onClass:a4 block:v13];
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

- (BOOL)installSafeCategory:(id)a3 canInteractWithTargetClass:(BOOL)a4
{
  v4 = a4;
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = NSClassFromString(v6);
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  if (!v8)
  {
    v21 = AXLogValidations();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [AXValidationManager installSafeCategory:canInteractWithTargetClass:];
    }

    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AX Safe Category class not found: %@", v6];
    v49 = 0;
    v20 = 0;
    v10 = 0;
    v9 = 0;
    LOBYTE(v23) = 0;
    goto LABEL_35;
  }

  if (!v4 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v17 = v6;
    v18 = v7;
    v19 = 0;
    v10 = 0;
    v20 = 0;
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
    v22 = ;

    if (v22)
    {
      [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
      LOBYTE(v23) = 0;
    }

    else
    {
      LOBYTE(v23) = 1;
    }

    v7 = v18;
    v6 = v17;
    goto LABEL_35;
  }

  v9 = [(objc_class *)v8 performSelector:sel_safeCategoryTargetClassName];
  v10 = NSClassFromString(v9);
  if (!v10)
  {
    v17 = v6;
    v18 = v7;
    v19 = 0;
LABEL_27:
    v20 = 0;
    v49 = 0;
    goto LABEL_28;
  }

  if (![(AXValidationManager *)self shouldPerformValidationChecks])
  {
    v17 = v6;
    v18 = v7;
LABEL_26:
    v19 = 0;
    v10 = 0;
    goto LABEL_27;
  }

  v11 = AXLogLoading();
  if (os_signpost_enabled(v11))
  {
    v12 = MEMORY[0x1E696AEC0];
    NSStringFromClass(v10);
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
      v16 = [(objc_class *)v10 axTrampolineForClass:v10];
      [v16 _accessibilityPerformValidations:self];
    }

    else
    {
      [(objc_class *)v10 _accessibilityPerformValidations:self];
    }
  }

  v24 = AXLogLoading();
  if (os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19159B000, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Validations", &unk_19167EAFE, buf, 2u);
  }

  v25 = [MEMORY[0x1E696AAE8] bundleForClass:v8];
  v26 = [v25 bundlePath];
  v27 = [v26 hasSuffix:@"axbundle"];

  if ((v27 & 1) == 0)
  {
    v38 = v25;
    v17 = v6;
    v18 = v7;

    goto LABEL_26;
  }

  v28 = [MEMORY[0x1E696AAE8] bundleForClass:v10];
  v29 = +[AXCodeLoader defaultLoader];
  v30 = [v29 codeItemForBundle:v28];

  v47 = v30;
  v31 = [v30 associatedAccessibilityCodeItem];
  v45 = v31;
  v46 = v28;
  if (v31)
  {
    v32 = v31;
    v44 = v7;
    v33 = [v25 bundlePath];
    v34 = [v32 path];
    v35 = [v34 stringByDeletingLastPathComponent];
    LOBYTE(v32) = [v33 isEqualToString:v35];

    if ((v32 & 1) != 0 || ([v47 name], v36 = objc_claimAutoreleasedReturnValue(), v37 = -[NSString hasSuffix:](v6, "hasSuffix:", v36), v36, v37))
    {
      v49 = 0;
      v20 = 0;
      v10 = 0;
      v22 = 0;
      v23 = 1;
    }

    else
    {
      v10 = [v25 bundlePath];
      v20 = [v28 bundlePath];
      v43 = AXLogValidations();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v51 = v6;
        v52 = 2112;
        v53 = v25;
        v54 = 2112;
        v55 = v28;
        _os_log_error_impl(&dword_19159B000, v43, OS_LOG_TYPE_ERROR, "AX Safe category class:%@ in wrong AX bundle '%@' should be with '%@'!", buf, 0x20u);
      }

      [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AX Safe category class:%@ in wrong AX bundle '%@' should be with '%@'", v6, v25, v28];
      v23 = 0;
      v49 = 1;
    }

    v7 = v44;
  }

  else
  {
    v49 = 0;
    v20 = 0;
    v10 = 0;
    v22 = 0;
    v23 = 1;
  }

  if (v23)
  {
    v17 = v6;
    v18 = v7;
    v19 = v22;
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
      v39 = [(AXValidationManager *)self overrideProcessName];
      if (v49)
      {
        [(AXValidationManager *)self sendExceptionForSafeCategoryOnWrongTarget:v6 targetBundle:v10 expectedBundle:v20 overrideProcessName:v39];
      }

      else
      {
        [(AXValidationManager *)self sendExceptionForInstallingSafeCategory:v6 onTarget:v9 overrideProcessName:v39];
      }
    }

    if (self->_shouldLogToConsole)
    {
      v40 = [(AXValidationManager *)self consoleErrorMessages];
      [v40 addObject:v22];
    }
  }

  objc_autoreleasePoolPop(v7);
  v41 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)installSwiftDynamicReplacementUnit:(id)a3 inBundle:(id)a4 withPrecondition:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  [(AXValidationManager *)self setNumberOfValidations:[(AXValidationManager *)self numberOfValidations]+ 1];
  if (!v9)
  {
    v19 = AXLogValidations();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [AXValidationManager installSwiftDynamicReplacementUnit:inBundle:withPrecondition:];
    }

    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"AX Container bundle was not found when installing Swift dynamic replacement unit %@", v8];
    goto LABEL_17;
  }

  if (![v8 length])
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

  if ((v10[2](v10) & 1) == 0)
  {
    v23 = AXLogValidations();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [AXValidationManager installSwiftDynamicReplacementUnit:inBundle:withPrecondition:];
    }

    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    v21 = MEMORY[0x1E696AEC0];
    v32 = v8;
    v22 = @"AX Swift dynamic replacement %@ installation's condition not met";
LABEL_16:
    [v21 stringWithFormat:v22, v32];
    v17 = LABEL_17:;
    goto LABEL_18;
  }

  v12 = [v9 builtInPlugInsPath];
  v13 = [v8 stringByAppendingPathExtension:@"axbundlefile"];
  v14 = [v12 stringByAppendingPathComponent:v13];

  v15 = [MEMORY[0x1E696AC08] defaultManager];
  v16 = [v15 fileExistsAtPath:v14 isDirectory:0];

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
      v36 = v8;
      v37 = 2112;
      v38 = v9;
      v39 = 2080;
      v40 = v30;
      _os_log_error_impl(&dword_19159B000, v31, OS_LOG_TYPE_ERROR, "AX Swift dynamic replacement %@ from bundle %@ not successfully installed: %s", buf, 0x20u);
    }

    [(AXValidationManager *)self setNumberOfValidationErrors:[(AXValidationManager *)self numberOfValidationErrors]+ 1];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"AX Swift dynamic replacement %@ from bundle %@ not successfully installed: %s", v8, v9, v30];
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
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Swift Dynamic Replacement: %@", v8];
    v25 = [(AXValidationManager *)self overrideProcessName];
    [(AXValidationManager *)self sendExceptionForInstallingSafeCategory:v24 onTarget:&stru_1F0579798 overrideProcessName:v25];
  }

  if (self->_shouldLogToConsole)
  {
    v26 = [(AXValidationManager *)self consoleErrorMessages];
    [v26 addObject:v17];
  }

  v18 = 0;
LABEL_24:

  objc_autoreleasePoolPop(v11);
  v27 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)sendExceptionForInstallingSafeCategory:(id)a3 onTarget:(id)a4 overrideProcessName:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(AXValidationManager *)self validationReportingServices];
  v11 = v10;
  if (v9)
  {
    [v10 sendExceptionForInstallingSafeCategory:v13 onTarget:v8 overrideProcessName:v9];
  }

  else
  {
    v12 = AXProcessGetName();
    [v11 sendExceptionForInstallingSafeCategory:v13 onTarget:v8 overrideProcessName:v12];
  }
}

- (void)sendExceptionForSafeCategoryOnWrongTarget:(id)a3 targetBundle:(id)a4 expectedBundle:(id)a5 overrideProcessName:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(AXValidationManager *)self validationReportingServices];
  v14 = v13;
  if (v12)
  {
    [v13 sendExceptionForSafeCategoryOnWrongTarget:v16 targetBundle:v10 expectedBundle:v11 overrideProcessName:v12];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendExceptionForSafeCategoryOnWrongTarget:v16 targetBundle:v10 expectedBundle:v11 overrideProcessName:v15];
  }
}

- (void)sendExceptionForSafeValueKey:(id)a3 onTarget:(id)a4 overrideProcessName:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = [(AXValidationManager *)self validationReportingServices];
  v11 = v8;
  if (!v8)
  {
    v11 = AXProcessGetName();
  }

  v12 = [MEMORY[0x1E696AF00] callStackSymbols];
  v13 = [v12 componentsJoinedByString:@"\n"];
  [v14 sendExceptionForSafeValueKey:v10 onTarget:v9 overrideProcessName:v11 backtrace:v13];

  if (!v8)
  {
  }
}

- (void)sendExceptionForSafeIVarKey:(id)a3 onTarget:(id)a4 overrideProcessName:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(AXValidationManager *)self validationReportingServices];
  v11 = v10;
  if (v9)
  {
    [v10 sendExceptionForSafeIVarKey:v13 onTarget:v8 overrideProcessName:v9];
  }

  else
  {
    v12 = AXProcessGetName();
    [v11 sendExceptionForSafeIVarKey:v13 onTarget:v8 overrideProcessName:v12];
  }
}

- (void)sendExceptionForSafeBlock:(id)a3 overrideProcessName:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(AXValidationManager *)self validationReportingServices];
  v8 = v7;
  if (v6)
  {
    [v7 sendExceptionForSafeBlock:v10 overrideProcessName:v6];
  }

  else
  {
    v9 = AXProcessGetName();
    [v8 sendExceptionForSafeBlock:v10 overrideProcessName:v9];
  }
}

- (void)sendGenericReport:(id)a3 withTag:(id)a4 overrideProcessName:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(AXValidationManager *)self validationReportingServices];
  v11 = v10;
  if (v9)
  {
    [v10 sendGenericReport:v13 withTag:v8 overrideProcessName:v9];
  }

  else
  {
    v12 = AXProcessGetName();
    [v11 sendGenericReport:v13 withTag:v8 overrideProcessName:v12];
  }
}

- (void)sendValidateExceptionForClass:(id)a3 errorMessage:(id)a4 overrideProcessName:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(AXValidationManager *)self validationReportingServices];
  v11 = v10;
  if (v9)
  {
    [v10 sendValidateExceptionForClass:v13 errorMessage:v8 overrideProcessName:v9];
  }

  else
  {
    v12 = AXProcessGetName();
    [v11 sendValidateExceptionForClass:v13 errorMessage:v8 overrideProcessName:v12];
  }
}

- (void)sendValidateExceptionForClass:(id)a3 isKindOfClass:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(AXValidationManager *)self validationReportingServices];
  v14 = v13;
  if (v12)
  {
    [v13 sendValidateExceptionForClass:v16 isKindOfClass:v10 errorMessage:v11 overrideProcessName:v12];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForClass:v16 isKindOfClass:v10 errorMessage:v11 overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForClass:(id)a3 conformsToProtocol:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(AXValidationManager *)self validationReportingServices];
  v14 = v13;
  if (v12)
  {
    [v13 sendValidateExceptionForClass:v16 conformsToProtocol:v10 errorMessage:v11 overrideProcessName:v12];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForClass:v16 conformsToProtocol:v10 errorMessage:v11 overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForClass:(id)a3 hasInstanceVariable:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(AXValidationManager *)self validationReportingServices];
  v14 = v13;
  if (v12)
  {
    [v13 sendValidateExceptionForClass:v16 hasInstanceVariable:v10 errorMessage:v11 overrideProcessName:v12];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForClass:v16 hasInstanceVariable:v10 errorMessage:v11 overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForClass:(id)a3 hasInstanceMethod:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(AXValidationManager *)self validationReportingServices];
  v14 = v13;
  if (v12)
  {
    [v13 sendValidateExceptionForClass:v16 hasInstanceMethod:v10 errorMessage:v11 overrideProcessName:v12];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForClass:v16 hasInstanceMethod:v10 errorMessage:v11 overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForClass:(id)a3 hasClassMethod:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(AXValidationManager *)self validationReportingServices];
  v14 = v13;
  if (v12)
  {
    [v13 sendValidateExceptionForClass:v16 hasClassMethod:v10 errorMessage:v11 overrideProcessName:v12];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForClass:v16 hasClassMethod:v10 errorMessage:v11 overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForClass:(id)a3 hasProperty:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(AXValidationManager *)self validationReportingServices];
  v14 = v13;
  if (v12)
  {
    [v13 sendValidateExceptionForClass:v16 hasProperty:v10 errorMessage:v11 overrideProcessName:v12];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForClass:v16 hasProperty:v10 errorMessage:v11 overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForProtocol:(id)a3 conformsToProtocol:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(AXValidationManager *)self validationReportingServices];
  v14 = v13;
  if (v12)
  {
    [v13 sendValidateExceptionForProtocol:v16 conformsToProtocol:v10 errorMessage:v11 overrideProcessName:v12];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForProtocol:v16 conformsToProtocol:v10 errorMessage:v11 overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForProtocol:(id)a3 hasMethod:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(AXValidationManager *)self validationReportingServices];
  v14 = v13;
  if (v12)
  {
    [v13 sendValidateExceptionForProtocol:v16 hasMethod:v10 errorMessage:v11 overrideProcessName:v12];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForProtocol:v16 hasMethod:v10 errorMessage:v11 overrideProcessName:v15];
  }
}

- (void)sendValidateExceptionForProtocol:(id)a3 hasProperty:(id)a4 errorMessage:(id)a5 overrideProcessName:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(AXValidationManager *)self validationReportingServices];
  v14 = v13;
  if (v12)
  {
    [v13 sendValidateExceptionForProtocol:v16 hasProperty:v10 errorMessage:v11 overrideProcessName:v12];
  }

  else
  {
    v15 = AXProcessGetName();
    [v14 sendValidateExceptionForProtocol:v16 hasProperty:v10 errorMessage:v11 overrideProcessName:v15];
  }
}

- (void)sendFailedAssertionWithErrorMessage:(id)a3 overrideProcessName:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(AXValidationManager *)self validationReportingServices];
  v8 = v7;
  if (v6)
  {
    [v7 sendFailedAssertionWithErrorMessage:v10 overrideProcessName:v6];
  }

  else
  {
    v9 = AXProcessGetName();
    [v8 sendFailedAssertionWithErrorMessage:v10 overrideProcessName:v9];
  }
}

- (void)sendFailedTestCase:(id)a3 withTag:(id)a4 overrideProcessName:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(AXValidationManager *)self validationReportingServices];
  v11 = v10;
  if (v9)
  {
    [v10 sendFailedTestCase:v13 withTag:v8 overrideProcessName:v9];
  }

  else
  {
    v12 = AXProcessGetName();
    [v11 sendFailedTestCase:v13 withTag:v8 overrideProcessName:v12];
  }
}

- (void)sendValidationSuccessForProcessName:(id)a3
{
  v7 = a3;
  v4 = [(AXValidationManager *)self validationReportingServices];
  v5 = v4;
  if (v7)
  {
    [v4 sendValidationSuccessForProcessName:v7];
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