@interface LookAroundPuckView
- (LookAroundPuckView)initWithFrame:(CGRect)frame;
- (void)updateSubviewsAnimated:(BOOL)animated completion:(id)completion;
- (void)updateSubviewsIfNeededAnimated:(BOOL)animated completion:(id)completion;
@end

@implementation LookAroundPuckView

- (void)updateSubviewsIfNeededAnimated:(BOOL)animated completion:(id)completion
{
  if (self->_subviewsNeedUpdate)
  {
    self->_subviewsNeedUpdate = 0;
    [(LookAroundPuckView *)self updateSubviewsAnimated:animated completion:completion];
  }
}

- (void)updateSubviewsAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  isTilted = [(LookAroundPuckGlyphView *)self->_glyphView isTilted];
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

  state = [(LookAroundPuckView *)self state];
  __asm { FMOV            V0.2D, #1.0 }

  *&_Q0 = v36;
  if (state <= 1)
  {
    if (!state)
    {
      v37 = _Q0;
      v9 = 0.0;
      goto LABEL_12;
    }

    if (state == 1)
    {
      [(LookAroundPuckGlyphView *)self->_glyphView setTilted:0 animated:animatedCopy, v36];
      v37 = xmmword_101212860;
LABEL_12:
      v16 = 0.0;
      goto LABEL_18;
    }

    v37 = _Q0;
    goto LABEL_17;
  }

  v37 = _Q0;
  if (state != 2)
  {
    if (state == 3)
    {
      [(LookAroundPuckGlyphView *)self->_glyphView setTilted:1 animated:animatedCopy];
      v16 = 0.0;
      v8 = 1.2;
      goto LABEL_18;
    }

LABEL_17:
    v16 = 1.0;
    goto LABEL_18;
  }

  [(LookAroundPuckGlyphView *)self->_glyphView setTilted:1 animated:animatedCopy];
  if (self->_dimmed)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

LABEL_18:
  selfCopy = self;
  v18 = selfCopy->_coneContainerView;
  v19 = selfCopy->_puckConeView;
  v20 = selfCopy->_puckImageView;
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
  v26 = selfCopy;
  v55 = v26;
  v27 = objc_retainBlock(v50);
  v28 = v27;
  if (animatedCopy)
  {
    v38 = completionCopy;
    if ((isTilted & 1) == 0)
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

    v29 = isTilted ^ [(LookAroundPuckGlyphView *)self->_glyphView isTilted];
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

    completionCopy = v38;
  }

  else
  {
    (v27[2])(v27, 1);
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }
  }
}

- (LookAroundPuckView)initWithFrame:(CGRect)frame
{
  v45.receiver = self;
  v45.super_class = LookAroundPuckView;
  v3 = [(LookAroundPuckView *)&v45 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    height = [[LookAroundPuckGlyphView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    glyphView = v3->_glyphView;
    v3->_glyphView = height;

    [(LookAroundPuckGlyphView *)v3->_glyphView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(LookAroundPuckView *)v3 addSubview:v3->_glyphView];
    centerXAnchor = [(UIView *)v3->_coneContainerView centerXAnchor];
    centerXAnchor2 = [(LookAroundPuckView *)v3 centerXAnchor];
    v40 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v46[0] = v40;
    centerYAnchor = [(UIView *)v3->_coneContainerView centerYAnchor];
    centerYAnchor2 = [(LookAroundPuckView *)v3 centerYAnchor];
    v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v46[1] = v37;
    centerXAnchor3 = [(UIImageView *)v3->_puckConeView centerXAnchor];
    centerXAnchor4 = [(LookAroundPuckView *)v3 centerXAnchor];
    v34 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v46[2] = v34;
    centerYAnchor3 = [(UIImageView *)v3->_puckConeView centerYAnchor];
    centerYAnchor4 = [(LookAroundPuckView *)v3 centerYAnchor];
    v31 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v46[3] = v31;
    centerXAnchor5 = [(UIImageView *)v3->_puckImageView centerXAnchor];
    centerXAnchor6 = [(LookAroundPuckView *)v3 centerXAnchor];
    v28 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v46[4] = v28;
    centerYAnchor5 = [(UIImageView *)v3->_puckImageView centerYAnchor];
    centerYAnchor6 = [(LookAroundPuckView *)v3 centerYAnchor];
    v17 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v46[5] = v17;
    centerXAnchor7 = [(LookAroundPuckGlyphView *)v3->_glyphView centerXAnchor];
    centerXAnchor8 = [(LookAroundPuckView *)v3 centerXAnchor];
    v20 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    v46[6] = v20;
    centerYAnchor7 = [(LookAroundPuckGlyphView *)v3->_glyphView centerYAnchor];
    centerYAnchor8 = [(LookAroundPuckView *)v3 centerYAnchor];
    v23 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
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