@interface AKCodeEntryView
+ (id)generatorFieldFont;
- (AKCodeEntryView)initWithFrame:(CGRect)frame;
- (BOOL)becomeFirstResponder;
- (NSString)stringValue;
- (void)_syncStringValueToLabels;
- (void)_updateFonts:(id)fonts;
- (void)dealloc;
- (void)deleteBackward;
- (void)emitCodeEnteredNotification;
- (void)insertText:(id)text;
- (void)passcodeFieldTapped:(id)tapped;
- (void)setStringValue:(id)value;
- (void)updateConstraints;
@end

@implementation AKCodeEntryView

- (AKCodeEntryView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v23 = a2;
  v24 = 0;
  v22.receiver = self;
  v22.super_class = AKCodeEntryView;
  v17 = [(AKCodeEntryView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v24 = v17;
  objc_storeStrong(&v24, v17);
  if (v17)
  {
    [(AKCodeEntryView *)v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = objc_alloc_init(NSMutableString);
    stringValue = v24->_stringValue;
    v24->_stringValue = v3;

    v21 = objc_alloc_init(NSMutableArray);
    generatorFieldFont = [objc_opt_class() generatorFieldFont];
    for (i = 0; i < 6; ++i)
    {
      v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v18 setFont:generatorFieldFont];
      [v18 setText:@"–"];
      [v18 setTextAlignment:1];
      layer = [v18 layer];
      [layer setDisableUpdateMask:{objc_msgSend(layer, "disableUpdateMask") | 0x12}];

      [(AKCodeEntryView *)v24 addSubview:v18];
      [v21 addObject:v18];
      objc_storeStrong(&v18, 0);
    }

    v5 = [v21 copy];
    generatorFields = v24->_generatorFields;
    v24->_generatorFields = v5;

    [AKCodeEntryView setContentCompressionResistancePriority:v24 forAxis:"setContentCompressionResistancePriority:forAxis:"];
    LODWORD(v7) = 1144750080;
    [(AKCodeEntryView *)v24 setContentHuggingPriority:0 forAxis:v7];
    LODWORD(v8) = 1144750080;
    [(AKCodeEntryView *)v24 setContentCompressionResistancePriority:v8 forAxis:?];
    LODWORD(v9) = 1132068864;
    [(AKCodeEntryView *)v24 setContentHuggingPriority:1 forAxis:v9];
    v10 = [UITapGestureRecognizer alloc];
    v11 = [v10 initWithTarget:v24 action:"passcodeFieldTapped:"];
    tapGestureRecognizer = v24->_tapGestureRecognizer;
    v24->_tapGestureRecognizer = v11;

    [(AKCodeEntryView *)v24 addGestureRecognizer:v24->_tapGestureRecognizer];
    v24->_passcodeFieldDisabled = 0;
    v15 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v15 addObserver:v24 selector:"_updateFonts:" name:UIContentSizeCategoryDidChangeNotification object:?];

    objc_storeStrong(&generatorFieldFont, 0);
    objc_storeStrong(&v21, 0);
  }

  v14 = v24;
  objc_storeStrong(&v24, 0);
  return v14;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:selfCopy name:UIContentSizeCategoryDidChangeNotification object:0];

  v3.receiver = selfCopy;
  v3.super_class = AKCodeEntryView;
  [(AKCodeEntryView *)&v3 dealloc];
}

- (void)_updateFonts:(id)fonts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fonts);
  generatorFieldFont = [objc_opt_class() generatorFieldFont];
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_generatorFields;
  v8 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(__b[1] + 8 * v5);
      [v10 setFont:generatorFieldFont];
      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  [(AKCodeEntryView *)selfCopy setNeedsUpdateConstraints];
  objc_storeStrong(&generatorFieldFont, 0);
  objc_storeStrong(location, 0);
}

