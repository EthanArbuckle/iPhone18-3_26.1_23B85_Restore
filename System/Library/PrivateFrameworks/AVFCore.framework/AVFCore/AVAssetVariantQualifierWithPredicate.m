@interface AVAssetVariantQualifierWithPredicate
- (AVAssetVariantQualifierWithPredicate)initWithCoder:(id)a3;
- (AVAssetVariantQualifierWithPredicate)initWithFigAssetVariantQualifierWithPredicate:(id)a3;
- (BOOL)_validatePredicate:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVAssetVariantQualifierWithPredicate

- (BOOL)_validatePredicate:(id)a3 error:(id *)a4
{
  v9 = 0;
  v5 = [objc_alloc(MEMORY[0x1E6970A98]) initWithPredicate:a3];
  if (!v5)
  {
    v7 = 0;
    if (!a4)
    {
      return v7;
    }

    goto LABEL_3;
  }

  v6 = v5;
  v7 = [v5 validateWithError:&v9];

  if (a4)
  {
LABEL_3:
    *a4 = v9;
  }

  return v7;
}

- (AVAssetVariantQualifierWithPredicate)initWithFigAssetVariantQualifierWithPredicate:(id)a3
{
  v18.receiver = self;
  v18.super_class = AVAssetVariantQualifierWithPredicate;
  v5 = [(AVAssetVariantQualifier *)&v18 initWithVariant:0];
  v17 = 0;
  if (v5)
  {
    if (!-[AVAssetVariantQualifierWithPredicate _validatePredicate:error:](v5, "_validatePredicate:error:", [a3 _predicate], &v17))
    {
      v7 = v5;
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v10 = [objc_msgSend(a3 "_predicate")];
      v16 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"one of the constituent parts of %@ are not supported by AVAssetVariantQualifier error:%@", v11, v12, v13, v14, v15, v10), 0}];
      objc_exception_throw(v16);
    }

    v5->_figAssetVariantQualifier = a3;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVAssetVariantQualifierWithPredicate alloc];
  figAssetVariantQualifier = self->_figAssetVariantQualifier;

  return [(AVAssetVariantQualifierWithPredicate *)v4 initWithFigAssetVariantQualifierWithPredicate:figAssetVariantQualifier];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetVariantQualifierWithPredicate;
  [(AVAssetVariantQualifier *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVAssetVariantQualifierWithPredicate;
  [(AVAssetVariantQualifier *)&v12 encodeWithCoder:a3];
  [a3 encodeObject:self->_figAssetVariantQualifier forKey:@"predicate"];
}

- (AVAssetVariantQualifierWithPredicate)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v9 = self;
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v10, v11, v12, v13, v14, v16.receiver), 0}];
    objc_exception_throw(v15);
  }

  v16.receiver = self;
  v16.super_class = AVAssetVariantQualifierWithPredicate;
  v6 = [(AVAssetVariantQualifier *)&v16 initWithCoder:a3];
  if (v6)
  {
    v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    v6->_figAssetVariantQualifier = v7;
    if (v7)
    {
      if ([(AVAssetVariantQualifierWithPredicate *)v6 _validatePredicate:[(FigAssetVariantQualifierWithPredicateObjC *)v7 _predicate] error:0])
      {
        [-[FigAssetVariantQualifierWithPredicateObjC _predicate](v6->_figAssetVariantQualifier "_predicate")];
      }
    }
  }

  return v6;
}

@end