@interface MKHairlineView
- (MKHairlineView)initWithFrame:(CGRect)frame;
- (UIColor)fillColor;
- (id)_bestStyleProviderForTraitCollection:(id)collection;
- (void)_createVibrancyEffectViewIfNeeded;
- (void)_fetchVibrancyGroupNameIfNeeded;
- (void)_invalidateStyleProvider;
- (void)_updateAppearanceForVibrancyChange;
- (void)_updateViewPositioning;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setFillColor:(id)color;
@end

@implementation MKHairlineView

- (void)_invalidateStyleProvider
{
  traitCollection = [(MKHairlineView *)self traitCollection];
  v4 = [(MKHairlineView *)self _bestStyleProviderForTraitCollection:traitCollection];
  styleProvider = self->_styleProvider;
  self->_styleProvider = v4;

  [(MKHairlineView *)self _updateAppearanceForVibrancyChange];
}

- (void)_updateAppearanceForVibrancyChange
{
  fillColor = [(MKHairlineView *)self fillColor];
  [(UIView *)self->_contentView setBackgroundColor:fillColor];

  traitCollection = [(MKHairlineView *)self traitCollection];
  _vibrancy = [traitCollection _vibrancy];

  if (_vibrancy == 1)
  {
    [(MKHairlineView *)self _createVibrancyEffectViewIfNeeded];
    [(UIVisualEffectView *)self->_vibrancyEffectView setHidden:0];
    styleProvider = self->_styleProvider;
    traitCollection2 = [(MKHairlineView *)self traitCollection];
    v8 = [(MKHairlineViewStyleProvider *)styleProvider vibrancyEffectForTraitCollection:traitCollection2];
    [(UIVisualEffectView *)self->_vibrancyEffectView setEffect:v8];

    [(MKHairlineView *)self _fetchVibrancyGroupNameIfNeeded];
    contentView = [(UIVisualEffectView *)self->_vibrancyEffectView contentView];
    [contentView addSubview:self->_contentView];

    superview = [(UIVisualEffectView *)self->_vibrancyEffectView superview];

    if (superview != self)
    {
      [(MKHairlineView *)self addSubview:self->_vibrancyEffectView];

      [(MKHairlineView *)self _updateViewPositioning];
    }
  }

  else
  {
    [(MKHairlineView *)self addSubview:self->_contentView];
    [(MKHairlineView *)self _updateViewPositioning];
    vibrancyEffectView = self->_vibrancyEffectView;

    [(UIVisualEffectView *)vibrancyEffectView setHidden:1];
  }
}

- (UIColor)fillColor
{
  fillColor = self->_fillColor;
  if (fillColor)
  {
    fillColor = fillColor;
  }

  else
  {
    fillColor = [(MKHairlineViewStyleProvider *)self->_styleProvider fillColor];
  }

  return fillColor;
}

- (void)_updateViewPositioning
{
  [(MKHairlineView *)self bounds];
  [(UIVisualEffectView *)self->_vibrancyEffectView setFrame:?];
  superview = [(UIView *)self->_contentView superview];
  [superview bounds];
  [(UIView *)self->_contentView setFrame:?];
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_fillColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_fillColor, color);
    fillColor = [(MKHairlineView *)self fillColor];
    [(UIView *)self->_contentView setBackgroundColor:fillColor];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MKHairlineView;
  [(MKHairlineView *)&v3 didMoveToWindow];
  [(MKHairlineView *)self _fetchVibrancyGroupNameIfNeeded];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MKHairlineView;
  [(MKHairlineView *)&v3 layoutSubviews];
  [(MKHairlineView *)self _updateViewPositioning];
}

- (void)_fetchVibrancyGroupNameIfNeeded
{
  window = [(MKHairlineView *)self window];

  if (window)
  {
    vibrancyEffectView = self->_vibrancyEffectView;
    if (vibrancyEffectView)
    {
      if (([(UIVisualEffectView *)vibrancyEffectView isHidden]& 1) == 0)
      {
        _groupName = [(UIVisualEffectView *)self->_vibrancyEffectView _groupName];
        v6 = [_groupName length];

        if (!v6)
        {
          window2 = [(MKHairlineView *)self window];

          if (window2)
          {
            superview = [(MKHairlineView *)self superview];
            if (superview)
            {
              while (1)
              {
                v11 = superview;
                if (objc_opt_respondsToSelector())
                {
                  break;
                }

                superview2 = [v11 superview];

                superview = superview2;
                if (!superview2)
                {
                  return;
                }
              }

              vibrancyGroupName = [v11 vibrancyGroupName];
              [(UIVisualEffectView *)self->_vibrancyEffectView _setGroupName:vibrancyGroupName];
            }
          }
        }
      }
    }
  }
}

- (void)_createVibrancyEffectViewIfNeeded
{
  if (!self->_vibrancyEffectView)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
    vibrancyEffectView = self->_vibrancyEffectView;
    self->_vibrancyEffectView = v3;
  }
}

- (id)_bestStyleProviderForTraitCollection:(id)collection
{
  _vibrancy = [collection _vibrancy];
  v4 = off_1E76C4BB0;
  if (_vibrancy != 1)
  {
    v4 = off_1E76C4AC8;
  }

  v5 = objc_alloc_init(*v4);

  return v5;
}

- (MKHairlineView)initWithFrame:(CGRect)frame
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = MKHairlineView;
  v3 = [(MKHairlineView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    contentView = v3->_contentView;
    v3->_contentView = v5;

    [(MKHairlineView *)v3 _invalidateStyleProvider];
    v7 = objc_opt_self();
    v12[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9 = [(MKHairlineView *)v3 registerForTraitChanges:v8 withAction:sel__invalidateStyleProvider];
  }

  return v3;
}

@end