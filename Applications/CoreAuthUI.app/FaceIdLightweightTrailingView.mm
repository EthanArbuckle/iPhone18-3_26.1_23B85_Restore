@interface FaceIdLightweightTrailingView
- (FaceIdLightweightTrailingView)init;
- (FaceIdLightweightTrailingView)initWithDescriptionCaptureView:(id)view;
- (void)_setup;
- (void)_setupSecureView;
- (void)_setupSpinnerView;
- (void)setState:(int64_t)state;
@end

@implementation FaceIdLightweightTrailingView

- (FaceIdLightweightTrailingView)init
{
  v5.receiver = self;
  v5.super_class = FaceIdLightweightTrailingView;
  v2 = [(FaceIdLightweightTrailingView *)&v5 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v3 = v2;
  if (v2)
  {
    [(FaceIdLightweightTrailingView *)v2 _setup];
  }

  return v3;
}

- (FaceIdLightweightTrailingView)initWithDescriptionCaptureView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = FaceIdLightweightTrailingView;
  v6 = [(FaceIdLightweightTrailingView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_faceIDSpinnerView, view);
    [(FaceIdLightweightTrailingView *)v7 _setupSpinnerView];
  }

  return v7;
}

- (void)_setup
{
  v3 = +[LACSecureFaceIDUIUtilities sharedInstance];
  isActive = [v3 isActive];

  if (isActive && (v5 = [[LAUISecureFaceIDView alloc] initWithType:1], secureFaceIdView = self->_secureFaceIdView, self->_secureFaceIdView = v5, secureFaceIdView, self->_secureFaceIdView))
  {

    [(FaceIdLightweightTrailingView *)self _setupSecureView];
  }

  else
  {
    v7 = objc_opt_new();
    faceIDSpinnerView = self->_faceIDSpinnerView;
    self->_faceIDSpinnerView = v7;

    [(FaceIdLightweightTrailingView *)self _setupSpinnerView];
  }
}

- (void)_setupSpinnerView
{
  [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(FaceIdLightweightTrailingView *)self addSubview:self->_faceIDSpinnerView];
  [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView setState:1 animated:0 completion:0];
  leadingAnchor = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView leadingAnchor];
  leadingAnchor2 = [(FaceIdLightweightTrailingView *)self leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v16[0] = v13;
  trailingAnchor = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView trailingAnchor];
  trailingAnchor2 = [(FaceIdLightweightTrailingView *)self trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v16[1] = v5;
  topAnchor = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView topAnchor];
  topAnchor2 = [(FaceIdLightweightTrailingView *)self topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v16[2] = v8;
  bottomAnchor = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView bottomAnchor];
  bottomAnchor2 = [(FaceIdLightweightTrailingView *)self bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v16[3] = v11;
  v12 = [NSArray arrayWithObjects:v16 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupSecureView
{
  [(LAUISecureFaceIDView *)self->_secureFaceIdView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(FaceIdLightweightTrailingView *)self addSubview:self->_secureFaceIdView];
  [(LAUISecureFaceIDView *)self->_secureFaceIdView setState:0];
  centerXAnchor = [(LAUISecureFaceIDView *)self->_secureFaceIdView centerXAnchor];
  centerXAnchor2 = [(FaceIdLightweightTrailingView *)self centerXAnchor];
  v5 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v10[0] = v5;
  centerYAnchor = [(LAUISecureFaceIDView *)self->_secureFaceIdView centerYAnchor];
  centerYAnchor2 = [(FaceIdLightweightTrailingView *)self centerYAnchor];
  v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v10[1] = v8;
  v9 = [NSArray arrayWithObjects:v10 count:2];
  [NSLayoutConstraint activateConstraints:v9];
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    if (self->_secureFaceIdView)
    {
      [(LAUISecureFaceIDView *)self->_secureFaceIdView setState:sub_1000026A0(state)];
      secureFaceIdView = self->_secureFaceIdView;

      [(LAUISecureFaceIDView *)secureFaceIdView setHidden:state == 0];
    }

    else
    {
      faceIDSpinnerView = self->_faceIDSpinnerView;
      v7 = sub_100002708(state);

      [(LACUIFaceIDSpinnerView *)faceIDSpinnerView setState:v7 animated:1 completion:0];
    }
  }
}

@end