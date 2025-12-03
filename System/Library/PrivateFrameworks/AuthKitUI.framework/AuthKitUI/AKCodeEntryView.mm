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
  v26 = a2;
  v27 = 0;
  v25.receiver = self;
  v25.super_class = AKCodeEntryView;
  v20 = [(AKCodeEntryView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v27 = v20;
  objc_storeStrong(&v27, v20);
  if (v20)
  {
    [(AKCodeEntryView *)v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
    stringValue = v27->_stringValue;
    v27->_stringValue = v3;
    MEMORY[0x277D82BD8](stringValue);
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    generatorFieldFont = [objc_opt_class() generatorFieldFont];
    for (i = 0; i < 6; ++i)
    {
      v5 = objc_alloc(MEMORY[0x277D756B8]);
      v21 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v21 setFont:generatorFieldFont];
      [v21 setText:@"–"];
      [v21 setTextAlignment:1];
      layer = [v21 layer];
      [layer setDisableUpdateMask:{objc_msgSend(layer, "disableUpdateMask") | 0x12}];
      *&v6 = MEMORY[0x277D82BD8](layer).n128_u64[0];
      [(AKCodeEntryView *)v27 addSubview:v21, v6];
      [v24 addObject:v21];
      objc_storeStrong(&v21, 0);
    }

    v7 = [v24 copy];
    generatorFields = v27->_generatorFields;
    v27->_generatorFields = v7;
    MEMORY[0x277D82BD8](generatorFields);
    [AKCodeEntryView setContentCompressionResistancePriority:v27 forAxis:"setContentCompressionResistancePriority:forAxis:"];
    LODWORD(v9) = 1144750080;
    [(AKCodeEntryView *)v27 setContentHuggingPriority:0 forAxis:v9];
    LODWORD(v10) = 1144750080;
    [(AKCodeEntryView *)v27 setContentCompressionResistancePriority:v10 forAxis:?];
    LODWORD(v11) = 1132068864;
    [(AKCodeEntryView *)v27 setContentHuggingPriority:1 forAxis:v11];
    v12 = objc_alloc(MEMORY[0x277D75B80]);
    v13 = [v12 initWithTarget:v27 action:sel_passcodeFieldTapped_];
    tapGestureRecognizer = v27->_tapGestureRecognizer;
    v27->_tapGestureRecognizer = v13;
    *&v15 = MEMORY[0x277D82BD8](tapGestureRecognizer).n128_u64[0];
    [(AKCodeEntryView *)v27 addGestureRecognizer:v27->_tapGestureRecognizer, v15];
    v27->_passcodeFieldDisabled = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v27 selector:sel__updateFonts_ name:*MEMORY[0x277D76810] object:?];
    MEMORY[0x277D82BD8](defaultCenter);
    objc_storeStrong(&generatorFieldFont, 0);
    objc_storeStrong(&v24, 0);
  }

  v17 = MEMORY[0x277D82BE0](v27);
  objc_storeStrong(&v27, 0);
  return v17;
}

- (void)dealloc
{
  selfCopy = self;
  v5 = a2;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x277D76810] object:0];
  *&v2 = MEMORY[0x277D82BD8](defaultCenter).n128_u64[0];
  v4.receiver = selfCopy;
  v4.super_class = AKCodeEntryView;
  [(AKCodeEntryView *)&v4 dealloc];
}

