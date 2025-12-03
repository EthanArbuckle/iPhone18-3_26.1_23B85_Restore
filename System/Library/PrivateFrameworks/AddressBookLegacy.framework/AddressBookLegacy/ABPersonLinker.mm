@interface ABPersonLinker
+ (void)startAutoLinkingNewPeopleInAddressBook:(void *)book inProcess:(BOOL)process;
- (ABPersonLinker)initWithAddressBook:(void *)book;
- (BOOL)linkRecentlyAddedPeopleWithLimit:(int64_t)limit;
- (BOOL)shouldLinkPerson:(void *)person toPeopleInDatabase:(id)database andNewlyAddedPeople:(id)people inInitialLinking:(BOOL)linking;
- (id)copyArrayOfAllPeopleWithROWIDGreatThan:(int)than withLimit:(int64_t)limit;
- (id)otherPeopleInArray:(id)array matchingPerson:(void *)person;
- (id)otherPeopleInDatabaseMatchingPerson:(void *)person notIncludingPeople:(id)people;
- (id)suggestedPeopleToLinkWithPerson:(void *)person isInitialLinking:(BOOL)linking;
- (void)addPerson:(void *)person toDictionary:(id)dictionary withProperty:(int)property;
- (void)dealloc;
- (void)linkNewlyAddedPerson:(void *)person;
- (void)makeLinksForAddedPeople:(id)people inInitialLinking:(BOOL)linking countingOuterIterations:(unint64_t *)iterations detectedLinkCount:(unint64_t *)count;
- (void)presortPeople:(id)people;
- (void)removeAllLinks;
@end

@implementation ABPersonLinker

+ (void)startAutoLinkingNewPeopleInAddressBook:(void *)book inProcess:(BOOL)process
{
  processCopy = process;
  v13 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = ABOSLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    bookCopy = book;
    v11 = 1024;
    v12 = processCopy;
    _os_log_impl(&dword_1B7EFB000, v7, OS_LOG_TYPE_DEFAULT, "[ABPersonLinker] startAutoLinkingNewPeopleInAddressBook:%@ inProcess:%i", &v9, 0x12u);
  }

  if (processCopy)
  {
    v8 = [[ABPersonLinker alloc] initWithAddressBook:book];
    [(ABPersonLinker *)v8 linkRecentlyAddedPeople];
  }

  else
  {
    ABStartDatabaseDoctor(book);
  }

  objc_autoreleasePoolPop(v6);
}

- (ABPersonLinker)initWithAddressBook:(void *)book
{
  v6.receiver = self;
  v6.super_class = ABPersonLinker;
  v4 = [(ABPersonLinker *)&v6 init];
  if (v4)
  {
    if (book)
    {
      CFRetain(book);
    }

    v4->_addressBook = book;
  }

  return v4;
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  v4.receiver = self;
  v4.super_class = ABPersonLinker;
  [(ABPersonLinker *)&v4 dealloc];
}

