@interface ABBufferQuery
- (ABBufferQuery)initWithAddressBook:(void *)book predicate:(id)predicate requestedProperties:(__CFSet *)properties includeLinkedContacts:(BOOL)contacts sortOrder:(unsigned int)order managedConfiguration:(id)configuration identifierAuditStyle:(int64_t)style authorizationContext:(id)self0;
- (id)limitedAccessBundleIdentifierForAuthorizationContext:(id)context;
- (id)scopedStoresForManagedConfiguration:(id)configuration;
- (void)_initSetupPropertySet:(__CFSet *)set includeLinkedContacts:(BOOL)contacts hasLimitedAccess:(BOOL)access;
- (void)appendBindParameterMarkersToQueryString:(id)string count:(unint64_t)count;
- (void)appendCustomPropertySelectsToQueryString:(id)string;
- (void)appendFromClauseToQueryString:(id)string;
- (void)appendOrderByClauseToQueryString:(id)string;
- (void)appendWhereClauseToQueryString:(id)string hasLimitedAccess:(BOOL)access;
- (void)bindWhereClause:(id)clause limitedAccessBundleIdentifier:(id)identifier;
- (void)bindWithClause:(id)clause;
- (void)dealloc;
- (void)prependWithClauseToQueryString:(id)string whereClause:(id)clause;
- (void)setPropertyIndices:(__CFDictionary *)indices;
@end

@implementation ABBufferQuery

- (void)dealloc
{
  propertyIndices = self->_propertyIndices;
  if (propertyIndices)
  {
    CFRelease(propertyIndices);
  }

  if (self->_statement)
  {
    CPSqliteStatementReset();
  }

  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  v5.receiver = self;
  v5.super_class = ABBufferQuery;
  [(ABBufferQuery *)&v5 dealloc];
}

