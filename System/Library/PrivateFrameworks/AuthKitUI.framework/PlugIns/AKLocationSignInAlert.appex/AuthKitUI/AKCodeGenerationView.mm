@interface AKCodeGenerationView
+ (id)_generatorLabelFont;
- (AKCodeGenerationView)initWithGeneratedCode:(id)code;
- (void)_updateFonts:(id)fonts;
- (void)dealloc;
@end

@implementation AKCodeGenerationView

- (AKCodeGenerationView)initWithGeneratedCode:(id)code
{
  v31[0] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  v3 = v31[0];
  v31[0] = 0;
  v29.receiver = v3;
  v29.super_class = AKCodeGenerationView;
  v22 = [(AKCodeGenerationView *)&v29 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v31[0] = v22;
  objc_storeStrong(v31, v22);
  if (v22)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = *(v31[0] + 1);
    *(v31[0] + 1) = v4;

    objc_storeStrong(v31[0] + 2, location[0]);
    [v31[0] setTranslatesAutoresizingMaskIntoConstraints:0];
    _generatorLabelFont = [objc_opt_class() _generatorLabelFont];
    v27 = objc_alloc_init(NSMutableDictionary);
    for (i = 0; i < 6; ++i)
    {
      v25 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v25 setFont:_generatorLabelFont];
      v6 = *(v31[0] + 2);
      v31[2] = i;
      v31[1] = 1;
      v31[3] = i;
      v31[4] = 1;
      v24[1] = i;
      v24[2] = 1;
      v21 = [v6 substringWithRange:{i, 1}];
      [v25 setText:?];

      [v31[0] addSubview:v25];
      if (i)
      {
        v16 = v25;
        firstObject = [*(v31[0] + 1) firstObject];
        v17 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v16 relatedBy:11 toItem:0 attribute:1.0 multiplier:0.0 constant:?];
        [(NSLayoutConstraint *)v17 setActive:1];
      }

      else
      {
        v32 = @"generatorLabel";
        v33 = v25;
        v20 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v19 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[generatorLabel]|" options:0 metrics:0 views:?];
        [NSLayoutConstraint activateConstraints:?];
      }

      v14 = v27;
      v13 = v25;
      v15 = [NSString stringWithFormat:@"codeGeneratorLabel%d", i];
      [v14 setObject:v13 forKey:?];

      [*(v31[0] + 1) addObject:v25];
      objc_storeStrong(&v25, 0);
    }

    v24[0] = &off_10000C710;
    v23 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|[codeGeneratorLabel0]-(DIGIT_SPACING)-[codeGeneratorLabel1]-(DIGIT_SPACING)-[codeGeneratorLabel2]-(GROUP_SEPARATOR_SPACING)-[codeGeneratorLabel3]-(DIGIT_SPACING)-[codeGeneratorLabel4]-(DIGIT_SPACING)-[codeGeneratorLabel5]|", 0x10000, v24[0], v27);
    [NSLayoutConstraint activateConstraints:v23];
    [v31[0] setContentCompressionResistancePriority:? forAxis:?];
    LODWORD(v7) = 1144750080;
    [v31[0] setContentHuggingPriority:0 forAxis:v7];
    LODWORD(v8) = 1144750080;
    [v31[0] setContentCompressionResistancePriority:v8 forAxis:?];
    LODWORD(v9) = 1132068864;
    [v31[0] setContentHuggingPriority:1 forAxis:v9];
    v12 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v12 addObserver:v31[0] selector:"_updateFonts:" name:UIContentSizeCategoryDidChangeNotification object:?];

    objc_storeStrong(&v23, 0);
    objc_storeStrong(v24, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&_generatorLabelFont, 0);
  }

  v11 = v31[0];
  objc_storeStrong(location, 0);
  objc_storeStrong(v31, 0);
  return v11;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:selfCopy name:UIContentSizeCategoryDidChangeNotification object:0];

  v3.receiver = selfCopy;
  v3.super_class = AKCodeGenerationView;
  [(AKCodeGenerationView *)&v3 dealloc];
}

- (void)_updateFonts:(id)fonts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fonts);
  _generatorLabelFont = [objc_opt_class() _generatorLabelFont];
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_generatorLabels;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
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
      [v10 setFont:_generatorLabelFont];
      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  [(AKCodeGenerationView *)selfCopy setNeedsLayout];
  objc_storeStrong(&_generatorLabelFont, 0);
  objc_storeStrong(location, 0);
}

+ (id)_generatorLabelFont
{
  v12[2] = self;
  v12[1] = a2;
  v12[0] = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  v10 = _UIContentSizeCategoryCompareToContentSizeCategory();

  if (v10 != -1)
  {
    v8 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
    v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:?];
    v3 = v12[0];
    v12[0] = v2;
  }

  v11 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1 addingSymbolicTraits:0 options:2];
  v5 = v11;
  [v12[0] _scaledValueForValue:24.0];
  v6 = +[UIScreen mainScreen];
  UIRoundToScreenScale();
  v7 = [UIFont fontWithDescriptor:v5 size:?];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(v12, 0);

  return v7;
}

@end