- (id)otherPeopleInDatabaseMatchingPerson:(void *)person notIncludingPeople:(id)people
{
  v46 = *MEMORY[0x1E69E9840];
  if (self->_peopleByOrganization && self->_peopleByFirstName && self->_peopleByLastName)
  {
    if (ABRecordGetIntValue(person, kABPersonKindProperty) == 1)
    {
      v8 = [ABRecordCopyValue(person kABPersonOrganizationProperty)];
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = &stru_1F2FE2718;
      }

      v10 = [-[NSMutableDictionary objectForKey:](self->_peopleByOrganization objectForKey:{v9), "mutableCopy"}];
    }

    else
    {
      v31 = [ABRecordCopyValue(person kABPersonFirstNameProperty)];
      v32 = [ABRecordCopyValue(person kABPersonLastNameProperty)];
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = &stru_1F2FE2718;
      }

      v34 = [(NSMutableDictionary *)self->_peopleByFirstName objectForKey:v33];
      if (v32)
      {
        v35 = v32;
      }

      else
      {
        v35 = &stru_1F2FE2718;
      }

      v36 = [(NSMutableDictionary *)self->_peopleByLastName objectForKey:v35];
      v37 = [v34 mutableCopy];
      v10 = v37;
      if (v36)
      {
        [v37 intersectSet:v36];
      }

      else
      {

        v10 = 0;
      }
    }

    [v10 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", people)}];
    [v10 removeObject:person];
    v40 = [objc_msgSend(v10 "allObjects")];

    return v40;
  }

  else
  {
    RecordID = ABRecordGetRecordID(person);
    if (RecordID == -1 && ![people count])
    {
      v12 = 0;
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndex:RecordID];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v13 = [people countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v42;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v42 != v15)
            {
              objc_enumerationMutation(people);
            }

            v17 = ABRecordGetRecordID(*(*(&v41 + 1) + 8 * i));
            if (v17 != -1)
            {
              [v12 addIndex:v17];
            }
          }

          v14 = [people countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v14);
      }
    }

    IntValue = ABRecordGetIntValue(person, kABPersonKindProperty);
    if (IntValue)
    {
      if (IntValue != 1)
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      }

      v27 = ABRecordCopyValue(person, kABPersonOrganizationProperty);
      if (v27)
      {
        v28 = v27;
        SelectStatement = CPRecordStoreCreateSelectStatement();
        if (SelectStatement)
        {
          v30 = SelectStatement;
          v26 = CPRecordStoreProcessQueryWithBindBlock();
          CFRelease(v30);
        }

        else
        {
          v26 = 0;
        }

        CFRelease(v28);
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v19 = ABRecordCopyValue(person, kABPersonFirstNameProperty);
      v20 = ABRecordCopyValue(person, kABPersonLastNameProperty);
      if (v19 | v20 && ((v21 = [MEMORY[0x1E696AD60] string], objc_msgSend(v21, "appendString:", @"WHERE "), objc_msgSend(v21, "appendString:", @"First"), !v19) ? (v22 = @" IS NULL AND ") : (v22 = @" LIKE ? AND "), (objc_msgSend(v21, "appendString:", v22), objc_msgSend(v21, "appendString:", @"Last"), !v20) ? (v23 = @" IS NULL AND ") : (v23 = @" LIKE ? AND "), objc_msgSend(v21, "appendString:", v23), objc_msgSend(v21, "appendFormat:", @"%@ = %@", @"Kind", @"0"), (v24 = CPRecordStoreCreateSelectStatement()) != 0))
      {
        v25 = v24;
        v26 = CPRecordStoreProcessQueryWithBindBlock();
        CFRelease(v25);
      }

      else
      {
        v26 = 0;
      }
    }

    v38 = v26;
    return v26;
  }
}

