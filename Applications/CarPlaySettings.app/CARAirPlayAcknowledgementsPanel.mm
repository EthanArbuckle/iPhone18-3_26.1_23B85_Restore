@interface CARAirPlayAcknowledgementsPanel
- (void)_fetchAcknowledgements;
- (void)viewDidLoad;
@end

@implementation CARAirPlayAcknowledgementsPanel

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = CARAirPlayAcknowledgementsPanel;
  [(CARSettingsPanel *)&v28 viewDidLoad];
  view = [(CARAirPlayAcknowledgementsPanel *)self view];
  v4 = objc_alloc_init(UITextView);
  [(UITextView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)v4 setText:&stru_1000DE3D8];
  [(UITextView *)v4 setTextAlignment:4];
  v5 = +[UIColor labelColor];
  [(UITextView *)v4 setTextColor:v5];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [(UITextView *)v4 setFont:v6];

  [(UITextView *)v4 setEditable:0];
  [(UITextView *)v4 setSelectable:0];
  backgroundColor = [view backgroundColor];
  [(UITextView *)v4 setBackgroundColor:backgroundColor];

  [(UITextView *)v4 setTextContainerInset:0.0, 0.0, 0.0, 30.0];
  selfCopy = self;
  acknowledgementsTextView = self->_acknowledgementsTextView;
  self->_acknowledgementsTextView = v4;
  v9 = v4;

  [view addSubview:v9];
  topAnchor = [(UITextView *)v9 topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v23 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
  v29[0] = v23;
  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
  bottomAnchor2 = [(UITextView *)v9 bottomAnchor];
  v19 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
  v29[1] = v19;
  leadingAnchor = [(UITextView *)v9 leadingAnchor];
  safeAreaLayoutGuide3 = [view safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
  v12 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:2.0];
  v29[2] = v12;
  safeAreaLayoutGuide4 = [view safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide4 trailingAnchor];
  trailingAnchor2 = [(UITextView *)v9 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:2.0];
  v29[3] = v16;
  v17 = [NSArray arrayWithObjects:v29 count:4];

  [view addConstraints:v17];
  [(CARAirPlayAcknowledgementsPanel *)selfCopy _fetchAcknowledgements];
}

- (void)_fetchAcknowledgements
{
  panelController = [(CARSettingsPanel *)self panelController];
  vehicleVideoSettings = [panelController vehicleVideoSettings];

  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000210E4;
  v5[3] = &unk_1000DB4C8;
  objc_copyWeak(&v6, &location);
  [vehicleVideoSettings fetchLicensesTextWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

@end