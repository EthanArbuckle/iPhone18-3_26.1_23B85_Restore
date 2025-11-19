@interface ABBufferQueryCursor
- (ABBufferQueryCursor)initWithAddressBook:(void *)a3 predicate:(id)a4 propertyIdentifierSet:(__CFSet *)a5 includeLinkedContacts:(BOOL)a6 sortOrder:(unsigned int)a7 suggestedContactsPerBatch:(int64_t)a8 managedConfiguration:(id)a9 identifierAuditMode:(int64_t)a10 authorizationContext:(id)a11;
- (ABBufferQueryCursor)initWithQuery:(id)a3 batchSize:(int64_t)a4;
- (void)dealloc;
- (void)fetchNextBatchWithReply:(id)a3;
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
      v10 = self;
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

- (ABBufferQueryCursor)initWithAddressBook:(void *)a3 predicate:(id)a4 propertyIdentifierSet:(__CFSet *)a5 includeLinkedContacts:(BOOL)a6 sortOrder:(unsigned int)a7 suggestedContactsPerBatch:(int64_t)a8 managedConfiguration:(id)a9 identifierAuditMode:(int64_t)a10 authorizationContext:(id)a11
{
  v13 = [[ABBufferQuery alloc] initWithAddressBook:a3 predicate:a4 requestedProperties:a5 includeLinkedContacts:a6 sortOrder:*&a7 managedConfiguration:a9 identifierAuditStyle:a10 authorizationContext:a11];
  if (v13)
  {
    v14 = v13;
    v15 = [(ABBufferQueryCursor *)self initWithQuery:v13 batchSize:a8];

    return v15;
  }

  else
  {

    return 0;
  }
}

- (ABBufferQueryCursor)initWithQuery:(id)a3 batchSize:(int64_t)a4
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
    Count = CFDictionaryGetCount([a3 propertyIndices]);
    v9 = 2000;
    if (a4)
    {
      v9 = a4;
    }

    *(v7 + 18) = 3145728;
    *(v7 + 19) = v9;
    v10 = [a3 propertyIndices];
    if (!CFDictionaryGetValueIfPresent(v10, kABPersonLinkProperty, (v7 + 60)))
    {
      *(v7 + 15) = -1;
    }

    v11 = [a3 requestedPropertyIdentifiers];
    v12 = [v11 containsIndex:kABCPersonLinkUUIDProperty];
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
    v15 = [a3 requestedPropertyIdentifiers];
    v16 = [v15 containsIndex:kABCPersonIsPreferredImageProperty];
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
    v19 = [a3 needsMultivalueTable];
    v20 = v17 + v19;
    if (v19)
    {
      v21 = v17;
    }

    else
    {
      v21 = -1;
    }

    *(v7 + 6) = v21;
    v22 = [a3 needsMultivalueTable];
    v23 = v20 + v22;
    if (v22)
    {
      v24 = v20;
    }

    else
    {
      v24 = -1;
    }

    *(v7 + 7) = v24;
    v25 = [a3 needsMultivalueTable];
    v26 = v23 + v25;
    if (v25)
    {
      v27 = v23;
    }

    else
    {
      v27 = -1;
    }

    *(v7 + 8) = v27;
    v28 = [a3 needsMultivalueTable];
    v29 = v26 + v28;
    if (v28)
    {
      v30 = v26;
    }

    else
    {
      v30 = -1;
    }

    *(v7 + 9) = v30;
    v31 = [a3 needsMultivalueTable];
    v32 = v29 + v31;
    if (v31)
    {
      v33 = v29;
    }

    else
    {
      v33 = -1;
    }

    *(v7 + 10) = v33;
    v34 = [a3 needsMultivalueEntryTable];
    v35 = v32 + v34;
    if (v34)
    {
      v36 = v32;
    }

    else
    {
      v36 = -1;
    }

    *(v7 + 11) = v36;
    if ([a3 needsMultivalueEntryTable])
    {
      v37 = v35;
    }

    else
    {
      v37 = -1;
    }

    *(v7 + 12) = v37;
    *(v7 + 21) = a3;
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
    if ([objc_msgSend(a3 "predicate")])
    {
      *(v7 + 10) = objc_alloc_init(MEMORY[0x1E695DF90]);
    }
  }

  return v7;
}