void *__73__ABPersonLinker_otherPeopleInDatabaseMatchingPerson_notIncludingPeople___block_invoke(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      v4 = result;
      v5 = result[4];
      if (v5)
      {
        sqlite3_bind_text(v3, 1, [v5 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      result = v4[5];
      if (result)
      {
        v7 = *(a2 + 8);
        v8 = [result UTF8String];

        return sqlite3_bind_text(v7, v6, v8, -1, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

  return result;
}

void *__73__ABPersonLinker_otherPeopleInDatabaseMatchingPerson_notIncludingPeople___block_invoke_2(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      result = result[4];
      if (result)
      {
        v3 = [result UTF8String];

        return sqlite3_bind_text(v2, 1, v3, -1, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

  return result;
}

- (id)otherPeopleInArray:(id)array matchingPerson:(void *)person
{
  v43 = *MEMORY[0x1E69E9840];
  if (!array)
  {
    return 0;
  }

  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (ABRecordGetIntValue(person, kABPersonKindProperty))
  {
    if (ABRecordGetIntValue(person, kABPersonKindProperty) != 1)
    {
      [ABPersonLinker otherPeopleInArray:a2 matchingPerson:self];
    }

    v8 = ABRecordCopyValue(person, kABPersonOrganizationProperty);
    if (v8)
    {
      v9 = v8;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v10 = [array countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v34;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v34 != v12)
            {
              objc_enumerationMutation(array);
            }

            v14 = *(*(&v33 + 1) + 8 * i);
            if (v14 != person && ABRecordGetIntValue(*(*(&v33 + 1) + 8 * i), kABPersonKindProperty) == 1)
            {
              v15 = ABRecordCopyValue(v14, kABPersonOrganizationProperty);
              v16 = v15;
              if (v15)
              {
                if (![v15 localizedCaseInsensitiveCompare:v9])
                {
                  [v32 addObject:v14];
                }
              }
            }
          }

          v11 = [array countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v11);
      }
    }
  }

  else
  {
    v18 = ABRecordCopyValue(person, kABPersonFirstNameProperty);
    v19 = ABRecordCopyValue(person, kABPersonLastNameProperty);
    v30 = v19;
    v31 = v18;
    if (v18)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v21 = [array countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v38;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v38 != v23)
            {
              objc_enumerationMutation(array);
            }

            v25 = *(*(&v37 + 1) + 8 * j);
            if (v25 != person && !ABRecordGetIntValue(*(*(&v37 + 1) + 8 * j), kABPersonKindProperty))
            {
              v26 = ABRecordCopyValue(v25, kABPersonFirstNameProperty);
              v27 = ABRecordCopyValue(v25, kABPersonLastNameProperty);
              v28 = v27;
              if (v26)
              {
                v29 = v27 == 0;
              }

              else
              {
                v29 = 1;
              }

              if (!v29 && ![v26 localizedCaseInsensitiveCompare:v31] && !objc_msgSend(v28, "localizedCaseInsensitiveCompare:", v30))
              {
                [v32 addObject:v25];
              }
            }
          }

          v22 = [array countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v22);
      }
    }
  }

  return v32;
}

- (BOOL)shouldLinkPerson:(void *)person toPeopleInDatabase:(id)database andNewlyAddedPeople:(id)people inInitialLinking:(BOOL)linking
{
  v58 = *MEMORY[0x1E69E9840];
  IntValue = ABRecordGetIntValue(person, kABPersonKindProperty);
  v10 = [database count];
  v11 = [people count] + v10;
  v12 = ABPersonCopySource(person);
  v13 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v11];
  v14 = v13;
  if (v12)
  {
    [v13 addObject:v12];
    CFRelease(v12);
  }

  v42 = ABRecordCopyValue(person, kABPersonMiddleNameProperty);
  if (v11)
  {
    v15 = 0;
    while (1)
    {
      if (v15 >= [database count])
      {
        v17 = v15 - [database count];
        databaseCopy = people;
      }

      else
      {
        databaseCopy = database;
        v17 = v15;
      }

      v18 = [databaseCopy objectAtIndex:v17];
      v19 = ABPersonCopySource(v18);
      if (!v19)
      {
        goto LABEL_11;
      }

      v20 = v19;
      if ([v14 containsObject:v19])
      {
        CFRelease(v20);
        goto LABEL_47;
      }

      [v14 addObject:v20];
      CFRelease(v20);
      if (IntValue)
      {
LABEL_11:
        v21 = 1;
        goto LABEL_18;
      }

      v22 = ABRecordCopyValue(v18, kABPersonMiddleNameProperty);
      if (!v22)
      {
        goto LABEL_16;
      }

      if (!v42)
      {
        break;
      }

      v21 = [v42 localizedCaseInsensitiveCompare:v22] == 0;
LABEL_17:

LABEL_18:
      if (++v15 >= v11 || !v21)
      {
        goto LABEL_22;
      }
    }

    v42 = v22;
LABEL_16:
    v21 = 1;
    goto LABEL_17;
  }

  v21 = 1;
LABEL_22:
  if (v21 && !linking)
  {
    v23 = ABRecordGetIntValue(person, kABPersonLinkProperty);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v24 = [people countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v52;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v52 != v26)
          {
            objc_enumerationMutation(people);
          }

          v28 = ABRecordGetIntValue(*(*(&v51 + 1) + 8 * i), kABPersonLinkProperty);
          if (v28 != -1)
          {
            if (v23 == -1)
            {
              v23 = v28;
            }

            else
            {
              v29 = v23 == v28;
              v23 = v28;
              if (!v29)
              {
                goto LABEL_47;
              }
            }
          }
        }

        v25 = [people countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v25);
    }

    if (v23 == -1)
    {
      if ([database count] >= 2)
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v35 = [database countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v48;
          v38 = -1;
LABEL_52:
          v39 = 0;
          while (1)
          {
            if (*v48 != v37)
            {
              objc_enumerationMutation(database);
            }

            v40 = ABRecordGetIntValue(*(*(&v47 + 1) + 8 * v39), kABPersonLinkProperty);
            if (v40 == -1)
            {
              goto LABEL_47;
            }

            if (v38 == -1)
            {
              v38 = v40;
            }

            else if (v38 != v40)
            {
              goto LABEL_47;
            }

            if (v36 == ++v39)
            {
              v36 = [database countByEnumeratingWithState:&v47 objects:v56 count:16];
              LOBYTE(v21) = 1;
              if (v36)
              {
                goto LABEL_52;
              }

              goto LABEL_48;
            }
          }
        }
      }
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v30 = [database countByEnumeratingWithState:&v43 objects:v55 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v44;
LABEL_39:
        v33 = 0;
        while (1)
        {
          if (*v44 != v32)
          {
            objc_enumerationMutation(database);
          }

          if (ABRecordGetIntValue(*(*(&v43 + 1) + 8 * v33), kABPersonLinkProperty) != v23)
          {
            break;
          }

          if (v31 == ++v33)
          {
            v31 = [database countByEnumeratingWithState:&v43 objects:v55 count:16];
            LOBYTE(v21) = 1;
            if (v31)
            {
              goto LABEL_39;
            }

            goto LABEL_48;
          }
        }

LABEL_47:
        LOBYTE(v21) = 0;
        goto LABEL_48;
      }
    }

    LOBYTE(v21) = 1;
  }

