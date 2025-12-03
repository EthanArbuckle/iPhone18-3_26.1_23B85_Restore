@interface PersonalizedItemAutocompleteFilter
- (BOOL)itemIsAllowed:(id)allowed;
- (PersonalizedItemAutocompleteFilter)init;
- (id)allItems;
- (void)_invalidateResults;
- (void)dealloc;
- (void)personalizedItemManager:(id)manager didChangeItems:(id)items itemGroups:(id)groups;
- (void)setHasItemsWhenSearchStringIsEmpty:(BOOL)empty;
- (void)setInputItems:(id)items;
- (void)setSearchString:(id)string;
@end

@implementation PersonalizedItemAutocompleteFilter

- (void)personalizedItemManager:(id)manager didChangeItems:(id)items itemGroups:(id)groups
{
  itemsCopy = items;
  lock = self->_lock;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100D1D6A4;
  v12 = &unk_101661A90;
  selfCopy = self;
  v14 = itemsCopy;
  v8 = itemsCopy;
  dispatch_async(lock, &v9);
  [(PersonalizedItemAutocompleteFilter *)self _invalidateResults:v9];
}

- (BOOL)itemIsAllowed:(id)allowed
{
  allowedCopy = allowed;
  v4 = (+[AddressBookManager addressBookAllowed](AddressBookManager, "addressBookAllowed") || [allowedCopy sourceType] != 4 && objc_msgSend(allowedCopy, "sourceSubtype") != 4 && objc_msgSend(allowedCopy, "sourceSubtype") != 7 && objc_msgSend(allowedCopy, "sourceSubtype") != 9 && objc_msgSend(allowedCopy, "sourceSubtype") != 14 && objc_msgSend(allowedCopy, "sourceSubtype") != 15 && objc_msgSend(allowedCopy, "sourceSubtype") != 32) && (objc_msgSend(allowedCopy, "sourceType") != 9 || objc_msgSend(allowedCopy, "sourceSubtype") != 37) && (objc_msgSend(allowedCopy, "sourceType") != 3 || objc_msgSend(allowedCopy, "sourceSubtype") != 1) && (objc_msgSend(allowedCopy, "sourceType") != 9 || objc_msgSend(allowedCopy, "sourceSubtype") != 14 && objc_msgSend(allowedCopy, "sourceSubtype") != 15 && objc_msgSend(allowedCopy, "sourceSubtype") != 32 && objc_msgSend(allowedCopy, "sourceSubtype") != 31);

  return v4;
}

- (id)allItems
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100D1D9EC;
  v14 = sub_100D1D9FC;
  v15 = 0;
  v3 = sub_100067540();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "PersonalizedItemAutocompleteFilter - collecting results", buf, 2u);
  }

  lock = self->_lock;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D1DA04;
  v9[3] = &unk_101661600;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(lock, v9);
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v11[5] count];
    *buf = 134217984;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "PersonalizedItemAutocompleteFilter - collected %lu results", buf, 0xCu);
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)_invalidateResults
{
  lock = self->_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D1DFAC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(lock, block);
}

- (void)setHasItemsWhenSearchStringIsEmpty:(BOOL)empty
{
  if (self->_hasItemsWhenSearchStringIsEmpty != empty)
  {
    self->_hasItemsWhenSearchStringIsEmpty = empty;
    [(PersonalizedItemAutocompleteFilter *)self _invalidateResults];
  }
}

- (void)setInputItems:(id)items
{
  itemsCopy = items;
  inputItems = self->_inputItems;
  if (inputItems != itemsCopy)
  {
    if (inputItems)
    {
      [(PersonalizedItemManager *)inputItems removeObserver:self];
    }

    objc_storeStrong(&self->_inputItems, items);
    v7 = self->_inputItems;
    if (v7)
    {
      [(PersonalizedItemManager *)v7 addObserver:self];
    }

    lock = self->_lock;
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100D1E10C;
    v12 = &unk_101661A90;
    selfCopy = self;
    v14 = itemsCopy;
    dispatch_async(lock, &v9);
    [(PersonalizedItemAutocompleteFilter *)self _invalidateResults:v9];
  }
}

- (void)setSearchString:(id)string
{
  stringCopy = string;
  if (self->_searchString != stringCopy)
  {
    v6 = stringCopy;
    objc_storeStrong(&self->_searchString, string);
    [(PersonalizedItemAutocompleteFilter *)self _invalidateResults];
    stringCopy = v6;
  }
}

- (void)dealloc
{
  inputItems = self->_inputItems;
  if (inputItems)
  {
    [(PersonalizedItemManager *)inputItems removeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = PersonalizedItemAutocompleteFilter;
  [(PersonalizedItemAutocompleteFilter *)&v4 dealloc];
}

- (PersonalizedItemAutocompleteFilter)init
{
  v7.receiver = self;
  v7.super_class = PersonalizedItemAutocompleteFilter;
  v2 = [(PersonalizedItemAutocompleteFilter *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("PersonalizedItemAutocompleteFilter", v3);
    lock = v2->_lock;
    v2->_lock = v4;
  }

  return v2;
}

@end