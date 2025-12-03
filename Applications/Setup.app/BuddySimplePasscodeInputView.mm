@interface BuddySimplePasscodeInputView
- (BuddySimplePasscodeInputView)initWithFrame:(CGRect)frame numberOfEntryFields:(unint64_t)fields;
- (id)passcode;
- (void)layoutSubviews;
- (void)passcodeField:(id)field enteredPasscode:(id)passcode;
- (void)setPasscode:(id)passcode;
@end

@implementation BuddySimplePasscodeInputView

- (BuddySimplePasscodeInputView)initWithFrame:(CGRect)frame numberOfEntryFields:(unint64_t)fields
{
  frameCopy = frame;
  v46 = a2;
  fieldsCopy = fields;
  location = 0;
  v44.receiver = self;
  v44.super_class = BuddySimplePasscodeInputView;
  location = [(BuddySimplePasscodeInputView *)&v44 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&location, location);
  if (location)
  {
    v4 = objc_alloc_init(BuddyFeatureFlags);
    v5 = *(location + 2);
    *(location + 2) = v4;

    v6 = [BuddyPasscodeField alloc];
    v7 = [(BuddyPasscodeField *)v6 initWithNumberOfEntryFields:fieldsCopy];
    v8 = *(location + 4);
    *(location + 4) = v7;

    [*(location + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(location + 4) setDelegate:location];
    [location addSubview:*(location + 4)];
    if ([*(location + 2) isSolariumEnabled])
    {
      passcodeField = [location passcodeField];
      LODWORD(v10) = 1148846080;
      [passcodeField setContentHuggingPriority:0 forAxis:v10];

      passcodeField2 = [location passcodeField];
      LODWORD(v12) = 1148846080;
      [passcodeField2 setContentCompressionResistancePriority:0 forAxis:v12];

      leadingAnchor = [*(location + 4) leadingAnchor];
      leadingAnchor2 = [location leadingAnchor];
      v35 = [leadingAnchor constraintEqualToAnchor:?];
      v50[0] = v35;
      trailingAnchor = [*(location + 4) trailingAnchor];
      trailingAnchor2 = [location trailingAnchor];
      v15 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
      v50[1] = v15;
      topAnchor = [*(location + 4) topAnchor];
      topAnchor2 = [location topAnchor];
      v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v50[2] = v18;
      bottomAnchor = [*(location + 4) bottomAnchor];
      bottomAnchor2 = [location bottomAnchor];
      v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v50[3] = v21;
      v22 = [NSArray arrayWithObjects:v50 count:4];
      [NSLayoutConstraint activateConstraints:v22];
    }

    else
    {
      leadingAnchor3 = [*(location + 4) leadingAnchor];
      leadingAnchor4 = [location leadingAnchor];
      v41 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:?];
      v49[0] = v41;
      trailingAnchor3 = [*(location + 4) trailingAnchor];
      trailingAnchor4 = [location trailingAnchor];
      v36 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:?];
      v49[1] = v36;
      centerXAnchor = [*(location + 4) centerXAnchor];
      centerXAnchor2 = [location centerXAnchor];
      v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v49[2] = v25;
      topAnchor3 = [*(location + 4) topAnchor];
      topAnchor4 = [location topAnchor];
      v28 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v49[3] = v28;
      bottomAnchor3 = [*(location + 4) bottomAnchor];
      bottomAnchor4 = [location bottomAnchor];
      v31 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
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
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddySimplePasscodeInputView;
  [(BuddySimplePasscodeInputView *)&v7 layoutSubviews];
  passcodeField = [(BuddySimplePasscodeInputView *)selfCopy passcodeField];
  [(BuddySimplePasscodeInputView *)selfCopy frame];
  [(BuddyPasscodeField *)passcodeField layoutDotsToFitInsideRect:v3, v4, v5, v6, *&v3, *&v4, *&v5, *&v6];
}

- (void)setPasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, passcode);
  passcodeField = [(BuddySimplePasscodeInputView *)selfCopy passcodeField];
  [(BuddyPasscodeField *)passcodeField setStringValue:location[0]];

  objc_storeStrong(location, 0);
}

- (id)passcode
{
  v2 = [(BuddySimplePasscodeInputView *)self passcodeField:a2];
  stringValue = [(BuddyPasscodeField *)v2 stringValue];

  return stringValue;
}

- (void)passcodeField:(id)field enteredPasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, field);
  v10 = 0;
  objc_storeStrong(&v10, passcode);
  delegate = [(BuddyPasscodeInputView *)selfCopy delegate];
  v8 = 0;
  v6 = 0;
  if (delegate)
  {
    delegate2 = [(BuddyPasscodeInputView *)selfCopy delegate];
    v8 = 1;
    v6 = objc_opt_respondsToSelector();
  }

  if (v8)
  {
  }

  if (v6)
  {
    delegate3 = [(BuddyPasscodeInputView *)selfCopy delegate];
    [(BuddyPasscodeInputViewDelegate *)delegate3 passcodeInput:selfCopy enteredPasscode:v10];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

@end