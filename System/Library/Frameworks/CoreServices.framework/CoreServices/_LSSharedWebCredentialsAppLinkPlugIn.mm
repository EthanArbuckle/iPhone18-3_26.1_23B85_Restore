@interface _LSSharedWebCredentialsAppLinkPlugIn
- (_LSSharedWebCredentialsAppLinkPlugIn)init;
- (id)appLinksWithContext:(LSContext *)context error:(id *)error;
- (id)appLinksWithContext:(LSContext *)context forSWCResults:(id)results;
- (id)callingBundleIdentifier;
- (optional<LSBinding>)bindingWithContext:(SEL)context forServiceDetails:(LSContext *)details callingBundleIdentifier:(id)identifier;
- (void)enumerateBindingsWithContext:(LSContext *)context forSWCResults:(id)results block:(id)block;
@end

@implementation _LSSharedWebCredentialsAppLinkPlugIn

- (_LSSharedWebCredentialsAppLinkPlugIn)init
{
  v4.receiver = self;
  v4.super_class = _LSSharedWebCredentialsAppLinkPlugIn;
  v2 = [(_LSSharedWebCredentialsAppLinkPlugIn *)&v4 init];
  if (v2 && !_LSIsSWCAvailable())
  {

    return 0;
  }

  return v2;
}

- (optional<LSBinding>)bindingWithContext:(SEL)context forServiceDetails:(LSContext *)details callingBundleIdentifier:(id)identifier
{
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v12 = a6;
  retstr->var0.var0 = 0;
  retstr->var1 = 0;
  if (details)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:context object:self file:@"LSAppLinkPlugIn.mm" lineNumber:501 description:{@"Invalid parameter not satisfying: %@", @"ctx != NULL"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:context object:self file:@"LSAppLinkPlugIn.mm" lineNumber:502 description:{@"Invalid parameter not satisfying: %@", @"serviceDetails != nil"}];

LABEL_3:
  if ([identifierCopy isApproved])
  {
    serviceSpecifier = [identifierCopy serviceSpecifier];
    applicationIdentifier = [serviceSpecifier applicationIdentifier];

    serviceSpecifier2 = [identifierCopy serviceSpecifier];
    applicationIdentifierPrefix = [serviceSpecifier2 applicationIdentifierPrefix];

    serviceSpecifier3 = [identifierCopy serviceSpecifier];
    bundleIdentifier = [serviceSpecifier3 bundleIdentifier];

    if (bundleIdentifier && (!v12 || [bundleIdentifier caseInsensitiveCompare:v12]))
    {
      if ([identifierCopy isSystemPlaceholder])
      {
        v19 = _LSFindBundleWithInfo(details, 7uLL, bundleIdentifier, 0, 0, 0, 0);
        v20 = _LSBundleGet(details->db, v19);
        if (v20)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0u;
          v36 = 0u;
          std::optional<LSBinding>::operator=[abi:nn200100]<LSBinding,void>(retstr, &v32);

          retstr->var0.var1.bundle = v19;
          retstr->var0.var1.bundleData = v20;
        }
      }

      else
      {
        memset(v28, 0, sizeof(v28));
        LaunchServices::BindingEvaluator::CreateWithBundleInfo(bundleIdentifier, 0, 0, 1, v28, &v32);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __101___LSSharedWebCredentialsAppLinkPlugIn_bindingWithContext_forServiceDetails_callingBundleIdentifier___block_invoke;
        v25[3] = &unk_1E6A1A5E8;
        v26 = applicationIdentifierPrefix;
        v27 = applicationIdentifier;
        LaunchServices::BindingEvaluator::setFilter_NoIO(&v32, @"universal links", v25);
        LaunchServices::BindingEvaluator::getBestBinding(&v32);
        std::__optional_storage_base<LSBinding,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<LSBinding,false>>(retstr, v28);
        if (v31 == 1)
        {
        }

        LaunchServices::BindingEvaluator::~BindingEvaluator(&v32);
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateBindingsWithContext:(LSContext *)context forSWCResults:(id)results block:(id)block
{
  v35 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  blockCopy = block;
  if (!resultsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLinkPlugIn.mm" lineNumber:592 description:{@"Invalid parameter not satisfying: %@", @"swcResults != nil", 0}];
  }

  state = [(_LSAppLinkPlugIn *)self state];
  includeLinksForCallingApplication = [state includeLinksForCallingApplication];

  if (includeLinksForCallingApplication)
  {
    callingBundleIdentifier = 0;
  }

  else
  {
    callingBundleIdentifier = [(_LSSharedWebCredentialsAppLinkPlugIn *)self callingBundleIdentifier];
  }

  memset(v32, 0, sizeof(v32));
  v33 = 1065353216;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = resultsCopy;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v14)
  {
    v15 = 0;
    v16 = *v29;
    do
    {
      v17 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        [(_LSSharedWebCredentialsAppLinkPlugIn *)self bindingWithContext:context forServiceDetails:v18 callingBundleIdentifier:callingBundleIdentifier];
        if (v27 == 1)
        {
          if (std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::find<unsigned int>(v32, v24))
          {
            v20 = 0;
            goto LABEL_17;
          }

          std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int &>(v32, v24);
          if ((v27 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:nn200100]();
          }

          blockCopy[2](blockCopy, v24, v18);
          ++v15;
        }

        v20 = 1;
LABEL_17:
        if (v27 == 1)
        {
        }

        objc_autoreleasePoolPop(v19);
        if (!v20 || v15 >= [(_LSAppLinkPlugIn *)self limit])
        {
          goto LABEL_23;
        }

        ++v17;
      }

      while (v14 != v17);
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v14);
  }

LABEL_23:

  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(v32);
  v21 = *MEMORY[0x1E69E9840];
}

- (id)appLinksWithContext:(LSContext *)context forSWCResults:(id)results
{
  v38 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  array = [MEMORY[0x1E695DF70] array];
  v29 = 0;
  v30 = &v29;
  v31 = 0x4812000000;
  v32 = __Block_byref_object_copy__5;
  v33 = __Block_byref_object_dispose__5;
  v34 = &unk_1818533FF;
  memset(v35, 0, sizeof(v35));
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __74___LSSharedWebCredentialsAppLinkPlugIn_appLinksWithContext_forSWCResults___block_invoke;
  v25[3] = &unk_1E6A1A610;
  contextCopy = context;
  v25[4] = self;
  v8 = array;
  v26 = v8;
  v27 = &v29;
  [(_LSSharedWebCredentialsAppLinkPlugIn *)self enumerateBindingsWithContext:context forSWCResults:resultsCopy block:v25];
  if (-[_LSAppLinkPlugIn limit](self, "limit") != -1 && [v8 count] >= 2)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v37 count:16];
    if (v12)
    {
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          if ([v15 isEnabled])
          {
            v16 = array2;
          }

          else
          {
            v16 = array3;
          }

          [v16 addObject:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v21 objects:v37 count:16];
      }

      while (v12);
    }

    [v11 setArray:array2];
    v17 = [array2 count];
    if (v17 < [(_LSAppLinkPlugIn *)self limit])
    {
      [v11 addObjectsFromArray:array3];
    }
  }

  v18 = v30[7] - v30[6];
  [LSRecord resolveAllPropertiesOfRecords:"resolveAllPropertiesOfRecords:count:andDetachOnQueue:" count:? andDetachOnQueue:?];

  _Block_object_dispose(&v29, 8);
  v36 = v35;
  std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v36);

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)callingBundleIdentifier
{
  state = [(_LSAppLinkPlugIn *)self state];
  v3 = _LSCopyBundleIdentifierForAuditToken([state auditToken], 1);

  return v3;
}