- (void)fetchNextBatchWithReply:(id)a3
{
  v83 = *MEMORY[0x1E69E9840];
  v5 = [(ABBufferQuery *)self->_query statement];
  if (v5)
  {
    v6 = v5;
    if (v5->var1)
    {
      if (v5->var0 && v5->var0->var1)
      {
        v61 = kABPersonWallpaperMetadataProperty;
        v62 = __PAIR64__(kABPersonWallpaperProperty, kABPersonWatchWallpaperImageDataProperty);
        v63 = a3;
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
                  (*(a3 + 2))(a3, v56, 1, 0);
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

                  (*(a3 + 2))(a3, 0, 0, v57);
                }

                goto LABEL_70;
              }
            }

            v68[0] = MEMORY[0x1E69E9820];
            v68[1] = 3221225472;
            v69 = __ABAddressBookPersonBufferRowHandler_block_invoke;
            v70 = &unk_1E7CCD4E8;
            v71 = self;
            v72 = a3;
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
          a3 = v63;
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
          v49 = [(ABSQLPredicate *)[[(ABBufferQueryCursor *)self query] predicate] matchInfoProvider];
          if (v49)
          {
            v50 = v49[2](v49, v8);
            if (v50)
            {
              v51 = v50;
              v52 = [(ABBufferQueryCursor *)self matchInfo];
              -[NSMutableDictionary setObject:forKey:](v52, "setObject:forKey:", v51, [MEMORY[0x1E696AD98] numberWithInt:v8]);
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
            v27 = a3;
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
              a3 = v27;
              goto LABEL_53;
            }

            v73[0] = 2;
            *&v73[1] = v21;
            *&v73[5] = v32;
            [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] appendBytes:v73 length:13];
            v60 = [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] length];
            v33 = *&v73[5];
            [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] increaseLengthBy:*&v73[5]];
            v59 = [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] mutableBytes];
            v34 = [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] length];
            v35 = ABOSLogImageMetadata();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = [(ABBufferQueryCursor *)self mutableData];
              *buf = 134219522;
              *&buf[4] = self;
              *&buf[12] = 2080;
              *&buf[14] = v29;
              *&buf[22] = 1024;
              *&buf[24] = v8;
              *&buf[28] = 2048;
              *&buf[30] = v36;
              v77 = 2048;
              v78 = v60;
              v79 = 2048;
              v80 = v33;
              v81 = 2048;
              v82 = v34;
              _os_log_impl(&dword_1B7EFB000, v35, OS_LOG_TYPE_DEFAULT, "ABBufferQueryCursor (%p) AppendPropertyBlobData, reading %s from recordID %d into buffer (%p), [%lu + %lu = %lu]", buf, 0x44u);
            }

            sqlite3_blob_read(ppBlob, &v59[v60], v33, 0);
            sqlite3_blob_close(ppBlob);
            a3 = v27;
          }

          CPSqliteStatementReset();
          goto LABEL_53;
        }

        v9 = [[(ABBufferQueryCursor *)self query] requestedPropertyIdentifiers];
        if (![(NSIndexSet *)v9 containsIndex:kABCPersonLinkUUIDProperty]|| (sqlite3_column_type(v6[1], [(ABBufferQueryCursor *)self contactLinkUUIDColumn]) == 5 || (v10 = sqlite3_column_blob(v6[1], [(ABBufferQueryCursor *)self contactLinkUUIDColumn]), v11 = sqlite3_column_bytes(v6[1], [(ABBufferQueryCursor *)self contactLinkUUIDColumn]), buf[0] = 2, *&buf[1] = kABCPersonLinkUUIDProperty, *&buf[5] = v11, [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] appendBytes:buf length:13], v12 = [(ABBufferQueryCursor *)self mutableData], [(NSMutableData *)v12 appendBytes:v10 length:*&buf[5]], [[(ABBufferQueryCursor *)self query] contactidentifierAuditMode]!= 2) ? (v15 = 0) : (v13 = [(ABBufferQueryCursor *)self mutableData], v14 = [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] length], v15 = [(NSMutableData *)v13 subdataWithRange:v14 - *&buf[5]]), [[(ABBufferQueryCursor *)self query] contactidentifierAuditMode]!= 2))
        {
LABEL_27:
          v19 = [[(ABBufferQueryCursor *)self query] requestedPropertyIdentifiers];
          if ([(NSIndexSet *)v19 containsIndex:kABCPersonIsPreferredImageProperty]&& sqlite3_column_type(v6[1], [(ABBufferQueryCursor *)self contactPreferredForImageColumn]) != 5)
          {
            *v73 = sqlite3_column_int(v6[1], [(ABBufferQueryCursor *)self contactPreferredForImageColumn]);
            buf[0] = 2;
            *&buf[1] = kABCPersonIsPreferredImageProperty;
            *&buf[5] = 4;
            [(NSMutableData *)[(ABBufferQueryCursor *)self mutableData] appendBytes:buf length:13];
            v20 = [(ABBufferQueryCursor *)self mutableData];
            [(NSMutableData *)v20 appendBytes:v73 length:*&buf[5]];
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

          v16 = [(ABBufferQueryCursor *)self contactIdentifiers];
          v17 = v15;
        }

        else
        {
          v18 = [(ABBufferQueryCursor *)self contactIdentifiers];
          v17 = [(ABBufferQueryCursor *)self currentRecordIndividualUniqueIDAuditData];
          v16 = v18;
        }

        [(NSMutableSet *)v16 addObject:v17];
        goto LABEL_26;
      }
    }
  }

  (*(a3 + 2))(a3, 0, 0, [MEMORY[0x1E696ABC0] errorWithDomain:@"ABSQLiteErrorDomain" code:1 userInfo:0]);
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