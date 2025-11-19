@interface HSPCNameIdentifyServiceRow
- (HSPCNameIdentifyServiceRow)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)identify;
- (void)updateConstraints;
- (void)updateUIWithService:(id)a3 suggestedName:(id)a4;
@end

@implementation HSPCNameIdentifyServiceRow

- (HSPCNameIdentifyServiceRow)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v16.receiver = self;
  v16.super_class = HSPCNameIdentifyServiceRow;
  v4 = [(HSPCNameToggleServiceRow *)&v16 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(HSPCRow *)v4 textField];
    [v6 setClearButtonMode:1];

    v7 = [PRXButton buttonWithProximityType:0];
    v8 = HULocalizedString();
    [(UIButton *)v7 setTitle:v8 forState:0];

    [(UIButton *)v7 addTarget:v5 action:"identify" forControlEvents:64];
    v9 = [(HSPCNameIdentifyServiceRow *)v5 contentView];
    [v9 addSubview:v7];

    identifyButton = v5->_identifyButton;
    v5->_identifyButton = v7;
    v11 = v7;

    v12 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    v13 = [(HSPCNameIdentifyServiceRow *)v5 contentView];
    [v13 addSubview:v12];

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
    v3 = [(HSPCRow *)self leftView];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v88 = [(HSPCRow *)self leftView];
    v80 = [v88 leadingAnchor];
    v84 = [(HSPCNameIdentifyServiceRow *)self contentView];
    v76 = [v84 leadingAnchor];
    +[HSPCRow horizontalLeadingMargin];
    v72 = [v80 constraintEqualToAnchor:v76 constant:?];
    v96[0] = v72;
    v68 = [(HSPCRow *)self leftView];
    v59 = [v68 centerYAnchor];
    v62 = [(HSPCNameIdentifyServiceRow *)self contentView];
    v4 = [v62 centerYAnchor];
    v5 = [v59 constraintEqualToAnchor:v4];
    v96[1] = v5;
    v6 = [(HSPCRow *)self leftView];
    v7 = [v6 heightAnchor];
    +[HSPCRow leftImageSize];
    v9 = [v7 constraintEqualToConstant:v8];
    v96[2] = v9;
    v10 = [(HSPCRow *)self leftView];
    v11 = [v10 widthAnchor];
    +[HSPCRow leftImageSize];
    v12 = [v11 constraintEqualToConstant:?];
    v96[3] = v12;
    v13 = [NSArray arrayWithObjects:v96 count:4];
    [NSLayoutConstraint activateConstraints:v13];

    v14 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
    LODWORD(v16) = 1148846080;
    [v15 setContentHuggingPriority:0 forAxis:v16];

    v89 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
    v81 = [v89 topAnchor];
    v85 = [(HSPCNameIdentifyServiceRow *)self contentView];
    v77 = [v85 topAnchor];
    v73 = [v81 constraintEqualToAnchor:v77];
    v95[0] = v73;
    v69 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
    v63 = [v69 trailingAnchor];
    v17 = [(HSPCNameIdentifyServiceRow *)self contentView];
    v18 = [v17 trailingAnchor];
    +[HSPCRow horizontalSpacing];
    v20 = [v63 constraintEqualToAnchor:v18 constant:-v19];
    v95[1] = v20;
    v21 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
    v22 = [v21 bottomAnchor];
    v23 = [(HSPCNameIdentifyServiceRow *)self contentView];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    v95[2] = v25;
    v26 = [NSArray arrayWithObjects:v95 count:3];
    [NSLayoutConstraint activateConstraints:v26];

    v27 = [(HSPCNameIdentifyServiceRow *)self spinner];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

    v28 = [(HSPCNameIdentifyServiceRow *)self spinner];
    LODWORD(v29) = 1148846080;
    [v28 setContentHuggingPriority:0 forAxis:v29];

    v90 = [(HSPCNameIdentifyServiceRow *)self spinner];
    v82 = [v90 topAnchor];
    v86 = [(HSPCNameIdentifyServiceRow *)self contentView];
    v78 = [v86 topAnchor];
    v74 = [v82 constraintEqualToAnchor:v78];
    v94[0] = v74;
    v70 = [(HSPCNameIdentifyServiceRow *)self spinner];
    v64 = [v70 bottomAnchor];
    v66 = [(HSPCNameIdentifyServiceRow *)self contentView];
    v60 = [v66 bottomAnchor];
    v57 = [v64 constraintEqualToAnchor:v60];
    v94[1] = v57;
    v55 = [(HSPCNameIdentifyServiceRow *)self spinner];
    v53 = [v55 centerXAnchor];
    v30 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
    v31 = [v30 centerXAnchor];
    v32 = [v53 constraintEqualToAnchor:v31];
    v94[2] = v32;
    v33 = [(HSPCNameIdentifyServiceRow *)self spinner];
    v34 = [v33 centerYAnchor];
    v35 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
    v36 = [v35 centerYAnchor];
    v37 = [v34 constraintEqualToAnchor:v36];
    v94[3] = v37;
    v38 = [NSArray arrayWithObjects:v94 count:4];
    [NSLayoutConstraint activateConstraints:v38];

    v39 = [(HSPCRow *)self textField];
    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

    v91 = [(HSPCRow *)self textField];
    v83 = [v91 leadingAnchor];
    v87 = [(HSPCRow *)self leftView];
    v79 = [v87 trailingAnchor];
    +[HSPCRow horizontalSpacing];
    v75 = [v83 constraintEqualToAnchor:v79 constant:?];
    v93[0] = v75;
    v71 = [(HSPCRow *)self textField];
    v65 = [v71 topAnchor];
    v67 = [(HSPCNameIdentifyServiceRow *)self contentView];
    v61 = [v67 topAnchor];
    v58 = [v65 constraintEqualToAnchor:v61];
    v93[1] = v58;
    v56 = [(HSPCRow *)self textField];
    v52 = [v56 trailingAnchor];
    v54 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
    v51 = [v54 leadingAnchor];
    +[HSPCRow horizontalTrailingMargin];
    v50 = [v52 constraintEqualToAnchor:v51 constant:-v40];
    v93[2] = v50;
    v41 = [(HSPCRow *)self textField];
    v42 = [v41 bottomAnchor];
    v43 = [(HSPCNameIdentifyServiceRow *)self contentView];
    v44 = [v43 bottomAnchor];
    v45 = [v42 constraintEqualToAnchor:v44];
    v93[3] = v45;
    v46 = [(HSPCRow *)self textField];
    v47 = [v46 heightAnchor];
    v48 = [v47 constraintEqualToConstant:44.0];
    v93[4] = v48;
    v49 = [NSArray arrayWithObjects:v93 count:5];
    [NSLayoutConstraint activateConstraints:v49];

    [(HSPCRow *)self setConstraintsSet:1];
  }

  v92.receiver = self;
  v92.super_class = HSPCNameIdentifyServiceRow;
  [(HSPCNameServiceRow *)&v92 updateConstraints];
}

- (void)updateUIWithService:(id)a3 suggestedName:(id)a4
{
  v6.receiver = self;
  v6.super_class = HSPCNameIdentifyServiceRow;
  [(HSPCNameServiceRow *)&v6 updateUIWithService:a3 suggestedName:a4];
  v5 = [(HSPCRow *)self textField];
  [v5 setClearButtonMode:0];
}

- (void)identify
{
  v3 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
  [v3 setHighlighted:1];

  v4 = [(HSPCNameIdentifyServiceRow *)self identifyButton];
  [v4 setHidden:1];

  v5 = [(HSPCNameIdentifyServiceRow *)self spinner];
  [v5 startAnimating];

  v6 = [(HSPCNameServiceRow *)self service];
  v7 = [v6 accessory];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100055D5C;
  v9[3] = &unk_1000C6D88;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [v8 identifyWithCompletionHandler:v9];
}

@end