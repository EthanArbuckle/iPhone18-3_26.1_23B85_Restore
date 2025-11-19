@interface CLSCollaborationState
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
+ (id)hashableColumnNames;
- (BOOL)isAskedToTryAgain;
- (BOOL)isCompletedActivity;
- (BOOL)isCompletedHandout;
- (BOOL)isIncompleteActivity;
- (BOOL)isIncompleteHandout;
- (BOOL)isReturnedActivity;
- (CLSCollaborationState)initWithDatabaseRow:(id)a3;
- (unint64_t)changeHash;
- (void)bindTo:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSCollaborationState

- (BOOL)isIncompleteHandout
{
  if ([(CLSCollaborationState *)self domain]!= 5)
  {
    return 0;
  }

  v3 = [(CLSCollaborationState *)self state];
  objc_opt_self();
  objc_opt_self();
  return v3 != 2;
}

- (BOOL)isCompletedHandout
{
  if ([(CLSCollaborationState *)self domain]!= 5)
  {
    return 0;
  }

  v3 = [(CLSCollaborationState *)self state];
  objc_opt_self();
  return v3 == 2;
}

- (BOOL)isIncompleteActivity
{
  if ([(CLSCollaborationState *)self domain]!= 1)
  {
    return 0;
  }

  v3 = [(CLSCollaborationState *)self state];
  objc_opt_self();
  return v3 == 1;
}

