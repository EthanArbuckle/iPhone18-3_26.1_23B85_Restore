@interface BuddySimplePasscodeInputView
- (BuddySimplePasscodeInputView)initWithFrame:(CGRect)a3 numberOfEntryFields:(unint64_t)a4;
- (id)passcode;
- (void)layoutSubviews;
- (void)passcodeField:(id)a3 enteredPasscode:(id)a4;
- (void)setPasscode:(id)a3;
@end

@implementation BuddySimplePasscodeInputView

- (BuddySimplePasscodeInputView)initWithFrame:(CGRect)a3 numberOfEntryFields:(unint64_t)a4
{
  v48 = a3;
  v46 = a2;
  v45 = a4;
  location = 0;
  v44.receiver = self;
  v44.super_class = BuddySimplePasscodeInputView;
  location = [(BuddySimplePasscodeInputView *)&v44 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&location, location);
  if (location)
  {
    v4 = objc_alloc_init(BuddyFeatureFlags);
    v5 = *(location + 2);
    *(location + 2) = v4;

    v6 = [BuddyPasscodeField alloc];
    v7 = [(BuddyPasscodeField *)v6 initWithNumberOfEntryFields:v45];
    v8 = *(location + 4);
    *(location + 4) = v7;

    [*(location + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(location + 4) setDelegate:location];
    [location addSubview:*(location + 4)];
    if ([*(location + 2) isSolariumEnabled])
    {
      v9 = [location passcodeField];
      LODWORD(v10) = 1148846080;
      [v9 setContentHuggingPriority:0 forAxis:v10];

      v11 = [location passcodeField];
      LODWORD(v12) = 1148846080;
      [v11 setContentCompressionResistancePriority:0 forAxis:v12];

      v39 = [*(location + 4) leadingAnchor];
      v37 = [location leadingAnchor];
      v35 = [v39 constraintEqualToAnchor:?];
      v50[0] = v35;
      v13 = [*(location + 4) trailingAnchor];
      v14 = [location trailingAnchor];
      v15 = [v13 constraintLessThanOrEqualToAnchor:v14];
      v50[1] = v15;
      v16 = [*(location + 4) topAnchor];
      v17 = [location topAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      v50[2] = v18;
      v19 = [*(location + 4) bottomAnchor];
      v20 = [location bottomAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
      v50[3] = v21;
      v22 = [NSArray arrayWithObjects:v50 count:4];
      [NSLayoutConstraint activateConstraints:v22];
    }

    else
    {
      v43 = [*(location + 4) leadingAnchor];
      v42 = [location leadingAnchor];
      v41 = [v43 constraintGreaterThanOrEqualToAnchor:?];
      v49[0] = v41;
      v40 = [*(location + 4) trailingAnchor];
      v38 = [location trailingAnchor];
      v36 = [v40 constraintLessThanOrEqualToAnchor:?];
      v49[1] = v36;
      v23 = [*(location + 4) centerXAnchor];
      v24 = [location centerXAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];
      v49[2] = v25;
      v26 = [*(location + 4) topAnchor];
      v27 = [location topAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];
      v49[3] = v28;
      v29 = [*(location + 4) bottomAnchor];
      v30 = [location bottomAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];
      v49[4] = v31;
      v32 = [NSArray arrayWithObjects:v49 count:5];
      [NSLayoutConstraint activateConstraints:v32];
    }
  }

  v33 = location;
  objc_storeStrong(&location, 0);
  return v33;
}

- (void)layoutSubviews
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddySimplePasscodeInputView;
  [(BuddySimplePasscodeInputView *)&v7 layoutSubviews];
  v2 = [(BuddySimplePasscodeInputView *)v9 passcodeField];
  [(BuddySimplePasscodeInputView *)v9 frame];
  [(BuddyPasscodeField *)v2 layoutDotsToFitInsideRect:v3, v4, v5, v6, *&v3, *&v4, *&v5, *&v6];
}

- (void)setPasscode:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddySimplePasscodeInputView *)v5 passcodeField];
  [(BuddyPasscodeField *)v3 setStringValue:location[0]];

  objc_storeStrong(location, 0);
}

- (id)passcode
{
  v2 = [(BuddySimplePasscodeInputView *)self passcodeField:a2];
  v3 = [(BuddyPasscodeField *)v2 stringValue];

  return v3;
}

- (void)passcodeField:(id)a3 enteredPasscode:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v5 = [(BuddyPasscodeInputView *)v12 delegate];
  v8 = 0;
  v6 = 0;
  if (v5)
  {
    v9 = [(BuddyPasscodeInputView *)v12 delegate];
    v8 = 1;
    v6 = objc_opt_respondsToSelector();
  }

  if (v8)
  {
  }

  if (v6)
  {
    v7 = [(BuddyPasscodeInputView *)v12 delegate];
    [(BuddyPasscodeInputViewDelegate *)v7 passcodeInput:v12 enteredPasscode:v10];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

@end