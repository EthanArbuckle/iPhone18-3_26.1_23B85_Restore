@interface LookAroundPuckView
- (LookAroundPuckView)initWithFrame:(CGRect)a3;
- (void)updateSubviewsAnimated:(BOOL)a3 completion:(id)a4;
- (void)updateSubviewsIfNeededAnimated:(BOOL)a3 completion:(id)a4;
@end

@implementation LookAroundPuckView

- (void)updateSubviewsIfNeededAnimated:(BOOL)a3 completion:(id)a4
{
  if (self->_subviewsNeedUpdate)
  {
    self->_subviewsNeedUpdate = 0;
    [(LookAroundPuckView *)self updateSubviewsAnimated:a3 completion:a4];
  }
}

- (void)updateSubviewsAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v35 = [(LookAroundPuckGlyphView *)self->_glyphView isTilted];
  v36 = self->_heading + 3.14159265;
  pitch = self->_pitch;
  v8 = 1.0;
  if (self->_dimmed)
  {
    v9 = 0.5;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = [(LookAroundPuckView *)self state];
  __asm { FMOV            V0.2D, #1.0 }

  *&_Q0 = v36;
  if (v10 <= 1)
  {
    if (!v10)
    {
      v37 = _Q0;
      v9 = 0.0;
      goto LABEL_12;
    }

    if (v10 == 1)
    {
      [(LookAroundPuckGlyphView *)self->_glyphView setTilted:0 animated:v4, v36];
      v37 = xmmword_101212860;
LABEL_12:
      v16 = 0.0;
      goto LABEL_18;
    }

    v37 = _Q0;
    goto LABEL_17;
  }

  v37 = _Q0;
  if (v10 != 2)
  {
    if (v10 == 3)
    {
      [(LookAroundPuckGlyphView *)self->_glyphView setTilted:1 animated:v4];
      v16 = 0.0;
      v8 = 1.2;
      goto LABEL_18;
    }

LABEL_17:
    v16 = 1.0;
    goto LABEL_18;
  }

  [(LookAroundPuckGlyphView *)self->_glyphView setTilted:1 animated:v4];
  if (self->_dimmed)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

LABEL_18:
  v17 = self;
  v18 = v17->_coneContainerView;
  v19 = v17->_puckConeView;
  v20 = v17->_puckImageView;
  v21 = self->_glyphView;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100DF2688;
  v50[3] = &unk_101655360;
  v56 = v8;
  v57 = v37;
  v22 = v18;
  v51 = v22;
  v23 = v19;
  v52 = v23;
  v58 = v37;
  v59 = v16;
  v24 = v20;
  v53 = v24;
  v60 = v9;
  v25 = v21;
  v54 = v25;
  v61 = pitch;
  v26 = v17;
  v55 = v26;
  v27 = objc_retainBlock(v50);
  v28 = v27;
  if (v4)
  {
    v38 = v6;
    if ((v35 & 1) == 0)
    {
      v33 = *&CGAffineTransformIdentity.c;
      v47 = *&CGAffineTransformIdentity.a;
      v34 = v47;
      v48 = v33;
      v49 = *&CGAffineTransformIdentity.tx;
      v32 = v49;
      [(UIView *)v22 setTransform:&v47];
      v47 = v34;
      v48 = v33;
      v49 = v32;
      [(LookAroundPuckGlyphView *)v25 setTransform:&v47];
    }

    v29 = v35 ^ [(LookAroundPuckGlyphView *)self->_glyphView isTilted];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100DF292C;
    v44[3] = &unk_1016610E0;
    v30 = v28;
    v45 = v30;
    v46 = v29;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100DF294C;
    v41[3] = &unk_10165F6D8;
    v43 = v29;
    v31 = v38;
    v42 = v31;
    [UIView animateWithDuration:v44 animations:v41 completion:0.4];
    if (v29 == 1)
    {
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100DF296C;
      v39[3] = &unk_101661760;
      v40 = v30;
      [UIView animateWithDuration:0 delay:v39 options:v31 animations:0.3 completion:0.5];
    }

    v6 = v38;
  }

  else
  {
    (v27[2])(v27, 1);
    if (v6)
    {
      (*(v6 + 2))(v6, 1);
    }
  }
}

- (LookAroundPuckView)initWithFrame:(CGRect)a3
{
  v45.receiver = self;
  v45.super_class = LookAroundPuckView;
  v3 = [(LookAroundPuckView *)&v45 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    coneContainerView = v3->_coneContainerView;
    v3->_coneContainerView = v8;

    [(UIView *)v3->_coneContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(LookAroundPuckView *)v3 addSubview:v3->_coneContainerView];
    v44 = [UIImage imageNamed:@"Cone"];
    v10 = [[UIImageView alloc] initWithImage:v44];
    puckConeView = v3->_puckConeView;
    v3->_puckConeView = v10;

    [(UIImageView *)v3->_puckConeView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_coneContainerView addSubview:v3->_puckConeView];
    v43 = [UIImage imageNamed:@"Puck"];
    v12 = [[UIImageView alloc] initWithImage:v43];
    puckImageView = v3->_puckImageView;
    v3->_puckImageView = v12;

    [(UIImageView *)v3->_puckImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(LookAroundPuckView *)v3 addSubview:v3->_puckImageView];
    v14 = [[LookAroundPuckGlyphView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    glyphView = v3->_glyphView;
    v3->_glyphView = v14;

    [(LookAroundPuckGlyphView *)v3->_glyphView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(LookAroundPuckView *)v3 addSubview:v3->_glyphView];
    v42 = [(UIView *)v3->_coneContainerView centerXAnchor];
    v41 = [(LookAroundPuckView *)v3 centerXAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v46[0] = v40;
    v39 = [(UIView *)v3->_coneContainerView centerYAnchor];
    v38 = [(LookAroundPuckView *)v3 centerYAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v46[1] = v37;
    v36 = [(UIImageView *)v3->_puckConeView centerXAnchor];
    v35 = [(LookAroundPuckView *)v3 centerXAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v46[2] = v34;
    v33 = [(UIImageView *)v3->_puckConeView centerYAnchor];
    v32 = [(LookAroundPuckView *)v3 centerYAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v46[3] = v31;
    v30 = [(UIImageView *)v3->_puckImageView centerXAnchor];
    v29 = [(LookAroundPuckView *)v3 centerXAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v46[4] = v28;
    v27 = [(UIImageView *)v3->_puckImageView centerYAnchor];
    v16 = [(LookAroundPuckView *)v3 centerYAnchor];
    v17 = [v27 constraintEqualToAnchor:v16];
    v46[5] = v17;
    v18 = [(LookAroundPuckGlyphView *)v3->_glyphView centerXAnchor];
    v19 = [(LookAroundPuckView *)v3 centerXAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v46[6] = v20;
    v21 = [(LookAroundPuckGlyphView *)v3->_glyphView centerYAnchor];
    v22 = [(LookAroundPuckView *)v3 centerYAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v46[7] = v23;
    v24 = [NSArray arrayWithObjects:v46 count:8];
    [NSLayoutConstraint activateConstraints:v24];

    [(LookAroundPuckView *)v3 setNeedsUpdateSubviews];
    [(LookAroundPuckView *)v3 updateSubviewsIfNeeded];
    v25 = v3;
  }

  return v3;
}

@end