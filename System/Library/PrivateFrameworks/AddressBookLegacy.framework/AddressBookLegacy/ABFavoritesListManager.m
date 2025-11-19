@interface ABFavoritesListManager
+ (id)sharedInstanceWithAddressBook:(void *)a3;
- (ABFavoritesListManager)initWithAddressBook:(void *)a3;
- (BOOL)_isValueForEntry:(id)a3 equalToValue:(id)a4;
- (BOOL)addEntryForPerson:(void *)a3 property:(int)a4 withIdentifier:(int)a5;
- (BOOL)entryIsDuplicateAndThusRemoved:(id)a3 oldUid:(int)a4;
- (BOOL)isFull;
- (BOOL)shouldNotReportFavoritesError:(id)a3;
- (id)entries;
- (id)entriesForPeople:(id)a3;
- (id)entriesForPerson:(void *)a3;
- (id)entryFromEntries:(id)a3 type:(int)a4 property:(int)a5 identifier:(int)a6 value:(id)a7 label:(id)a8;
- (id)entryWithType:(int)a3 forPerson:(void *)a4 property:(int)a5 identifier:(int)a6;
- (void)_addEntryToMap:(id)a3;
- (void)_entryIdentityChanged:(id)a3;
- (void)_listChangedExternally;
- (void)_loadListWithAddressBook:(void *)a3;
- (void)_postChangeNotification;
- (void)_removeEntryFromMap:(id)a3 withUid:(int)a4;
- (void)_scheduleSave;
- (void)addEntry:(id)a3;
- (void)dealloc;
- (void)moveEntryAtIndex:(int64_t)a3 toIndex:(int64_t)a4;
- (void)removeAllEntries;
- (void)removeEntryAtIndex:(int64_t)a3;
- (void)reportFavoritesIssue:(id)a3;
- (void)save;
- (void)saveImmediately;
@end

@implementation ABFavoritesListManager

+ (id)sharedInstanceWithAddressBook:(void *)a3
{
  result = sharedInstanceWithAddressBook____SpeedDialListManager;
  if (!sharedInstanceWithAddressBook____SpeedDialListManager)
  {
    result = [[ABFavoritesListManager alloc] initWithAddressBook:a3];
    sharedInstanceWithAddressBook____SpeedDialListManager = result;
  }

  return result;
}

- (void)reportFavoritesIssue:(id)a3
{
  ABDiagnosticsEnabled();
  _ABLog2(3, "[ABFavoritesListManager reportFavoritesIssue:]", 68, 0, @"%@", v4, v5, v6, a3);
  ABLogSimulateCrashReport(a3);

  ABLogDisplayInternalAlert(a3);
}

