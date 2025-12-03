@interface HSPCNameIdentifyServiceRow
- (HSPCNameIdentifyServiceRow)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)identify;
- (void)updateConstraints;
- (void)updateUIWithService:(id)service suggestedName:(id)name;
@end

@implementation HSPCNameIdentifyServiceRow

- (HSPCNameIdentifyServiceRow)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = HSPCNameIdentifyServiceRow;
  v4 = [(HSPCNameToggleServiceRow *)&v16 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textField = [(HSPCRow *)v4 textField];
    [textField setClearButtonMode:1];

    v7 = [PRXButton buttonWithProximityType:0];
    v8 = HULocalizedString();
    [(UIButton *)v7 setTitle:v8 forState:0];

    [(UIButton *)v7 addTarget:v5 action:"identify" forControlEvents:64];
    contentView = [(HSPCNameIdentifyServiceRow *)v5 contentView];
    [contentView addSubview:v7];

    identifyButton = v5->_identifyButton;
    v5->_identifyButton = v7;
    v11 = v7;

    v12 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    contentView2 = [(HSPCNameIdentifyServiceRow *)v5 contentView];
    [contentView2 addSubview:v12];

    [(UIActivityIndicatorView *)v12 setHidesWhenStopped:1];
    spinner = v5->_spinner;
    v5->_spinner = v12;
  }

  return v5;
}

