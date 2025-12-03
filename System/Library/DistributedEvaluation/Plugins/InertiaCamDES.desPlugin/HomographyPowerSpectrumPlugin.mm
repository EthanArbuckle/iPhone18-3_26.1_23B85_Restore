@interface HomographyPowerSpectrumPlugin
- (id)evaluateRecipe:(id)recipe recordInfo:(id)info recordData:(id)data attachments:(id)attachments error:(id *)error;
@end

@implementation HomographyPowerSpectrumPlugin

- (id)evaluateRecipe:(id)recipe recordInfo:(id)info recordData:(id)data attachments:(id)attachments error:(id *)error
{
  dataCopy = data;
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v18[2] = objc_opt_class();
  v18[3] = objc_opt_class();
  v18[4] = objc_opt_class();
  v18[5] = objc_opt_class();
  v18[6] = objc_opt_class();
  v18[7] = objc_opt_class();
  v8 = [NSArray arrayWithObjects:v18 count:8];
  v9 = [NSSet setWithArray:v8];
  v15 = 0;
  v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v9 fromData:dataCopy error:&v15];

  v11 = v15;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &__NSDictionary0__struct;
  }

  if ([NSJSONSerialization isValidJSONObject:v12])
  {
    v16 = @"homography-data";
    v17 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  }

  else
  {
    v13 = &off_4130;
  }

  return v13;
}

@end