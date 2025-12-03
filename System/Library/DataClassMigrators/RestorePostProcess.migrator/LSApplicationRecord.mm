@interface LSApplicationRecord
- (id)mb_applicationType;
@end

@implementation LSApplicationRecord

- (id)mb_applicationType
{
  compatibilityObject = [(LSApplicationRecord *)self compatibilityObject];
  applicationType = [compatibilityObject applicationType];

  return applicationType;
}

@end