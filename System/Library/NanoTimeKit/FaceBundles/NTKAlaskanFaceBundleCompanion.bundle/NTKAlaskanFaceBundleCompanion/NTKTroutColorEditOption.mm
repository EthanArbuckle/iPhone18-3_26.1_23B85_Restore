@interface NTKTroutColorEditOption
+ (id)_orderedValuesForDevice:(id)device;
+ (id)curatedColorValuesForDevice:(id)device;
@end

@implementation NTKTroutColorEditOption

+ (id)curatedColorValuesForDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___NTKTroutColorEditOption;
  v3 = objc_msgSendSuper2(&v6, "curatedColorValuesForDevice:", device);
  v4 = [v3 mutableCopy];

  [v4 removeObject:&off_3AA70];

  return v4;
}

+ (id)_orderedValuesForDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_20780;
  v5[3] = &unk_38A28;
  v5[4] = self;
  v3 = sub_20780(v5, device);

  return v3;
}

@end