@interface IMDatabaseHandle
+ (id)questionMarkListForCollection:(id)collection;
- (BOOL)_aq_bindArguments:(id)arguments inStatement:(sqlite3_stmt *)statement;
- (BOOL)passesIntegrityCheck;
- (BOOL)runStatement:(id)statement arguments:(id)arguments;
- (IMDatabaseHandle)initWithPath:(id)path;
- (id)_aq_cursorForQuery:(id)query withArguments:(id)arguments;
- (id)_aq_errorInFunction:(const char *)function result:(int64_t)result;
- (id)_stringRowsForQuery:(id)query;
- (id)arrayForQuery:(id)query arguments:(id)arguments rawRows:(BOOL)rows;
- (id)columnInfoForTable:(id)table;
- (id)stringColumnDataForQuery:(id)query withArguments:(id)arguments;
- (id)version;
- (void)dealloc;
@end

@implementation IMDatabaseHandle

- (IMDatabaseHandle)initWithPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = IMDatabaseHandle;
  v5 = [(IMDatabaseHandle *)&v12 init];
  if (v5 && !sqlite3_open_v2([pathCopy fileSystemRepresentation], &v5->_databaseHandle, 6, 0))
  {
    v7 = dispatch_queue_create("com.apple.itunesmobile.imdatabasehandle", 0);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v7;

    v9 = objc_opt_new();
    statementCache = v5->_statementCache;
    v5->_statementCache = v9;

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_statementCache allValues];
  v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v7) close];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  sqlite3_close(self->_databaseHandle);
  v8.receiver = self;
  v8.super_class = IMDatabaseHandle;
  [(IMDatabaseHandle *)&v8 dealloc];
}

- (id)columnInfoForTable:(id)table
{
  table = [NSString stringWithFormat:@"pragma table_info(%@)", table];
  v5 = [(IMDatabaseHandle *)self _stringRowsForQuery:table];

  return v5;
}

- (id)version
{
  v2 = [NSString stringWithCString:sqlite3_libversion() encoding:4];
  v3 = [@"sqlite3 library version: " stringByAppendingString:v2];

  return v3;
}

- (BOOL)runStatement:(id)statement arguments:(id)arguments
{
  statementCopy = statement;
  argumentsCopy = arguments;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_11989C;
  v24 = sub_1198AC;
  v25 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1198B4;
  block[3] = &unk_2CD610;
  v9 = statementCopy;
  v15 = v9;
  selfCopy = self;
  v10 = argumentsCopy;
  v17 = v10;
  v18 = &v26;
  v19 = &v20;
  dispatch_sync(accessQueue, block);
  v11 = v21[5];
  if (v11)
  {
    objc_exception_throw(v11);
  }

  v12 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v12;
}

- (id)arrayForQuery:(id)query arguments:(id)arguments rawRows:(BOOL)rows
{
  queryCopy = query;
  argumentsCopy = arguments;
  v10 = objc_opt_new();
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_11989C;
  v30 = sub_1198AC;
  v31 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_119CD4;
  block[3] = &unk_2CD638;
  block[4] = self;
  v12 = queryCopy;
  v20 = v12;
  v13 = argumentsCopy;
  v21 = v13;
  rowsCopy = rows;
  v14 = v10;
  v22 = v14;
  v23 = v32;
  v24 = &v26;
  dispatch_sync(accessQueue, block);
  v15 = v27[5];
  if (v15)
  {
    objc_exception_throw(v15);
  }

  v16 = v22;
  v17 = v14;

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(v32, 8);

  return v17;
}

