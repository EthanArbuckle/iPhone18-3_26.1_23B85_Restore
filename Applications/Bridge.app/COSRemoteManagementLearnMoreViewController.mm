@interface COSRemoteManagementLearnMoreViewController
+ (id)defaultParagraphTextAttributes;
- (COSRemoteManagementLearnMoreViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_descriptionText;
- (void)viewWillAppear:(BOOL)appear;
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

- (COSRemoteManagementLearnMoreViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v51.receiver = self;
  v51.super_class = COSRemoteManagementLearnMoreViewController;
  v4 = [(COSRemoteManagementLearnMoreViewController *)&v51 initWithNibName:name bundle:bundle];
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

    view = [(COSRemoteManagementLearnMoreViewController *)v4 view];
    [view addSubview:v4->_containerView];

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

    leadingAnchor = [(UIScrollView *)v4->_containerView leadingAnchor];
    view2 = [(COSRemoteManagementLearnMoreViewController *)v4 view];
    leadingAnchor2 = [view2 leadingAnchor];
    v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v52[0] = v47;
    trailingAnchor = [(UIScrollView *)v4->_containerView trailingAnchor];
    view3 = [(COSRemoteManagementLearnMoreViewController *)v4 view];
    trailingAnchor2 = [view3 trailingAnchor];
    v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v52[1] = v43;
    topAnchor = [(UIScrollView *)v4->_containerView topAnchor];
    view4 = [(COSRemoteManagementLearnMoreViewController *)v4 view];
    topAnchor2 = [view4 topAnchor];
    v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v52[2] = v39;
    bottomAnchor = [(UIScrollView *)v4->_containerView bottomAnchor];
    view5 = [(COSRemoteManagementLearnMoreViewController *)v4 view];
    bottomAnchor2 = [view5 bottomAnchor];
    v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v52[3] = v35;
    leadingAnchor3 = [(UILabel *)v4->_descriptionLabel leadingAnchor];
    leadingAnchor4 = [(UIScrollView *)v4->_containerView leadingAnchor];
    v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:18.0];
    v52[4] = v32;
    trailingAnchor3 = [(UILabel *)v4->_descriptionLabel trailingAnchor];
    trailingAnchor4 = [(UIScrollView *)v4->_containerView trailingAnchor];
    v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-18.0];
    v52[5] = v22;
    topAnchor3 = [(UILabel *)v4->_descriptionLabel topAnchor];
    topAnchor4 = [(UIScrollView *)v4->_containerView topAnchor];
    v25 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:57.0];
    v52[6] = v25;
    bottomAnchor3 = [(UILabel *)v4->_descriptionLabel bottomAnchor];
    bottomAnchor4 = [(UIScrollView *)v4->_containerView bottomAnchor];
    v28 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-57.0];
    v52[7] = v28;
    v29 = [NSArray arrayWithObjects:v52 count:8];
    [NSLayoutConstraint activateConstraints:v29];
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = COSRemoteManagementLearnMoreViewController;
  [(COSRemoteManagementLearnMoreViewController *)&v12 viewWillAppear:appear];
  v4 = [UIBarButtonItem alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"DONE" value:&stru_10026E598 table:@"Localizable-yorktown"];
  v7 = [v4 initWithTitle:v6 style:2 target:self action:"controllerDone:"];

  navigationItem = [(COSRemoteManagementLearnMoreViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v7];

  _descriptionText = [(COSRemoteManagementLearnMoreViewController *)self _descriptionText];
  v10 = _descriptionText;
  if (self)
  {
    [(UILabel *)self->_descriptionLabel setAttributedText:_descriptionText];

    descriptionLabel = self->_descriptionLabel;
  }

  else
  {
    sub_10018B118(_descriptionText);
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
  organizationName = [(COSRemoteManagementLearnMoreViewController *)self organizationName];

  if (organizationName)
  {
    v8 = [NSMutableAttributedString alloc];
    organizationName2 = [(COSRemoteManagementLearnMoreViewController *)self organizationName];
    v10 = [v8 initWithString:organizationName2 attributes:v5];
    [v3 appendAttributedString:v10];

    [v3 appendAttributedString:v6];
  }

  organizationDepartment = [(COSRemoteManagementLearnMoreViewController *)self organizationDepartment];

  if (organizationDepartment)
  {
    v12 = [NSMutableAttributedString alloc];
    organizationDepartment2 = [(COSRemoteManagementLearnMoreViewController *)self organizationDepartment];
    v14 = [v12 initWithString:organizationDepartment2 attributes:v4];
    [v3 appendAttributedString:v14];

    [v3 appendAttributedString:v6];
  }

  v15 = objc_opt_new();
  organizationAddressLine1 = [(COSRemoteManagementLearnMoreViewController *)self organizationAddressLine1];
  [v15 setValue:organizationAddressLine1 forKey:CNPostalAddressStreetKey];

  organizationAddressLine2 = [(COSRemoteManagementLearnMoreViewController *)self organizationAddressLine2];
  [v15 setValue:organizationAddressLine2 forKey:CNPostalAddressSubLocalityKey];

  organizationCity = [(COSRemoteManagementLearnMoreViewController *)self organizationCity];
  [v15 setValue:organizationCity forKey:CNPostalAddressCityKey];

  organizationRegion = [(COSRemoteManagementLearnMoreViewController *)self organizationRegion];
  [v15 setValue:organizationRegion forKey:CNPostalAddressStateKey];

  organizationZipCode = [(COSRemoteManagementLearnMoreViewController *)self organizationZipCode];
  [v15 setValue:organizationZipCode forKey:CNPostalAddressPostalCodeKey];

  organizationCountry = [(COSRemoteManagementLearnMoreViewController *)self organizationCountry];
  [v15 setValue:organizationCountry forKey:CNPostalAddressCountryKey];

  v56 = v15;
  v22 = [CNPostalAddress postalAddressWithDictionaryRepresentation:v15];
  v55 = v22;
  if (!v22)
  {
LABEL_9:
    organizationAddress = [(COSRemoteManagementLearnMoreViewController *)self organizationAddress];

    if (!organizationAddress)
    {
      goto LABEL_19;
    }

    v26 = objc_opt_new();
    organizationAddress2 = [(COSRemoteManagementLearnMoreViewController *)self organizationAddress];
    v23 = [v26 postalAddressFromString:organizationAddress2];

    v54 = v5;
    if (v23)
    {
      v28 = [CNPostalAddressFormatter stringFromPostalAddress:v23 style:0];
      v29 = [NSAttributedString alloc];
      v30 = v4;
      if (v28)
      {
        v31 = 0;
        organizationAddress3 = v28;
LABEL_15:
        v33 = [v29 initWithString:organizationAddress3 attributes:v30];
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

    organizationAddress3 = [(COSRemoteManagementLearnMoreViewController *)self organizationAddress];
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
  organizationSupportPhone = [(COSRemoteManagementLearnMoreViewController *)self organizationSupportPhone];

  if (organizationSupportPhone)
  {
    v35 = [NSMutableAttributedString alloc];
    organizationSupportPhone2 = [(COSRemoteManagementLearnMoreViewController *)self organizationSupportPhone];
    v37 = [v35 initWithString:organizationSupportPhone2 attributes:v4];
    [v3 appendAttributedString:v37];

    [v3 appendAttributedString:v6];
  }

  organizationSupportEmail = [(COSRemoteManagementLearnMoreViewController *)self organizationSupportEmail];

  if (organizationSupportEmail)
  {
    v39 = [NSMutableAttributedString alloc];
    organizationSupportEmail2 = [(COSRemoteManagementLearnMoreViewController *)self organizationSupportEmail];
    v41 = [v39 initWithString:organizationSupportEmail2 attributes:v4];
    [v3 appendAttributedString:v41];

    [v3 appendAttributedString:v6];
  }

  [v3 appendAttributedString:v6];
  [v3 appendAttributedString:v6];
  organizationName3 = [(COSRemoteManagementLearnMoreViewController *)self organizationName];

  if (organizationName3)
  {
    v43 = [NSMutableAttributedString alloc];
    v44 = +[NSBundle mainBundle];
    v45 = [v44 localizedStringForKey:@"REMOTE_MANAGEMENT_ABOUT_DESCRIPTION_%@" value:&stru_10026E598 table:@"Localizable-yorktown"];
    [(COSRemoteManagementLearnMoreViewController *)self organizationName];
    v46 = v6;
    v47 = v5;
    v49 = v48 = v4;
    v50 = [NSString stringWithFormat:v45, v49];
    defaultParagraphTextAttributes = [objc_opt_class() defaultParagraphTextAttributes];
    v52 = [v43 initWithString:v50 attributes:defaultParagraphTextAttributes];
    [v3 appendAttributedString:v52];

    v4 = v48;
    v5 = v47;
    v6 = v46;

    [v3 appendAttributedString:v46];
  }

  return v3;
}

@end