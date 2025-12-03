@interface AutocompleteItemManagerItemWrapper
- (AutocompleteItemManagerItemWrapper)initWithItem:(id)item compoundItem:(id)compoundItem;
- (AutocompleteMutableSection)section;
@end

@implementation AutocompleteItemManagerItemWrapper

- (AutocompleteMutableSection)section
{
  WeakRetained = objc_loadWeakRetained(&self->_section);

  return WeakRetained;
}

- (AutocompleteItemManagerItemWrapper)initWithItem:(id)item compoundItem:(id)compoundItem
{
  itemCopy = item;
  compoundItemCopy = compoundItem;
  v12.receiver = self;
  v12.super_class = AutocompleteItemManagerItemWrapper;
  v9 = [(AutocompleteItemManagerItemWrapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_item, item);
    objc_storeStrong(&v10->_compoundItem, compoundItem);
  }

  return v10;
}

@end