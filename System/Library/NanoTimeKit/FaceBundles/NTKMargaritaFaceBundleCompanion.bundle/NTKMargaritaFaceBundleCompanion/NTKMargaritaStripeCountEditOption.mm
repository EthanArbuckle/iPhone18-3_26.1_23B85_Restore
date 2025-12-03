@interface NTKMargaritaStripeCountEditOption
+ (id)__allOrderedValues;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (unint64_t)count;
@end

@implementation NTKMargaritaStripeCountEditOption

- (unint64_t)count
{
  _maxStripeCount = [objc_opt_class() _maxStripeCount];
  result = [(NTKMargaritaStripeCountEditOption *)self _value];
  if (result >= _maxStripeCount)
  {
    return _maxStripeCount;
  }

  return result;
}

+ (id)__allOrderedValues
{
  [self _maxStripeCount];
  v2 = _EnumValueRange();
  reverseObjectEnumerator = [v2 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  device = [NSNumber numberWithUnsignedInteger:value, device];
  v5 = [device description];

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