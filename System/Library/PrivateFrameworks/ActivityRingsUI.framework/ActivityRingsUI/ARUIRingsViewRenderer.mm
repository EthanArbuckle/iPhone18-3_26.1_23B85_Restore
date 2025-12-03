@interface ARUIRingsViewRenderer
+ (id)rendererForRingGroupController:(id)controller;
+ (id)rendererForRingGroupControllers:(id)controllers;
- (ARUIRingsViewRenderer)initWithMaximumRingCount:(unint64_t)count;
- (ARUIRingsViewRenderer)initWithMaximumRingCount:(unint64_t)count commandQueue:(id)queue;
@end

@implementation ARUIRingsViewRenderer

+ (id)rendererForRingGroupController:(id)controller
{
  v3 = objc_alloc_init(ARUIRingsViewRenderer);

  return v3;
}

+ (id)rendererForRingGroupControllers:(id)controllers
{
  v3 = objc_alloc_init(ARUIRingsViewRenderer);

  return v3;
}

- (ARUIRingsViewRenderer)initWithMaximumRingCount:(unint64_t)count
{
  v4.receiver = self;
  v4.super_class = ARUIRingsViewRenderer;
  return [(ARUIRenderer *)&v4 init];
}

- (ARUIRingsViewRenderer)initWithMaximumRingCount:(unint64_t)count commandQueue:(id)queue
{
  v5.receiver = self;
  v5.super_class = ARUIRingsViewRenderer;
  return [(ARUIRenderer *)&v5 initWithCommandQueue:queue];
}

@end