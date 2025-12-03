@interface LSClaimBinding
+ (id)_claimBindingsForBindingEvaluator:(const void *)evaluator error:(id *)error;
+ (id)claimBindingsWithConfiguration:(id)configuration error:(id *)error;
+ (id)claimBindingsWithTypeIdentifier:(id)identifier error:(id *)error;
+ (id)claimBindingsWithURL:(id)l error:(id *)error;
- (LSClaimBinding)initWithCoder:(id)coder;
- (LSClaimBinding)initWithConfiguration:(id)configuration error:(id *)error;
- (LSClaimBinding)initWithTypeIdentifier:(id)identifier error:(id *)error;
- (LSClaimBinding)initWithURL:(id)l error:(id *)error;
- (id)_initWithBindingEvaluator:(const void *)evaluator error:(id *)error;
- (id)_initWithClaimRecord:(id)record typeRecord:(id)typeRecord bundleRecord:(id)bundleRecord provenance:(unint64_t)provenance;
- (id)_initWithContext:(LSContext *)context binding:(const LSBinding *)binding coreTypesBundleRecord:(id *)record typeRecord:(id)typeRecord error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)detach;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSClaimBinding

- (LSClaimBinding)initWithTypeIdentifier:(id)identifier error:(id *)error
{
  v10 = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluator::CreateWithUTI(identifier, 0, v9);
  v6 = [(LSClaimBinding *)self _initWithBindingEvaluator:v9 error:error];
  LaunchServices::BindingEvaluator::~BindingEvaluator(v9);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)claimBindingsWithTypeIdentifier:(id)identifier error:(id *)error
{
  v10 = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluator::CreateWithUTI(identifier, 0, v9);
  v6 = [self _claimBindingsForBindingEvaluator:v9 error:error];
  LaunchServices::BindingEvaluator::~BindingEvaluator(v9);
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (LSClaimBinding)initWithURL:(id)l error:(id *)error
{
  v9[22] = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluator::CreateWithURL(l, v9);
  v6 = [(LSClaimBinding *)self _initWithBindingEvaluator:v9 error:error];
  LaunchServices::BindingEvaluator::~BindingEvaluator(v9);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)claimBindingsWithURL:(id)l error:(id *)error
{
  v9[22] = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluator::CreateWithURL(l, v9);
  v6 = [self _claimBindingsForBindingEvaluator:v9 error:error];
  LaunchServices::BindingEvaluator::~BindingEvaluator(v9);
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_initWithClaimRecord:(id)record typeRecord:(id)typeRecord bundleRecord:(id)bundleRecord provenance:(unint64_t)provenance
{
  v13.receiver = self;
  v13.super_class = LSClaimBinding;
  v10 = [(LSClaimBinding *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_claimRecord, record);
    objc_storeStrong(&v11->_typeRecord, typeRecord);
    objc_storeStrong(&v11->_bundleRecord, bundleRecord);
    v11->_provenance = provenance;
  }

  return v11;
}

- (id)_initWithContext:(LSContext *)context binding:(const LSBinding *)binding coreTypesBundleRecord:(id *)record typeRecord:(id)typeRecord error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (context)
  {
    if (binding)
    {
      goto LABEL_3;
    }

LABEL_22:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSClaimRecord.mm" lineNumber:252 description:{@"Invalid parameter not satisfying: %@", @"binding != NULL"}];

    if (!self)
    {
      goto LABEL_23;
    }

    goto LABEL_4;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSClaimRecord.mm" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"ctx != NULL"}];

  if (!binding)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (!self)
  {
LABEL_23:

    if (error)
    {
      v31 = *MEMORY[0x1E696A278];
      v32[0] = @"The claim record was bound to an unknown bundle record.";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10817, v25, "[LSClaimBinding _initWithContext:binding:coreTypesBundleRecord:typeRecord:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSClaimRecord.mm", 292);
    }

    v20 = 0;
    v15 = 0;
    goto LABEL_26;
  }

LABEL_4:
  bundleData = binding->bundleData;
  if (!bundleData)
  {
    goto LABEL_23;
  }

  if (bundleData->_clas == 11)
  {
    v15 = *record;
    if (v15)
    {
      goto LABEL_12;
    }

    v16 = +[LSBundleRecord coreTypesBundleRecord];
    objc_storeStrong(record, v16);
  }

  else
  {
    v17 = objc_opt_class();
    if (binding->bundleData->_clas == 2)
    {
      v17 = objc_opt_class();
    }

    v16 = [[v17 alloc] _initWithNode:0 bundleIdentifier:0 context:context tableID:*(-[_LSDatabase schema](context->db) + 4) unitID:binding->bundle bundleBaseData:binding->bundleData error:error];
  }

  v15 = v16;
  if (!v16)
  {

LABEL_20:
    v20 = 0;
LABEL_26:
    v21 = 0;
    goto LABEL_27;
  }

LABEL_12:
  if (!binding->claimData)
  {
    v20 = 0;
    goto LABEL_16;
  }

  v18 = [(LSRecord *)[LSClaimRecord alloc] _initWithContext:context tableID:*([(_LSDatabase *)context->db schema]+ 8) unitID:binding->claim];
  v19 = v18;
  if (!v18)
  {

    if (error)
    {
      v29 = *MEMORY[0x1E696A278];
      v30 = @"Unable to find this claim record in the Launch Services database.";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, v22, "[LSClaimBinding _initWithContext:binding:coreTypesBundleRecord:typeRecord:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSClaimRecord.mm", 305);
    }

    goto LABEL_20;
  }

  objc_storeWeak(v18 + 4, v15);
  v20 = v19;
LABEL_16:
  v21 = [(LSClaimBinding *)self _initWithClaimRecord:v20 typeRecord:typeRecord bundleRecord:v15 provenance:binding->provenance];
LABEL_27:
  v26 = v21;

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

+ (id)_claimBindingsForBindingEvaluator:(const void *)evaluator error:(id *)error
{
  CurrentContext = _LSDatabaseContextGetCurrentContext(self);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v6 = +[_LSDServiceDomain defaultServiceDomain];
  v7 = LaunchServices::Database::Context::_get(&CurrentContext, v6, 0);

  if (v7)
  {
    v22 = 0;
    v23 = 0;
    LaunchServices::BindingEvaluator::evaluateBindings(evaluator, v7, &v22, error, &v20);
    if (v20 == v21)
    {
      v13 = 0;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = v20;
      for (i = v21; v9 != i; v9 += 56)
      {
        v11 = [LSClaimBinding alloc];
        v12 = [(LSClaimBinding *)v11 _initWithContext:v7 binding:v9 coreTypesBundleRecord:&v23 typeRecord:v22 error:0];
        if (v12)
        {
          [v8 addObject:v12];
        }
      }

      v13 = [v8 copy];
    }

    v28 = &v20;
    std::vector<LSBinding>::__destroy_vector::operator()[abi:nn200100](&v28);
  }

  else if (error)
  {
    v14 = +[_LSDServiceDomain defaultServiceDomain];
    v15 = LaunchServices::Database::Context::_get(&CurrentContext, v14, 0);

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v27;
    }

    v13 = 0;
    *error = v16;
  }

  else
  {
    v13 = 0;
  }

  if (CurrentContext && v26 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v17 = v25;
  CurrentContext = 0;
  v25 = 0;

  v26 = 0;
  v18 = v27;
  v27 = 0;

  return v13;
}

- (id)_initWithBindingEvaluator:(const void *)evaluator error:(id *)error
{
  CurrentContext = _LSDatabaseContextGetCurrentContext(self);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v7 = +[_LSDServiceDomain defaultServiceDomain];
  v8 = LaunchServices::Database::Context::_get(&CurrentContext, v7, 0);

  if (v8)
  {
    v19 = 0;
    v20 = 0;
    LaunchServices::BindingEvaluator::getBestBinding(v17, evaluator, v8, &v19, error);
    if (v18 == 1)
    {
      v9 = [(LSClaimBinding *)self _initWithContext:v8 binding:v17 coreTypesBundleRecord:&v20 typeRecord:v19 error:error];
    }

    else
    {

      v9 = 0;
    }

    if (v18 == 1)
    {
    }
  }

  else
  {

    if (error)
    {
      v10 = +[_LSDServiceDomain defaultServiceDomain];
      v11 = LaunchServices::Database::Context::_get(&CurrentContext, v10, 0);

      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = v24;
      }

      v9 = 0;
      *error = v12;
    }

    else
    {
      v9 = 0;
    }
  }

  v13 = v9;
  if (CurrentContext && v23 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v14 = v22;
  CurrentContext = 0;
  v22 = 0;

  v23 = 0;
  v15 = v24;
  v24 = 0;

  return v13;
}

- (void)detach
{
  [(LSRecord *)self->_claimRecord detach];
  [(LSRecord *)self->_typeRecord detach];
  bundleRecord = self->_bundleRecord;

  [(LSRecord *)bundleRecord detach];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_claimRecord forKey:@"claimRecord"];
  [coder encodeObject:self->_typeRecord forKey:@"typeRecord"];
  [coder encodeObject:self->_bundleRecord forKey:@"bundleRecord"];
  provenance = self->_provenance;

  [coder encodeInteger:provenance forKey:@"provenance"];
}

