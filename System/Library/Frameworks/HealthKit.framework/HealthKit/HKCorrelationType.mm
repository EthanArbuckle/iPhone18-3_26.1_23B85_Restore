@interface HKCorrelationType
- (HKCorrelationType)initWithIdentifier:(id)identifier;
@end

@implementation HKCorrelationType

- (HKCorrelationType)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [HKObjectType correlationTypeForIdentifier:identifierCopy];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid %@ identifier %@", objc_opt_class(), identifierCopy}];
  }

  return v5;
}

@end