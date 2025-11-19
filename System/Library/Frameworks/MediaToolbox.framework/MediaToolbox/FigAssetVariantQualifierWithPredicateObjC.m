@interface FigAssetVariantQualifierWithPredicateObjC
- (FigAssetVariantQualifierWithPredicateObjC)initWithCoder:(id)a3;
- (FigAssetVariantQualifierWithPredicateObjC)initWithPredicate:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FigAssetVariantQualifierWithPredicateObjC

- (FigAssetVariantQualifierWithPredicateObjC)initWithPredicate:(id)a3
{
  v6.receiver = self;
  v6.super_class = FigAssetVariantQualifierWithPredicateObjC;
  v4 = [(FigAssetVariantQualifierWithPredicateObjC *)&v6 init];
  if (v4)
  {
    v4->_predicate = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigAssetVariantQualifierWithPredicateObjC;
  [(FigAssetVariantQualifierWithPredicateObjC *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FigAssetVariantQualifierWithPredicateObjC;
  [(FigAssetVariantQualifierObjC *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_predicate forKey:@"predicate"];
}

- (FigAssetVariantQualifierWithPredicateObjC)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = FigAssetVariantQualifierWithPredicateObjC;
  v4 = [(FigAssetVariantQualifierObjC *)&v6 initWithCoder:?];
  FigLoadAVFDylib();
  if (v4)
  {
    v4->_predicate = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
  }

  return v4;
}

@end