@interface CLSAnswerFormat
+ (id)payloadsForObject:(id)a3 withSyncItem:(id)a4 database:(id)a5;
@end

@implementation CLSAnswerFormat

+ (id)payloadsForObject:(id)a3 withSyncItem:(id)a4 database:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = objc_autoreleasePoolPush();
  if (v7)
  {
    v12 = objc_alloc_init(PDDPPayload);
    [(PDDPPayload *)v12 setType:26];
    v13 = [v8 state] - 1;
    if (v13 < 3)
    {
      v14 = (v13 + 1);
    }

    else
    {
      v14 = 0;
    }

    [(PDDPPayload *)v12 setAction:v14];
    v15 = [v7 parentObjectID];
    v16 = sub_100070560(v9, v15);

    v17 = objc_opt_class();
    v18 = [v16 objectID];
    v43 = v18;
    v19 = [NSArray arrayWithObjects:&v43 count:1];
    v20 = [v9 select:v17 where:@"entityIdentity = ?" bindings:v19];

    if (!v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v7 objectID];
        v22 = sub_100120F3C(v9, v21);
      }

      else
      {
        v22 = 0;
      }

      v40 = v22;
      v27 = sub_10001AD90(v16, v7, v22);
      [(PDDPPayload *)v12 setSurveyStep:v27];

      v28 = [v16 objectID];
      v29 = sub_10006FEFC(v9, v28);

      v39 = v29;
      v30 = [v29 mutableCopy];
      v31 = [(PDDPPayload *)v12 surveyStep];
      [v31 setClassIds:v30];

      v32 = [v16 parentObjectID];
      if (v32)
      {
        v37 = sub_1000C8BEC(v9, v32);
        v33 = [CLSSurvey payloadForObject:v37 action:2 database:v9];
        v42 = v32;
        [NSArray arrayWithObjects:&v42 count:1];
        v34 = v38 = v11;
        sub_1000C8DF8(v9, v34, 1);

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
      v47 = [v8 state];
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "'%{public}@': Do not expect AnswerFormat object to be nil with action %{public}ld", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v11);

  return v10;
}

@end