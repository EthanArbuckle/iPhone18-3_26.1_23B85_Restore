@interface UIScrollView
- (void)ic_performRecapScrollTestNamed:(id)named iterations:(unint64_t)iterations;
@end

@implementation UIScrollView

- (void)ic_performRecapScrollTestNamed:(id)named iterations:(unint64_t)iterations
{
  namedCopy = named;
  if (byte_1006CB358 == 1)
  {
    v6 = [[RPTScrollViewTestParameters alloc] initWithTestName:namedCopy scrollView:self completionHandler:0];
    [RPTTestRunner runTestWithParameters:v6];
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "Test");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1004DF83C(v6);
    }
  }
}

@end