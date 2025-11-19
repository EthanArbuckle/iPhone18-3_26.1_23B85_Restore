@interface HKStateOfMind
+ (id)stateOfMindWithDate:(id)a3 kind:(int64_t)a4 valence:(double)a5 labels:(id)a6 associations:(id)a7 context:(id)a8 metadata:(id)a9;
+ (id)stateOfMindWithDate:(id)a3 reflectiveInterval:(int64_t)a4 valence:(double)a5 labels:(id)a6 domains:(id)a7 context:(id)a8 metadata:(id)a9;
+ (id)validateArgumentsWithKind:(int64_t)a3 valence:(double)a4;
+ (id)validateArgumentsWithKind:(int64_t)a3 valence:(double)a4 labels:(id)a5 associations:(id)a6;
+ (id)validateAssociations:(id)a3;
+ (id)validateKind:(int64_t)a3;
+ (id)validateLabels:(id)a3;
+ (id)validateValence:(double)a3;
- (BOOL)hasAnyUnknownDomain;
- (BOOL)isEquivalent:(id)a3;
- (HKStateOfMind)initWithCoder:(id)a3;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)description;
- (id)sanitizedSample:(id)a3 forEntitlements:(id)a4;
- (int64_t)valenceClassification;
- (void)encodeWithCoder:(id)a3;
- (void)valenceClassification;
@end

@implementation HKStateOfMind

- (id)sanitizedSample:(id)a3 forEntitlements:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v5;
  v9 = v8;
  if (isKindOfClass)
  {
    v9 = v8;
    if (([v6 hasEntitlement:@"com.apple.private.healthkit"] & 1) == 0)
    {
      v9 = v8;
      if (([v6 hasPrivateAccessEntitlementWithIdentifier:@"mental-health"] & 1) == 0)
      {
        v10 = [v8 context];

        v9 = v8;
        if (v10)
        {
          v9 = [v8 _copyByArchiving];

          [v9 _setContext:0];
        }
      }
    }
  }

  return v9;
}

+ (id)stateOfMindWithDate:(id)a3 kind:(int64_t)a4 valence:(double)a5 labels:(id)a6 associations:(id)a7 context:(id)a8 metadata:(id)a9
{
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a3;
  v21 = +[(HKObjectType *)HKStateOfMindType];
  v22 = [v19 count];
  v30[0] = MEMORY[0x1E69E9820];
  if (v22)
  {
    v23 = v19;
  }

  else
  {
    v23 = 0;
  }

  v30[1] = 3221225472;
  v30[2] = __87__HKStateOfMind_stateOfMindWithDate_kind_valence_labels_associations_context_metadata___block_invoke;
  v30[3] = &unk_1E737E770;
  v35 = a5;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = a4;
  v29.receiver = a1;
  v29.super_class = &OBJC_METACLASS___HKStateOfMind;
  v24 = v18;
  v25 = v17;
  v26 = v16;
  v27 = objc_msgSendSuper2(&v29, sel__newSampleFromDatesWithType_startDate_endDate_device_metadata_config_, v21, v20, v20, 0, v23, v30);

  return v27;
}

void __87__HKStateOfMind_stateOfMindWithDate_kind_valence_labels_associations_context_metadata___block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 96) = *(a1 + 56);
  *(a2 + 104) = *(a1 + 64);
  objc_storeStrong((a2 + 112), *(a1 + 32));
  v5 = a2;
  objc_storeStrong(v5 + 15, *(a1 + 40));
  if ([*(a1 + 48) length])
  {
    v4 = *(a1 + 48);
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(v5 + 16, v4);
}

+ (id)stateOfMindWithDate:(id)a3 reflectiveInterval:(int64_t)a4 valence:(double)a5 labels:(id)a6 domains:(id)a7 context:(id)a8 metadata:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a6;
  v19 = a3;
  v20 = [a7 hk_map:&__block_literal_global_58];
  v21 = [a1 stateOfMindWithDate:v19 kind:a4 valence:v18 labels:v20 associations:v17 context:v16 metadata:a5];

  return v21;
}

uint64_t __96__HKStateOfMind_stateOfMindWithDate_reflectiveInterval_valence_labels_domains_context_metadata___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 integerValue];

  return [v2 numberWithInteger:v3];
}

- (int64_t)valenceClassification
{
  [(HKStateOfMind *)self valence];
  v5 = HKStateOfMindValenceClassificationForValence(v4);
  if (!v5)
  {
    [(HKStateOfMind *)a2 valenceClassification];
  }

  v6 = [v5 integerValue];

  return v6;
}

uint64_t __24__HKStateOfMind_domains__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 integerValue];

  return [v2 numberWithInteger:v3];
}

