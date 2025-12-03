@interface COSWristDetectionHUD
- (COSWristDetectionHUD)initWithFrame:(CGRect)frame;
- (void)updateWithConfidences:(id)confidences;
- (void)updateWithSummary:(id)summary;
@end

@implementation COSWristDetectionHUD

- (COSWristDetectionHUD)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v57.receiver = self;
  v57.super_class = COSWristDetectionHUD;
  v7 = [(COSWristDetectionHUD *)&v57 initWithFrame:?];
  if (v7)
  {
    v8 = +[CALayer layer];
    none = v7->_none;
    v7->_none = v8;

    [(CALayer *)v7->_none setFrame:0.0, 45.0, 0.0, 25.0];
    v10 = v7->_none;
    v11 = +[UIColor whiteColor];
    -[CALayer setBackgroundColor:](v10, "setBackgroundColor:", [v11 CGColor]);

    layer = [(COSWristDetectionHUD *)v7 layer];
    [layer addSublayer:v7->_none];

    v13 = +[CALayer layer];
    invalid = v7->_invalid;
    v7->_invalid = v13;

    [(CALayer *)v7->_invalid setFrame:0.0, 70.0, 25.0, 25.0];
    v15 = v7->_invalid;
    v16 = +[UIColor grayColor];
    -[CALayer setBackgroundColor:](v15, "setBackgroundColor:", [v16 CGColor]);

    layer2 = [(COSWristDetectionHUD *)v7 layer];
    [layer2 addSublayer:v7->_invalid];

    v18 = +[CALayer layer];
    lr = v7->_lr;
    v7->_lr = v18;

    [(CALayer *)v7->_lr setFrame:0.0, 95.0, 25.0, 25.0];
    v20 = v7->_lr;
    v21 = +[UIColor redColor];
    -[CALayer setBackgroundColor:](v20, "setBackgroundColor:", [v21 CGColor]);

    layer3 = [(COSWristDetectionHUD *)v7 layer];
    [layer3 addSublayer:v7->_lr];

    v23 = +[CALayer layer];
    ll = v7->_ll;
    v7->_ll = v23;

    [(CALayer *)v7->_ll setFrame:0.0, 120.0, 25.0, 25.0];
    v25 = v7->_ll;
    v26 = +[UIColor orangeColor];
    -[CALayer setBackgroundColor:](v25, "setBackgroundColor:", [v26 CGColor]);

    layer4 = [(COSWristDetectionHUD *)v7 layer];
    [layer4 addSublayer:v7->_ll];

    v28 = +[CALayer layer];
    rr = v7->_rr;
    v7->_rr = v28;

    [(CALayer *)v7->_rr setFrame:0.0, 145.0, 25.0, 25.0];
    v30 = v7->_rr;
    v31 = +[UIColor blueColor];
    -[CALayer setBackgroundColor:](v30, "setBackgroundColor:", [v31 CGColor]);

    layer5 = [(COSWristDetectionHUD *)v7 layer];
    [layer5 addSublayer:v7->_rr];

    v33 = +[CALayer layer];
    rl = v7->_rl;
    v7->_rl = v33;

    [(CALayer *)v7->_rl setFrame:0.0, 170.0, 25.0, 25.0];
    v35 = v7->_rl;
    v36 = +[UIColor yellowColor];
    -[CALayer setBackgroundColor:](v35, "setBackgroundColor:", [v36 CGColor]);

    layer6 = [(COSWristDetectionHUD *)v7 layer];
    [layer6 addSublayer:v7->_rl];

    v38 = +[CALayer layer];
    p = v7->_p;
    v7->_p = v38;

    [(CALayer *)v7->_p setFrame:0.0, 195.0, 25.0, 25.0];
    v40 = v7->_p;
    v41 = +[UIColor systemPinkColor];
    -[CALayer setBackgroundColor:](v40, "setBackgroundColor:", [v41 CGColor]);

    layer7 = [(COSWristDetectionHUD *)v7 layer];
    [layer7 addSublayer:v7->_p];

    v43 = +[CALayer layer];
    d = v7->_d;
    v7->_d = v43;

    [(CALayer *)v7->_d setFrame:0.0, 220.0, 25.0, 25.0];
    v45 = v7->_d;
    v46 = +[UIColor systemDarkPinkColor];
    -[CALayer setBackgroundColor:](v45, "setBackgroundColor:", [v46 CGColor]);

    layer8 = [(COSWristDetectionHUD *)v7 layer];
    [layer8 addSublayer:v7->_d];

    v48 = objc_alloc_init(UILabel);
    prediciton = v7->_prediciton;
    v7->_prediciton = v48;

    v50 = v7->_prediciton;
    v51 = [UIFont systemFontOfSize:22.0];
    [(UILabel *)v50 setFont:v51];

    v52 = v7->_prediciton;
    v53 = +[UIColor whiteColor];
    [(UILabel *)v52 setTextColor:v53];

    [(UILabel *)v7->_prediciton setTextAlignment:1];
    v54 = v7->_prediciton;
    v55 = [UIColor colorWithWhite:0.1 alpha:0.8];
    [(UILabel *)v54 setBackgroundColor:v55];

    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    [(UILabel *)v7->_prediciton setFrame:0.0, 0.0, CGRectGetWidth(v58), 45.0];
    [(COSWristDetectionHUD *)v7 addSubview:v7->_prediciton];
  }

  return v7;
}

