@interface LSBundleRecord
+ (LSBundleRecord)bundleRecordForCurrentProcess;
+ (LSBundleRecord)bundleRecordWithApplicationIdentifier:(id)identifier error:(id *)error;
+ (LSBundleRecord)coreTypesBundleRecord;
+ (id)_bundleRecordForAuditToken:(id *)token checkNSBundleMainBundle:(unsigned __int8)bundle error:(id *)error;
+ (id)_getBundleRecordFinderForNode:(*+[LSBundleRecord _getBundleRecordFinderForNode:(uint64_t)node ](uint64_t)self;
+ (id)_getBundleRecordFinderForNode:(void *)node;
+ (id)_propertyClasses;
+ (id)bundleRecordForAuditToken:(id *)token error:(id *)error;
+ (id)redactedProperties;
+ (uint64_t)_getBundleRecordFinderForNode:(void *)node;
+ (void)bundleRecordForCurrentProcess;
- (BOOL)appProtectionHidden;
- (BOOL)appProtectionLocked;
- (BOOL)getDataContainerURL:(id *)l error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)personaIsApplicable:(id)applicable;
- (BOOL)unredactWithError:(id *)error;
- (LSBundleRecord)initWithCoder:(id)coder;
- (LSVersionNumber)_bundleVersionWithContext:(SEL)context tableID:(LSContext *)d unitID:(unsigned int)iD unitBytes:(unsigned int)bytes;
- (LSVersionNumber)execSDKVersionWithContext:(SEL)context tableID:(LSContext *)d unitID:(unsigned int)iD unitBytes:(unsigned int)bytes;
- (NSArray)UIBackgroundModes;
- (NSArray)privacyTrackingDomains;
- (NSString)SDKVersion;
- (NSString)_fallbackLocalizedName;
- (NSString)accentColorName;
- (NSString)applicationIdentifier;
- (NSString)bundleVersion;
- (NSString)localizedName;
- (NSString)localizedShortName;
- (NSURL)dataContainerURL;
- (char)developerTypeWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)_cachedDataContainerURL;
- (id)_dataContainerURLFromDatabaseWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)_initWithContext:(LSContext *)context persistentIdentifierData:(const LSPersistentIdentifierData *)data length:(unint64_t)length;
- (id)_localizedIdentityUsageDescriptionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)_localizedMicrophoneUsageDescriptionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)_localizedShort:(BOOL)short nameWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD bundleData:(const LSBundleBaseData *)data;
- (id)_rawGroupContainerURLsCheckingRedaction;
- (id)claimRecordsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)entitlementsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)exported:(BOOL)exported typesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)groupContainerIdentifiers;
- (id)intentDefinitionURLsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)localizedNameWithPreferredLocalizations:(id)localizations;
- (id)localizedShortNameWithPreferredLocalizations:(id)localizations;
- (id)localizedUsageDescriptionForFeature:(unint64_t)feature;
- (id)localizedUsageDescriptionForFeature:(unint64_t)feature preferredLocalizations:(id)localizations;
- (id)machOUUIDsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)recordForUnredactingWithContext:(LSContext *)context error:(id *)error;
- (id)registrationDateWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)signerIdentityWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)signerOrganizationWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (id)teamIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes;
- (unint64_t)hash;
- (void)_LSRecord_resolve__bundleVersion;
- (void)_LSRecord_resolve_execSDKVersion;
- (void)_fallbackLocalizedName;
- (void)_rawGroupContainerURLsCheckingRedaction;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)redact;
@end

@implementation LSBundleRecord

- (void)dealloc
{
  auditToken = self->_auditToken;
  if (auditToken)
  {
    MEMORY[0x1865D6250](auditToken, 0x1000C40E0EAB150);
  }

  v4.receiver = self;
  v4.super_class = LSBundleRecord;
  [(LSRecord *)&v4 dealloc];
}

- (unint64_t)hash
{
  v2 = [(LSBundleRecord *)self URL];
  v3 = [v2 hash];

  return v3;
}

