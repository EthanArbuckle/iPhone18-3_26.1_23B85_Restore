@interface CLSCollaborationState
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
+ (id)hashableColumnNames;
- (BOOL)isAskedToTryAgain;
- (BOOL)isCompletedActivity;
- (BOOL)isCompletedHandout;
- (BOOL)isIncompleteActivity;
- (BOOL)isIncompleteHandout;
- (BOOL)isReturnedActivity;
- (CLSCollaborationState)initWithDatabaseRow:(id)row;
- (unint64_t)changeHash;
- (void)bindTo:(id)to;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSCollaborationState

- (BOOL)isIncompleteHandout
{
  if ([(CLSCollaborationState *)self domain]!= 5)
  {
    return 0;
  }

  state = [(CLSCollaborationState *)self state];
  objc_opt_self();
  objc_opt_self();
  return state != 2;
}

- (BOOL)isCompletedHandout
{
  if ([(CLSCollaborationState *)self domain]!= 5)
  {
    return 0;
  }

  state = [(CLSCollaborationState *)self state];
  objc_opt_self();
  return state == 2;
}

- (BOOL)isIncompleteActivity
{
  if ([(CLSCollaborationState *)self domain]!= 1)
  {
    return 0;
  }

  state = [(CLSCollaborationState *)self state];
  objc_opt_self();
  return state == 1;
}

