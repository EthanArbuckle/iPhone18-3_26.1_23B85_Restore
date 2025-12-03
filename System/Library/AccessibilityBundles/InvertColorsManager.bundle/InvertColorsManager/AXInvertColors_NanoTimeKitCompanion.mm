@interface AXInvertColors_NanoTimeKitCompanion
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_NanoTimeKitCompanion

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKCFaceDetailKaleidoscopeContentSectionController" hasInstanceMethod:@"_presentPhotoPicker" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"NTKCFaceDetailKaleidoscopeContentSectionController" hasInstanceMethod:@"parentViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCPhotosAddController" hasInstanceMethod:@"picker:didFinishPicking:" withFullSignature:{"v", "@", "@", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"NTKCFaceDetailKaleidoscopeContentSectionControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"NTKCPhotosAddControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end