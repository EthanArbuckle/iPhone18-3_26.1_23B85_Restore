@interface ABBufferQueryCursor
- (ABBufferQueryCursor)initWithAddressBook:(void *)book predicate:(id)predicate propertyIdentifierSet:(__CFSet *)set includeLinkedContacts:(BOOL)contacts sortOrder:(unsigned int)order suggestedContactsPerBatch:(int64_t)batch managedConfiguration:(id)configuration identifierAuditMode:(int64_t)self0 authorizationContext:(id)self1;
- (ABBufferQueryCursor)initWithQuery:(id)query batchSize:(int64_t)size;
- (void)dealloc;
- (void)fetchNextBatchWithReply:(id)reply;
@end

@implementation ABBufferQueryCursor

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  incompleteBlob = self->_incompleteBlob;
  if (incompleteBlob)
  {
    sqlite3_blob_close(incompleteBlob);
  }

  if (self->_mutableData)
  {
    v4 = ABOSLogImageMetadata();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    mutableData = self->_mutableData;
    if (v5)
    {
      v7 = [(NSMutableData *)self->_mutableData length];
      *buf = 134218496;
      selfCopy = self;
      v11 = 2048;
      v12 = mutableData;
      v13 = 2048;
      v14 = v7;
      _os_log_impl(&dword_1B7EFB000, v4, OS_LOG_TYPE_DEFAULT, "ABBufferQueryCursor (%p) dealloc, releasing buffer (%p) [%lu]", buf, 0x20u);
      mutableData = self->_mutableData;
    }
  }

  else
  {
    mutableData = 0;
  }

  v8.receiver = self;
  v8.super_class = ABBufferQueryCursor;
  [(ABBufferQueryCursor *)&v8 dealloc];
}

- (ABBufferQueryCursor)initWithAddressBook:(void *)book predicate:(id)predicate propertyIdentifierSet:(__CFSet *)set includeLinkedContacts:(BOOL)contacts sortOrder:(unsigned int)order suggestedContactsPerBatch:(int64_t)batch managedConfiguration:(id)configuration identifierAuditMode:(int64_t)self0 authorizationContext:(id)self1
{
  v13 = [[ABBufferQuery alloc] initWithAddressBook:book predicate:predicate requestedProperties:set includeLinkedContacts:contacts sortOrder:*&order managedConfiguration:configuration identifierAuditStyle:mode authorizationContext:context];
  if (v13)
  {
    v14 = v13;
    v15 = [(ABBufferQueryCursor *)self initWithQuery:v13 batchSize:batch];

    return v15;
  }

  else
  {

    return 0;
  }
}

