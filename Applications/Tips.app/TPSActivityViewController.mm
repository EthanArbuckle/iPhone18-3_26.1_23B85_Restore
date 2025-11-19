@interface TPSActivityViewController
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation TPSActivityViewController

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom])
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

@end