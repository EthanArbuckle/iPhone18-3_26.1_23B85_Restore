@interface AccessAppDelegate
+ (void)setShared:(id)shared;
@end

@implementation AccessAppDelegate

+ (void)setShared:(id)shared
{
  v4 = qword_100593598;
  qword_100593598 = shared;
  sharedCopy = shared;
}

@end