@interface PDPendingSyncItem
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
+ (NSString)entityName;
- (NSDictionary)statusReport;
- (PDPendingSyncItem)initWithDatabaseRow:(id)a3;
- (PDPendingSyncItem)initWithObject:(id)a3 state:(int64_t)a4;
- (void)bindTo:(id)a3;
@end

@implementation PDPendingSyncItem

+ (NSString)entityName
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_100206880;
}

- (NSDictionary)statusReport
{
  v10 = @"entity";
  v3 = NSStringFromClass(self->_entity);
  v4 = v3;
  entityIdentity = self->_entityIdentity;
  if (!entityIdentity)
  {
    entityIdentity = &stru_100206880;
  }

  v13 = v3;
  v14 = entityIdentity;
  v11 = @"identity";
  v12 = @"action";
  state = self->_state;
  if (state >= 4)
  {
    v7 = [NSString stringWithFormat:@"Unknown PDSyncState: '%ld'", self->_state, v10, v11, v12, v13, v14];
  }

  else
  {
    v7 = *(&off_100205328 + state);
  }

  v15 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v10 count:3];

  return v8;
}

- (PDPendingSyncItem)initWithObject:(id)a3 state:(int64_t)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = PDPendingSyncItem;
  v7 = [(PDPendingSyncItem *)&v16 init];
  if (v7)
  {
    v8 = +[NSUUID UUID];
    v9 = [v8 UUIDString];
    identityValue = v7->_identityValue;
    v7->_identityValue = v9;

    if (!v6)
    {
      __assert_rtn("[PDPendingSyncItem initWithObject:state:]", "PDPendingSyncItem.m", 59, "object != nil");
    }

    v11 = objc_opt_class();
    entity = v7->_entity;
    v7->_entity = v11;

    v13 = [v6 identityValue];
    entityIdentity = v7->_entityIdentity;
    v7->_entityIdentity = v13;

    v7->_state = a4;
    if (objc_opt_respondsToSelector())
    {
      v7->_syncOrder = [v6 syncOrder];
    }

    if (objc_opt_respondsToSelector())
    {
      v7->_syncableItemType = [v6 syncableItemType];
    }
  }

  return v7;
}

