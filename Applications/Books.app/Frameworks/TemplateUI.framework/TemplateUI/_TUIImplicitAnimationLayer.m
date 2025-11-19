@interface _TUIImplicitAnimationLayer
+ (id)defaultActionForKey:(id)a3;
@end

@implementation _TUIImplicitAnimationLayer

+ (id)defaultActionForKey:(id)a3
{
  if (qword_2E6368)
  {
    [qword_2E6368 animationForKeyPath:a3];
  }

  else
  {
    +[NSNull null];
  }
  v3 = ;

  return v3;
}

@end