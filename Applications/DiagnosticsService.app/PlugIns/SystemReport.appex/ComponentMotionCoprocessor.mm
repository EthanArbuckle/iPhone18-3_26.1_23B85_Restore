@interface ComponentMotionCoprocessor
- (BOOL)isPresent;
- (id)motionCoprocessorServiceName;
@end

@implementation ComponentMotionCoprocessor

- (BOOL)isPresent
{
  motionCoprocessorServiceName = [(ComponentMotionCoprocessor *)self motionCoprocessorServiceName];
  if ([motionCoprocessorServiceName isEqualToString:@"aop"])
  {
    v4 = 1;
  }

  else
  {
    motionCoprocessorServiceName2 = [(ComponentMotionCoprocessor *)self motionCoprocessorServiceName];
    v4 = [motionCoprocessorServiceName2 isEqualToString:@"SPUApp"];
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