- (ABBufferQueryCursor)initWithQuery:(id)query batchSize:(int64_t)size
{
  v46 = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = ABBufferQueryCursor;
  v6 = [(ABBufferQueryCursor *)&v41 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 5) = -1;
    *(v6 + 12) = -1;
    Count = CFDictionaryGetCount([query propertyIndices]);
    sizeCopy = 2000;
    if (size)
    {
      sizeCopy = size;
    }

    *(v7 + 18) = 3145728;
    *(v7 + 19) = sizeCopy;
    propertyIndices = [query propertyIndices];
    if (!CFDictionaryGetValueIfPresent(propertyIndices, kABPersonLinkProperty, (v7 + 60)))
    {
      *(v7 + 15) = -1;
    }

    requestedPropertyIdentifiers = [query requestedPropertyIdentifiers];
    v12 = [requestedPropertyIdentifiers containsIndex:kABCPersonLinkUUIDProperty];
    if (v12)
    {
      v13 = Count + 2;
    }

    else
    {
      v13 = Count + 1;
    }

    if (v12)
    {
      v14 = Count + 1;
    }

    else
    {
      v14 = -1;
    }

    *(v7 + 13) = v14;
    requestedPropertyIdentifiers2 = [query requestedPropertyIdentifiers];
    v16 = [requestedPropertyIdentifiers2 containsIndex:kABCPersonIsPreferredImageProperty];
    v17 = v13 + v16;
    if (v16)
    {
      v18 = v13;
    }

    else
    {
      v18 = -1;
    }

    *(v7 + 14) = v18;
    needsMultivalueTable = [query needsMultivalueTable];
    v20 = v17 + needsMultivalueTable;
    if (needsMultivalueTable)
    {
      v21 = v17;
    }

    else
    {
      v21 = -1;
    }

    *(v7 + 6) = v21;
    needsMultivalueTable2 = [query needsMultivalueTable];
    v23 = v20 + needsMultivalueTable2;
    if (needsMultivalueTable2)
    {
      v24 = v20;
    }

    else
    {
      v24 = -1;
    }

    *(v7 + 7) = v24;
    needsMultivalueTable3 = [query needsMultivalueTable];
    v26 = v23 + needsMultivalueTable3;
    if (needsMultivalueTable3)
    {
      v27 = v23;
    }

    else
    {
      v27 = -1;
    }

    *(v7 + 8) = v27;
    needsMultivalueTable4 = [query needsMultivalueTable];
    v29 = v26 + needsMultivalueTable4;
    if (needsMultivalueTable4)
    {
      v30 = v26;
    }

    else
    {
      v30 = -1;
    }

    *(v7 + 9) = v30;
    needsMultivalueTable5 = [query needsMultivalueTable];
    v32 = v29 + needsMultivalueTable5;
    if (needsMultivalueTable5)
    {
      v33 = v29;
    }

    else
    {
      v33 = -1;
    }

    *(v7 + 10) = v33;
    needsMultivalueEntryTable = [query needsMultivalueEntryTable];
    v35 = v32 + needsMultivalueEntryTable;
    if (needsMultivalueEntryTable)
    {
      v36 = v32;
    }

    else
    {
      v36 = -1;
    }

    *(v7 + 11) = v36;
    if ([query needsMultivalueEntryTable])
    {
      v37 = v35;
    }

    else
    {
      v37 = -1;
    }

    *(v7 + 12) = v37;
    *(v7 + 21) = query;
    *(v7 + 8) = objc_opt_new();
    v38 = ABOSLogImageMetadata();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(v7 + 8);
      *buf = 134218240;
      v43 = v7;
      v44 = 2048;
      v45 = v39;
      _os_log_impl(&dword_1B7EFB000, v38, OS_LOG_TYPE_DEFAULT, "ABBufferQueryCursor (%p) created buffer (%p)", buf, 0x16u);
    }

    *(v7 + 9) = objc_opt_new();
    if ([objc_msgSend(query "predicate")])
    {
      *(v7 + 10) = objc_alloc_init(MEMORY[0x1E695DF90]);
    }
  }

  return v7;
}

