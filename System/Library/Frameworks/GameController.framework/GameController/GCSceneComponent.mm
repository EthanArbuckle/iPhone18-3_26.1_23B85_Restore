@interface GCSceneComponent
+ (void)initialize;
- (GCSceneComponent)init;
@end

@implementation GCSceneComponent

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    LoadGameControllerUIFramework(1);
  }
}

- (GCSceneComponent)init
{
  [(GCSceneComponent *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end