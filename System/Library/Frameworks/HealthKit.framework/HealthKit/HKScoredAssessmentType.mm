@interface HKScoredAssessmentType
+ (id)gad7Type;
+ (id)phq9Type;
- (HKScoredAssessmentType)initWithIdentifier:(id)identifier;
@end

@implementation HKScoredAssessmentType

- (HKScoredAssessmentType)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [HKObjectType scoredAssessmentTypeForIdentifier:identifierCopy];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid %@ identifier %@", objc_opt_class(), identifierCopy}];
  }

  return v5;
}

+ (id)gad7Type
{
  v2 = [[HKScoredAssessmentType alloc] initWithIdentifier:@"HKScoredAssessmentTypeIdentifierGAD7"];

  return v2;
}

+ (id)phq9Type
{
  v2 = [[HKScoredAssessmentType alloc] initWithIdentifier:@"HKScoredAssessmentTypeIdentifierPHQ9"];

  return v2;
}

@end