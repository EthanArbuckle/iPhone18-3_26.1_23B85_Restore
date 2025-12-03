@interface _NCContentUnavailableView
- (id)_visualStylingProvider;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateVisualStyling;
- (void)didMoveToWindow;
@end

@implementation _NCContentUnavailableView

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = _NCContentUnavailableView;
  [(_NCContentUnavailableView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(_NCContentUnavailableView *)self _updateVisualStyling];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _NCContentUnavailableView;
  [(_UIContentUnavailableView *)&v4 didMoveToWindow];
  window = [(_NCContentUnavailableView *)self window];

  if (window)
  {
    [(_NCContentUnavailableView *)self layoutIfNeeded];
    [(_NCContentUnavailableView *)self _updateVisualStyling];
  }
}

- (id)_visualStylingProvider
{
  v2 = MEMORY[0x277D26740];
  traitCollection = [(_NCContentUnavailableView *)self traitCollection];
  v4 = [v2 _visualStylingProviderForRecipe:3 category:1 andUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  return v4;
}

- (void)_updateVisualStyling
{
  _titleLabel = [(_UIContentUnavailableView *)self _titleLabel];
  _visualStylingProvider = [(_NCContentUnavailableView *)self _visualStylingProvider];
  v4 = [_visualStylingProvider _visualStylingForStyle:1];
  [_titleLabel mt_replaceVisualStyling:v4];
}

@end