- (BOOL)shouldNotReportFavoritesError:(id)a3
{
  if (a3)
  {
    v4 = [a3 domain];
    v5 = *MEMORY[0x1E696A250];
    if ([v4 isEqualToString:*MEMORY[0x1E696A250]] && objc_msgSend(a3, "code") == 260)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = [objc_msgSend(a3 "domain")];
      if (v6)
      {
        LOBYTE(v6) = [a3 code] == 257;
      }
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)_loadListWithAddressBook:(void *)a3
{
  if ([objc_msgSend(MEMORY[0x1E69966B8] "sharedInstance")])
  {
    if (a3)
    {
      v5 = 0;
    }

    else
    {
      a3 = ABAddressBookCreateWithOptions(0, 0);
      v5 = a3;
      if (!a3)
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
        v10 = [MEMORY[0x1E696AC08] defaultManager];
        if (([v10 fileExistsAtPath:v9] & 1) == 0)
        {
          v11 = [v9 stringByDeletingLastPathComponent];
          if (([v10 fileExistsAtPath:v11] & 1) == 0)
          {
            mkdir([v11 fileSystemRepresentation], 0x1C0u);
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
            v21 = -[ABFavoritesEntry initWithDictionaryRepresentation:addressBook:]([ABFavoritesEntry alloc], "initWithDictionaryRepresentation:addressBook:", [v14 objectAtIndex:v20], a3);
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

    if (v5)
    {
      CFRelease(v5);
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
    v8 = [MEMORY[0x1E69966B8] sharedInstance];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __51__ABFavoritesListManager__loadListWithAddressBook___block_invoke;
    v27[3] = &unk_1E7CCD180;
    objc_copyWeak(&v28, &location);
    [v8 addUnlockHandlerWithIdentifier:@"ABFavoriteListManager" block:v27];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

uint64_t __51__ABFavoritesListManager__loadListWithAddressBook___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _postChangeNotification];
}

- (ABFavoritesListManager)initWithAddressBook:(void *)a3
{
  v7.receiver = self;
  v7.super_class = ABFavoritesListManager;
  v4 = [(ABFavoritesListManager *)&v7 init];
  if (v4)
  {
    if (a3)
    {
      v4->_addressBook = CFRetain(a3);
    }

    [(ABFavoritesListManager *)v4 _loadListWithAddressBook:a3];
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

- (id)entriesForPeople:(id)a3
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
  v5 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(a3);
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

    v6 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v6);
  return v7;
}

- (id)entriesForPerson:(void *)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695DEC8] arrayWithObject:?];

  return [(ABFavoritesListManager *)self entriesForPeople:v4];
}

- (BOOL)_isValueForEntry:(id)a3 equalToValue:(id)a4
{
  if ([a4 isEqualToString:{objc_msgSend(a3, "value")}])
  {
    return 1;
  }

  if ([a3 property] != kABPersonPhoneProperty)
  {
    return 0;
  }

  v7 = +[ABPhoneFormatting abNormalizedPhoneNumberFromString:](ABPhoneFormatting, "abNormalizedPhoneNumberFromString:", [a3 value]);
  v8 = [ABPhoneFormatting abNormalizedPhoneNumberFromString:a4];

  return [v7 isEqualToString:v8];
}

- (id)entryFromEntries:(id)a3 type:(int)a4 property:(int)a5 identifier:(int)a6 value:(id)a7 label:(id)a8
{
  v15 = [a3 count];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v17 = 1;
  do
  {
    v18 = [a3 objectAtIndex:v17 - 1];
    v19 = v18;
    if (a6 != -1 && [v18 identifier] != a6 || a4 != 3 && objc_msgSend(v19, "type") != a4 || a5 != -1 && objc_msgSend(v19, "property") != a5 || a7 && (!-[ABFavoritesListManager _isValueForEntry:equalToValue:](self, "_isValueForEntry:equalToValue:", v19, a7) || a8 && !objc_msgSend(a8, "isEqualToString:", objc_msgSend(v19, "nonLocalizedLabel"))))
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

- (id)entryWithType:(int)a3 forPerson:(void *)a4 property:(int)a5 identifier:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v8 = *&a3;
  v10 = [(ABFavoritesListManager *)self entriesForPerson:a4];

  return [(ABFavoritesListManager *)self entryFromEntries:v10 type:v8 property:v7 identifier:v6 value:0 label:0];
}

- (BOOL)addEntryForPerson:(void *)a3 property:(int)a4 withIdentifier:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  if ([(ABFavoritesListManager *)self isFull])
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [[ABFavoritesEntry alloc] initWithPerson:a3 property:v6 identifier:v5];
    if (v9)
    {
      v10 = v9;
      [(ABFavoritesListManager *)self addEntry:v9];

      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

- (void)_addEntryToMap:(id)a3
{
  v5 = [a3 _abUid];
  if ((v5 & 0x80000000) != 0)
  {
    return;
  }

  v6 = v5;
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
        [v15 addObject:a3];
        v10 = self->_uidToEntry;
        v11 = v6;
        v12 = v15;
      }

      else
      {
        v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v9, a3, 0}];
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

  CFDictionarySetValue(Mutable, v14, a3);
}

- (void)_removeEntryFromMap:(id)a3 withUid:(int)a4
{
  if (a4 < 0)
  {
    return;
  }

  uidToEntry = self->_uidToEntry;
  if (!uidToEntry)
  {
    return;
  }

  v7 = a4;
  v8 = CFDictionaryGetValue(uidToEntry, a4);
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
  while ([v9 objectAtIndex:v12] != a3)
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

    CFDictionarySetValue(v14, v7, v15);
  }

  else
  {
    if (v11 == 1)
    {
LABEL_12:
      v13 = self->_uidToEntry;

      CFDictionaryRemoveValue(v13, v7);
      return;
    }

    value = [v9 mutableCopy];
    [value removeObjectAtIndex:v12];
    CFDictionarySetValue(self->_uidToEntry, v7, value);
  }
}

- (void)saveImmediately
{
  ABDiagnosticsEnabled();

  _ABLog2(4, "[ABFavoritesListManager saveImmediately]", 345, 0, @"must save changes with CNFavorites", v2, v3, v4, v6);
}

- (void)_entryIdentityChanged:(id)a3
{
  v5 = [a3 object];
  v6 = [objc_msgSend(a3 "userInfo")];
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = [v6 intValue];
    if ((v8 & 0x80000000) == 0)
    {
      [(ABFavoritesListManager *)self _removeEntryFromMap:v5 withUid:v8];
    }

    [(ABFavoritesListManager *)self _addEntryToMap:v5];
  }

  [(ABFavoritesListManager *)self _scheduleSave];
}

