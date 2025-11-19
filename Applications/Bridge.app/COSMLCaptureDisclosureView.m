@interface COSMLCaptureDisclosureView
- (COSMLCaptureDisclosureView)initWithFrame:(CGRect)a3;
- (UIViewController)parentController;
- (void)layoutSubviews;
- (void)tappedLearnMore:(id)a3;
- (void)userToggledSwitch:(id)a3;
@end

@implementation COSMLCaptureDisclosureView

- (COSMLCaptureDisclosureView)initWithFrame:(CGRect)a3
{
  v27.receiver = self;
  v27.super_class = COSMLCaptureDisclosureView;
  v3 = [(COSMLCaptureDisclosureView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIColor colorWithWhite:0.7 alpha:0.45];
    [(COSMLCaptureDisclosureView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(UISwitch);
    disclosureToggle = v3->_disclosureToggle;
    v3->_disclosureToggle = v5;

    [(UISwitch *)v3->_disclosureToggle addTarget:v3 action:"userToggledSwitch:" forControlEvents:4096];
    [(UISwitch *)v3->_disclosureToggle setOn:+[COSMLCaptureDisclosureController disclosureEffectivelyAccepted]];
    v7 = +[COSInternalUserStudyAssetManager detailBundle];
    v8 = [v7 localizedStringForKey:@"CAPTURE_DISCLOSURE" value:&stru_10026E598 table:@"User_Study"];

    v30[0] = NSFontAttributeName;
    v9 = [UIFont systemFontOfSize:14.0];
    v31[0] = v9;
    v30[1] = NSForegroundColorAttributeName;
    v10 = +[UIColor whiteColor];
    v31[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];

    v26 = v11;
    v12 = [[NSMutableAttributedString alloc] initWithString:v8 attributes:v11];
    v13 = +[COSInternalUserStudyAssetManager detailBundle];
    v14 = [v13 localizedStringForKey:@"CAPTURE_DISCLOSURE_LINK" value:&stru_10026E598 table:@"User_Study"];
    v15 = [v8 rangeOfString:v14 options:5];
    v17 = v16;

    if (v17)
    {
      v28[0] = NSFontAttributeName;
      v18 = [UIFont systemFontOfSize:14.0];
      v28[1] = NSForegroundColorAttributeName;
      v29[0] = v18;
      v19 = BPSBridgeTintColor();
      v29[1] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];

      [v12 setAttributes:v20 range:{v15, v17}];
    }

    v21 = objc_alloc_init(UILabel);
    descriptionText = v3->_descriptionText;
    v3->_descriptionText = v21;

    [(UILabel *)v3->_descriptionText setAttributedText:v12];
    [(UILabel *)v3->_descriptionText setNumberOfLines:0];
    [(UILabel *)v3->_descriptionText setUserInteractionEnabled:1];
    v23 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:"tappedLearnMore:"];
    tapRecognizer = v3->_tapRecognizer;
    v3->_tapRecognizer = v23;

    [(UILabel *)v3->_descriptionText addGestureRecognizer:v3->_tapRecognizer];
    [(COSMLCaptureDisclosureView *)v3 addSubview:v3->_disclosureToggle];
    [(COSMLCaptureDisclosureView *)v3 addSubview:v3->_descriptionText];
  }

  return v3;
}

- (void)userToggledSwitch:(id)a3
{
  v3 = [a3 isOn];

  [COSMLCaptureDisclosureController setUserAcceptedDisclosure:v3];
}

- (void)layoutSubviews
{
  [(COSMLCaptureDisclosureView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UISwitch *)self->_disclosureToggle sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  v12 = v11;
  v14 = v13;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v15 = CGRectGetWidth(v24) - v12 + -20.0;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v16 = (CGRectGetHeight(v25) - v14) * 0.5;
  [(UISwitch *)self->_disclosureToggle setFrame:v15, floorf(v16), v12, v14];
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  [(UILabel *)self->_descriptionText sizeThatFits:CGRectGetWidth(v26) - v12 + -60.0, 0.0];
  v18 = v17;
  descriptionText = self->_descriptionText;
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  v20 = (CGRectGetHeight(v27) - v18) * 0.5;
  v21 = floorf(v20);
  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  v22 = CGRectGetWidth(v28) - v12 + -40.0;

  [(UILabel *)descriptionText setFrame:10.0, v21, v22, v18];
}

- (void)tappedLearnMore:(id)a3
{
  v4 = +[COSInternalUserStudyAssetManager detailBundle];
  v5 = [v4 localizedStringForKey:@"LEARN_MORE_TITLE" value:&stru_10026E598 table:@"User_Study"];
  v6 = +[COSInternalUserStudyAssetManager detailBundle];
  v7 = [v6 localizedStringForKey:@"LEARN_MORE_BODY" value:&stru_10026E598 table:@"User_Study"];
  v8 = [UIAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = +[COSInternalUserStudyAssetManager detailBundle];
  v10 = [v9 localizedStringForKey:@"LEARN_MORE_OKAY" value:&stru_10026E598 table:@"User_Study"];
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:&stru_10026A7E0];

  [v8 addAction:v11];
  [v8 setPreferredAction:v11];
  v12 = pbb_bridge_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Presenting 'Learn More' alert", v14, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained presentViewController:v8 animated:1 completion:0];
}

- (UIViewController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

@end