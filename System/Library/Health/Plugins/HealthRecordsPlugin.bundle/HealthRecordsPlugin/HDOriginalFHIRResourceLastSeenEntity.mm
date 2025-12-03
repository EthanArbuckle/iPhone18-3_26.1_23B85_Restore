@interface HDOriginalFHIRResourceLastSeenEntity
+ (id)insertOrUpdateLastSeenDate:(id)date resourcePersistentID:(id)d database:(id)database error:(id *)error;
+ (id)lastSeenDateForResourceWithPersistentID:(id)d database:(id)database error:(id *)error;
+ (id)resourceEntitiesNotSeenSince:(id)since accountIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)resourceLastSeenObjectsForAccountIdentifier:(id)identifier profile:(id)profile error:(id *)error;
@end

@implementation HDOriginalFHIRResourceLastSeenEntity

+ (id)resourceLastSeenObjectsForAccountIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  v10 = objc_alloc_init(NSMutableArray);
  database = [profileCopy database];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1A388;
  v17[3] = &unk_106500;
  v19 = v10;
  selfCopy = self;
  v18 = identifierCopy;
  v12 = v10;
  v13 = identifierCopy;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v17];

  if (error)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

+ (id)resourceEntitiesNotSeenSince:(id)since accountIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  sinceCopy = since;
  identifierCopy = identifier;
  profileCopy = profile;
  if (!sinceCopy)
  {
    sub_9DE88(a2, self);
  }

  v14 = objc_alloc_init(NSMutableArray);
  database = [profileCopy database];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1A8A4;
  v23[3] = &unk_106570;
  v24 = identifierCopy;
  v25 = sinceCopy;
  v26 = v14;
  v16 = v14;
  v17 = sinceCopy;
  v18 = identifierCopy;
  v19 = [self performReadTransactionWithHealthDatabase:database error:error block:v23];

  if (v19)
  {
    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  return v20;
}

+ (id)insertOrUpdateLastSeenDate:(id)date resourcePersistentID:(id)d database:(id)database error:(id *)error
{
  dateCopy = date;
  dCopy = d;
  databaseCopy = database;
  if (!dCopy)
  {
    sub_9DF04(a2, self);
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1B090;
  v47 = sub_1B0A0;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1B090;
  v41 = sub_1B0A0;
  v42 = 0;
  v35[4] = self;
  v36 = 0;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1B0A8;
  v35[3] = &unk_106590;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1B14C;
  v33[3] = &unk_105DB8;
  v14 = dCopy;
  v34 = v14;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1B15C;
  v32[3] = &unk_1065B8;
  v32[4] = &v43;
  v32[5] = &v37;
  v15 = [databaseCopy executeCachedStatementForKey:&unk_E4072 error:&v36 SQLGenerator:v35 bindingHandler:v33 enumerationHandler:v32];
  v16 = v36;
  if ((v15 & 1) == 0)
  {
    _HKInitializeLogging();
    v17 = HKLogHealthRecords;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HKSensitiveLogItem();
      sub_9DF80(self, v18, buf, v17);
    }
  }

  if (v44[5])
  {
    v19 = [HDOriginalFHIRResourceLastSeenEntity entityWithPersistentID:?];
    v20 = v38[5];
    v21 = HKDateMax();
    LODWORD(v20) = v20 == v21;

    if (v20)
    {
      v19 = v19;
      v24 = v19;
    }

    else
    {
      v49 = HDOriginalFHIRResourceLastSeenEntityLastSeenDate;
      v22 = [NSArray arrayWithObjects:&v49 count:1];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1B22C;
      v27[3] = &unk_105B80;
      v28 = dateCopy;
      if ([v19 updateProperties:v22 database:databaseCopy error:error bindingHandler:v27])
      {
        v23 = v19;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
    }
  }

  else
  {
    v50[0] = HDOriginalFHIRResourceLastSeenEntityResourceID;
    v50[1] = HDOriginalFHIRResourceLastSeenEntityLastSeenDate;
    v25 = [NSArray arrayWithObjects:v50 count:2];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1B1CC;
    v29[3] = &unk_1065E0;
    v30 = v14;
    v31 = dateCopy;
    v19 = [self insertOrReplaceEntity:0 database:databaseCopy properties:v25 error:error bindingHandler:v29];

    v24 = v19;
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  return v24;
}

+ (id)lastSeenDateForResourceWithPersistentID:(id)d database:(id)database error:(id *)error
{
  dCopy = d;
  databaseCopy = database;
  if (!dCopy)
  {
    sub_9DFE8(a2, self);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1B090;
  v24 = sub_1B0A0;
  v25 = 0;
  v19 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1B45C;
  v18[3] = &unk_106590;
  v18[4] = self;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1B4F0;
  v16[3] = &unk_105DB8;
  v10 = dCopy;
  v17 = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1B500;
  v15[3] = &unk_106608;
  v15[4] = &v20;
  v11 = [databaseCopy executeCachedStatementForKey:&unk_E4073 error:&v19 SQLGenerator:v18 bindingHandler:v16 enumerationHandler:v15];
  v12 = v19;
  if (v11)
  {
    v13 = v21[5];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v20, 8);

  return v13;
}

@end