- (void)_postChangeNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];

  [v3 postNotificationName:@"CNFavoritesChangedNotification" object:self];
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

- (void)addEntry:(id)a3
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
  if (a3 && v6 <= 0x31)
  {
    [(NSMutableArray *)self->_list addObject:a3];
    [(ABFavoritesListManager *)self _addEntryToMap:a3];
    [(ABFavoritesListManager *)self _postChangeNotification];

    [(ABFavoritesListManager *)self _scheduleSave];
  }
}

- (void)removeEntryAtIndex:(int64_t)a3
{
  if ((*&self->_flags & 4) != 0)
  {
    [(ABFavoritesListManager *)self _loadList];
  }

  v5 = [(NSMutableArray *)self->_list objectAtIndex:a3];
  -[ABFavoritesListManager _removeEntryFromMap:withUid:](self, "_removeEntryFromMap:withUid:", v5, [v5 _abUid]);
  [(NSMutableArray *)self->_list removeObjectAtIndex:a3];
  [(ABFavoritesListManager *)self _postChangeNotification];

  [(ABFavoritesListManager *)self _scheduleSave];
}

- (void)moveEntryAtIndex:(int64_t)a3 toIndex:(int64_t)a4
{
  if (a3 != a4)
  {
    list = self->_list;
    v9 = [(NSMutableArray *)list objectAtIndex:?];
    if (a4 <= a3)
    {
      v10 = a4;
    }

    else
    {
      v10 = a4 + 1;
    }

    [(NSMutableArray *)list insertObject:v9 atIndex:v10];
    if (a3 <= a4)
    {
      v11 = a3;
    }

    else
    {
      v11 = a3 + 1;
    }

    [(NSMutableArray *)self->_list removeObjectAtIndex:v11];
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

- (BOOL)entryIsDuplicateAndThusRemoved:(id)a3 oldUid:(int)a4
{
  v4 = *&a4;
  v7 = [(NSMutableArray *)self->_list count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    while ([(NSMutableArray *)self->_list objectAtIndex:v9]!= a3)
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
        if (v17 != a3 && ([v17 isEqual:a3] & 1) != 0)
        {
          break;
        }

        if (v15 == ++v16)
        {
          goto LABEL_6;
        }
      }

      [(NSMutableArray *)self->_list removeObjectAtIndex:v9];
      [(ABFavoritesListManager *)self _removeEntryFromMap:a3 withUid:v4];
      [(ABFavoritesListManager *)self _scheduleSave];
      [(ABFavoritesListManager *)self _postChangeNotification];
      LOBYTE(v14) = 1;
    }
  }

  else
  {
LABEL_5:
    ABDiagnosticsEnabled();
    v10 = [a3 dictionaryRepresentation];
    _ABLog2(4, "[ABFavoritesListManager entryIsDuplicateAndThusRemoved:oldUid:]", 445, 0, @"Checking for duplicate favorites entry, but entry we were told to compare is not list! Entry: %@\nList: %@", v11, v12, v13, v10);
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