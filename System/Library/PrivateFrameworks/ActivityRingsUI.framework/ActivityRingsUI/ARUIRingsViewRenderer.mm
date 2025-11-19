@interface ARUIRingsViewRenderer
+ (id)rendererForRingGroupController:(id)a3;
+ (id)rendererForRingGroupControllers:(id)a3;
- (ARUIRingsViewRenderer)initWithMaximumRingCount:(unint64_t)a3;
- (ARUIRingsViewRenderer)initWithMaximumRingCount:(unint64_t)a3 commandQueue:(id)a4;
@end

@implementation ARUIRingsViewRenderer

+ (id)rendererForRingGroupController:(id)a3
{
  v3 = objc_alloc_init(ARUIRingsViewRenderer);

  return v3;
}

+ (id)rendererForRingGroupControllers:(id)a3
{
  v3 = objc_alloc_init(ARUIRingsViewRenderer);

  return v3;
}

- (ARUIRingsViewRenderer)initWithMaximumRingCount:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = ARUIRingsViewRenderer;
  return [(ARUIRenderer *)&v4 init];
}

- (ARUIRingsViewRenderer)initWithMaximumRingCount:(unint64_t)a3 commandQueue:(id)a4
{
  v5.receiver = self;
  v5.super_class = ARUIRingsViewRenderer;
  return [(ARUIRenderer *)&v5 initWithCommandQueue:a4];
}

@end