@interface HMDMatterCommandsTransformer
+ (id)valueFromOPACK:(id)k error:(id *)error;
- (id)OPACKFromValue:(id)value error:(id *)error;
- (id)valueFromOPACK:(id)k error:(id *)error;
@end

@implementation HMDMatterCommandsTransformer

+ (id)valueFromOPACK:(id)k error:(id *)error
{
  kCopy = k;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = kCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    error = [HMDMatterCommandActionUtilities commandsInMemoryRepresentation:v7];
  }

  else if (error)
  {
    kCopy = [NSString stringWithFormat:@"Expected NSArray value to create commands: %@", kCopy];
    *error = [NSError hmfErrorWithCode:3 reason:kCopy];

    error = 0;
  }

  return error;
}

- (id)valueFromOPACK:(id)k error:(id *)error
{
  kCopy = k;
  v6 = [objc_opt_class() valueFromOPACK:kCopy error:error];

  return v6;
}

- (id)OPACKFromValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [objc_opt_class() OPACKFromValue:valueCopy error:error];

  return v6;
}

@end