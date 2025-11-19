@interface CARMuteOptionsMode
+ (id)allModes;
+ (id)modeWithFullTitle:(id)a3 footer:(id)a4 muteType:(unint64_t)a5 announceType:(int64_t)a6 accessibilityIdentifier:(id)a7;
- (CARMuteOptionsMode)initWithFullTitle:(id)a3 footer:(id)a4 muteType:(unint64_t)a5 announceType:(int64_t)a6 accessibilityIdentifier:(id)a7;
@end

@implementation CARMuteOptionsMode

+ (id)modeWithFullTitle:(id)a3 footer:(id)a4 muteType:(unint64_t)a5 announceType:(int64_t)a6 accessibilityIdentifier:(id)a7
{
  v11 = a7;
  v12 = a4;
  v13 = a3;
  v14 = [[CARMuteOptionsMode alloc] initWithFullTitle:v13 footer:v12 muteType:a5 announceType:a6 accessibilityIdentifier:v11];

  return v14;
}

- (CARMuteOptionsMode)initWithFullTitle:(id)a3 footer:(id)a4 muteType:(unint64_t)a5 announceType:(int64_t)a6 accessibilityIdentifier:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = CARMuteOptionsMode;
  v16 = [(CARMuteOptionsMode *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_fullTitle, a3);
    objc_storeStrong(&v17->_footer, a4);
    v17->_muteType = a5;
    v17->_announceType = a6;
    objc_storeStrong(&v17->_accessibilityIdentifier, a7);
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