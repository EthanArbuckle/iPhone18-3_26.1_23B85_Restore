@interface ABFavoritesListManager
+ (id)sharedInstanceWithAddressBook:(void *)book;
- (ABFavoritesListManager)initWithAddressBook:(void *)book;
- (BOOL)_isValueForEntry:(id)entry equalToValue:(id)value;
- (BOOL)addEntryForPerson:(void *)person property:(int)property withIdentifier:(int)identifier;
- (BOOL)entryIsDuplicateAndThusRemoved:(id)removed oldUid:(int)uid;
- (BOOL)isFull;
- (BOOL)shouldNotReportFavoritesError:(id)error;
- (id)entries;
- (id)entriesForPeople:(id)people;
- (id)entriesForPerson:(void *)person;
- (id)entryFromEntries:(id)entries type:(int)type property:(int)property identifier:(int)identifier value:(id)value label:(id)label;
- (id)entryWithType:(int)type forPerson:(void *)person property:(int)property identifier:(int)identifier;
- (void)_addEntryToMap:(id)map;
- (void)_entryIdentityChanged:(id)changed;
- (void)_listChangedExternally;
- (void)_loadListWithAddressBook:(void *)book;
- (void)_postChangeNotification;
- (void)_removeEntryFromMap:(id)map withUid:(int)uid;
- (void)_scheduleSave;
- (void)addEntry:(id)entry;
- (void)dealloc;
- (void)moveEntryAtIndex:(int64_t)index toIndex:(int64_t)toIndex;
- (void)removeAllEntries;
- (void)removeEntryAtIndex:(int64_t)index;
- (void)reportFavoritesIssue:(id)issue;
- (void)save;
- (void)saveImmediately;
@end

@implementation ABFavoritesListManager

+ (id)sharedInstanceWithAddressBook:(void *)book
{
  result = sharedInstanceWithAddressBook____SpeedDialListManager;
  if (!sharedInstanceWithAddressBook____SpeedDialListManager)
  {
    result = [[ABFavoritesListManager alloc] initWithAddressBook:book];
    sharedInstanceWithAddressBook____SpeedDialListManager = result;
  }

  return result;
}

- (void)reportFavoritesIssue:(id)issue
{
  ABDiagnosticsEnabled();
  _ABLog2(3, "[ABFavoritesListManager reportFavoritesIssue:]", 68, 0, @"%@", v4, v5, v6, issue);
  ABLogSimulateCrashReport(issue);

  ABLogDisplayInternalAlert(issue);
}

- (BOOL)shouldNotReportFavoritesError:(id)error
{
  if (error)
  {
    domain = [error domain];
    v5 = *MEMORY[0x1E696A250];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]] && objc_msgSend(error, "code") == 260)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = [objc_msgSend(error "domain")];
      if (v6)
      {
        LOBYTE(v6) = [error code] == 257;
      }
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)_loadListWithAddressBook:(void *)book
{
  if ([objc_msgSend(MEMORY[0x1E69966B8] "sharedInstance")])
  {
    if (book)
    {
      bookCopy = 0;
    }

    else
    {
      book = ABAddressBookCreateWithOptions(0, 0);
      bookCopy = book;
      if (!book)
      {
        return;
      }
    }

    if (ABAddressBookGetAuthorizationStatus() == kABAuthorizationStatusAuthorized)
    {
      location = 0;
      v9 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Preferences"];
      if ((_SpeedDialPath__checkedForDir & 1) == 0)
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        if (([defaultManager fileExistsAtPath:v9] & 1) == 0)
        {
          stringByDeletingLastPathComponent = [v9 stringByDeletingLastPathComponent];
          if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent] & 1) == 0)
          {
            mkdir([stringByDeletingLastPathComponent fileSystemRepresentation], 0x1C0u);
          }

          mkdir([v9 fileSystemRepresentation], 0x1C0u);
        }

        _SpeedDialPath__checkedForDir = 1;
      }

      v12 = [v9 stringByAppendingPathComponent:@"com.apple.mobilephone.speeddial.plist"];
      v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12 isDirectory:0];
      v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithContentsOfURL:v13 error:&location];
      if (v14)
      {
        ABDiagnosticsEnabled();
        [v14 count];
        _ABLog2(4, "[ABFavoritesListManager _loadListWithAddressBook:]", 109, 0, @"Read favorites file %@, count = %ld", v15, v16, v17, v12);
        v18 = [v14 count];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          self->_list = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:50];
          do
          {
            v21 = -[ABFavoritesEntry initWithDictionaryRepresentation:addressBook:]([ABFavoritesEntry alloc], "initWithDictionaryRepresentation:addressBook:", [v14 objectAtIndex:v20], book);
            if (v21)
            {
              v22 = v21;
              [(NSMutableArray *)self->_list addObject:v21];
              [(ABFavoritesListManager *)self _addEntryToMap:v22];
            }

            ++v20;
          }

          while (v19 != v20);
          [(ABFavoritesListManager *)self recacheIdentitiesSoon];
        }

        *&self->_flags &= ~4u;
      }

      else if ([(ABFavoritesListManager *)self shouldNotReportFavoritesError:location])
      {
        ABDiagnosticsEnabled();
        v26 = location;
        if (!location)
        {
          v26 = @"no error returned";
        }

        _ABLog2(4, "[ABFavoritesListManager _loadListWithAddressBook:]", 112, 0, @"Error reading favorites file, error: %@", v23, v24, v25, v26);
      }

      else
      {
        -[ABFavoritesListManager reportFavoritesIssue:](self, "reportFavoritesIssue:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Error reading favorites file. Add a favorite as workaround. Please open a radar to PEP Contacts (New Bugs).\n\n%@", location]);
      }
    }

    if (bookCopy)
    {
      CFRelease(bookCopy);
    }
  }

  else
  {
    v6 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    v7 = ABOSLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(ABFavoritesListManager *)v6 _loadListWithAddressBook:v7];
    }

    objc_initWeak(&location, self);
    mEMORY[0x1E69966B8] = [MEMORY[0x1E69966B8] sharedInstance];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __51__ABFavoritesListManager__loadListWithAddressBook___block_invoke;
    v27[3] = &unk_1E7CCD180;
    objc_copyWeak(&v28, &location);
    [mEMORY[0x1E69966B8] addUnlockHandlerWithIdentifier:@"ABFavoriteListManager" block:v27];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