- (BOOL)isCompletedActivity
{
  if ([(CLSCollaborationState *)self domain]== 1)
  {
    if ([(CLSCollaborationState *)self state]== 3 || [(CLSCollaborationState *)self state]== 4 || [(CLSCollaborationState *)self state]== 5)
    {
      v3 = [(CLSCollaborationState *)self flags];
      objc_opt_self();
      v4 = (v3 & 0x11) != 0;
    }

    else
    {
      v4 = 0;
    }

    v5 = [(CLSCollaborationState *)self state];
    objc_opt_self();
    return v5 == 2 || v4;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isReturnedActivity
{
  if ([(CLSCollaborationState *)self domain]!= 1)
  {
    return 0;
  }

  v3 = [(CLSCollaborationState *)self state];
  objc_opt_self();
  return (v3 - 3) < 2;
}

- (BOOL)isAskedToTryAgain
{
  if ([(CLSCollaborationState *)self domain]!= 1)
  {
    return 0;
  }

  v3 = [(CLSCollaborationState *)self state];
  v4 = [(CLSCollaborationState *)self flags];

  return [PDSchoolworkCollaborationStateAdaptor activityStateIsTryAgain:v3 flags:v4];
}

+ (id)hashableColumnNames
{
  v4[0] = @"rowid";
  v4[1] = @"dateLastModified";
  v4[2] = @"domainVersion";
  v4[3] = @"state";
  v4[4] = @"flags";
  v4[5] = @"classID";
  v4[6] = @"senderPersonID";
  v4[7] = @"recipientPersonID";
  v4[8] = @"note";
  v4[9] = @"assetURLString";
  v4[10] = @"info";
  v4[11] = @"serverETag";
  v4[12] = @"serverExecutionID";
  v4[13] = @"serverStatus";
  v2 = [NSArray arrayWithObjects:v4 count:14];

  return v2;
}

- (unint64_t)changeHash
{
  v26.receiver = self;
  v26.super_class = CLSCollaborationState;
  v25 = [(CLSCollaborationState *)&v26 changeHash];
  v24 = [(CLSCollaborationState *)self domainVersion];
  v3 = [(CLSCollaborationState *)self state];
  v4 = [(CLSCollaborationState *)self flags];
  v5 = [(CLSCollaborationState *)self classID];
  if (v5)
  {
    v6 = [(CLSCollaborationState *)self classID];
    v7 = [v6 _cls_stableHash];
  }

  else
  {
    v7 = 11;
  }

  v8 = [(CLSCollaborationState *)self senderPersonID];
  if (v8)
  {
    v9 = [(CLSCollaborationState *)self senderPersonID];
    v10 = [v9 _cls_stableHash];
  }

  else
  {
    v10 = 13;
  }

  v11 = [(CLSCollaborationState *)self recipientPersonID];
  if (v11)
  {
    v12 = [(CLSCollaborationState *)self recipientPersonID];
    v13 = [v12 _cls_stableHash];
  }

  else
  {
    v13 = 17;
  }

  v14 = [(CLSCollaborationState *)self note];
  if (v14)
  {
    v15 = [(CLSCollaborationState *)self note];
    v16 = [v15 _cls_stableHash];
  }

  else
  {
    v16 = 19;
  }

  v17 = [(CLSCollaborationState *)self assetURL];
  if (v17)
  {
    v18 = [(CLSCollaborationState *)self assetURL];
    v19 = [v18 _cls_stableHash];
  }

  else
  {
    v19 = 23;
  }

  v20 = [(CLSCollaborationState *)self info];
  if (v20)
  {
    v21 = [(CLSCollaborationState *)self info];
    v22 = [v21 hash];
  }

  else
  {
    v22 = 29;
  }

  return v25 ^ (2 * v24) ^ (4 * v3) ^ (8 * v4) ^ v7 ^ v10 ^ v13 ^ v16 ^ v19 ^ v22;
}

- (CLSCollaborationState)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSCollaborationState *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(v4, @"ownerPersonID");
    [v6 setOwnerPersonID:v8];

    v9 = sub_10016D778(v4, @"classID");
    [v6 setClassID:v9];

    v10 = sub_10016D778(v4, @"senderPersonID");
    [v6 setSenderPersonID:v10];

    v11 = sub_10016D778(v4, @"recipientPersonID");
    [v6 setRecipientPersonID:v11];

    v12 = sub_10016D778(v4, @"parentEntityName");
    [v6 setParentEntityName:v12];

    v13 = sub_10016D778(v4, @"domain");
    [v6 setDomain:{objc_msgSend(v13, "integerValue")}];

    v14 = sub_10016D778(v4, @"domainVersion");
    [v6 setDomainVersion:{objc_msgSend(v14, "integerValue")}];

    v15 = sub_10016D778(v4, @"state");
    [v6 setState:{objc_msgSend(v15, "integerValue")}];

    v16 = sub_10016D778(v4, @"flags");
    [v6 setFlags:{objc_msgSend(v16, "unsignedIntegerValue")}];

    v17 = sub_10016D778(v4, @"note");
    [v6 setNote:v17];

    v18 = sub_10016D778(v4, @"assetURLString");
    if (v18)
    {
      v19 = [NSURL URLWithString:v18];
      [v6 setAssetURL:v19];
    }

    else
    {
      [v6 setAssetURL:0];
    }

    v20 = sub_10016D778(v4, @"info");
    if (v20)
    {
      v21 = +[CLSCollaborationState supportedInfoDictionaryClasses];
      v22 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v21 withData:v20];
      [v6 setInfo:v22];
    }

    v23 = sub_10016D778(v4, @"serverETag");
    [v6 setServerETag:v23];

    v24 = sub_10016D778(v4, @"serverExecutionID");
    [v6 setServerExecutionID:v24];

    v25 = sub_10016D778(v4, @"serverStatus");
    [v6 setServerStatus:{objc_msgSend(v25, "integerValue")}];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = CLSCollaborationState;
  [(CLSCollaborationState *)&v28 bindTo:v4];
  v5 = [(CLSCollaborationState *)self parentObjectID];
  sub_1000982FC(v4, v5, @"parentObjectID");

  v6 = [(CLSCollaborationState *)self ownerPersonID];
  sub_1000982FC(v4, v6, @"ownerPersonID");

  v7 = [(CLSCollaborationState *)self classID];
  sub_1000982FC(v4, v7, @"classID");

  v8 = [(CLSCollaborationState *)self parentEntityName];
  sub_1000982FC(v4, v8, @"parentEntityName");

  v9 = [(CLSCollaborationState *)self senderPersonID];
  sub_1000982FC(v4, v9, @"senderPersonID");

  v10 = [(CLSCollaborationState *)self recipientPersonID];
  sub_1000982FC(v4, v10, @"recipientPersonID");

  v11 = [NSNumber numberWithInteger:[(CLSCollaborationState *)self domain]];
  sub_1000982FC(v4, v11, @"domain");

  v12 = [NSNumber numberWithInteger:[(CLSCollaborationState *)self domainVersion]];
  sub_1000982FC(v4, v12, @"domainVersion");

  v13 = [NSNumber numberWithInteger:[(CLSCollaborationState *)self state]];
  sub_1000982FC(v4, v13, @"state");

  v14 = [NSNumber numberWithUnsignedInteger:[(CLSCollaborationState *)self flags]];
  sub_1000982FC(v4, v14, @"flags");

  v15 = [(CLSCollaborationState *)self note];
  sub_1000982FC(v4, v15, @"note");

  v16 = [(CLSCollaborationState *)self assetURL];
  v17 = [v16 absoluteString];
  sub_1000982FC(v4, v17, @"assetURLString");

  v18 = [(CLSCollaborationState *)self info];

  if (v18)
  {
    v19 = [(CLSCollaborationState *)self info];
    v20 = [CLSUtil dictionaryStrippingNSNullValues:v19];
    [(CLSCollaborationState *)self setInfo:v20];

    v21 = [(CLSCollaborationState *)self info];
    v27 = 0;
    v18 = [NSKeyedArchiver archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v27];
    v22 = v27;

    if (v22)
    {
      [v22 cls_debug:CLSLogDatabase];
    }
  }

  sub_1000982FC(v4, v18, @"info");
  v23 = [(CLSCollaborationState *)self serverETag];
  sub_1000982FC(v4, v23, @"serverETag");

  v24 = [(CLSCollaborationState *)self serverExecutionID];
  sub_1000982FC(v4, v24, @"serverExecutionID");

  v25 = [NSNumber numberWithInteger:[(CLSCollaborationState *)self serverStatus]];
  sub_1000982FC(v4, v25, @"serverStatus");

  v29 = @"appIdentifier";
  v26 = [NSArray arrayWithObjects:&v29 count:1];
  sub_1000983A8(v4, v26);
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3 == 1)
  {
LABEL_9:
    if (sub_1000B9298(v8, @"alter table CLSCollaborationState add column info blob", 0, 0, 0))
    {
      a3 = 2;
      goto LABEL_11;
    }

    CLSInitLog();
    v10 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to migrate CLSCollaborationState(1): Could not add column 'info'", v12, 2u);
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSCollaborationState(   objectID            text not null,    parentObjectID      text not null,    parentEntityName    text not null,    ownerPersonID       text not null,    classID             text,    dateCreated         real not null,    dateLastModified    real not null,    senderPersonID      text,    recipientPersonID   text,    domain              integer,    domainVersion       integer,    state               integer,    flags               integer,    note                text,    assetURLString      text,    serverETag          text,    serverExecutionID   text,    serverStatus        text)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSCollaborationState_objectID on CLSCollaborationState (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSCollaborationState_parentObjectID on CLSCollaborationState (parentObjectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSCollaborationState_classID on CLSCollaborationState (classID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSCollaborationState_ownerPersonID on CLSCollaborationState (ownerPersonID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSCollaborationState_domain on CLSCollaborationState (domain)", 0, 0, 0))
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

LABEL_11:
  *a4 = a3;
  v9 = 1;
LABEL_15:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)a3
{
  v4 = a3;
  v5 = [(CLSCollaborationState *)self objectID];
  v6 = [v4 select:objc_opt_class() identity:v5];
  v7 = objc_opt_new();
  if (v6)
  {
    v8 = v6[2];
    [v7 addObjectsFromArray:v8];
  }

  else
  {
    v9 = objc_opt_new();
    v6 = v9;
    if (v9)
    {
      objc_setProperty_nonatomic_copy(v9, v10, v5, 8);
    }
  }

  v12 = v5;
  v11 = [NSArray arrayWithObjects:&v12 count:1];
  [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v11];
}

@end