- (void)_LSRecord_resolve__bundleVersion
{
  v3 = *MEMORY[0x1E69E9840];
  [(LSBundleRecord *)self _bundleVersion];
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_LSRecord_resolve_execSDKVersion
{
  v3 = *MEMORY[0x1E69E9840];
  [(LSBundleRecord *)self execSDKVersion];
  v2 = *MEMORY[0x1E69E9840];
}

- (NSURL)dataContainerURL
{
  v4 = 0;
  [(LSBundleRecord *)self getDataContainerURL:&v4 error:0];
  v2 = v4;

  return v2;
}

- (id)_cachedDataContainerURL
{
  os_unfair_lock_lock(&LaunchServices::Record::cachedDataContainerURLLock);
  _dataContainerURLFromDatabase = self->_cachedDataContainerURL;
  os_unfair_lock_unlock(&LaunchServices::Record::cachedDataContainerURLLock);
  if (_dataContainerURLFromDatabase)
  {
    v4 = *MEMORY[0x1E695E738];
  }

  else
  {
    if (!-[LSBundleRecord _containerized](self, "_containerized") || ![__LSDefaultsGetSharedInstance() isInEducationMode] || (-[LSBundleRecord bundleIdentifier](self, "bundleIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = -[LSBundleRecord _containerClass](self, "_containerClass"), active_platform = dyld_get_active_platform(), _dataContainerURLFromDatabase = _LSCopyDataContainerURLFromContainermanager(v5, v6, active_platform), v5, !_dataContainerURLFromDatabase))
    {
      _dataContainerURLFromDatabase = [(LSBundleRecord *)self _dataContainerURLFromDatabase];
    }

    os_unfair_lock_lock(&LaunchServices::Record::cachedDataContainerURLLock);
    v4 = *MEMORY[0x1E695E738];
    if (_dataContainerURLFromDatabase)
    {
      v8 = _dataContainerURLFromDatabase;
    }

    else
    {
      v8 = *MEMORY[0x1E695E738];
    }

    objc_storeStrong(&self->_cachedDataContainerURL, v8);
    os_unfair_lock_unlock(&LaunchServices::Record::cachedDataContainerURLLock);
  }

  if (_dataContainerURLFromDatabase == v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = _dataContainerURLFromDatabase;
  }

  v10 = v9;

  return v9;
}

- (id)_rawGroupContainerURLsCheckingRedaction
{
  if (![(LSBundleRecord *)self isRedacted])
  {
    goto LABEL_4;
  }

  v9 = 0;
  v3 = [(LSBundleRecord *)self unredactWithError:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {

LABEL_4:
    _rawGroupContainerURLs = [(LSBundleRecord *)self _rawGroupContainerURLs];
    goto LABEL_8;
  }

  v7 = _LSDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [LSBundleRecord _rawGroupContainerURLsCheckingRedaction];
  }

  _rawGroupContainerURLs = 0;
LABEL_8:

  return _rawGroupContainerURLs;
}

- (NSString)localizedName
{
  _localizedName = [(LSBundleRecord *)self _localizedName];
  stringValue = [_localizedName stringValue];
  v5 = postprocessLocalizedNameishStringFromStringRecord(self, stringValue);

  return v5;
}

+ (LSBundleRecord)bundleRecordForCurrentProcess
{
  v20 = *MEMORY[0x1E69E9840];
  if (_LSCurrentProcessMayMapDatabase())
  {
    v3 = _LSGetAuditTokenForSelf();
    if (v3)
    {
      v4 = v3[1];
      *buf = *v3;
      v19 = v4;
      v17 = 0;
      v5 = [self _bundleRecordForAuditToken:buf checkNSBundleMainBundle:1 error:&v17];
      v6 = v17;
      if (!v5)
      {
        v7 = _LSDefaultLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v6;
          _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "failure to find bundle record for our audit token: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    os_unfair_lock_lock(&LaunchServices::Record::currentProcessLock);
    WeakRetained = +[LSBundleRecord bundleRecordForCurrentProcess]::strongCurrentProcessRecord;
    if (!WeakRetained)
    {
      WeakRetained = objc_loadWeakRetained(&LaunchServices::Record::weakCurrentProcessRecord);
      if (!WeakRetained)
      {
        v9 = _LSGetAuditTokenForSelf();
        if (v9)
        {
          v10 = v9[1];
          *buf = *v9;
          v19 = v10;
          v16 = 0;
          WeakRetained = [self _bundleRecordForAuditToken:buf checkNSBundleMainBundle:1 error:&v16];
          v11 = v16;
          if (v11)
          {
            v12 = _LSDefaultLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              +[LSBundleRecord bundleRecordForCurrentProcess];
            }
          }

          LaunchServices::Record::storeWeakSharedRecord(WeakRetained, &LaunchServices::Record::weakCurrentProcessRecord);
        }

        else
        {
          WeakRetained = 0;
        }
      }

      objc_storeStrong(&+[LSBundleRecord bundleRecordForCurrentProcess]::strongCurrentProcessRecord, WeakRetained);
      v13 = dispatch_time(0, 5000000000);
      dispatch_after(v13, MEMORY[0x1E69E96A0], &__block_literal_global_18);
    }

    os_unfair_lock_unlock(&LaunchServices::Record::currentProcessLock);
    v5 = WeakRetained;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (LSBundleRecord)coreTypesBundleRecord
{
  v2 = objc_alloc_init(_LSCoreTypesRecordProxy);

  return v2;
}

- (NSString)SDKVersion
{
  v6 = *MEMORY[0x1E69E9840];
  [(LSBundleRecord *)self execSDKVersion];
  v2 = _LSVersionNumberGetStringRepresentation(&v5);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (NSString)bundleVersion
{
  v6 = *MEMORY[0x1E69E9840];
  [(LSBundleRecord *)self _bundleVersion];
  v2 = _LSVersionNumberGetStringRepresentation(&v5);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (NSArray)privacyTrackingDomains
{
  infoDictionary = [(LSBundleRecord *)self infoDictionary];
  v3 = objc_opt_class();
  v4 = [infoDictionary objectForKey:@"NSPrivacyTrackingDomains" ofClass:v3 valuesOfClass:objc_opt_class()];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (NSString)applicationIdentifier
{
  entitlements = [(LSBundleRecord *)self entitlements];
  _applicationIdentifier = [entitlements _applicationIdentifier];

  return _applicationIdentifier;
}

+ (id)_propertyClasses
{
  v5[7] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (NSArray)UIBackgroundModes
{
  infoDictionary = [(LSBundleRecord *)self infoDictionary];
  v3 = objc_opt_class();
  v4 = [infoDictionary objectForKey:@"UIBackgroundModes" ofClass:v3 valuesOfClass:objc_opt_class()];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (NSString)localizedShortName
{
  _localizedShortName = [(LSBundleRecord *)self _localizedShortName];
  stringValue = [_localizedShortName stringValue];
  v5 = postprocessLocalizedNameishStringFromStringRecord(self, stringValue);

  return v5;
}

- (NSString)_fallbackLocalizedName
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__9;
  v12 = __Block_byref_object_dispose__9;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__LSBundleRecord__fallbackLocalizedName__block_invoke;
  v7[3] = &unk_1E6A1AE60;
  v7[4] = self;
  v7[5] = &v8;
  __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v7);
  if (v9[5])
  {
    v2 = [_LSLocalizedStringRecord sanitizeString:?];
  }

  else
  {
    v3 = _LSDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [LSBundleRecord _fallbackLocalizedName];
    }

    v2 = @"(no path)";
  }

  v4 = v9[5];
  v9[5] = v2;

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __40__LSBundleRecord__fallbackLocalizedName__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) URL];
  v2 = [v6 lastPathComponent];
  v3 = [v2 stringByDeletingPathExtension];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __47__LSBundleRecord_bundleRecordForCurrentProcess__block_invoke()
{
  os_unfair_lock_lock(&LaunchServices::Record::currentProcessLock);
  v0 = +[LSBundleRecord bundleRecordForCurrentProcess]::strongCurrentProcessRecord;
  +[LSBundleRecord bundleRecordForCurrentProcess]::strongCurrentProcessRecord = 0;

  os_unfair_lock_unlock(&LaunchServices::Record::currentProcessLock);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  v5 = [(LSBundleRecord *)self URL];
  v6 = [v3 initWithFormat:@"{ bundleID: %@, URL: %@ }", bundleIdentifier, v5];

  return v6;
}

+ (LSBundleRecord)bundleRecordWithApplicationIdentifier:(id)identifier error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  if (!identifier)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSBundleRecord.mm" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"appID != nil"}];
  }

  v6 = _LSLogAppRecordInitsForDataSeparation();
  if (v6)
  {
    v7 = _LSDataSeparationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      identifierCopy = identifier;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "bundle record search with app ID: %@", buf, 0xCu);
    }
  }

  CurrentContext = _LSDatabaseContextGetCurrentContext(v6);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v8 = +[_LSDServiceDomain defaultServiceDomain];
  v9 = LaunchServices::Database::Context::_get(&CurrentContext, v8, 0);

  if (v9)
  {
    LaunchServices::BindingEvaluator::CreateWithApplicationIdentifier(identifier, 0, buf);
    Options = LaunchServices::BindingEvaluator::getOptions(buf);
    LaunchServices::BindingEvaluator::setOptions(buf, Options | 0x80);
    LaunchServices::BindingEvaluator::getBestBinding(buf);
    if (v26 == 1)
    {
      v11 = [[LSApplicationRecord alloc] _initWithContext:v9 bundleID:v22 bundleData:v23 error:error];
      if (v26)
      {
      }
    }

    else
    {
      v11 = 0;
    }

    LaunchServices::BindingEvaluator::~BindingEvaluator(buf);
  }

  else if (error)
  {
    v12 = +[_LSDServiceDomain defaultServiceDomain];
    v13 = LaunchServices::Database::Context::_get(&CurrentContext, v12, 0);

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v30;
    }

    v11 = 0;
    *error = v14;
  }

  else
  {
    v11 = 0;
  }

  if (CurrentContext && v29 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v15 = v28;
  CurrentContext = 0;
  v28 = 0;

  v29 = 0;
  v16 = v30;
  v30 = 0;

  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)bundleRecordForAuditToken:(id *)token error:(id *)error
{
  v4 = *&token->var0[4];
  v7[0] = *token->var0;
  v7[1] = v4;
  v5 = [self _bundleRecordForAuditToken:v7 checkNSBundleMainBundle:0 error:error];

  return v5;
}

+ (id)_getBundleRecordFinderForNode:(*+[LSBundleRecord _getBundleRecordFinderForNode:(uint64_t)node ](uint64_t)self
{
  objc_opt_self();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__LSBundleRecord__getBundleRecordFinderForNode___block_invoke;
  v7[3] = &unk_1E6A1AE60;
  v7[4] = node;
  v7[5] = &v8;
  __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v7);
  v3 = *(v9 + 6);
  v4 = +[LSBundleRecord _getBundleRecordFinderForNode:]::$_2::__invoke;
  if (v3 == 12)
  {
    v4 = +[LSBundleRecord _getBundleRecordFinderForNode:]::$_1::__invoke;
  }

  if (v3 == 2)
  {
    v5 = +[LSBundleRecord _getBundleRecordFinderForNode:]::$_0::__invoke;
  }

  else
  {
    v5 = v4;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __48__LSBundleRecord__getBundleRecordFinderForNode___block_invoke(uint64_t a1)
{
  result = _LSGetBundleClassForNode(0, *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (id)_bundleRecordForAuditToken:(id *)token checkNSBundleMainBundle:(unsigned __int8)bundle error:(id *)error
{
  v50[1] = *MEMORY[0x1E69E9840];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__9;
  v45 = __Block_byref_object_dispose__9;
  v46 = 0;
  if (_LSCurrentProcessMayMapDatabase())
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__9;
    v39 = __Block_byref_object_dispose__9;
    v40 = 0;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v8 = *&token->var0[4];
    v32 = *token->var0;
    v33 = v8;
    v31[2] = __75__LSBundleRecord__bundleRecordForAuditToken_checkNSBundleMainBundle_error___block_invoke;
    v31[3] = &unk_1E6A1AE88;
    bundleCopy = bundle;
    v31[4] = &v35;
    __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v31);
    v9 = v36[5];
    if (v9)
    {
      v10 = [LSBundleRecord _getBundleRecordFinderForNode:v9];
      CurrentContext = _LSDatabaseContextGetCurrentContext(v10);
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v11 = (v10)(&CurrentContext, v36[5], error);
      v12 = v42[5];
      v42[5] = v11;

      if (CurrentContext && v29 == 1)
      {
        _LSContextDestroy(CurrentContext);
      }

      v13 = v28;
      CurrentContext = 0;
      v28 = 0;

      v29 = 0;
      v14 = v30;
      v30 = 0;
    }

    else if (error)
    {
      v49 = *MEMORY[0x1E696A278];
      v50[0] = @"The file system path for this process could not be determined. It may not be running, or it may have been deleted or moved while running.";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -600, v19, "+[LSBundleRecord _bundleRecordForAuditToken:checkNSBundleMainBundle:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSBundleRecord.mm", 401);
    }

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v15 = _LSGetPIDFromToken(token);
    if (v15 == getpid())
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __75__LSBundleRecord__bundleRecordForAuditToken_checkNSBundleMainBundle_error___block_invoke_2;
      v26[3] = &unk_1E6A1AED8;
      v26[4] = &v41;
      v16 = _LSRetryForConnectionInterrupted(v26);
      v17 = v16;
      if (v42[5])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          extensionPointRecord = [v42[5] extensionPointRecord];
          [LSExtensionPointRecord setExtensionPointRecordForCurrentProcess:extensionPointRecord];
        }
      }

      else if (error)
      {
        v21 = v16;
        *error = v17;
      }
    }

    else if (error)
    {
      v47 = *MEMORY[0x1E696A278];
      v48 = @"unknown entitlement";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v20, "+[LSBundleRecord _bundleRecordForAuditToken:checkNSBundleMainBundle:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSBundleRecord.mm", 432);
    }
  }

  v22 = v42[5];
  if (v22 && !v22[4])
  {
    operator new();
  }

  v23 = v22;
  _Block_object_dispose(&v41, 8);

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

void __75__LSBundleRecord__bundleRecordForAuditToken_checkNSBundleMainBundle_error___block_invoke(uint64_t a1)
{
  v2 = _LSCopyBundleURLForAuditToken((a1 + 40), *(a1 + 72));
  if (v2)
  {
    v6 = v2;
    v3 = [[FSNode alloc] initWithURL:v2 flags:0 error:0];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

id __75__LSBundleRecord__bundleRecordForAuditToken_checkNSBundleMainBundle_error___block_invoke_2(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__LSBundleRecord__bundleRecordForAuditToken_checkNSBundleMainBundle_error___block_invoke_3;
  v6[3] = &unk_1E6A18DF0;
  v6[4] = &v7;
  v2 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__LSBundleRecord__bundleRecordForAuditToken_checkNSBundleMainBundle_error___block_invoke_4;
  v5[3] = &unk_1E6A1AEB0;
  v5[4] = *(a1 + 32);
  v5[5] = &v7;
  [v2 getBundleRecordForCurrentProcessWithCompletionHandler:v5];
  v3 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v3;
}

void __75__LSBundleRecord__bundleRecordForAuditToken_checkNSBundleMainBundle_error___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v5, a3);
}

- (id)teamIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  teamID = bytes->teamID;
  [(_LSDatabase *)context->db store];
  v7 = _CSStringCopyCFString();

  return v7;
}

- (char)developerTypeWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  if (*([(_LSDatabase *)context->db schema]+ 4) != d)
  {
    return -1;
  }

  if (bytes->_clas == 14)
  {
    return 1;
  }

  db = context->db;
  vendorName = bytes->vendorName;
  [(_LSDatabase *)db store];
  v11 = _CSStringCopyCFString();
  if (v11)
  {
    v12 = _LSBundleGetSystemApplicationTypes();
    v13 = [v12 containsObject:v11];

    if (v13)
    {

      return 1;
    }
  }

  containingDirectoryClass = bytes->base.containingDirectoryClass;
  v14 = 1;
  if (containingDirectoryClass != 1 && containingDirectoryClass != 4)
  {
    if ((*&bytes->base.flags & 1) == 0)
    {
      return 3;
    }

    auditToken = self->_auditToken;
    if (auditToken)
    {
      if (_LSIsAuditTokenPlatformBinary(auditToken))
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }

    return -1;
  }

  return v14;
}

