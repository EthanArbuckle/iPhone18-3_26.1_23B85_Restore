@interface AKToolbarBackgroundView
- (AKToolbarBackgroundView)initWithFrame:(CGRect)a3;
- (void)_hostSeparatorInView:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBlurStyle:(int64_t)a3;
- (void)setOpaque:(BOOL)a3;
- (void)setSeparatorColor:(id)a3;
- (void)setTranslucent:(BOOL)a3;
- (void)updateSeparatorVisibility;
@end

@implementation AKToolbarBackgroundView

- (AKToolbarBackgroundView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = AKToolbarBackgroundView;
  v3 = [(AKToolbarBackgroundView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] _secondarySystemBackgroundColor];
    [(AKToolbarBackgroundView *)v3 setBackgroundColor:v4];

    v3->_blurStyle = 2;
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(AKToolbarBackgroundView *)v3 setSeparatorLine:v6];

    v7 = [MEMORY[0x277D75348] _separatorColor];
    v8 = [(AKToolbarBackgroundView *)v3 separatorLine];
    [v8 setBackgroundColor:v7];

    v9 = [(AKToolbarBackgroundView *)v3 separatorLine];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(AKToolbarBackgroundView *)v3 separatorLine];
    v11 = [v10 heightAnchor];
    v12 = [MEMORY[0x277D759A0] mainScreen];
    [v12 scale];
    v14 = [v11 constraintEqualToConstant:1.0 / v13];
    [v14 setActive:1];

    [(AKToolbarBackgroundView *)v3 _hostSeparatorInView:v3];
  }

  return v3;
}

- (void)setOpaque:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AKToolbarBackgroundView;
  [(AKToolbarBackgroundView *)&v4 setOpaque:a3];
  [(AKToolbarBackgroundView *)self updateSeparatorVisibility];
}

- (void)setBackgroundColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = AKToolbarBackgroundView;
  [(AKToolbarBackgroundView *)&v4 setBackgroundColor:a3];
  [(AKToolbarBackgroundView *)self updateSeparatorVisibility];
}

- (void)updateSeparatorVisibility
{
  if ([(AKToolbarBackgroundView *)self isTranslucent])
  {
    v3 = 0;
  }

  else if ([(AKToolbarBackgroundView *)self isOpaque])
  {
    v4 = [(AKToolbarBackgroundView *)self backgroundColor];
    v5 = [MEMORY[0x277D75348] clearColor];
    v3 = [v4 isEqual:v5];
  }

  else
  {
    v3 = 1;
  }

  v6 = [(AKToolbarBackgroundView *)self separatorLine];
  [v6 setHidden:v3];
}

- (void)setBlurStyle:(int64_t)a3
{
  if (self->_blurStyle != a3)
  {
    self->_blurStyle = a3;
    v5 = [MEMORY[0x277D75210] effectWithStyle:{-[AKToolbarBackgroundView blurStyle](self, "blurStyle")}];
    [(UIVisualEffectView *)self->_visualEffectView setEffect:v5];
  }
}

- (void)setTranslucent:(BOOL)a3
{
  self->_translucent = a3;
  if (a3)
  {
    v4 = [MEMORY[0x277D75210] effectWithStyle:{-[AKToolbarBackgroundView blurStyle](self, "blurStyle")}];
    v5 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v4];
    visualEffectView = self->_visualEffectView;
    self->_visualEffectView = v5;

    v7 = [MEMORY[0x277D75348] clearColor];
    [(UIVisualEffectView *)self->_visualEffectView setBackgroundColor:v7];

    [(UIView *)self ak_addSubview:self->_visualEffectView withEdgeInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(AKToolbarBackgroundView *)self sendSubviewToBack:self->_visualEffectView];
    v8 = [(UIVisualEffectView *)self->_visualEffectView contentView];
    [(AKToolbarBackgroundView *)self _hostSeparatorInView:v8];

    v9 = [(AKToolbarBackgroundView *)self separatorLine];
    [v9 setOpaque:0];
  }

  else
  {
    v10 = [(AKToolbarBackgroundView *)self separatorLine];
    [v10 setOpaque:1];

    [(AKToolbarBackgroundView *)self _hostSeparatorInView:self];
    [(UIVisualEffectView *)self->_visualEffectView removeFromSuperview];
    v4 = self->_visualEffectView;
    self->_visualEffectView = 0;
  }

  [(AKToolbarBackgroundView *)self updateSeparatorVisibility];
}

- (void)setSeparatorColor:(id)a3
{
  v4 = a3;
  v5 = [(AKToolbarBackgroundView *)self separatorLine];
  [v5 setBackgroundColor:v4];
}

- (void)_hostSeparatorInView:(id)a3
{
  v4 = a3;
  v5 = [(AKToolbarBackgroundView *)self separatorLine];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(AKToolbarBackgroundView *)self separatorLine];
  [v4 addSubview:v6];

  v7 = [(AKToolbarBackgroundView *)self separatorLine];
  v8 = [v7 topAnchor];
  v9 = [v4 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [(AKToolbarBackgroundView *)self separatorLine];
  v12 = [v11 leadingAnchor];
  v13 = [v4 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v18 = [(AKToolbarBackgroundView *)self separatorLine];
  v15 = [v18 trailingAnchor];
  v16 = [v4 trailingAnchor];

  v17 = [v15 constraintEqualToAnchor:v16];
  [v17 setActive:1];
}

@end