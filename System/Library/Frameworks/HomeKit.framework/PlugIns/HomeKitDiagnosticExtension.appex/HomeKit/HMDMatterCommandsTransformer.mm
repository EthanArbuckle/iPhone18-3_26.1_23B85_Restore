@interface HMDMatterCommandsTransformer
+ (id)valueFromOPACK:(id)a3 error:(id *)a4;
- (id)OPACKFromValue:(id)a3 error:(id *)a4;
- (id)valueFromOPACK:(id)a3 error:(id *)a4;
@end

@implementation HMDMatterCommandsTransformer

+ (id)valueFromOPACK:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    a4 = [HMDMatterCommandActionUtilities commandsInMemoryRepresentation:v7];
  }

  else if (a4)
  {
    v8 = [NSString stringWithFormat:@"Expected NSArray value to create commands: %@", v5];
    *a4 = [NSError hmfErrorWithCode:3 reason:v8];

    a4 = 0;
  }

  return a4;
}

- (id)valueFromOPACK:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_opt_class() valueFromOPACK:v5 error:a4];

  return v6;
}

- (id)OPACKFromValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_opt_class() OPACKFromValue:v5 error:a4];

  return v6;
}

@end