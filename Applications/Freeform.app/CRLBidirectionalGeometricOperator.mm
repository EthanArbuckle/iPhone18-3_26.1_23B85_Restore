@interface CRLBidirectionalGeometricOperator
- (CRLBidirectionalGeometricOperator)init;
- (id)valueForKey:(id)a3 swapped:(BOOL)a4;
- (void)executeBidirectionalOperation:(id)a3;
- (void)setOrientationDependentValueForKey:(id)a3 withStandardValue:(id)a4 andSwappedValue:(id)a5;
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

- (void)setOrientationDependentValueForKey:(id)a3 withStandardValue:(id)a4 andSwappedValue:(id)a5
{
  mStandardValues = self->mStandardValues;
  v9 = a5;
  v10 = a3;
  [(NSMutableDictionary *)mStandardValues setValue:a4 forKey:v10];
  [(NSMutableDictionary *)self->mSwappedValues setValue:v9 forKey:v10];
}

- (void)executeBidirectionalOperation:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004642D4;
  v4[3] = &unk_101864D40;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_apply(2uLL, 0, v4);
}

- (id)valueForKey:(id)a3 swapped:(BOOL)a4
{
  v4 = 8;
  if (a4)
  {
    v4 = 16;
  }

  v5 = [*(&self->super.isa + v4) valueForKey:a3];

  return v5;
}

@end