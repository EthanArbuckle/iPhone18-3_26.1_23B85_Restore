void sub_1000012EC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) predictionForElement:*(a1 + 40)];
  v3 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 48);
    v6 = v3;
    v7 = [v5 speakableIdentifier];
    [v2 probability];
    v9 = 136315650;
    v10 = "[OSMRelevanceEngine predictionForSpeakable:withRelevanceProviders:handler:]_block_invoke";
    v11 = 2112;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Element: %@ Probability: %f", &v9, 0x20u);
  }

  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v4 = *(a1 + 56);
  [v2 probability];
  (*(v4 + 16))(v4);
}

REFeatureValue *__cdecl sub_100001FA8(id a1, REFeatureValue *a2)
{
  v2 = a2;
  [(REFeatureValue *)v2 doubleValue];
  if (v3 <= 60.0)
  {
    v10 = 0;
  }

  else
  {
    [(REFeatureValue *)v2 doubleValue];
    if (v4 > 60.0 && ([(REFeatureValue *)v2 doubleValue], v5 <= 900.0))
    {
      v10 = 1;
    }

    else
    {
      [(REFeatureValue *)v2 doubleValue];
      if (v6 > 900.0 && ([(REFeatureValue *)v2 doubleValue], v7 <= 1800.0))
      {
        v10 = 2;
      }

      else
      {
        [(REFeatureValue *)v2 doubleValue];
        if (v8 <= 1800.0)
        {
          v10 = 4;
        }

        else
        {
          [(REFeatureValue *)v2 doubleValue];
          if (v9 <= 3600.0)
          {
            v10 = 3;
          }

          else
          {
            v10 = 4;
          }
        }
      }
    }
  }

  v11 = [REFeatureValue featureValueWithInt64:v10];

  return v11;
}

REFeatureValue *__cdecl sub_1000020BC(id a1, REFeatureValue *a2)
{
  v2 = a2;
  [(REFeatureValue *)v2 doubleValue];
  if (v3 <= 60.0)
  {
    v12 = 0;
  }

  else
  {
    [(REFeatureValue *)v2 doubleValue];
    if (v4 > 60.0 && ([(REFeatureValue *)v2 doubleValue], v5 <= 3600.0))
    {
      v12 = 1;
    }

    else
    {
      [(REFeatureValue *)v2 doubleValue];
      if (v6 > 3600.0 && ([(REFeatureValue *)v2 doubleValue], v7 <= 86400.0))
      {
        v12 = 2;
      }

      else
      {
        [(REFeatureValue *)v2 doubleValue];
        if (v8 > 86400.0 && ([(REFeatureValue *)v2 doubleValue], v9 <= 604800.0))
        {
          v12 = 3;
        }

        else
        {
          [(REFeatureValue *)v2 doubleValue];
          if (v10 <= 604800.0)
          {
            v12 = 5;
          }

          else
          {
            [(REFeatureValue *)v2 doubleValue];
            if (v11 <= 2419200.0)
            {
              v12 = 4;
            }

            else
            {
              v12 = 5;
            }
          }
        }
      }
    }
  }

  v13 = [REFeatureValue featureValueWithInt64:v12];

  return v13;
}

void sub_100002258(id a1)
{
  qword_1000155C0 = objc_alloc_init(OSMRelevanceEngine);

  _objc_release_x1();
}

id sub_1000045DC(uint64_t a1, float a2)
{
  v4 = +[AFOpportuneSpeakingModuleDataCollection sharedCollector];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) contactId];
  *&v7 = a2;
  [v4 logSpeakable:v5 forContact:v6 withModelId:*(*(a1 + 48) + 16) withFeatures:*(a1 + 56) withScore:v7];

  v8 = *(a1 + 48);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(a1 + 32);
  *&v12 = a2;

  return [v9 modelWithIdentifier:v10 didUpdateScore:v11 forSpeakable:v12];
}

