@interface COSSecurePairingHeader
- (id)deviceListTitleName;
- (id)pairingInstructionAttributedString;
@end

@implementation COSSecurePairingHeader

- (id)pairingInstructionAttributedString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SECURE_PAIR_INSTRUCTIONS" value:&stru_10026E598 table:@"Localizable"];
  v4 = [NSString stringWithFormat:v3];

  v5 = [[NSMutableAttributedString alloc] initWithString:v4];
  v6 = objc_opt_new();
  [v6 setAlignment:1];
  v14[0] = NSFontAttributeName;
  v7 = [UIFont systemFontOfSize:20.0];
  v14[1] = NSParagraphStyleAttributeName;
  v15[0] = v7;
  v15[1] = v6;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v5 addAttributes:v8 range:{0, objc_msgSend(v5, "length")}];

  v9 = [UIImage systemImageNamed:@"questionmark.circle.fill"];
  v10 = objc_opt_new();
  [v10 setImage:v9];
  v11 = [NSAttributedString attributedStringWithAttachment:v10];
  v12 = [v11 mutableCopy];

  [v12 addAttribute:NSBaselineOffsetAttributeName value:&off_100281E28 range:{0, objc_msgSend(v12, "length")}];

  return v5;
}

- (id)deviceListTitleName
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DEVICES" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

@end