- (ABBufferQuery)initWithAddressBook:(void *)book predicate:(id)predicate requestedProperties:(__CFSet *)properties includeLinkedContacts:(BOOL)contacts sortOrder:(unsigned int)order managedConfiguration:(id)configuration identifierAuditStyle:(int64_t)style authorizationContext:(id)self0
{
  contactsCopy = contacts;
  v47.receiver = self;
  v47.super_class = ABBufferQuery;
  v16 = [(ABBufferQuery *)&v47 init];
  if (v16)
  {
    if (book && (CPRecordStoreGetDatabase(), CPSqliteDatabaseConnectionForWriting()))
    {
      v16->_contactidentifierAuditMode = style;
      v16->_managedConfiguration = configuration;
      v16->_predicate = predicate;
      MutableCopy = CFSetCreateMutableCopy(0, 0, properties);
      v18 = MutableCopy;
      if (contactsCopy)
      {
        CFSetAddValue(MutableCopy, kABPersonLinkProperty);
      }

      v45[0] = 0;
      v45[1] = v45;
      v45[2] = 0x2020000000;
      v46 = 1;
      v16->_sortOrder = order;
      CFRetain(book);
      v16->_addressBook = book;
      v19 = [(ABBufferQuery *)v16 limitedAccessBundleIdentifierForAuthorizationContext:context];
      v20 = v19;
      if (v19)
      {
        v21 = [v19 length] != 0;
      }

      else
      {
        v21 = 0;
      }

      [(ABBufferQuery *)v16 _initSetupPropertySet:v18 includeLinkedContacts:contactsCopy hasLimitedAccess:v21];
      v38 = v20;
      v16->_scopedStoreIdentifiers = [(ABBufferQuery *)v16 scopedStoresForManagedConfiguration:configuration];
      PersonRecordDescriptorForPrefetchQueries = ABCAddressBookGetPersonRecordDescriptorForPrefetchQueries(book);
      v44 = 0;
      v23 = *(PersonRecordDescriptorForPrefetchQueries + 72);
      if (v23)
      {
        v24 = 0;
        v25 = (*(PersonRecordDescriptorForPrefetchQueries + 80) + 24);
        do
        {
          v26 = *(v25 - 4);
          if (v25[2] == 5)
          {
            if (!v26)
            {
              *(v25 - 4) = 2;
            }
          }

          else if (!v26)
          {
            goto LABEL_25;
          }

          if (!CFSetContainsValue(v18, v24) || (v24 != kABCPersonWallpaperProperty ? (v27 = v24 == kABCPersonWatchWallpaperImageDataProperty) : (v27 = 1), !v27 ? (v28 = v24 == kABCPersonWallpaperMetadataProperty) : (v28 = 1), v28))
          {
LABEL_25:
            v29 = *v25 | 1;
            goto LABEL_26;
          }

          v29 = *v25 & 0xFFFFFFFE;
LABEL_26:
          *v25 = v29;
          v25 += 10;
          ++v24;
        }

        while (v23 != v24);
      }

      ColumnListWithAliasAndExtraColumns = CPRecordStoreCreateColumnListWithAliasAndExtraColumns();
      v16->_propertyIndices = v44;
      -[ABBufferQuery prependWithClauseToQueryString:whereClause:](v16, "prependWithClauseToQueryString:whereClause:", ColumnListWithAliasAndExtraColumns, [predicate query]);
      [(ABBufferQuery *)v16 appendCustomPropertySelectsToQueryString:ColumnListWithAliasAndExtraColumns];
      [(ABBufferQuery *)v16 appendFromClauseToQueryString:ColumnListWithAliasAndExtraColumns];
      if (v21)
      {
        [ABLimitedAccess appendLimitedAccessLeftJoinToQueryString:ColumnListWithAliasAndExtraColumns];
      }

      [(ABBufferQuery *)v16 appendWhereClauseToQueryString:ColumnListWithAliasAndExtraColumns hasLimitedAccess:v21];
      [(ABBufferQuery *)v16 appendOrderByClauseToQueryString:ColumnListWithAliasAndExtraColumns];
      v31 = CPSqliteConnectionStatementForSQL();
      v32 = v31;
      if (v31)
      {
        if (*(v31 + 8))
        {
          ABRegulatoryLogReadContactsData(book);
          v16->_statement = v32;
          v33 = objc_opt_new();
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __162__ABBufferQuery_initWithAddressBook_predicate_requestedProperties_includeLinkedContacts_sortOrder_managedConfiguration_identifierAuditStyle_authorizationContext___block_invoke;
          v43[3] = &unk_1E7CCD470;
          v43[4] = v45;
          v43[5] = v32;
          [v33 setIntBinder:v43];
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __162__ABBufferQuery_initWithAddressBook_predicate_requestedProperties_includeLinkedContacts_sortOrder_managedConfiguration_identifierAuditStyle_authorizationContext___block_invoke_2;
          v42[3] = &unk_1E7CCCE20;
          v42[4] = v45;
          v42[5] = v32;
          [v33 setStringBinder:v42];
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __162__ABBufferQuery_initWithAddressBook_predicate_requestedProperties_includeLinkedContacts_sortOrder_managedConfiguration_identifierAuditStyle_authorizationContext___block_invoke_3;
          v41[3] = &unk_1E7CCD498;
          v41[4] = v45;
          v41[5] = v32;
          [v33 setBlobBinder:v41];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __162__ABBufferQuery_initWithAddressBook_predicate_requestedProperties_includeLinkedContacts_sortOrder_managedConfiguration_identifierAuditStyle_authorizationContext___block_invoke_4;
          v40[3] = &unk_1E7CCD4C0;
          v40[4] = v45;
          v40[5] = v32;
          [v33 setPointerBinder:v40];
          if ([predicate bindBlock])
          {
            bindBlock = [predicate bindBlock];
            (*(bindBlock + 16))(bindBlock, v33);
          }

          [(ABBufferQuery *)v16 bindWithClause:v33];
          requestedMultivalueIdentifiers = v16->_requestedMultivalueIdentifiers;
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __162__ABBufferQuery_initWithAddressBook_predicate_requestedProperties_includeLinkedContacts_sortOrder_managedConfiguration_identifierAuditStyle_authorizationContext___block_invoke_5;
          v39[3] = &unk_1E7CCD260;
          v39[4] = v33;
          [(NSIndexSet *)requestedMultivalueIdentifiers enumerateIndexesUsingBlock:v39];
          [(ABBufferQuery *)v16 bindWhereClause:v33 limitedAccessBundleIdentifier:v38];
        }
      }

      else
      {
        v36 = ABOSLogGeneral();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [ABBufferQuery initWithAddressBook:v36 predicate:? requestedProperties:? includeLinkedContacts:? sortOrder:? managedConfiguration:? identifierAuditStyle:? authorizationContext:?];
        }
      }

      CFRelease(ColumnListWithAliasAndExtraColumns);
      CFRelease(v18);
      _Block_object_dispose(v45, 8);
    }

    else
    {

      return 0;
    }
  }

  return v16;
}

