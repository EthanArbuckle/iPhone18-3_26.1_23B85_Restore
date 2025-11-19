@interface WorkoutPlanGalleryBrickItemCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation WorkoutPlanGalleryBrickItemCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = WorkoutPlanGalleryBrickItemCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(WorkoutPlanGalleryBrickItemCellAccessibility *)&v3 accessibilityTraits];
}

@end