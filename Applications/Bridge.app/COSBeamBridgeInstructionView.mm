@interface COSBeamBridgeInstructionView
+ (id)descriptionForPhase:(int64_t)phase;
+ (id)imageForPhase:(int64_t)phase;
- (COSBeamBridgeInstructionView)initWithWithUserStudyPhase:(int64_t)phase;
- (void)bailOut:(id)out;
- (void)layoutSubviews;
@end

@implementation COSBeamBridgeInstructionView

- (COSBeamBridgeInstructionView)initWithWithUserStudyPhase:(int64_t)phase
{
  v23.receiver = self;
  v23.super_class = COSBeamBridgeInstructionView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(COSBeamBridgeInstructionView *)&v23 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v8 = [UIColor colorWithWhite:0.9 alpha:0.45];
    [(COSBeamBridgeInstructionView *)height setBackgroundColor:v8];

    v9 = [UIImageView alloc];
    v10 = [objc_opt_class() imageForPhase:phase];
    v11 = [v9 initWithImage:v10];
    instructionView = height->_instructionView;
    height->_instructionView = v11;

    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    instructionDetail = height->_instructionDetail;
    height->_instructionDetail = v13;

    [(UILabel *)height->_instructionDetail setNumberOfLines:0];
    v15 = height->_instructionDetail;
    v16 = [UIFont systemFontOfSize:14.5];
    [(UILabel *)v15 setFont:v16];

    v17 = height->_instructionDetail;
    v18 = [objc_opt_class() descriptionForPhase:phase];
    [(UILabel *)v17 setText:v18];

    v19 = height->_instructionDetail;
    v20 = +[UIColor whiteColor];
    [(UILabel *)v19 setTextColor:v20];

    [(COSBeamBridgeInstructionView *)height addSubview:height->_instructionView];
    [(COSBeamBridgeInstructionView *)height addSubview:height->_instructionDetail];
    v21 = [[UITapGestureRecognizer alloc] initWithTarget:height action:"bailOut:"];
    [v21 setNumberOfTapsRequired:4];
    [(COSBeamBridgeInstructionView *)height addGestureRecognizer:v21];
  }

  return height;
}

- (void)bailOut:(id)out
{
  v3 = pbb_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "COSBeamBridgeInstructionView terminateWithSuccess", v4, 2u);
  }

  [UIApp terminateWithSuccess];
}

+ (id)imageForPhase:(int64_t)phase
{
  if (phase > 9)
  {
    v5 = 0;
  }

  else
  {
    v3 = *(&off_10026BC50 + phase);
    v4 = +[COSInternalUserStudyAssetManager detailBundle];
    v5 = [UIImage imageNamed:v3 inBundle:v4];
  }

  return v5;
}

+ (id)descriptionForPhase:(int64_t)phase
{
  if (phase > 9)
  {
    v5 = &stru_10026E598;
  }

  else
  {
    v3 = *(&off_10026BCA0 + phase);
    v4 = +[COSInternalUserStudyAssetManager detailBundle];
    v5 = [v4 localizedStringForKey:v3 value:&stru_10026E598 table:@"User_Study"];
  }

  return v5;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = COSBeamBridgeInstructionView;
  [(COSBeamBridgeInstructionView *)&v21 layoutSubviews];
  [(COSBeamBridgeInstructionView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_instructionView sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  v12 = v11;
  v14 = v13;
  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  if (v14 <= CGRectGetHeight(v22))
  {
    v16 = v12;
  }

  else
  {
    v23.origin.x = v4;
    v23.origin.y = v6;
    v23.size.width = v8;
    v23.size.height = v10;
    Height = CGRectGetHeight(v23);
    v16 = v12 * Height / v14;
    v14 = Height;
  }

  [(UIImageView *)self->_instructionView setFrame:0.0, 0.0, v16, v14];
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  [(UILabel *)self->_instructionDetail sizeThatFits:CGRectGetWidth(v24) - v12 + -5.0, 0.0];
  v18 = v17;
  instructionDetail = self->_instructionDetail;
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v16;
  v25.size.height = v14;
  v20 = CGRectGetMaxX(v25) + 5.0;
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  [(UILabel *)instructionDetail setFrame:v20, 0.0, CGRectGetWidth(v26) - v12, v18];
}

@end