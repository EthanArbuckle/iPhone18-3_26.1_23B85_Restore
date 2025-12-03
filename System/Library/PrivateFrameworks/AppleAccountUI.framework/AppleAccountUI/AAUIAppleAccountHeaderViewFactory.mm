@interface AAUIAppleAccountHeaderViewFactory
+ (id)createAppleAccountHeaderViewFromContact:(id)contact account:(id)account showAccountDetails:(BOOL)details showChangeButton:(BOOL)button;
@end

@implementation AAUIAppleAccountHeaderViewFactory

+ (id)createAppleAccountHeaderViewFromContact:(id)contact account:(id)account showAccountDetails:(BOOL)details showChangeButton:(BOOL)button
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](contact);
  MEMORY[0x1E69E5928](account);
  v7 = sub_1C5594AC4();
  v8 = sub_1C5594AC4();
  swift_getObjCClassMetadata();
  v11 = static AppleAccountHeaderViewFactory.createAppleAccountHeaderView(contact:account:showAccountDetails:showChangeButton:)(contact, account, v7 & 1, v8 & 1);
  MEMORY[0x1E69E5920](account);
  MEMORY[0x1E69E5920](contact);

  return v11;
}

@end