@interface _MKZoomSliderView
- (_MKZoomSliderView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)setActive:(BOOL)active;
- (void)setBounds:(CGRect)bounds;
- (void)updateConstraints;
@end

@implementation _MKZoomSliderView

- (void)setActive:(BOOL)active
{
  v51[3] = *MEMORY[0x1E69E9840];
  if (self->_active != active)
  {
    activeCopy = active;
    self->_active = active;
    layer = [(UIView *)self->_knob layer];
    currentLayer = [layer currentLayer];

    if (activeCopy)
    {
      memset(&v49, 0, sizeof(v49));
      CATransform3DMakeScale(&v49, 2.0, 2.0, 1.0);
      v7 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform"];
      [v7 setMass:1.20000005];
      [v7 setStiffness:300.0];
      [v7 setDamping:30.0];
      v8 = MEMORY[0x1E696B098];
      if (currentLayer)
      {
        [currentLayer transform];
      }

      else
      {
        memset(&v48, 0, sizeof(v48));
      }

      v10 = [v8 valueWithCATransform3D:&v48];
      [v7 setFromValue:v10];

      v48 = v49;
      v11 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v48];
      [v7 setToValue:v11];

      v12 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"shadowOffset"];
      [v12 setMass:1.20000005];
      [v12 setStiffness:300.0];
      [v12 setDamping:30.0];
      v13 = MEMORY[0x1E696B098];
      [currentLayer shadowOffset];
      v14 = [v13 valueWithCGSize:?];
      [v12 setFromValue:v14];

      v15 = [MEMORY[0x1E696B098] valueWithCGSize:{0.0, 12.0}];
      [v12 setToValue:v15];

      v16 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"shadowOpacity"];
      [v16 setMass:1.20000005];
      [v16 setStiffness:300.0];
      [v16 setDamping:30.0];
      v17 = MEMORY[0x1E696AD98];
      [currentLayer shadowOpacity];
      v18 = [v17 numberWithFloat:?];
      [v16 setFromValue:v18];

      [v16 setToValue:&unk_1F1610CC0];
      animation = [MEMORY[0x1E6979308] animation];
      [animation setDuration:0.300000012];
      v51[0] = v7;
      v51[1] = v12;
      v51[2] = v16;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
      [animation setAnimations:v20];

      layer2 = [(UIView *)self->_knob layer];
      [layer2 addAnimation:animation forKey:@"Active"];

      v47 = v49;
      layer3 = [(UIView *)self->_knob layer];
      v48 = v47;
      [layer3 setTransform:&v48];

      layer4 = [(UIView *)self->_knob layer];
      [layer4 setShadowOffset:{0.0, 12.0}];

      layer5 = [(UIView *)self->_knob layer];
      v25 = layer5;
      LODWORD(v26) = 1045220557;
    }

    else
    {
      v7 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform"];
      [v7 setMass:1.20000005];
      [v7 setStiffness:300.0];
      [v7 setDamping:30.0];
      v9 = MEMORY[0x1E696B098];
      if (currentLayer)
      {
        [currentLayer transform];
      }

      else
      {
        memset(&v49, 0, sizeof(v49));
      }

      v27 = [v9 valueWithCATransform3D:&v49];
      [v7 setFromValue:v27];

      v45 = *(MEMORY[0x1E69792E8] + 80);
      *&v49.m31 = *(MEMORY[0x1E69792E8] + 64);
      v46 = *&v49.m31;
      *&v49.m33 = v45;
      v43 = *(MEMORY[0x1E69792E8] + 112);
      *&v49.m41 = *(MEMORY[0x1E69792E8] + 96);
      v44 = *&v49.m41;
      *&v49.m43 = v43;
      v41 = *(MEMORY[0x1E69792E8] + 16);
      *&v49.m11 = *MEMORY[0x1E69792E8];
      v42 = *&v49.m11;
      *&v49.m13 = v41;
      v39 = *(MEMORY[0x1E69792E8] + 48);
      *&v49.m21 = *(MEMORY[0x1E69792E8] + 32);
      v40 = *&v49.m21;
      *&v49.m23 = v39;
      v28 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v49];
      [v7 setToValue:v28];

      v12 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"shadowOffset"];
      [v12 setMass:1.20000005];
      [v12 setStiffness:300.0];
      [v12 setDamping:30.0];
      v29 = MEMORY[0x1E696B098];
      [currentLayer shadowOffset];
      v30 = [v29 valueWithCGSize:?];
      [v12 setFromValue:v30];

      v31 = [MEMORY[0x1E696B098] valueWithCGSize:{0.0, 4.0}];
      [v12 setToValue:v31];

      v16 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"shadowOpacity"];
      [v16 setMass:1.20000005];
      [v16 setStiffness:300.0];
      [v16 setDamping:30.0];
      v32 = MEMORY[0x1E696AD98];
      [currentLayer shadowOpacity];
      v33 = [v32 numberWithFloat:?];
      [v16 setFromValue:v33];

      [v16 setToValue:&unk_1F1610CD0];
      animation = [MEMORY[0x1E6979308] animation];
      [animation setDuration:0.300000012];
      v50[0] = v7;
      v50[1] = v12;
      v50[2] = v16;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:3];
      [animation setAnimations:v34];

      layer6 = [(UIView *)self->_knob layer];
      [layer6 removeAnimationForKey:@"Active"];

      layer7 = [(UIView *)self->_knob layer];
      [layer7 addAnimation:animation forKey:@"Active"];

      layer8 = [(UIView *)self->_knob layer];
      *&v49.m31 = v46;
      *&v49.m33 = v45;
      *&v49.m41 = v44;
      *&v49.m43 = v43;
      *&v49.m11 = v42;
      *&v49.m13 = v41;
      *&v49.m21 = v40;
      *&v49.m23 = v39;
      [layer8 setTransform:&v49];

      layer9 = [(UIView *)self->_knob layer];
      [layer9 setShadowOffset:{0.0, 4.0}];

      layer5 = [(UIView *)self->_knob layer];
      v25 = layer5;
      LODWORD(v26) = 1053609165;
    }

    [layer5 setShadowOpacity:v26];
  }
}

