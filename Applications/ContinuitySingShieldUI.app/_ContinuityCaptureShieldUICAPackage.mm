@interface _ContinuityCaptureShieldUICAPackage
- (id)substitutedClasses;
@end

@implementation _ContinuityCaptureShieldUICAPackage

- (id)substitutedClasses
{
  v5.receiver = self;
  v5.super_class = _ContinuityCaptureShieldUICAPackage;
  substitutedClasses = [(_ContinuityCaptureShieldUICAPackage *)&v5 substitutedClasses];
  v3 = [NSMutableDictionary dictionaryWithDictionary:substitutedClasses];

  [v3 setObject:objc_opt_class() forKeyedSubscript:@"LKEventHandler"];

  return v3;
}

@end