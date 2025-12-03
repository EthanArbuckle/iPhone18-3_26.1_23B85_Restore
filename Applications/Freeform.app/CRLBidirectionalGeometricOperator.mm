@interface CRLBidirectionalGeometricOperator
- (CRLBidirectionalGeometricOperator)init;
- (id)valueForKey:(id)key swapped:(BOOL)swapped;
- (void)executeBidirectionalOperation:(id)operation;
- (void)setOrientationDependentValueForKey:(id)key withStandardValue:(id)value andSwappedValue:(id)swappedValue;
@end

@implementation CRLBidirectionalGeometricOperator

- (CRLBidirectionalGeometricOperator)init
{
  v12.receiver = self;
  v12.super_class = CRLBidirectionalGeometricOperator;
  v2 = [(CRLBidirectionalGeometricOperator *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    mStandardValues = v2->mStandardValues;
    v2->mStandardValues = v3;

    v5 = v2->mStandardValues;
    v6 = [NSNumber numberWithBool:0];
    [(NSMutableDictionary *)v5 setValue:v6 forKey:@"kCRLBidirectionalGeometricOperatorValuesAreSwapped"];

    v7 = objc_alloc_init(NSMutableDictionary);
    mSwappedValues = v2->mSwappedValues;
    v2->mSwappedValues = v7;

    v9 = v2->mSwappedValues;
    v10 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)v9 setValue:v10 forKey:@"kCRLBidirectionalGeometricOperatorValuesAreSwapped"];
  }

  return v2;
}

- (void)setOrientationDependentValueForKey:(id)key withStandardValue:(id)value andSwappedValue:(id)swappedValue
{
  mStandardValues = self->mStandardValues;
  swappedValueCopy = swappedValue;
  keyCopy = key;
  [(NSMutableDictionary *)mStandardValues setValue:value forKey:keyCopy];
  [(NSMutableDictionary *)self->mSwappedValues setValue:swappedValueCopy forKey:keyCopy];
}

- (void)executeBidirectionalOperation:(id)operation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004642D4;
  v4[3] = &unk_101864D40;
  v4[4] = self;
  operationCopy = operation;
  v3 = operationCopy;
  dispatch_apply(2uLL, 0, v4);
}

- (id)valueForKey:(id)key swapped:(BOOL)swapped
{
  v4 = 8;
  if (swapped)
  {
    v4 = 16;
  }

  v5 = [*(&self->super.isa + v4) valueForKey:key];

  return v5;
}

@end