uint64_t __162__ABBufferQuery_initWithAddressBook_predicate_requestedProperties_includeLinkedContacts_sortOrder_managedConfiguration_identifierAuditStyle_authorizationContext___block_invoke(uint64_t a1, int a2)
{
  result = sqlite3_bind_int(*(*(a1 + 40) + 8), *(*(*(a1 + 32) + 8) + 24), a2);
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __162__ABBufferQuery_initWithAddressBook_predicate_requestedProperties_includeLinkedContacts_sortOrder_managedConfiguration_identifierAuditStyle_authorizationContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 40) + 8);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (a2)
  {
    v6 = _CPCreateUTF8StringFromCFString();
    result = sqlite3_bind_text(v3, v5, v6, -1, MEMORY[0x1E69E9B38]);
  }

  else
  {
    result = sqlite3_bind_null(*(*(a1 + 40) + 8), *(v4 + 24));
  }

  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __162__ABBufferQuery_initWithAddressBook_predicate_requestedProperties_includeLinkedContacts_sortOrder_managedConfiguration_identifierAuditStyle_authorizationContext___block_invoke_3(uint64_t a1, void *a2, int n)
{
  result = sqlite3_bind_blob(*(*(a1 + 40) + 8), *(*(*(a1 + 32) + 8) + 24), a2, n, 0);
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __162__ABBufferQuery_initWithAddressBook_predicate_requestedProperties_includeLinkedContacts_sortOrder_managedConfiguration_identifierAuditStyle_authorizationContext___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  result = sqlite3_bind_blob(*(*(a1 + 40) + 8), *(*(*(a1 + 32) + 8) + 24), &v4, 8, 0xFFFFFFFFFFFFFFFFLL);
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __162__ABBufferQuery_initWithAddressBook_predicate_requestedProperties_includeLinkedContacts_sortOrder_managedConfiguration_identifierAuditStyle_authorizationContext___block_invoke_5(uint64_t a1)
{
  v1 = *([*(a1 + 32) intBinder] + 16);

  return v1();
}

- (void)_initSetupPropertySet:(__CFSet *)set includeLinkedContacts:(BOOL)contacts hasLimitedAccess:(BOOL)access
{
  accessCopy = access;
  v15[1] = *MEMORY[0x1E69E9840];
  Count = CFSetGetCount(set);
  v10 = (v15 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
  CFSetGetValues(set, v10);
  v11 = objc_opt_new();
  for (i = objc_opt_new(); Count; --Count)
  {
    [(NSIndexSet *)v11 addIndex:*v10];
    TypeOfProperty = ABPersonGetTypeOfProperty(*v10);
    if ((TypeOfProperty & 0x100) != 0)
    {
      [(NSIndexSet *)i addIndex:*v10];
      self->_needsMultivalueTable = 1;
    }

    if (TypeOfProperty == 261)
    {
      self->_needsMultivalueEntryTable = 1;
    }

    ++v10;
  }

  if (accessCopy)
  {
    [(NSIndexSet *)v11 addIndex:kABCPersonLinkUUIDProperty];
  }

  if ([(NSIndexSet *)v11 containsIndex:kABCPersonLinkUUIDProperty])
  {
    v14 = 1;
  }

  else
  {
    v14 = [(NSIndexSet *)v11 containsIndex:kABCPersonIsPreferredImageProperty];
  }

  self->_needsPersonLinkTable = v14;
  self->_requestedImageData = [(NSIndexSet *)v11 containsIndex:kABCPersonImageDataProperty];
  self->_requestedImageCropRect = [(NSIndexSet *)v11 containsIndex:kABCPersonImageCropRectProperty];
  self->_requestedImageThumbnail = [(NSIndexSet *)v11 containsIndex:kABCPersonThumbnailDataProperty];
  self->_requestedImageFullscreenData = [(NSIndexSet *)v11 containsIndex:kABCPersonFullscreenImageDataProperty];
  self->_requestedSyncImageData = [(NSIndexSet *)v11 containsIndex:kABCPersonSyncImageDataProperty];
  self->_requestedHasImageData = [(NSIndexSet *)v11 containsIndex:kABCPersonHasImageDataProperty];
  self->_requestedWallpaperData = [(NSIndexSet *)v11 containsIndex:kABCPersonWallpaperProperty];
  self->_requestedWatchWallpaperImageData = [(NSIndexSet *)v11 containsIndex:kABCPersonWatchWallpaperImageDataProperty];
  self->_requestedWallpaperMetadata = [(NSIndexSet *)v11 containsIndex:kABCPersonWallpaperMetadataProperty];
  self->_requestedAvatarRecipeData = [(NSIndexSet *)v11 containsIndex:kABCPersonAvatarRecipeDataProperty];
  self->_fetchLinkedContacts = contacts;
  self->_requestedPropertyIdentifiers = v11;
  self->_requestedMultivalueIdentifiers = i;
}

- (id)scopedStoresForManagedConfiguration:(id)configuration
{
  if (([configuration deviceHasManagementRestrictions] & 1) == 0 && !objc_msgSend(configuration, "hasContactProviderRestrictions"))
  {
    return 0;
  }

  addressBook = [(ABBufferQuery *)self addressBook];

  return ABAddressBookIndexSetOfAllowedSourceIdentifiersIncludingDisabledSources(addressBook, configuration, 0);
}

- (void)setPropertyIndices:(__CFDictionary *)indices
{
  propertyIndices = self->_propertyIndices;
  if (propertyIndices != indices)
  {
    if (propertyIndices)
    {
      CFRelease(propertyIndices);
    }

    if (indices)
    {
      CFRetain(indices);
    }

    self->_propertyIndices = indices;
  }
}

- (void)appendCustomPropertySelectsToQueryString:(id)string
{
  requestedPropertyIdentifiers = [(ABBufferQuery *)self requestedPropertyIdentifiers];
  if ([(NSIndexSet *)requestedPropertyIdentifiers containsIndex:kABCPersonLinkUUIDProperty])
  {
    [string appendString:{@", abplink.guid"}];
  }

  requestedPropertyIdentifiers2 = [(ABBufferQuery *)self requestedPropertyIdentifiers];
  if ([(NSIndexSet *)requestedPropertyIdentifiers2 containsIndex:kABCPersonIsPreferredImageProperty])
  {
    [string appendString:{@", (abplink.PreferredImagePersonID = abp.rowid)"}];
  }

  if ([(NSIndexSet *)[(ABBufferQuery *)self requestedMultivalueIdentifiers] count])
  {
    [string appendString:{@", abmv.property, abmv.identifier, abmv.guid, abmv.value, abmvlabel.value"}];
    if ([(ABBufferQuery *)self needsMultivalueEntryTable])
    {

      [string appendString:{@", abmvekey.value, abmve.value"}];
    }
  }
}

- (void)prependWithClauseToQueryString:(id)string whereClause:(id)clause
{
  string = [MEMORY[0x1E696AD60] string];
  if ([(ABBufferQuery *)self sortOrder])
  {
    if ([(ABBufferQuery *)self sortOrder]== 1)
    {
      v8 = @", LastSortLanguageIndex, LastSortSection, LastSort ";
    }

    else
    {
      if ([(ABBufferQuery *)self sortOrder]!= -1)
      {
        [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"ABBufferQuery: unrecognized sort order: %u", -[ABBufferQuery sortOrder](self, "sortOrder")), 0}];
      }

      v8 = &stru_1F2FE2718;
    }
  }

  else
  {
    v8 = @", FirstSortLanguageIndex, FirstSortSection, FirstSort ";
  }

  objc_msgSend(string, "appendFormat:", @"WITH preferredmatched(rowid %@) as("), v8;
  if ([(ABBufferQuery *)self fetchLinkedContacts])
  {
    objc_msgSend(string, "appendString:", @"WITH matched(rowid, personlink) as(SELECT rowid, personlink from ABPerson ");
    if ([clause length])
    {
      [string appendFormat:@"WHERE rowid in(%@) ", clause];
      v9 = @"AND ";
    }

    else
    {
      v9 = @"WHERE ";
    }

    if ([(ABBufferQuery *)self scopedStoreIdentifiers])
    {
      [string appendFormat:@"%@ StoreID IN", v9];
      [(ABBufferQuery *)self appendBindParameterMarkersToQueryString:string count:[(NSIndexSet *)[(ABBufferQuery *)self scopedStoreIdentifiers] count]];
    }

    [string appendString:@" "]);
    objc_msgSend(string, "appendFormat:", @"SELECT rowid %@ FROM ABPerson abp WHERE abp.rowid IN (SELECT rowid FROM matched WHERE matched.personlink = -1 UNION "), v8;
    if ([(ABBufferQuery *)self scopedStoreIdentifiers])
    {
      v11 = @"SELECT ab_allowed_preferred_contact(abp.rowid, abp.StoreID, abp.IsPreferredName, ?) FROM ABPerson abp JOIN ABPersonLink abpl on abpl.rowid = abp.PersonLink WHERE abpl.rowid in (select personlink from matched) GROUP BY abpl.rowid ");
    }

    else
    {
      v11 = @"SELECT PreferredNamePersonID FROM ABPersonLink abpl WHERE abpl.rowid IN (SELECT personlink FROM matched) ");
    }

    [string appendFormat:v11];
  }

  else
  {
    objc_msgSend(string, "appendFormat:", @"SELECT rowid %@ FROM ABPerson where rowid in("), v8;
    if ([clause length])
    {
      clauseCopy = clause;
    }

    else
    {
      clauseCopy = @"SELECT rowid FROM ABPerson ";
    }

    [string appendString:clauseCopy];
    [string appendString:@" "]);
    if ([(ABBufferQuery *)self scopedStoreIdentifiers])
    {
      [string appendString:@"AND StoreID IN"];
      [(ABBufferQuery *)self appendBindParameterMarkersToQueryString:string count:[(NSIndexSet *)[(ABBufferQuery *)self scopedStoreIdentifiers] count]];
    }
  }

  [string appendString:@" "]);

  [string insertString:string atIndex:0];
}

