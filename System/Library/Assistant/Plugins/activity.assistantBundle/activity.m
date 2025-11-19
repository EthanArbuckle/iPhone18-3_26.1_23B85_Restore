uint64_t sub_1700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [_DKQuery predicateForObjectsWithMetadataKey:a2 andStringValue:a3];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  return _objc_release_x1();
}

id sub_1C40(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_DKAnyStringIdentifier type];
  v4 = [_DKEventStream eventStreamWithName:v2 valueType:v3];

  return v4;
}

void sub_1CC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = [v6 localizedDescription];
    v10 = [NSString stringWithFormat:@"%@ error. %@", v8, v9];

    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
    {
      sub_70FC();
    }

    v11 = [[SACommandFailed alloc] initWithReason:v10];
    v12 = [v11 dictionary];
  }

  else
  {
    v10 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 count])
    {
      v35 = +[NSMutableArray array];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v10 = v10;
      v13 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v13)
      {
        v14 = v13;
        v33 = v5;
        v34 = *v37;
        while (2)
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v37 != v34)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v36 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([v16 value], v17 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v17, (isKindOfClass & 1) == 0))
            {
              v27 = [NSString stringWithFormat:@"Could not create activity from stored value: %@", v16];
              if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
              {
                sub_70FC();
              }

              v28 = [[SACommandFailed alloc] initWithReason:v27];
              v29 = [v28 dictionary];

              v5 = v33;
              goto LABEL_21;
            }

            v19 = [v16 value];
            v20 = [v19 stringValue];

            v21 = +[SAActivityObject activityObject];
            v22 = [v16 stream];
            v23 = [v22 name];
            [v21 setStreamType:v23];

            [v21 setType:v20];
            v24 = [v16 startDate];
            [v21 setStartDate:v24];

            v25 = [v16 endDate];
            [v21 setEndDate:v25];

            v26 = [v16 metadata];
            [v21 setMetadata:v26];

            [v35 addObject:v21];
          }

          v14 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
          v5 = v33;
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:

      v30 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v41 = "[ASFetchActivityStream fetchActivityStreamWithPredicate:completion:]_block_invoke";
        v42 = 2112;
        v43 = v35;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%s activities retrieved: %@", buf, 0x16u);
      }

      [*(a1 + 40) setActivities:v35];
      v12 = [*(a1 + 40) dictionary];
    }

    else
    {
      [*(a1 + 40) setActivities:&__NSArray0__struct];
      v12 = [*(a1 + 40) dictionary];
    }
  }

  v31 = *(a1 + 48);
  if (v31)
  {
    if (!v12)
    {
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
      {
        sub_7174();
      }

      v32 = [[SACommandFailed alloc] initWithReason:@"FATAL: Response not constructed!"];
      v12 = [v32 dictionary];

      v31 = *(a1 + 48);
    }

    (*(v31 + 16))(v31, v12);
  }
}

void sub_21B0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_3780(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 32);
    v8 = [a3 localizedDescription];
    v9 = [NSString stringWithFormat:@"%@ error. %@", v7, v8];

    v10 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[ASRemoveFromActivityStream removeFromActivityStreamWithPredicate:completion:]_block_invoke";
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = [[SACommandFailed alloc] initWithReason:v9];
LABEL_15:
      v16 = v12;
      v18 = [v12 dictionary];
      (*(v11 + 16))(v11, v18);

LABEL_16:
    }
  }

  else
  {
    v9 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 count])
    {
      v13 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        *buf = 136315394;
        v24 = "[ASRemoveFromActivityStream removeFromActivityStreamWithPredicate:completion:]_block_invoke";
        v25 = 2048;
        v26 = [v9 count];
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%s asking CoreDuet to remove %zd intents", buf, 0x16u);
      }

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_3A90;
      v19[3] = &unk_C410;
      v15 = *(a1 + 40);
      v20 = *(a1 + 32);
      v22 = *(a1 + 48);
      v9 = v9;
      v21 = v9;
      [v15 deleteObjects:v9 responseQueue:0 withCompletion:v19];

      v16 = v20;
      goto LABEL_16;
    }

    v17 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[ASRemoveFromActivityStream removeFromActivityStreamWithPredicate:completion:]_block_invoke";
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%s no activities to delete. Returning success", buf, 0xCu);
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = objc_alloc_init(SACommandSucceeded);
      goto LABEL_15;
    }
  }
}

void sub_3A90(void *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v12 = a1[4];
    v13 = [v5 localizedDescription];
    v10 = [NSString stringWithFormat:@"%@ error. %@", v12, v13];

    v14 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[ASRemoveFromActivityStream removeFromActivityStreamWithPredicate:completion:]_block_invoke";
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
    }

    v15 = a1[6];
    if (!v15)
    {
      goto LABEL_11;
    }

    v11 = [[SACommandFailed alloc] initWithReason:v10];
    v16 = [v11 dictionary];
    (*(v15 + 16))(v15, v16);

LABEL_10:
LABEL_11:

    goto LABEL_12;
  }

  v7 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[5];
    *buf = 136315394;
    v18 = "[ASRemoveFromActivityStream removeFromActivityStreamWithPredicate:completion:]_block_invoke";
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s the following activities were deleted successfully: %@", buf, 0x16u);
  }

  v9 = a1[6];
  if (v9)
  {
    v10 = objc_alloc_init(SACommandSucceeded);
    v11 = [v10 dictionary];
    (*(v9 + 16))(v9, v11);
    goto LABEL_10;
  }

LABEL_12:
}