- (void)updateConstraints
{
  v9.receiver = self;
  v9.super_class = _MKZoomSliderView;
  [(_MKZoomSliderView *)&v9 updateConstraints];
  v3 = 1.0;
  v4 = 1.0 - self->_zoomFraction;
  v5 = v4 > 0.0 || v4 >= 1.0;
  v6 = v4 <= 0.0 || v4 >= 1.0;
  if (!v5)
  {
    v3 = 0.0;
  }

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v7 = 1.0 - self->_zoomFraction;
  }

  [(_MKZoomSliderView *)self bounds];
  [(NSLayoutConstraint *)self->_knobCenterYConstraint setConstant:v8 * v7];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _MKZoomSliderView;
  [(_MKZoomSliderView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(_MKZoomSliderView *)self setNeedsUpdateConstraints];
}

- (void)didMoveToWindow
{
  v9.receiver = self;
  v9.super_class = _MKZoomSliderView;
  [(_MKZoomSliderView *)&v9 didMoveToWindow];
  window = [(_MKZoomSliderView *)self window];

  if (window)
  {
    window2 = [(_MKZoomSliderView *)self window];
    screen = [window2 screen];
    [screen scale];
    v7 = v6;

    if (vabdd_f64(v7, self->_lastTrackShadowImageScale) >= 0.000001)
    {
      self->_lastTrackShadowImageScale = v7;
      v8 = _trackShadowImage(v7);
      [(UIImageView *)self->_shadowImageView setImage:v8];
    }
  }
}

