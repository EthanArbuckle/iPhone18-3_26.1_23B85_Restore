@interface CCUICAPackageDescription
+ (id)packageDescriptionForActivity:(id)a3;
@end

@implementation CCUICAPackageDescription

+ (id)packageDescriptionForActivity:(id)a3
{
  v3 = a3;
  v4 = FCUIPackageNameForActivity();
  if ([v4 length])
  {
    v5 = FCUIBundle();
    v6 = [CCUICAPackageDescription descriptionForPackageNamed:v4 inBundle:v5];

    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_3CF0;
    v14 = &unk_C500;
    v15 = v3;
    v7 = objc_retainBlock(&v11);
    v16 = kFCUIPackageViewStateOn;
    v8 = [v7 copy];
    v17 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v6 setStateUpdateHandlers:v9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end