- (id)registrationDateWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  v6 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:bytes->registrationTime];

  return v6;
}

- (id)machOUUIDsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  machOUUIDs = bytes->machOUUIDs;
  v10 = _LSDatabaseGetStringArray(context->db);
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v14];
        if (v15)
        {
          [v8 addObject:v15];
        }

        else
        {
          v16 = _LSDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v14;
            _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEFAULT, "Launch Services: Failed to create a UUID from invalid string %@", buf, 0xCu);
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v11);
  }

  v17 = [v8 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (LSVersionNumber)execSDKVersionWithContext:(SEL)context tableID:(LSContext *)d unitID:(unsigned int)iD unitBytes:(unsigned int)bytes
{
  v7 = *&a7->execSDKVersion._opaque[16];
  *retstr->_opaque = *a7->execSDKVersion._opaque;
  *&retstr->_opaque[16] = v7;
  return self;
}

- (id)claimRecordsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (*([(_LSDatabase *)context->db schema]+ 4) == d)
  {
    v11 = *([(_LSDatabase *)context->db schema]+ 8);
    [(_LSDatabase *)context->db store];
    iconsDict = bytes->iconsDict;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __67__LSBundleRecord_claimRecordsWithContext_tableID_unitID_unitBytes___block_invoke;
    v18 = &unk_1E6A1A790;
    selfCopy = self;
    v20 = v10;
    _CSArrayEnumerateAllValues();
  }

  v13 = [v10 copy];

  return v13;
}

