@interface LPContactsBadgeView
- (CGRect)layoutExclusionRect;
- (CGSize)sizeThatFits:(CGSize)a3;
- (LPContactsBadgeView)initWithHost:(id)a3 contacts:(id)a4 highlighted:(BOOL)a5 style:(id)a6;
- (void)dealloc;
- (void)layoutComponentView;
@end

@implementation LPContactsBadgeView

- (LPContactsBadgeView)initWithHost:(id)a3 contacts:(id)a4 highlighted:(BOOL)a5 style:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v38 = a6;
  v39.receiver = self;
  v39.super_class = LPContactsBadgeView;
  v12 = [(LPComponentView *)&v39 initWithHost:v10];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_style, a6);
    [(LPContactsBadgeView *)v13 setUserInteractionEnabled:0];
    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v14 = getCNAvatarViewClass_softClass;
    v44 = getCNAvatarViewClass_softClass;
    if (!getCNAvatarViewClass_softClass)
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __getCNAvatarViewClass_block_invoke;
      v40[3] = &unk_1E7A35518;
      v40[4] = &v41;
      __getCNAvatarViewClass_block_invoke(v40);
      v14 = v42[3];
    }

    v15 = v14;
    _Block_object_dispose(&v41, 8);
    v16 = objc_alloc_init(v14);
    [v16 setContacts:v11];
    objc_storeStrong(&v13->_avatarView, v16);
    [(LPContactsBadgeView *)v13 addSubview:v13->_avatarView];
    if (v7)
    {
      v17 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      highlightIndicatorView = v13->_highlightIndicatorView;
      v13->_highlightIndicatorView = v17;

      v19 = [MEMORY[0x1E69DCAB8] _lp_systemImageNamed:@"pin.fill"];
      v20 = [MEMORY[0x1E69DCAD8] _lp_configurationWithPointSize:11.0];
      v21 = [v19 _lp_imageByApplyingSymbolConfiguration:v20];
      [(UIImageView *)v13->_highlightIndicatorView setImage:v21];

      v22 = v13->_highlightIndicatorView;
      v23 = [MEMORY[0x1E69DC888] whiteColor];
      [(UIImageView *)v22 _lp_setTintColor:v23];

      v24 = v13->_highlightIndicatorView;
      v25 = [MEMORY[0x1E69DC888] systemYellowColor];
      [(UIImageView *)v24 _lp_setBackgroundColor:v25];

      [(UIView *)v13 _lp_insertSubview:v13->_highlightIndicatorView belowSubview:v13->_avatarView];
      [(UIImageView *)v13->_highlightIndicatorView setContentMode:4];
      if ([(LPContactsBadgeStyle *)v13->_style useShadow])
      {
        v26 = objc_alloc_init(MEMORY[0x1E69DD250]);
        highlightShadowView = v13->_highlightShadowView;
        v13->_highlightShadowView = v26;

        [(UIView *)v13->_highlightShadowView _lp_setShadowRadius:10.0];
        [(UIView *)v13->_highlightShadowView _lp_setShadowOffset:0.0, 3.0];
        [(UIView *)v13->_highlightShadowView _lp_setShadowOpacity:0.5];
        v28 = v13->_highlightShadowView;
        v29 = [MEMORY[0x1E69DC888] systemYellowColor];
        [(UIView *)v28 _lp_setShadowColor:v29];

        [(UIView *)v13 _lp_insertSubview:v13->_highlightShadowView belowSubview:v13->_highlightIndicatorView];
      }

      v30 = objc_alloc_init(MEMORY[0x1E69794A0]);
      maskLayer = v13->_maskLayer;
      v13->_maskLayer = v30;

      [(CAShapeLayer *)v13->_maskLayer setFillRule:*MEMORY[0x1E69797F8]];
      v32 = [MEMORY[0x1E69DC888] blackColor];
      -[CAShapeLayer setFillColor:](v13->_maskLayer, "setFillColor:", [v32 CGColor]);

      v33 = v13->_maskLayer;
      v34 = [(UIImageView *)v13->_highlightIndicatorView layer];
      [v34 setMask:v33];
    }

    if ([(LPContactsBadgeStyle *)v13->_style useShadow])
    {
      [(UIView *)v13 _lp_setShadowRadius:4.0];
      [(UIView *)v13 _lp_setShadowOffset:0.0, 2.0];
      [(UIView *)v13 _lp_setShadowOpacity:0.5];
      v35 = [MEMORY[0x1E69DC888] blackColor];
      [(UIView *)v13 _lp_setShadowColor:v35];
    }

    v36 = v13;
  }

  return v13;
}

