@interface DisplayViewInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation DisplayViewInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v8 = 0;
  parametersCopy = parameters;
  v5 = [NSSet setWithObject:objc_opt_class()];
  v6 = [parametersCopy dk_arrayFromRequiredKey:@"testImages" types:v5 maxLength:256 failed:&v8];

  [(DisplayViewInputs *)self setImageFileNames:v6];
  return (v8 & 1) == 0;
}

@end