- (LSClaimBinding)initWithCoder:(id)coder
{
  v5 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"claimRecord"];
  v6 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"typeRecord"];
  v7 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleRecord"];
  v8 = -[LSClaimBinding _initWithClaimRecord:typeRecord:bundleRecord:provenance:](self, "_initWithClaimRecord:typeRecord:bundleRecord:provenance:", v5, v6, v7, [coder decodeIntegerForKey:@"provenance"]);

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(LSClaimRecord *)self->_claimRecord copyWithZone:?];
  v6 = [(LSRecord *)self->_typeRecord copyWithZone:zone];
  v7 = [(LSBundleRecord *)self->_bundleRecord copyWithZone:zone];
  v8 = [[LSClaimBinding allocWithZone:?]typeRecord:"_initWithClaimRecord:typeRecord:bundleRecord:provenance:" bundleRecord:v5 provenance:v6, v7, self->_provenance];

  return v8;
}

- (LSClaimBinding)initWithConfiguration:(id)configuration error:(id *)error
{
  v10 = *MEMORY[0x1E69E9840];
  if (configuration)
  {
    [configuration bindingEvaluatorForAuditToken:0];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v6 = [(LSClaimBinding *)self _initWithBindingEvaluator:v9 error:error];
  LaunchServices::BindingEvaluator::~BindingEvaluator(v9);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)claimBindingsWithConfiguration:(id)configuration error:(id *)error
{
  v10 = *MEMORY[0x1E69E9840];
  if (configuration)
  {
    [configuration bindingEvaluatorForAuditToken:0];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v6 = [self _claimBindingsForBindingEvaluator:v9 error:error];
  LaunchServices::BindingEvaluator::~BindingEvaluator(v9);
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end