uint64_t __51__ABFavoritesListManager__loadListWithAddressBook___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _postChangeNotification];
}

- (ABFavoritesListManager)initWithAddressBook:(void *)book
{
  v7.receiver = self;
  v7.super_class = ABFavoritesListManager;
  v4 = [(ABFavoritesListManager *)&v7 init];
  if (v4)
  {
    if (book)
    {
      v4->_addressBook = CFRetain(book);
    }

    [(ABFavoritesListManager *)v4 _loadListWithAddressBook:book];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, _SpeedDialListChangedExternally, @"CNFavoritesChangedExternallyNotification", 0, CFNotificationSuspensionBehaviorDrop);
  }

  return v4;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"CNFavoritesChangedExternallyNotification", 0);
  uidToEntry = self->_uidToEntry;
  if (uidToEntry)
  {
    CFRelease(uidToEntry);
  }

  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  [objc_msgSend(MEMORY[0x1E69966B8] "sharedInstance")];
  v6.receiver = self;
  v6.super_class = ABFavoritesListManager;
  [(ABFavoritesListManager *)&v6 dealloc];
}

- (void)_scheduleSave
{
  *&self->_flags |= 1u;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_save object:0];

  [(ABFavoritesListManager *)self performSelector:sel_save withObject:0 afterDelay:5.0];
}

- (id)entries
{
  if ((*&self->_flags & 4) != 0)
  {
    [(ABFavoritesListManager *)self _loadList];
  }

  return self->_list;
}

- (BOOL)isFull
{
  if ((*&self->_flags & 4) != 0)
  {
    [(ABFavoritesListManager *)self _loadList];
  }

  list = self->_list;
  if (list)
  {
    LOBYTE(list) = [(NSMutableArray *)list count]> 0x31;
  }

  return list;
}

- (id)entriesForPeople:(id)people
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 4) != 0)
  {
    [(ABFavoritesListManager *)self _loadList];
  }

  if (!self->_uidToEntry)
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [people countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v16;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(people);
      }

      uidToEntry = self->_uidToEntry;
      RecordID = ABRecordGetRecordID(*(*(&v15 + 1) + 8 * i));
      Value = CFDictionaryGetValue(uidToEntry, RecordID);
      if (Value)
      {
        v13 = Value;
        if (!v7)
        {
          v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:50];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 addObjectsFromArray:v13];
        }

        else
        {
          [v7 addObject:v13];
        }
      }
    }

    v6 = [people countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v6);
  return v7;
}

- (id)entriesForPerson:(void *)person
{
  if (!person)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695DEC8] arrayWithObject:?];

  return [(ABFavoritesListManager *)self entriesForPeople:v4];
}

- (BOOL)_isValueForEntry:(id)entry equalToValue:(id)value
{
  if ([value isEqualToString:{objc_msgSend(entry, "value")}])
  {
    return 1;
  }

  if ([entry property] != kABPersonPhoneProperty)
  {
    return 0;
  }

  v7 = +[ABPhoneFormatting abNormalizedPhoneNumberFromString:](ABPhoneFormatting, "abNormalizedPhoneNumberFromString:", [entry value]);
  v8 = [ABPhoneFormatting abNormalizedPhoneNumberFromString:value];

  return [v7 isEqualToString:v8];
}

