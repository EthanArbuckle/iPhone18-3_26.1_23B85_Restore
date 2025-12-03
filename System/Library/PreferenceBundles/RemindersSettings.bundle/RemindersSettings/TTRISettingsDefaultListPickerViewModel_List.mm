@interface TTRISettingsDefaultListPickerViewModel_List
- (TTRISettingsDefaultListPickerViewModel_List)initWithList:(id)list;
@end

@implementation TTRISettingsDefaultListPickerViewModel_List

- (TTRISettingsDefaultListPickerViewModel_List)initWithList:(id)list
{
  listCopy = list;
  v10.receiver = self;
  v10.super_class = TTRISettingsDefaultListPickerViewModel_List;
  v5 = [(TTRISettingsDefaultListPickerViewModel_List *)&v10 init];
  if (v5)
  {
    objectID = [listCopy objectID];
    [(TTRISettingsDefaultListPickerViewModel_List *)v5 setListID:objectID];

    sharingStatusText = [listCopy sharingStatusText];
    [(TTRISettingsDefaultListPickerViewModel_List *)v5 setSubtitle:sharingStatusText];

    displayName = [listCopy displayName];
    [(TTRISettingsDefaultListPickerViewModel_List *)v5 setName:displayName];
  }

  return v5;
}

@end