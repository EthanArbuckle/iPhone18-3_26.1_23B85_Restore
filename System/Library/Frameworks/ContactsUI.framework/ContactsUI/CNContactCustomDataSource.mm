@interface CNContactCustomDataSource
- (CNContactCustomDataSource)initWithContacts:(id)contacts;
- (CNContactCustomDataSource)initWithContacts:(id)contacts keysToFetch:(id)fetch filter:(id)filter;
- (CNContactDataSourceDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)indexPathForContact:(id)contact;
- (void)_sendDataSourceDidChange;
- (void)_startObservingContacts;
- (void)_stopObservingContacts;
- (void)_updateContactsObserving;
- (void)_updateFilter;
- (void)contactDidChange:(id)change;
- (void)dealloc;
- (void)setAutoUpdateContacts:(BOOL)contacts;
- (void)setFilter:(id)filter;
@end

@implementation CNContactCustomDataSource

- (CNContactDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)_sendDataSourceDidChange
{
  delegate = [(CNContactCustomDataSource *)self delegate];
  [delegate contactDataSourceDidChange:self];
}

- (void)contactDidChange:(id)change
{
  changeCopy = change;
  delegate = [(CNContactCustomDataSource *)self delegate];

  if (delegate)
  {
    value = 0;
    identifiersToIndexes = [(CNContactCustomDataSource *)self identifiersToIndexes];
    identifier = [changeCopy identifier];
    v8 = NSMapMember(identifiersToIndexes, identifier, 0, &value);

    if (v8)
    {
      value = value - 1;
      [NSMutableArray replaceObjectAtIndex:"replaceObjectAtIndex:withObject:" withObject:?];
    }

    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__sendDataSourceDidChange object:0];
    [(CNContactCustomDataSource *)self performSelector:sel__sendDataSourceDidChange withObject:0 afterDelay:0.0];
  }
}

- (void)_updateContactsObserving
{
  if (self->_autoUpdateContacts != self->_observingContacts)
  {
    if (self->_autoUpdateContacts)
    {
      [(CNContactCustomDataSource *)self _startObservingContacts];
    }

    else
    {
      [(CNContactCustomDataSource *)self _stopObservingContacts];
    }

    self->_observingContacts = self->_autoUpdateContacts;
  }
}

- (void)_stopObservingContacts
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allContacts = [(CNContactCustomDataSource *)self allContacts];
  v4 = [allContacts countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allContacts);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = +[CNUIContactsEnvironment currentEnvironment];
        contactChangesNotifier = [v9 contactChangesNotifier];
        [contactChangesNotifier unregisterObserver:self forContact:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [allContacts countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_startObservingContacts
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allContacts = [(CNContactCustomDataSource *)self allContacts];
  v4 = [allContacts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(allContacts);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = +[CNUIContactsEnvironment currentEnvironment];
        contactChangesNotifier = [v9 contactChangesNotifier];
        keysToFetch = [(CNContactCustomDataSource *)self keysToFetch];
        [contactChangesNotifier registerObserver:self forContact:v8 keysToFetch:keysToFetch];

        ++v7;
      }

      while (v5 != v7);
      v5 = [allContacts countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)setAutoUpdateContacts:(BOOL)contacts
{
  if (self->_autoUpdateContacts != contacts)
  {
    self->_autoUpdateContacts = contacts;
    [(CNContactCustomDataSource *)self _updateContactsObserving];
  }
}

- (void)_updateFilter
{
  predicate = [(CNContactFilter *)self->_filter predicate];
  v4 = predicate;
  allContacts = self->_allContacts;
  if (predicate)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__CNContactCustomDataSource__updateFilter__block_invoke;
    v8[3] = &unk_1E74E4838;
    v9 = predicate;
    v6 = [(NSMutableArray *)allContacts indexesOfObjectsPassingTest:v8];
    if ([v6 count])
    {
      v7 = [(NSMutableArray *)self->_allContacts objectsAtIndexes:v6];
      [(CNContactCustomDataSource *)self setFilteredContacts:v7];
    }

    else
    {
      [(CNContactCustomDataSource *)self setFilteredContacts:MEMORY[0x1E695E0F0]];
    }
  }

  else
  {
    [(CNContactCustomDataSource *)self setFilteredContacts:self->_allContacts];
  }
}

- (void)setFilter:(id)filter
{
  filterCopy = filter;
  p_filter = &self->_filter;
  if (self->_filter != filterCopy)
  {
    v8 = filterCopy;
    objc_storeStrong(p_filter, filter);
    [(CNContactCustomDataSource *)self _updateFilter];
    delegate = [(CNContactCustomDataSource *)self delegate];
    [delegate contactDataSourceDidChange:self];

    filterCopy = v8;
  }

  MEMORY[0x1EEE66BB8](p_filter, filterCopy);
}

- (id)indexPathForContact:(id)contact
{
  v19 = *MEMORY[0x1E69E9840];
  identifier = [contact identifier];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  contacts = [(CNContactCustomDataSource *)self contacts];
  v6 = [contacts countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v15;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      v7 += v6;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(contacts);
        }

        identifier2 = [*(*(&v14 + 1) + 8 * v9) identifier];
        v12 = [identifier isEqual:identifier2];

        if (v12)
        {
          v6 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:0];
          goto LABEL_11;
        }

        ++v10;
        ++v9;
      }

      while (v6 != v9);
      v6 = [contacts countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  contacts = [(CNContactCustomDataSource *)self contacts];
  v6 = [contacts copy];
  keysToFetch = [(CNContactCustomDataSource *)self keysToFetch];
  v8 = [keysToFetch copy];
  filter = [(CNContactCustomDataSource *)self filter];
  v10 = [filter copy];
  v11 = [v4 initWithContacts:v6 keysToFetch:v8 filter:v10];

  contactFormatter = [(CNContactCustomDataSource *)self contactFormatter];
  [v11 setContactFormatter:contactFormatter];

  return v11;
}

