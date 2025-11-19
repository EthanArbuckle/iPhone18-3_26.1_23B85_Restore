@interface NTKNumeralsAnalogFaceColorEditOption
+ (id)__orderedValuesForDevice:(id)a3;
+ (id)_orderedValuesForDevice:(id)a3;
@end

@implementation NTKNumeralsAnalogFaceColorEditOption

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_F8C;
  v5[3] = &unk_103C8;
  v5[4] = a1;
  v3 = sub_F8C(v5, a3);

  return v3;
}

+ (id)__orderedValuesForDevice:(id)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___NTKNumeralsAnalogFaceColorEditOption;
  v3 = objc_msgSendSuper2(&v7, "__orderedValuesForDevice:", a3);
  v4 = [v3 mutableCopy];

  v5 = [v4 indexOfObject:&off_10E28];
  [v4 removeObject:&off_10E28];
  [v4 insertObject:&off_10E40 atIndex:v5];
  [v4 insertObject:&off_10E58 atIndex:{objc_msgSend(v4, "indexOfObject:", &off_10E40)}];

  return v4;
}

@end