- (void)bindWithClause:(id)clause
{
  if ([(ABBufferQuery *)self scopedStoreIdentifiers])
  {
    scopedStoreIdentifiers = [(ABBufferQuery *)self scopedStoreIdentifiers];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __32__ABBufferQuery_bindWithClause___block_invoke;
    v7[3] = &unk_1E7CCD260;
    v7[4] = clause;
    [(NSIndexSet *)scopedStoreIdentifiers enumerateIndexesUsingBlock:v7];
    if ([(ABBufferQuery *)self fetchLinkedContacts])
    {
      blobBinder = [clause blobBinder];
      (*(blobBinder + 16))(blobBinder, [(ABBufferQuery *)self scopedStoreIdentifiers], 8);
    }
  }
}

uint64_t __32__ABBufferQuery_bindWithClause___block_invoke(uint64_t a1)
{
  v1 = *([*(a1 + 32) intBinder] + 16);

  return v1();
}

- (void)appendFromClauseToQueryString:(id)string
{
  [string appendString:@" FROM preferredmatched "];
  if ([(ABBufferQuery *)self fetchLinkedContacts])
  {
    [string appendString:@" LEFT JOIN ABPerson abp2 on (abp2.rowid = preferredmatched.rowid) "];
    v5 = @" JOIN ABPerson abp on (abp2.personlink != -1 and abp2.personlink = abp.personlink) OR (abp.rowid = abp2.rowid) ";
  }

  else
  {
    v5 = @" JOIN ABPerson abp on (abp.rowid = preferredmatched.rowid) ";
  }

  [string appendString:v5];
  if ([(ABBufferQuery *)self needsPersonLinkTable])
  {
    [string appendString:@" LEFT JOIN ABPersonLink abplink on abp.PersonLink = abplink.ROWID "];
  }

  if ([(ABBufferQuery *)self needsMultivalueTable])
  {
    [string appendString:@" LEFT JOIN ABMultivalue abmv ON abp.ROWID = abmv.record_id  AND +abmv.property IN "];
    [(ABBufferQuery *)self appendBindParameterMarkersToQueryString:string count:[(NSIndexSet *)[(ABBufferQuery *)self requestedMultivalueIdentifiers] count]];
    [string appendString:@" LEFT JOIN ABMultivalueLabel abmvlabel on abmv.label = abmvlabel.ROWID "];
    if ([(ABBufferQuery *)self needsMultivalueEntryTable])
    {

      [string appendString:@" LEFT JOIN ABMultiValueEntry abmve on abmve.parent_id = abmv.UID LEFT JOIN ABMultiValueEntryKey abmvekey on abmve.key = abmvekey.rowid "];
    }
  }
}

