@interface AKToolbarBackgroundView
- (AKToolbarBackgroundView)initWithFrame:(CGRect)frame;
- (void)_hostSeparatorInView:(id)view;
- (void)setBackgroundColor:(id)color;
- (void)setBlurStyle:(int64_t)style;
- (void)setOpaque:(BOOL)opaque;
- (void)setSeparatorColor:(id)color;
- (void)setTranslucent:(BOOL)translucent;
- (void)updateSeparatorVisibility;
@end

@implementation AKToolbarBackgroundView

- (AKToolbarBackgroundView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = AKToolbarBackgroundView;
  v3 = [(AKToolbarBackgroundView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    _secondarySystemBackgroundColor = [MEMORY[0x277D75348] _secondarySystemBackgroundColor];
    [(AKToolbarBackgroundView *)v3 setBackgroundColor:_secondarySystemBackgroundColor];

    v3->_blurStyle = 2;
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(AKToolbarBackgroundView *)v3 setSeparatorLine:v6];

    _separatorColor = [MEMORY[0x277D75348] _separatorColor];
    separatorLine = [(AKToolbarBackgroundView *)v3 separatorLine];
    [separatorLine setBackgroundColor:_separatorColor];

    separatorLine2 = [(AKToolbarBackgroundView *)v3 separatorLine];
    [separatorLine2 setTranslatesAutoresizingMaskIntoConstraints:0];

    separatorLine3 = [(AKToolbarBackgroundView *)v3 separatorLine];
    heightAnchor = [separatorLine3 heightAnchor];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v14 = [heightAnchor constraintEqualToConstant:1.0 / v13];
    [v14 setActive:1];

    [(AKToolbarBackgroundView *)v3 _hostSeparatorInView:v3];
  }

  return v3;
}

- (void)setOpaque:(BOOL)opaque
{
  v4.receiver = self;
  v4.super_class = AKToolbarBackgroundView;
  [(AKToolbarBackgroundView *)&v4 setOpaque:opaque];
  [(AKToolbarBackgroundView *)self updateSeparatorVisibility];
}

- (void)setBackgroundColor:(id)color
{
  v4.receiver = self;
  v4.super_class = AKToolbarBackgroundView;
  [(AKToolbarBackgroundView *)&v4 setBackgroundColor:color];
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
    backgroundColor = [(AKToolbarBackgroundView *)self backgroundColor];
    clearColor = [MEMORY[0x277D75348] clearColor];
    v3 = [backgroundColor isEqual:clearColor];
  }

  else
  {
    v3 = 1;
  }

  separatorLine = [(AKToolbarBackgroundView *)self separatorLine];
  [separatorLine setHidden:v3];
}

- (void)setBlurStyle:(int64_t)style
{
  if (self->_blurStyle != style)
  {
    self->_blurStyle = style;
    v5 = [MEMORY[0x277D75210] effectWithStyle:{-[AKToolbarBackgroundView blurStyle](self, "blurStyle")}];
    [(UIVisualEffectView *)self->_visualEffectView setEffect:v5];
  }
}

- (void)setTranslucent:(BOOL)translucent
{
  self->_translucent = translucent;
  if (translucent)
  {
    v4 = [MEMORY[0x277D75210] effectWithStyle:{-[AKToolbarBackgroundView blurStyle](self, "blurStyle")}];
    v5 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v4];
    visualEffectView = self->_visualEffectView;
    self->_visualEffectView = v5;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIVisualEffectView *)self->_visualEffectView setBackgroundColor:clearColor];

    [(UIView *)self ak_addSubview:self->_visualEffectView withEdgeInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(AKToolbarBackgroundView *)self sendSubviewToBack:self->_visualEffectView];
    contentView = [(UIVisualEffectView *)self->_visualEffectView contentView];
    [(AKToolbarBackgroundView *)self _hostSeparatorInView:contentView];

    separatorLine = [(AKToolbarBackgroundView *)self separatorLine];
    [separatorLine setOpaque:0];
  }

  else
  {
    separatorLine2 = [(AKToolbarBackgroundView *)self separatorLine];
    [separatorLine2 setOpaque:1];

    [(AKToolbarBackgroundView *)self _hostSeparatorInView:self];
    [(UIVisualEffectView *)self->_visualEffectView removeFromSuperview];
    v4 = self->_visualEffectView;
    self->_visualEffectView = 0;
  }

  [(AKToolbarBackgroundView *)self updateSeparatorVisibility];
}

- (void)setSeparatorColor:(id)color
{
  colorCopy = color;
  separatorLine = [(AKToolbarBackgroundView *)self separatorLine];
  [separatorLine setBackgroundColor:colorCopy];
}

- (void)_hostSeparatorInView:(id)view
{
  viewCopy = view;
  separatorLine = [(AKToolbarBackgroundView *)self separatorLine];
  [separatorLine setTranslatesAutoresizingMaskIntoConstraints:0];

  separatorLine2 = [(AKToolbarBackgroundView *)self separatorLine];
  [viewCopy addSubview:separatorLine2];

  separatorLine3 = [(AKToolbarBackgroundView *)self separatorLine];
  topAnchor = [separatorLine3 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v10 setActive:1];

  separatorLine4 = [(AKToolbarBackgroundView *)self separatorLine];
  leadingAnchor = [separatorLine4 leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v14 setActive:1];

  separatorLine5 = [(AKToolbarBackgroundView *)self separatorLine];
  trailingAnchor = [separatorLine5 trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];

  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v17 setActive:1];
}

@end