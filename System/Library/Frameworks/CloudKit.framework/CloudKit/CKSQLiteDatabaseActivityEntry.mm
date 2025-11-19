@interface CKSQLiteDatabaseActivityEntry
- (BOOL)isEqual:(id)a3;
- (id)targetDescription;
- (unint64_t)hash;
@end

@implementation CKSQLiteDatabaseActivityEntry

- (unint64_t)hash
{
  v4 = objc_msgSend_groupID(self, a2, v2);
  v7 = objc_msgSend_unsignedIntValue(v4, v5, v6);
  v10 = objc_msgSend_databaseID(self, v8, v9);
  v13 = objc_msgSend_unsignedIntValue(v10, v11, v12) | (v7 << 16);

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_databaseID(self, v5, v6);
  v10 = objc_msgSend_databaseID(v4, v8, v9);
  v12 = v10;
  isEqualToString = 0;
  if (v7 && v10)
  {
    if (objc_msgSend_isEqualToNumber_(v7, v11, v10))
    {
      v16 = objc_msgSend_groupID(self, v14, v15);
      v19 = objc_msgSend_groupID(v4, v17, v18);
      v21 = v19;
      isEqualToString = 0;
      if (v16 && v19)
      {
        if (objc_msgSend_isEqualToNumber_(v16, v20, v19))
        {
          v24 = objc_msgSend_tableName(self, v22, v23);
          v27 = objc_msgSend_tableName(v4, v25, v26);
          v29 = v27;
          if (v24 == v27)
          {
            isEqualToString = 1;
          }

          else
          {
            isEqualToString = 0;
            if (v24 && v27)
            {
              isEqualToString = objc_msgSend_isEqualToString_(v24, v28, v27);
            }
          }
        }

        else
        {
          isEqualToString = 0;
        }
      }
    }

    else
    {
      isEqualToString = 0;
    }
  }

  return isEqualToString;
}

- (id)targetDescription
{
  v4 = objc_msgSend_tableName(self, a2, v2);
  v5 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_groupName(self, v6, v7);
  v10 = v8;
  if (v4)
  {
    objc_msgSend_stringWithFormat_(v5, v9, @"group=%@%@%@", v8, @" table=", v4);
  }

  else
  {
    objc_msgSend_stringWithFormat_(v5, v9, @"group=%@%@%@", v8, &stru_1EFA32970, &stru_1EFA32970);
  }
  v11 = ;

  return v11;
}

@end