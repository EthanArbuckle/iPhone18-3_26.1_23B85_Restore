@interface CLSContext
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (BOOL)shouldInsertInDatabase:(id)database;
- (CLSContext)initWithCKRecord:(id)record;
- (CLSContext)initWithDatabaseRow:(id)row;
- (int64_t)syncOrder;
- (unint64_t)changeHash;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSContext

- (CLSContext)initWithCKRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:CLSContextPropertyType];
  v6 = CLSContextTypeFromDefaultName();

  v7 = [recordCopy objectForKeyedSubscript:CLSPredicateKeyPathIdentifier];
  v8 = [recordCopy objectForKeyedSubscript:CLSPredicateKeyPathTitle];
  v9 = [(CLSContext *)self initWithInternalType:v6 identifier:v7 title:v8];
  if (!v9)
  {
    goto LABEL_46;
  }

  v58 = v8;
  v60 = v7;
  v10 = recordCopy;
  v11 = [v10 objectForKeyedSubscript:CLSContextPropertyIdentifierPath];
  [(CLSContext *)v9 setPath:v11];
  recordID = [v10 recordID];
  recordName = [recordID recordName];

  v14 = [v10 objectForKeyedSubscript:CLSPredicateKeyPathStableObjectID];
  if (objc_opt_respondsToSelector())
  {
    parentReferenceName = [(CLSContext *)v9 parentReferenceName];
    if (parentReferenceName)
    {
      v16 = [v10 objectForKeyedSubscript:parentReferenceName];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  if (!(recordName | v14))
  {
    goto LABEL_9;
  }

  if (!recordName || !v14)
  {
    [(CLSContext *)v9 setObjectID:recordName, v58, v60];
    if (!v14)
    {
      v14 = [CLSContext stableObjectIDForIdentifierPath:v11];
    }

    goto LABEL_17;
  }

  if (([recordName isEqualToString:v14] & 1) == 0)
  {
    [(CLSContext *)v9 setObjectID:recordName];
LABEL_17:
    if ([v14 length])
    {
      [(CLSContext *)v9 setStableObjectID:v14];
    }

    recordID2 = [v16 recordID];
    recordName2 = [recordID2 recordName];

    if (recordName2)
    {
      [(CLSContext *)v9 setParentObjectID:recordName2];
    }

    v17 = recordName;
    goto LABEL_22;
  }

LABEL_9:
  v17 = [CLSContext objectIDForIdentifierPath:v11, v58, v60];

  [(CLSContext *)v9 setObjectID:v17];
  [(CLSContext *)v9 setStableObjectID:v14];
  v18 = [v11 count];
  if (v18 < 2)
  {
    goto LABEL_23;
  }

  recordName2 = [v11 subarrayWithRange:{0, v18 - 1}];
  v20 = [CLSContext objectIDForIdentifierPath:recordName2];
  [(CLSContext *)v9 setParentObjectID:v20];

LABEL_22:
LABEL_23:

  v22 = [v10 objectForKeyedSubscript:@"appIdentifier"];
  [(CLSContext *)v9 setAppIdentifier:v22];

  v23 = [v10 objectForKeyedSubscript:@"dateCreated"];
  [(CLSContext *)v9 setDateCreated:v23];

  dateCreated = [(CLSContext *)v9 dateCreated];

  if (!dateCreated)
  {
    v25 = +[NSDate date];
    [(CLSContext *)v9 setDateCreated:v25];
  }

  v26 = [v10 objectForKeyedSubscript:@"dateLastModified"];
  [(CLSContext *)v9 setDateLastModified:v26];

  dateLastModified = [(CLSContext *)v9 dateLastModified];

  if (!dateLastModified)
  {
    dateCreated2 = [(CLSContext *)v9 dateCreated];
    [(CLSContext *)v9 setDateLastModified:dateCreated2];
  }

  v29 = [v10 objectForKeyedSubscript:CLSContextPropertyDisplayOrder];
  -[CLSContext setDisplayOrder:](v9, "setDisplayOrder:", [v29 integerValue]);

  v30 = [v10 objectForKeyedSubscript:CLSPredicateKeyPathUniversalLinkURL];
  if (v30)
  {
    v31 = [[NSURL alloc] initWithString:v30];
    [(CLSContext *)v9 setUniversalLinkURL:v31];
  }

  v32 = [v10 objectForKeyedSubscript:CLSPredicateKeyPathTopic];
  [(CLSContext *)v9 setTopic:v32];

  v33 = [v10 objectForKeyedSubscript:CLSContextPropertyStoreIdentifier];
  [(CLSContext *)v9 setStoreIdentifier:v33];

  v34 = [v10 objectForKeyedSubscript:CLSContextPropertyContentStoreIdentifier];
  [(CLSContext *)v9 setContentStoreIdentifier:v34];

  v35 = [v10 objectForKeyedSubscript:CLSContextPropertyStoreTeamID];
  [(CLSContext *)v9 setStoreTeamID:v35];

  v36 = [v10 objectForKeyedSubscript:CLSContextPropertySummary];
  [(CLSContext *)v9 setSummary:v36];

  v37 = [v10 objectForKeyedSubscript:CLSContextPropertyCustomTypeName];
  [(CLSContext *)v9 setCustomTypeName:v37];

  v38 = [v10 objectForKeyedSubscript:CLSContextPropertyAssignable];
  v39 = v38;
  if (v38)
  {
    -[CLSContext setAssignable:](v9, "setAssignable:", [v38 BOOLValue]);
  }

  suggestedAge = [(CLSContext *)v9 suggestedAge];
  v42 = v41;
  v43 = [v10 objectForKeyedSubscript:CLSPredicateKeyPathSuggestedAgeMin];
  v44 = [v10 objectForKeyedSubscript:CLSPredicateKeyPathSuggestedAgeMax];
  v45 = v44;
  if (v43)
  {
    integerValue = [v43 integerValue];
    if (v45)
    {
LABEL_33:
      integerValue2 = [v45 integerValue];
      goto LABEL_36;
    }
  }

  else
  {
    integerValue = suggestedAge;
    if (v44)
    {
      goto LABEL_33;
    }
  }

  integerValue2 = &suggestedAge[v42 - 1];
LABEL_36:
  v48 = integerValue2 - integerValue;
  if (integerValue2 < integerValue)
  {
    v48 = 0;
  }

  [(CLSContext *)v9 setSuggestedAge:integerValue, v48 + 1];
  suggestedCompletionTime = [(CLSContext *)v9 suggestedCompletionTime];
  v51 = v50;
  v52 = [v10 objectForKeyedSubscript:CLSPredicateKeyPathSuggestedCompletionTimeMin];

  v53 = [v10 objectForKeyedSubscript:CLSPredicateKeyPathSuggestedCompletionTimeMax];

  if (!v52)
  {
    integerValue3 = suggestedCompletionTime;
    if (v53)
    {
      goto LABEL_40;
    }

LABEL_42:
    integerValue4 = &suggestedCompletionTime[v51 - 1];
    goto LABEL_43;
  }

  integerValue3 = [v52 integerValue];
  if (!v53)
  {
    goto LABEL_42;
  }

LABEL_40:
  integerValue4 = [v53 integerValue];
LABEL_43:
  v56 = integerValue4 - integerValue3;
  if (integerValue4 < integerValue3)
  {
    v56 = 0;
  }

  [(CLSContext *)v9 setSuggestedCompletionTime:integerValue3, v56 + 1];

  v8 = v59;
  v7 = v61;
LABEL_46:

  return v9;
}

- (BOOL)shouldInsertInDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_opt_class();
  objectID = [(CLSContext *)self objectID];
  v7 = [databaseCopy select:v5 identity:objectID];

  if (v7)
  {
    currentActivityID = [v7 currentActivityID];
    [(CLSContext *)self setCurrentActivityID:currentActivityID];
  }

  return 1;
}

