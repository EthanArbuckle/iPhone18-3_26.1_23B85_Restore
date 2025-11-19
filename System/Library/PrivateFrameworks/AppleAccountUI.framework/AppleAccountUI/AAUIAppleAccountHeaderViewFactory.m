@interface AAUIAppleAccountHeaderViewFactory
+ (id)createAppleAccountHeaderViewFromContact:(id)a3 account:(id)a4 showAccountDetails:(BOOL)a5 showChangeButton:(BOOL)a6;
@end

@implementation AAUIAppleAccountHeaderViewFactory

+ (id)createAppleAccountHeaderViewFromContact:(id)a3 account:(id)a4 showAccountDetails:(BOOL)a5 showChangeButton:(BOOL)a6
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  v7 = sub_1C5594AC4();
  v8 = sub_1C5594AC4();
  swift_getObjCClassMetadata();
  v11 = static AppleAccountHeaderViewFactory.createAppleAccountHeaderView(contact:account:showAccountDetails:showChangeButton:)(a3, a4, v7 & 1, v8 & 1);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);

  return v11;
}

@end