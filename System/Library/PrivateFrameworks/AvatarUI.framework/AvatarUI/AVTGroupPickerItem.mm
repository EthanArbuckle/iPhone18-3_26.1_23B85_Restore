@interface AVTGroupPickerItem
- (AVTGroupPickerItem)initWithLocalizedName:(id)name symbolNameProvider:(id)provider;
@end

@implementation AVTGroupPickerItem

- (AVTGroupPickerItem)initWithLocalizedName:(id)name symbolNameProvider:(id)provider
{
  nameCopy = name;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = AVTGroupPickerItem;
  v9 = [(AVTGroupPickerItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localizedName, name);
    v11 = MEMORY[0x1BFB0DE80](providerCopy);
    symbolNameProvider = v10->_symbolNameProvider;
    v10->_symbolNameProvider = v11;
  }

  return v10;
}

@end