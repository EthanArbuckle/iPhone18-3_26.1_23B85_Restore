@interface SmartFolderComposerCreateTagCell
- (BOOL)textFieldShouldReturn:(id)a3;
@end

@implementation SmartFolderComposerCreateTagCell

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100385EB8();

  return self & 1;
}

@end