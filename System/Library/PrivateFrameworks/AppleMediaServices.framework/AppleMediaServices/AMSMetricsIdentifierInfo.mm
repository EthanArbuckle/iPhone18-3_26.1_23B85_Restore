@interface AMSMetricsIdentifierInfo
+ (BOOL)bothDatesAreNilOr:(id)or equals:(id)equals;
+ (BOOL)bothStringsAreNilOr:(id)or equals:(id)equals;
- (BOOL)isEqualIgnoringLastSync:(id)sync;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)specializedFieldNameForFieldName:(id)name;
- (void)populateDictionary:(id)dictionary shouldEmitDiagnosticFields:(BOOL)fields shouldEmitPreviousUserId:(BOOL)id;
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

- (void)populateDictionary:(id)dictionary shouldEmitDiagnosticFields:(BOOL)fields shouldEmitPreviousUserId:(BOOL)id
{
  idCopy = id;
  fieldsCopy = fields;
  dictionaryCopy = dictionary;
  value = [(AMSMetricsIdentifierInfo *)self value];
  name = [(AMSMetricsIdentifierInfo *)self name];
  [dictionaryCopy setObject:value forKeyedSubscript:name];

  if (![(AMSMetricsIdentifierInfo *)self crossDeviceSync])
  {
    goto LABEL_11;
  }

  lastSync = [(AMSMetricsIdentifierInfo *)self lastSync];
  v11 = lastSync ? @"synchronized" : @"unsynchronized";
  v12 = [(AMSMetricsIdentifierInfo *)self specializedFieldNameForFieldName:@"SyncState"];
  [dictionaryCopy setObject:v11 forKeyedSubscript:v12];

  if (!fieldsCopy)
  {
    goto LABEL_11;
  }

  changeCounter = [(AMSMetricsIdentifierInfo *)self changeCounter];
  v14 = [(AMSMetricsIdentifierInfo *)self specializedFieldNameForFieldName:@"ChangeCounter"];
  [dictionaryCopy setObject:changeCounter forKeyedSubscript:v14];

  changeCause = [(AMSMetricsIdentifierInfo *)self changeCause];
  v16 = [(AMSMetricsIdentifierInfo *)self specializedFieldNameForFieldName:@"ChangeCause"];
  [dictionaryCopy setObject:changeCause forKeyedSubscript:v16];

  if (!idCopy)
  {
    goto LABEL_11;
  }

  name2 = [(AMSMetricsIdentifierInfo *)self name];
  if ([name2 isEqualToString:@"userId"])
  {
    value2 = [(AMSMetricsIdentifierInfo *)self value];

    if (!value2)
    {
      goto LABEL_11;
    }

    name2 = [(AMSMetricsIdentifierInfo *)self previousValue];
    [dictionaryCopy setObject:name2 forKeyedSubscript:@"xpPreviousUserId"];
  }

LABEL_11:
}

- (id)specializedFieldNameForFieldName:(id)name
{
  nameCopy = name;
  name = [(AMSMetricsIdentifierInfo *)self name];
  v6 = [name length];
  v7 = MEMORY[0x1E696AEC0];
  if (v6)
  {
    v8 = [name substringToIndex:1];
    uppercaseString = [v8 uppercaseString];
    v10 = [name stringByReplacingCharactersInRange:0 withString:{1, uppercaseString}];
    nameCopy = [v7 stringWithFormat:@"xp%@%@", v10, nameCopy];
  }

  else
  {
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"xp%@", nameCopy];
  }

  return nameCopy;
}