void __67__LSBundleRecord_claimRecordsWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_LSClaimGet(**(a1 + 48)))
  {
    v5 = [(LSRecord *)[LSClaimRecord alloc] _initWithContext:*(a1 + 48) tableID:*(a1 + 56) unitID:a3];
    if (v5)
    {
      objc_storeWeak(v5 + 4, *(a1 + 32));
      [*(a1 + 40) addObject:v5];
    }
  }
}

- (id)exported:(BOOL)exported typesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (*([(_LSDatabase *)context->db schema]+ 4) == d)
  {
    v12 = *([(_LSDatabase *)context->db schema]+ 16);
    [(_LSDatabase *)context->db store];
    iconFileNames = bytes->iconFileNames;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __69__LSBundleRecord_exported_typesWithContext_tableID_unitID_unitBytes___block_invoke;
    v19 = &unk_1E6A1AF00;
    selfCopy = self;
    v21 = v11;
    _CSArrayEnumerateAllValues();
  }

  v14 = [v11 copy];

  return v14;
}

void __69__LSBundleRecord_exported_typesWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _UTTypeGet(**(a1 + 48));
  if (v5 && ((*(v5 + 8) >> 4) & 1) == *(a1 + 60))
  {
    v6 = [(LSRecord *)[_UTDeclaredTypeRecord alloc] _initWithContext:*(a1 + 48) tableID:*(a1 + 56) unitID:a3];
    if (v6)
    {
      objc_storeWeak(v6 + 4, *(a1 + 32));
      [*(a1 + 40) addObject:v6];
    }
  }
}

