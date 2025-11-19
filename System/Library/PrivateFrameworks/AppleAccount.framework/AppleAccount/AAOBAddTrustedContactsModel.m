@interface AAOBAddTrustedContactsModel
- (AAOBAddTrustedContactsModel)init;
@end

@implementation AAOBAddTrustedContactsModel

- (AAOBAddTrustedContactsModel)init
{
  v11.receiver = self;
  v11.super_class = AAOBAddTrustedContactsModel;
  v2 = [(AAOBAddTrustedContactsModel *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v4 = [v3 localizedStringForKey:@"ADD_ACCOUNT_CONTACTS" value:0 table:@"Localizable"];
    title = v2->_title;
    v2->_title = v4;

    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v7 = [v6 localizedStringForKey:@"ADD_ACCOUNT_CONTACTS_LEARN_MORE" value:0 table:@"Localizable"];
    helpLinkTitle = v2->_helpLinkTitle;
    v2->_helpLinkTitle = v7;

    helpLinkURL = v2->_helpLinkURL;
    v2->_helpLinkURL = @"www.apple.com";
  }

  return v2;
}

@end