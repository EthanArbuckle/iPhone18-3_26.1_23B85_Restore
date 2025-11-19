@interface AXInvertColors_NanoTimeKitCompanion
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_NanoTimeKitCompanion

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKCFaceDetailKaleidoscopeContentSectionController" hasInstanceMethod:@"_presentPhotoPicker" withFullSignature:{"v", 0}];
  [v3 validateClass:@"NTKCFaceDetailKaleidoscopeContentSectionController" hasInstanceMethod:@"parentViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCPhotosAddController" hasInstanceMethod:@"picker:didFinishPicking:" withFullSignature:{"v", "@", "@", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"NTKCFaceDetailKaleidoscopeContentSectionControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"NTKCPhotosAddControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end