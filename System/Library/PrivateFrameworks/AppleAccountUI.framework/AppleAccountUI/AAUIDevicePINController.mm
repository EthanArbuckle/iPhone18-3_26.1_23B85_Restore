@interface AAUIDevicePINController
- (id)pinInstructionsPrompt;
- (id)stringsBundle;
- (id)title;
@end

@implementation AAUIDevicePINController

- (id)stringsBundle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (id)title
{
  if ([(DevicePINController *)self mode])
  {
    v6.receiver = self;
    v6.super_class = AAUIDevicePINController;
    v3 = [(DevicePINController *)&v6 title];
  }

  else
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v3 = [v4 localizedStringForKey:@"CREATE_PASSCODE_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  }

  return v3;
}

- (id)pinInstructionsPrompt
{
  if ([(DevicePINController *)self mode]|| *(&self->super.super.super.super.super.super.isa + *MEMORY[0x1E69C5780]) != 1)
  {
    v7.receiver = self;
    v7.super_class = AAUIDevicePINController;
    v5 = [(DevicePINController *)&v7 pinInstructionsPrompt];
  }

  else
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"CREATE_PASSCODE_BODY_UPGRADE"];
    v5 = [v3 localizedStringForKey:v4 value:&stru_1F447F790 table:@"Localizable"];
  }

  return v5;
}

@end