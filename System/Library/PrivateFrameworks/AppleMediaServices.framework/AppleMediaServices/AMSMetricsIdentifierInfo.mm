@interface AMSMetricsIdentifierInfo
+ (BOOL)bothDatesAreNilOr:(id)a3 equals:(id)a4;
+ (BOOL)bothStringsAreNilOr:(id)a3 equals:(id)a4;
- (BOOL)isEqualIgnoringLastSync:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)specializedFieldNameForFieldName:(id)a3;
- (void)populateDictionary:(id)a3 shouldEmitDiagnosticFields:(BOOL)a4 shouldEmitPreviousUserId:(BOOL)a5;
@end

@implementation AMSMetricsIdentifierInfo

- (id)description
{
  v14.receiver = self;
  v14.super_class = AMSMetricsIdentifierInfo;
  v3 = [(AMSMetricsIdentifierInfo *)&v14 description];
  v13 = *&self->_idKey;
  storeUUID = self->_storeUUID;
  value = self->_value;
  lastSync = self->_lastSync;
  modified = self->_modified;
  expires = self->_expires;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_crossDeviceSync];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_deleted];
  v11 = [v3 stringByAppendingFormat:@" (idKey: %@, name: %@, value: %@, storeUUID: %@, expires: %@, modified: %@, lastSync: %@, crossDeviceSync: %@, deleted: %@, serverProvidedAt: %@, changeCounter: %@, changeCause: %@, previousValue: %@)", v13, value, storeUUID, expires, modified, lastSync, v9, v10, self->_serverProvidedAt, self->_changeCounter, self->_changeCause, self->_previousValue];

  return v11;
}

- (void)populateDictionary:(id)a3 shouldEmitDiagnosticFields:(BOOL)a4 shouldEmitPreviousUserId:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v19 = a3;
  v8 = [(AMSMetricsIdentifierInfo *)self value];
  v9 = [(AMSMetricsIdentifierInfo *)self name];
  [v19 setObject:v8 forKeyedSubscript:v9];

  if (![(AMSMetricsIdentifierInfo *)self crossDeviceSync])
  {
    goto LABEL_11;
  }

  v10 = [(AMSMetricsIdentifierInfo *)self lastSync];
  v11 = v10 ? @"synchronized" : @"unsynchronized";
  v12 = [(AMSMetricsIdentifierInfo *)self specializedFieldNameForFieldName:@"SyncState"];
  [v19 setObject:v11 forKeyedSubscript:v12];

  if (!v6)
  {
    goto LABEL_11;
  }

  v13 = [(AMSMetricsIdentifierInfo *)self changeCounter];
  v14 = [(AMSMetricsIdentifierInfo *)self specializedFieldNameForFieldName:@"ChangeCounter"];
  [v19 setObject:v13 forKeyedSubscript:v14];

  v15 = [(AMSMetricsIdentifierInfo *)self changeCause];
  v16 = [(AMSMetricsIdentifierInfo *)self specializedFieldNameForFieldName:@"ChangeCause"];
  [v19 setObject:v15 forKeyedSubscript:v16];

  if (!v5)
  {
    goto LABEL_11;
  }

  v17 = [(AMSMetricsIdentifierInfo *)self name];
  if ([v17 isEqualToString:@"userId"])
  {
    v18 = [(AMSMetricsIdentifierInfo *)self value];

    if (!v18)
    {
      goto LABEL_11;
    }

    v17 = [(AMSMetricsIdentifierInfo *)self previousValue];
    [v19 setObject:v17 forKeyedSubscript:@"xpPreviousUserId"];
  }

LABEL_11:
}

- (id)specializedFieldNameForFieldName:(id)a3
{
  v4 = a3;
  v5 = [(AMSMetricsIdentifierInfo *)self name];
  v6 = [v5 length];
  v7 = MEMORY[0x1E696AEC0];
  if (v6)
  {
    v8 = [v5 substringToIndex:1];
    v9 = [v8 uppercaseString];
    v10 = [v5 stringByReplacingCharactersInRange:0 withString:{1, v9}];
    v11 = [v7 stringWithFormat:@"xp%@%@", v10, v4];
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"xp%@", v4];
  }

  return v11;
}