void __93__LSBundleRecord__initWithNode_bundleIdentifier_context_tableID_unitID_bundleBaseData_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = **(a1 + 48);
  v4 = **(a1 + 56);
  v5 = *(v2 + 8);
  obj = *(v5 + 40);
  v6 = _LSAliasCopyResolvedNode(v3, v4, 0, 0, &obj);
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (LSVersionNumber)_bundleVersionWithContext:(SEL)context tableID:(LSContext *)d unitID:(unsigned int)iD unitBytes:(unsigned int)bytes
{
  v7 = *&a7->version._opaque[16];
  *retstr->_opaque = *a7->version._opaque;
  *&retstr->_opaque[16] = v7;
  return self;
}

- (id)_dataContainerURLFromDatabaseWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  v6 = _LSAliasCopyResolvedNode(context->db, bytes->dataContainerAlias, 0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 URL];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_localizedShort:(BOOL)short nameWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD bundleData:(const LSBundleBaseData *)data
{
  if (short || (p_localizedShortDisplayName = &data->localizedDisplayName, !data->localizedDisplayName))
  {
    v10 = [_LSLocalizedStringRecord alloc];
    p_localizedShortDisplayName = &data->localizedShortDisplayName;
  }

  else
  {
    v10 = [_LSLocalizedStringRecord alloc];
  }

  v11 = [(_LSLocalizedStringRecord *)v10 _initWithContext:context unitID:*p_localizedShortDisplayName];

  return v11;
}

- (id)_localizedMicrophoneUsageDescriptionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  v6 = [[_LSLocalizedStringRecord alloc] _initWithContext:context unitID:bytes->localizedMicrophoneUsageDescription];

  return v6;
}

- (id)_localizedIdentityUsageDescriptionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  v6 = [[_LSLocalizedStringRecord alloc] _initWithContext:context unitID:bytes->localizedIdentityUsageDescription];

  return v6;
}

- (id)_initWithContext:(LSContext *)context persistentIdentifierData:(const LSPersistentIdentifierData *)data length:(unint64_t)length
{
  v29 = *MEMORY[0x1E69E9840];
  var3 = data->var3;
  if (var3 == *([(_LSDatabase *)context->db schema]+ 4))
  {
    v10 = _LSBundleGet(context->db, data->var2);
    if (v10)
    {
      if (*(v10 + 168) == 11)
      {
        v11 = objc_alloc_init(_LSCoreTypesRecordProxy);
      }

      else
      {
        v11 = [[LSApplicationRecord alloc] _initWithContext:context persistentIdentifierData:data length:length];
      }

      goto LABEL_15;
    }

    v14 = _LSRecordLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:data length:length freeWhenDone:0];
      *buf = 138412290;
      v28 = v15;
      _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEBUG, "Failed to initialize application/bundle record with persistent identifier %@ because it was not found in the database.", buf, 0xCu);
    }
  }

  else
  {
    v12 = data->var3;
    if (v12 != *([(_LSDatabase *)context->db schema]+ 1588))
    {

      v20 = MEMORY[0x1E695DF30];
      v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:data length:{length, @"LSPersistentIdentifier"}];
      v26 = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v23 = [v20 exceptionWithName:*MEMORY[0x1E695D930] reason:@"The persistent identifier passed to -[LSBundleRecord initWithPersistentIdentifier:] was for a different type of record." userInfo:v22];
      v24 = v23;

      objc_exception_throw(v23);
    }

    v13 = _LSGetPlugin(context->db, data->var2);
    if (v13)
    {
      v11 = [[LSApplicationExtensionRecord alloc] _initWithContext:context pluginID:data->var2 pluginData:v13 error:0];
LABEL_15:
      v17 = v11;

      goto LABEL_16;
    }

    v14 = _LSRecordLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:data length:length freeWhenDone:0];
      *buf = 138412290;
      v28 = v16;
      _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEBUG, "Failed to initialize application extension record with persistent identifier %@ because it was not found in the database.", buf, 0xCu);
    }
  }

  v17 = 0;