- (_MKZoomSliderView)initWithFrame:(CGRect)frame
{
  v53.receiver = self;
  v53.super_class = _MKZoomSliderView;
  v3 = [(_MKZoomSliderView *)&v53 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v7 = _trackShadowImage(v6);
    v8 = [v4 initWithImage:v7];
    shadowImageView = v3->_shadowImageView;
    v3->_shadowImageView = v8;

    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 scale];
    v3->_lastTrackShadowImageScale = v11;

    [(UIImageView *)v3->_shadowImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MKZoomSliderView *)v3 addSubview:v3->_shadowImageView];
    v12 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_shadowImageView attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
    [(_MKZoomSliderView *)v3 addConstraint:v12];

    v13 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_shadowImageView attribute:3 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:-75.0];
    [(_MKZoomSliderView *)v3 addConstraint:v13];

    v14 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_shadowImageView attribute:4 relatedBy:0 toItem:v3 attribute:4 multiplier:1.0 constant:75.0];
    [(_MKZoomSliderView *)v3 addConstraint:v14];

    v15 = [MEMORY[0x1E69DC730] effectWithStyle:4001];
    v16 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v15];
    [v16 _setCornerRadius:1 continuous:15 maskedCorners:6.0];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MKZoomSliderView *)v3 addSubview:v16];
    v17 = [MEMORY[0x1E696ACD8] constraintWithItem:v16 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:12.0];
    [(_MKZoomSliderView *)v3 addConstraint:v17];

    v18 = MEMORY[0x1E696ACD8];
    v19 = _NSDictionaryOfVariableBindings(&cfstr_Track.isa, v16, 0);
    v20 = [v18 constraintsWithVisualFormat:@"H:|[track]|" options:0 metrics:0 views:v19];
    [(_MKZoomSliderView *)v3 addConstraints:v20];

    v21 = MEMORY[0x1E696ACD8];
    v22 = _NSDictionaryOfVariableBindings(&cfstr_Track.isa, v16, 0);
    v23 = [v21 constraintsWithVisualFormat:@"V:|[track]|" options:0 metrics:0 views:v22];
    [(_MKZoomSliderView *)v3 addConstraints:v23];

    v24 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIView *)v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    layer = [(UIView *)v24 layer];
    [layer setShadowColor:cGColor];

    layer2 = [(UIView *)v24 layer];
    [layer2 setShadowRadius:6.0];

    layer3 = [(UIView *)v24 layer];
    LODWORD(v30) = 1053609165;
    [layer3 setShadowOpacity:v30];

    layer4 = [(UIView *)v24 layer];
    [layer4 setShadowOffset:{0.0, 4.0}];

    v32 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, 24.0, 24.0}];
    cGPath = [v32 CGPath];
    layer5 = [(UIView *)v24 layer];
    [layer5 setShadowPath:cGPath];

    [(_MKZoomSliderView *)v3 addSubview:v24];
    v35 = [MEMORY[0x1E696ACD8] constraintWithItem:v24 attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
    [(_MKZoomSliderView *)v3 addConstraint:v35];

    v36 = [MEMORY[0x1E696ACD8] constraintWithItem:v24 attribute:10 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:0.0];
    knobCenterYConstraint = v3->_knobCenterYConstraint;
    v3->_knobCenterYConstraint = v36;

    [(_MKZoomSliderView *)v3 addConstraint:v3->_knobCenterYConstraint];
    v38 = [MEMORY[0x1E696ACD8] constraintWithItem:v24 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:24.0];
    [(_MKZoomSliderView *)v3 addConstraint:v38];

    v39 = [MEMORY[0x1E696ACD8] constraintWithItem:v24 attribute:8 relatedBy:0 toItem:v24 attribute:7 multiplier:1.0 constant:0.0];
    [(_MKZoomSliderView *)v3 addConstraint:v39];

    v40 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v40 setBackgroundColor:whiteColor];

    layer6 = [v40 layer];
    [layer6 setMasksToBounds:1];

    layer7 = [v40 layer];
    [layer7 setCornerRadius:12.0];

    [(UIView *)v24 addSubview:v40];
    v44 = MEMORY[0x1E696ACD8];
    v45 = _NSDictionaryOfVariableBindings(&cfstr_Knobcircle.isa, v40, 0);
    v46 = [v44 constraintsWithVisualFormat:@"H:|[knobCircle]|" options:0 metrics:0 views:v45];
    [(UIView *)v24 addConstraints:v46];

    v47 = MEMORY[0x1E696ACD8];
    v48 = _NSDictionaryOfVariableBindings(&cfstr_Knobcircle.isa, v40, 0);
    v49 = [v47 constraintsWithVisualFormat:@"V:|[knobCircle]|" options:0 metrics:0 views:v48];
    [(UIView *)v24 addConstraints:v49];

    knob = v3->_knob;
    v3->_knob = v24;

    v51 = v3;
  }

  return v3;
}

@end