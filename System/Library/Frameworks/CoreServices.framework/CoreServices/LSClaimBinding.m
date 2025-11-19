@interface LSClaimBinding
+ (id)_claimBindingsForBindingEvaluator:(const void *)a3 error:(id *)a4;
+ (id)claimBindingsWithConfiguration:(id)a3 error:(id *)a4;
+ (id)claimBindingsWithTypeIdentifier:(id)a3 error:(id *)a4;
+ (id)claimBindingsWithURL:(id)a3 error:(id *)a4;
- (LSClaimBinding)initWithCoder:(id)a3;
- (LSClaimBinding)initWithConfiguration:(id)a3 error:(id *)a4;
- (LSClaimBinding)initWithTypeIdentifier:(id)a3 error:(id *)a4;
- (LSClaimBinding)initWithURL:(id)a3 error:(id *)a4;
- (id)_initWithBindingEvaluator:(const void *)a3 error:(id *)a4;
- (id)_initWithClaimRecord:(id)a3 typeRecord:(id)a4 bundleRecord:(id)a5 provenance:(unint64_t)a6;
- (id)_initWithContext:(LSContext *)a3 binding:(const LSBinding *)a4 coreTypesBundleRecord:(id *)a5 typeRecord:(id)a6 error:(id *)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)detach;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LSClaimBinding

- (LSClaimBinding)initWithTypeIdentifier:(id)a3 error:(id *)a4
{
  v10 = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluator::CreateWithUTI(a3, 0, v9);
  v6 = [(LSClaimBinding *)self _initWithBindingEvaluator:v9 error:a4];
  LaunchServices::BindingEvaluator::~BindingEvaluator(v9);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)claimBindingsWithTypeIdentifier:(id)a3 error:(id *)a4
{
  v10 = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluator::CreateWithUTI(a3, 0, v9);
  v6 = [a1 _claimBindingsForBindingEvaluator:v9 error:a4];
  LaunchServices::BindingEvaluator::~BindingEvaluator(v9);
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (LSClaimBinding)initWithURL:(id)a3 error:(id *)a4
{
  v9[22] = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluator::CreateWithURL(a3, v9);
  v6 = [(LSClaimBinding *)self _initWithBindingEvaluator:v9 error:a4];
  LaunchServices::BindingEvaluator::~BindingEvaluator(v9);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)claimBindingsWithURL:(id)a3 error:(id *)a4
{
  v9[22] = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluator::CreateWithURL(a3, v9);
  v6 = [a1 _claimBindingsForBindingEvaluator:v9 error:a4];
  LaunchServices::BindingEvaluator::~BindingEvaluator(v9);
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_initWithClaimRecord:(id)a3 typeRecord:(id)a4 bundleRecord:(id)a5 provenance:(unint64_t)a6
{
  v13.receiver = self;
  v13.super_class = LSClaimBinding;
  v10 = [(LSClaimBinding *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_claimRecord, a3);
    objc_storeStrong(&v11->_typeRecord, a4);
    objc_storeStrong(&v11->_bundleRecord, a5);
    v11->_provenance = a6;
  }

  return v11;
}

- (id)_initWithContext:(LSContext *)a3 binding:(const LSBinding *)a4 coreTypesBundleRecord:(id *)a5 typeRecord:(id)a6 error:(id *)a7
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"LSClaimRecord.mm" lineNumber:252 description:{@"Invalid parameter not satisfying: %@", @"binding != NULL"}];

    if (!self)
    {
      goto LABEL_23;
    }

    goto LABEL_4;
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"LSClaimRecord.mm" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"ctx != NULL"}];

  if (!a4)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (!self)
  {
LABEL_23:

    if (a7)
    {
      v31 = *MEMORY[0x1E696A278];
      v32[0] = @"The claim record was bound to an unknown bundle record.";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      *a7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10817, v25, "[LSClaimBinding _initWithContext:binding:coreTypesBundleRecord:typeRecord:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSClaimRecord.mm", 292);
    }

    v20 = 0;
    v15 = 0;
    goto LABEL_26;
  }

