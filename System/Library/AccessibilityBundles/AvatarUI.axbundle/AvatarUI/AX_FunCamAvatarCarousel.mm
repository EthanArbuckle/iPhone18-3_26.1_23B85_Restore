@interface AX_FunCamAvatarCarousel
- (AX_FunCamAvatarCarousel)initWithFunCamAvatarPickerController:(id)controller accessibilityContainer:(id)container;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrameInContainerSpace;
- (id)accessibilityValue;
- (id)fcAVTPickerController;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation AX_FunCamAvatarCarousel

- (AX_FunCamAvatarCarousel)initWithFunCamAvatarPickerController:(id)controller accessibilityContainer:(id)container
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = AX_FunCamAvatarCarousel;
  v7 = [(AX_FunCamAvatarCarousel *)&v10 initWithAccessibilityContainer:container];
  v8 = v7;
  if (v7)
  {
    [(AX_FunCamAvatarCarousel *)v7 setFcAVTPickerController:controllerCopy];
  }

  return v8;
}

- (BOOL)isAccessibilityElement
{
  WeakRetained = objc_loadWeakRetained(&self->_fcAVTPickerController);
  v3 = [WeakRetained safeBoolForKey:@"isDisplayingGridLayout"];

  return v3 ^ 1;
}

- (id)accessibilityValue
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_fcAVTPickerController);
  v4 = [WeakRetained safeValueForKey:@"selectedIndexPath"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = objc_loadWeakRetained(&self->_fcAVTPickerController);
  v7 = [v6 _axLabelForIndexPath:v5];

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AX_FunCamAvatarCarousel;
  return *MEMORY[0x29EDC7F60] | [(AX_FunCamAvatarCarousel *)&v3 accessibilityTraits];
}

- (void)accessibilityIncrement
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_fcAVTPickerController);
  v4 = [WeakRetained safeValueForKey:@"items"];
  v5 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v6 = objc_loadWeakRetained(&self->_fcAVTPickerController);
  v7 = [v6 safeValueForKey:@"selectedIndexPath"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = [MEMORY[0x29EDB9FE0] indexPathForItem:objc_msgSend(v8 inSection:{"item") + 1, objc_msgSend(v8, "section")}];
  item = [v9 item];
  if (item < [v5 count])
  {
    v11 = objc_loadWeakRetained(&self->_fcAVTPickerController);
    v12 = [v11 safeValueForKey:@"collectionView"];

    v14 = v9;
    v13 = v12;
    AXPerformSafeBlock();
  }
}

- (void)accessibilityDecrement
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_fcAVTPickerController);
  v4 = [WeakRetained safeValueForKey:@"selectedIndexPath"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [MEMORY[0x29EDB9FE0] indexPathForItem:objc_msgSend(v5 inSection:{"item") - 1, objc_msgSend(v5, "section")}];
  if (([v6 item] & 0x8000000000000000) == 0)
  {
    v7 = objc_loadWeakRetained(&self->_fcAVTPickerController);
    v8 = [v7 safeValueForKey:@"collectionView"];

    v10 = v6;
    v9 = v8;
    AXPerformSafeBlock();
  }
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  WeakRetained = objc_loadWeakRetained(&self->_fcAVTPickerController);
  v6 = [WeakRetained safeValueForKey:@"collectionView"];

  if (scroll == 1)
  {
    accessibilityScrollRightPage = [v6 accessibilityScrollRightPage];
  }

  else if (scroll == 2)
  {
    accessibilityScrollRightPage = [v6 accessibilityScrollLeftPage];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = AX_FunCamAvatarCarousel;
    accessibilityScrollRightPage = [(AX_FunCamAvatarCarousel *)&v10 accessibilityScroll:scroll];
  }

  v8 = accessibilityScrollRightPage;

  return v8;
}

- (CGRect)accessibilityFrameInContainerSpace
{
  accessibilityContainer = [(AX_FunCamAvatarCarousel *)self accessibilityContainer];
  [accessibilityContainer frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)fcAVTPickerController
{
  WeakRetained = objc_loadWeakRetained(&self->_fcAVTPickerController);

  return WeakRetained;
}

@end