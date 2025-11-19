@interface TUIVBox
- (TUIBox)pivotChild;
- (TUIVBox)init;
@end

@implementation TUIVBox

- (TUIVBox)init
{
  v3.receiver = self;
  v3.super_class = TUIVBox;
  result = [(TUIBox *)&v3 init];
  if (result)
  {
    result->super.super._storage._data = TUIVBoxStorageDataset | 1;
  }

  return result;
}

- (TUIBox)pivotChild
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super.super._storage, 0x2Eu);

  return ObjectForKey;
}

@end