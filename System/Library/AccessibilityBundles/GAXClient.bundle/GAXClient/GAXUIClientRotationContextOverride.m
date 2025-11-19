@interface GAXUIClientRotationContextOverride
- (GAXUIClientRotationContextOverride)initWithClient:(id)a3 toOrientation:(int64_t)a4 duration:(double)a5 andWindow:(id)a6;
@end

@implementation GAXUIClientRotationContextOverride

- (GAXUIClientRotationContextOverride)initWithClient:(id)a3 toOrientation:(int64_t)a4 duration:(double)a5 andWindow:(id)a6
{
  v10.receiver = self;
  v10.super_class = GAXUIClientRotationContextOverride;
  v6 = [(GAXUIClientRotationContextOverride *)&v10 initWithClient:a3 toOrientation:a4 duration:a6 andWindow:a5];
  if (v6)
  {
    v7 = +[GAXClient sharedInstance];
    v8 = [v7 isInWorkspace];

    if (v8)
    {
      *([(GAXUIClientRotationContextOverride *)v6 safeIvarForKey:@"_rotationSettings"]+ 4) = 0;
    }
  }

  return v6;
}

@end