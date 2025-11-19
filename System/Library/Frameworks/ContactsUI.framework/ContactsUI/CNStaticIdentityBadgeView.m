@interface CNStaticIdentityBadgeView
+ (id)sealLockImage;
- (CNStaticIdentityBadgeView)init;
@end

@implementation CNStaticIdentityBadgeView

- (CNStaticIdentityBadgeView)init
{
  v14.receiver = self;
  v14.super_class = CNStaticIdentityBadgeView;
  v2 = [(CNStaticIdentityBadgeView *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v4 = +[CNStaticIdentityBadgeView sealLockImage];
    v5 = [v3 initWithImage:v4];

    LODWORD(v6) = 1111752704;
    [v5 setContentCompressionResistancePriority:1 forAxis:v6];
    [v5 setContentMode:1];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:@"STATIC_IDENTITY_BADGE_TEXT" value:&stru_1F0CE7398 table:@"Localized-NARWHAL"];
    [v7 setText:v9];

    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [v7 setFont:v10];

    v11 = +[CNUIColorRepository contactCardStaticIdentityBadgeGlyphColor];
    [v7 setTextColor:v11];

    [(CNStaticIdentityBadgeView *)v2 addArrangedSubview:v5];
    [(CNStaticIdentityBadgeView *)v2 addArrangedSubview:v7];
    [(CNStaticIdentityBadgeView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNStaticIdentityBadgeView *)v2 setAxis:0];
    [(CNStaticIdentityBadgeView *)v2 setAlignment:5];
    [(CNStaticIdentityBadgeView *)v2 setDistribution:2];
    [(CNStaticIdentityBadgeView *)v2 setSpacing:0.0];
    v12 = v2;
  }

  return v2;
}

+ (id)sealLockImage
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DCAD8];
  v3 = +[CNUIColorRepository contactCardStaticIdentityBadgeGlyphColor];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 configurationWithPaletteColors:v4];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill" withConfiguration:v5];

  return v6;
}

@end