@interface GCEventViewController
+ (void)initialize;
@end

@implementation GCEventViewController

+ (void)initialize
{
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"AppKit/UIKit is not linked/loaded in the current process." userInfo:0];
  objc_exception_throw(v0);
}

@end