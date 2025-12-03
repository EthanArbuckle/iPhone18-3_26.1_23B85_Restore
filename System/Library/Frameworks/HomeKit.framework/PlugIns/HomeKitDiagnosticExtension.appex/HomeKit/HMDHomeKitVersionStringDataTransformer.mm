@interface HMDHomeKitVersionStringDataTransformer
+ (id)reverseTransformedValue:(id)value error:(id *)error;
+ (id)transformedValue:(id)value error:(id *)error;
@end

@implementation HMDHomeKitVersionStringDataTransformer

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [[NSString alloc] initWithData:valueCopy encoding:4];
  if (v6)
  {
    v7 = [[HMDHomeKitVersion alloc] initWithString:v6];
    if (v7)
    {
      valueCopy = v7;
      v9 = valueCopy;
    }

    else
    {
      if (error)
      {
        v10 = [NSString stringWithFormat:@"String isn't valid as HMDHomeKitVersion: %@", v6];
        *error = [NSError hmfErrorWithCode:3 reason:v10];
      }

      valueCopy = 0;
      v9 = 0;
    }

    goto LABEL_9;
  }

  if (error)
  {
    valueCopy = [NSString stringWithFormat:@"Data is not UTF8: %@", valueCopy];
    [NSError hmfErrorWithCode:3 reason:valueCopy];
    *error = v9 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

+ (id)transformedValue:(id)value error:(id *)error
{
  versionString = [value versionString];
  v5 = [versionString dataUsingEncoding:4];

  return v5;
}

@end