- (void)populate:(id)populate
{
  v34.receiver = self;
  v34.super_class = CLSContext;
  populateCopy = populate;
  [(CLSContext *)&v34 populate:populateCopy];
  [(CLSContext *)self type:v34.receiver];
  v5 = DefaultNameFromContextType();
  [populateCopy setObject:v5 forKeyedSubscript:CLSContextPropertyType];

  identifier = [(CLSContext *)self identifier];
  [populateCopy setObject:identifier forKeyedSubscript:CLSPredicateKeyPathIdentifier];

  title = [(CLSContext *)self title];
  [populateCopy setObject:title forKeyedSubscript:CLSPredicateKeyPathTitle];

  v8 = [NSNumber numberWithInteger:[(CLSContext *)self displayOrder]];
  [populateCopy setObject:v8 forKeyedSubscript:CLSContextPropertyDisplayOrder];

  universalLinkURL = [(CLSContext *)self universalLinkURL];
  absoluteString = [universalLinkURL absoluteString];
  [populateCopy setObject:absoluteString forKeyedSubscript:CLSPredicateKeyPathUniversalLinkURL];

  topic = [(CLSContext *)self topic];
  [populateCopy setObject:topic forKeyedSubscript:CLSPredicateKeyPathTopic];

  identifierPath = [(CLSContext *)self identifierPath];
  [populateCopy setObject:identifierPath forKeyedSubscript:CLSContextPropertyIdentifierPath];
  v13 = [objc_opt_class() objectIDPathFromIdentifierPath:identifierPath];
  v14 = [v13 componentsJoinedByString:@"/"];
  [populateCopy setObject:v14 forKeyedSubscript:CLSContextPropertyObjectIDPath];

  stableObjectID = [(CLSContext *)self stableObjectID];
  [populateCopy setObject:stableObjectID forKeyedSubscript:CLSPredicateKeyPathStableObjectID];

  v16 = [objc_opt_class() stableObjectIDPathFromIdentifierPath:identifierPath];
  v17 = [v16 componentsJoinedByString:@"/"];
  [populateCopy setObject:v17 forKeyedSubscript:CLSContextPropertyStableObjectIDPath];

  storeIdentifier = [(CLSContext *)self storeIdentifier];
  [populateCopy setObject:storeIdentifier forKeyedSubscript:CLSContextPropertyStoreIdentifier];

  contentStoreIdentifier = [(CLSContext *)self contentStoreIdentifier];
  [populateCopy setObject:contentStoreIdentifier forKeyedSubscript:CLSContextPropertyContentStoreIdentifier];

  storeTeamID = [(CLSContext *)self storeTeamID];
  [populateCopy setObject:storeTeamID forKeyedSubscript:CLSContextPropertyStoreTeamID];

  [(CLSContext *)self updateParentReferencesForRecord:populateCopy];
  summary = [(CLSContext *)self summary];
  [populateCopy setObject:summary forKeyedSubscript:CLSContextPropertySummary];

  customTypeName = [(CLSContext *)self customTypeName];
  [populateCopy setObject:customTypeName forKeyedSubscript:CLSContextPropertyCustomTypeName];

  v23 = [NSNumber numberWithBool:[(CLSContext *)self isAssignable]];
  [populateCopy setObject:v23 forKeyedSubscript:CLSContextPropertyAssignable];

  suggestedAge = [(CLSContext *)self suggestedAge];
  v26 = suggestedAge + v25 - 1;
  v27 = [NSNumber numberWithInteger:suggestedAge];
  [populateCopy setObject:v27 forKeyedSubscript:CLSPredicateKeyPathSuggestedAgeMin];

  v28 = [NSNumber numberWithInteger:v26];
  [populateCopy setObject:v28 forKeyedSubscript:CLSPredicateKeyPathSuggestedAgeMax];

  suggestedCompletionTime = [(CLSContext *)self suggestedCompletionTime];
  v31 = suggestedCompletionTime + v30 - 1;
  v32 = [NSNumber numberWithInteger:suggestedCompletionTime];
  [populateCopy setObject:v32 forKeyedSubscript:CLSPredicateKeyPathSuggestedCompletionTimeMin];

  v33 = [NSNumber numberWithInteger:v31];
  [populateCopy setObject:v33 forKeyedSubscript:CLSPredicateKeyPathSuggestedCompletionTimeMax];
}

