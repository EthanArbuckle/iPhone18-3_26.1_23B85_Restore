@interface _LSDocumentProxyBindingQuery
- (BOOL)isEqual:(id)a3;
- (_LSDocumentProxyBindingQuery)initWithBindingConfiguration:(id)a3;
- (_LSDocumentProxyBindingQuery)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LSDocumentProxyBindingQuery

- (_LSDocumentProxyBindingQuery)initWithBindingConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _LSDocumentProxyBindingQuery;
  v6 = [(_LSQuery *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, a3);
  }

  return v7;
}

- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4
{
  v69[1] = *MEMORY[0x1E69E9840];
  v40 = a3;
  v6 = a4;
  v7 = [(_LSDocumentProxyBindingQuery *)self bindingConfiguration];
  v8 = [v7 documentProxy];

  if (!v8)
  {
    v68 = *MEMORY[0x1E696A278];
    v69[0] = @"documentProxy";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v13, "[_LSDocumentProxyBindingQuery _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSDocumentProxy.mm", 784);
    v6[2](v6, 0, v14);

    goto LABEL_39;
  }

  v9 = [(_LSDocumentProxyBindingQuery *)self yieldClaimBindings];
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  if (LaunchServices::Database::Context::status(&v48))
  {
    v10 = +[_LSDServiceDomain defaultServiceDomain];
    v11 = LaunchServices::Database::Context::_get(&v48, v10, 0);

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v51;
    }

    v6[2](v6, 0, v12);

    goto LABEL_35;
  }

  v15 = +[_LSDServiceDomain defaultServiceDomain];
  v16 = LaunchServices::Database::Context::_get(&v48, v15, 0);

  v46 = 0u;
  v47 = 0u;
  if (v40)
  {
    [v40 auditToken];
    v46 = *buf;
    v47 = v64;
    v17 = +[LSApplicationRestrictionsManager sharedInstance];
    v18 = [(LSApplicationRestrictionsManager *)v17 isOpenInRestrictionInEffect];

    if (v18)
    {
      v19 = v8;
      if (!_LSAuditTokensAreEqual([v8 sourceAuditToken], &v46))
      {
        v20 = [v40 _xpcConnection];
        v21 = _LSCheckEntitlementForXPCConnection(v20, @"com.apple.private.launchservices.canspecifymanageddocumentsource") == 0;

        if (v21)
        {
          if (@"com.apple.private.launchservices.canspecifymanageddocumentsource")
          {
            v36 = @"com.apple.private.launchservices.canspecifymanageddocumentsource";
          }

          else
          {
            v36 = @"unknown entitlement";
          }

          v66 = *MEMORY[0x1E696A278];
          v67 = v36;
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          v38 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v37, "[_LSDocumentProxyBindingQuery _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSDocumentProxy.mm", 816);
          v6[2](v6, 0, v38);

          goto LABEL_35;
        }
      }
    }
  }

  v22 = _LSDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    *&buf[4] = v8;
    _os_log_impl(&dword_18162D000, v22, OS_LOG_TYPE_DEFAULT, "Evaluating document proxy binding query for %{private}@", buf, 0xCu);
  }

  v23 = [(_LSDocumentProxyBindingQuery *)self bindingConfiguration];
  v24 = v23;
  if (v23)
  {
    if (v40)
    {
      v25 = &v46;
    }

    else
    {
      v25 = 0;
    }

    [v23 bindingEvaluatorForAuditToken:v25];
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
  }

  LaunchServices::BindingEvaluator::BindingEvaluator(buf, &v52);
  v65 = 1;
  LaunchServices::BindingEvaluator::~BindingEvaluator(&v52);

  v45 = 0;
  v42 = 0;
  LaunchServices::BindingEvaluator::evaluateBindings(buf, v16, &v45, &v42, &v43);
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v39 = v26;
  if (v43 == v44)
  {
    if (_LSGetOSStatusFromNSError(v26) != -10814)
    {
      v6[2](v6, 0, v39);
      goto LABEL_33;
    }

    v27 = v43;
    v28 = v44;
  }

  v41 = 0;
  v52 = 0u;
  v53 = 0u;
  LODWORD(v54) = 1065353216;
  if (v27 == v28)
  {
    goto LABEL_32;
  }

  while (std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::find<unsigned int>(&v52, v27))
  {
LABEL_31:
    v27 += 14;
    if (v27 == v28)
    {
      goto LABEL_32;
    }
  }

  v29 = objc_autoreleasePoolPush();
  if (v9)
  {
    v30 = [LSClaimBinding alloc];
    v31 = [(LSClaimBinding *)v30 _initWithContext:v16 binding:v27 coreTypesBundleRecord:&v41 typeRecord:v45 error:0];
  }

  else
  {
    v31 = [LSApplicationProxy applicationProxyWithBundleUnitID:*v27 withContext:v16];
  }

  v32 = v31;
  objc_autoreleasePoolPop(v29);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int &>(&v52, v27);
  if (!v32 || (v6[2])(v6, v32, 0))
  {

    goto LABEL_31;
  }

LABEL_32:
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(&v52);

LABEL_33:
  *&v52 = &v43;
  std::vector<LSBinding>::__destroy_vector::operator()[abi:nn200100](&v52);

  if (v65 == 1)
  {
    LaunchServices::BindingEvaluator::~BindingEvaluator(buf);
  }

LABEL_35:
  if (v48 && v50 == 1)
  {
    _LSContextDestroy(v48);
  }

  v33 = v49;
  v48 = 0;
  v49 = 0;

  v50 = 0;
  v34 = v51;
  v51 = 0;

LABEL_39:
  v35 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _LSDocumentProxyBindingQuery;
  if ([(_LSQuery *)&v10 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 bindingConfiguration];
    v6 = [(_LSDocumentProxyBindingQuery *)self bindingConfiguration];
    if ([v5 isEqual:v6])
    {
      v7 = [v4 yieldClaimBindings];
      v8 = v7 ^ [(_LSDocumentProxyBindingQuery *)self yieldClaimBindings]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(_LSDocumentProxyBindingQuery *)self bindingConfiguration];
  v4 = [v3 hash];

  v5 = v4 ^ ([(_LSDocumentProxyBindingQuery *)self yieldClaimBindings]<< 63 >> 63);
  v7.receiver = self;
  v7.super_class = _LSDocumentProxyBindingQuery;
  return v5 ^ [(_LSQuery *)&v7 hash];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(_LSDocumentProxyBindingQuery *)self bindingConfiguration];
  [v5 encodeObject:v4 forKey:@"bindingConfiguration"];

  [v5 encodeBool:-[_LSDocumentProxyBindingQuery yieldClaimBindings](self forKey:{"yieldClaimBindings"), @"yieldClaimBindings"}];
}

- (_LSDocumentProxyBindingQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"bindingConfiguration"];
  v6 = [(_LSDocumentProxyBindingQuery *)self initWithBindingConfiguration:v5];
  if (v6)
  {
    -[_LSDocumentProxyBindingQuery setYieldClaimBindings:](v6, "setYieldClaimBindings:", [v4 decodeBoolForKey:@"yieldClaimBindings"]);
  }

  return v6;
}

@end