@interface CKSQLiteTableGroupEntry
+ (id)expirationDate;
- (BOOL)hasFlag:(unint64_t)a3 database:(id)a4;
- (BOOL)isExpired;
- (CKSQLiteTableGroupEntry)initWithName:(id)a3;
- (id)clearFlag:(unint64_t)a3 database:(id)a4;
- (id)setFlag:(unint64_t)a3 database:(id)a4;
- (void)deleteTables:(id)a3;
@end

@implementation CKSQLiteTableGroupEntry

- (CKSQLiteTableGroupEntry)initWithName:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKSQLiteTableGroupEntry;
  v7 = [(CKSQLiteTableGroupEntry *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    name = v7->_name;
    v7->_name = v8;
  }

  return v7;
}

- (void)deleteTables:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_groupID(self, v5, v6);
  v10 = objc_msgSend_name(self, v8, v9);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_18868B860;
  v16[3] = &unk_1E70C09B8;
  v17 = v4;
  v18 = v10;
  v19 = v7;
  v11 = v7;
  v12 = v10;
  v13 = v4;
  v15 = objc_msgSend_performInDatabaseTransaction_(v13, v14, v16);
}

+ (id)expirationDate
{
  objc_msgSend_expirationTime(a1, a2, v2);
  v6 = v5 * 1.05;
  if (v6 <= 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v3, v4, -v6);
  }

  return v7;
}

- (BOOL)isExpired
{
  v4 = objc_msgSend_creatingClass(self, a2, v2);
  v5 = NSClassFromString(v4);
  objc_msgSend_expirationTime(v5, v6, v7);
  if (v5)
  {
    v11 = v10 * 1.05;
    if (v10 * 1.05 <= 0.0)
    {
      v16 = 0;
    }

    else
    {
      v12 = objc_msgSend_lastUsed(self, v8, v9);
      objc_msgSend_timeIntervalSinceNow(v12, v13, v14);
      v16 = v11 + v15 < 0.0;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)setFlag:(unint64_t)a3 database:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18868C05C;
  v11[3] = &unk_1E70C1200;
  v12 = v6;
  v13 = a3;
  v11[4] = self;
  v7 = v6;
  v9 = objc_msgSend_performInDatabaseTransaction_(v7, v8, v11);

  return v9;
}

- (id)clearFlag:(unint64_t)a3 database:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18868C2B8;
  v11[3] = &unk_1E70C1200;
  v12 = v6;
  v13 = a3;
  v11[4] = self;
  v7 = v6;
  v9 = objc_msgSend_performInDatabaseTransaction_(v7, v8, v11);

  return v9;
}

- (BOOL)hasFlag:(unint64_t)a3 database:(id)a4
{
  v6 = a4;
  v7 = _CKSQLDBSerializerLock(v6 + 8);
  v10 = objc_msgSend_flags(self, v8, v9);
  v13 = objc_msgSend_unsignedLongLongValue(v10, v11, v12);

  if (v7)
  {
    v7[1].__sig = 0;
    pthread_mutex_unlock(v7);
  }

  return (v13 & a3) != 0;
}

@end