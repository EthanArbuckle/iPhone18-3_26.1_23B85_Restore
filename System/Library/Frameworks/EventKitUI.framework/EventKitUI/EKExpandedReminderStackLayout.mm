@interface EKExpandedReminderStackLayout
+ (CGSize)itemFittingSizeForCell:(id)cell withLayoutEnvironment:(id)environment;
- (EKExpandedReminderStackLayout)initWithDelegate:(id)delegate;
- (EKExpandedReminderStackLayoutDelegate)delegate;
- (id)_animationForReusableView:(id)view toLayoutAttributes:(id)attributes type:(unint64_t)type;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
- (id)finalLayoutAttributesForDisappearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)prepareCellAnimationWithLayoutAttributes:(id)attributes indexPath:(id)path;
- (void)prepareHeaderAnimationWithLayoutAttributes:(id)attributes;
@end

@implementation EKExpandedReminderStackLayout

- (EKExpandedReminderStackLayout)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = objc_storeWeak(&self->_delegate, delegateCopy);
  expandedReminderStackShouldDoCompactLayout = [delegateCopy expandedReminderStackShouldDoCompactLayout];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__EKExpandedReminderStackLayout_initWithDelegate___block_invoke;
  aBlock[3] = &__block_descriptor_33_e71___NSCollectionLayoutSection_24__0q8___NSCollectionLayoutEnvironment__16l;
  v12 = expandedReminderStackShouldDoCompactLayout;
  v7 = _Block_copy(aBlock);
  v10.receiver = self;
  v10.super_class = EKExpandedReminderStackLayout;
  v8 = [(EKExpandedReminderStackLayout *)&v10 initWithSectionProvider:v7];

  return v8;
}

id __50__EKExpandedReminderStackLayout_initWithDelegate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28 = +[EKExpandedReminderStackCell exampleCell];
  [EKExpandedReminderStackLayout itemFittingSizeForCell:"itemFittingSizeForCell:withLayoutEnvironment:" withLayoutEnvironment:?];
  v6 = [MEMORY[0x1E6995558] absoluteDimension:v5];
  v26 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v27 = v6;
  v7 = [MEMORY[0x1E6995588] sizeWithWidthDimension:? heightDimension:?];
  v8 = [MEMORY[0x1E6995578] itemWithLayoutSize:v7];
  v9 = MEMORY[0x1E6995568];
  v30[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v11 = [v9 verticalGroupWithLayoutSize:v7 subitems:v10];

  v12 = [MEMORY[0x1E6995580] sectionWithGroup:v11];
  [v12 setInterGroupSpacing:8.0];
  if (*(a1 + 32) == 1)
  {
    v13 = [v4 container];
    [v13 contentSize];
    v15 = v14;
    v17 = v16;

    v25 = +[EKExpandedReminderDateView exampleHeader];
    [EKExpandedReminderStackLayout itemFittingSizeForCell:v25 withLayoutEnvironment:v4];
    v19 = [MEMORY[0x1E6995558] absoluteDimension:v18];
    v20 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v21 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v20 heightDimension:v19];
    v22 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v21 elementKind:*MEMORY[0x1E69DDC08] alignment:1];
    v29 = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    [v12 setBoundarySupplementaryItems:v23];

    [v22 setContentInsets:{v17 * -0.07, 0.0, 0.0, 0.0}];
    [v12 setContentInsets:{v17 * 0.035, v15 * 0.106, 0.0, v15 * 0.106}];
  }

  else
  {
    [v12 setContentInsets:{16.0, 13.0, 16.0, 13.0}];
  }

  return v12;
}

+ (CGSize)itemFittingSizeForCell:(id)cell withLayoutEnvironment:(id)environment
{
  cellCopy = cell;
  container = [environment container];
  [container contentSize];
  v8 = v7;

  LODWORD(v9) = 1148846080;
  LODWORD(v10) = 1112014848;
  [cellCopy systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:3.40282347e38 verticalFittingPriority:{v9, v10}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)prepareCellAnimationWithLayoutAttributes:(id)attributes indexPath:(id)path
{
  pathCopy = path;
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained stackedReminderViewFrame];
  [attributesCopy setFrame:?];

  v8 = [pathCopy row];
  [attributesCopy setZIndex:-v8];
}

- (void)prepareHeaderAnimationWithLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  CGAffineTransformMakeScale(&v5, 0.7, 0.7);
  v4 = v5;
  [attributesCopy setTransform:&v4];
  [attributesCopy setAlpha:0.0];
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = EKExpandedReminderStackLayout;
  pathCopy = path;
  v5 = [(EKExpandedReminderStackLayout *)&v7 initialLayoutAttributesForAppearingItemAtIndexPath:pathCopy];
  [(EKExpandedReminderStackLayout *)self prepareCellAnimationWithLayoutAttributes:v5 indexPath:pathCopy, v7.receiver, v7.super_class];

  return v5;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = EKExpandedReminderStackLayout;
  pathCopy = path;
  v5 = [(EKExpandedReminderStackLayout *)&v7 finalLayoutAttributesForDisappearingItemAtIndexPath:pathCopy];
  [(EKExpandedReminderStackLayout *)self prepareCellAnimationWithLayoutAttributes:v5 indexPath:pathCopy, v7.receiver, v7.super_class];

  return v5;
}

- (id)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = EKExpandedReminderStackLayout;
  v5 = [(EKExpandedReminderStackLayout *)&v7 initialLayoutAttributesForAppearingSupplementaryElementOfKind:kind atIndexPath:path];
  [(EKExpandedReminderStackLayout *)self prepareHeaderAnimationWithLayoutAttributes:v5];

  return v5;
}

- (id)finalLayoutAttributesForDisappearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = EKExpandedReminderStackLayout;
  v5 = [(EKExpandedReminderStackLayout *)&v7 finalLayoutAttributesForDisappearingSupplementaryElementOfKind:kind atIndexPath:path];
  [(EKExpandedReminderStackLayout *)self prepareHeaderAnimationWithLayoutAttributes:v5];

  return v5;
}

- (id)_animationForReusableView:(id)view toLayoutAttributes:(id)attributes type:(unint64_t)type
{
  viewCopy = view;
  attributesCopy = attributes;
  objc_opt_class();
  v9 = objc_opt_isKindOfClass() & 1;
  delegate = [(EKExpandedReminderStackLayout *)self delegate];
  viewControllerIsDisappearing = [delegate viewControllerIsDisappearing];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__EKExpandedReminderStackLayout__animationForReusableView_toLayoutAttributes_type___block_invoke;
  aBlock[3] = &unk_1E8441DC8;
  v19 = viewControllerIsDisappearing;
  v20 = v9;
  v17 = viewCopy;
  v18 = attributesCopy;
  v12 = attributesCopy;
  v13 = viewCopy;
  v14 = _Block_copy(aBlock);

  return v14;
}

void __83__EKExpandedReminderStackLayout__animationForReusableView_toLayoutAttributes_type___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 48) & 1) != 0 || (*(a1 + 49) & 1) == 0)
  {
    v4 = [MEMORY[0x1E69DD278] expandingStackedRemindersSpringAnimator];
  }

  else
  {
    v4 = [MEMORY[0x1E69DD278] expandingLayoutAttributesStackedRemindersSpringAnimator];
  }

  v5 = v4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__EKExpandedReminderStackLayout__animationForReusableView_toLayoutAttributes_type___block_invoke_2;
  v12[3] = &unk_1E843FBC8;
  v15 = *(a1 + 49);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  [v5 addAnimations:v12];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __83__EKExpandedReminderStackLayout__animationForReusableView_toLayoutAttributes_type___block_invoke_3;
  v10 = &unk_1E8441DA0;
  v11 = v3;
  v6 = v3;
  [v5 addCompletion:&v7];
  [v5 startAnimation];
}

uint64_t __83__EKExpandedReminderStackLayout__animationForReusableView_toLayoutAttributes_type___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  if (v2 == 1)
  {
    [v3 frame];
    v4 = *(a1 + 32);

    return [v4 setFrame:?];
  }

  else
  {
    if (v3)
    {
      [v3 transform];
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
    }

    v6 = *(a1 + 32);
    v7[0] = v8;
    v7[1] = v9;
    v7[2] = v10;
    [v6 setTransform:v7];
    [*(a1 + 40) alpha];
    return [*(a1 + 32) setAlpha:?];
  }
}

- (EKExpandedReminderStackLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end