- (PDPendingSyncItem)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PDPendingSyncItem;
  v5 = [(PDPendingSyncItem *)&v18 init];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"identityValue");
    identityValue = v5->_identityValue;
    v5->_identityValue = v6;

    v8 = sub_10016D778(v4, @"entity");
    v9 = [PDDatabase entityNamed:v8];
    entity = v5->_entity;
    v5->_entity = v9;

    if (!v5->_entity)
    {
      __assert_rtn("[PDPendingSyncItem initWithDatabaseRow:]", "PDPendingSyncItem.m", 84, "_entity != nil");
    }

    v11 = sub_10016D778(v4, @"entityIdentity");
    entityIdentity = v5->_entityIdentity;
    v5->_entityIdentity = v11;

    v13 = sub_10016D778(v4, @"syncOrder");
    v5->_syncOrder = [v13 intValue];

    v14 = sub_10016D778(v4, @"state");
    v5->_state = [v14 intValue];

    v15 = sub_10016D778(v4, @"position");
    v5->_position = [v15 integerValue];

    v16 = sub_10016D778(v4, @"syncableItemType");
    v5->_syncableItemType = [v16 integerValue];
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  v4 = a3;
  if (!self->_entity)
  {
    __assert_rtn("[PDPendingSyncItem bindTo:]", "PDPendingSyncItem.m", 101, "_entity != nil");
  }

  v11 = v4;
  v5 = [PDDatabase nameOfEntity:?];
  if (!v5)
  {
    __assert_rtn("[PDPendingSyncItem bindTo:]", "PDPendingSyncItem.m", 104, "entityName != nil");
  }

  v6 = v5;
  sub_1000982FC(v11, self->_identityValue, @"identityValue");
  sub_1000982FC(v11, v6, @"entity");
  sub_1000982FC(v11, self->_entityIdentity, @"entityIdentity");
  v7 = [NSNumber numberWithUnsignedInteger:self->_syncOrder];
  sub_1000982FC(v11, v7, @"syncOrder");

  v8 = [NSNumber numberWithInteger:self->_state];
  sub_1000982FC(v11, v8, @"state");

  v9 = [NSNumber numberWithUnsignedInteger:self->_position];
  sub_1000982FC(v11, v9, @"position");

  v10 = [NSNumber numberWithInteger:self->_syncableItemType];
  sub_1000982FC(v11, v10, @"syncableItemType");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [a1 entityName];
  v10 = v9;
  if (a3 == 1)
  {
LABEL_6:
    if (v10 && [v10 isEqualToString:@"PDPendingCKSyncItem"])
    {
      *buf = 0;
      v47 = buf;
      v48 = 0x3032000000;
      v49 = sub_1000FAB2C;
      v50 = sub_1000FAB3C;
      v51 = [&off_10021BA18 componentsJoinedByString:@"\n"];
      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = sub_1000B9298(v8, *(v47 + 5), 0, 0, 0);
      if (v43[3])
      {
        v16 = *(v47 + 5);
        *(v47 + 5) = @"delete from PDPendingCKSyncItem where state = 3 and entity = 'CLSAsset'";

        v17 = sub_1000B9298(v8, *(v47 + 5), 0, 0, 0);
        *(v43 + 24) = v17;
        if (v17)
        {
          v18 = *(v47 + 5);
          *(v47 + 5) = @"insert into PDPendingCKSyncItemCopy (identityValue, entity, entityIdentity, state, syncOrder, position) select identityValue, entity, entityIdentity, state, syncOrder, position from PDPendingCKSyncItem";

          v19 = sub_1000B9298(v8, *(v47 + 5), 0, 0, 0);
          *(v43 + 24) = v19;
          if (v19)
          {
            v20 = objc_opt_class();
            v37[0] = _NSConcreteStackBlock;
            v37[1] = 3221225472;
            v37[2] = sub_1000FAB44;
            v37[3] = &unk_100205250;
            v21 = v8;
            v38 = v21;
            v39 = buf;
            v40 = &v42;
            [v21 selectAll:v20 block:v37];
            if (*(v43 + 24) != 1)
            {
              goto LABEL_41;
            }

            v22 = *(v47 + 5);
            *(v47 + 5) = @"drop table PDPendingCKSyncItem";

            v23 = sub_1000B9298(v21, *(v47 + 5), 0, 0, 0);
            *(v43 + 24) = v23;
            if (v23)
            {
              v24 = *(v47 + 5);
              *(v47 + 5) = @"alter table PDPendingCKSyncItemCopy rename to PDPendingCKSyncItem";

              v25 = sub_1000B9298(v21, *(v47 + 5), 0, 0, 0);
              *(v43 + 24) = v25;
              if (v25)
              {
                v26 = *(v47 + 5);
                *(v47 + 5) = @"create unique index PDPendingCKSyncItem_identityValue on PDPendingCKSyncItem (identityValue)";

                v27 = sub_1000B9298(v21, *(v47 + 5), 0, 0, 0);
                *(v43 + 24) = v27;
                if (v27)
                {
                  v28 = *(v47 + 5);
                  *(v47 + 5) = @"create index PDPendingCKSyncItem_entityIdentity on PDPendingCKSyncItem (entityIdentity)";

                  v29 = sub_1000B9298(v21, *(v47 + 5), 0, 0, 0);
                  *(v43 + 24) = v29;
                  if (v29)
                  {

                    _Block_object_dispose(&v42, 8);
                    _Block_object_dispose(buf, 8);

LABEL_18:
                    a3 = 2;
                    goto LABEL_19;
                  }

                  CLSInitLog();
                  v35 = CLSLogDatabase;
                  if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_41;
                  }

                  *v41 = 0;
                  v36 = "Failed to create index on PDPendingCKSyncItem";
                  goto LABEL_40;
                }

                CLSInitLog();
                v35 = CLSLogDatabase;
                if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
                {
                  *v41 = 0;
                  v36 = "Failed to create unique index on PDPendingCKSyncItem";
                  goto LABEL_40;
                }

LABEL_41:

                _Block_object_dispose(&v42, 8);
                _Block_object_dispose(buf, 8);

                goto LABEL_28;
              }

              CLSInitLog();
              v35 = CLSLogDatabase;
              if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_41;
              }

              *v41 = 0;
              v36 = "Failed to rename PDPendingCKSyncItemCopy as PDPendingCKSyncItem";
            }

            else
            {
              CLSInitLog();
              v35 = CLSLogDatabase;
              if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_41;
              }

              *v41 = 0;
              v36 = "Failed to drop PDPendingCKSyncItem";
            }

LABEL_40:
            _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, v36, v41, 2u);
            goto LABEL_41;
          }

          CLSInitLog();
          v32 = CLSLogDatabase;
          if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_27;
          }

          *v41 = 0;
          v33 = "Failed to insert rows in PDPendingCKSyncItemCopy from PDPendingCKSyncItem";
          goto LABEL_37;
        }

        CLSInitLog();
        v32 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *v41 = 0;
          v33 = "Failed to removed deleted CLSAsset from PDPendingCKSyncItem";
LABEL_37:
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, v33, v41, 2u);
        }
      }

LABEL_27:
      _Block_object_dispose(&v42, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_28;
    }

    if (sub_1000B9298(v8, @"alter table PDPendingCLSSyncItem add column syncableItemType integer", 0, 0, 0))
    {
      goto LABEL_18;
    }

    CLSInitLog();
    v31 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to add syncableItemType column on PDPendingCLSSyncItem", buf, 2u);
    }

LABEL_28:
    v30 = 0;
    goto LABEL_29;
  }

  if (!a3)
  {
    v52[0] = @"create table ";
    v52[1] = v9;
    v52[2] = CFSTR(" (");
    v52[3] = @"    identityValue text not null,";
    v52[4] = @"    entity text not null,";
    v52[5] = @"    entityIdentity text not null,";
    v52[6] = @"    state integer not null,";
    v52[7] = @"    syncOrder integer not null,";
    v52[8] = @"    position integer";
    v52[9] = @"");
    v11 = [NSArray arrayWithObjects:v52 count:10];
    v12 = [v11 componentsJoinedByString:@"\n"];

    if (sub_1000B9298(v8, v12, 0, 0, 0))
    {
      v13 = [[NSString alloc] initWithFormat:@"create unique index %@_identityValue on %@ (identityValue)", v10, v10];

      if (sub_1000B9298(v8, v13, 0, 0, 0))
      {
        v14 = [[NSString alloc] initWithFormat:@"create index %@_entityIdentity on %@ (entityIdentity)", v10, v10];

        v15 = sub_1000B9298(v8, v14, 0, 0, 0);
        if (!v15)
        {
          goto LABEL_28;
        }

        goto LABEL_6;
      }

      v12 = v13;
    }

    goto LABEL_28;
  }

LABEL_19:
  *a4 = a3;
  v30 = 1;
LABEL_29:

  return v30;
}

@end