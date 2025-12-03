@interface NTKSharkColorEditOption
+ (id)_orderedValuesForDevice:(id)device;
@end

@implementation NTKSharkColorEditOption

+ (id)_orderedValuesForDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_DDB4;
  v5[3] = &unk_38A28;
  v5[4] = self;
  v3 = sub_DDB4(v5, device);

  return v3;
}

@end