LABEL_16:
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  v6 = [(LSBundleRecord *)self URL];
  v10.receiver = self;
  v10.super_class = LSBundleRecord;
  v7 = [(LSRecord *)&v10 debugDescription];
  v8 = [v3 initWithFormat:@"<%@ %p> { bundleID: %@, URL: %@, super: %@ }", v4, self, bundleIdentifier, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  equalCopy = equal;
  v6 = [(LSBundleRecord *)self URL];
  v7 = [equalCopy URL];
  v8 = [v6 isEqual:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = LSBundleRecord;
  [(LSRecord *)&v7 encodeWithCoder:?];
  [coder encodeObject:self->_node forKey:@"node"];
  [coder encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  if (self->_auditToken)
  {
    v5 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:self->_auditToken objCType:"{?=[8I]}"];
    [coder encodeObject:v5 forKey:@"auditToken"];
  }

  os_unfair_lock_lock(&LaunchServices::Record::cachedDataContainerURLLock);
  v6 = self->_cachedDataContainerURL;
  os_unfair_lock_unlock(&LaunchServices::Record::cachedDataContainerURLLock);
  [coder encodeObject:v6 forKey:@"cachedDataContainerURL"];
  [coder encodeBool:*&self->_flags & 1 forKey:@"redacted"];
}

- (LSBundleRecord)initWithCoder:(id)coder
{
  v49 = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = LSBundleRecord;
  v4 = [(LSRecord *)&v45 initWithCoder:?];
  if (v4)
  {
    v5 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"node"];
    node = v4->_node;
    v4->_node = v5;

    v7 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v4->_bundleIdentifier;
    v4->_bundleIdentifier = v7;

    if (!v4->_auditToken)
    {
      v9 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
        if (!strcmp([v10 objCType], "{?=[8I]}"))
        {
          operator new();
        }
      }
    }

    v12 = objc_alloc(MEMORY[0x1E695DFD8]);
    v13 = objc_opt_class();
    v14 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coder ls_decodeObjectOfClasses:v14 forKey:@"cachedDataContainerURL"];
    cachedDataContainerURL = v4->_cachedDataContainerURL;
    v4->_cachedDataContainerURL = v15;

    *&v4->_flags = *&v4->_flags & 0xFE | [coder decodeBoolForKey:@"redacted"];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v17 = [(LSRecord *)v4 _resolvedPropertyValueForGetter:sel_claimRecords];
    v18 = [v17 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v18)
    {
      v19 = *v42;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(v17);
          }

          objc_storeWeak((*(*(&v41 + 1) + 8 * i) + 32), v4);
        }

        v18 = [v17 countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v18);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v21 = [(LSRecord *)v4 _resolvedPropertyValueForGetter:sel_exportedTypeRecords];
    v22 = [v21 countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v22)
    {
      v23 = *v38;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v37 + 1) + 8 * j);
          if ([v25 isDeclared])
          {
            objc_storeWeak(v25 + 4, v4);
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v22);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = [(LSRecord *)v4 _resolvedPropertyValueForGetter:sel_importedTypeRecords];
    v27 = [v26 countByEnumeratingWithState:&v33 objects:v46 count:16];
    if (v27)
    {
      v28 = *v34;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v33 + 1) + 8 * k);
          if ([v30 isDeclared])
          {
            objc_storeWeak(v30 + 4, v4);
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v33 objects:v46 count:16];
      }

      while (v27);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = LSBundleRecord;
  v4 = [(LSRecord *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 7, self->_node);
    objc_storeStrong(v5 + 8, self->_bundleIdentifier);
    os_unfair_lock_lock(&LaunchServices::Record::cachedDataContainerURLLock);
    objc_storeStrong(v5 + 5, self->_cachedDataContainerURL);
    os_unfair_lock_unlock(&LaunchServices::Record::cachedDataContainerURLLock);
    if (self->_auditToken)
    {
      if (!v5[4])
      {
        operator new();
      }
    }
  }

  return v5;
}

- (id)entitlementsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  v9 = objc_autoreleasePoolPush();
  if (!self->_auditToken || (__LAUNCH_SERVICES_IS_GETTING_ENTITLEMENTS_FROM_THE_KERNEL__(self), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [_LSLazyPropertyList lazyPropertyListWithContext:context unit:bytes->entitlements];
  }

  objc_autoreleasePoolPop(v9);

  return v10;
}

- (BOOL)getDataContainerURL:(id *)l error:(id *)error
{
  if (![(LSBundleRecord *)self isRedacted])
  {
LABEL_4:
    _cachedDataContainerURL = [(LSBundleRecord *)self _cachedDataContainerURL];
    v26 = 0;
    _personasWithAttributes = [(LSBundleRecord(Personas) *)self _personasWithAttributes];
    v12 = _LSShouldFetchContainersFromContainermanagerForPersona(_personasWithAttributes, [(LSBundleRecord *)self _usesSystemPersona], &v26);

    _containerized = [(LSBundleRecord *)self _containerized];
    v14 = v12 == 0;
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = _containerized;
    }

    if (v15 && (v26 || !_cachedDataContainerURL))
    {
      if (!v26)
      {
        v16 = _LSDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          [LSBundleRecord(Containers) getDataContainerURL:error:];
        }
      }

      bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
      _containerClass = [(LSBundleRecord *)self _containerClass];
      active_platform = dyld_get_active_platform();
      v20 = _LSCopyDataContainerURLFromContainermanager(bundleIdentifier, _containerClass, active_platform);

      _cachedDataContainerURL = v20;
    }

    if (error)
    {
      v21 = v12;
      *error = v12;
    }

    if (l)
    {
      v22 = _cachedDataContainerURL;
      *l = _cachedDataContainerURL;
    }

    goto LABEL_26;
  }

  v27 = 0;
  v7 = [(LSBundleRecord *)self unredactWithError:&v27];
  v8 = v27;
  v9 = v8;
  if (v7)
  {

    goto LABEL_4;
  }

  v23 = _LSDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    [LSBundleRecord _rawGroupContainerURLsCheckingRedaction];
  }

  if (error)
  {
    v24 = v9;
    v14 = 0;
    *error = v9;
  }

  else
  {
    v14 = 0;
  }

  v12 = v9;
