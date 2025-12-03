@interface KNTransitionIris
+ (id)defaultAttributes;
- (void)renderFrameWithContext:(id)context;
@end

@implementation KNTransitionIris

+ (id)defaultAttributes
{
  v4 = @"KNTransitionAttributesDuration";
  v5 = &off_49CFA0;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (void)renderFrameWithContext:(id)context
{
  v3.receiver = self;
  v3.super_class = KNTransitionIris;
  [(KNIrisBase *)&v3 renderFrameWithContext:context];
}

@end