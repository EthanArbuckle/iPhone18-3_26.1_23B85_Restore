@interface NTKMargaritaStripeCountEditOption
+ (id)__allOrderedValues;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (unint64_t)count;
@end

@implementation NTKMargaritaStripeCountEditOption

- (unint64_t)count
{
  v3 = [objc_opt_class() _maxStripeCount];
  result = [(NTKMargaritaStripeCountEditOption *)self _value];
  if (result >= v3)
  {
    return v3;
  }

  return result;
}

+ (id)__allOrderedValues
{
  [a1 _maxStripeCount];
  v2 = _EnumValueRange();
  v3 = [v2 reverseObjectEnumerator];
  v4 = [v3 allObjects];

  return v4;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = [NSNumber numberWithUnsignedInteger:a3, a4];
  v5 = [v4 description];

  return v5;
}

- (id)_valueToFaceBundleStringDict
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_90C8;
  block[3] = &unk_14540;
  block[4] = self;
  if (qword_1AC80 != -1)
  {
    dispatch_once(&qword_1AC80, block);
  }

  return qword_1AC78;
}

@end