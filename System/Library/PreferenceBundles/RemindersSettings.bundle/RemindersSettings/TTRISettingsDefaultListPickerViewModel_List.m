@interface TTRISettingsDefaultListPickerViewModel_List
- (TTRISettingsDefaultListPickerViewModel_List)initWithList:(id)a3;
@end

@implementation TTRISettingsDefaultListPickerViewModel_List

- (TTRISettingsDefaultListPickerViewModel_List)initWithList:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TTRISettingsDefaultListPickerViewModel_List;
  v5 = [(TTRISettingsDefaultListPickerViewModel_List *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectID];
    [(TTRISettingsDefaultListPickerViewModel_List *)v5 setListID:v6];

    v7 = [v4 sharingStatusText];
    [(TTRISettingsDefaultListPickerViewModel_List *)v5 setSubtitle:v7];

    v8 = [v4 displayName];
    [(TTRISettingsDefaultListPickerViewModel_List *)v5 setName:v8];
  }

  return v5;
}

@end