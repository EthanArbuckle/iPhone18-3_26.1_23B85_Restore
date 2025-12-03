@interface CARMuteOptionsMode
+ (id)allModes;
+ (id)modeWithFullTitle:(id)title footer:(id)footer muteType:(unint64_t)type announceType:(int64_t)announceType accessibilityIdentifier:(id)identifier;
- (CARMuteOptionsMode)initWithFullTitle:(id)title footer:(id)footer muteType:(unint64_t)type announceType:(int64_t)announceType accessibilityIdentifier:(id)identifier;
@end

@implementation CARMuteOptionsMode

+ (id)modeWithFullTitle:(id)title footer:(id)footer muteType:(unint64_t)type announceType:(int64_t)announceType accessibilityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  footerCopy = footer;
  titleCopy = title;
  v14 = [[CARMuteOptionsMode alloc] initWithFullTitle:titleCopy footer:footerCopy muteType:type announceType:announceType accessibilityIdentifier:identifierCopy];

  return v14;
}

- (CARMuteOptionsMode)initWithFullTitle:(id)title footer:(id)footer muteType:(unint64_t)type announceType:(int64_t)announceType accessibilityIdentifier:(id)identifier
{
  titleCopy = title;
  footerCopy = footer;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = CARMuteOptionsMode;
  v16 = [(CARMuteOptionsMode *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_fullTitle, title);
    objc_storeStrong(&v17->_footer, footer);
    v17->_muteType = type;
    v17->_announceType = announceType;
    objc_storeStrong(&v17->_accessibilityIdentifier, identifier);
  }

  return v17;
}

+ (id)allModes
{
  if (qword_100101ED0 != -1)
  {
    sub_100091970();
  }

  v3 = qword_100101ED8;

  return v3;
}

@end