- (int64_t)syncOrder
{
  identifierPath = [(CLSContext *)self identifierPath];
  v3 = [identifierPath count];

  return v3;
}

- (CLSContext)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v5 = sub_10016D778(rowCopy, CLSContextPropertyType);
  integerValue = [v5 integerValue];
  v7 = sub_10016D778(rowCopy, CLSPredicateKeyPathIdentifier);
  v8 = sub_10016D778(rowCopy, CLSPredicateKeyPathTitle);
  v9 = [(CLSContext *)self initWithInternalType:integerValue identifier:v7 title:v8];

  if (v9)
  {
    [(CLSContext *)v9 _initCommonPropsWithDatabaseRow:rowCopy];
    v10 = sub_10016D778(rowCopy, CLSPredicateKeyPathParentObjectID);
    [(CLSContext *)v9 setParentObjectID:v10];

    v11 = sub_10016D778(rowCopy, CLSContextPropertyDisplayOrder);
    -[CLSContext setDisplayOrder:](v9, "setDisplayOrder:", [v11 integerValue]);

    v12 = sub_10016D778(rowCopy, CLSPredicateKeyPathTopic);
    [(CLSContext *)v9 setTopic:v12];

    v13 = sub_10016D778(rowCopy, CLSPredicateKeyPathUniversalLinkURL);
    if (v13)
    {
      v14 = [[NSURL alloc] initWithString:v13];
      [(CLSContext *)v9 setUniversalLinkURL:v14];
    }

    v15 = sub_10016D778(rowCopy, CLSContextPropertyIdentifierPath);
    if (v15)
    {
      v16 = [CLSUtil pathFromData:v15];
    }

    else
    {
      v16 = &__NSArray0__struct;
    }

    [(CLSContext *)v9 setPath:v16];
    v17 = sub_10016D778(rowCopy, CLSPredicateKeyPathStableObjectID);
    if (!v17)
    {
      v17 = [CLSContext stableObjectIDForIdentifierPath:v16];
    }

    if ([v17 length])
    {
      [(CLSContext *)v9 setStableObjectID:v17];
    }

    v18 = sub_10016D778(rowCopy, CLSContextPropertyStoreIdentifier);
    [(CLSContext *)v9 setStoreIdentifier:v18];

    v19 = sub_10016D778(rowCopy, CLSContextPropertyContentStoreIdentifier);
    [(CLSContext *)v9 setContentStoreIdentifier:v19];

    v20 = sub_10016D778(rowCopy, CLSContextPropertyStoreTeamID);
    [(CLSContext *)v9 setStoreTeamID:v20];

    v21 = sub_10016D778(rowCopy, CLSContextPropertyCurrentActivityID);
    [(CLSContext *)v9 setCurrentActivityID:v21];

    v22 = sub_10016D778(rowCopy, CLSContextPropertyCustomTypeName);
    [(CLSContext *)v9 setCustomTypeName:v22];

    v23 = sub_10016D778(rowCopy, CLSContextPropertySummary);
    [(CLSContext *)v9 setSummary:v23];

    v24 = sub_10016D778(rowCopy, CLSPredicateKeyPathAssignable);
    -[CLSContext setAssignable:](v9, "setAssignable:", [v24 BOOLValue]);

    v25 = sub_10016D778(rowCopy, CLSPredicateKeyPathSuggestedAgeMin);
    integerValue2 = [v25 integerValue];

    v27 = sub_10016D778(rowCopy, CLSPredicateKeyPathSuggestedAgeMax);
    integerValue3 = [v27 integerValue];

    v29 = integerValue3 - integerValue2;
    if (integerValue3 < integerValue2)
    {
      v29 = 0;
    }

    [(CLSContext *)v9 setSuggestedAge:integerValue2, v29 + 1];
    v30 = sub_10016D778(rowCopy, CLSPredicateKeyPathSuggestedCompletionTimeMin);
    integerValue4 = [v30 integerValue];

    v32 = sub_10016D778(rowCopy, CLSPredicateKeyPathSuggestedCompletionTimeMax);
    integerValue5 = [v32 integerValue];

    v34 = integerValue5 - integerValue4;
    if (integerValue5 < integerValue4)
    {
      v34 = 0;
    }

    [(CLSContext *)v9 setSuggestedCompletionTime:integerValue4, v34 + 1];
  }

  return v9;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  v33.receiver = self;
  v33.super_class = CLSContext;
  [(CLSContext *)&v33 bindTo:toCopy];
  stableObjectID = [(CLSContext *)self stableObjectID];
  sub_1000982FC(toCopy, stableObjectID, CLSPredicateKeyPathStableObjectID);

  parentObjectID = [(CLSContext *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, CLSPredicateKeyPathParentObjectID);

  v7 = [NSNumber numberWithInteger:[(CLSContext *)self type]];
  sub_1000982FC(toCopy, v7, CLSContextPropertyType);

  identifier = [(CLSContext *)self identifier];
  sub_1000982FC(toCopy, identifier, CLSPredicateKeyPathIdentifier);

  title = [(CLSContext *)self title];
  sub_1000982FC(toCopy, title, CLSPredicateKeyPathTitle);

  v10 = [NSNumber numberWithInteger:[(CLSContext *)self displayOrder]];
  sub_1000982FC(toCopy, v10, CLSContextPropertyDisplayOrder);

  topic = [(CLSContext *)self topic];
  sub_1000982FC(toCopy, topic, CLSPredicateKeyPathTopic);

  universalLinkURL = [(CLSContext *)self universalLinkURL];
  absoluteString = [universalLinkURL absoluteString];
  sub_1000982FC(toCopy, absoluteString, CLSPredicateKeyPathUniversalLinkURL);

  identifierPath = [(CLSContext *)self identifierPath];
  if ([identifierPath count])
  {
    v15 = [CLSUtil dataFromPath:identifierPath makeBackwardCompatible:1 error:0];
  }

  else
  {
    v15 = 0;
  }

  sub_1000982FC(toCopy, v15, CLSContextPropertyIdentifierPath);
  storeIdentifier = [(CLSContext *)self storeIdentifier];
  sub_1000982FC(toCopy, storeIdentifier, CLSContextPropertyStoreIdentifier);

  contentStoreIdentifier = [(CLSContext *)self contentStoreIdentifier];
  sub_1000982FC(toCopy, contentStoreIdentifier, CLSContextPropertyContentStoreIdentifier);

  storeTeamID = [(CLSContext *)self storeTeamID];
  sub_1000982FC(toCopy, storeTeamID, CLSContextPropertyStoreTeamID);

  currentActivityID = [(CLSContext *)self currentActivityID];
  sub_1000982FC(toCopy, currentActivityID, CLSContextPropertyCurrentActivityID);

  customTypeName = [(CLSContext *)self customTypeName];
  sub_1000982FC(toCopy, customTypeName, CLSContextPropertyCustomTypeName);

  summary = [(CLSContext *)self summary];
  sub_1000982FC(toCopy, summary, CLSContextPropertySummary);

  v22 = [NSNumber numberWithBool:[(CLSContext *)self isAssignable]];
  sub_1000982FC(toCopy, v22, CLSPredicateKeyPathAssignable);

  suggestedAge = [(CLSContext *)self suggestedAge];
  v25 = suggestedAge + v24 - 1;
  v26 = [NSNumber numberWithInteger:suggestedAge];
  sub_1000982FC(toCopy, v26, CLSPredicateKeyPathSuggestedAgeMin);

  v27 = [NSNumber numberWithInteger:v25];
  sub_1000982FC(toCopy, v27, CLSPredicateKeyPathSuggestedAgeMax);

  suggestedCompletionTime = [(CLSContext *)self suggestedCompletionTime];
  v30 = suggestedCompletionTime + v29 - 1;
  v31 = [NSNumber numberWithInteger:suggestedCompletionTime];
  sub_1000982FC(toCopy, v31, CLSPredicateKeyPathSuggestedCompletionTimeMin);

  v32 = [NSNumber numberWithInteger:v30];
  sub_1000982FC(toCopy, v32, CLSPredicateKeyPathSuggestedCompletionTimeMax);
}