- (void)fetchNextBatchWithReply:(id)reply
{
  v83 = *MEMORY[0x1E69E9840];
  statement = [(ABBufferQuery *)self->_query statement];
  if (statement)
  {
    v6 = statement;
    if (statement->var1)
    {
      if (statement->var0 && statement->var0->var1)
      {
        v61 = kABPersonWallpaperMetadataProperty;
        v62 = __PAIR64__(kABPersonWallpaperProperty, kABPersonWatchWallpaperImageDataProperty);
        replyCopy = reply;
        while (1)
        {
          do
          {
            if (![(ABBufferQueryCursor *)self resumeToken])
            {
              v7 = sqlite3_step(v6[1]);
              if (v7 != 100)
              {
                if (v7 == 101)
                {
                  v56 = objc_alloc_init(MEMORY[0x1E69966D0]);
                  [v56 setData:self->_mutableData];
                  [v56 setMatchInfo:self->_matchInfo];
                  [v56 setIdentifierAccountingData:self->_contactIdentifiers];
                  (*(reply + 2))(reply, v56, 1, 0);
                  CPSqliteStatementReset();
                  [(ABBufferQuery *)self->_query setStatement:0];
                }

                else
                {
                  v57 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ABSQLiteErrorDomain" code:sqlite3_errcode(*(*v6 + 1)) userInfo:0];
                  v58 = ABOSLogGeneral();
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    [(ABBufferQueryCursor *)v6 fetchNextBatchWithReply:v58];
                  }

                  (*(reply + 2))(reply, 0, 0, v57);
                }

                goto LABEL_70;
              }
            }

            v68[0] = MEMORY[0x1E69E9820];
            v68[1] = 3221225472;
            v69 = __ABAddressBookPersonBufferRowHandler_block_invoke;
            v70 = &unk_1E7CCD4E8;
            selfCopy = self;
            replyCopy2 = reply;
          }

          while (![[(ABBufferQueryCursor *)self query] propertyIndices]);
          v8 = sqlite3_column_int(v6[1], 0);
          if ([(ABBufferQueryCursor *)self currentRecordID]!= v8)
          {
            [(ABBufferQueryCursor *)self setHasFoundAnyImageDataForCurrentContact:0];
            [(ABBufferQueryCursor *)self setCurrentPropertyID:0xFFFFFFFFLL];
          }

          if ([(ABBufferQueryCursor *)self currentRecordID]!= v8 || [(ABBufferQueryCursor *)self resumeToken])
          {
            break;
          }

LABEL_54:
          if (![(NSIndexSet *)[[(ABBufferQueryCursor *)self query] requestedMultivalueIdentifiers] count]|| sqlite3_column_type(v6[1], [(ABBufferQueryCursor *)self multivaluePropertyIDColumn]) == 5)
          {
            goto LABEL_66;
          }

          v37 = sqlite3_column_int(v6[1], [(ABBufferQueryCursor *)self multivaluePropertyIDColumn]);
          TypeOfProperty = ABPersonGetTypeOfProperty(v37);
          v39 = sqlite3_column_int(v6[1], [(ABBufferQueryCursor *)self multivalueIdentifierColumn]);
          if ([(ABBufferQueryCursor *)self currentPropertyID]== v37)
          {
            if ([(ABBufferQueryCursor *)self currentMultivalueIdentifier]== v39)
            {
              goto LABEL_64;
            }
          }

          else
          {
            [(ABBufferQueryCursor *)self setCurrentPropertyID:v37];
            buf[0] = 3;
            *&buf[1] = v37;
            [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] appendBytes:buf length:5];
          }

          [(ABBufferQueryCursor *)self setCurrentMultivalueIdentifier:v39];
          v40 = sqlite3_column_bytes(v6[1], [(ABBufferQueryCursor *)self multivalueUUIDColumn]);
          v41 = sqlite3_column_blob(v6[1], [(ABBufferQueryCursor *)self multivalueUUIDColumn]);
          v42 = sqlite3_column_bytes(v6[1], [(ABBufferQueryCursor *)self multivalueLabelColumn]);
          *v73 = 0;
          v74 = 0;
          ppBlob = 0;
          v43 = ABPersonGetTypeOfProperty([(ABBufferQueryCursor *)self currentPropertyID]);
          if (v43 == 261)
          {
            v44 = 0;
            v45 = 0;
          }

          else
          {
            GetBytePointerAndLengthForTypeAtColumn(v6, v43, [(ABBufferQueryCursor *)self multivalueValueColumn], v73, &ppBlob, &v74);
            v45 = ppBlob;
            v44 = *v73;
          }

          buf[0] = 4;
          *&buf[5] = v40;
          *&buf[1] = v39;
          *&buf[13] = v42;
          *&buf[21] = v45;
          [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] appendBytes:buf length:29];
          [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] appendBytes:v41 length:v40];
          [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] appendBytes:sqlite3_column_blob(v6[1] length:[(ABBufferQueryCursor *)self multivalueLabelColumn]), v42];
          [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] appendBytes:v44 length:v45];
LABEL_64:
          reply = replyCopy;
          if (TypeOfProperty == 261)
          {
            buf[0] = 5;
            v46 = sqlite3_column_bytes(v6[1], [(ABBufferQueryCursor *)self multivalueEntryKeyColumn]);
            v47 = sqlite3_column_bytes(v6[1], [(ABBufferQueryCursor *)self multivalueEntryValueColumn]);
            *&buf[1] = v46;
            v48 = v47;
            *&buf[9] = v47;
            [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] appendBytes:buf length:17];
            [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] appendBytes:sqlite3_column_blob(v6[1] length:[(ABBufferQueryCursor *)self multivalueEntryKeyColumn]), v46];
            [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] appendBytes:sqlite3_column_blob(v6[1] length:[(ABBufferQueryCursor *)self multivalueEntryValueColumn]), v48];
          }

