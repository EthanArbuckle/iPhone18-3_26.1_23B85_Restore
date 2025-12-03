@interface NTKCCFaceAddedInfoViewController
+ (UIEdgeInsets)layoutMargins;
- (CGSize)preferredContentSize;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NTKCCFaceAddedInfoViewController

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = NTKCCFaceAddedInfoViewController;
  [(NTKCCFaceAddedInfoViewController *)&v19 viewDidLoad];
  v3 = objc_opt_new();
  [(NTKCCFaceAddedInfoViewController *)self setHeader:v3];

  v4 = +[UIColor whiteColor];
  [(UILabel *)self->_header setTextColor:v4];

  v5 = [UIFont systemFontOfSize:24.0 weight:UIFontWeightBold];
  [(UILabel *)self->_header setFont:v5];

  [(UILabel *)self->_header setTextAlignment:1];
  [(UILabel *)self->_header setNumberOfLines:0];
  v6 = NTKCCustomizationLocalizedString();
  [(UILabel *)self->_header setText:v6];

  view = [(NTKCCFaceAddedInfoViewController *)self view];
  [view addSubview:self->_header];

  v8 = objc_opt_new();
  [(NTKCCFaceAddedInfoViewController *)self setBody:v8];

  v9 = [UIColor colorWithWhite:1.0 alpha:0.6];
  [(UILabel *)self->_body setTextColor:v9];

  v10 = [UIFont systemFontOfSize:17.0];
  [(UILabel *)self->_body setFont:v10];

  [(UILabel *)self->_body setNumberOfLines:0];
  [(UILabel *)self->_body setTextAlignment:1];
  v11 = NTKCCustomizationLocalizedString();
  [(UILabel *)self->_body setText:v11];

  view2 = [(NTKCCFaceAddedInfoViewController *)self view];
  [view2 addSubview:self->_body];

  v13 = +[UIButtonConfiguration plainButtonConfiguration];
  v14 = +[UIColor whiteColor];
  [v13 setBaseForegroundColor:v14];

  [v13 setContentInsets:{12.0, 12.0, 12.0, 12.0}];
  v15 = [UIImageSymbolConfiguration configurationWithPointSize:9 weight:11.0];
  v16 = [UIImage systemImageNamed:@"xmark" withConfiguration:v15];
  [v13 setImage:v16];

  v17 = [UIButton buttonWithConfiguration:v13 primaryAction:0];
  [(NTKCCFaceAddedInfoViewController *)self setClose:v17];

  [(UIButton *)self->_close addTarget:self action:"_closeTapped" forControlEvents:64];
  [(UIButton *)self->_close sizeToFit];
  [(UIButton *)self->_close layoutBelowIfNeeded];
  view3 = [(NTKCCFaceAddedInfoViewController *)self view];
  [view3 addSubview:self->_close];
}

