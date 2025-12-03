@interface SCNSceneLookUpUnarchiver
- (SCNSceneLookUpUnarchiver)initWithCoder:(id)coder;
@end

@implementation SCNSceneLookUpUnarchiver

- (SCNSceneLookUpUnarchiver)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SCNSceneLookUpUnarchiver;
  v4 = [(SCNSceneLookUpUnarchiver *)&v6 init];
  if (v4)
  {
    [coder decodeObjectOfClass:objc_opt_class() forKey:@"db"];
  }

  return v4;
}

@end