- (BOOL)isEqualIgnoringLastSync:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  if (v4 == self)
  {
    v7 = 1;
    goto LABEL_26;
  }

  v6 = [(AMSMetricsIdentifierInfo *)v4 crossDeviceSync];
  if (v6 == [(AMSMetricsIdentifierInfo *)self crossDeviceSync])
  {
    v8 = objc_opt_class();
    v9 = [(AMSMetricsIdentifierInfo *)v5 idKey];
    v10 = [(AMSMetricsIdentifierInfo *)self idKey];
    if ([v8 bothStringsAreNilOr:v9 equals:v10])
    {
      v11 = objc_opt_class();
      v12 = [(AMSMetricsIdentifierInfo *)v5 name];
      v13 = [(AMSMetricsIdentifierInfo *)self name];
      if ([v11 bothStringsAreNilOr:v12 equals:v13])
      {
        v14 = objc_opt_class();
        v15 = [(AMSMetricsIdentifierInfo *)v5 storeUUID];
        v16 = [(AMSMetricsIdentifierInfo *)self storeUUID];
        if ([v14 bothStringsAreNilOr:v15 equals:v16])
        {
          v17 = objc_opt_class();
          v18 = [(AMSMetricsIdentifierInfo *)v5 value];
          v36 = [(AMSMetricsIdentifierInfo *)self value];
          v37 = v18;
          if ([v17 bothStringsAreNilOr:v18 equals:v36])
          {
            v19 = objc_opt_class();
            v20 = [(AMSMetricsIdentifierInfo *)v5 expires];
            v21 = [(AMSMetricsIdentifierInfo *)self expires];
            v35 = v20;
            v22 = v20;
            v23 = v21;
            if ([v19 bothDatesAreNilOr:v22 equals:v21] && (v24 = -[AMSMetricsIdentifierInfo deleted](v5, "deleted"), v24 == -[AMSMetricsIdentifierInfo deleted](self, "deleted")))
            {
              v33 = objc_opt_class();
              v25 = [(AMSMetricsIdentifierInfo *)v5 modified];
              v26 = [(AMSMetricsIdentifierInfo *)self modified];
              v27 = v33;
              v32 = v26;
              v34 = v25;
              if ([v27 bothDatesAreNilOr:v25 equals:?])
              {
                v31 = objc_opt_class();
                v30 = [(AMSMetricsIdentifierInfo *)v5 serverProvidedAt];
                v28 = [(AMSMetricsIdentifierInfo *)self serverProvidedAt];
                v7 = [v31 bothDatesAreNilOr:v30 equals:?];
              }

              else
              {
                v7 = 0;
              }
            }

            else
            {
              v7 = 0;
            }
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
LABEL_4:
    v7 = 0;
  }

LABEL_26:

  return v7;
}

+ (BOOL)bothStringsAreNilOr:(id)a3 equals:(id)a4
{
  if (a3 | a4)
  {
    return [a3 isEqualToString:a4];
  }

  else
  {
    return 1;
  }
}

+ (BOOL)bothDatesAreNilOr:(id)a3 equals:(id)a4
{
  if (a3 | a4)
  {
    return [a3 isEqualToDate:a4];
  }

  else
  {
    return 1;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setCrossDeviceSync:{-[AMSMetricsIdentifierInfo crossDeviceSync](self, "crossDeviceSync")}];
  v5 = [(AMSMetricsIdentifierInfo *)self idKey];
  v6 = [v5 copy];
  [v4 setIdKey:v6];

  v7 = [(AMSMetricsIdentifierInfo *)self name];
  v8 = [v7 copy];
  [v4 setName:v8];

  v9 = [(AMSMetricsIdentifierInfo *)self storeUUID];
  v10 = [v9 copy];
  [v4 setStoreUUID:v10];

  v11 = [(AMSMetricsIdentifierInfo *)self value];
  v12 = [v11 copy];
  [v4 setValue:v12];

  v13 = [(AMSMetricsIdentifierInfo *)self expires];
  v14 = [v13 copy];
  [v4 setExpires:v14];

  [v4 setDeleted:{-[AMSMetricsIdentifierInfo deleted](self, "deleted")}];
  v15 = [(AMSMetricsIdentifierInfo *)self lastSync];
  v16 = [v15 copy];
  [v4 setLastSync:v16];

  v17 = [(AMSMetricsIdentifierInfo *)self modified];
  v18 = [v17 copy];
  [v4 setModified:v18];

  v19 = [(AMSMetricsIdentifierInfo *)self serverProvidedAt];
  v20 = [v19 copy];
  [v4 setServerProvidedAt:v20];

  v21 = [(AMSMetricsIdentifierInfo *)self changeCounter];
  v22 = [v21 copy];
  [v4 setChangeCounter:v22];

  v23 = [(AMSMetricsIdentifierInfo *)self changeCause];
  v24 = [v23 copy];
  [v4 setChangeCause:v24];

  v25 = [(AMSMetricsIdentifierInfo *)self previousValue];
  v26 = [v25 copy];
  [v4 setPreviousValue:v26];

  return v4;
}

@end