- (id)limitedAccessBundleIdentifierForAuthorizationContext:(id)context
{
  v9 = *MEMORY[0x1E69E9840];
  if (!+[ABLimitedAccess isLimitedAccessFF_Enabled](ABLimitedAccess, "isLimitedAccessFF_Enabled") || ![context isLimitedAccessGranted])
  {
    return 0;
  }

  clientBundleIdentifier = [context clientBundleIdentifier];
  v5 = ABOSLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = clientBundleIdentifier;
    _os_log_impl(&dword_1B7EFB000, v5, OS_LOG_TYPE_DEFAULT, "ABBufferQuery limited access for bundleIdentifier: %{public}@", &v7, 0xCu);
  }

  return clientBundleIdentifier;
}

- (void)appendWhereClauseToQueryString:(id)string hasLimitedAccess:(BOOL)access
{
  accessCopy = access;
  array = [MEMORY[0x1E695DF70] array];
  if (accessCopy)
  {
    [array addObject:{+[ABLimitedAccess limitedAccessLeftJoinWhereClause](ABLimitedAccess, "limitedAccessLeftJoinWhereClause")}];
  }

  if ([(ABBufferQuery *)self scopedStoreIdentifiers])
  {
    v8 = [MEMORY[0x1E696AD60] stringWithString:@" abp.StoreID IN "];
    [(ABBufferQuery *)self appendBindParameterMarkersToQueryString:v8 count:[(NSIndexSet *)[(ABBufferQuery *)self scopedStoreIdentifiers] count]];
    [array addObject:v8];
  }

  if ([array count])
  {
    [string appendString:@" WHERE "];
    v9 = [array componentsJoinedByString:@" AND "];

    [string appendString:v9];
  }
}

