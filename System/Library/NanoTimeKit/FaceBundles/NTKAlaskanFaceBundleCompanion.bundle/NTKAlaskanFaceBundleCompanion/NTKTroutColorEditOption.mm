@interface NTKTroutColorEditOption
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)curatedColorValuesForDevice:(id)a3;
@end

@implementation NTKTroutColorEditOption

+ (id)curatedColorValuesForDevice:(id)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___NTKTroutColorEditOption;
  v3 = objc_msgSendSuper2(&v6, "curatedColorValuesForDevice:", a3);
  v4 = [v3 mutableCopy];

  [v4 removeObject:&off_3AA70];

  return v4;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_20780;
  v5[3] = &unk_38A28;
  v5[4] = a1;
  v3 = sub_20780(v5, a3);

  return v3;
}

@end