- (void)layoutComponentView
{
  [(LPContactsBadgeStyle *)self->_style margin];
  v4 = v3;
  [(LPContactsBadgeStyle *)self->_style margin];
  v6 = v5;
  v7 = [(LPContactsBadgeStyle *)self->_style size];
  [v7 value];
  v9 = v8;
  v10 = [(LPContactsBadgeStyle *)self->_style size];
  [v10 value];
  [(UIView *)self->_avatarView setFrame:v4, v6, v9, v11];

  if (self->_highlightIndicatorView)
  {
    [(LPContactsBadgeStyle *)self->_style margin];
    v13 = v12;
    v14 = [(LPContactsBadgeStyle *)self->_style size];
    [v14 value];
    v16 = v15;
    [(LPContactsBadgeStyle *)self->_style margin];
    v18 = v17;
    v19 = [(LPContactsBadgeStyle *)self->_style size];
    [v19 value];
    v21 = v20;
    v22 = [(LPContactsBadgeStyle *)self->_style size];
    [v22 value];
    [(UIImageView *)self->_highlightIndicatorView setFrame:v13 + v16 * 0.5 + 2.0, v18, v21, v23];

    highlightIndicatorView = self->_highlightIndicatorView;
    v25 = [(LPContactsBadgeStyle *)self->_style size];
    [v25 value];
    [(UIImageView *)highlightIndicatorView _lp_setCornerRadius:v26 * 0.5];

    if ([(LPContactsBadgeStyle *)self->_style useShadow])
    {
      [(UIImageView *)self->_highlightIndicatorView frame];
      [(UIView *)self->_highlightShadowView setFrame:?];
      Mutable = CGPathCreateMutable();
      [(UIView *)self->_highlightShadowView bounds];
      CGPathAddEllipseInRect(Mutable, 0, v39);
      v28 = [(UIView *)self->_highlightShadowView layer];
      [v28 setShadowPath:Mutable];

      CGPathRelease(Mutable);
    }

    v29 = CGPathCreateMutable();
    v30 = [(LPContactsBadgeStyle *)self->_style size];
    [v30 value];
    v32 = v31;
    v33 = [(LPContactsBadgeStyle *)self->_style size];
    [v33 value];
    v35 = v34;
    v36 = [(LPContactsBadgeStyle *)self->_style size];
    [v36 value];
    v40.size.width = v35 + 4.0;
    v40.size.height = v37 + 4.0;
    v40.origin.y = -2.0;
    v40.origin.x = v32 * -0.5 + -4.0;
    CGPathAddEllipseInRect(v29, 0, v40);

    [(UIImageView *)self->_highlightIndicatorView bounds];
    CGPathAddRect(v29, 0, v41);
    [(CAShapeLayer *)self->_maskLayer setPath:v29];

    CGPathRelease(v29);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  highlightIndicatorView = self->_highlightIndicatorView;
  v5 = [(LPContactsBadgeStyle *)self->_style size:a3.width];
  [v5 value];
  v7 = v6;
  if (highlightIndicatorView)
  {
    v8 = [(LPContactsBadgeStyle *)self->_style size];
    [v8 value];
    v10 = v9;
    [(LPContactsBadgeStyle *)self->_style margin];
    v12 = v11;
    v13 = [(LPContactsBadgeStyle *)self->_style size];
    [v13 value];
    v15 = v14;
    [(LPContactsBadgeStyle *)self->_style margin];
    v16 = v7 + v10 * 0.5 + v12 * 2.0 + 2.0;
    v18 = v15 + v17 * 2.0;
  }

  else
  {
    [(LPContactsBadgeStyle *)self->_style margin];
    v20 = v19;
    v8 = [(LPContactsBadgeStyle *)self->_style size];
    [v8 value];
    v22 = v21;
    [(LPContactsBadgeStyle *)self->_style margin];
    v16 = v7 + v20 * 2.0;
    v18 = v22 + v23 * 2.0;
  }

  v24 = v16;
  v25 = v18;
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGRect)layoutExclusionRect
{
  highlightIndicatorView = self->_highlightIndicatorView;
  [(UIView *)self->_avatarView frame];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  if (highlightIndicatorView)
  {
    [(UIImageView *)self->_highlightIndicatorView frame];
    v24.origin.x = v12;
    v24.origin.y = v13;
    v24.size.width = v14;
    v24.size.height = v15;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v22 = CGRectUnion(v21, v24);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;

  return CGRectInset(*&v16, -6.0, -6.0);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = LPContactsBadgeView;
  [(LPContactsBadgeView *)&v2 dealloc];
}

@end