@interface TUIProgressBox
- (NSString)progressId;
- (NSString)progressMode;
- (TUIProgressBox)init;
@end

@implementation TUIProgressBox

- (TUIProgressBox)init
{
  v3.receiver = self;
  v3.super_class = TUIProgressBox;
  result = [(TUIBox *)&v3 init];
  if (result)
  {
    result->super._storage._data = TUIProgressBoxStorageDataset | 1;
  }

  return result;
}

- (NSString)progressId
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super._storage, 0x2Cu);

  return ObjectForKey;
}

- (NSString)progressMode
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super._storage, 0x21u);

  return ObjectForKey;
}

@end