- (void)viewDidLayoutSubviews
{
  v74.receiver = self;
  v74.super_class = NTKCCFaceAddedInfoViewController;
  [(NTKCCFaceAddedInfoViewController *)&v74 viewDidLayoutSubviews];
  view = [(NTKCCFaceAddedInfoViewController *)self view];
  [view bounds];
  v5 = v4;
  v69 = v6;
  v8 = v7;
  v10 = v9;

  IsRTL = CLKLayoutIsRTL();
  [(UIButton *)self->_close frame];
  v66 = v12;
  v67 = v13;
  v68 = v14;
  close = self->_close;
  imageView = [(UIButton *)close imageView];
  [imageView frame];
  [(UIButton *)close convertRect:self->_close toView:?];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v75.origin.x = v18;
  v75.origin.y = v20;
  v75.size.width = v22;
  v75.size.height = v24;
  v72 = v5;
  rect = 12.0 - CGRectGetMinY(v75);
  v70 = v10;
  v71 = v8;
  if (IsRTL)
  {
    v76.origin.x = v5;
    v25 = v69;
    v76.origin.y = v69;
    v76.size.width = v8;
    v76.size.height = v10;
    v65 = CGRectGetWidth(v76) + -12.0;
    v77.origin.x = v66;
    v26 = v67;
    v77.origin.y = rect;
    v27 = v68;
    v77.size.width = v68;
    v77.size.height = v67;
    Width = CGRectGetWidth(v77);
    v78.origin.x = v18;
    v78.origin.y = v20;
    v78.size.width = v22;
    v78.size.height = v24;
    v29 = v65 + CGRectGetMinX(v78) - Width;
  }

  else
  {
    v79.origin.x = v18;
    v79.origin.y = v20;
    v79.size.width = v22;
    v79.size.height = v24;
    v29 = 12.0 - CGRectGetMinX(v79);
    v27 = v68;
    v25 = v69;
    v26 = v67;
  }

  [(UIButton *)self->_close setFrame:v29, rect, v27, v26];
  v30 = self->_close;
  imageView2 = [(UIButton *)v30 imageView];
  [imageView2 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  view2 = [(NTKCCFaceAddedInfoViewController *)self view];
  [(UIButton *)v30 convertRect:view2 toView:v33, v35, v37, v39];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  if (IsRTL)
  {
    v50 = v71;
    v49 = v72;
    v80.origin.x = v72;
    v80.origin.y = v25;
    v80.size.width = v71;
    v51 = v70;
    v80.size.height = v70;
    v52 = CGRectGetWidth(v80);
    v81.origin.x = v29;
    v81.origin.y = rect;
    v81.size.width = v27;
    v81.size.height = v26;
    v53 = v52 - CGRectGetMinX(v81) + -12.0;
  }

  else
  {
    v82.origin.x = v42;
    v82.origin.y = v44;
    v82.size.width = v46;
    v82.size.height = v48;
    v53 = CGRectGetMaxX(v82) + 12.0;
    v50 = v71;
    v49 = v72;
    v51 = v70;
  }

  v83.origin.x = v49;
  v83.origin.y = v25;
  v83.size.width = v50;
  v83.size.height = v51;
  v54 = CGRectGetWidth(v83) + v53 * -2.0;
  [(UILabel *)self->_header sizeThatFits:v54, 1.79769313e308];
  v56 = v55;
  [(UILabel *)self->_header frame];
  [(UILabel *)self->_header setFrame:v53];
  [(UILabel *)self->_header _firstBaselineOffsetFromTop];
  v58 = 44.0 - v57;
  [(UILabel *)self->_header setFrame:v53, 44.0 - v57, v54, v56];
  [(UILabel *)self->_body sizeThatFits:v54, 1.79769313e308];
  v60 = v59;
  [(UILabel *)self->_body frame];
  [(UILabel *)self->_body setFrame:v53];
  v84.origin.x = v53;
  v84.origin.y = v58;
  v84.size.width = v54;
  v84.size.height = v56;
  MaxY = CGRectGetMaxY(v84);
  [(UILabel *)self->_header _baselineOffsetFromBottom];
  v63 = MaxY - v62 + 27.0;
  [(UILabel *)self->_body _firstBaselineOffsetFromTop];
  [(UILabel *)self->_body setFrame:v53, v63 - v64, v54, v60];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = NTKCCFaceAddedInfoViewController;
  [(NTKCCFaceAddedInfoViewController *)&v3 viewDidAppear:appear];
  CFPreferencesSetAppValue(@"FaceAddedInfoPopoverShown", kCFBooleanTrue, NTKFacePreferencesDomain);
}

- (CGSize)preferredContentSize
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5 + -40.0;
  view = [(NTKCCFaceAddedInfoViewController *)self view];
  [view setFrame:{0.0, 0.0, v8, v7}];

  view2 = [(NTKCCFaceAddedInfoViewController *)self view];
  [view2 layoutIfNeeded];

  [(UILabel *)self->_body frame];
  MaxY = CGRectGetMaxY(v16);
  [(UILabel *)self->_body _baselineOffsetFromBottom];
  v13 = MaxY - v12 + 24.0;
  v14 = v8;
  result.height = v13;
  result.width = v14;
  return result;
}

+ (UIEdgeInsets)layoutMargins
{
  v2 = 0.0;
  v3 = 20.0;
  v4 = 0.0;
  v5 = 20.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end