- (void)_updateFonts:(id)fonts
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fonts);
  generatorFieldFont = [objc_opt_class() generatorFieldFont];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](selfCopy->_generatorFields);
  v9 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v6);
      [v11 setFont:generatorFieldFont];
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  *&v3 = MEMORY[0x277D82BD8](obj).n128_u64[0];
  [(AKCodeEntryView *)selfCopy setNeedsUpdateConstraints];
  objc_storeStrong(&generatorFieldFont, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_syncStringValueToLabels
{
  for (i = 0; i < 6; ++i)
  {
    if (i >= [(NSMutableString *)self->_stringValue length])
    {
      v2 = [(NSArray *)self->_generatorFields objectAtIndexedSubscript:i];
      [v2 setText:@"–"];
      MEMORY[0x277D82BD8](v2);
    }

    else
    {
      v4 = [(NSMutableString *)self->_stringValue substringWithRange:i, 1];
      v3 = [(NSArray *)self->_generatorFields objectAtIndexedSubscript:i];
      [v3 setText:v4];
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
    }
  }

  [(AKCodeEntryView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v29[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v26[1] = a2;
  if (self->_activeConstraints)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:selfCopy->_activeConstraints];
  }

  v26[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  for (i = 0; i < 6; ++i)
  {
    if (i)
    {
      v13 = MEMORY[0x277CCAAD0];
      v16 = [(NSArray *)selfCopy->_generatorFields objectAtIndexedSubscript:i];
      firstObject = [(NSArray *)selfCopy->_generatorFields firstObject];
      v14 = [v13 constraintWithItem:v16 attribute:11 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
      [v26[0] addObject:?];
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](firstObject);
      v2 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    }

    else
    {
      v17 = MEMORY[0x277CCAAD0];
      v28 = @"generatorLabel";
      v20 = [(NSArray *)selfCopy->_generatorFields objectAtIndexedSubscript:0];
      v29[0] = v20;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v18 = [v17 constraintsWithVisualFormat:@"V:|[generatorLabel]|" options:0 metrics:0 views:?];
      [v26[0] addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      v2 = MEMORY[0x277D82BD8](v20).n128_u64[0];
    }

    v7 = MEMORY[0x277CCAAD0];
    v10 = [(NSArray *)selfCopy->_generatorFields objectAtIndexedSubscript:i, *&v2];
    v9 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76A08]];
    [v9 scaledValueForValue:14.5];
    v8 = [v7 constraintWithItem:v10 attribute:7 relatedBy:0 toItem:0 attribute:1.0 multiplier:v3 constant:?];
    [v26[0] addObject:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    v12 = [(NSArray *)selfCopy->_generatorFields objectAtIndexedSubscript:i, MEMORY[0x277D82BD8](v10).n128_f64[0]];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"codeGeneratorLabel%d", i];
    [v25 setObject:v12 forKey:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
  }

  v23 = MEMORY[0x277D82BE0](&unk_2835AAFA0);
  v22 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|[codeGeneratorLabel0]-(DIGIT_SPACING)-[codeGeneratorLabel1]-(DIGIT_SPACING)-[codeGeneratorLabel2]-(GROUP_SEPARATOR_SPACING)-[codeGeneratorLabel3]-(DIGIT_SPACING)-[codeGeneratorLabel4]-(DIGIT_SPACING)-[codeGeneratorLabel5]|" options:0x10000 metrics:v23 views:v25];
  [v26[0] addObjectsFromArray:v22];
  v4 = [v26[0] copy];
  activeConstraints = selfCopy->_activeConstraints;
  selfCopy->_activeConstraints = v4;
  *&v6 = MEMORY[0x277D82BD8](activeConstraints).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{selfCopy->_activeConstraints, v6}];
  v21.receiver = selfCopy;
  v21.super_class = AKCodeEntryView;
  [(AKCodeEntryView *)&v21 updateConstraints];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v26, 0);
  *MEMORY[0x277D85DE8];
}

- (void)emitCodeEnteredNotification
{
  v7[1] = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = @"generatedCode";
  stringValue = [(AKCodeEntryView *)self stringValue];
  v7[0] = stringValue;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [defaultCenter postNotificationName:@"AKSecondFactorCodeEntryContentViewControllerDidEnterCodeNotification" object:0 userInfo:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](stringValue);
  MEMORY[0x277D82BD8](defaultCenter);
  *MEMORY[0x277D85DE8];
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
  v5 = [location[0] copy];
  [(NSMutableString *)stringValue setString:?];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  [(AKCodeEntryView *)selfCopy _syncStringValueToLabels];
  if ([(NSMutableString *)selfCopy->_stringValue length]== 6)
  {
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:selfCopy selector:0x1FCD9D37BuLL object:?];
    [(AKCodeEntryView *)selfCopy performSelector:0x1FCD9D37BuLL withObject:0 afterDelay:1.0];
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
    activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
    [activeKeyboard setReturnKeyEnabled:0];
    MEMORY[0x277D82BD8](activeKeyboard);
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
    v6 = 1;
  }

  else if ([location[0] isEqualToString:@"\n"])
  {
    v6 = 1;
  }

  else
  {
    decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    invertedSet = [decimalDigitCharacterSet invertedSet];
    *&v3 = MEMORY[0x277D82BD8](decimalDigitCharacterSet).n128_u64[0];
    if ([location[0] rangeOfCharacterFromSet:{invertedSet, v3}] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([location[0] length])
      {
        [(NSMutableString *)selfCopy->_stringValue appendString:location[0]];
        [(AKCodeEntryView *)selfCopy _syncStringValueToLabels];
        if ([(NSMutableString *)selfCopy->_stringValue length]== 6)
        {
          [objc_opt_class() cancelPreviousPerformRequestsWithTarget:selfCopy selector:0x1FCD9D37BuLL object:?];
          [(AKCodeEntryView *)selfCopy performSelector:0x1FCD9D37BuLL withObject:0 afterDelay:1.0];
        }
      }

      v6 = 0;
    }

    else
    {
      v6 = 1;
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
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_emitCodeEnteredNotification object:0];
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
  v8[3] = self;
  v8[2] = a2;
  v6 = MEMORY[0x277D76A08];
  v4 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76A08]];
  [v4 scaledValueForValue:24.0];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  v8[1] = v5;
  v8[0] = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*v6 addingSymbolicTraits:0 options:2];
  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v8[0] size:*&v5];
  objc_storeStrong(v8, 0);

  return v7;
}

@end