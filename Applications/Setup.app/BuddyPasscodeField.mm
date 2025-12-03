@interface BuddyPasscodeField
- (BOOL)becomeFirstResponder;
- (BOOL)hasText;
- (BuddyPasscodeField)initWithNumberOfEntryFields:(unint64_t)fields;
- (BuddyPasscodeFieldDelegate)delegate;
- (NSString)stringValue;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)keyboardType;
- (void)_passcodeFieldTapped:(id)tapped;
- (void)_updateDots;
- (void)deleteBackward;
- (void)insertText:(id)text;
- (void)layoutDotsToFitInsideRect:(CGRect)rect;
- (void)setStringValue:(id)value;
@end

@implementation BuddyPasscodeField

- (BuddyPasscodeField)initWithNumberOfEntryFields:(unint64_t)fields
{
  v22 = a2;
  fieldsCopy = fields;
  location = 0;
  v20.receiver = self;
  v20.super_class = BuddyPasscodeField;
  location = [(BuddyPasscodeField *)&v20 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  objc_storeStrong(&location, location);
  if (location)
  {
    v3 = objc_alloc_init(NSMutableString);
    v4 = *(location + 4);
    *(location + 4) = v3;

    *(location + 3) = fieldsCopy;
    *(location + 8) = 1;
    obj = objc_alloc_init(NSMutableArray);
    for (i = 0; i < fieldsCopy; ++i)
    {
      v17 = objc_alloc_init(BuddyPasscodeFieldDot);
      [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
      heightAnchor = [v17 heightAnchor];
      [v17 intrinsicContentSize];
      v7 = [heightAnchor constraintEqualToConstant:v6];
      [v7 setActive:1];

      widthAnchor = [v17 widthAnchor];
      [v17 intrinsicContentSize];
      v11 = [widthAnchor constraintEqualToConstant:{v9, *&v9, v10}];
      [v11 setActive:1];

      [obj addObject:v17];
      [location addArrangedSubview:v17];
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(location + 5, obj);
    [location setSpacing:28.0];
    [location setSemanticContentAttribute:3];
    [location setAccessibilityIdentifier:@"passcodeField"];
    [location setDistribution:0];
    v12 = location;
    v13 = [UITapGestureRecognizer alloc];
    v14 = [v13 initWithTarget:location action:"_passcodeFieldTapped:"];
    [v12 addGestureRecognizer:v14];

    objc_storeStrong(&obj, 0);
  }

  v15 = location;
  objc_storeStrong(&location, 0);
  return v15;
}

- (NSString)stringValue
{
  v2 = [(BuddyPasscodeField *)self value:a2];
  v3 = [(NSMutableString *)v2 copy];

  return v3;
}

- (void)setStringValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  value = [(BuddyPasscodeField *)selfCopy value];
  [(NSMutableString *)value setString:location[0]];

  [(BuddyPasscodeField *)selfCopy _updateDots];
  value2 = [(BuddyPasscodeField *)selfCopy value];
  v5 = [(NSMutableString *)value2 length];
  numberOfEntryFields = [(BuddyPasscodeField *)selfCopy numberOfEntryFields];

  if (v5 == numberOfEntryFields)
  {
    delegate = [(BuddyPasscodeField *)selfCopy delegate];
    v8 = selfCopy;
    value3 = [(BuddyPasscodeField *)selfCopy value];
    v10 = [(NSMutableString *)value3 copy];
    [(BuddyPasscodeFieldDelegate *)delegate passcodeField:v8 enteredPasscode:v10];
  }

  objc_storeStrong(location, 0);
}

- (void)layoutDotsToFitInsideRect:(CGRect)rect
{
  rectCopy = rect;
  selfCopy = self;
  location[1] = a2;
  dotViews = [(BuddyPasscodeField *)self dotViews];
  v4 = [(NSArray *)dotViews count];

  if (v4)
  {
    [(BuddyPasscodeField *)selfCopy setSpacing:28.0];
    [(BuddyPasscodeField *)selfCopy layoutIfNeeded];
    dotViews2 = [(BuddyPasscodeField *)selfCopy dotViews];
    location[0] = [(NSArray *)dotViews2 lastObject];

    [location[0] frame];
    v7 = v6;
    [location[0] intrinsicContentSize];
    if (v7 + v8 > rectCopy.size.width)
    {
      numberOfEntryFields = [(BuddyPasscodeField *)selfCopy numberOfEntryFields];
      dotViews3 = [(BuddyPasscodeField *)selfCopy dotViews];
      firstObject = [(NSArray *)dotViews3 firstObject];
      [firstObject intrinsicContentSize];
      v16 = v12;
      v17 = v13;
      v14 = numberOfEntryFields * v12;

      numberOfEntryFields2 = [(BuddyPasscodeField *)selfCopy numberOfEntryFields];
      [(BuddyPasscodeField *)selfCopy setSpacing:(rectCopy.size.width - v14) / (numberOfEntryFields2 - 1), (rectCopy.size.width - v14) / (numberOfEntryFields2 - 1), numberOfEntryFields2 - 1, *&v16, v17];
    }

    objc_storeStrong(location, 0);
  }
}

- (id)accessibilityLabel
{
  v2 = [NSBundle mainBundle:a2];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"PASSCODE" value:&stru_10032F900 table:@"Localizable"];

  return v3;
}

- (id)accessibilityValue
{
  v2 = +[NSBundle mainBundle];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"PASSCODE_VALUES" value:&stru_10032F900 table:@"Localizable"];
  value = [(BuddyPasscodeField *)self value];
  v5 = [NSString localizedStringWithFormat:v3, [(NSMutableString *)value length], [(BuddyPasscodeField *)self numberOfEntryFields]];

  return v5;
}

