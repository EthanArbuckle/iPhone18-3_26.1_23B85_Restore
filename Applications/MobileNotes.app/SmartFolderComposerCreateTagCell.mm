@interface SmartFolderComposerCreateTagCell
- (BOOL)textFieldShouldReturn:(id)return;
@end

@implementation SmartFolderComposerCreateTagCell

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  selfCopy = self;
  LOBYTE(self) = sub_100385EB8();

  return self & 1;
}

@end