- (id)entryFromEntries:(id)entries type:(int)type property:(int)property identifier:(int)identifier value:(id)value label:(id)label
{
  v15 = [entries count];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v17 = 1;
  do
  {
    v18 = [entries objectAtIndex:v17 - 1];
    v19 = v18;
    if (identifier != -1 && [v18 identifier] != identifier || type != 3 && objc_msgSend(v19, "type") != type || property != -1 && objc_msgSend(v19, "property") != property || value && (!-[ABFavoritesListManager _isValueForEntry:equalToValue:](self, "_isValueForEntry:equalToValue:", v19, value) || label && !objc_msgSend(label, "isEqualToString:", objc_msgSend(v19, "nonLocalizedLabel"))))
    {
      v19 = 0;
    }

    if (v17 >= v16)
    {
      break;
    }

    ++v17;
  }

  while (!v19);
  return v19;
}

- (id)entryWithType:(int)type forPerson:(void *)person property:(int)property identifier:(int)identifier
{
  v6 = *&identifier;
  v7 = *&property;
  v8 = *&type;
  v10 = [(ABFavoritesListManager *)self entriesForPerson:person];

  return [(ABFavoritesListManager *)self entryFromEntries:v10 type:v8 property:v7 identifier:v6 value:0 label:0];
}

- (BOOL)addEntryForPerson:(void *)person property:(int)property withIdentifier:(int)identifier
{
  v5 = *&identifier;
  v6 = *&property;
  if ([(ABFavoritesListManager *)self isFull])
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [[ABFavoritesEntry alloc] initWithPerson:person property:v6 identifier:v5];
    if (v9)
    {
      v10 = v9;
      [(ABFavoritesListManager *)self addEntry:v9];

      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

- (void)_addEntryToMap:(id)map
{
  _abUid = [map _abUid];
  if ((_abUid & 0x80000000) != 0)
  {
    return;
  }

  v6 = _abUid;
  uidToEntry = self->_uidToEntry;
  if (uidToEntry)
  {
    Value = CFDictionaryGetValue(uidToEntry, v6);
    if (Value)
    {
      v9 = Value;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v9 mutableCopy];
        [v15 addObject:map];
        v10 = self->_uidToEntry;
        v11 = v6;
        v12 = v15;
      }

      else
      {
        v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v9, map, 0}];
        v15 = v12;
        v10 = self->_uidToEntry;
        v11 = v6;
      }

      CFDictionarySetValue(v10, v11, v12);

      return;
    }

    Mutable = self->_uidToEntry;
    v14 = v6;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 50, 0, MEMORY[0x1E695E9E8]);
    self->_uidToEntry = Mutable;
    v14 = v6;
  }

  CFDictionarySetValue(Mutable, v14, map);
}

- (void)_removeEntryFromMap:(id)map withUid:(int)uid
{
  if (uid < 0)
  {
    return;
  }

  uidToEntry = self->_uidToEntry;
  if (!uidToEntry)
  {
    return;
  }

  uidCopy = uid;
  v8 = CFDictionaryGetValue(uidToEntry, uid);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = [v9 count];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = 0;
  while ([v9 objectAtIndex:v12] != map)
  {
    if (v11 == ++v12)
    {
      return;
    }
  }

  if (v11 == 2)
  {
    v14 = self->_uidToEntry;
    v15 = [v9 objectAtIndex:v12 == 0];

    CFDictionarySetValue(v14, uidCopy, v15);
  }

  else
  {
    if (v11 == 1)
    {
LABEL_12:
      v13 = self->_uidToEntry;

      CFDictionaryRemoveValue(v13, uidCopy);
      return;
    }

    value = [v9 mutableCopy];
    [value removeObjectAtIndex:v12];
    CFDictionarySetValue(self->_uidToEntry, uidCopy, value);
  }
}

- (void)saveImmediately
{
  ABDiagnosticsEnabled();

  _ABLog2(4, "[ABFavoritesListManager saveImmediately]", 345, 0, @"must save changes with CNFavorites", v2, v3, v4, v6);
}

- (void)_entryIdentityChanged:(id)changed
{
  object = [changed object];
  v6 = [objc_msgSend(changed "userInfo")];
  if (v6)
  {
    v7 = object == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    intValue = [v6 intValue];
    if ((intValue & 0x80000000) == 0)
    {
      [(ABFavoritesListManager *)self _removeEntryFromMap:object withUid:intValue];
    }

    [(ABFavoritesListManager *)self _addEntryToMap:object];
  }

  [(ABFavoritesListManager *)self _scheduleSave];
}

- (void)_postChangeNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"CNFavoritesChangedNotification" object:self];
}