- (void)updateWithConfidences:(id)confidences
{
  confidencesCopy = confidences;
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  none = self->_none;
  v42.origin.x = v7;
  v42.origin.y = v9;
  v42.size.width = v11;
  v42.size.height = v13;
  Width = CGRectGetWidth(v42);
  [confidencesCopy none];
  [(CALayer *)none setFrame:0.0, 45.0, Width * v16, 10.0];
  invalid = self->_invalid;
  v43.origin.x = v7;
  v43.origin.y = v9;
  v43.size.width = v11;
  v43.size.height = v13;
  v18 = CGRectGetWidth(v43);
  [confidencesCopy invalid];
  [(CALayer *)invalid setFrame:0.0, 70.0, v18 * v19, 10.0];
  lr = self->_lr;
  v44.origin.x = v7;
  v44.origin.y = v9;
  v44.size.width = v11;
  v44.size.height = v13;
  v21 = CGRectGetWidth(v44);
  [confidencesCopy leftWristRightCrown];
  [(CALayer *)lr setFrame:0.0, 95.0, v21 * v22, 10.0];
  ll = self->_ll;
  v45.origin.x = v7;
  v45.origin.y = v9;
  v45.size.width = v11;
  v45.size.height = v13;
  v24 = CGRectGetWidth(v45);
  [confidencesCopy leftWristLeftCrown];
  [(CALayer *)ll setFrame:0.0, 120.0, v24 * v25, 10.0];
  rr = self->_rr;
  v46.origin.x = v7;
  v46.origin.y = v9;
  v46.size.width = v11;
  v46.size.height = v13;
  v27 = CGRectGetWidth(v46);
  [confidencesCopy rightWristRightCrown];
  [(CALayer *)rr setFrame:0.0, 145.0, v27 * v28, 10.0];
  rl = self->_rl;
  v47.origin.x = v7;
  v47.origin.y = v9;
  v47.size.width = v11;
  v47.size.height = v13;
  v30 = CGRectGetWidth(v47);
  [confidencesCopy rightWristLeftCrown];
  [(CALayer *)rl setFrame:0.0, 170.0, v30 * v31, 10.0];
  p = self->_p;
  v48.origin.x = v7;
  v48.origin.y = v9;
  v48.size.width = v11;
  v48.size.height = v13;
  v33 = CGRectGetWidth(v48);
  [confidencesCopy palm];
  [(CALayer *)p setFrame:0.0, 195.0, v33 * v34, 10.0];
  d = self->_d;
  v49.origin.x = v7;
  v49.origin.y = v9;
  v49.size.width = v11;
  v49.size.height = v13;
  v36 = CGRectGetWidth(v49);
  [confidencesCopy dock];
  v38 = v37;

  [(CALayer *)d setFrame:0.0, 220.0, v36 * v38, 10.0];
  prediciton = self->_prediciton;
  v50.origin.x = v7;
  v50.origin.y = v9;
  v50.size.width = v11;
  v50.size.height = v13;
  v40 = CGRectGetWidth(v50);

  [(UILabel *)prediciton setFrame:0.0, 0.0, v40, 45.0];
}

- (void)updateWithSummary:(id)summary
{
  summaryCopy = summary;
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  prediciton = self->_prediciton;
  v15 = [summaryCopy description];

  [(UILabel *)prediciton setText:v15];
  v16 = self->_prediciton;
  v19.origin.x = v7;
  v19.origin.y = v9;
  v19.size.width = v11;
  v19.size.height = v13;
  Width = CGRectGetWidth(v19);

  [(UILabel *)v16 setFrame:0.0, 0.0, Width, 45.0];
}

@end