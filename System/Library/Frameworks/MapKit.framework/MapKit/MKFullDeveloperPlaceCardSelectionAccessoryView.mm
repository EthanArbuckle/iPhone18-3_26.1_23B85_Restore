@interface MKFullDeveloperPlaceCardSelectionAccessoryView
- (id)_createErrorView;
- (id)_createLoadingView;
- (id)_createMapItemViewController:(id)a3;
- (id)initAsAccessory;
- (id)initAsStandAloneHidingInlineMap:(BOOL)a3;
@end

@implementation MKFullDeveloperPlaceCardSelectionAccessoryView

- (id)_createErrorView
{
  v2 = objc_alloc_init(MKFullDeveloperPlaceCardErrorView);

  return v2;
}

- (id)_createMapItemViewController:(id)a3
{
  isStandAlonePlaceCard = self->_isStandAlonePlaceCard;
  v5 = a3;
  v6 = [MKFullDeveloperPlaceCardRemoteUIHostViewController alloc];
  v7 = [(MKSelectionAccessoryView *)self delegate];
  v8 = v7;
  if (isStandAlonePlaceCard)
  {
    v9 = [(MKFullDeveloperPlaceCardRemoteUIHostViewController *)v6 initAsStandAloneWithMapItem:v5 dismissButtonDisplayed:v7 != 0 hideInlineMap:self->_hideInlineMap];
  }

  else
  {
    v9 = [(MKFullDeveloperPlaceCardRemoteUIHostViewController *)v6 initAsAccessoryWithMapItem:v5 dismissButtonDisplayed:v7 != 0];
  }

  v10 = v9;

  return v10;
}

- (id)_createLoadingView
{
  v2 = objc_alloc_init(MKFullDeveloperPlaceCardLoadingView);

  return v2;
}

- (id)initAsStandAloneHidingInlineMap:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MKFullDeveloperPlaceCardSelectionAccessoryView;
  result = [(MKViewSwitchingSelectionAccessoryView *)&v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (result)
  {
    *(result + 472) = 1;
    *(result + 473) = a3;
  }

  return result;
}

- (id)initAsAccessory
{
  v3.receiver = self;
  v3.super_class = MKFullDeveloperPlaceCardSelectionAccessoryView;
  result = [(MKViewSwitchingSelectionAccessoryView *)&v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (result)
  {
    *(result + 472) = 0;
    *(result + 473) = 1;
  }

  return result;
}

@end