- (void)_listChangedExternally
{
  flags = self->_flags;
  if ((*&flags & 2) != 0)
  {
    self->_flags = (*&flags & 0xFFFFFFFD);
  }

  else if ((*&flags & 4) == 0)
  {

    self->_list = 0;
    uidToEntry = self->_uidToEntry;
    if (uidToEntry)
    {
      CFRelease(uidToEntry);
    }

    self->_uidToEntry = 0;
    *&self->_flags |= 4u;

    [(ABFavoritesListManager *)self _postChangeNotification];
  }
}

- (void)addEntry:(id)entry
{
  if ((*&self->_flags & 4) != 0)
  {
    [(ABFavoritesListManager *)self _loadList];
  }

  list = self->_list;
  if (!list)
  {
    list = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:50];
    self->_list = list;
  }

  v6 = [(NSMutableArray *)list count];
  if (entry && v6 <= 0x31)
  {
    [(NSMutableArray *)self->_list addObject:entry];
    [(ABFavoritesListManager *)self _addEntryToMap:entry];
    [(ABFavoritesListManager *)self _postChangeNotification];

    [(ABFavoritesListManager *)self _scheduleSave];
  }
}

- (void)removeEntryAtIndex:(int64_t)index
{
  if ((*&self->_flags & 4) != 0)
  {
    [(ABFavoritesListManager *)self _loadList];
  }

  v5 = [(NSMutableArray *)self->_list objectAtIndex:index];
  -[ABFavoritesListManager _removeEntryFromMap:withUid:](self, "_removeEntryFromMap:withUid:", v5, [v5 _abUid]);
  [(NSMutableArray *)self->_list removeObjectAtIndex:index];
  [(ABFavoritesListManager *)self _postChangeNotification];

  [(ABFavoritesListManager *)self _scheduleSave];
}

- (void)moveEntryAtIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  if (index != toIndex)
  {
    list = self->_list;
    v9 = [(NSMutableArray *)list objectAtIndex:?];
    if (toIndex <= index)
    {
      toIndexCopy = toIndex;
    }

    else
    {
      toIndexCopy = toIndex + 1;
    }

    [(NSMutableArray *)list insertObject:v9 atIndex:toIndexCopy];
    if (index <= toIndex)
    {
      indexCopy = index;
    }

    else
    {
      indexCopy = index + 1;
    }

    [(NSMutableArray *)self->_list removeObjectAtIndex:indexCopy];
    [(ABFavoritesListManager *)self _postChangeNotification];

    [(ABFavoritesListManager *)self _scheduleSave];
  }
}

- (void)save
{
  ABDiagnosticsEnabled();
  _ABLog2(4, "[ABFavoritesListManager save]", 419, 0, @"must save changes with CNFavorites", v3, v4, v5, v6);
  *&self->_flags &= ~1u;
}

- (BOOL)entryIsDuplicateAndThusRemoved:(id)removed oldUid:(int)uid
{
  v4 = *&uid;
  v7 = [(NSMutableArray *)self->_list count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    while ([(NSMutableArray *)self->_list objectAtIndex:v9]!= removed)
    {
      if (v8 == ++v9)
      {
        goto LABEL_5;
      }
    }

    v14 = [(NSMutableArray *)self->_list count];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      while (1)
      {
        v17 = [(NSMutableArray *)self->_list objectAtIndex:v16];
        if (v17 != removed && ([v17 isEqual:removed] & 1) != 0)
        {
          break;
        }

        if (v15 == ++v16)
        {
          goto LABEL_6;
        }
      }

      [(NSMutableArray *)self->_list removeObjectAtIndex:v9];
      [(ABFavoritesListManager *)self _removeEntryFromMap:removed withUid:v4];
      [(ABFavoritesListManager *)self _scheduleSave];
      [(ABFavoritesListManager *)self _postChangeNotification];
      LOBYTE(v14) = 1;
    }
  }

  else
  {
LABEL_5:
    ABDiagnosticsEnabled();
    dictionaryRepresentation = [removed dictionaryRepresentation];
    _ABLog2(4, "[ABFavoritesListManager entryIsDuplicateAndThusRemoved:oldUid:]", 445, 0, @"Checking for duplicate favorites entry, but entry we were told to compare is not list! Entry: %@\nList: %@", v11, v12, v13, dictionaryRepresentation);
LABEL_6:
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (void)removeAllEntries
{
  uidToEntry = self->_uidToEntry;
  if (uidToEntry)
  {
    CFRelease(uidToEntry);
    self->_uidToEntry = 0;
  }

  self->_list = 0;
  *&self->_flags |= 1u;
}

- (void)_loadListWithAddressBook:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1B7EFB000, a2, OS_LOG_TYPE_FAULT, "%@ (or something it links) is using deprecated code and contributing to the overall instability of the system.", &v2, 0xCu);
}

@end