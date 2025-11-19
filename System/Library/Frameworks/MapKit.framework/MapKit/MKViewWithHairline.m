@interface MKViewWithHairline
- (MKViewWithHairline)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBottomHairlineHidden:(BOOL)a3;
- (void)setHairlineColor:(id)a3;
- (void)setLeftHairlineInset:(double)a3;
- (void)setRightHairlineInset:(double)a3;
- (void)setTopHairlineHidden:(BOOL)a3;
@end

@implementation MKViewWithHairline

- (void)layoutSubviews
{
  if (![(MKHairlineView *)self->_topHairline isHidden]|| ([(MKHairlineView *)self->_bottomHairline isHidden]& 1) == 0)
  {
    v31.receiver = self;
    v31.super_class = MKViewWithHairline;
    [(MKViewWithHairline *)&v31 layoutSubviews];
    [(MKViewWithHairline *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(MKViewWithHairline *)self window];
    v12 = [v11 screen];
    v13 = v12;
    if (v12)
    {
      [v12 nativeScale];
      v15 = v14;
    }

    else
    {
      v16 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v16 nativeScale];
      v15 = v17;
    }

    v18 = 1.0 / v15;
    if (([(MKHairlineView *)self->_bottomHairline isHidden]& 1) == 0)
    {
      [(MKViewWithHairline *)self leftHairlineInset];
      v20 = v4 + v19;
      v32.origin.x = v4;
      v32.origin.y = v6;
      v32.size.width = v8;
      v32.size.height = v10;
      v21 = CGRectGetMaxY(v32) - v18;
      [(MKViewWithHairline *)self leftHairlineInset];
      v23 = v8 - v22;
      [(MKViewWithHairline *)self rightHairlineInset];
      [(MKHairlineView *)self->_bottomHairline setFrame:v20, v21, v23 - v24, v18];
    }

    if (([(MKHairlineView *)self->_topHairline isHidden]& 1) == 0)
    {
      [(MKViewWithHairline *)self leftHairlineInset];
      v26 = v4 + v25;
      v33.origin.x = v4;
      v33.origin.y = v6;
      v33.size.width = v8;
      v33.size.height = v10;
      MinY = CGRectGetMinY(v33);
      [(MKViewWithHairline *)self leftHairlineInset];
      v29 = v8 - v28;
      [(MKViewWithHairline *)self rightHairlineInset];
      [(MKHairlineView *)self->_topHairline setFrame:v26, MinY, v29 - v30, v18];
    }
  }
}

- (void)setBottomHairlineHidden:(BOOL)a3
{
  v3 = a3;
  [(MKHairlineView *)self->_bottomHairline setHidden:?];
  bottomHairline = self->_bottomHairline;
  if (v3)
  {
    v6 = self->_bottomHairline;

    [(MKHairlineView *)v6 removeFromSuperview];
  }

  else
  {

    [(MKViewWithHairline *)self addSubview:bottomHairline];
  }
}

- (void)setTopHairlineHidden:(BOOL)a3
{
  v3 = a3;
  [(MKHairlineView *)self->_topHairline setHidden:?];
  topHairline = self->_topHairline;
  if (v3)
  {
    v6 = self->_topHairline;

    [(MKHairlineView *)v6 removeFromSuperview];
  }

  else
  {

    [(MKViewWithHairline *)self addSubview:topHairline];
  }
}

- (void)setRightHairlineInset:(double)a3
{
  if (self->_rightHairlineInset != a3)
  {
    self->_rightHairlineInset = a3;
    [(UIView *)self _mapkit_setNeedsLayout];
  }
}

- (void)setLeftHairlineInset:(double)a3
{
  if (self->_leftHairlineInset != a3)
  {
    self->_leftHairlineInset = a3;
    [(UIView *)self _mapkit_setNeedsLayout];
  }
}

- (void)setHairlineColor:(id)a3
{
  v5 = a3;
  if (self->_hairlineColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_hairlineColor, a3);
    [(MKHairlineView *)self->_topHairline setFillColor:self->_hairlineColor];
    [(MKHairlineView *)self->_bottomHairline setFillColor:self->_hairlineColor];
    v5 = v6;
  }
}

- (MKViewWithHairline)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = MKViewWithHairline;
  v3 = [(MKViewWithHairline *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MKHairlineView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(MKHairlineView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    bottomHairline = v3->_bottomHairline;
    v3->_bottomHairline = v9;

    [(MKHairlineView *)v3->_bottomHairline setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKViewWithHairline *)v3 addSubview:v3->_bottomHairline];
    v11 = [[MKHairlineView alloc] initWithFrame:v5, v6, v7, v8];
    topHairline = v3->_topHairline;
    v3->_topHairline = v11;

    [(MKHairlineView *)v3->_topHairline setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKHairlineView *)v3->_topHairline setHidden:1];
  }

  return v3;
}

@end