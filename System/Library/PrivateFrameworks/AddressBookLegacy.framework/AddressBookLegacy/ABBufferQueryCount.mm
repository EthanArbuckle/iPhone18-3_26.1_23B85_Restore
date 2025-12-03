@interface ABBufferQueryCount
- (ABBufferQueryCount)initWithAddressBook:(void *)book predicate:(id)predicate includeLinkedContacts:(BOOL)contacts managedConfiguration:(id)configuration;
@end

@implementation ABBufferQueryCount

- (ABBufferQueryCount)initWithAddressBook:(void *)book predicate:(id)predicate includeLinkedContacts:(BOOL)contacts managedConfiguration:(id)configuration
{
  contactsCopy = contacts;
  v24.receiver = self;
  v24.super_class = ABBufferQueryCount;
  v10 = [(ABBufferQueryCount *)&v24 init];
  if (v10)
  {
    if (book && (CPRecordStoreGetDatabase(), CPSqliteDatabaseConnectionForWriting()))
    {
      v10->super._managedConfiguration = configuration;
      v10->super._predicate = predicate;
      if (contactsCopy)
      {
        v10->super._fetchLinkedContacts = contactsCopy;
      }

      v22[0] = 0;
      v22[1] = v22;
      v22[2] = 0x2020000000;
      v23 = 1;
      v10->super._sortOrder = -1;
      CFRetain(book);
      v10->super._addressBook = book;
      v11 = [@"SELECT count() FROM preferredmatched;" mutableCopy];
      -[ABBufferQuery prependWithClauseToQueryString:whereClause:](v10, "prependWithClauseToQueryString:whereClause:", v11, [predicate query]);
      v12 = CPSqliteConnectionStatementForSQL();
      v13 = v12;
      if (v12)
      {
        if (*(v12 + 8))
        {
          ABRegulatoryLogReadContactsData(book);
          [(ABBufferQuery *)v10 setStatement:v13];
          v14 = objc_opt_new();
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __95__ABBufferQueryCount_initWithAddressBook_predicate_includeLinkedContacts_managedConfiguration___block_invoke;
          v21[3] = &unk_1E7CCD470;
          v21[4] = v22;
          v21[5] = v13;
          [v14 setIntBinder:v21];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __95__ABBufferQueryCount_initWithAddressBook_predicate_includeLinkedContacts_managedConfiguration___block_invoke_2;
          v20[3] = &unk_1E7CCCE20;
          v20[4] = v22;
          v20[5] = v13;
          [v14 setStringBinder:v20];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __95__ABBufferQueryCount_initWithAddressBook_predicate_includeLinkedContacts_managedConfiguration___block_invoke_3;
          v19[3] = &unk_1E7CCD498;
          v19[4] = v22;
          v19[5] = v13;
          [v14 setBlobBinder:v19];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __95__ABBufferQueryCount_initWithAddressBook_predicate_includeLinkedContacts_managedConfiguration___block_invoke_4;
          v18[3] = &unk_1E7CCD4C0;
          v18[4] = v22;
          v18[5] = v13;
          [v14 setPointerBinder:v18];
          if ([predicate bindBlock])
          {
            bindBlock = [predicate bindBlock];
            (*(bindBlock + 16))(bindBlock, v14);
          }
        }
      }

      else
      {
        v16 = ABOSLogGeneral();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [ABBufferQuery initWithAddressBook:v11 predicate:v16 requestedProperties:? includeLinkedContacts:? sortOrder:? managedConfiguration:? identifierAuditStyle:? authorizationContext:?];
        }
      }

      CFRelease(v11);
      _Block_object_dispose(v22, 8);
    }

    else
    {

      return 0;
    }
  }

  return v10;
}

uint64_t __95__ABBufferQueryCount_initWithAddressBook_predicate_includeLinkedContacts_managedConfiguration___block_invoke(uint64_t a1, int a2)
{
  result = sqlite3_bind_int(*(*(a1 + 40) + 8), *(*(*(a1 + 32) + 8) + 24), a2);
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __95__ABBufferQueryCount_initWithAddressBook_predicate_includeLinkedContacts_managedConfiguration___block_invoke_2(uint64_t a1, uint64_t a2)
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

uint64_t __95__ABBufferQueryCount_initWithAddressBook_predicate_includeLinkedContacts_managedConfiguration___block_invoke_3(uint64_t a1, void *a2, int n)
{
  result = sqlite3_bind_blob(*(*(a1 + 40) + 8), *(*(*(a1 + 32) + 8) + 24), a2, n, 0);
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __95__ABBufferQueryCount_initWithAddressBook_predicate_includeLinkedContacts_managedConfiguration___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  result = sqlite3_bind_blob(*(*(a1 + 40) + 8), *(*(*(a1 + 32) + 8) + 24), &v4, 8, 0xFFFFFFFFFFFFFFFFLL);
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end