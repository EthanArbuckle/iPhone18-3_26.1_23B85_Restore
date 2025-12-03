@interface _TUIImplicitAnimationLayer
+ (id)defaultActionForKey:(id)key;
@end

@implementation _TUIImplicitAnimationLayer

+ (id)defaultActionForKey:(id)key
{
  if (qword_2E6368)
  {
    [qword_2E6368 animationForKeyPath:key];
  }

  else
  {
    +[NSNull null];
  }
  v3 = ;

  return v3;
}

@end