@interface CLSAnswerFormat
+ (id)payloadsForObject:(id)object withSyncItem:(id)item database:(id)database;
@end

@implementation CLSAnswerFormat

+ (id)payloadsForObject:(id)object withSyncItem:(id)item database:(id)database
{
  objectCopy = object;
  itemCopy = item;
  databaseCopy = database;
  v10 = objc_opt_new();
  v11 = objc_autoreleasePoolPush();
  if (objectCopy)
  {
    v12 = objc_alloc_init(PDDPPayload);
    [(PDDPPayload *)v12 setType:26];
    v13 = [itemCopy state] - 1;
    if (v13 < 3)
    {
      v14 = (v13 + 1);
    }

    else
    {
      v14 = 0;
    }

    [(PDDPPayload *)v12 setAction:v14];
    parentObjectID = [objectCopy parentObjectID];
    v16 = sub_100070560(databaseCopy, parentObjectID);

    v17 = objc_opt_class();
    objectID = [v16 objectID];
    v43 = objectID;
    v19 = [NSArray arrayWithObjects:&v43 count:1];
    v20 = [databaseCopy select:v17 where:@"entityIdentity = ?" bindings:v19];

    if (!v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objectID2 = [objectCopy objectID];
        v22 = sub_100120F3C(databaseCopy, objectID2);
      }

      else
      {
        v22 = 0;
      }

      v40 = v22;
      v27 = sub_10001AD90(v16, objectCopy, v22);
      [(PDDPPayload *)v12 setSurveyStep:v27];

      objectID3 = [v16 objectID];
      v29 = sub_10006FEFC(databaseCopy, objectID3);

      v39 = v29;
      v30 = [v29 mutableCopy];
      surveyStep = [(PDDPPayload *)v12 surveyStep];
      [surveyStep setClassIds:v30];

      parentObjectID2 = [v16 parentObjectID];
      if (parentObjectID2)
      {
        v37 = sub_1000C8BEC(databaseCopy, parentObjectID2);
        v33 = [CLSSurvey payloadForObject:v37 action:2 database:databaseCopy];
        v42 = parentObjectID2;
        [NSArray arrayWithObjects:&v42 count:1];
        v34 = v38 = v11;
        sub_1000C8DF8(databaseCopy, v34, 1);

        v41[0] = v12;
        v41[1] = v33;
        v35 = [NSArray arrayWithObjects:v41 count:2];
        [v10 addObjectsFromArray:v35];

        v11 = v38;
      }

      else
      {
        [v10 addObject:v12];
      }
    }
  }

  else
  {
    CLSInitLog();
    v23 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v24 = v23;
      v25 = objc_opt_class();
      v26 = v25;
      *buf = 138543618;
      v45 = v25;
      v46 = 2050;
      state = [itemCopy state];
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "'%{public}@': Do not expect AnswerFormat object to be nil with action %{public}ld", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v11);

  return v10;
}

@end