LABEL_66:
          matchInfoProvider = [(ABSQLPredicate *)[[(ABBufferQueryCursor *)self query] predicate] matchInfoProvider];
          if (matchInfoProvider)
          {
            v50 = matchInfoProvider[2](matchInfoProvider, v8);
            if (v50)
            {
              v51 = v50;
              matchInfo = [(ABBufferQueryCursor *)self matchInfo];
              -[NSMutableDictionary setObject:forKey:](matchInfo, "setObject:forKey:", v51, [MEMORY[0x1E696AD98] numberWithInt:v8]);
            }
          }
        }

        [(ABBufferQueryCursor *)self setCurrentRecordID:v8];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __ABAddressBookPersonBufferRowHandler_block_invoke_524;
        v66[3] = &unk_1E7CCD510;
        v66[4] = self;
        v66[5] = v6;
        v67 = v8;
        if (v69(v68, v66))
        {
          return;
        }

        AppendBaseProperties(v6, self);
        if ([(ABBufferQueryCursor *)self resumeToken])
        {
LABEL_30:
          if (![(ABBufferQueryCursor *)self resumeToken])
          {
            if ([[(ABBufferQueryCursor *)self query] requestedWallpaperData])
            {
              AppendPropertyBlobData(v8, SHIDWORD(v62), self);
            }

            if ([[(ABBufferQueryCursor *)self query] requestedWatchWallpaperImageData])
            {
              AppendPropertyBlobData(v8, v62, self);
            }

            if ([[(ABBufferQueryCursor *)self query] requestedWallpaperMetadata])
            {
              AppendPropertyBlobData(v8, v61, self);
            }
          }

          if ([(ABBufferQueryCursor *)self resumeToken]|| ![[(ABBufferQueryCursor *)self query] requestedAvatarRecipeData]|| (v21 = kABCPersonAvatarRecipeDataProperty, v22 = ABCAvatarRecipeDataProperty, ABCAddressBookGetImageStore([[(ABBufferQueryCursor *)self query] addressBook]), CPRecordStoreGetDatabase(), v23 = CPSqliteDatabaseConnectionForReading(), (v24 = CPSqliteConnectionStatementForSQL()) == 0) || (v25 = v24, (v26 = *(v24 + 8)) == 0))
          {
LABEL_53:
            v64[0] = MEMORY[0x1E69E9820];
            v64[1] = 3221225472;
            v64[2] = __ABAddressBookPersonBufferRowHandler_block_invoke_2;
            v64[3] = &unk_1E7CCD538;
            v65 = v8;
            v64[4] = self;
            if (v69(v68, v64))
            {
              return;
            }

            goto LABEL_54;
          }

          sqlite3_bind_int(v26, 1, v8);
          if (sqlite3_step(*(v25 + 8)) == 100)
          {
            replyCopy3 = reply;
            v28 = sqlite3_column_int64(*(v25 + 8), 0);
            ppBlob = 0;
            v29 = *&ABCAvatarRecipeClass[0][10][40 * v22];
            v30 = sqlite3_blob_open(*(v23 + 8), "main", *ABCAvatarRecipeClass[0], v29, v28, 0, &ppBlob);
            if (v30)
            {
              if (v30 == 21)
              {
                v31 = ABOSLogImageMetadata();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218498;
                  *&buf[4] = self;
                  *&buf[12] = 2080;
                  *&buf[14] = v29;
                  *&buf[22] = 1024;
                  *&buf[24] = v8;
                  _os_log_error_impl(&dword_1B7EFB000, v31, OS_LOG_TYPE_ERROR, "ABBufferQueryCursor (%p) AppendPropertyBlobData, SQLITE_MISUSE opening blob %s from recordID %d", buf, 0x1Cu);
                }
              }

              goto LABEL_52;
            }

            v32 = sqlite3_blob_bytes(ppBlob);
            if (v32 < 1)
            {
              sqlite3_blob_close(ppBlob);
LABEL_52:
              reply = replyCopy3;
              goto LABEL_53;
            }

            v73[0] = 2;
            *&v73[1] = v21;
            *&v73[5] = v32;
            [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] appendBytes:v73 length:13];
            v60 = [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] length];
            v33 = *&v73[5];
            [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] increaseLengthBy:*&v73[5]];
            mutableBytes = [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] mutableBytes];
            v34 = [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] length];
            v35 = ABOSLogImageMetadata();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              mutableData = [(ABBufferQueryCursor *)self mutableData];
              *buf = 134219522;
              *&buf[4] = self;
              *&buf[12] = 2080;
              *&buf[14] = v29;
              *&buf[22] = 1024;
              *&buf[24] = v8;
              *&buf[28] = 2048;
              *&buf[30] = mutableData;
              v77 = 2048;
              v78 = v60;
              v79 = 2048;
              v80 = v33;
              v81 = 2048;
              v82 = v34;
              _os_log_impl(&dword_1B7EFB000, v35, OS_LOG_TYPE_DEFAULT, "ABBufferQueryCursor (%p) AppendPropertyBlobData, reading %s from recordID %d into buffer (%p), [%lu + %lu = %lu]", buf, 0x44u);
            }

            sqlite3_blob_read(ppBlob, &mutableBytes[v60], v33, 0);
            sqlite3_blob_close(ppBlob);
            reply = replyCopy3;
          }

          CPSqliteStatementReset();
          goto LABEL_53;
        }

        requestedPropertyIdentifiers = [[(ABBufferQueryCursor *)self query] requestedPropertyIdentifiers];
        if (![(NSIndexSet *)requestedPropertyIdentifiers containsIndex:kABCPersonLinkUUIDProperty]|| (sqlite3_column_type(v6[1], [(ABBufferQueryCursor *)self contactLinkUUIDColumn]) == 5 || (v10 = sqlite3_column_blob(v6[1], [(ABBufferQueryCursor *)self contactLinkUUIDColumn]), v11 = sqlite3_column_bytes(v6[1], [(ABBufferQueryCursor *)self contactLinkUUIDColumn]), buf[0] = 2, *&buf[1] = kABCPersonLinkUUIDProperty, *&buf[5] = v11, [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] appendBytes:buf length:13], v12 = [(ABBufferQueryCursor *)self mutableData], [(NSMutableData *)v12 appendBytes:v10 length:*&buf[5]], [[(ABBufferQueryCursor *)self query] contactidentifierAuditMode]!= 2) ? (v15 = 0) : (v13 = [(ABBufferQueryCursor *)self mutableData], v14 = [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] length], v15 = [(NSMutableData *)v13 subdataWithRange:v14 - *&buf[5]]), [[(ABBufferQueryCursor *)self query] contactidentifierAuditMode]!= 2))
        {
LABEL_27:
          requestedPropertyIdentifiers2 = [[(ABBufferQueryCursor *)self query] requestedPropertyIdentifiers];
          if ([(NSIndexSet *)requestedPropertyIdentifiers2 containsIndex:kABCPersonIsPreferredImageProperty]&& sqlite3_column_type(v6[1], [(ABBufferQueryCursor *)self contactPreferredForImageColumn]) != 5)
          {
            *v73 = sqlite3_column_int(v6[1], [(ABBufferQueryCursor *)self contactPreferredForImageColumn]);
            buf[0] = 2;
            *&buf[1] = kABCPersonIsPreferredImageProperty;
            *&buf[5] = 4;
            [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] appendBytes:buf length:13];
            mutableData2 = [(ABBufferQueryCursor *)self mutableData];
            [(NSMutableData *)mutableData2 appendBytes:v73 length:*&buf[5]];
          }

          goto LABEL_30;
        }

        if ([(NSData *)v15 length])
        {
          if ([(NSData *)v15 isEqualToData:[(ABBufferQueryCursor *)self currentRecordLinkedUniqueIDAuditData]])
          {
LABEL_26:
            [(ABBufferQueryCursor *)self setCurrentRecordLinkedUniqueIDAuditData:v15];
            goto LABEL_27;
          }

          contactIdentifiers = [(ABBufferQueryCursor *)self contactIdentifiers];
          currentRecordIndividualUniqueIDAuditData = v15;
        }

        else
        {
          contactIdentifiers2 = [(ABBufferQueryCursor *)self contactIdentifiers];
          currentRecordIndividualUniqueIDAuditData = [(ABBufferQueryCursor *)self currentRecordIndividualUniqueIDAuditData];
          contactIdentifiers = contactIdentifiers2;
        }

        [(NSMutableSet *)contactIdentifiers addObject:currentRecordIndividualUniqueIDAuditData];
        goto LABEL_26;
      }
    }
  }

  (*(reply + 2))(reply, 0, 0, [MEMORY[0x1E696ABC0] errorWithDomain:@"ABSQLiteErrorDomain" code:1 userInfo:0]);
LABEL_70:
  [(NSMutableSet *)self->_contactIdentifiers removeAllObjects];
  v53 = ABOSLogImageMetadata();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    mutableData = self->_mutableData;
    v55 = [(NSMutableData *)mutableData length];
    *buf = 134218496;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = mutableData;
    *&buf[22] = 2048;
    *&buf[24] = v55;
    _os_log_impl(&dword_1B7EFB000, v53, OS_LOG_TYPE_DEFAULT, "ABBufferQueryCursor (%p) fetchNextBatchWithReply, releasing buffer (%p) [%lu]", buf, 0x20u);
  }

  self->_mutableData = 0;
}

- (void)fetchNextBatchWithReply:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_errmsg(*(*a1 + 8));
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&dword_1B7EFB000, a2, OS_LOG_TYPE_ERROR, "Error handling SQL statement in ABAddressBookCopyPersonBufferForQuery: %s", &v4, 0xCu);
}

@end