- (id)stringColumnDataForQuery:(id)query withArguments:(id)arguments
{
  queryCopy = query;
  argumentsCopy = arguments;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 1;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_11989C;
  v38 = sub_1198AC;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_11989C;
  v32 = sub_1198AC;
  v33 = objc_opt_new();
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = self->_databaseHandle;
  accessQueue = self->_accessQueue;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_11A1AC;
  v18 = &unk_2CD660;
  v9 = queryCopy;
  v19 = v9;
  v22 = &v44;
  v23 = v27;
  v10 = argumentsCopy;
  v20 = v10;
  selfCopy = self;
  v24 = &v40;
  v25 = &v28;
  v26 = &v34;
  dispatch_sync(accessQueue, &v15);
  v11 = v35[5];
  if (v11)
  {
    objc_exception_throw(v11);
  }

  if (!v45[3] && *(v41 + 24) && [v29[5] count])
  {
    v12 = v29[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  return v13;
}

+ (id)questionMarkListForCollection:(id)collection
{
  v3 = [collection count];
  if (v3)
  {
    v4 = v3;
    if (v3 == &dword_0 + 1)
    {
      v5 = [[NSMutableString alloc] initWithString:@"(?)"];
    }

    else
    {
      v5 = objc_msgSend([NSMutableString alloc], "initWithString:", @"(?,");
      v6 = v4 - 2;
      if (v4 != &dword_0 + 2)
      {
        do
        {
          [v5 appendString:{@"?, "}];
          --v6;
        }

        while (v6);
      }

      [v5 appendString:@"?"]);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)passesIntegrityCheck
{
  v2 = [(IMDatabaseHandle *)self arrayForQuery:@"pragma quick_check(1)" arguments:0 rawRows:1];
  firstObject = [v2 firstObject];
  v3FirstObject = [firstObject firstObject];
  v5 = [v3FirstObject isEqualToString:@"ok"];

  return v5;
}

- (id)_aq_cursorForQuery:(id)query withArguments:(id)arguments
{
  queryCopy = query;
  argumentsCopy = arguments;
  dispatch_assert_queue_V2(self->_accessQueue);
  v8 = [(NSMutableDictionary *)self->_statementCache objectForKey:queryCopy];
  if (v8)
  {
    v9 = v8;
    [(IMDatabaseCursor *)v8 reset];
    [(IMDatabaseHandle *)self _aq_bindArguments:argumentsCopy inStatement:[(IMDatabaseCursor *)v9 statement]];
  }

  else
  {
    v14 = 0;
    pzTail = [queryCopy UTF8String];
    v10 = sqlite3_prepare_v2([(IMDatabaseHandle *)self _databaseHandle], pzTail, -1, &v14, &pzTail);
    if (v10)
    {
      v13 = [(IMDatabaseHandle *)self _aq_errorInFunction:"[IMDatabaseHandle _aq_cursorForQuery:withArguments:]" result:v10];
      objc_exception_throw(v13);
    }

    [(IMDatabaseHandle *)self _aq_bindArguments:argumentsCopy inStatement:v14];
    v11 = [IMDatabaseCursor alloc];
    v9 = [(IMDatabaseCursor *)v11 initWithStatement:v14];
    [(NSMutableDictionary *)self->_statementCache setObject:v9 forKey:queryCopy];
  }

  return v9;
}

- (id)_aq_errorInFunction:(const char *)function result:(int64_t)result
{
  dispatch_assert_queue_V2(self->_accessQueue);
  v7 = [NSString stringWithFormat:@"%s: Could not run statement %s\n", function, sqlite3_errmsg(self->_databaseHandle)];
  fputs([v7 cStringUsingEncoding:1], __stdoutp);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [NSString stringWithFormat:@"%@StatementException", v9];
  result = [NSString stringWithFormat:@"%s result:%ld", sqlite3_errmsg(self->_databaseHandle), result];
  v12 = [NSException exceptionWithName:v10 reason:result userInfo:0];

  return v12;
}

- (id)_stringRowsForQuery:(id)query
{
  queryCopy = query;
  v5 = +[NSMutableArray array];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_11989C;
  v22 = sub_1198AC;
  v23 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_11AA4C;
  block[3] = &unk_2CD688;
  v16 = v24;
  block[4] = self;
  v7 = queryCopy;
  v14 = v7;
  v8 = v5;
  v15 = v8;
  v17 = &v18;
  dispatch_sync(accessQueue, block);
  v9 = v19[5];
  if (v9)
  {
    objc_exception_throw(v9);
  }

  v10 = v15;
  v11 = v8;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(v24, 8);

  return v11;
}

- (BOOL)_aq_bindArguments:(id)arguments inStatement:(sqlite3_stmt *)statement
{
  argumentsCopy = arguments;
  dispatch_assert_queue_V2(self->_accessQueue);
  objectEnumerator = [argumentsCopy objectEnumerator];
  nextObject = 0;
  v9 = 1;
  do
  {
    v10 = nextObject;
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = sqlite3_bind_text(statement, v9, [nextObject cStringUsingEncoding:4], -1, 0);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [nextObject timeIntervalSinceReferenceDate];
        v11 = sqlite3_bind_double(statement, v9, v12);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = nextObject;
          objCType = [v14 objCType];
          if (*objCType == 66 && !objCType[1])
          {
            v22 = sqlite3_bind_int(statement, v9, [v14 BOOLValue]);
          }

          else
          {
            objCType2 = [v14 objCType];
            if (*objCType2 == 105 && !objCType2[1] || (v17 = [v14 objCType], *v17 == 113) && !v17[1])
            {
              v22 = sqlite3_bind_int64(statement, v9, [v14 longLongValue]);
            }

            else
            {
              objCType3 = [v14 objCType];
              if (*objCType3 == 102 && !objCType3[1])
              {
                [v14 floatValue];
                v24 = v23;
              }

              else
              {
                objCType4 = [v14 objCType];
                if (*objCType4 != 100 || objCType4[1])
                {
                  v13 = 0;
LABEL_33:

                  goto LABEL_8;
                }

                [v14 doubleValue];
              }

              v22 = sqlite3_bind_double(statement, v9, v24);
            }
          }

          v13 = v22;
          goto LABEL_33;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = sqlite3_bind_blob(statement, v9, [nextObject bytes], objc_msgSend(nextObject, "length"), 0);
        }

        else
        {
          v20 = +[NSNull null];
          v21 = [nextObject isEqual:v20];

          if (!v21)
          {
            v13 = 0;
            goto LABEL_8;
          }

          v11 = sqlite3_bind_null(statement, v9);
        }
      }
    }

    v13 = v11;
LABEL_8:
    ++v9;
  }

  while (!v13);

  return nextObject == 0;
}

@end