void sub_4538(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 count])
    {
      v9 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[ASRecordActivity deleteActivitiesOlderThanDays:withCompletion:]_block_invoke";
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%s activities to delete: %@", &v12, 0x16u);
      }

      if ([v8 count])
      {
        [*(a1 + 32) deleteObjects:v8 responseQueue:0 withCompletion:*(a1 + 40)];
LABEL_16:

        goto LABEL_17;
      }

      v11 = *(a1 + 40);
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
      {
        v12 = 136315394;
        v13 = "[ASRecordActivity deleteActivitiesOlderThanDays:withCompletion:]_block_invoke";
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%s result = %@", &v12, 0x16u);
      }

      v11 = *(a1 + 40);
    }

    (*(v11 + 16))(v11, 1, 0);
    goto LABEL_16;
  }

  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
  {
    sub_7384();
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v6);
  }

LABEL_17:
}

void sub_48DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
    {
      sub_73F8();
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, v6);
    }
  }

  else
  {
    v8 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 count])
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_4B64;
      v13[3] = &unk_C488;
      v14 = *(a1 + 32);
      v9 = [v8 indexesOfObjectsPassingTest:v13];
      v10 = [v8 objectsAtIndexes:v9];
      v11 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "[ASRecordActivity deleteOlderSessionActivities:withCompletion:]_block_invoke_2";
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%s activities to delete: %@", buf, 0x16u);
      }

      [*(a1 + 40) deleteObjects:v10 responseQueue:0 withCompletion:*(a1 + 48)];
    }

    else
    {
      v12 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v16 = "[ASRecordActivity deleteOlderSessionActivities:withCompletion:]_block_invoke";
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%s result = %@", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

uint64_t sub_4B64(uint64_t a1, void *a2)
{
  v3 = [a2 metadata];
  v4 = [v3 objectForKey:@"sessionId"];

  if ([v4 length])
  {
    v5 = [v4 isEqualToString:*(a1 + 32)] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_4E38(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v12 = 136315394;
    v13 = "[ASRecordActivity recordActivityWithCompletion:]_block_invoke";
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%s activities deleted -> %@", &v12, 0x16u);
  }

  v8 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = [v9 activity];
    v12 = 136315394;
    v13 = "[ASRecordActivity recordActivityWithCompletion:]_block_invoke";
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s recording %@", &v12, 0x16u);
  }

  [*(a1 + 32) _recordActivityWithCompletion:*(a1 + 40)];
}

void sub_51A8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[ASRecordActivity _recordActivityWithCompletion:]_block_invoke";
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s success -> YES", &v12, 0xCu);
    }

    v8 = objc_alloc_init(SACommandSucceeded);
    v9 = [(__CFString *)v8 dictionary];
  }

  else
  {
    if (v5)
    {
      v8 = [v5 localizedDescription];
    }

    else
    {
      v8 = @"can't record event";
    }

    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
    {
      sub_74F8();
    }

    v10 = [[SACommandFailed alloc] initWithReason:v8];
    v9 = [v10 dictionary];
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v9);
  }
}

void sub_5E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v5 _fetchUserActivityForUUID:a2 withCompletion:v6];
  }

  else
  {
    v7 = [NSString stringWithFormat:@"Error getting current user activity Error: %@", a4];
    v8 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[ASFetchUserActivity fetchUserActivityWithCompletion:]_block_invoke";
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    if (*(a1 + 40))
    {
      v9 = [[SACommandFailed alloc] initWithReason:v7];
      v10 = *(a1 + 40);
      v11 = [v9 dictionary];
      (*(v10 + 16))(v10, v11);
    }
  }
}

void sub_6104(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      sub_7678();
    }

    v7 = [SACommandFailed alloc];
    v8 = [v6 localizedFailureReason];
    v9 = [v7 initWithReason:v8];
  }

  else
  {
    v9 = [v5 clientUserActivity];
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = [v9 dictionary];
    (*(v10 + 16))(v10, v11);
  }
}

void sub_6240(id a1)
{
  qword_12AB8 = +[_DKKnowledgeStore knowledgeStore];

  _objc_release_x1();
}

void sub_62C4(id a1)
{
  v1 = AFSharedResourcesDirectory();
  v4 = [v1 stringByAppendingPathComponent:@"Library/Assistant"];

  v2 = [_DKKnowledgeStorage storageWithDirectory:v4 readOnly:0 localOnly:1];
  v3 = qword_12AC8;
  qword_12AC8 = v2;
}

BOOL sub_6DAC(id a1, NSString *a2, id a3, BOOL *a4)
{
  v4 = a3;
  v5 = +[NSNull null];

  return v5 == v4;
}

void sub_71F8(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[ASDonateSiriQueryToPortrait performWithCompletion:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s %@", &v2, 0x16u);
}

void sub_7284(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[ASStartNavigation startNavigationWithCompletion:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s %@", &v2, 0x16u);
}

void sub_756C(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[ASDonateRankedQueriesToPortrait performWithCompletion:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s %@", &v2, 0x16u);
}

void sub_75F8()
{
  v1[0] = 136315394;
  sub_532C();
  _os_log_error_impl(&dword_0, v0, OS_LOG_TYPE_ERROR, "%s %@", v1, 0x16u);
}

void sub_7678()
{
  v1[0] = 136315394;
  sub_532C();
  _os_log_error_impl(&dword_0, v0, OS_LOG_TYPE_ERROR, "%s Error getting current user activity from uuid %@", v1, 0x16u);
}

void sub_7720(os_log_t log)
{
  v1 = 136315138;
  v2 = "[ASRecordLocationActivity recordLocationActivityWithCompletion:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%s ", &v1, 0xCu);
}

void sub_77A4(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[ASRecordLocationActivity recordLocationActivityWithCompletion:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s %@", &v2, 0x16u);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}