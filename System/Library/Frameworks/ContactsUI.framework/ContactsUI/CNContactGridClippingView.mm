@interface CNContactGridClippingView
- (BOOL)masksToAvatar;
- (CNAvatarView)avatarView;
- (void)layoutSubviews;
- (void)setMasksToAvatar:(BOOL)avatar;
@end

@implementation CNContactGridClippingView

- (CNAvatarView)avatarView
{
  WeakRetained = objc_loadWeakRetained(&self->_avatarView);

  return WeakRetained;
}

- (BOOL)masksToAvatar
{
  actionsMaskLayer = [(CNContactGridClippingView *)self actionsMaskLayer];
  v3 = actionsMaskLayer != 0;

  return v3;
}

- (void)setMasksToAvatar:(BOOL)avatar
{
  avatarCopy = avatar;
  if ([(CNContactGridClippingView *)self masksToAvatar]!= avatar)
  {
    if (avatarCopy)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69794A0]);
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      [v8 setFillColor:{objc_msgSend(blackColor, "CGColor")}];

      [v8 setFillRule:*MEMORY[0x1E69797F8]];
      layer = [(CNContactGridClippingView *)self layer];
      [layer setMask:v8];

      [(CNContactGridClippingView *)self setActionsMaskLayer:v8];
    }

    else
    {
      layer2 = [(CNContactGridClippingView *)self layer];
      [layer2 setMask:0];

      [(CNContactGridClippingView *)self setActionsMaskLayer:0];
    }
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = CNContactGridClippingView;
  [(CNContactGridClippingView *)&v26 layoutSubviews];
  actionsMaskLayer = [(CNContactGridClippingView *)self actionsMaskLayer];

  if (actionsMaskLayer)
  {
    [(CNContactGridClippingView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    Width = CGRectGetWidth(v27);

    avatarView = [(CNContactGridClippingView *)self avatarView];
    avatarView2 = [(CNContactGridClippingView *)self avatarView];
    [avatarView2 bounds];
    [avatarView convertRect:self toView:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    actionsMaskLayer2 = [(CNContactGridClippingView *)self actionsMaskLayer];
    [actionsMaskLayer2 setFrame:{v5, v7, Width, v9}];

    Mutable = CGPathCreateMutable();
    v28.origin.x = v15;
    v28.origin.y = v17;
    v28.size.width = v19;
    v28.size.height = v21;
    MidY = CGRectGetMidY(v28);
    CGPathAddArc(Mutable, 0, 0.0, MidY, v21 * 0.5, 0.0, 6.28318531, 1);
    v29.origin.x = v5;
    v29.origin.y = v7;
    v29.size.width = Width;
    v29.size.height = v9;
    CGPathAddRect(Mutable, 0, v29);
    actionsMaskLayer3 = [(CNContactGridClippingView *)self actionsMaskLayer];
    [actionsMaskLayer3 setPath:Mutable];

    CFRelease(Mutable);
  }
}

@end