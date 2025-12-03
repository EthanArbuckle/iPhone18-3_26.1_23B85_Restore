@interface TUIElementConfiguration
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementConfiguration

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  finalizeConfiguration = [builder finalizeConfiguration];
  [objectCopy setData:finalizeConfiguration];
}

@end