LABEL_26:

  return v14;
}

- (id)groupContainerIdentifiers
{
  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  if (!bundleIdentifier)
  {
    goto LABEL_3;
  }

  v4 = bundleIdentifier;
  bundleIdentifier2 = [(LSBundleRecord *)self bundleIdentifier];
  entitlements = [(LSBundleRecord *)self entitlements];
  v7 = _LSCopyGroupContainerIdentifiersFromEntitlements(bundleIdentifier2, entitlements);

  if (!v7)
  {
LABEL_3:
    v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v7;
}

- (id)localizedNameWithPreferredLocalizations:(id)localizations
{
  _localizedName = [(LSBundleRecord *)self _localizedName];
  v6 = [_localizedName stringValueWithPreferredLocalizations:localizations];
  v7 = postprocessLocalizedNameishStringFromStringRecord(self, v6);

  return v7;
}

- (id)localizedShortNameWithPreferredLocalizations:(id)localizations
{
  _localizedShortName = [(LSBundleRecord *)self _localizedShortName];
  v6 = [_localizedShortName stringValueWithPreferredLocalizations:localizations];
  v7 = postprocessLocalizedNameishStringFromStringRecord(self, v6);

  return v7;
}

- (id)localizedUsageDescriptionForFeature:(unint64_t)feature
{
  v12 = *MEMORY[0x1E69E9840];
  if (feature == 1)
  {
    _localizedIdentityUsageDescription = [(LSBundleRecord *)self _localizedIdentityUsageDescription];
    stringValue = [_localizedIdentityUsageDescription stringValue];
    goto LABEL_5;
  }

  if (!feature)
  {
    _localizedIdentityUsageDescription = [(LSBundleRecord *)self _localizedMicrophoneUsageDescription];
    stringValue = [_localizedIdentityUsageDescription stringValue];
LABEL_5:
    v6 = stringValue;

    goto LABEL_9;
  }

  v7 = _LSDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    featureCopy = feature;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Unknown usage description feature %lu", &v10, 0xCu);
  }

  v6 = 0;
LABEL_9:
  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)localizedUsageDescriptionForFeature:(unint64_t)feature preferredLocalizations:(id)localizations
{
  v14 = *MEMORY[0x1E69E9840];
  if (feature == 1)
  {
    _localizedIdentityUsageDescription = [(LSBundleRecord *)self _localizedIdentityUsageDescription];
    v7 = [_localizedIdentityUsageDescription stringValueWithPreferredLocalizations:localizations];
    goto LABEL_5;
  }

  if (!feature)
  {
    _localizedIdentityUsageDescription = [(LSBundleRecord *)self _localizedMicrophoneUsageDescription];
    v7 = [_localizedIdentityUsageDescription stringValueWithPreferredLocalizations:localizations];
LABEL_5:
    v8 = v7;

    goto LABEL_9;
  }

  v9 = _LSDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    featureCopy = feature;
    _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "Unknown usage description feature %lu", &v12, 0xCu);
  }

  v8 = 0;
LABEL_9:
  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)signerOrganizationWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  signerOrganization = bytes->signerOrganization;
  [(_LSDatabase *)context->db store];
  v7 = _CSStringCopyCFString();

  return v7;
}

- (id)signerIdentityWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  signerIdentity = bytes->signerIdentity;
  [(_LSDatabase *)context->db store];
  v7 = _CSStringCopyCFString();

  return v7;
}

- (BOOL)personaIsApplicable:(id)applicable
{
  if ([(LSBundleRecord *)self _usesSystemPersona])
  {
    return 1;
  }

  associatedPersonas = [(LSBundleRecord *)self associatedPersonas];
  v5 = [associatedPersonas containsObject:applicable];

  return v5;
}

- (NSString)accentColorName
{
  infoDictionary = [(LSBundleRecord *)self infoDictionary];
  v3 = [infoDictionary objectForKey:@"NSAccentColorName" ofClass:objc_opt_class()];

  return v3;
}

- (id)intentDefinitionURLsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleBaseData *)bytes
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [_LSLazyPropertyList lazyPropertyListWithContext:context unit:bytes->intentDefinitionURLs];
  v10 = v9;
  if (v9)
  {
    propertyList = [(_LSLazyPropertyList *)v9 propertyList];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84__LSBundleRecord_Intents__intentDefinitionURLsWithContext_tableID_unitID_unitBytes___block_invoke;
    v14[3] = &unk_1E6A1AF50;
    v15 = v8;
    [propertyList enumerateKeysAndObjectsUsingBlock:v14];
  }

  v12 = [v8 copy];

  return v12;
}

void __84__LSBundleRecord_Intents__intentDefinitionURLsWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:a3 isDirectory:0];
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:a2];
  }
}

+ (id)redactedProperties
{
  if (+[LSBundleRecord(Redaction) redactedProperties]::once != -1)
  {
    +[LSBundleRecord(Redaction) redactedProperties];
  }

  v3 = +[LSBundleRecord(Redaction) redactedProperties]::properties;

  return v3;
}

void __47__LSBundleRecord_Redaction__redactedProperties__block_invoke()
{
  v0 = +[LSBundleRecord(Redaction) redactedProperties]::properties;
  +[LSBundleRecord(Redaction) redactedProperties]::properties = &unk_1EEF8F1C0;
}

