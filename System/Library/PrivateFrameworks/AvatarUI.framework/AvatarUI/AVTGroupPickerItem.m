@interface AVTGroupPickerItem
- (AVTGroupPickerItem)initWithLocalizedName:(id)a3 symbolNameProvider:(id)a4;
@end

@implementation AVTGroupPickerItem

- (AVTGroupPickerItem)initWithLocalizedName:(id)a3 symbolNameProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AVTGroupPickerItem;
  v9 = [(AVTGroupPickerItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localizedName, a3);
    v11 = MEMORY[0x1BFB0DE80](v8);
    symbolNameProvider = v10->_symbolNameProvider;
    v10->_symbolNameProvider = v11;
  }

  return v10;
}

@end