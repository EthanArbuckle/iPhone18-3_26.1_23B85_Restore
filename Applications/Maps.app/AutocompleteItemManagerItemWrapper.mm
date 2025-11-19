@interface AutocompleteItemManagerItemWrapper
- (AutocompleteItemManagerItemWrapper)initWithItem:(id)a3 compoundItem:(id)a4;
- (AutocompleteMutableSection)section;
@end

@implementation AutocompleteItemManagerItemWrapper

- (AutocompleteMutableSection)section
{
  WeakRetained = objc_loadWeakRetained(&self->_section);

  return WeakRetained;
}

- (AutocompleteItemManagerItemWrapper)initWithItem:(id)a3 compoundItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AutocompleteItemManagerItemWrapper;
  v9 = [(AutocompleteItemManagerItemWrapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_item, a3);
    objc_storeStrong(&v10->_compoundItem, a4);
  }

  return v10;
}

@end