- (void)redact
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 1) == 0)
  {
    if ([(LSBundleRecord *)self eligibleForRedaction])
    {
      [(LSRecord *)self _resolveAllProperties];
      [(LSRecord *)self detach];
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      redactedProperties = [objc_opt_class() redactedProperties];
      v4 = [redactedProperties countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        v5 = *v10;
        do
        {
          v6 = 0;
          do
          {
            if (*v10 != v5)
            {
              objc_enumerationMutation(redactedProperties);
            }

            [(LSRecord *)self _removeResolvedPropertyValueForGetter:NSSelectorFromString(*(*(&v9 + 1) + 8 * v6++))];
          }

          while (v4 != v6);
          v4 = [redactedProperties countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v4);
      }

      *&self->_flags |= 1u;
    }

    else
    {
      v7 = _LSDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [LSBundleRecord(Redaction) redact];
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)recordForUnredactingWithContext:(LSContext *)context error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  abort();
}

- (BOOL)unredactWithError:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 1) == 0)
  {
    v16 = 1;
    goto LABEL_31;
  }

  if (_LSCurrentProcessMayMapDatabase())
  {
    v36 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v5 = +[_LSDServiceDomain defaultServiceDomain];
    v6 = LaunchServices::Database::Context::_get(&v33, v5, 0);

    if (v6)
    {
      v32 = 0;
      v7 = [(LSBundleRecord *)self recordForUnredactingWithContext:v6 error:&v32];
      v25 = v32;
      if (v7)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        redactedProperties = [objc_opt_class() redactedProperties];
        v10 = [redactedProperties countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v10)
        {
          v11 = *v29;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v29 != v11)
              {
                objc_enumerationMutation(redactedProperties);
              }

              v13 = NSSelectorFromString(*(*(&v28 + 1) + 8 * i));
              v14 = [v7 v13];
              [(LSRecord *)self _setResolvedPropertyValue:v14 forGetter:v13];
              if (objc_opt_respondsToSelector())
              {
                [v8 addObject:v14];
              }
            }

            v10 = [redactedProperties countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v10);
        }

        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __47__LSBundleRecord_Redaction__unredactWithError___block_invoke_2;
        v26[3] = &unk_1E6A1A830;
        v15 = v8;
        v27 = v15;
        [(LSRecord *)self _ifAttached:&__block_literal_global_440 else:v26];
        *&self->_flags &= ~1u;

        v16 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = +[_LSDServiceDomain defaultServiceDomain];
      v19 = LaunchServices::Database::Context::_get(&v33, v18, 0);

      if (!v19)
      {
        v25 = v36;
        if (error)
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      }

      v25 = 0;
    }

    if (error)
    {
LABEL_23:
      v20 = v25;
      v16 = 0;
      v7 = 0;
      *error = v25;
      goto LABEL_27;
    }

LABEL_26:
    v16 = 0;
    v7 = 0;
LABEL_27:
    if (v33 && v35 == 1)
    {
      _LSContextDestroy(v33);
    }

    v21 = v34;
    v33 = 0;
    v34 = 0;

    v35 = 0;
    v22 = v36;
    v36 = 0;

    goto LABEL_31;
  }

  v17 = _LSDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    [LSBundleRecord(Redaction) unredactWithError:];
  }

  if (error)
  {
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[LSBundleRecord(Redaction) unredactWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSBundleRecord.mm", 1806);
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_31:
  v23 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (id)_getBundleRecordFinderForNode:(void *)node
{
  v5 = a2;
  v6 = +[_LSDServiceDomain defaultServiceDomain];
  v7 = LaunchServices::Database::Context::_get(self, v6, 0);

  if (v7)
  {
    v8 = getAppexRecordForXPCServiceNode(v7, v5, node);
  }

  else if (node)
  {
    v9 = +[_LSDServiceDomain defaultServiceDomain];
    v10 = LaunchServices::Database::Context::_get(self, v9, 0);

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = self[3];
    }

    v8 = 0;
    *node = v11;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (uint64_t)_getBundleRecordFinderForNode:(void *)node
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if ([v4 isDirectory])
  {
    if (node)
    {
      v9 = *MEMORY[0x1E696A278];
      v10[0] = @"This process' bundle type is not something Launch Services registers.";
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      v6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v5, "operator()", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSBundleRecord.mm", 358);
LABEL_6:
      *node = v6;
    }
  }

  else if (node)
  {
    v9 = *MEMORY[0x1E696A278];
    v10[0] = @"This process is not the executable of a bundle.";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v5, "operator()", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSBundleRecord.mm", 360);
    goto LABEL_6;
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)appProtectionHidden
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)appProtectionLocked
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (void)bundleRecordForCurrentProcess
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(&dword_18162D000, v0, OS_LOG_TYPE_ERROR, "failure to find bundle record for our audit token: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)executableURLWithContext:(uint64_t)a1 tableID:(unsigned int *)a2 unitID:unitBytes:.cold.1(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_4_0();
  v7 = 2048;
  v8 = v3;
  _os_log_debug_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEBUG, "Cannot generate executableURL for app %@ because it has no executable path stored (%llx)", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)executableURLWithContext:tableID:unitID:unitBytes:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(&dword_18162D000, v0, OS_LOG_TYPE_ERROR, "Cannot generate executableURL for app %@ because it has no resolvable bundle URL", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_rawGroupContainerURLsCheckingRedaction
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_4(&dword_18162D000, v0, v1, "could not unredact record %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_fallbackLocalizedName
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end