LABEL_48:

  return v21;
}

- (id)suggestedPeopleToLinkWithPerson:(void *)person isInitialLinking:(BOOL)linking
{
  linkingCopy = linking;
  v7 = [(ABPersonLinker *)self otherPeopleInDatabaseMatchingPerson:person notIncludingPeople:0];
  if ([(ABPersonLinker *)self shouldLinkPerson:person toPeopleInDatabase:v7 andNewlyAddedPeople:0 inInitialLinking:linkingCopy])
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

- (void)addPerson:(void *)person toDictionary:(id)dictionary withProperty:(int)property
{
  v7 = [ABRecordCopyValue(person property)];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1F2FE2718;
  }

  v9 = [dictionary objectForKey:v8];
  if (!v9)
  {
    v9 = objc_opt_new();
    [dictionary setObject:v9 forKey:v8];
  }

  [v9 addObject:person];
}

- (void)presortPeople:(id)people
{
  v23 = *MEMORY[0x1E69E9840];
  peopleByLastName = self->_peopleByLastName;
  p_peopleByLastName = &self->_peopleByLastName;
  if (peopleByLastName)
  {
  }

  self->_peopleByLastName = objc_opt_new();
  peopleByFirstName = self->_peopleByFirstName;
  if (peopleByFirstName)
  {
  }

  v6 = objc_opt_new();
  peopleByOrganization = self->_peopleByOrganization;
  self->_peopleByFirstName = v6;
  if (peopleByOrganization)
  {
  }

  self->_peopleByOrganization = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [people countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(people);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        IntValue = ABRecordGetIntValue(v12, kABPersonKindProperty);
        p_peopleByOrganization = &self->_peopleByOrganization;
        v15 = kABPersonOrganizationProperty;
        if (!IntValue)
        {
          [(ABPersonLinker *)self addPerson:v12 toDictionary:self->_peopleByFirstName withProperty:kABPersonFirstNameProperty];
          p_peopleByOrganization = p_peopleByLastName;
          v15 = kABPersonLastNameProperty;
        }

        [(ABPersonLinker *)self addPerson:v12 toDictionary:*p_peopleByOrganization withProperty:v15, p_peopleByLastName];
      }

      v9 = [people countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

- (void)makeLinksForAddedPeople:(id)people inInitialLinking:(BOOL)linking countingOuterIterations:(unint64_t *)iterations detectedLinkCount:(unint64_t *)count
{
  selfCopy = self;
  v78 = *MEMORY[0x1E69E9840];
  linkingCopy = linking;
  if (linking)
  {
    [(ABPersonLinker *)self removeAllLinks];
  }

  if (people)
  {
    peopleCopy = people;
  }

  else
  {
    peopleCopy = ABAddressBookCopyArrayOfAllPeople(selfCopy->_addressBook);
    [(ABPersonLinker *)selfCopy presortPeople:peopleCopy];
  }

  if (ABDiagnosticsEnabled())
  {
    [people count];
    [(__CFArray *)peopleCopy count];
    _ABLog2(7, "[ABPersonLinker makeLinksForAddedPeople:inInitialLinking:countingOuterIterations:detectedLinkCount:]", 464, 0, @"[ABPersonLinker] (%@) makeLinksForAddedPeople %ld inInitialLinking %i peopleToLink %ld", v9, v10, v11, selfCopy);
  }

  v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[__CFArray count](peopleCopy, "count")}];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v13 = [(__CFArray *)peopleCopy countByEnumeratingWithState:&v71 objects:v77 count:16];
  if (v13)
  {
    v14 = v13;
    v61 = 0;
    v57 = selfCopy;
    v58 = 0;
    v15 = *v72;
    v56 = peopleCopy;
    peopleCopy2 = people;
    do
    {
      v16 = 0;
      v62 = v14;
      do
      {
        if (*v72 != v15)
        {
          objc_enumerationMutation(peopleCopy);
        }

        v17 = *(*(&v71 + 1) + 8 * v16);
        if (([v12 containsObject:v17] & 1) == 0)
        {
          v18 = objc_alloc_init(MEMORY[0x1E696AAC8]);
          if (ABRecordGetIntValue(v17, kABPersonLinkProperty) == -1)
          {
            v23 = [(ABPersonLinker *)selfCopy otherPeopleInArray:people matchingPerson:v17];
            v24 = [(ABPersonLinker *)selfCopy otherPeopleInDatabaseMatchingPerson:v17 notIncludingPeople:v23];
            if (ABDiagnosticsEnabled())
            {
              v25 = ABPersonCopyCompositeName(v17);
              if (ABDiagnosticsEnabled())
              {
                ABRecordGetRecordID(v17);
                [v24 count];
                [v23 count];
                peopleCopy = v56;
                selfCopy = v57;
                _ABLog2(7, "[ABPersonLinker makeLinksForAddedPeople:inInitialLinking:countingOuterIterations:detectedLinkCount:]", 480, 0, @"[ABPersonLinker] (%@) person %i %@, otherPeopleinDatabase %ld, otherNewlyAddedPeople %ld", v26, v27, v28, v57);
              }
            }

            if ([(ABPersonLinker *)selfCopy shouldLinkPerson:v17 toPeopleInDatabase:v24 andNewlyAddedPeople:v23 inInitialLinking:linkingCopy])
            {
              if ([v24 count] || objc_msgSend(v23, "count"))
              {
                ++v58;
              }

              if ([v24 count])
              {
                if (linkingCopy)
                {
                  v69 = 0u;
                  v70 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  v29 = [v24 countByEnumeratingWithState:&v67 objects:v76 count:16];
                  if (v29)
                  {
                    v30 = v29;
                    v31 = *v68;
                    do
                    {
                      for (i = 0; i != v30; ++i)
                      {
                        if (*v68 != v31)
                        {
                          objc_enumerationMutation(v24);
                        }

                        ABPersonLinkPerson(v17, *(*(&v67 + 1) + 8 * i));
                      }

                      v30 = [v24 countByEnumeratingWithState:&v67 objects:v76 count:16];
                    }

                    while (v30);
                  }
                }

                else
                {
                  ABPersonLinkPerson(v17, [v24 lastObject]);
                }
              }

              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              v33 = [v23 countByEnumeratingWithState:&v63 objects:v75 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = *v64;
                do
                {
                  for (j = 0; j != v34; ++j)
                  {
                    if (*v64 != v35)
                    {
                      objc_enumerationMutation(v23);
                    }

                    ABPersonLinkPerson(v17, *(*(&v63 + 1) + 8 * j));
                  }

                  v34 = [v23 countByEnumeratingWithState:&v63 objects:v75 count:16];
                }

                while (v34);
              }

              peopleCopy = v56;
              selfCopy = v57;
            }

            [v12 addObjectsFromArray:v24];
            [v12 addObjectsFromArray:v23];
            ++v61;
            people = peopleCopy2;
          }

          else
          {
            v19 = ABPersonCopyCompositeName(v17);
            if (ABDiagnosticsEnabled())
            {
              ABRecordGetRecordID(v17);
              _ABLog2(7, "[ABPersonLinker makeLinksForAddedPeople:inInitialLinking:countingOuterIterations:detectedLinkCount:]", 517, 0, @"[ABPersonLinker] (%@) person %i %@, personLinkId %i", v20, v21, v22, selfCopy);
            }
          }

          v14 = v62;
        }

        ++v16;
      }

      while (v16 != v14);
      v14 = [(__CFArray *)peopleCopy countByEnumeratingWithState:&v71 objects:v77 count:16];
    }

    while (v14);
  }

  else
  {
    v61 = 0;
    v58 = 0;
  }

  if (iterations)
  {
    *iterations = v61;
  }

  if (linkingCopy)
  {
    ABAddressBookSetIntegerProperty(selfCopy->_addressBook, @"PersonLinkerVersion", 9, v37, v38, v39, v40, v41, v52);
    lastObject = [(__CFArray *)peopleCopy lastObject];
    if (lastObject)
    {
      RecordID = ABRecordGetRecordID(lastObject);
      ABAddressBookSetIntegerProperty(selfCopy->_addressBook, @"PersonLinkerLastProcessedPerson", RecordID, v44, v45, v46, v47, v48, v53);
      ABAddressBookSave(selfCopy->_addressBook, 0);
    }
  }

  if (count)
  {
    *count = v58;
  }

  peopleByFirstName = selfCopy->_peopleByFirstName;
  if (peopleByFirstName)
  {

    selfCopy->_peopleByFirstName = 0;
  }

  peopleByLastName = selfCopy->_peopleByLastName;
  if (peopleByLastName)
  {

    selfCopy->_peopleByLastName = 0;
  }

  peopleByOrganization = selfCopy->_peopleByOrganization;
  if (peopleByOrganization)
  {

    selfCopy->_peopleByOrganization = 0;
  }
}

