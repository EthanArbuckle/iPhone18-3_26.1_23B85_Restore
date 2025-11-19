@interface MKHairlineView
- (MKHairlineView)initWithFrame:(CGRect)a3;
- (UIColor)fillColor;
- (id)_bestStyleProviderForTraitCollection:(id)a3;
- (void)_createVibrancyEffectViewIfNeeded;
- (void)_fetchVibrancyGroupNameIfNeeded;
- (void)_invalidateStyleProvider;
- (void)_updateAppearanceForVibrancyChange;
- (void)_updateViewPositioning;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setFillColor:(id)a3;
@end

@implementation MKHairlineView

- (void)_invalidateStyleProvider
{
  v3 = [(MKHairlineView *)self traitCollection];
  v4 = [(MKHairlineView *)self _bestStyleProviderForTraitCollection:v3];
  styleProvider = self->_styleProvider;
  self->_styleProvider = v4;

  [(MKHairlineView *)self _updateAppearanceForVibrancyChange];
}

- (void)_updateAppearanceForVibrancyChange
{
  v3 = [(MKHairlineView *)self fillColor];
  [(UIView *)self->_contentView setBackgroundColor:v3];

  v4 = [(MKHairlineView *)self traitCollection];
  v5 = [v4 _vibrancy];

  if (v5 == 1)
  {
    [(MKHairlineView *)self _createVibrancyEffectViewIfNeeded];
    [(UIVisualEffectView *)self->_vibrancyEffectView setHidden:0];
    styleProvider = self->_styleProvider;
    v7 = [(MKHairlineView *)self traitCollection];
    v8 = [(MKHairlineViewStyleProvider *)styleProvider vibrancyEffectForTraitCollection:v7];
    [(UIVisualEffectView *)self->_vibrancyEffectView setEffect:v8];

    [(MKHairlineView *)self _fetchVibrancyGroupNameIfNeeded];
    v9 = [(UIVisualEffectView *)self->_vibrancyEffectView contentView];
    [v9 addSubview:self->_contentView];

    v10 = [(UIVisualEffectView *)self->_vibrancyEffectView superview];

    if (v10 != self)
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
    v3 = fillColor;
  }

  else
  {
    v3 = [(MKHairlineViewStyleProvider *)self->_styleProvider fillColor];
  }

  return v3;
}

- (void)_updateViewPositioning
{
  [(MKHairlineView *)self bounds];
  [(UIVisualEffectView *)self->_vibrancyEffectView setFrame:?];
  v3 = [(UIView *)self->_contentView superview];
  [v3 bounds];
  [(UIView *)self->_contentView setFrame:?];
}

- (void)setFillColor:(id)a3
{
  v6 = a3;
  if (([(UIColor *)self->_fillColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_fillColor, a3);
    v5 = [(MKHairlineView *)self fillColor];
    [(UIView *)self->_contentView setBackgroundColor:v5];
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
  v3 = [(MKHairlineView *)self window];

  if (v3)
  {
    vibrancyEffectView = self->_vibrancyEffectView;
    if (vibrancyEffectView)
    {
      if (([(UIVisualEffectView *)vibrancyEffectView isHidden]& 1) == 0)
      {
        v5 = [(UIVisualEffectView *)self->_vibrancyEffectView _groupName];
        v6 = [v5 length];

        if (!v6)
        {
          v7 = [(MKHairlineView *)self window];

          if (v7)
          {
            v8 = [(MKHairlineView *)self superview];
            if (v8)
            {
              while (1)
              {
                v11 = v8;
                if (objc_opt_respondsToSelector())
                {
                  break;
                }

                v9 = [v11 superview];

                v8 = v9;
                if (!v9)
                {
                  return;
                }
              }

              v10 = [v11 vibrancyGroupName];
              [(UIVisualEffectView *)self->_vibrancyEffectView _setGroupName:v10];
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

- (id)_bestStyleProviderForTraitCollection:(id)a3
{
  v3 = [a3 _vibrancy];
  v4 = off_1E76C4BB0;
  if (v3 != 1)
  {
    v4 = off_1E76C4AC8;
  }

  v5 = objc_alloc_init(*v4);

  return v5;
}

- (MKHairlineView)initWithFrame:(CGRect)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = MKHairlineView;
  v3 = [(MKHairlineView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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