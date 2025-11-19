@interface BYODFirstTimeIntroViewController
+ (id)log;
- (BYODFirstTimeIntroViewController)initWithACAccount:(id)a3 completion:(id)a4;
- (void)_addDataCardsView:(id)a3;
- (void)_continueWasTapped:(id)a3;
- (void)_notNowWasTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation BYODFirstTimeIntroViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4C0B8;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D6560 != -1)
  {
    dispatch_once(&qword_D6560, block);
  }

  v2 = qword_D6558;

  return v2;
}

- (BYODFirstTimeIntroViewController)initWithACAccount:(id)a3 completion:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = BYODFirstTimeIntroViewController;
  v7 = [(BYODBaseViewController *)&v11 initWithACAccount:a3];
  if (v7)
  {
    v8 = objc_retainBlock(v6);
    callback = v7->_callback;
    v7->_callback = v8;
  }

  return v7;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = BYODFirstTimeIntroViewController;
  [(BYODBaseViewController *)&v7 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_FT_INTRO_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v5 = +[BYODIcon customEmailDomainIcon];
  [(BYODBaseViewController *)self createViewControllerWithTitle:v4 detail:&stru_B9FC8 icon:v5];
  v6 = [(BYODFirstTimeIntroViewController *)self navigationItem];
  [v6 setHidesBackButton:0];
}

- (void)_addDataCardsView:(id)a3
{
  v61 = a3;
  v62 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v62 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v62 setAxis:1];
  [v62 setSpacing:0.0];
  if (MUISolariumFeatureEnabled())
  {
    v3 = @"envelope.circle";
  }

  else
  {
    v3 = @"envelope.circle.fill";
  }

  v60 = [UIImage systemImageNamed:v3];
  v4 = [BYODDataCardView alloc];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_FT_INTRO_CUSTOM_ADDRESS" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"BYOD_FT_INTRO_CUSTOM_ADDRESS_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v9 = [(BYODDataCardView *)v4 initWithTitle:v6 subtitle:v8 icon:v60];

  v59 = v9;
  [(BYODDataCardView *)v9 setHideChevron:1];
  v10 = +[UIColor clearColor];
  [(BYODDataCardView *)v9 setBackgroundColor:v10];

  [v62 addArrangedSubview:v9];
  if (MUISolariumFeatureEnabled())
  {
    v11 = @"dollarsign.circle";
  }

  else
  {
    v11 = @"dollarsign.circle.fill";
  }

  v58 = [UIImage systemImageNamed:v11];
  v12 = [BYODDataCardView alloc];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"BYOD_FT_INTRO_BUY" value:&stru_B9FC8 table:@"AccountPreferences"];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"BYOD_FT_INTRO_BUY_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v17 = [(BYODDataCardView *)v12 initWithTitle:v14 subtitle:v16 icon:v58];

  v57 = v17;
  [(BYODDataCardView *)v17 setHideChevron:1];
  v18 = +[UIColor clearColor];
  [(BYODDataCardView *)v17 setBackgroundColor:v18];

  [v62 addArrangedSubview:v17];
  if (MUISolariumFeatureEnabled())
  {
    v19 = @"person.3";
  }

  else
  {
    v19 = @"person.3.fill";
  }

  v56 = [UIImage systemImageNamed:v19];
  v20 = [BYODDataCardView alloc];
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"BYOD_FT_INTRO_SHARE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v23 = [NSBundle bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"BYOD_FT_INTRO_SHARE_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v25 = [(BYODDataCardView *)v20 initWithTitle:v22 subtitle:v24 icon:v56];

  v55 = v25;
  [(BYODDataCardView *)v25 setHideChevron:1];
  v26 = +[UIColor clearColor];
  [(BYODDataCardView *)v25 setBackgroundColor:v26];

  [v62 addArrangedSubview:v25];
  v27 = [v61 contentView];
  [v27 addSubview:v62];

  v51 = [v61 contentView];
  v50 = [v61 contentView];
  v54 = [v50 topAnchor];
  v49 = [v62 topAnchor];
  v48 = [v54 constraintEqualToAnchor:?];
  v63[0] = v48;
  v47 = [v61 contentView];
  v53 = [v47 leadingAnchor];
  v46 = [v62 leadingAnchor];
  v28 = [v53 constraintEqualToAnchor:?];
  v63[1] = v28;
  v29 = [v61 contentView];
  v30 = [v29 trailingAnchor];
  v31 = [v62 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  v63[2] = v32;
  v33 = [v61 contentView];
  v34 = [v33 bottomAnchor];
  v35 = [v62 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  v63[3] = v36;
  v37 = [NSArray arrayWithObjects:v63 count:4];
  [v51 addConstraints:v37];

  v38 = +[OBBoldTrayButton boldButton];
  v39 = [NSBundle bundleForClass:objc_opt_class()];
  v40 = [v39 localizedStringForKey:@"BYOD_FT_INTRO_CONTINUE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v38 setTitle:v40 forState:0];

  [v38 addTarget:self action:"_continueWasTapped:" forControlEvents:64];
  v41 = [v61 buttonTray];
  [v41 addButton:v38];

  v42 = +[OBLinkTrayButton linkButton];
  v43 = [NSBundle bundleForClass:objc_opt_class()];
  v44 = [v43 localizedStringForKey:@"BYOD_FT_INTRO_NOT_NOW" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v42 setTitle:v44 forState:0];

  [v42 addTarget:self action:"_notNowWasTapped:" forControlEvents:64];
  v45 = [v61 buttonTray];
  [v45 addButton:v42];
}

- (void)_continueWasTapped:(id)a3
{
  v4 = a3;
  [v4 showsBusyIndicator];
  v5 = [BYODUpdateWelcomeFlagRequest alloc];
  v6 = [(BYODBaseViewController *)self userAccount];
  v7 = [(BYODBaseViewController *)self userAccount];
  v8 = [v7 accountStore];
  v9 = [(BYODUpdateWelcomeFlagRequest *)v5 initWithAccount:v6 accountStore:v8];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_4CF10;
  v11[3] = &unk_B94F0;
  v10 = v4;
  v12 = v10;
  v13 = self;
  [(BYODUpdateWelcomeFlagRequest *)v9 performRequestWithCallback:v11];
}

- (void)_notNowWasTapped:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_4D224;
  v3[3] = &unk_B8EB0;
  v3[4] = self;
  [(BYODFirstTimeIntroViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

@end