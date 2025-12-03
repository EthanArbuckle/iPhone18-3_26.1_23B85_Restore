@interface FigAssetVariantQualifierWithPredicateObjC
- (FigAssetVariantQualifierWithPredicateObjC)initWithCoder:(id)coder;
- (FigAssetVariantQualifierWithPredicateObjC)initWithPredicate:(id)predicate;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FigAssetVariantQualifierWithPredicateObjC

- (FigAssetVariantQualifierWithPredicateObjC)initWithPredicate:(id)predicate
{
  v6.receiver = self;
  v6.super_class = FigAssetVariantQualifierWithPredicateObjC;
  v4 = [(FigAssetVariantQualifierWithPredicateObjC *)&v6 init];
  if (v4)
  {
    v4->_predicate = predicate;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigAssetVariantQualifierWithPredicateObjC;
  [(FigAssetVariantQualifierWithPredicateObjC *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FigAssetVariantQualifierWithPredicateObjC;
  [(FigAssetVariantQualifierObjC *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_predicate forKey:@"predicate"];
}

- (FigAssetVariantQualifierWithPredicateObjC)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FigAssetVariantQualifierWithPredicateObjC;
  v4 = [(FigAssetVariantQualifierObjC *)&v6 initWithCoder:?];
  FigLoadAVFDylib();
  if (v4)
  {
    v4->_predicate = [coder decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
  }

  return v4;
}

@end