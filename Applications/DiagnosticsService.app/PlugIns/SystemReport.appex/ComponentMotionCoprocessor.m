@interface ComponentMotionCoprocessor
- (BOOL)isPresent;
- (id)motionCoprocessorServiceName;
@end

@implementation ComponentMotionCoprocessor

- (BOOL)isPresent
{
  v3 = [(ComponentMotionCoprocessor *)self motionCoprocessorServiceName];
  if ([v3 isEqualToString:@"aop"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ComponentMotionCoprocessor *)self motionCoprocessorServiceName];
    v4 = [v5 isEqualToString:@"SPUApp"];
  }

  return v4;
}

- (id)motionCoprocessorServiceName
{
  if (!qword_1000D2010)
  {
    v2 = @"aop";
    if (findDeviceWithName([@"aop" UTF8String]) || (v2 = @"SPUApp", findDeviceWithName(objc_msgSend(@"SPUApp", "UTF8String"))))
    {
      v3 = qword_1000D2010;
      qword_1000D2010 = v2;
    }
  }

  v4 = qword_1000D2010;

  return v4;
}

@end