- (unint64_t)changeHash
{
  v16.receiver = self;
  v16.super_class = CLSContext;
  changeHash = [(CLSContext *)&v16 changeHash];
  parentObjectID = [(CLSContext *)self parentObjectID];
  if (parentObjectID)
  {
    parentObjectID2 = [(CLSContext *)self parentObjectID];
    _cls_stableHash = [parentObjectID2 _cls_stableHash];
  }

  else
  {
    _cls_stableHash = 11;
  }

  type = [(CLSContext *)self type];
  identifier = [(CLSContext *)self identifier];
  _cls_stableHash2 = [identifier _cls_stableHash];

  title = [(CLSContext *)self title];
  _cls_stableHash3 = [title _cls_stableHash];

  topic = [(CLSContext *)self topic];
  if (topic)
  {
    topic2 = [(CLSContext *)self topic];
    _cls_stableHash4 = [topic2 _cls_stableHash];
  }

  else
  {
    _cls_stableHash4 = 13;
  }

  return _cls_stableHash ^ changeHash ^ (2 * type) ^ _cls_stableHash2 ^ _cls_stableHash3 ^ _cls_stableHash4 ^ (4 * [(CLSContext *)self displayOrder]);
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version != 1)
  {
    if (version)
    {
LABEL_35:
      if (version == 4)
      {
        goto LABEL_52;
      }

      if (version == 3)
      {
LABEL_40:
        if ((sub_1000B9298(v8, @"alter table CLSContext add column assignable integer default 1", 0, 0, 0) & 1) == 0)
        {
          CLSInitLog();
          v30 = CLSLogDatabase;
          if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to migrate CLSContext(3): Could not add column assignable", buf, 2u);
          }

          0x7FFFFFFFFFFFFFFELL = @"alter table CLSContext add column assignable integer default 1";
          goto LABEL_90;
        }

        if ((sub_1000B9298(v8, @"create index CLSContext_assignable on CLSContext (assignable)", 0, 0, 0) & 1) == 0)
        {
          CLSInitLog();
          v31 = CLSLogDatabase;
          if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to migrate CLSContext(3): Could not create index CLSContext_assignable", buf, 2u);
          }

          0x7FFFFFFFFFFFFFFELL = @"create index CLSContext_assignable on CLSContext (assignable)";
          goto LABEL_90;
        }

        if ((sub_1000B9298(v8, @"alter table CLSContext add column ageMin integer default 0", 0, 0, 0) & 1) == 0)
        {
          CLSInitLog();
          v32 = CLSLogDatabase;
          if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to migrate CLSContext(3): Could not add column ageMin", buf, 2u);
          }

          0x7FFFFFFFFFFFFFFELL = @"alter table CLSContext add column ageMin integer default 0";
          goto LABEL_90;
        }

        if ((sub_1000B9298(v8, @"create index CLSContext_ageMin on CLSContext (ageMin)", 0, 0, 0) & 1) == 0)
        {
          CLSInitLog();
          v33 = CLSLogDatabase;
          if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to migrate CLSContext(3): Could not create index CLSContext_ageMin", buf, 2u);
          }

          0x7FFFFFFFFFFFFFFELL = @"create index CLSContext_ageMin on CLSContext (ageMin)";
          goto LABEL_90;
        }

        0x7FFFFFFFFFFFFFFELL = [NSString stringWithFormat:@"alter table CLSContext add column ageMax integer default %ld", 0x7FFFFFFFFFFFFFFELL];
        if (sub_1000B9298(v8, 0x7FFFFFFFFFFFFFFELL, 0, 0, 0))
        {

          if ((sub_1000B9298(v8, @"create index CLSContext_ageMax on CLSContext (ageMax)", 0, 0, 0) & 1) == 0)
          {
            CLSInitLog();
            v36 = CLSLogDatabase;
            if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to migrate CLSContext(3): Could not create index CLSContext_ageMax", buf, 2u);
            }

            0x7FFFFFFFFFFFFFFELL = @"create index CLSContext_ageMax on CLSContext (ageMax)";
            goto LABEL_90;
          }

          if ((sub_1000B9298(v8, @"alter table CLSContext add column timeMin integer default 0", 0, 0, 0) & 1) == 0)
          {
            CLSInitLog();
            v37 = CLSLogDatabase;
            if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to migrate CLSContext(3): Could not add column timeMin", buf, 2u);
            }

            0x7FFFFFFFFFFFFFFELL = @"alter table CLSContext add column timeMin integer default 0";
            goto LABEL_90;
          }

          if ((sub_1000B9298(v8, @"create index CLSContext_timeMin on CLSContext (timeMin)", 0, 0, 0) & 1) == 0)
          {
            CLSInitLog();
            v38 = CLSLogDatabase;
            if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to migrate CLSContext(3): Could not create index CLSContext_timeMin", buf, 2u);
            }

            0x7FFFFFFFFFFFFFFELL = @"create index CLSContext_timeMin on CLSContext (timeMin)";
            goto LABEL_90;
          }

          0x7FFFFFFFFFFFFFFELL = [NSString stringWithFormat:@"alter table CLSContext add column timeMax integer default %ld", 0x7FFFFFFFFFFFFFFELL];
          if (sub_1000B9298(v8, 0x7FFFFFFFFFFFFFFELL, 0, 0, 0))
          {

            if ((sub_1000B9298(v8, @"create index CLSContext_timeMax on CLSContext (timeMax)", 0, 0, 0) & 1) == 0)
            {
              CLSInitLog();
              v39 = CLSLogDatabase;
              if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to migrate CLSContext(3): Could not create index CLSContext_timeMax", buf, 2u);
              }

              0x7FFFFFFFFFFFFFFELL = @"create index CLSContext_timeMax on CLSContext (timeMax)";
              goto LABEL_90;
            }

            0x7FFFFFFFFFFFFFFELL = [NSString stringWithFormat:@"update CLSContext set assignable=1, ageMin=0, ageMax=%ld, timeMin=0, timeMax=%ld", 0x7FFFFFFFFFFFFFFELL, 0x7FFFFFFFFFFFFFFELL];
            if (sub_1000B9298(v8, 0x7FFFFFFFFFFFFFFELL, 0, 0, 0))
            {

LABEL_52:
              if (sub_1000B9298(v8, @"create trigger if not exists trigger_cascade_delete_activity_for_delete\n  after delete\n  on CLSContext\n  for each row\n  begin\n  delete from CLSActivity where parentObjectID=OLD.objectID;\n end\n", 0, 0, 0))
              {
                version = 5;
                goto LABEL_54;
              }

LABEL_91:
              LOBYTE(v24) = 0;
              goto LABEL_92;
            }

            CLSInitLog();
            v34 = CLSLogDatabase;
            if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
            {
LABEL_90:

              goto LABEL_91;
            }

            *buf = 0;
            v35 = "Failed to migrate CLSContext(3): Could not update CLSContext with default values for assignable, ageMin, ageMax, timeMin & timeMax";
          }

          else
          {
            CLSInitLog();
            v34 = CLSLogDatabase;
            if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_90;
            }

            *buf = 0;
            v35 = "Failed to migrate CLSContext(3): Could not add column timeMax";
          }
        }

        else
        {
          CLSInitLog();
          v34 = CLSLogDatabase;
          if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_90;
          }

          *buf = 0;
          v35 = "Failed to migrate CLSContext(3): Could not add column ageMax";
        }

        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v35, buf, 2u);
        goto LABEL_90;
      }

      if (version != 2)
      {
LABEL_54:
        *finalVersion = version;
        LOBYTE(v24) = 1;
        goto LABEL_92;
      }

      if (sub_1000B9298(v8, @"alter table CLSContext add column summary text", 0, 0, 0))
      {
        if (sub_1000B9298(v8, @"alter table CLSContext add column customTypeName text", 0, 0, 0))
        {
          goto LABEL_40;
        }

        CLSInitLog();
        v25 = CLSLogDatabase;
        if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_91;
        }

        *buf = 0;
        v26 = "Failed to migrate CLSContext(2): Could not add column customTypeName";
      }

      else
      {
        CLSInitLog();
        v25 = CLSLogDatabase;
        if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_91;
        }

        *buf = 0;
        v26 = "Failed to migrate CLSContext(2): Could not add column summary";
      }

