@interface FaceIdLightweightTrailingView
- (FaceIdLightweightTrailingView)init;
- (FaceIdLightweightTrailingView)initWithDescriptionCaptureView:(id)a3;
- (void)_setup;
- (void)_setupSecureView;
- (void)_setupSpinnerView;
- (void)setState:(int64_t)a3;
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

- (FaceIdLightweightTrailingView)initWithDescriptionCaptureView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FaceIdLightweightTrailingView;
  v6 = [(FaceIdLightweightTrailingView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_faceIDSpinnerView, a3);
    [(FaceIdLightweightTrailingView *)v7 _setupSpinnerView];
  }

  return v7;
}

- (void)_setup
{
  v3 = +[LACSecureFaceIDUIUtilities sharedInstance];
  v4 = [v3 isActive];

  if (v4 && (v5 = [[LAUISecureFaceIDView alloc] initWithType:1], secureFaceIdView = self->_secureFaceIdView, self->_secureFaceIdView = v5, secureFaceIdView, self->_secureFaceIdView))
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
  v15 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView leadingAnchor];
  v14 = [(FaceIdLightweightTrailingView *)self leadingAnchor];
  v13 = [v15 constraintEqualToAnchor:v14];
  v16[0] = v13;
  v3 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView trailingAnchor];
  v4 = [(FaceIdLightweightTrailingView *)self trailingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v16[1] = v5;
  v6 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView topAnchor];
  v7 = [(FaceIdLightweightTrailingView *)self topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v16[2] = v8;
  v9 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView bottomAnchor];
  v10 = [(FaceIdLightweightTrailingView *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v16[3] = v11;
  v12 = [NSArray arrayWithObjects:v16 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupSecureView
{
  [(LAUISecureFaceIDView *)self->_secureFaceIdView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(FaceIdLightweightTrailingView *)self addSubview:self->_secureFaceIdView];
  [(LAUISecureFaceIDView *)self->_secureFaceIdView setState:0];
  v3 = [(LAUISecureFaceIDView *)self->_secureFaceIdView centerXAnchor];
  v4 = [(FaceIdLightweightTrailingView *)self centerXAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v10[0] = v5;
  v6 = [(LAUISecureFaceIDView *)self->_secureFaceIdView centerYAnchor];
  v7 = [(FaceIdLightweightTrailingView *)self centerYAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v10[1] = v8;
  v9 = [NSArray arrayWithObjects:v10 count:2];
  [NSLayoutConstraint activateConstraints:v9];
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    if (self->_secureFaceIdView)
    {
      [(LAUISecureFaceIDView *)self->_secureFaceIdView setState:LAUISecureFaceIDViewStateFromFaceIdLightweightTrailingViewState(a3)];
      secureFaceIdView = self->_secureFaceIdView;

      [(LAUISecureFaceIDView *)secureFaceIdView setHidden:a3 == 0];
    }

    else
    {
      faceIDSpinnerView = self->_faceIDSpinnerView;
      v7 = LACUIFaceIDSpinnerStateFromFaceIdLightweightTrailingViewState(a3);

      [(LACUIFaceIDSpinnerView *)faceIDSpinnerView setState:v7 animated:1 completion:0];
    }
  }
}

@end