- (void)updateConstraints
{
  if (![(HSPCRow *)self constraintsSet])
  {
    leftView = [(HSPCRow *)self leftView];
    [leftView setTranslatesAutoresizingMaskIntoConstraints:0];

    leftView2 = [(HSPCRow *)self leftView];
    leadingAnchor = [leftView2 leadingAnchor];
    contentView = [(HSPCNameIdentifyServiceRow *)self contentView];
    leadingAnchor2 = [contentView leadingAnchor];
    +[HSPCRow horizontalLeadingMargin];
    v72 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v96[0] = v72;
    leftView3 = [(HSPCRow *)self leftView];
    centerYAnchor = [leftView3 centerYAnchor];
    contentView2 = [(HSPCNameIdentifyServiceRow *)self contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v5 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v96[1] = v5;
    leftView4 = [(HSPCRow *)self leftView];
    heightAnchor = [leftView4 heightAnchor];
    +[HSPCRow leftImageSize];
    v9 = [heightAnchor constraintEqualToConstant:v8];
    v96[2] = v9;
    leftView5 = [(HSPCRow *)self leftView];
    widthAnchor = [leftView5 widthAnchor];
    +[HSPCRow leftImageSize];
    v12 = [widthAnchor constraintEqualToConstant:?];
    v96[3] = v12;
    v13 = [NSArray arrayWithObjects:v96 count:4];
    [NSLayoutConstraint activateConstraints:v13];

    identifyButton = [(HSPCNameIdentifyServiceRow *)self identifyButton];
    [identifyButton setTranslatesAutoresizingMaskIntoConstraints:0];

    identifyButton2 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
    LODWORD(v16) = 1148846080;
    [identifyButton2 setContentHuggingPriority:0 forAxis:v16];

    identifyButton3 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
    topAnchor = [identifyButton3 topAnchor];
    contentView3 = [(HSPCNameIdentifyServiceRow *)self contentView];
    topAnchor2 = [contentView3 topAnchor];
    v73 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v95[0] = v73;
    identifyButton4 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
    trailingAnchor = [identifyButton4 trailingAnchor];
    contentView4 = [(HSPCNameIdentifyServiceRow *)self contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    +[HSPCRow horizontalSpacing];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v19];
    v95[1] = v20;
    identifyButton5 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
    bottomAnchor = [identifyButton5 bottomAnchor];
    contentView5 = [(HSPCNameIdentifyServiceRow *)self contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v95[2] = v25;
    v26 = [NSArray arrayWithObjects:v95 count:3];
    [NSLayoutConstraint activateConstraints:v26];

    spinner = [(HSPCNameIdentifyServiceRow *)self spinner];
    [spinner setTranslatesAutoresizingMaskIntoConstraints:0];

    spinner2 = [(HSPCNameIdentifyServiceRow *)self spinner];
    LODWORD(v29) = 1148846080;
    [spinner2 setContentHuggingPriority:0 forAxis:v29];

    spinner3 = [(HSPCNameIdentifyServiceRow *)self spinner];
    topAnchor3 = [spinner3 topAnchor];
    contentView6 = [(HSPCNameIdentifyServiceRow *)self contentView];
    topAnchor4 = [contentView6 topAnchor];
    v74 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v94[0] = v74;
    spinner4 = [(HSPCNameIdentifyServiceRow *)self spinner];
    bottomAnchor3 = [spinner4 bottomAnchor];
    contentView7 = [(HSPCNameIdentifyServiceRow *)self contentView];
    bottomAnchor4 = [contentView7 bottomAnchor];
    v57 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v94[1] = v57;
    spinner5 = [(HSPCNameIdentifyServiceRow *)self spinner];
    centerXAnchor = [spinner5 centerXAnchor];
    identifyButton6 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
    centerXAnchor2 = [identifyButton6 centerXAnchor];
    v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v94[2] = v32;
    spinner6 = [(HSPCNameIdentifyServiceRow *)self spinner];
    centerYAnchor3 = [spinner6 centerYAnchor];
    identifyButton7 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
    centerYAnchor4 = [identifyButton7 centerYAnchor];
    v37 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v94[3] = v37;
    v38 = [NSArray arrayWithObjects:v94 count:4];
    [NSLayoutConstraint activateConstraints:v38];

    textField = [(HSPCRow *)self textField];
    [textField setTranslatesAutoresizingMaskIntoConstraints:0];

    textField2 = [(HSPCRow *)self textField];
    leadingAnchor3 = [textField2 leadingAnchor];
    leftView6 = [(HSPCRow *)self leftView];
    trailingAnchor3 = [leftView6 trailingAnchor];
    +[HSPCRow horizontalSpacing];
    v75 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:?];
    v93[0] = v75;
    textField3 = [(HSPCRow *)self textField];
    topAnchor5 = [textField3 topAnchor];
    contentView8 = [(HSPCNameIdentifyServiceRow *)self contentView];
    topAnchor6 = [contentView8 topAnchor];
    v58 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v93[1] = v58;
    textField4 = [(HSPCRow *)self textField];
    trailingAnchor4 = [textField4 trailingAnchor];
    identifyButton8 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
    leadingAnchor4 = [identifyButton8 leadingAnchor];
    +[HSPCRow horizontalTrailingMargin];
    v50 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor4 constant:-v40];
    v93[2] = v50;
    textField5 = [(HSPCRow *)self textField];
    bottomAnchor5 = [textField5 bottomAnchor];
    contentView9 = [(HSPCNameIdentifyServiceRow *)self contentView];
    bottomAnchor6 = [contentView9 bottomAnchor];
    v45 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v93[3] = v45;
    textField6 = [(HSPCRow *)self textField];
    heightAnchor2 = [textField6 heightAnchor];
    v48 = [heightAnchor2 constraintEqualToConstant:44.0];
    v93[4] = v48;
    v49 = [NSArray arrayWithObjects:v93 count:5];
    [NSLayoutConstraint activateConstraints:v49];

    [(HSPCRow *)self setConstraintsSet:1];
  }

  v92.receiver = self;
  v92.super_class = HSPCNameIdentifyServiceRow;
  [(HSPCNameServiceRow *)&v92 updateConstraints];
}

- (void)updateUIWithService:(id)service suggestedName:(id)name
{
  v6.receiver = self;
  v6.super_class = HSPCNameIdentifyServiceRow;
  [(HSPCNameServiceRow *)&v6 updateUIWithService:service suggestedName:name];
  textField = [(HSPCRow *)self textField];
  [textField setClearButtonMode:0];
}

- (void)identify
{
  identifyButton = [(HSPCNameIdentifyServiceRow *)self identifyButton];
  [identifyButton setHighlighted:1];

  identifyButton2 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
  [identifyButton2 setHidden:1];

  spinner = [(HSPCNameIdentifyServiceRow *)self spinner];
  [spinner startAnimating];

  service = [(HSPCNameServiceRow *)self service];
  accessory = [service accessory];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100055D5C;
  v9[3] = &unk_1000C6D88;
  v9[4] = self;
  v10 = accessory;
  v8 = accessory;
  [v8 identifyWithCompletionHandler:v9];
}

@end