- (id)appLinksWithContext:(LSContext *)context error:(id *)error
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__142;
  v44 = __Block_byref_object_dispose__143;
  v45 = MEMORY[0x1E695E0F0];
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc(_LSSWCServiceSpecifierClass());
  v9 = _LSSWCServiceTypeAppLinks();
  uRLComponents = [(_LSAppLinkPlugIn *)self URLComponents];
  host = [uRLComponents host];
  v12 = [v8 initWithServiceType:v9 applicationIdentifier:0 domain:host];

  state = [(_LSAppLinkPlugIn *)self state];
  auditToken = [state auditToken];

  if (auditToken && (_LSSWCServiceDetailsClass(), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v15 = _LSSWCServiceDetailsClass();
    uRLComponents2 = [(_LSAppLinkPlugIn *)self URLComponents];
    limit = [(_LSAppLinkPlugIn *)self limit];
    v18 = auditToken[1];
    v39[0] = *auditToken;
    v39[1] = v18;
    v38 = 0;
    v19 = [v15 serviceDetailsWithServiceSpecifier:v12 URLComponents:uRLComponents2 limit:limit auditToken:v39 error:&v38];
    v20 = v38;
  }

  else
  {
    v21 = _LSSWCServiceDetailsClass();
    uRLComponents2 = [(_LSAppLinkPlugIn *)self URLComponents];
    v37 = 0;
    v19 = [v21 serviceDetailsWithServiceSpecifier:v12 URLComponents:uRLComponents2 limit:-[_LSAppLinkPlugIn limit](self error:{"limit"), &v37}];
    v20 = v37;
  }

  v22 = v20;

  if ([v19 count])
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __66___LSSharedWebCredentialsAppLinkPlugIn_appLinksWithContext_error___block_invoke;
    v33[3] = &unk_1E6A1A638;
    v35 = &v40;
    contextCopy = context;
    v33[4] = self;
    v34 = v19;
    v23 = MEMORY[0x1865D71B0](v33);
    if ([__LSDefaultsGetSharedInstance() isServer])
    {
      v24 = _LSServer_DatabaseExecutionContext();
      [(LSDBExecutionContext *)v24 assertNotActiveForThisThread];

      v25 = _LSServer_DatabaseExecutionContext();
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __66___LSSharedWebCredentialsAppLinkPlugIn_appLinksWithContext_error___block_invoke_2;
      v31[3] = &unk_1E6A1A660;
      v32 = v23;
      [(LSDBExecutionContext *)v25 syncRead:v31];
    }

    else
    {
      v23[2](v23);
    }
  }

  else if (v19)
  {
    v26 = v41[5];
    v41[5] = MEMORY[0x1E695E0F0];
  }

  objc_autoreleasePoolPop(v7);
  v27 = v41[5];
  if (error && !v27)
  {
    v28 = v22;
    *error = v22;
    v27 = v41[5];
  }

  v29 = v27;

  _Block_object_dispose(&v40, 8);

  return v29;
}

@end