LABEL_65:
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v26, buf, 2u);
      goto LABEL_91;
    }

    if (!sub_1000B9298(databaseCopy, @"create table CLSContext(   objectID          text not null,    parentObjectID    text,    appIdentifier     text not null,    dateCreated       real not null,    dateLastModified  real not null,    type              integer,    identifier        text not null,    title             text not null,    topic             text,    universalLinkURL  text,    path              blob,    displayOrder      integer,    storeIdentifier   text,    contentStoreIdentifier text,    storeTeamID       text,    currentActivityID text,    foreign key(parentObjectID) references CLSContext(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index CLSContext_objectID on CLSContext (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index CLSContext_parentObjectID on CLSContext (parentObjectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create table if not exists AuthStatus( statusID text not null,  identifier text not null,  parentStatusID text,  deniedCount integer default 0,  authorizedCount integer default 0)", 0, 0, 0) || !sub_1000B9298(v8, @"create index AuthStatus_identifier_parentStatusID on AuthStatus (identifier, parentStatusID)", 0, 0, 0))
    {
      goto LABEL_91;
    }
  }

  if ((sub_1000B9298(v8, @"alter table CLSContext add column stableObjectID text", 0, 0, 0) & 1) == 0)
  {
    CLSInitLog();
    v25 = CLSLogDatabase;
    if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_91;
    }

    *buf = 0;
    v26 = "Failed to migrate CLSContext(1): Could not add column stableObjectID";
    goto LABEL_65;
  }

  if ((sub_1000B9298(v8, @"create unique index CLSContext_stableObjectID on CLSContext (stableObjectID)", 0, 0, 0) & 1) == 0)
  {
    CLSInitLog();
    v25 = CLSLogDatabase;
    if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_91;
    }

    *buf = 0;
    v26 = "Failed to migrate CLSContext(1): Could not add index column CLSContext_stableObjectID";
    goto LABEL_65;
  }

  v9 = +[NSMapTable strongToStrongObjectsMapTable];
  v10 = objc_opt_new();
  v11 = objc_opt_class();
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10014A850;
  v48[3] = &unk_100206118;
  v12 = v10;
  v49 = v12;
  v43 = v9;
  v50 = v43;
  [v8 selectAll:v11 block:v48];
  if ([v12 count])
  {
    allObjects = [v12 allObjects];
    v14 = [PDDatabase whereSQLForArray:allObjects prefix:@"objectID in "];
    if (([v8 deleteAll:objc_opt_class() where:v14 bindings:allObjects] & 1) == 0)
    {
      CLSInitLog();
      v28 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v52 = allObjects;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to migrate CLSContext(1): Failed to delete rows with bad objectIDs: %@", buf, 0xCu);
      }

      v24 = 0;
      version = 1;
      goto LABEL_34;
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  allObjects = [v43 keyEnumerator];
  v15 = [allObjects countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v15)
  {
    v16 = v15;
    obj = allObjects;
    v41 = v12;
    v17 = v8;
    v18 = *v45;
    version = 2;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v44 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        v22 = [v43 objectForKey:v20];
        v55[0] = v22;
        v55[1] = v20;
        v23 = [NSArray arrayWithObjects:v55 count:2];
        if ((sub_1000B9298(v17, @"update CLSContext set stableObjectID=? where objectID=?", 0, v23, 0) & 1) == 0)
        {
          CLSInitLog();
          v27 = CLSLogDatabase;
          if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v52 = v22;
            v53 = 2112;
            v54 = v20;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to migrate CLSContext(1): Could not update CLSContext set stableObjectID=%@ where objectID=%@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v21);
          v24 = 0;
          version = 1;
          goto LABEL_29;
        }

        objc_autoreleasePoolPop(v21);
      }

      v16 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
      v24 = 1;
      if (v16)
      {
        continue;
      }

      break;
    }

LABEL_29:
    v8 = v17;
    v12 = v41;
    allObjects = obj;
  }

  else
  {
    v24 = 1;
    version = 2;
  }

LABEL_34:

  if (v24)
  {
    goto LABEL_35;
  }

LABEL_92:

  return v24;
}

- (void)willBeDeletedFromDatabase:(id)database
{
  databaseCopy = database;
  objectID = [(CLSContext *)self objectID];
  v7 = objectID;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [databaseCopy deleteAll:objc_opt_class() where:@"childObjectID = ?" bindings:v6];
}

@end