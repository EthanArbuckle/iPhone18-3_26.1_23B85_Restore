@interface AKCodeEntryView
+ (id)generatorFieldFont;
- (AKCodeEntryView)initWithFrame:(CGRect)a3;
- (BOOL)becomeFirstResponder;
- (NSString)stringValue;
- (void)_syncStringValueToLabels;
- (void)_updateFonts:(id)a3;
- (void)dealloc;
- (void)deleteBackward;
- (void)emitCodeEnteredNotification;
- (void)insertText:(id)a3;
- (void)passcodeFieldTapped:(id)a3;
- (void)setStringValue:(id)a3;
- (void)updateConstraints;
@end

@implementation AKCodeEntryView

- (AKCodeEntryView)initWithFrame:(CGRect)a3
{
  v25 = a3;
  v23 = a2;
  v24 = 0;
  v22.receiver = self;
  v22.super_class = AKCodeEntryView;
  v17 = [(AKCodeEntryView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v24 = v17;
  objc_storeStrong(&v24, v17);
  if (v17)
  {
    [(AKCodeEntryView *)v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = objc_alloc_init(NSMutableString);
    stringValue = v24->_stringValue;
    v24->_stringValue = v3;

    v21 = objc_alloc_init(NSMutableArray);
    v20 = [objc_opt_class() generatorFieldFont];
    for (i = 0; i < 6; ++i)
    {
      v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v18 setFont:v20];
      [v18 setText:@"–"];
      [v18 setTextAlignment:1];
      v16 = [v18 layer];
      [v16 setDisableUpdateMask:{objc_msgSend(v16, "disableUpdateMask") | 0x12}];

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

    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  v14 = v24;
  objc_storeStrong(&v24, 0);
  return v14;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:v5 name:UIContentSizeCategoryDidChangeNotification object:0];

  v3.receiver = v5;
  v3.super_class = AKCodeEntryView;
  [(AKCodeEntryView *)&v3 dealloc];
}

- (void)_updateFonts:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [objc_opt_class() generatorFieldFont];
  memset(__b, 0, sizeof(__b));
  obj = v13->_generatorFields;
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
      [v10 setFont:v11];
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

  [(AKCodeEntryView *)v13 setNeedsUpdateConstraints];
  objc_storeStrong(&v11, 0);
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
  v22 = self;
  v21[1] = a2;
  if (self->_activeConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:v22->_activeConstraints];
  }

  v21[0] = objc_alloc_init(NSMutableArray);
  v20 = objc_alloc_init(NSMutableDictionary);
  for (i = 0; i < 6; ++i)
  {
    if (i)
    {
      v12 = [(NSArray *)v22->_generatorFields objectAtIndexedSubscript:i];
      v11 = [(NSArray *)v22->_generatorFields firstObject];
      v10 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v12 relatedBy:11 toItem:0 attribute:1.0 multiplier:0.0 constant:?];
      [v21[0] addObject:?];
    }

    else
    {
      v23 = @"generatorLabel";
      v15 = [(NSArray *)v22->_generatorFields objectAtIndexedSubscript:0];
      v24 = v15;
      v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v13 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[generatorLabel]|" options:0 metrics:0 views:?];
      [v21[0] addObjectsFromArray:?];
    }

    v7 = [(NSArray *)v22->_generatorFields objectAtIndexedSubscript:i];
    v6 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleTitle1];
    [(UIFontMetrics *)v6 scaledValueForValue:14.5];
    v5 = [NSLayoutConstraint constraintWithItem:v7 attribute:7 relatedBy:0 toItem:0 attribute:1.0 multiplier:v2 constant:?];
    [v21[0] addObject:?];

    v9 = [(NSArray *)v22->_generatorFields objectAtIndexedSubscript:i];
    v8 = [NSString stringWithFormat:@"codeGeneratorLabel%d", i];
    [v20 setObject:v9 forKey:?];
  }

  v18 = &off_10000C7A8;
  v17 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|[codeGeneratorLabel0]-(DIGIT_SPACING)-[codeGeneratorLabel1]-(DIGIT_SPACING)-[codeGeneratorLabel2]-(GROUP_SEPARATOR_SPACING)-[codeGeneratorLabel3]-(DIGIT_SPACING)-[codeGeneratorLabel4]-(DIGIT_SPACING)-[codeGeneratorLabel5]|", 0x10000, v18, v20);
  [v21[0] addObjectsFromArray:v17];
  v3 = [v21[0] copy];
  activeConstraints = v22->_activeConstraints;
  v22->_activeConstraints = v3;

  [NSLayoutConstraint activateConstraints:v22->_activeConstraints];
  v16.receiver = v22;
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
  v3 = [(AKCodeEntryView *)self stringValue];
  v7 = v3;
  v2 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(NSNotificationCenter *)v4 postNotificationName:@"AKSecondFactorCodeEntryContentViewControllerDidEnterCodeNotification" object:0 userInfo:?];
}

- (NSString)stringValue
{
  v2 = [(NSMutableString *)self->_stringValue copy:a2];

  return v2;
}

- (void)setStringValue:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  stringValue = v6->_stringValue;
  v4 = [location[0] copy];
  [(NSMutableString *)stringValue setString:?];

  [(AKCodeEntryView *)v6 _syncStringValueToLabels];
  if ([(NSMutableString *)v6->_stringValue length]== 6)
  {
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:v6 selector:"emitCodeEnteredNotification" object:?];
    [(AKCodeEntryView *)v6 performSelector:"emitCodeEnteredNotification" withObject:0 afterDelay:1.0];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)becomeFirstResponder
{
  v7 = self;
  v6 = a2;
  v4.receiver = self;
  v4.super_class = AKCodeEntryView;
  v5 = [(AKCodeEntryView *)&v4 becomeFirstResponder];
  if (v5)
  {
    v3 = +[UIKeyboard activeKeyboard];
    [v3 setReturnKeyEnabled:0];
  }

  return v5 & 1;
}

- (void)insertText:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(NSMutableString *)v7->_stringValue length]== 6)
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
    v4 = [(NSCharacterSet *)v3 invertedSet];

    if ([location[0] rangeOfCharacterFromSet:v4] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([location[0] length])
      {
        [(NSMutableString *)v7->_stringValue appendString:location[0]];
        [(AKCodeEntryView *)v7 _syncStringValueToLabels];
        if ([(NSMutableString *)v7->_stringValue length]== 6)
        {
          [objc_opt_class() cancelPreviousPerformRequestsWithTarget:v7 selector:"emitCodeEnteredNotification" object:?];
          [(AKCodeEntryView *)v7 performSelector:"emitCodeEnteredNotification" withObject:0 afterDelay:1.0];
        }
      }

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    objc_storeStrong(&v4, 0);
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

- (void)passcodeFieldTapped:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AKCodeEntryView *)v4 canBecomeFirstResponder])
  {
    [(AKCodeEntryView *)v4 becomeFirstResponder];
  }

  objc_storeStrong(location, 0);
}

+ (id)generatorFieldFont
{
  v7[3] = a1;
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