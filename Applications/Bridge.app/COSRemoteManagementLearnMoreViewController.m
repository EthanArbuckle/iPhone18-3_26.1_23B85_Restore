@interface COSRemoteManagementLearnMoreViewController
+ (id)defaultParagraphTextAttributes;
- (COSRemoteManagementLearnMoreViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_descriptionText;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation COSRemoteManagementLearnMoreViewController

+ (id)defaultParagraphTextAttributes
{
  if (qword_1002BD6A0 != -1)
  {
    sub_10018B104();
  }

  v3 = qword_1002BD698;

  return v3;
}

- (COSRemoteManagementLearnMoreViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v51.receiver = self;
  v51.super_class = COSRemoteManagementLearnMoreViewController;
  v4 = [(COSRemoteManagementLearnMoreViewController *)&v51 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [UIScrollView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    containerView = v4->_containerView;
    v4->_containerView = v9;

    [(UIScrollView *)v4->_containerView setScrollEnabled:1];
    [(UIScrollView *)v4->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = BPSBackgroundColor();
    [(UIScrollView *)v4->_containerView setBackgroundColor:v11];

    v12 = [(COSRemoteManagementLearnMoreViewController *)v4 view];
    [v12 addSubview:v4->_containerView];

    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    descriptionLabel = v4->_descriptionLabel;
    v4->_descriptionLabel = v13;

    v15 = v4->_descriptionLabel;
    v16 = BPSTextColor();
    [(UILabel *)v15 setTextColor:v16];

    [(UILabel *)v4->_descriptionLabel setNumberOfLines:0];
    [(UILabel *)v4->_descriptionLabel setTextAlignment:1];
    [(UILabel *)v4->_descriptionLabel setLineBreakMode:0];
    [(UILabel *)v4->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = +[UIScreen mainScreen];
    [v17 bounds];
    [(UILabel *)v4->_descriptionLabel setPreferredMaxLayoutWidth:v18 + -36.0];

    [(UIScrollView *)v4->_containerView addSubview:v4->_descriptionLabel];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"REMOTE_MANAGEMENT_TITLE" value:&stru_10026E598 table:@"Localizable-yorktown"];
    [(COSRemoteManagementLearnMoreViewController *)v4 setTitle:v20];

    v49 = [(UIScrollView *)v4->_containerView leadingAnchor];
    v50 = [(COSRemoteManagementLearnMoreViewController *)v4 view];
    v48 = [v50 leadingAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v52[0] = v47;
    v45 = [(UIScrollView *)v4->_containerView trailingAnchor];
    v46 = [(COSRemoteManagementLearnMoreViewController *)v4 view];
    v44 = [v46 trailingAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v52[1] = v43;
    v41 = [(UIScrollView *)v4->_containerView topAnchor];
    v42 = [(COSRemoteManagementLearnMoreViewController *)v4 view];
    v40 = [v42 topAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v52[2] = v39;
    v37 = [(UIScrollView *)v4->_containerView bottomAnchor];
    v38 = [(COSRemoteManagementLearnMoreViewController *)v4 view];
    v36 = [v38 bottomAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v52[3] = v35;
    v34 = [(UILabel *)v4->_descriptionLabel leadingAnchor];
    v33 = [(UIScrollView *)v4->_containerView leadingAnchor];
    v32 = [v34 constraintEqualToAnchor:v33 constant:18.0];
    v52[4] = v32;
    v31 = [(UILabel *)v4->_descriptionLabel trailingAnchor];
    v21 = [(UIScrollView *)v4->_containerView trailingAnchor];
    v22 = [v31 constraintEqualToAnchor:v21 constant:-18.0];
    v52[5] = v22;
    v23 = [(UILabel *)v4->_descriptionLabel topAnchor];
    v24 = [(UIScrollView *)v4->_containerView topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:57.0];
    v52[6] = v25;
    v26 = [(UILabel *)v4->_descriptionLabel bottomAnchor];
    v27 = [(UIScrollView *)v4->_containerView bottomAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:-57.0];
    v52[7] = v28;
    v29 = [NSArray arrayWithObjects:v52 count:8];
    [NSLayoutConstraint activateConstraints:v29];
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = COSRemoteManagementLearnMoreViewController;
  [(COSRemoteManagementLearnMoreViewController *)&v12 viewWillAppear:a3];
  v4 = [UIBarButtonItem alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"DONE" value:&stru_10026E598 table:@"Localizable-yorktown"];
  v7 = [v4 initWithTitle:v6 style:2 target:self action:"controllerDone:"];

  v8 = [(COSRemoteManagementLearnMoreViewController *)self navigationItem];
  [v8 setRightBarButtonItem:v7];

  v9 = [(COSRemoteManagementLearnMoreViewController *)self _descriptionText];
  v10 = v9;
  if (self)
  {
    [(UILabel *)self->_descriptionLabel setAttributedText:v9];

    descriptionLabel = self->_descriptionLabel;
  }

  else
  {
    sub_10018B118(v9);
    descriptionLabel = 0;
  }

  [(UILabel *)descriptionLabel sizeToFit];
}

- (id)_descriptionText
{
  v3 = objc_opt_new();
  v4 = BPSDefaultDetailTextAttributes();
  v5 = BPSDefaultTitleTextAttributes();
  v6 = [[NSAttributedString alloc] initWithString:@"\n" attributes:v4];
  v7 = [(COSRemoteManagementLearnMoreViewController *)self organizationName];

  if (v7)
  {
    v8 = [NSMutableAttributedString alloc];
    v9 = [(COSRemoteManagementLearnMoreViewController *)self organizationName];
    v10 = [v8 initWithString:v9 attributes:v5];
    [v3 appendAttributedString:v10];

    [v3 appendAttributedString:v6];
  }

  v11 = [(COSRemoteManagementLearnMoreViewController *)self organizationDepartment];

  if (v11)
  {
    v12 = [NSMutableAttributedString alloc];
    v13 = [(COSRemoteManagementLearnMoreViewController *)self organizationDepartment];
    v14 = [v12 initWithString:v13 attributes:v4];
    [v3 appendAttributedString:v14];

    [v3 appendAttributedString:v6];
  }

  v15 = objc_opt_new();
  v16 = [(COSRemoteManagementLearnMoreViewController *)self organizationAddressLine1];
  [v15 setValue:v16 forKey:CNPostalAddressStreetKey];

  v17 = [(COSRemoteManagementLearnMoreViewController *)self organizationAddressLine2];
  [v15 setValue:v17 forKey:CNPostalAddressSubLocalityKey];

  v18 = [(COSRemoteManagementLearnMoreViewController *)self organizationCity];
  [v15 setValue:v18 forKey:CNPostalAddressCityKey];

  v19 = [(COSRemoteManagementLearnMoreViewController *)self organizationRegion];
  [v15 setValue:v19 forKey:CNPostalAddressStateKey];

  v20 = [(COSRemoteManagementLearnMoreViewController *)self organizationZipCode];
  [v15 setValue:v20 forKey:CNPostalAddressPostalCodeKey];

  v21 = [(COSRemoteManagementLearnMoreViewController *)self organizationCountry];
  [v15 setValue:v21 forKey:CNPostalAddressCountryKey];

  v56 = v15;
  v22 = [CNPostalAddress postalAddressWithDictionaryRepresentation:v15];
  v55 = v22;
  if (!v22)
  {
LABEL_9:
    v25 = [(COSRemoteManagementLearnMoreViewController *)self organizationAddress];

    if (!v25)
    {
      goto LABEL_19;
    }

    v26 = objc_opt_new();
    v27 = [(COSRemoteManagementLearnMoreViewController *)self organizationAddress];
    v23 = [v26 postalAddressFromString:v27];

    v54 = v5;
    if (v23)
    {
      v28 = [CNPostalAddressFormatter stringFromPostalAddress:v23 style:0];
      v29 = [NSAttributedString alloc];
      v30 = v4;
      if (v28)
      {
        v31 = 0;
        v32 = v28;
LABEL_15:
        v33 = [v29 initWithString:v32 attributes:v30];
        [v3 appendAttributedString:v33];

        if (v31)
        {
        }

        [v3 appendAttributedString:v6];

        v4 = v30;
        v5 = v54;
        goto LABEL_18;
      }
    }

    else
    {
      v30 = v4;
      v29 = [NSAttributedString alloc];
    }

    v32 = [(COSRemoteManagementLearnMoreViewController *)self organizationAddress];
    v28 = 0;
    v31 = 1;
    goto LABEL_15;
  }

  v23 = [CNPostalAddressFormatter stringFromPostalAddress:v22 style:0];
  if (![v23 length])
  {

    goto LABEL_9;
  }

  v24 = [[NSAttributedString alloc] initWithString:v23 attributes:v4];
  [v3 appendAttributedString:v24];

  [v3 appendAttributedString:v6];
LABEL_18:

LABEL_19:
  v34 = [(COSRemoteManagementLearnMoreViewController *)self organizationSupportPhone];

  if (v34)
  {
    v35 = [NSMutableAttributedString alloc];
    v36 = [(COSRemoteManagementLearnMoreViewController *)self organizationSupportPhone];
    v37 = [v35 initWithString:v36 attributes:v4];
    [v3 appendAttributedString:v37];

    [v3 appendAttributedString:v6];
  }

  v38 = [(COSRemoteManagementLearnMoreViewController *)self organizationSupportEmail];

  if (v38)
  {
    v39 = [NSMutableAttributedString alloc];
    v40 = [(COSRemoteManagementLearnMoreViewController *)self organizationSupportEmail];
    v41 = [v39 initWithString:v40 attributes:v4];
    [v3 appendAttributedString:v41];

    [v3 appendAttributedString:v6];
  }

  [v3 appendAttributedString:v6];
  [v3 appendAttributedString:v6];
  v42 = [(COSRemoteManagementLearnMoreViewController *)self organizationName];

  if (v42)
  {
    v43 = [NSMutableAttributedString alloc];
    v44 = +[NSBundle mainBundle];
    v45 = [v44 localizedStringForKey:@"REMOTE_MANAGEMENT_ABOUT_DESCRIPTION_%@" value:&stru_10026E598 table:@"Localizable-yorktown"];
    [(COSRemoteManagementLearnMoreViewController *)self organizationName];
    v46 = v6;
    v47 = v5;
    v49 = v48 = v4;
    v50 = [NSString stringWithFormat:v45, v49];
    v51 = [objc_opt_class() defaultParagraphTextAttributes];
    v52 = [v43 initWithString:v50 attributes:v51];
    [v3 appendAttributedString:v52];

    v4 = v48;
    v5 = v47;
    v6 = v46;

    [v3 appendAttributedString:v46];
  }

  return v3;
}

@end