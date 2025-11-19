@interface CNContactGridClippingView
- (BOOL)masksToAvatar;
- (CNAvatarView)avatarView;
- (void)layoutSubviews;
- (void)setMasksToAvatar:(BOOL)a3;
@end

@implementation CNContactGridClippingView

- (CNAvatarView)avatarView
{
  WeakRetained = objc_loadWeakRetained(&self->_avatarView);

  return WeakRetained;
}

- (BOOL)masksToAvatar
{
  v2 = [(CNContactGridClippingView *)self actionsMaskLayer];
  v3 = v2 != 0;

  return v3;
}

- (void)setMasksToAvatar:(BOOL)a3
{
  v3 = a3;
  if ([(CNContactGridClippingView *)self masksToAvatar]!= a3)
  {
    if (v3)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69794A0]);
      v5 = [MEMORY[0x1E69DC888] blackColor];
      [v8 setFillColor:{objc_msgSend(v5, "CGColor")}];

      [v8 setFillRule:*MEMORY[0x1E69797F8]];
      v6 = [(CNContactGridClippingView *)self layer];
      [v6 setMask:v8];

      [(CNContactGridClippingView *)self setActionsMaskLayer:v8];
    }

    else
    {
      v7 = [(CNContactGridClippingView *)self layer];
      [v7 setMask:0];

      [(CNContactGridClippingView *)self setActionsMaskLayer:0];
    }
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = CNContactGridClippingView;
  [(CNContactGridClippingView *)&v26 layoutSubviews];
  v3 = [(CNContactGridClippingView *)self actionsMaskLayer];

  if (v3)
  {
    [(CNContactGridClippingView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v10 bounds];
    Width = CGRectGetWidth(v27);

    v12 = [(CNContactGridClippingView *)self avatarView];
    v13 = [(CNContactGridClippingView *)self avatarView];
    [v13 bounds];
    [v12 convertRect:self toView:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = [(CNContactGridClippingView *)self actionsMaskLayer];
    [v22 setFrame:{v5, v7, Width, v9}];

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
    v25 = [(CNContactGridClippingView *)self actionsMaskLayer];
    [v25 setPath:Mutable];

    CFRelease(Mutable);
  }
}

@end