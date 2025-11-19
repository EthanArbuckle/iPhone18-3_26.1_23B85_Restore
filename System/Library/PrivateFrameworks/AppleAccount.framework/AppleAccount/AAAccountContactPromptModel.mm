@interface AAAccountContactPromptModel
- (AAAccountContactPromptModel)init;
@end

@implementation AAAccountContactPromptModel

- (AAAccountContactPromptModel)init
{
  v7.receiver = self;
  v7.super_class = AAAccountContactPromptModel;
  v2 = [(AAAccountContactPromptModel *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v4 = [v3 localizedStringForKey:@"DONE" value:0 table:@"Localizable"];
    doneButtonTitle = v2->_doneButtonTitle;
    v2->_doneButtonTitle = v4;
  }

  return v2;
}

@end