- (void)removeAllLinks
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = ABAddressBookCopyArrayOfAllPeople(self->_addressBook);
  if (ABDiagnosticsEnabled())
  {
    [(__CFArray *)v3 count];
    _ABLog2(7, "[ABPersonLinker removeAllLinks]", 562, 0, @"[ABPersonLinker] %@: removeAllLinks on %ld people", v4, v5, v6, self);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = [(__CFArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v3);
        }

        ABPersonUnlink(*(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [(__CFArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)copyArrayOfAllPeopleWithROWIDGreatThan:(int)than withLimit:(int64_t)limit
{
  addressBook = self->_addressBook;
  if (!addressBook)
  {
    return 0;
  }

  result = *(addressBook + 2);
  if (result)
  {
    return CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  }

  return result;
}

sqlite3_stmt *__67__ABPersonLinker_copyArrayOfAllPeopleWithROWIDGreatThan_withLimit___block_invoke(sqlite3_stmt *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = *(a2 + 8);
    if (result)
    {
      sqlite3_bind_int(result, 1, *(v3 + 10));
      v4 = *(a2 + 8);
      v5 = *(v3 + 8);

      return sqlite3_bind_int(v4, 2, v5);
    }
  }

  return result;
}

- (BOOL)linkRecentlyAddedPeopleWithLimit:(int64_t)limit
{
  IntegerProperty = ABAddressBookGetIntegerProperty(self->_addressBook);
  if (IntegerProperty)
  {
    v6 = IntegerProperty;
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  v7 = [(ABPersonLinker *)self copyArrayOfAllPeopleWithROWIDGreatThan:v6 withLimit:limit];
  v8 = [v7 count];
  if (ABDiagnosticsEnabled())
  {
    [v7 count];
    _ABLog2(7, "[ABPersonLinker linkRecentlyAddedPeopleWithLimit:]", 601, 0, @"[ABPersonLinker] (%@) link recently added people with last autolinked person ID %i, limit %ld, number of people found %ld", v9, v10, v11, self);
  }

  if ([v7 count])
  {
    v20 = 0;
    [(ABPersonLinker *)self makeLinksForAddedPeople:v7 inInitialLinking:0 countingOuterIterations:0 detectedLinkCount:&v20];
    RecordID = ABRecordGetRecordID([v7 lastObject]);
    ABAddressBookSetIntegerProperty(self->_addressBook, @"PersonLinkerLastProcessedPerson", RecordID, v13, v14, v15, v16, v17, v19);
    if (v20)
    {
      ABAddressBookSave(self->_addressBook, 0);
    }
  }

  return v8 == limit;
}

- (void)linkNewlyAddedPerson:(void *)person
{
  if (ABDiagnosticsEnabled())
  {
    v5 = ABPersonCopyCompositeName(person);
    if (ABDiagnosticsEnabled())
    {
      _ABLog2(7, "[ABPersonLinker linkNewlyAddedPerson:]", 627, 0, @"[ABPersonLinker] (%@) link newly added person %@", v6, v7, v8, self);
    }
  }

  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:person];

  [(ABPersonLinker *)self makeLinksForAddedPeople:v9 inInitialLinking:0 countingOuterIterations:0 detectedLinkCount:0];
}

- (uint64_t)otherPeopleInArray:(uint64_t)a1 matchingPerson:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"ABPersonLinker.m" lineNumber:260 description:{@"Wrong kind of person, expected an organization"}];
}

@end