- (void)dealloc
{
  [(CNContactCustomDataSource *)self _stopObservingContacts];
  v3.receiver = self;
  v3.super_class = CNContactCustomDataSource;
  [(CNContactCustomDataSource *)&v3 dealloc];
}

- (CNContactCustomDataSource)initWithContacts:(id)contacts keysToFetch:(id)fetch filter:(id)filter
{
  v30 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  fetchCopy = fetch;
  filterCopy = filter;
  v28.receiver = self;
  v28.super_class = CNContactCustomDataSource;
  v11 = [(CNContactCustomDataSource *)&v28 init];
  v12 = [contactsCopy mutableCopy];
  [(CNContactCustomDataSource *)v11 setAllContacts:v12];

  [(CNContactCustomDataSource *)v11 setKeysToFetch:fetchCopy];
  if (filterCopy)
  {
    [(CNContactCustomDataSource *)v11 setFilter:filterCopy];
  }

  else
  {
    v13 = objc_alloc_init(CNContactFilter);
    [(CNContactCustomDataSource *)v11 setFilter:v13];
  }

  v14 = objc_alloc_init(MEMORY[0x1E695CD80]);
  [(CNContactCustomDataSource *)v11 setContactFormatterImpl:v14];

  v15 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:1282];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = contactsCopy;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v16);
        }

        ++v19;
        identifier = [*(*(&v24 + 1) + 8 * v21) identifier];
        NSMapInsert(v15, identifier, v19);

        ++v21;
      }

      while (v18 != v21);
      v18 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v18);
  }

  [(CNContactCustomDataSource *)v11 setIdentifiersToIndexes:v15];
  [(CNContactCustomDataSource *)v11 setAutoUpdateContacts:1];

  return v11;
}

- (CNContactCustomDataSource)initWithContacts:(id)contacts
{
  v17[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695CD80];
  contactsCopy = contacts;
  v6 = objc_alloc_init(v4);
  [v6 setStyle:1001];
  [v6 setFallbackStyle:-1];
  v7 = MEMORY[0x1E695CD58];
  descriptorForRequiredKeys = [v6 descriptorForRequiredKeys];
  v17[0] = descriptorForRequiredKeys;
  v9 = +[CNAvatarView descriptorForRequiredKeys];
  v17[1] = v9;
  v10 = +[CNQuickActionsView descriptorForRequiredKeys];
  v17[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v12 = [v7 descriptorWithKeyDescriptors:v11 description:@"Temporary Descriptor"];

  v16 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v14 = [(CNContactCustomDataSource *)self initWithContacts:contactsCopy keysToFetch:v13 filter:0];

  return v14;
}

@end