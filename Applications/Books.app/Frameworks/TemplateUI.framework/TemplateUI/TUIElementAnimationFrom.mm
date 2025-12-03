@interface TUIElementAnimationFrom
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementAnimationFrom

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  finalizeAnimationValues = [builder finalizeAnimationValues];
  [objectCopy setValues:finalizeAnimationValues];
}

@end