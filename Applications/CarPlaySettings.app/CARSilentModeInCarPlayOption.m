@interface CARSilentModeInCarPlayOption
+ (id)allOptions;
+ (id)optionWithFullTitle:(id)a3 footer:(id)a4 silentModeType:(unint64_t)a5 accessibilityIdentifier:(id)a6;
- (CARSilentModeInCarPlayOption)initWithFullTitle:(id)a3 footer:(id)a4 silentModeType:(unint64_t)a5 accessibilityIdentifier:(id)a6;
@end

@implementation CARSilentModeInCarPlayOption

+ (id)optionWithFullTitle:(id)a3 footer:(id)a4 silentModeType:(unint64_t)a5 accessibilityIdentifier:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[CARSilentModeInCarPlayOption alloc] initWithFullTitle:v11 footer:v10 silentModeType:a5 accessibilityIdentifier:v9];

  return v12;
}

- (CARSilentModeInCarPlayOption)initWithFullTitle:(id)a3 footer:(id)a4 silentModeType:(unint64_t)a5 accessibilityIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CARSilentModeInCarPlayOption;
  v14 = [(CARSilentModeInCarPlayOption *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fullTitle, a3);
    objc_storeStrong(&v15->_footer, a4);
    v15->_silentModeType = a5;
    objc_storeStrong(&v15->_accessibilityIdentifier, a6);
  }

  return v15;
}

+ (id)allOptions
{
  if (qword_100101E70 != -1)
  {
    sub_100091548();
  }

  v3 = qword_100101E78;

  return v3;
}

@end