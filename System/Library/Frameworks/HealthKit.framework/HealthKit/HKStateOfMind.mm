@interface HKStateOfMind
+ (id)stateOfMindWithDate:(id)date kind:(int64_t)kind valence:(double)valence labels:(id)labels associations:(id)associations context:(id)context metadata:(id)metadata;
+ (id)stateOfMindWithDate:(id)date reflectiveInterval:(int64_t)interval valence:(double)valence labels:(id)labels domains:(id)domains context:(id)context metadata:(id)metadata;
+ (id)validateArgumentsWithKind:(int64_t)kind valence:(double)valence;
+ (id)validateArgumentsWithKind:(int64_t)kind valence:(double)valence labels:(id)labels associations:(id)associations;
+ (id)validateAssociations:(id)associations;
+ (id)validateKind:(int64_t)kind;
+ (id)validateLabels:(id)labels;
+ (id)validateValence:(double)valence;
- (BOOL)hasAnyUnknownDomain;
- (BOOL)isEquivalent:(id)equivalent;
- (HKStateOfMind)initWithCoder:(id)coder;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)description;
- (id)sanitizedSample:(id)sample forEntitlements:(id)entitlements;
- (int64_t)valenceClassification;
- (void)encodeWithCoder:(id)coder;
- (void)valenceClassification;
@end

@implementation HKStateOfMind

- (id)sanitizedSample:(id)sample forEntitlements:(id)entitlements
{
  sampleCopy = sample;
  entitlementsCopy = entitlements;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = sampleCopy;
  _copyByArchiving = v8;
  if (isKindOfClass)
  {
    _copyByArchiving = v8;
    if (([entitlementsCopy hasEntitlement:@"com.apple.private.healthkit"] & 1) == 0)
    {
      _copyByArchiving = v8;
      if (([entitlementsCopy hasPrivateAccessEntitlementWithIdentifier:@"mental-health"] & 1) == 0)
      {
        context = [v8 context];

        _copyByArchiving = v8;
        if (context)
        {
          _copyByArchiving = [v8 _copyByArchiving];

          [_copyByArchiving _setContext:0];
        }
      }
    }
  }

  return _copyByArchiving;
}

+ (id)stateOfMindWithDate:(id)date kind:(int64_t)kind valence:(double)valence labels:(id)labels associations:(id)associations context:(id)context metadata:(id)metadata
{
  labelsCopy = labels;
  associationsCopy = associations;
  contextCopy = context;
  metadataCopy = metadata;
  dateCopy = date;
  v21 = +[(HKObjectType *)HKStateOfMindType];
  v22 = [metadataCopy count];
  v30[0] = MEMORY[0x1E69E9820];
  if (v22)
  {
    v23 = metadataCopy;
  }

  else
  {
    v23 = 0;
  }

  v30[1] = 3221225472;
  v30[2] = __87__HKStateOfMind_stateOfMindWithDate_kind_valence_labels_associations_context_metadata___block_invoke;
  v30[3] = &unk_1E737E770;
  valenceCopy = valence;
  v31 = labelsCopy;
  v32 = associationsCopy;
  v33 = contextCopy;
  kindCopy = kind;
  v29.receiver = self;
  v29.super_class = &OBJC_METACLASS___HKStateOfMind;
  v24 = contextCopy;
  v25 = associationsCopy;
  v26 = labelsCopy;
  v27 = objc_msgSendSuper2(&v29, sel__newSampleFromDatesWithType_startDate_endDate_device_metadata_config_, v21, dateCopy, dateCopy, 0, v23, v30);

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

+ (id)stateOfMindWithDate:(id)date reflectiveInterval:(int64_t)interval valence:(double)valence labels:(id)labels domains:(id)domains context:(id)context metadata:(id)metadata
{
  metadataCopy = metadata;
  contextCopy = context;
  labelsCopy = labels;
  dateCopy = date;
  v20 = [domains hk_map:&__block_literal_global_58];
  v21 = [self stateOfMindWithDate:dateCopy kind:interval valence:labelsCopy labels:v20 associations:contextCopy context:metadataCopy metadata:valence];

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

  integerValue = [v5 integerValue];

  return integerValue;
}

uint64_t __24__HKStateOfMind_domains__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 integerValue];

  return [v2 numberWithInteger:v3];
}