- (BOOL)isCompletedActivity
{
  if ([(CLSCollaborationState *)self domain]== 1)
  {
    if ([(CLSCollaborationState *)self state]== 3 || [(CLSCollaborationState *)self state]== 4 || [(CLSCollaborationState *)self state]== 5)
    {
      flags = [(CLSCollaborationState *)self flags];
      objc_opt_self();
      v4 = (flags & 0x11) != 0;
    }

    else
    {
      v4 = 0;
    }

    state = [(CLSCollaborationState *)self state];
    objc_opt_self();
    return state == 2 || v4;
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

  state = [(CLSCollaborationState *)self state];
  objc_opt_self();
  return (state - 3) < 2;
}

- (BOOL)isAskedToTryAgain
{
  if ([(CLSCollaborationState *)self domain]!= 1)
  {
    return 0;
  }

  state = [(CLSCollaborationState *)self state];
  flags = [(CLSCollaborationState *)self flags];

  return [PDSchoolworkCollaborationStateAdaptor activityStateIsTryAgain:state flags:flags];
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
  changeHash = [(CLSCollaborationState *)&v26 changeHash];
  domainVersion = [(CLSCollaborationState *)self domainVersion];
  state = [(CLSCollaborationState *)self state];
  flags = [(CLSCollaborationState *)self flags];
  classID = [(CLSCollaborationState *)self classID];
  if (classID)
  {
    classID2 = [(CLSCollaborationState *)self classID];
    _cls_stableHash = [classID2 _cls_stableHash];
  }

  else
  {
    _cls_stableHash = 11;
  }

  senderPersonID = [(CLSCollaborationState *)self senderPersonID];
  if (senderPersonID)
  {
    senderPersonID2 = [(CLSCollaborationState *)self senderPersonID];
    _cls_stableHash2 = [senderPersonID2 _cls_stableHash];
  }

  else
  {
    _cls_stableHash2 = 13;
  }

  recipientPersonID = [(CLSCollaborationState *)self recipientPersonID];
  if (recipientPersonID)
  {
    recipientPersonID2 = [(CLSCollaborationState *)self recipientPersonID];
    _cls_stableHash3 = [recipientPersonID2 _cls_stableHash];
  }

  else
  {
    _cls_stableHash3 = 17;
  }

  note = [(CLSCollaborationState *)self note];
  if (note)
  {
    note2 = [(CLSCollaborationState *)self note];
    _cls_stableHash4 = [note2 _cls_stableHash];
  }

  else
  {
    _cls_stableHash4 = 19;
  }

  assetURL = [(CLSCollaborationState *)self assetURL];
  if (assetURL)
  {
    assetURL2 = [(CLSCollaborationState *)self assetURL];
    _cls_stableHash5 = [assetURL2 _cls_stableHash];
  }

  else
  {
    _cls_stableHash5 = 23;
  }

  info = [(CLSCollaborationState *)self info];
  if (info)
  {
    info2 = [(CLSCollaborationState *)self info];
    v22 = [info2 hash];
  }

  else
  {
    v22 = 29;
  }

  return changeHash ^ (2 * domainVersion) ^ (4 * state) ^ (8 * flags) ^ _cls_stableHash ^ _cls_stableHash2 ^ _cls_stableHash3 ^ _cls_stableHash4 ^ _cls_stableHash5 ^ v22;
}

- (CLSCollaborationState)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSCollaborationState *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, @"ownerPersonID");
    [v6 setOwnerPersonID:v8];

    v9 = sub_10016D778(rowCopy, @"classID");
    [v6 setClassID:v9];

    v10 = sub_10016D778(rowCopy, @"senderPersonID");
    [v6 setSenderPersonID:v10];

    v11 = sub_10016D778(rowCopy, @"recipientPersonID");
    [v6 setRecipientPersonID:v11];

    v12 = sub_10016D778(rowCopy, @"parentEntityName");
    [v6 setParentEntityName:v12];

    v13 = sub_10016D778(rowCopy, @"domain");
    [v6 setDomain:{objc_msgSend(v13, "integerValue")}];

    v14 = sub_10016D778(rowCopy, @"domainVersion");
    [v6 setDomainVersion:{objc_msgSend(v14, "integerValue")}];

    v15 = sub_10016D778(rowCopy, @"state");
    [v6 setState:{objc_msgSend(v15, "integerValue")}];

    v16 = sub_10016D778(rowCopy, @"flags");
    [v6 setFlags:{objc_msgSend(v16, "unsignedIntegerValue")}];

    v17 = sub_10016D778(rowCopy, @"note");
    [v6 setNote:v17];

    v18 = sub_10016D778(rowCopy, @"assetURLString");
    if (v18)
    {
      v19 = [NSURL URLWithString:v18];
      [v6 setAssetURL:v19];
    }

    else
    {
      [v6 setAssetURL:0];
    }

    v20 = sub_10016D778(rowCopy, @"info");
    if (v20)
    {
      v21 = +[CLSCollaborationState supportedInfoDictionaryClasses];
      v22 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v21 withData:v20];
      [v6 setInfo:v22];
    }

    v23 = sub_10016D778(rowCopy, @"serverETag");
    [v6 setServerETag:v23];

    v24 = sub_10016D778(rowCopy, @"serverExecutionID");
    [v6 setServerExecutionID:v24];

    v25 = sub_10016D778(rowCopy, @"serverStatus");
    [v6 setServerStatus:{objc_msgSend(v25, "integerValue")}];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  v28.receiver = self;
  v28.super_class = CLSCollaborationState;
  [(CLSCollaborationState *)&v28 bindTo:toCopy];
  parentObjectID = [(CLSCollaborationState *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  ownerPersonID = [(CLSCollaborationState *)self ownerPersonID];
  sub_1000982FC(toCopy, ownerPersonID, @"ownerPersonID");

  classID = [(CLSCollaborationState *)self classID];
  sub_1000982FC(toCopy, classID, @"classID");

  parentEntityName = [(CLSCollaborationState *)self parentEntityName];
  sub_1000982FC(toCopy, parentEntityName, @"parentEntityName");

  senderPersonID = [(CLSCollaborationState *)self senderPersonID];
  sub_1000982FC(toCopy, senderPersonID, @"senderPersonID");

  recipientPersonID = [(CLSCollaborationState *)self recipientPersonID];
  sub_1000982FC(toCopy, recipientPersonID, @"recipientPersonID");

  v11 = [NSNumber numberWithInteger:[(CLSCollaborationState *)self domain]];
  sub_1000982FC(toCopy, v11, @"domain");

  v12 = [NSNumber numberWithInteger:[(CLSCollaborationState *)self domainVersion]];
  sub_1000982FC(toCopy, v12, @"domainVersion");

  v13 = [NSNumber numberWithInteger:[(CLSCollaborationState *)self state]];
  sub_1000982FC(toCopy, v13, @"state");

  v14 = [NSNumber numberWithUnsignedInteger:[(CLSCollaborationState *)self flags]];
  sub_1000982FC(toCopy, v14, @"flags");

  note = [(CLSCollaborationState *)self note];
  sub_1000982FC(toCopy, note, @"note");

  assetURL = [(CLSCollaborationState *)self assetURL];
  absoluteString = [assetURL absoluteString];
  sub_1000982FC(toCopy, absoluteString, @"assetURLString");

  info = [(CLSCollaborationState *)self info];

  if (info)
  {
    info2 = [(CLSCollaborationState *)self info];
    v20 = [CLSUtil dictionaryStrippingNSNullValues:info2];
    [(CLSCollaborationState *)self setInfo:v20];

    info3 = [(CLSCollaborationState *)self info];
    v27 = 0;
    info = [NSKeyedArchiver archivedDataWithRootObject:info3 requiringSecureCoding:1 error:&v27];
    v22 = v27;

    if (v22)
    {
      [v22 cls_debug:CLSLogDatabase];
    }
  }

  sub_1000982FC(toCopy, info, @"info");
  serverETag = [(CLSCollaborationState *)self serverETag];
  sub_1000982FC(toCopy, serverETag, @"serverETag");

  serverExecutionID = [(CLSCollaborationState *)self serverExecutionID];
  sub_1000982FC(toCopy, serverExecutionID, @"serverExecutionID");

  v25 = [NSNumber numberWithInteger:[(CLSCollaborationState *)self serverStatus]];
  sub_1000982FC(toCopy, v25, @"serverStatus");

  v29 = @"appIdentifier";
  v26 = [NSArray arrayWithObjects:&v29 count:1];
  sub_1000983A8(toCopy, v26);
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version == 1)
  {
LABEL_9:
    if (sub_1000B9298(v8, @"alter table CLSCollaborationState add column info blob", 0, 0, 0))
    {
      version = 2;
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

  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSCollaborationState(   objectID            text not null,    parentObjectID      text not null,    parentEntityName    text not null,    ownerPersonID       text not null,    classID             text,    dateCreated         real not null,    dateLastModified    real not null,    senderPersonID      text,    recipientPersonID   text,    domain              integer,    domainVersion       integer,    state               integer,    flags               integer,    note                text,    assetURLString      text,    serverETag          text,    serverExecutionID   text,    serverStatus        text)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSCollaborationState_objectID on CLSCollaborationState (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSCollaborationState_parentObjectID on CLSCollaborationState (parentObjectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSCollaborationState_classID on CLSCollaborationState (classID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSCollaborationState_ownerPersonID on CLSCollaborationState (ownerPersonID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSCollaborationState_domain on CLSCollaborationState (domain)", 0, 0, 0))
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

LABEL_11:
  *finalVersion = version;
  v9 = 1;
LABEL_15:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)database
{
  databaseCopy = database;
  objectID = [(CLSCollaborationState *)self objectID];
  v6 = [databaseCopy select:objc_opt_class() identity:objectID];
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
      objc_setProperty_nonatomic_copy(v9, v10, objectID, 8);
    }
  }

  v12 = objectID;
  v11 = [NSArray arrayWithObjects:&v12 count:1];
  [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v11];
}

@end