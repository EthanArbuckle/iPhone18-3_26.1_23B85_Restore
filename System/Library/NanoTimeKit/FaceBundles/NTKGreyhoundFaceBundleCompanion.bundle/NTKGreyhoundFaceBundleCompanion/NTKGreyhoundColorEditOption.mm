@interface NTKGreyhoundColorEditOption
+ (id)_orderedValuesForDevice:(id)device;
@end

@implementation NTKGreyhoundColorEditOption

+ (id)_orderedValuesForDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5E6C;
  v5[3] = &unk_145A8;
  v5[4] = self;
  v3 = sub_5E6C(v5, device);

  return v3;
}

@end