- (BOOL)hasAnyUnknownDomain
{
  domains = [(HKStateOfMind *)self domains];
  v3 = [domains hk_containsObjectPassingTest:&__block_literal_global_336];

  return v3;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  var0 = configuration.var0;
  v13.receiver = self;
  v13.super_class = HKStateOfMind;
  v5 = [(HKSample *)&v13 _validateWithConfiguration:configuration.var0, configuration.var1];
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

+ (id)validateArgumentsWithKind:(int64_t)kind valence:(double)valence labels:(id)labels associations:(id)associations
{
  labelsCopy = labels;
  associationsCopy = associations;
  v11 = [objc_opt_class() validateArgumentsWithKind:kind valence:valence];
  if (!v11)
  {
    v11 = [objc_opt_class() validateLabels:labelsCopy];
    if (!v11)
    {
      v11 = [objc_opt_class() validateAssociations:associationsCopy];
    }
  }

  v12 = v11;

  return v12;
}

+ (id)validateArgumentsWithKind:(int64_t)kind valence:(double)valence
{
  v5 = [objc_opt_class() validateKind:kind];
  if (!v5)
  {
    v5 = [objc_opt_class() validateValence:valence];
  }

  return v5;
}

+ (id)validateKind:(int64_t)kind
{
  if ((kind - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Only momentary emotion and daily mood are supported."];
  }

  return v4;
}

+ (id)validateValence:(double)valence
{
  if (fabs(valence) <= 1.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Only valence values in the range [-1, +1] are supported."}];
  }

  return v4;
}

+ (id)validateLabels:(id)labels
{
  if ([labels hk_containsObjectPassingTest:&__block_literal_global_351])
  {
    v4 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"One or more HKStateOfMind labels are not supported"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)validateAssociations:(id)associations
{
  if ([associations hk_containsObjectPassingTest:&__block_literal_global_356])
  {
    v4 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"One or more HKStateOfMind associations are not supported"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11.receiver = self;
    v11.super_class = HKStateOfMind;
    if ([(HKSample *)&v11 isEquivalent:equivalentCopy])
    {
      v5 = equivalentCopy;
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
  domains = [(HKStateOfMind *)self domains];
  v5 = [domains hk_map:&__block_literal_global_371];

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  startDate = [(HKSample *)self startDate];
  reflectiveInterval = [(HKStateOfMind *)self reflectiveInterval];
  v10 = @"<unknown>";
  if (reflectiveInterval == 2)
  {
    v10 = @"daily";
  }

  if (reflectiveInterval == 1)
  {
    v10 = @"momentary";
  }

  v11 = MEMORY[0x1E696AD98];
  valence = self->_valence;
  v13 = v10;
  v14 = [v11 numberWithDouble:valence];
  v15 = [v6 stringWithFormat:@"<%@:%p date: %@, kind: %@, valence: %@, labels: %@, associations: %@>", v7, self, startDate, v13, v14, v3, v5, 0];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = HKStateOfMind;
  [(HKSample *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_kind forKey:@"ReflectiveInterval"];
  [coderCopy encodeDouble:@"Valence" forKey:self->_valence];
  [coderCopy encodeObject:self->_labels forKey:@"Labels"];
  [coderCopy encodeObject:self->_associations forKey:@"Domains"];
  context = self->_context;
  if (context)
  {
    [coderCopy encodeObject:context forKey:@"Context"];
  }
}

- (HKStateOfMind)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HKStateOfMind;
  v5 = [(HKSample *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_kind = [coderCopy decodeIntegerForKey:@"ReflectiveInterval"];
    [coderCopy decodeDoubleForKey:@"Valence"];
    v5->_valence = v6;
    v7 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"Labels"];
    labels = v5->_labels;
    v5->_labels = v8;

    v10 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"Domains"];
    associations = v5->_associations;
    v5->_associations = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Context"];
    context = v5->_context;
    v5->_context = v13;
  }

  return v5;
}

- (void)valenceClassification
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HKStateOfMind.m" lineNumber:744 description:@"Initialized state of mind objects should always hold validated valence values"];
}

@end