@interface ASCredentialRequestSecondaryButton
+ (id)buttonWithTitle:(id)title target:(id)target action:(SEL)action;
@end

@implementation ASCredentialRequestSecondaryButton

+ (id)buttonWithTitle:(id)title target:(id)target action:(SEL)action
{
  targetCopy = target;
  titleCopy = title;
  v9 = [ASCredentialRequestSecondaryButton buttonWithType:1];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  titleLabel = [v9 titleLabel];
  [titleLabel setFont:v10];

  titleLabel2 = [v9 titleLabel];
  [titleLabel2 setAdjustsFontSizeToFitWidth:1];

  titleLabel3 = [v9 titleLabel];
  [titleLabel3 setAdjustsFontForContentSizeCategory:1];

  v14 = *MEMORY[0x1E69DDC38];
  titleLabel4 = [v9 titleLabel];
  [titleLabel4 setMaximumContentSizeCategory:v14];

  [v9 setTitle:titleCopy forState:0];
  [v9 addTarget:targetCopy action:action forControlEvents:64];

  return v9;
}

@end