- (BOOL)hasAnyUnknownDomain
{
  v2 = [(HKStateOfMind *)self domains];
  v3 = [v2 hk_containsObjectPassingTest:&__block_literal_global_336];

  return v3;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  var0 = a3.var0;
  v13.receiver = self;
  v13.super_class = HKStateOfMind;
  v5 = [(HKSample *)&v13 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_opt_class();
    kind = self->_kind;
    valence = self->_valence;
    if ((var0 & 0x10) != 0)
    {
      [v8 validateArgumentsWithKind:kind valence:valence];
    }

    else
    {
      [v8 validateArgumentsWithKind:kind valence:self->_labels labels:self->_associations associations:valence];
    }
    v7 = ;
  }

  v11 = v7;

  return v11;
}

+ (id)validateArgumentsWithKind:(int64_t)a3 valence:(double)a4 labels:(id)a5 associations:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [objc_opt_class() validateArgumentsWithKind:a3 valence:a4];
  if (!v11)
  {
    v11 = [objc_opt_class() validateLabels:v9];
    if (!v11)
    {
      v11 = [objc_opt_class() validateAssociations:v10];
    }
  }

  v12 = v11;

  return v12;
}

+ (id)validateArgumentsWithKind:(int64_t)a3 valence:(double)a4
{
  v5 = [objc_opt_class() validateKind:a3];
  if (!v5)
  {
    v5 = [objc_opt_class() validateValence:a4];
  }

  return v5;
}

+ (id)validateKind:(int64_t)a3
{
  if ((a3 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Only momentary emotion and daily mood are supported."];
  }

  return v4;
}

+ (id)validateValence:(double)a3
{
  if (fabs(a3) <= 1.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Only valence values in the range [-1, +1] are supported."}];
  }

  return v4;
}

+ (id)validateLabels:(id)a3
{
  if ([a3 hk_containsObjectPassingTest:&__block_literal_global_351])
  {
    v4 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"One or more HKStateOfMind labels are not supported"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)validateAssociations:(id)a3
{
  if ([a3 hk_containsObjectPassingTest:&__block_literal_global_356])
  {
    v4 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"One or more HKStateOfMind associations are not supported"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11.receiver = self;
    v11.super_class = HKStateOfMind;
    if ([(HKSample *)&v11 isEquivalent:v4])
    {
      v5 = v4;
      v6 = v5;
      if (self->_kind != v5[12] || self->_valence != *(v5 + 13) || ![(NSArray *)self->_labels isEqual:v5[14]]|| ![(NSArray *)self->_associations isEqual:v6[15]])
      {
        goto LABEL_11;
      }

      context = self->_context;
      v8 = v6[16];
      if (context == v8)
      {
        v9 = 1;
        goto LABEL_12;
      }

      if (v8)
      {
        v9 = [(NSString *)context isEqual:?];
      }

      else
      {
LABEL_11:
        v9 = 0;
      }

LABEL_12:

      goto LABEL_13;
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (id)description
{
  v3 = [(NSArray *)self->_labels hk_map:&__block_literal_global_369];
  v4 = [(HKStateOfMind *)self domains];
  v5 = [v4 hk_map:&__block_literal_global_371];

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = [(HKSample *)self startDate];
  v9 = [(HKStateOfMind *)self reflectiveInterval];
  v10 = @"<unknown>";
  if (v9 == 2)
  {
    v10 = @"daily";
  }

  if (v9 == 1)
  {
    v10 = @"momentary";
  }

  v11 = MEMORY[0x1E696AD98];
  valence = self->_valence;
  v13 = v10;
  v14 = [v11 numberWithDouble:valence];
  v15 = [v6 stringWithFormat:@"<%@:%p date: %@, kind: %@, valence: %@, labels: %@, associations: %@>", v7, self, v8, v13, v14, v3, v5, 0];

  return v15;
}

__CFString *__28__HKStateOfMind_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];

  return NSStringFromHKStateOfMindLabel(v2);
}

__CFString *__28__HKStateOfMind_description__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];

  return NSStringFromHKStateOfMindDomain(v2);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = HKStateOfMind;
  [(HKSample *)&v6 encodeWithCoder:v4];
  [v4 encodeInteger:self->_kind forKey:@"ReflectiveInterval"];
  [v4 encodeDouble:@"Valence" forKey:self->_valence];
  [v4 encodeObject:self->_labels forKey:@"Labels"];
  [v4 encodeObject:self->_associations forKey:@"Domains"];
  context = self->_context;
  if (context)
  {
    [v4 encodeObject:context forKey:@"Context"];
  }
}

- (HKStateOfMind)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HKStateOfMind;
  v5 = [(HKSample *)&v16 initWithCoder:v4];
  if (v5)
  {
    v5->_kind = [v4 decodeIntegerForKey:@"ReflectiveInterval"];
    [v4 decodeDoubleForKey:@"Valence"];
    v5->_valence = v6;
    v7 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"Labels"];
    labels = v5->_labels;
    v5->_labels = v8;

    v10 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"Domains"];
    associations = v5->_associations;
    v5->_associations = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Context"];
    context = v5->_context;
    v5->_context = v13;
  }

  return v5;
}

- (void)valenceClassification
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKStateOfMind.m" lineNumber:744 description:@"Initialized state of mind objects should always hold validated valence values"];
}

@end