- (void)_syncStringValueToLabels
{
  for (i = 0; i < 6; ++i)
  {
    if (i >= [(NSMutableString *)self->_stringValue length])
    {
      v2 = [(NSArray *)self->_generatorFields objectAtIndexedSubscript:i];
      [v2 setText:@"–"];
    }

    else
    {
      v4 = [(NSMutableString *)self->_stringValue substringWithRange:i, 1];
      v3 = [(NSArray *)self->_generatorFields objectAtIndexedSubscript:i];
      [v3 setText:v4];
    }
  }

  [(AKCodeEntryView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  selfCopy = self;
  v21[1] = a2;
  if (self->_activeConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:selfCopy->_activeConstraints];
  }

  v21[0] = objc_alloc_init(NSMutableArray);
  v20 = objc_alloc_init(NSMutableDictionary);
  for (i = 0; i < 6; ++i)
  {
    if (i)
    {
      v12 = [(NSArray *)selfCopy->_generatorFields objectAtIndexedSubscript:i];
      firstObject = [(NSArray *)selfCopy->_generatorFields firstObject];
      v10 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v12 relatedBy:11 toItem:0 attribute:1.0 multiplier:0.0 constant:?];
      [v21[0] addObject:?];
    }

    else
    {
      v23 = @"generatorLabel";
      v15 = [(NSArray *)selfCopy->_generatorFields objectAtIndexedSubscript:0];
      v24 = v15;
      v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v13 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[generatorLabel]|" options:0 metrics:0 views:?];
      [v21[0] addObjectsFromArray:?];
    }

    v7 = [(NSArray *)selfCopy->_generatorFields objectAtIndexedSubscript:i];
    v6 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleTitle1];
    [(UIFontMetrics *)v6 scaledValueForValue:14.5];
    v5 = [NSLayoutConstraint constraintWithItem:v7 attribute:7 relatedBy:0 toItem:0 attribute:1.0 multiplier:v2 constant:?];
    [v21[0] addObject:?];

    v9 = [(NSArray *)selfCopy->_generatorFields objectAtIndexedSubscript:i];
    v8 = [NSString stringWithFormat:@"codeGeneratorLabel%d", i];
    [v20 setObject:v9 forKey:?];
  }

  v18 = &off_10000C7A8;
  v17 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|[codeGeneratorLabel0]-(DIGIT_SPACING)-[codeGeneratorLabel1]-(DIGIT_SPACING)-[codeGeneratorLabel2]-(GROUP_SEPARATOR_SPACING)-[codeGeneratorLabel3]-(DIGIT_SPACING)-[codeGeneratorLabel4]-(DIGIT_SPACING)-[codeGeneratorLabel5]|", 0x10000, v18, v20);
  [v21[0] addObjectsFromArray:v17];
  v3 = [v21[0] copy];
  activeConstraints = selfCopy->_activeConstraints;
  selfCopy->_activeConstraints = v3;

  [NSLayoutConstraint activateConstraints:selfCopy->_activeConstraints];
  v16.receiver = selfCopy;
  v16.super_class = AKCodeEntryView;
  [(AKCodeEntryView *)&v16 updateConstraints];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);
}

- (void)emitCodeEnteredNotification
{
  v4 = +[NSNotificationCenter defaultCenter];
  v6 = @"generatedCode";
  stringValue = [(AKCodeEntryView *)self stringValue];
  v7 = stringValue;
  v2 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(NSNotificationCenter *)v4 postNotificationName:@"AKSecondFactorCodeEntryContentViewControllerDidEnterCodeNotification" object:0 userInfo:?];
}

- (NSString)stringValue
{
  v2 = [(NSMutableString *)self->_stringValue copy:a2];

  return v2;
}

- (void)setStringValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  stringValue = selfCopy->_stringValue;
  v4 = [location[0] copy];
  [(NSMutableString *)stringValue setString:?];

  [(AKCodeEntryView *)selfCopy _syncStringValueToLabels];
  if ([(NSMutableString *)selfCopy->_stringValue length]== 6)
  {
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:selfCopy selector:"emitCodeEnteredNotification" object:?];
    [(AKCodeEntryView *)selfCopy performSelector:"emitCodeEnteredNotification" withObject:0 afterDelay:1.0];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)becomeFirstResponder
{
  selfCopy = self;
  v6 = a2;
  v4.receiver = self;
  v4.super_class = AKCodeEntryView;
  becomeFirstResponder = [(AKCodeEntryView *)&v4 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    v3 = +[UIKeyboard activeKeyboard];
    [v3 setReturnKeyEnabled:0];
  }

  return becomeFirstResponder & 1;
}

- (void)insertText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  if ([(NSMutableString *)selfCopy->_stringValue length]== 6)
  {
    v5 = 1;
  }

  else if ([location[0] isEqualToString:@"\n"])
  {
    v5 = 1;
  }

  else
  {
    v3 = +[NSCharacterSet decimalDigitCharacterSet];
    invertedSet = [(NSCharacterSet *)v3 invertedSet];

    if ([location[0] rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([location[0] length])
      {
        [(NSMutableString *)selfCopy->_stringValue appendString:location[0]];
        [(AKCodeEntryView *)selfCopy _syncStringValueToLabels];
        if ([(NSMutableString *)selfCopy->_stringValue length]== 6)
        {
          [objc_opt_class() cancelPreviousPerformRequestsWithTarget:selfCopy selector:"emitCodeEnteredNotification" object:?];
          [(AKCodeEntryView *)selfCopy performSelector:"emitCodeEnteredNotification" withObject:0 afterDelay:1.0];
        }
      }

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    objc_storeStrong(&invertedSet, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)deleteBackward
{
  if ([(NSMutableString *)self->_stringValue length])
  {
    [(NSMutableString *)self->_stringValue deleteCharactersInRange:[(NSMutableString *)self->_stringValue length]- 1, 1];
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"emitCodeEnteredNotification" object:0];
    [(AKCodeEntryView *)self _syncStringValueToLabels];
  }
}

- (void)passcodeFieldTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  if ([(AKCodeEntryView *)selfCopy canBecomeFirstResponder])
  {
    [(AKCodeEntryView *)selfCopy becomeFirstResponder];
  }

  objc_storeStrong(location, 0);
}

+ (id)generatorFieldFont
{
  v7[3] = self;
  v7[2] = a2;
  v4 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleTitle1];
  [(UIFontMetrics *)v4 scaledValueForValue:24.0];
  v5 = v2;

  v7[1] = v5;
  v7[0] = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1 addingSymbolicTraits:0 options:2];
  v6 = [UIFont fontWithDescriptor:v7[0] size:*&v5];
  objc_storeStrong(v7, 0);

  return v6;
}

@end