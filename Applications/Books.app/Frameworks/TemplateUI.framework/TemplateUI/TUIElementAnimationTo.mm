@interface TUIElementAnimationTo
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementAnimationTo

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  [objectCopy setDuration:1.0];
  finalizeAnimationValues = [builderCopy finalizeAnimationValues];
  [objectCopy setValues:finalizeAnimationValues];
}

@end