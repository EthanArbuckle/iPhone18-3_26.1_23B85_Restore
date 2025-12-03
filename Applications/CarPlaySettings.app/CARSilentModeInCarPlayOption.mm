@interface CARSilentModeInCarPlayOption
+ (id)allOptions;
+ (id)optionWithFullTitle:(id)title footer:(id)footer silentModeType:(unint64_t)type accessibilityIdentifier:(id)identifier;
- (CARSilentModeInCarPlayOption)initWithFullTitle:(id)title footer:(id)footer silentModeType:(unint64_t)type accessibilityIdentifier:(id)identifier;
@end

@implementation CARSilentModeInCarPlayOption

+ (id)optionWithFullTitle:(id)title footer:(id)footer silentModeType:(unint64_t)type accessibilityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  footerCopy = footer;
  titleCopy = title;
  v12 = [[CARSilentModeInCarPlayOption alloc] initWithFullTitle:titleCopy footer:footerCopy silentModeType:type accessibilityIdentifier:identifierCopy];

  return v12;
}

- (CARSilentModeInCarPlayOption)initWithFullTitle:(id)title footer:(id)footer silentModeType:(unint64_t)type accessibilityIdentifier:(id)identifier
{
  titleCopy = title;
  footerCopy = footer;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = CARSilentModeInCarPlayOption;
  v14 = [(CARSilentModeInCarPlayOption *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fullTitle, title);
    objc_storeStrong(&v15->_footer, footer);
    v15->_silentModeType = type;
    objc_storeStrong(&v15->_accessibilityIdentifier, identifier);
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