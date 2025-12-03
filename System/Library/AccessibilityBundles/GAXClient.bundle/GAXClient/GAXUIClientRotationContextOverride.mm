@interface GAXUIClientRotationContextOverride
- (GAXUIClientRotationContextOverride)initWithClient:(id)client toOrientation:(int64_t)orientation duration:(double)duration andWindow:(id)window;
@end

@implementation GAXUIClientRotationContextOverride

- (GAXUIClientRotationContextOverride)initWithClient:(id)client toOrientation:(int64_t)orientation duration:(double)duration andWindow:(id)window
{
  v10.receiver = self;
  v10.super_class = GAXUIClientRotationContextOverride;
  v6 = [(GAXUIClientRotationContextOverride *)&v10 initWithClient:client toOrientation:orientation duration:window andWindow:duration];
  if (v6)
  {
    v7 = +[GAXClient sharedInstance];
    isInWorkspace = [v7 isInWorkspace];

    if (isInWorkspace)
    {
      *([(GAXUIClientRotationContextOverride *)v6 safeIvarForKey:@"_rotationSettings"]+ 4) = 0;
    }
  }

  return v6;
}

@end