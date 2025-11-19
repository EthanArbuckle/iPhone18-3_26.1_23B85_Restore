@interface BuddyPasscodeField
- (BOOL)becomeFirstResponder;
- (BOOL)hasText;
- (BuddyPasscodeField)initWithNumberOfEntryFields:(unint64_t)a3;
- (BuddyPasscodeFieldDelegate)delegate;
- (NSString)stringValue;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)keyboardType;
- (void)_passcodeFieldTapped:(id)a3;
- (void)_updateDots;
- (void)deleteBackward;
- (void)insertText:(id)a3;
- (void)layoutDotsToFitInsideRect:(CGRect)a3;
- (void)setStringValue:(id)a3;
@end

@implementation BuddyPasscodeField

- (BuddyPasscodeField)initWithNumberOfEntryFields:(unint64_t)a3
{
  v22 = a2;
  v21 = a3;
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

    *(location + 3) = v21;
    *(location + 8) = 1;
    obj = objc_alloc_init(NSMutableArray);
    for (i = 0; i < v21; ++i)
    {
      v17 = objc_alloc_init(BuddyPasscodeFieldDot);
      [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
      v5 = [v17 heightAnchor];
      [v17 intrinsicContentSize];
      v7 = [v5 constraintEqualToConstant:v6];
      [v7 setActive:1];

      v8 = [v17 widthAnchor];
      [v17 intrinsicContentSize];
      v11 = [v8 constraintEqualToConstant:{v9, *&v9, v10}];
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

- (void)setStringValue:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyPasscodeField *)v12 value];
  [(NSMutableString *)v3 setString:location[0]];

  [(BuddyPasscodeField *)v12 _updateDots];
  v4 = [(BuddyPasscodeField *)v12 value];
  v5 = [(NSMutableString *)v4 length];
  v6 = [(BuddyPasscodeField *)v12 numberOfEntryFields];

  if (v5 == v6)
  {
    v7 = [(BuddyPasscodeField *)v12 delegate];
    v8 = v12;
    v9 = [(BuddyPasscodeField *)v12 value];
    v10 = [(NSMutableString *)v9 copy];
    [(BuddyPasscodeFieldDelegate *)v7 passcodeField:v8 enteredPasscode:v10];
  }

  objc_storeStrong(location, 0);
}

- (void)layoutDotsToFitInsideRect:(CGRect)a3
{
  v20 = a3;
  v19 = self;
  location[1] = a2;
  v3 = [(BuddyPasscodeField *)self dotViews];
  v4 = [(NSArray *)v3 count];

  if (v4)
  {
    [(BuddyPasscodeField *)v19 setSpacing:28.0];
    [(BuddyPasscodeField *)v19 layoutIfNeeded];
    v5 = [(BuddyPasscodeField *)v19 dotViews];
    location[0] = [(NSArray *)v5 lastObject];

    [location[0] frame];
    v7 = v6;
    [location[0] intrinsicContentSize];
    if (v7 + v8 > v20.size.width)
    {
      v9 = [(BuddyPasscodeField *)v19 numberOfEntryFields];
      v10 = [(BuddyPasscodeField *)v19 dotViews];
      v11 = [(NSArray *)v10 firstObject];
      [v11 intrinsicContentSize];
      v16 = v12;
      v17 = v13;
      v14 = v9 * v12;

      v15 = [(BuddyPasscodeField *)v19 numberOfEntryFields];
      [(BuddyPasscodeField *)v19 setSpacing:(v20.size.width - v14) / (v15 - 1), (v20.size.width - v14) / (v15 - 1), v15 - 1, *&v16, v17];
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
  v4 = [(BuddyPasscodeField *)self value];
  v5 = [NSString localizedStringWithFormat:v3, [(NSMutableString *)v4 length], [(BuddyPasscodeField *)self numberOfEntryFields]];

  return v5;
}

- (void)_passcodeFieldTapped:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyPasscodeField *)v4 becomeFirstResponder];
  objc_storeStrong(location, 0);
}

- (void)_updateDots
{
  v10 = self;
  v9 = a2;
  for (i = 0; ; ++i)
  {
    v2 = i;
    if (v2 >= [(BuddyPasscodeField *)v10 numberOfEntryFields])
    {
      break;
    }

    v3 = [(BuddyPasscodeField *)v10 dotViews];
    v7 = [(NSArray *)v3 objectAtIndex:i];

    v4 = i;
    v5 = [(BuddyPasscodeField *)v10 stringValue];
    v6 = v4 < [(NSString *)v5 length];
    [v7 setFilled:v6];

    objc_storeStrong(&v7, 0);
  }
}

- (BOOL)becomeFirstResponder
{
  v7 = self;
  v6 = a2;
  v4.receiver = self;
  v4.super_class = BuddyPasscodeField;
  v5 = [(BuddyPasscodeField *)&v4 becomeFirstResponder];
  if (v5)
  {
    v2 = +[UIKeyboard activeKeyboard];
    [v2 setReturnKeyEnabled:0];
  }

  return v5 & 1;
}

- (int64_t)keyboardType
{
  v2 = +[UIDevice currentDevice];
  v3 = [(UIDevice *)v2 userInterfaceIdiom];

  if (v3 == 1)
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

- (void)insertText:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  v3 = 1;
  if ([(BuddyPasscodeField *)v16 isEnabled])
  {
    v14 = [(BuddyPasscodeField *)v16 stringValue];
    v13 = 1;
    v4 = [(NSString *)v14 length];
    v3 = v4 == [(BuddyPasscodeField *)v16 numberOfEntryFields];
  }

  if (v13)
  {
  }

  if (!v3 && ([location[0] isEqualToString:@"\n"] & 1) == 0)
  {
    if ([location[0] length])
    {
      v5 = [(BuddyPasscodeField *)v16 value];
      [(NSMutableString *)v5 appendString:location[0]];

      [(BuddyPasscodeField *)v16 _updateDots];
      v6 = [(BuddyPasscodeField *)v16 stringValue];
      v7 = [(NSString *)v6 length];
      v8 = [(BuddyPasscodeField *)v16 numberOfEntryFields];

      if (v7 == v8)
      {
        v9 = [(BuddyPasscodeField *)v16 delegate];
        v10 = v16;
        v11 = [(BuddyPasscodeField *)v16 value];
        v12 = [(NSMutableString *)v11 copy];
        [(BuddyPasscodeFieldDelegate *)v9 passcodeField:v10 enteredPasscode:v12];
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)deleteBackward
{
  v2 = [(BuddyPasscodeField *)self stringValue];
  v3 = [(NSString *)v2 length];

  if (v3)
  {
    v4 = [(BuddyPasscodeField *)self value];
    v5 = [(BuddyPasscodeField *)self stringValue];
    v7 = [(NSString *)v5 length]- 1;
    [(NSMutableString *)v4 deleteCharactersInRange:v7, 1, v7, 1];

    [(BuddyPasscodeField *)self _updateDots];
  }
}

- (BuddyPasscodeFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end