- (void)_passcodeFieldTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  [(BuddyPasscodeField *)selfCopy becomeFirstResponder];
  objc_storeStrong(location, 0);
}

- (void)_updateDots
{
  selfCopy = self;
  v9 = a2;
  for (i = 0; ; ++i)
  {
    v2 = i;
    if (v2 >= [(BuddyPasscodeField *)selfCopy numberOfEntryFields])
    {
      break;
    }

    dotViews = [(BuddyPasscodeField *)selfCopy dotViews];
    v7 = [(NSArray *)dotViews objectAtIndex:i];

    v4 = i;
    stringValue = [(BuddyPasscodeField *)selfCopy stringValue];
    v6 = v4 < [(NSString *)stringValue length];
    [v7 setFilled:v6];

    objc_storeStrong(&v7, 0);
  }
}

- (BOOL)becomeFirstResponder
{
  selfCopy = self;
  v6 = a2;
  v4.receiver = self;
  v4.super_class = BuddyPasscodeField;
  becomeFirstResponder = [(BuddyPasscodeField *)&v4 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    v2 = +[UIKeyboard activeKeyboard];
    [v2 setReturnKeyEnabled:0];
  }

  return becomeFirstResponder & 1;
}

- (int64_t)keyboardType
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [(UIDevice *)v2 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 11;
  }

  else
  {
    return 127;
  }
}

- (BOOL)hasText
{
  v2 = [(BuddyPasscodeField *)self stringValue:a2];
  v3 = [(NSString *)v2 length]!= 0;

  return v3;
}

- (void)insertText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  v13 = 0;
  v3 = 1;
  if ([(BuddyPasscodeField *)selfCopy isEnabled])
  {
    stringValue = [(BuddyPasscodeField *)selfCopy stringValue];
    v13 = 1;
    v4 = [(NSString *)stringValue length];
    v3 = v4 == [(BuddyPasscodeField *)selfCopy numberOfEntryFields];
  }

  if (v13)
  {
  }

  if (!v3 && ([location[0] isEqualToString:@"\n"] & 1) == 0)
  {
    if ([location[0] length])
    {
      value = [(BuddyPasscodeField *)selfCopy value];
      [(NSMutableString *)value appendString:location[0]];

      [(BuddyPasscodeField *)selfCopy _updateDots];
      stringValue2 = [(BuddyPasscodeField *)selfCopy stringValue];
      v7 = [(NSString *)stringValue2 length];
      numberOfEntryFields = [(BuddyPasscodeField *)selfCopy numberOfEntryFields];

      if (v7 == numberOfEntryFields)
      {
        delegate = [(BuddyPasscodeField *)selfCopy delegate];
        v10 = selfCopy;
        value2 = [(BuddyPasscodeField *)selfCopy value];
        v12 = [(NSMutableString *)value2 copy];
        [(BuddyPasscodeFieldDelegate *)delegate passcodeField:v10 enteredPasscode:v12];
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)deleteBackward
{
  stringValue = [(BuddyPasscodeField *)self stringValue];
  v3 = [(NSString *)stringValue length];

  if (v3)
  {
    value = [(BuddyPasscodeField *)self value];
    stringValue2 = [(BuddyPasscodeField *)self stringValue];
    v7 = [(NSString *)stringValue2 length]- 1;
    [(NSMutableString *)value deleteCharactersInRange:v7, 1, v7, 1];

    [(BuddyPasscodeField *)self _updateDots];
  }
}

- (BuddyPasscodeFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end