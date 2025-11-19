@interface ASCredentialRequestSecondaryButton
+ (id)buttonWithTitle:(id)a3 target:(id)a4 action:(SEL)a5;
@end

@implementation ASCredentialRequestSecondaryButton

+ (id)buttonWithTitle:(id)a3 target:(id)a4 action:(SEL)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [ASCredentialRequestSecondaryButton buttonWithType:1];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  v11 = [v9 titleLabel];
  [v11 setFont:v10];

  v12 = [v9 titleLabel];
  [v12 setAdjustsFontSizeToFitWidth:1];

  v13 = [v9 titleLabel];
  [v13 setAdjustsFontForContentSizeCategory:1];

  v14 = *MEMORY[0x1E69DDC38];
  v15 = [v9 titleLabel];
  [v15 setMaximumContentSizeCategory:v14];

  [v9 setTitle:v8 forState:0];
  [v9 addTarget:v7 action:a5 forControlEvents:64];

  return v9;
}

@end