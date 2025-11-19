@interface PersonalizedItemAutocompleteFilter
- (BOOL)itemIsAllowed:(id)a3;
- (PersonalizedItemAutocompleteFilter)init;
- (id)allItems;
- (void)_invalidateResults;
- (void)dealloc;
- (void)personalizedItemManager:(id)a3 didChangeItems:(id)a4 itemGroups:(id)a5;
- (void)setHasItemsWhenSearchStringIsEmpty:(BOOL)a3;
- (void)setInputItems:(id)a3;
- (void)setSearchString:(id)a3;
@end

@implementation PersonalizedItemAutocompleteFilter

- (void)personalizedItemManager:(id)a3 didChangeItems:(id)a4 itemGroups:(id)a5
{
  v6 = a4;
  lock = self->_lock;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100D1D6A4;
  v12 = &unk_101661A90;
  v13 = self;
  v14 = v6;
  v8 = v6;
  dispatch_async(lock, &v9);
  [(PersonalizedItemAutocompleteFilter *)self _invalidateResults:v9];
}

- (BOOL)itemIsAllowed:(id)a3
{
  v3 = a3;
  v4 = (+[AddressBookManager addressBookAllowed](AddressBookManager, "addressBookAllowed") || [v3 sourceType] != 4 && objc_msgSend(v3, "sourceSubtype") != 4 && objc_msgSend(v3, "sourceSubtype") != 7 && objc_msgSend(v3, "sourceSubtype") != 9 && objc_msgSend(v3, "sourceSubtype") != 14 && objc_msgSend(v3, "sourceSubtype") != 15 && objc_msgSend(v3, "sourceSubtype") != 32) && (objc_msgSend(v3, "sourceType") != 9 || objc_msgSend(v3, "sourceSubtype") != 37) && (objc_msgSend(v3, "sourceType") != 3 || objc_msgSend(v3, "sourceSubtype") != 1) && (objc_msgSend(v3, "sourceType") != 9 || objc_msgSend(v3, "sourceSubtype") != 14 && objc_msgSend(v3, "sourceSubtype") != 15 && objc_msgSend(v3, "sourceSubtype") != 32 && objc_msgSend(v3, "sourceSubtype") != 31);

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

- (void)setHasItemsWhenSearchStringIsEmpty:(BOOL)a3
{
  if (self->_hasItemsWhenSearchStringIsEmpty != a3)
  {
    self->_hasItemsWhenSearchStringIsEmpty = a3;
    [(PersonalizedItemAutocompleteFilter *)self _invalidateResults];
  }
}

- (void)setInputItems:(id)a3
{
  v5 = a3;
  inputItems = self->_inputItems;
  if (inputItems != v5)
  {
    if (inputItems)
    {
      [(PersonalizedItemManager *)inputItems removeObserver:self];
    }

    objc_storeStrong(&self->_inputItems, a3);
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
    v13 = self;
    v14 = v5;
    dispatch_async(lock, &v9);
    [(PersonalizedItemAutocompleteFilter *)self _invalidateResults:v9];
  }
}

- (void)setSearchString:(id)a3
{
  v5 = a3;
  if (self->_searchString != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_searchString, a3);
    [(PersonalizedItemAutocompleteFilter *)self _invalidateResults];
    v5 = v6;
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