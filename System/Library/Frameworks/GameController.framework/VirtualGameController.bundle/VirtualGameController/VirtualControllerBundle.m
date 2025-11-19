@interface VirtualControllerBundle
@end

@implementation VirtualControllerBundle

void __VirtualControllerBundle_block_invoke(id a1)
{
  VirtualControllerBundle_Bundle = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

@end