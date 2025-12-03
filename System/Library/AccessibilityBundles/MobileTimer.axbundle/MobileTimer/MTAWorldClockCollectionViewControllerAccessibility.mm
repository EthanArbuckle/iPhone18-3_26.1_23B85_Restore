@interface MTAWorldClockCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)nameForWorldClockCell:(id)cell;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axModifyCollectionView;
- (void)_axModifyReorderingGesture;
- (void)_installReorderingGestureIfNecessary;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)movedItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)viewDidLoad;
@end

@implementation MTAWorldClockCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTAWorldClockCollectionCell"];
  [validationsCopy validateClass:@"MTAWorldClockView"];
  [validationsCopy validateClass:@"WorldClockCity"];
  [validationsCopy validateClass:@"UICollectionViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAWorldClockCollectionViewController" isKindOfClass:@"UICollectionViewController"];
  [validationsCopy validateClass:@"MTAWorldClockCollectionCell" hasInstanceMethod:@"worldClockView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAWorldClockView" hasInstanceMethod:@"city" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WorldClockCity" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UICollectionViewController" hasInstanceVariable:@"_reorderingGesture" withType:"UILongPressGestureRecognizer"];
  [validationsCopy validateClass:@"UICollectionViewController" hasInstanceMethod:@"_installReorderingGestureIfNecessary" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MTAWorldClockCollectionViewControllerAccessibility;
  [(MTAWorldClockCollectionViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MTAWorldClockCollectionViewControllerAccessibility *)self _axModifyReorderingGesture];
  [(MTAWorldClockCollectionViewControllerAccessibility *)self _axModifyCollectionView];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MTAWorldClockCollectionViewControllerAccessibility;
  [(MTAWorldClockCollectionViewControllerAccessibility *)&v3 viewDidLoad];
  [(MTAWorldClockCollectionViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)nameForWorldClockCell:(id)cell
{
  cellCopy = cell;
  if (cellCopy && (MEMORY[0x29C2E1AE0](@"MTAWorldClockCollectionCell"), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [cellCopy safeValueForKey:@"worldClockView"];
    v5 = [v4 safeValueForKey:@"city"];
    objc_opt_class();
    v6 = [v5 safeValueForKey:@"name"];
    v7 = __UIAccessibilityCastAsClass();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  viewCopy = view;
  pathCopy = path;
  indexPathCopy = indexPath;
  v28.receiver = self;
  v28.super_class = MTAWorldClockCollectionViewControllerAccessibility;
  [(MTAWorldClockCollectionViewControllerAccessibility *)&v28 collectionView:viewCopy moveItemAtIndexPath:pathCopy toIndexPath:indexPathCopy];
  v11 = [viewCopy numberOfItemsInSection:{objc_msgSend(indexPathCopy, "section")}];
  if (v11 >= 2)
  {
    v12 = v11;
    objc_opt_class();
    v13 = [viewCopy cellForItemAtIndexPath:indexPathCopy];
    v14 = __UIAccessibilityCastAsClass();

    objc_opt_class();
    v15 = [viewCopy cellForItemAtIndexPath:pathCopy];
    v16 = __UIAccessibilityCastAsClass();

    if (!v14 || !v16)
    {
      goto LABEL_10;
    }

    v17 = [(MTAWorldClockCollectionViewControllerAccessibility *)self nameForWorldClockCell:v14];
    if ([indexPathCopy row] == v12 - 1)
    {
      objc_opt_class();
      v18 = [MEMORY[0x29EDB9FE0] indexPathForRow:objc_msgSend(indexPathCopy inSection:{"row") - 1, objc_msgSend(indexPathCopy, "section")}];
      v19 = [viewCopy cellForItemAtIndexPath:v18];
      v20 = __UIAccessibilityCastAsClass();

      v21 = @"clock.moved.after";
      if (!v20)
      {
        goto LABEL_9;
      }
    }

    else
    {
      objc_opt_class();
      v22 = [MEMORY[0x29EDB9FE0] indexPathForRow:objc_msgSend(indexPathCopy inSection:{"row") + 1, objc_msgSend(indexPathCopy, "section")}];
      v23 = [viewCopy cellForItemAtIndexPath:v22];
      v20 = __UIAccessibilityCastAsClass();

      v21 = @"clock.moved.before";
      if (!v20)
      {
LABEL_9:

LABEL_10:
        goto LABEL_11;
      }
    }

    v24 = [(MTAWorldClockCollectionViewControllerAccessibility *)self nameForWorldClockCell:v20];
    v25 = MEMORY[0x29EDBA0F8];
    v26 = accessibilityLocalizedString(v21);
    v27 = [v25 stringWithFormat:v26, v17, v24];
    UIAccessibilitySpeak();

    goto LABEL_9;
  }

LABEL_11:
}

- (void)movedItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v8 = [pathCopy row];
  v9 = [indexPathCopy row];
  v10 = @"clock.moving.before";
  if (v8 < v9)
  {
    v10 = @"clock.moving.after";
  }

  v11 = v10;
  v12 = [(MTAWorldClockCollectionViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  objc_opt_class();
  v13 = [v12 cellForItemAtIndexPath:indexPathCopy];
  v14 = __UIAccessibilityCastAsClass();

  if (v14)
  {
    v15 = MEMORY[0x29EDBA0F8];
    v16 = accessibilityLocalizedString(v11);
    v17 = [(MTAWorldClockCollectionViewControllerAccessibility *)self nameForWorldClockCell:v14];
    v18 = [v15 stringWithFormat:v16, v17];
    UIAccessibilitySpeak();
  }
}

- (void)_installReorderingGestureIfNecessary
{
  v3.receiver = self;
  v3.super_class = MTAWorldClockCollectionViewControllerAccessibility;
  [(MTAWorldClockCollectionViewControllerAccessibility *)&v3 _installReorderingGestureIfNecessary];
  [(MTAWorldClockCollectionViewControllerAccessibility *)self _axModifyReorderingGesture];
}

- (void)_axModifyReorderingGesture
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    objc_opt_class();
    v3 = [(MTAWorldClockCollectionViewControllerAccessibility *)self safeValueForKey:@"_reorderingGesture"];
    v4 = __UIAccessibilityCastAsClass();

    [v4 setMinimumPressDuration:0.1];
  }
}

- (void)_axModifyCollectionView
{
  v3 = [(MTAWorldClockCollectionViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v2 = accessibilityLocalizedString(@"world.clocks");
  [v3 setAccessibilityLabel:v2];

  [v3 setAccessibilityContainerType:4];
  [v3 setIsAccessibilityElement:0];
  [v3 setAccessibilityIdentifier:@"AXMTWorldClockCollectionView"];
}

@end