void sub_100005540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005558(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKey:kMRMediaRemoteNowPlayingInfoMediaType];
  if ([v6 isEqualToString:kMRMediaRemoteMediaTypeMusic])
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = 1;
  }

  else if ([v6 isEqualToString:kMRMediaRemoteMediaTypePodcast])
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = 2;
  }

  else if ([v6 isEqualToString:kMRMediaRemoteMediaTypeAudioBook])
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = 3;
  }

  else
  {
    v5 = [v6 isEqualToString:kMRMediaRemoteMediaTypeITunesU];
    v3 = *(*(a1 + 40) + 8);
    if (v5)
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }
  }

  *(v3 + 24) = v4;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000057AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000057C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000057DC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100005C58(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = *(*(a1 + 32) + 8);
  v4 = [v2 dateByAddingTimeInterval:-43200.0];
  v5 = [v2 dateByAddingTimeInterval:43200.0];
  v6 = [v3 predicateForEventsWithStartDate:v4 endDate:v5 calendars:0];

  v7 = *(*(a1 + 32) + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005D80;
  v10[3] = &unk_1000104C8;
  v8 = *(a1 + 48);
  v11 = v2;
  v12 = v8;
  v9 = v2;
  [v7 enumerateEventsMatchingPredicate:v6 usingBlock:v10];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100005D80(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "[OSMBackgroundFeatureManager hasOngoingEvent]_block_invoke_2";
    v12 = 2112;
    v13 = v5;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s found event: %@", &v10, 0x16u);
  }

  if (([v5 isAllDay] & 1) == 0)
  {
    v7 = [v5 startDate];
    if ([v7 compare:*(a1 + 32)] != 1)
    {
      v8 = [v5 endDate];
      if ([v8 compare:*(a1 + 32)] != -1)
      {
        v9 = [v5 availability];

        if (!v9)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          *a3 = 1;
        }

        goto LABEL_10;
      }
    }
  }

LABEL_10:
}

void sub_1000060DC(id a1)
{
  qword_1000155D8 = [[OSMBackgroundFeatureManager alloc] _init];

  _objc_release_x1();
}

int main(int argc, const char **argv, const char **envp)
{
  AFLogInitIfNeeded();
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_10000650C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "[OSMNotificationFeatureMap _recent]_block_invoke";
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s %@, error: %@", &v11, 0x20u);
  }

  v8 = [v5 firstObject];
  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  *(v9 + 48) = v8;

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000069EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006A08(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 firstName];
  v7 = [v5 lastName];
  if ([v6 length] && objc_msgSend(*(a1 + 32), "containsObject:", v6) && objc_msgSend(v7, "length") && objc_msgSend(*(a1 + 32), "containsObject:", v7))
  {
    [v5 score];
    *(*(*(a1 + 40) + 8) + 24) = v8;
    v9 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(*(*(a1 + 40) + 8) + 24);
      v11 = 136315394;
      v12 = "[OSMNotificationFeatureMap senderScore]_block_invoke";
      v13 = 2048;
      v14 = v10;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Found a match! score: %f", &v11, 0x16u);
    }

    *a3 = 1;
  }
}

void sub_10000725C(uint64_t a1)
{
  v2 = +[OSMBackgroundFeatureManager sharedBackgroundFeatureManager];
  v3 = [v2 feedbackManager];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007348;
  v7[3] = &unk_1000105F8;
  v8 = v4;
  v9 = *(a1 + 56);
  [v3 fetchNotificationUsageForSpeakableId:v8 withStartDate:v5 withEndDate:v6 withHandler:v7];
}

uint64_t sub_100007348(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v4 = a2;
    v5 = +[AFOpportuneSpeakingModuleDataCollection sharedCollector];
    [v5 logInteractionEvents:v4 forSpeakableId:*(a1 + 32)];

    v6 = +[OSMBackgroundFeatureManager sharedBackgroundFeatureManager];
    v7 = [v6 feedbackManager];
    [v7 interactionDetectedForSpeakableId:*(a1 + 32)];
  }

  v8 = *(*(a1 + 40) + 16);

  return v8();
}