LABEL_4:
  bundleData = a4->bundleData;
  if (!bundleData)
  {
    goto LABEL_23;
  }

  if (bundleData->_clas == 11)
  {
    v15 = *a5;
    if (v15)
    {
      goto LABEL_12;
    }

    v16 = +[LSBundleRecord coreTypesBundleRecord];
    objc_storeStrong(a5, v16);
  }

  else
  {
    v17 = objc_opt_class();
    if (a4->bundleData->_clas == 2)
    {
      v17 = objc_opt_class();
    }

    v16 = [[v17 alloc] _initWithNode:0 bundleIdentifier:0 context:a3 tableID:*(-[_LSDatabase schema](a3->db) + 4) unitID:a4->bundle bundleBaseData:a4->bundleData error:a7];
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
  if (!a4->claimData)
  {
    v20 = 0;
    goto LABEL_16;
  }

  v18 = [(LSRecord *)[LSClaimRecord alloc] _initWithContext:a3 tableID:*([(_LSDatabase *)a3->db schema]+ 8) unitID:a4->claim];
  v19 = v18;
  if (!v18)
  {

    if (a7)
    {
      v29 = *MEMORY[0x1E696A278];
      v30 = @"Unable to find this claim record in the Launch Services database.";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      *a7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, v22, "[LSClaimBinding _initWithContext:binding:coreTypesBundleRecord:typeRecord:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSClaimRecord.mm", 305);
    }

    goto LABEL_20;
  }

  objc_storeWeak(v18 + 4, v15);
  v20 = v19;
LABEL_16:
  v21 = [(LSClaimBinding *)self _initWithClaimRecord:v20 typeRecord:a6 bundleRecord:v15 provenance:a4->provenance];
LABEL_27:
  v26 = v21;

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

+ (id)_claimBindingsForBindingEvaluator:(const void *)a3 error:(id *)a4
{
  CurrentContext = _LSDatabaseContextGetCurrentContext(a1);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v6 = +[_LSDServiceDomain defaultServiceDomain];
  v7 = LaunchServices::Database::Context::_get(&CurrentContext, v6, 0);

  if (v7)
  {
    v22 = 0;
    v23 = 0;
    LaunchServices::BindingEvaluator::evaluateBindings(a3, v7, &v22, a4, &v20);
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

  else if (a4)
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
    *a4 = v16;
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

- (id)_initWithBindingEvaluator:(const void *)a3 error:(id *)a4
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
    LaunchServices::BindingEvaluator::getBestBinding(v17, a3, v8, &v19, a4);
    if (v18 == 1)
    {
      v9 = [(LSClaimBinding *)self _initWithContext:v8 binding:v17 coreTypesBundleRecord:&v20 typeRecord:v19 error:a4];
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

    if (a4)
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
      *a4 = v12;
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

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_claimRecord forKey:@"claimRecord"];
  [a3 encodeObject:self->_typeRecord forKey:@"typeRecord"];
  [a3 encodeObject:self->_bundleRecord forKey:@"bundleRecord"];
  provenance = self->_provenance;

  [a3 encodeInteger:provenance forKey:@"provenance"];
}

- (LSClaimBinding)initWithCoder:(id)a3
{
  v5 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"claimRecord"];
  v6 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"typeRecord"];
  v7 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleRecord"];
  v8 = -[LSClaimBinding _initWithClaimRecord:typeRecord:bundleRecord:provenance:](self, "_initWithClaimRecord:typeRecord:bundleRecord:provenance:", v5, v6, v7, [a3 decodeIntegerForKey:@"provenance"]);

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(LSClaimRecord *)self->_claimRecord copyWithZone:?];
  v6 = [(LSRecord *)self->_typeRecord copyWithZone:a3];
  v7 = [(LSBundleRecord *)self->_bundleRecord copyWithZone:a3];
  v8 = [[LSClaimBinding allocWithZone:?]typeRecord:"_initWithClaimRecord:typeRecord:bundleRecord:provenance:" bundleRecord:v5 provenance:v6, v7, self->_provenance];

  return v8;
}

- (LSClaimBinding)initWithConfiguration:(id)a3 error:(id *)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [a3 bindingEvaluatorForAuditToken:0];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v6 = [(LSClaimBinding *)self _initWithBindingEvaluator:v9 error:a4];
  LaunchServices::BindingEvaluator::~BindingEvaluator(v9);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)claimBindingsWithConfiguration:(id)a3 error:(id *)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [a3 bindingEvaluatorForAuditToken:0];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v6 = [a1 _claimBindingsForBindingEvaluator:v9 error:a4];
  LaunchServices::BindingEvaluator::~BindingEvaluator(v9);
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end