- (void)bindWhereClause:(id)clause limitedAccessBundleIdentifier:(id)identifier
{
  if (identifier && [identifier length])
  {
    stringBinder = [clause stringBinder];
    (*(stringBinder + 16))(stringBinder, identifier);
  }

  if ([(ABBufferQuery *)self scopedStoreIdentifiers])
  {
    scopedStoreIdentifiers = [(ABBufferQuery *)self scopedStoreIdentifiers];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__ABBufferQuery_bindWhereClause_limitedAccessBundleIdentifier___block_invoke;
    v9[3] = &unk_1E7CCD260;
    v9[4] = clause;
    [(NSIndexSet *)scopedStoreIdentifiers enumerateIndexesUsingBlock:v9];
  }
}

uint64_t __63__ABBufferQuery_bindWhereClause_limitedAccessBundleIdentifier___block_invoke(uint64_t a1)
{
  v1 = *([*(a1 + 32) intBinder] + 16);

  return v1();
}

- (void)appendOrderByClauseToQueryString:(id)string
{
  [string appendString:@" ORDER BY "];
  if (![(ABBufferQuery *)self sortOrder])
  {
    v5 = @"preferredmatched.FirstSortLanguageIndex, preferredmatched.FirstSortSection, preferredmatched.FirstSort ";
    goto LABEL_5;
  }

  if ([(ABBufferQuery *)self sortOrder]== 1)
  {
    v5 = @"preferredmatched.LastSortLanguageIndex, preferredmatched.LastSortSection, preferredmatched.LastSort ";
LABEL_5:
    [string appendString:v5];
    if (![(ABBufferQuery *)self fetchLinkedContacts])
    {
LABEL_11:
      [string appendFormat:@", "];
      goto LABEL_12;
    }

    [string appendFormat:@", "];
LABEL_10:
    [string appendString:@"abp.PersonLink "];
    goto LABEL_11;
  }

  if ([(ABBufferQuery *)self sortOrder]!= -1)
  {
    [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"ABBufferQuery: unrecognized sorte order: %u", -[ABBufferQuery sortOrder](self, "sortOrder")), 0}];
  }

  if ([(ABBufferQuery *)self fetchLinkedContacts])
  {
    goto LABEL_10;
  }

LABEL_12:
  [string appendString:@"abp.ROWID "];
  if ([(ABBufferQuery *)self needsMultivalueTable])
  {

    [string appendString:{@", abmv.property, abmv.UID "}];
  }
}

- (void)appendBindParameterMarkersToQueryString:(id)string count:(unint64_t)count
{
  objc_msgSend(string, "appendString:", @" (");
  if (count)
  {
    v6 = 0;
    do
    {
      if (v6)
      {
        v7 = @", ?";
      }

      else
      {
        v7 = @" ?";
      }

      [string appendString:v7];
      ++v6;
    }

    while (count != v6);
  }

  [string appendString:@""]);
}

- (void)initWithAddressBook:(uint64_t)a1 predicate:(NSObject *)a2 requestedProperties:includeLinkedContacts:sortOrder:managedConfiguration:identifierAuditStyle:authorizationContext:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7EFB000, a2, OS_LOG_TYPE_ERROR, "error in SQL preparation of statement: %@", &v2, 0xCu);
}

@end