- (BOOL)isEqualIgnoringLastSync:(id)sync
{
  syncCopy = sync;
  v5 = syncCopy;
  if (!syncCopy)
  {
    goto LABEL_4;
  }

  if (syncCopy == self)
  {
    v7 = 1;
    goto LABEL_26;
  }

  crossDeviceSync = [(AMSMetricsIdentifierInfo *)syncCopy crossDeviceSync];
  if (crossDeviceSync == [(AMSMetricsIdentifierInfo *)self crossDeviceSync])
  {
    v8 = objc_opt_class();
    idKey = [(AMSMetricsIdentifierInfo *)v5 idKey];
    idKey2 = [(AMSMetricsIdentifierInfo *)self idKey];
    if ([v8 bothStringsAreNilOr:idKey equals:idKey2])
    {
      v11 = objc_opt_class();
      name = [(AMSMetricsIdentifierInfo *)v5 name];
      name2 = [(AMSMetricsIdentifierInfo *)self name];
      if ([v11 bothStringsAreNilOr:name equals:name2])
      {
        v14 = objc_opt_class();
        storeUUID = [(AMSMetricsIdentifierInfo *)v5 storeUUID];
        storeUUID2 = [(AMSMetricsIdentifierInfo *)self storeUUID];
        if ([v14 bothStringsAreNilOr:storeUUID equals:storeUUID2])
        {
          v17 = objc_opt_class();
          value = [(AMSMetricsIdentifierInfo *)v5 value];
          value2 = [(AMSMetricsIdentifierInfo *)self value];
          v37 = value;
          if ([v17 bothStringsAreNilOr:value equals:value2])
          {
            v19 = objc_opt_class();
            expires = [(AMSMetricsIdentifierInfo *)v5 expires];
            expires2 = [(AMSMetricsIdentifierInfo *)self expires];
            v35 = expires;
            v22 = expires;
            v23 = expires2;
            if ([v19 bothDatesAreNilOr:v22 equals:expires2] && (v24 = -[AMSMetricsIdentifierInfo deleted](v5, "deleted"), v24 == -[AMSMetricsIdentifierInfo deleted](self, "deleted")))
            {
              v33 = objc_opt_class();
              modified = [(AMSMetricsIdentifierInfo *)v5 modified];
              modified2 = [(AMSMetricsIdentifierInfo *)self modified];
              v27 = v33;
              v32 = modified2;
              v34 = modified;
              if ([v27 bothDatesAreNilOr:modified equals:?])
              {
                v31 = objc_opt_class();
                serverProvidedAt = [(AMSMetricsIdentifierInfo *)v5 serverProvidedAt];
                serverProvidedAt2 = [(AMSMetricsIdentifierInfo *)self serverProvidedAt];
                v7 = [v31 bothDatesAreNilOr:serverProvidedAt equals:?];
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

+ (BOOL)bothStringsAreNilOr:(id)or equals:(id)equals
{
  if (or | equals)
  {
    return [or isEqualToString:equals];
  }

  else
  {
    return 1;
  }
}

+ (BOOL)bothDatesAreNilOr:(id)or equals:(id)equals
{
  if (or | equals)
  {
    return [or isEqualToDate:equals];
  }

  else
  {
    return 1;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setCrossDeviceSync:{-[AMSMetricsIdentifierInfo crossDeviceSync](self, "crossDeviceSync")}];
  idKey = [(AMSMetricsIdentifierInfo *)self idKey];
  v6 = [idKey copy];
  [v4 setIdKey:v6];

  name = [(AMSMetricsIdentifierInfo *)self name];
  v8 = [name copy];
  [v4 setName:v8];

  storeUUID = [(AMSMetricsIdentifierInfo *)self storeUUID];
  v10 = [storeUUID copy];
  [v4 setStoreUUID:v10];

  value = [(AMSMetricsIdentifierInfo *)self value];
  v12 = [value copy];
  [v4 setValue:v12];

  expires = [(AMSMetricsIdentifierInfo *)self expires];
  v14 = [expires copy];
  [v4 setExpires:v14];

  [v4 setDeleted:{-[AMSMetricsIdentifierInfo deleted](self, "deleted")}];
  lastSync = [(AMSMetricsIdentifierInfo *)self lastSync];
  v16 = [lastSync copy];
  [v4 setLastSync:v16];

  modified = [(AMSMetricsIdentifierInfo *)self modified];
  v18 = [modified copy];
  [v4 setModified:v18];

  serverProvidedAt = [(AMSMetricsIdentifierInfo *)self serverProvidedAt];
  v20 = [serverProvidedAt copy];
  [v4 setServerProvidedAt:v20];

  changeCounter = [(AMSMetricsIdentifierInfo *)self changeCounter];
  v22 = [changeCounter copy];
  [v4 setChangeCounter:v22];

  changeCause = [(AMSMetricsIdentifierInfo *)self changeCause];
  v24 = [changeCause copy];
  [v4 setChangeCause:v24];

  previousValue = [(AMSMetricsIdentifierInfo *)self previousValue];
  v26 = [previousValue copy];
  [v4 setPreviousValue:v26];

  return v4;
}

@end