void sub_1002BB7DC(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADCoreBluetoothManager _init]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s %@", buf, 0x16u);
  }

  v5 = AFIsInternalInstall();
  if (a2 <= 3 && v5)
  {
    WriteStackshotReport_async();
  }
}

void sub_1002BBA10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 136315394;
      v12 = "+[ADCoreBluetoothManager fetchCBUUIDForConnectedDeviceWithAddress:completion:]_block_invoke";
      v13 = 2112;
      v14 = v10;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s CBController failed to find CBUUID for device with address: %@", &v11, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [v5 identifier];
    (*(v8 + 16))(v8, v9);
  }
}

id sub_1002BC33C(void *a1)
{
  v1 = a1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = *v21;
    v19 = AFDeviceContextKeyFlowContextUpdateCommand;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        if (([v8 fromLocalDevice] & 1) == 0)
        {
          v9 = [v8 deviceInfo];
          v10 = [v9 isCommunalDevice];

          if (v10)
          {
            v11 = [v8 af_validFlowContext];
            if (v11)
            {
              v12 = [v8 contextMetadataForKey:v19];
              v13 = [v12 deliveryDate];
              v14 = v13;
              if (!v4 || [v13 compare:v4] == 1)
              {
                v15 = v14;

                v16 = v11;
                v17 = v5;
                v5 = v16;

                v4 = v15;
              }
            }
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5;
}

id sub_1002BC510(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    sub_10001AF74(a2);
  }

  else
  {
    [a2 idsDeviceUniqueIdentifier];
  }
  v2 = ;

  return v2;
}

BOOL sub_1002BC558(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id sub_1002BC5A4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 count])
    {
      v28 = 0;
      v29 = _NSConcreteStackBlock;
      v30 = 3221225472;
      v31 = sub_1002BC8C4;
      v32 = &unk_100519C18;
      v33 = 1;
      v3 = AFPeerContentTupleGetContentMapFromArray();
      v4 = 0;
      v5 = [v4 count];
      if (v5)
      {
        v6 = v5;
        v7 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v20 = v7;
          *buf = 136315650;
          v36 = "ADDeviceProximityGetMapByAssistantIdentifierFromTuples";
          v37 = 2048;
          v38 = v6;
          v39 = 2048;
          v40 = [v2 count];
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Rejected %tu/%tu device context tuples.", buf, 0x20u);
        }

        if (AFIsInternalInstall())
        {
          v22 = v3;
          v23 = v2;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v21 = v4;
          v8 = v4;
          v9 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v25;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v25 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                {
                  v14 = *(*(&v24 + 1) + 8 * i);
                  v15 = v13;
                  v16 = [v14 content];
                  v17 = [v14 info];
                  v18 = AFPeerInfoGetCompactDescription();
                  *buf = 136315650;
                  v36 = "ADDeviceProximityGetMapByAssistantIdentifierFromTuples";
                  v37 = 2112;
                  v38 = v16;
                  v39 = 2112;
                  v40 = v18;
                  _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Rejected %@ from %@.", buf, 0x20u);
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
            }

            while (v10);
          }

          v3 = v22;
          v2 = v23;
          v4 = v21;
        }
      }
    }

    else
    {
      v3 = &__NSDictionary0__struct;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1002BC8C4(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    sub_10001AE44(a2);
  }

  else
  {
    [a2 assistantIdentifier];
  }
  v2 = ;

  return v2;
}

BOOL sub_1002BC90C(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id sub_1002BC960(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  v6 = 0;
  if (v4 && v5)
  {
    v7 = sub_10001AE44(v4);
    if ([v7 length])
    {
      v8 = [v3 objectForKey:v7];

      if (v8)
      {
LABEL_11:
        v6 = [v8 integerValue];

        goto LABEL_12;
      }
    }

    else
    {
    }

    v9 = sub_10001AF74(v4);
    if ([v9 length])
    {
      v8 = [v3 objectForKey:v9];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_11;
  }

LABEL_12:

  return v6;
}

uint64_t sub_1002BD384(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002BD39C(uint64_t a1)
{
  v2 = sub_1002BD5BC(*(*(a1 + 32) + 16));
  v3 = *(*(a1 + 32) + 16);
  v21 = v2;
  v4 = v3;
  v5 = SAUserIdentityClassificationUnknownValue;
  if ([v21 count] != 1)
  {
    if ([v21 count] < 2)
    {
      goto LABEL_19;
    }

    v7 = [v21 firstObject];
    v13 = [v4 objectForKey:v7];
    v14 = [v13 integerValue];

    v12 = [v21 objectAtIndex:1];
    v15 = [v4 objectForKey:v12];
    v16 = [v15 integerValue];

    if (v14 >= 46)
    {
      if (v14 - v16 >= 16)
      {
        if (v14 <= 0x59)
        {
          v17 = &SAUserIdentityClassificationUnsure1Value;
          if (v14 > 0x37)
          {
            v17 = &SAUserIdentityClassificationKnownValue;
          }
        }

        else
        {
          v17 = &SAUserIdentityClassificationConfidentValue;
        }
      }

      else
      {
        v17 = &SAUserIdentityClassificationUnsureNValue;
      }

      v18 = *v17;

      v5 = v18;
    }

    goto LABEL_17;
  }

  v6 = [v4 allKeys];
  v7 = [v6 firstObject];

  v8 = [v4 objectForKey:v7];
  v9 = [v8 integerValue];

  if (v9 >= 46)
  {
    v10 = &SAUserIdentityClassificationConfidentValue;
    v11 = &SAUserIdentityClassificationKnownValue;
    if (v9 <= 0x37)
    {
      v11 = &SAUserIdentityClassificationUnsure1Value;
    }

    if (v9 <= 0x59)
    {
      v10 = v11;
    }

    v12 = v5;
    v5 = *v10;
LABEL_17:
  }

LABEL_19:
  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v5;
}

id sub_1002BD5BC(void *a1)
{
  v1 = a1;
  v2 = [v1 keysSortedByValueUsingComparator:&stru_100519D90];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "_ADMultiUserTestSupportSortSharedIDsByScoresDescending";
    v7 = 2112;
    v8 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Sorted IDs: %@", &v5, 0x16u);
    v3 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "_ADMultiUserTestSupportSortSharedIDsByScoresDescending";
    v7 = 2112;
    v8 = v1;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s sharedIDs dict: %@", &v5, 0x16u);
  }

  return v2;
}

int64_t sub_1002BD710(id a1, NSNumber *a2, NSNumber *a3)
{
  v4 = a3;
  v5 = [(NSNumber *)a2 integerValue];
  v6 = [(NSNumber *)v4 integerValue];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

void sub_1002BD8F4(uint64_t a1)
{
  v12 = sub_1002BD5BC(*(*(a1 + 32) + 16));
  if ([v12 count])
  {
    v2 = [v12 firstObject];
    v3 = [*(*(a1 + 32) + 16) objectForKey:v2];
    v4 = [v3 integerValue];

    if (v4 > 45)
    {
      v10 = [v2 copy];
      v11 = *(*(a1 + 40) + 8);
      v7 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    else
    {
      v5 = *(*(a1 + 40) + 8);
      v6 = AFMultiUserDefaultSharedUserId;
      v7 = *(v5 + 40);
      *(v5 + 40) = v6;
    }
  }

  else
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = AFMultiUserDefaultSharedUserId;
    v2 = *(v8 + 40);
    *(v8 + 40) = v9;
  }
}

uint64_t sub_1002BDAE8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_1002BDC4C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (*(a1 + 64))
  {
    [*(*(a1 + 32) + 16) removeAllObjects];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }

  else
  {
    if (!v2)
    {
      v5 = objc_alloc_init(NSMutableDictionary);
      v6 = *(a1 + 32);
      v7 = *(v6 + 16);
      *(v6 + 16) = v5;

      v2 = *(*(a1 + 32) + 16);
    }

    v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) integerValue]);
    [v2 setObject:v4 forKey:*(a1 + 48)];
  }

  result = *(a1 + 56);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

void sub_1002BDE24(id a1)
{
  v1 = [[ADMultiUserTestSupport alloc] _init];
  v2 = qword_1005907E0;
  qword_1005907E0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1002BE0E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 alarms];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002BE1A4;
  v7[3] = &unk_10051DDC0;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 updateAlarms:v5 completionHandler:v7];
}

void sub_1002BE1A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * v9) identifier];
          [v4 addObject:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    v11 = [*(a1 + 32) createResponse];
    [v11 setAlarmIdentifiers:v4];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1002BE4D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 criteria];
  v6 = [*(a1 + 32) options];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002BE5A0;
  v8[3] = &unk_10051DDC0;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v4 fetchAlarmsMeetingCriteria:v5 searchOptions:v6 completionHandler:v8];
}

void sub_1002BE5A0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = [*(a1 + 32) createResponse];
      [v7 setResults:v8];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }
}

void sub_1002BE6E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 alarmURLs];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002BE7A4;
  v7[3] = &unk_10051DD98;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 dismissAlarmsWithURLs:v5 completionHandler:v7];
}

void sub_1002BE7A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5)
  {
    v7 = v3;
    if (v3)
    {
      (*(v5 + 16))(v5, 0, v3);
    }

    else
    {
      v6 = [*(a1 + 32) createResponse];
      (*(v5 + 16))(v5, v6, 0);
    }

    v4 = v7;
  }
}

void sub_1002BE8D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 alarmIdentifiers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002BE994;
  v7[3] = &unk_10051DD98;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 deleteAlarmsWithIdentifiers:v5 completionHandler:v7];
}

void sub_1002BE994(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5)
  {
    v7 = v3;
    if (v3)
    {
      (*(v5 + 16))(v5, 0, v3);
    }

    else
    {
      v6 = [*(a1 + 32) createResponse];
      (*(v5 + 16))(v5, v6, 0);
    }

    v4 = v7;
  }
}

void sub_1002BEAC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 alarm];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002BEB84;
  v7[3] = &unk_100519DB8;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 addAlarm:v5 completionHandler:v7];
}

void sub_1002BEB84(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    if (v9)
    {
      v7 = [*(a1 + 32) createResponse];
      v8 = [v9 identifier];
      [v7 setAlarmIdentifier:v8];

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }
}

id sub_1002BEC68(int a1)
{
  if (a1 == 1 || a1 == 2)
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1002BF0C8(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 64);

    [v2 _appPunchOutHandler:v3 forDomain:v4 completion:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = *(a1 + 32);
      v6 = [v23 toneLibraryAlertType];
      v7 = [v6 integerValue];

      v8 = [v23 itemURL];

      if (v8)
      {
        v9 = [objc_alloc(off_10058DAA8()) initWithType:v7];
        v10 = [NSURL alloc];
        v11 = [v23 itemURL];
        v12 = [v10 initWithString:v11];
        [v9 setExternalToneFileURL:v12];

        [v9 setShouldIgnoreRingerSwitch:1];
        v13 = [off_10058DAB0() alertWithConfiguration:v9];
        [v13 play];
      }

      else
      {
        [off_10058DAB0() playAlertForType:v7];
      }

      v21 = *(a1 + 64);
      v22 = objc_alloc_init(SACommandSucceeded);
      (*(v21 + 16))(v21, v22, 0);
    }

    else if ([*(a1 + 56) isFromRemote])
    {
      v14 = [AFSiriActivationContext newWithBuilder:&stru_100519E20];
      v15 = +[AFSiriActivationConnection sharedConnection];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1002BF3D0;
      v25[3] = &unk_100519E48;
      *v24 = *(a1 + 32);
      v16 = v24[0];
      v26 = vextq_s8(*v24, *v24, 8uLL);
      v27 = *(a1 + 48);
      v29 = *(a1 + 64);
      v28 = *(a1 + 56);
      [v15 activateWithRequestInfo:0 context:v14 completion:v25];
    }

    else
    {
      v18 = *(a1 + 32);
      v17 = *(a1 + 40);
      v19 = *(a1 + 48);
      v20 = *(a1 + 64);

      [v17 _unhandledCommand:v18 forDomain:v19 completion:v20];
    }
  }
}

void sub_1002BF3D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v10 = v5;
      v11 = [v3 error];
      v12 = 136315394;
      v13 = "[ADFauxUIService handleCommand:forDomain:executionContext:reply:]_block_invoke_3";
      v14 = 2112;
      v15 = v11;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Unable to bring up UI: %@", &v12, 0x16u);
    }

    v6 = [v3 error];
    v7 = [AFError errorWithCode:12 description:0 underlyingError:v6];

    [*(a1 + 32) _unhandledCommand:*(a1 + 40) error:v7 forDomain:*(a1 + 48) completion:*(a1 + 64)];
  }

  else
  {
    v7 = +[ADCommandCenter sharedCommandCenter];
    v8 = *(a1 + 40);
    v9 = [*(a1 + 56) info];
    [v7 handleCommand:v8 withExecutionContextMatchingInfo:v9 completion:*(a1 + 64)];
  }
}

void sub_1002BF570(id a1, AFSiriActivationContextMutating *a2)
{
  v2 = a2;
  [(AFSiriActivationContextMutating *)v2 setTimestamp:mach_absolute_time()];
  [(AFSiriActivationContextMutating *)v2 setSource:12];
  [(AFSiriActivationContextMutating *)v2 setEvent:18];
}

id sub_1002BF5D0()
{
  if (qword_100590808 != -1)
  {
    dispatch_once(&qword_100590808, &stru_100519E88);
  }

  v1 = qword_100590810;

  return v1;
}

void sub_1002BF624(id a1)
{
  sub_1002BF688();
  qword_100590810 = objc_getClass("TLAlert");
  if (!qword_100590810)
  {
    __assert_rtn("initTLAlert_block_invoke", "ADFauxUIService.m", 30, "classTLAlert");
  }

  off_10058DAB0 = sub_1002BF6E8;
}

void sub_1002BF688()
{
  if (!qword_100590800)
  {
    qword_100590800 = dlopen("/System/Library/PrivateFrameworks/ToneLibrary.framework/ToneLibrary", 2);
    if (!qword_100590800)
    {
      __assert_rtn("ToneLibraryLibrary", "ADFauxUIService.m", 28, "frameworkLibrary");
    }
  }
}

id sub_1002BF6F4()
{
  if (qword_1005907F0 != -1)
  {
    dispatch_once(&qword_1005907F0, &stru_100519E68);
  }

  v1 = qword_1005907F8;

  return v1;
}

void sub_1002BF748(id a1)
{
  sub_1002BF688();
  qword_1005907F8 = objc_getClass("TLAlertConfiguration");
  if (!qword_1005907F8)
  {
    __assert_rtn("initTLAlertConfiguration_block_invoke", "ADFauxUIService.m", 29, "classTLAlertConfiguration");
  }

  off_10058DAA8 = sub_1002BF7AC;
}

void sub_1002C2C00(void *a1)
{
  v2 = a1[4];
  v3 = +[ADAnalyticsIdentifiersUtils logger];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      v7 = a1[4];
      v8 = 138412290;
      v9 = v7;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Removing an observer for user: %@", &v8, 0xCu);
    }

    v5 = [*(a1[5] + 128) objectForKeyedSubscript:a1[4]];
    v6 = v5;
    if (v5)
    {
      [v5 removeObject:a1[6]];
      if (![v6 count])
      {
        [*(a1[5] + 128) removeObjectForKey:a1[4]];
      }
    }
  }

  else
  {
    if (v4)
    {
      LOWORD(v8) = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Removing an observer to the default user", &v8, 2u);
    }

    [*(a1[5] + 120) removeObject:a1[6]];
  }
}

void sub_1002C2DF0(uint64_t a1)
{
  v2 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Removing an observer for analytic ID changes", buf, 2u);
  }

  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [*(*(a1 + 32) + 128) allKeys];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:v9];
        [v10 removeObject:*(a1 + 40)];
        if (![v10 count])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 128) removeObjectsForKeys:v3];
  [*(*(a1 + 32) + 120) removeObject:*(a1 + 40)];
}

void sub_1002C3078(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[ADAnalyticsIdentifiersUtils logger];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      v10 = *(a1 + 32);
      v12 = 138412290;
      v13 = v10;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Adding an observer for user: %@", &v12, 0xCu);
    }

    v5 = [*(*(a1 + 40) + 128) objectForKeyedSubscript:*(a1 + 32)];
    if (!v5)
    {
      v5 = [NSHashTable hashTableWithOptions:5];
      [*(*(a1 + 40) + 128) setObject:v5 forKey:*(a1 + 32)];
    }

    [v5 addObject:*(a1 + 48)];
  }

  else
  {
    if (v4)
    {
      LOWORD(v12) = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Adding an observer to the default user", &v12, 2u);
    }

    [*(*(a1 + 40) + 120) addObject:*(a1 + 48)];
  }

  v6 = [*(a1 + 40) _retrieveExistingAnalyticsIdsForUser:*(a1 + 32)];
  v7 = +[ADAnalyticsIdentifiersUtils logger];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      LOWORD(v12) = 0;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Notifying observer of available Analytics IDs", &v12, 2u);
    }

    [*(a1 + 48) didReceiveIDs:v6 forUser:*(a1 + 32)];
  }

  else
  {
    if (v8)
    {
      v11 = *(a1 + 32);
      v12 = 138412290;
      v13 = v11;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Analytics IDs are not available. Triggering a new refresh for user: %@", &v12, 0xCu);
    }

    v9 = +[NSDate now];
    [*(a1 + 40) _refreshAnalyticsIdsForUser:*(a1 + 32) withTime:v9];
  }
}

void sub_1002C3448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C3464(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1002C347C(uint64_t a1)
{
  [*(a1 + 32) _refreshEphemeralIdentifiers:0];
  v2 = [*(*(a1 + 32) + 48) aggregationIds];
  v3 = [v2 current];
  v4 = [v3 value];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1002C36D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002C36EC(uint64_t a1)
{
  [*(a1 + 32) _refreshEphemeralIdentifiers:0];
  v2 = [*(*(a1 + 32) + 48) aggregationIds];
  v3 = [v2 current];
  v4 = [v3 value];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 40);
  v8 = [ADAnalyticsDeviceAndUserIds deviceAggregationIdWithDeviceId:*(*(a1 + 32) + 32) forUserAggregationId:*(*(*(a1 + 48) + 8) + 40)];
  (*(v7 + 16))(v7, v8);
}

void sub_1002C3880(uint64_t a1)
{
  v2 = +[ADMultiUserService sharedService];
  v3 = [v2 allUsersBySharedUserID];

  v4 = [v3 objectForKey:*(a1 + 32)];
  v5 = [v4 iCloudAltDSID];
  if (!v5)
  {
    v6 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Will be using the default user for the device as iCloudAltDSId could not be looked up for sharedUser", &v9, 2u);
    }

    v5 = [*(*(a1 + 40) + 40) defaultUserId];
  }

  v7 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Mapped sharedUserID %@ to iCloudAltDSId %@", &v9, 0x16u);
  }

  [*(a1 + 40) fetchDeviceAndUserIdsForiCloudAltDSId:v5 withCallback:*(a1 + 48)];
}

void sub_1002C3AD4(uint64_t a1)
{
  [*(a1 + 32) _refreshEphemeralIdentifiers:0];
  if ([*(*(a1 + 32) + 40) multiUserDevice] && (v2 = *(a1 + 40), objc_msgSend(*(*(a1 + 32) + 40), "defaultUserId"), v3 = objc_claimAutoreleasedReturnValue(), LODWORD(v2) = objc_msgSend(v2, "isEqualToString:", v3), v3, !v2))
  {
    v7 = +[NSDate now];
    v5 = [*(a1 + 32) _fetchIdsForUser:*(a1 + 40) creationTime:v7];
    v8 = [v5 currentEphemeralSeed];
    v6 = [ADAnalyticsIdentifiersProvider _createUserEphemeralIdWithUserSeed:v8 withCreationTime:v7];
  }

  else
  {
    v4 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v21) = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Using same identifiers as DIM event as this is either not a multi-user device or the provided user is same as the default user for the device", &v21, 2u);
    }

    v5 = *(*(a1 + 32) + 48);
    v6 = *(*(a1 + 32) + 72);
  }

  v9 = [v5 aggregationIds];
  v10 = [v9 current];

  v11 = [ADAnalyticsDeviceAndUserIds alloc];
  v12 = *(*(a1 + 32) + 32);
  v13 = [v10 value];
  v14 = [v10 effectiveFrom];
  v15 = [v10 expirationDate];
  v16 = [(ADAnalyticsDeviceAndUserIds *)v11 initWithFixedDeviceId:v12 withUserEphemeralId:v6 withUserAggregationId:v13 withUserAggregationIdEffectiveFrom:v14 withUserAggregationIdExpiration:v15];

  v17 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 40);
    v19 = [(ADAnalyticsDeviceAndUserIds *)v16 userAggregationId];
    v20 = [(ADAnalyticsDeviceAndUserIds *)v16 deviceAggregationId];
    v21 = 138413058;
    v22 = v18;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v19;
    v27 = 2112;
    v28 = v20;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Created user ephemeral identifiers user:%@ ephemeralId:%@ userAggregationId:%@ deviceAggregationId:%@", &v21, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1002C3E50(uint64_t a1)
{
  v2 = &OBJC_METACLASS___ADDictationConnection;
  v3 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Preparing to log Analytics Identifiers DIM events", buf, 2u);
  }

  v4 = AFIsHorseman();
  v5 = *(a1 + 32);
  if (v4)
  {
    if ((*(v5 + 8) & 1) == 0)
    {
      [*(v5 + 40) refreshHomeAndUserDetails];
      *(*(a1 + 32) + 8) = 0;
      v5 = *(a1 + 32);
    }

    [v5 _refreshAnalyticsIds];
    v29 = [ADAnalyticsIdentifiersProvider _computeSecondsSinceBirth:*(*(a1 + 32) + 64)];
    v6 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(*(a1 + 32) + 72);
      *buf = 138477827;
      v36 = v28;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Default User Ephemeral ID: %{private}@", buf, 0xCu);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = [*(*(a1 + 32) + 136) allKeys];
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      v30 = a1;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          v13 = [*(*(a1 + 32) + 136) objectForKeyedSubscript:v12];
          v14 = [&v2[76] logger];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = [v13 userEphemeralId];
            v16 = [v13 userAggregationId];
            v17 = [v13 deviceAggregationId];
            *buf = 138478595;
            v36 = v12;
            v37 = 2113;
            v38 = v15;
            v39 = 2113;
            v40 = v16;
            v41 = 2113;
            v42 = v17;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "User(%{private}@) EphemeralID(%{private}@) AggregationID(%{private}@) DeviceAggregationID(%{private}@)", buf, 0x2Au);

            v2 = &OBJC_METACLASS___ADDictationConnection;
            a1 = v30;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v9);
    }

    v18 = v29;
  }

  else
  {
    v18 = [v5 _refreshEphemeralIdentifiers:1];
  }

  v19 = [*(a1 + 32) _createDIMEphemeralIdentifiersEvent:v18];
  v20 = +[AssistantSiriAnalytics sharedStream];
  [v20 emitMessage:v19];

  v21 = [*(a1 + 32) _createDIMEphemeralToAggregationIdentifierMapEvent];
  v22 = +[AssistantSiriAnalytics sharedStream];
  [v22 emitMessage:v21];

  v23 = [ADSiriAnalyticsExperimentIdentifiersProvider createExperimentContextEventWithBucketId:*(*(a1 + 32) + 16)];
  v24 = +[AssistantSiriAnalytics sharedStream];
  [v24 emitMessage:v23];

  v25 = +[ADSiriAnalyticsOnDeviceDigestProvider createOnDeviceDigestEvent];
  v26 = +[AssistantSiriAnalytics sharedStream];
  [v26 emitMessage:v25];

  v27 = *(a1 + 40);
  if (v27)
  {
    (*(v27 + 16))(v27, v19, v21);
  }
}

uint64_t sub_1002C4468(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v5 = *(v3 + 40);
    *(v3 + 40) = v4;
  }

  else
  {
    v6 = AFIsHorseman();
    v7 = [*(a1 + 40) _fetchOrCreateFixedDeviceId];
    v8 = *(a1 + 40);
    v9 = *(v8 + 32);
    *(v8 + 32) = v7;

    if (v6)
    {
      v10 = ADSyncCoordinatorCommunalDevices;
    }

    else if (AFIsATV())
    {
      v10 = ADSyncCoordinatorATV;
    }

    else
    {
      v10 = ADSyncCoordinatorPersonalDevices;
    }

    v4 = objc_alloc_init(v10);
    v11 = *(a1 + 40);
    v5 = *(v11 + 40);
    *(v11 + 40) = v4;
  }

  return _objc_release_x1(v4, v5);
}

void sub_1002C4520(id a1)
{
  v1 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Initializing sharedInstance of ADAnalyticsIdentifiersProvider", v4, 2u);
  }

  v2 = objc_alloc_init(ADAnalyticsIdentifiersProvider);
  v3 = qword_100590848;
  qword_100590848 = v2;
}

void sub_1002C48E4(id a1)
{
  v1 = objc_alloc_init(NSISO8601DateFormatter);
  v2 = qword_100590838;
  qword_100590838 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1002C4920(id a1)
{
  v1 = [[NSUUID alloc] initWithUUIDString:@"19cd0db1-af0c-40c1-89ca-ae40361b5fe6"];
  v2 = qword_100590828;
  qword_100590828 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1002C49BC(id a1)
{
  v1 = [[NSUUID alloc] initWithUUIDString:@"7cc79b2d-e953-4e2f-95cd-5af8a4e707fe"];
  v2 = qword_100590818;
  qword_100590818 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1002C52BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C5304(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002C531C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    if (v4 && [v4 isEqual:*(a1 + 32)])
    {
      [v3 _processAndEvaluateSnapshot:*(a1 + 32)];
    }

    else
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v8 = v3[4];
        v9 = *(a1 + 32);
        v10 = 136315650;
        v11 = "[ADHomeAnnouncementContextAdaptor _processAndEvaluateSnapshot:]_block_invoke";
        v12 = 2112;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Ignored expiration timer based reevaluation because snapshot was changed. (current = %@, expected = %@)", &v10, 0x20u);
      }
    }
  }

  [*(*(*(a1 + 40) + 8) + 40) cancel];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

uint64_t sub_1002C5714(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    v2 = *(*(a1 + 40) + 16);

    return v2();
  }

  else
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[ADHomeAnnouncementContextAdaptor getSnapshotWithCompletion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unable to get home announcement snapshot until a snapshot updater is registered.", &v5, 0xCu);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

void sub_1002C5944(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeListener:?];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  v6 = *(*(a1 + 32) + 16);

  dispatch_group_leave(v6);
}

id sub_1002C5AE8(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(a1 + 32) + 24) addListener:?];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002C5B8C;
  v8[3] = &unk_100519F58;
  v8[4] = v5;
  return [v6 getSnapshotWithCompletion:v8];
}

void sub_1002C5B8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002C5C28;
  v7[3] = &unk_10051E010;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1002C5C28(uint64_t a1)
{
  [*(a1 + 32) _processAndEvaluateSnapshot:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 16);

  dispatch_group_leave(v2);
}

void sub_1002C6718(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002C67B4;
  v7[3] = &unk_10051E010;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1002C69FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1002C6A28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002C6B20;
  v10[3] = &unk_100519FE8;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  objc_copyWeak(&v14, (a1 + 48));
  v13 = *(a1 + 40);
  dispatch_async(v7, v10);

  objc_destroyWeak(&v14);
}

void sub_1002C6B20(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[ADMyriadService _syncLastWinWithStereoPartner]_block_invoke";
      v11 = 2112;
      v12 = v1;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Request failed: %@", &v9, 0x16u);
    }
  }

  else
  {
    v4 = [*(a1 + 40) objectForKey:@"lastWin"];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v7 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        v10 = "[ADMyriadService _syncLastWinWithStereoPartner]_block_invoke_2";
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Received malformed lastWin data", &v9, 0xCu);
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      if (WeakRetained)
      {
        if ([*(a1 + 48) isEqualToString:WeakRetained[4]])
        {
          v6 = objc_loadWeakRetained((a1 + 56));
          [v6 _setLastTimeStereoPartnerWon:v4];
        }

        else
        {
          v8 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v9 = 136315138;
            v10 = "[ADMyriadService _syncLastWinWithStereoPartner]_block_invoke";
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Stereo partner changed since request initiated", &v9, 0xCu);
          }
        }
      }
    }
  }
}

void sub_1002C6FF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 32))
  {
    v3 = *(v1 + 24);
    v4 = *(v2 + 16);
    v5 = *(a1 + 40);

    v4(v5, v3, 0);
  }

  else
  {
    v6 = [AFError errorWithCode:1006];
    (*(v2 + 16))(v2, 0, v6);
  }
}

void sub_1002C725C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[NSDate date];
  [v1 _setLastMyriadWin:v2];
}

void sub_1002C7408(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002C74B4;
  v7[3] = &unk_10051E010;
  v8 = v4;
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t sub_1002C7560(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100590860;
  qword_100590860 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_1002C7EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C7F18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002C7F30(void *a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "[ADSessionRemoteServer getSNConnectionMetrics:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s SNConnectionMetric: %@", &v12, 0x16u);
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
    goto LABEL_6;
  }

  v5 = *(*(a1[5] + 8) + 40);
  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v5 = *(*(a1[5] + 8) + 40);
  }

  [v5 addObject:v3];
  v9 = [v3 symptomsBasedNetworkQuality];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

LABEL_6:
  dispatch_group_leave(*(a1[4] + 440));
}

uint64_t sub_1002C8080(void *a1)
{
  v2 = [*(*(a1[6] + 8) + 40) count];
  if ([*(a1[4] + 424) count])
  {
    if (!v2)
    {
      v3 = [*(a1[4] + 424) mutableCopy];
      v4 = *(a1[6] + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;
    }

    [*(a1[4] + 424) removeAllObjects];
  }

  v6 = [*(*(a1[6] + 8) + 40) count];
  if (v6)
  {
    v7 = [*(*(a1[6] + 8) + 40) objectAtIndexedSubscript:v6 - 1];
    [v7 setSymptomsBasedNetworkQuality:*(*(a1[7] + 8) + 40)];
  }

  v8 = *(a1[5] + 16);

  return v8();
}

void sub_1002C81EC(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 assistantSessionDictationHIPAAMDMStatusDidChange];
}

void sub_1002C8CC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 275) == 1)
  {
    v3 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[ADSessionRemoteServer networkManagerLostNonWWANConnectivity:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Clearing flag to switch to WiFi on request end", &v4, 0xCu);
      v1 = *(a1 + 32);
    }

    *(v1 + 275) = 0;
  }
}

void sub_1002C8E10(uint64_t a1)
{
  if ([*(a1 + 32) state] >= 4 && objc_msgSend(*(a1 + 32), "_connectionIsWWAN"))
  {
    v2 = *(a1 + 32);
    if ((v2[322] & 1) != 0 || ([v2 delegate], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "assistantSessionShouldRestartConnectionOnWiFi:", *(a1 + 32)), v3, !v4))
    {
      v6 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v7 = 136315138;
        v8 = "[ADSessionRemoteServer networkManagerNonWWANDidBecomeAvailable:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s We're in a request, we'll check for a wifi transition afterward", &v7, 0xCu);
      }

      *(*(a1 + 32) + 275) = 1;
    }

    else
    {
      v5 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v7 = 136315138;
        v8 = "[ADSessionRemoteServer networkManagerNonWWANDidBecomeAvailable:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s WiFi became available and we're not on a request restarting connection", &v7, 0xCu);
      }

      [*(a1 + 32) _resetServerConnection];
      [*(a1 + 32) _startConnection];
    }
  }
}

id sub_1002C9010(uint64_t a1)
{
  v2 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSessionRemoteServer _multiUsersDidChange:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  return [*(a1 + 32) _sendMultiUserInfo];
}

void sub_1002C9140(uint64_t a1)
{
  v2 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADSessionRemoteServer _companionServiceStateDidChange:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [v3 _account];
  [v3 _sendSetRemoteDevicesWithAccount:v4];
}

void sub_1002C92B0(uint64_t a1)
{
  v2 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADSessionRemoteServer _homeContextDidChange:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  if ([*(a1 + 32) state] == 11)
  {
    v3 = [*(a1 + 40) object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 32) _sendHomeContext:v4];
  }
}

void sub_1002C9424(uint64_t a1)
{
  v2 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADSessionRemoteServer _homeInfoDidChange:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [v3 _account];
  [v3 _sendSetRemoteDevicesWithAccount:v4];
}

void sub_1002C95D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002C95FC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _siriNetworkServerConnection];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002C96BC;
  v7[3] = &unk_10051B778;
  v8 = v3;
  v6 = v3;
  [v5 barrier:v7];
}

void sub_1002CA5EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 assistantId];
  [v3 setAssistantIdentifier:v4];

  v6 = +[ADPreferences sharedPreferences];
  v5 = [v6 companionIdentifier];
  [v3 setIdsDeviceUniqueIdentifier:v5];
}

void sub_1002CB824(id a1, SABaseCommand *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = AFSiriLogContextSession;
  if (v5)
  {
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "[ADSessionRemoteServer _sendServerCommands:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Error sending command %@ %{public}@", &v7, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADSessionRemoteServer _sendServerCommands:]_block_invoke";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@ sent or buffered", &v7, 0x16u);
  }
}

void sub_1002CBBFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextSession;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 136315650;
      v8 = "[ADSessionRemoteServer _sendServerCommand:]_block_invoke";
      v9 = 2112;
      v10 = v5;
      v11 = 2114;
      v12 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Error sending command %@ %{public}@", &v7, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[ADSessionRemoteServer _sendServerCommand:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %@ sent or buffered", &v7, 0x16u);
  }
}

id sub_1002CC2B0(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[ADSessionRemoteServer _assistantFailedForReason:error:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Retrying after assistant failure", &v4, 0xCu);
    }

    return [*(a1 + 32) _startConnection];
  }

  return result;
}

id sub_1002CC840(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = objc_alloc_init(NSMutableDictionary);
  }

  v4 = v3;
  v5 = [*(a1 + 40) aceId];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"aceId"];
  }

  v6 = [*(a1 + 40) refId];
  if (v6)
  {
    [v4 setObject:v6 forKey:@"refId"];
  }

  return v4;
}

id sub_1002CD788(uint64_t a1)
{
  v2 = [*(a1 + 32) _authenticator];
  [v2 reset];

  [*(a1 + 32) _clearLimbo];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _informDelegateOfError:v4];
}

id sub_1002CE3A4(uint64_t a1, char a2, int a3)
{
  v4 = *(a1 + 32);
  if (*(a1 + 48) != *(v4 + 216))
  {
    v5 = *(a1 + 40);

    return [v5 reset];
  }

  if (!a3)
  {
    if (a2)
    {
      goto LABEL_13;
    }

LABEL_10:
    v8 = AFSiriLogContextSession;
    if (!os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      return [v4 _authenticationFailed];
    }

    *v12 = 136315138;
    *&v12[4] = "[ADSessionRemoteServer _continueAuthWithCertificateData:]_block_invoke";
    v9 = "%s Exceeded NAC cert retry attempts, failing authentication";
    goto LABEL_23;
  }

  if (*(v4 + 272) == 1)
  {
    v7 = *(v4 + 408);
    if (v7 <= 2)
    {
      *(v4 + 408) = v7 + 1;
      [*(a1 + 32) _setCachedServerCertificate:0];
LABEL_18:
      v10 = *(a1 + 32);
      goto LABEL_19;
    }

    v8 = AFSiriLogContextSession;
    if (!os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      return [v4 _authenticationFailed];
    }

    *v12 = 136315138;
    *&v12[4] = "[ADSessionRemoteServer _continueAuthWithCertificateData:]_block_invoke";
    v9 = "%s Exceeded bad cached cert retry attempts, failing authentication";
LABEL_23:
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v9, v12, 0xCu);
    v4 = *(a1 + 32);
    return [v4 _authenticationFailed];
  }

  if ((a2 & 1) == 0)
  {
    v11 = *(v4 + 416);
    if (v11 <= 1)
    {
      *(v4 + 416) = v11 + 1;
      goto LABEL_18;
    }

    goto LABEL_10;
  }

LABEL_13:
  v10 = *(a1 + 32);
LABEL_19:

  return [v10 _continueAuthentication];
}

void sub_1002CED64(uint64_t a1)
{
  *(*(a1 + 32) + 345) = 0;
  v2 = *(a1 + 32);
  if (v2[27] == *(a1 + 40))
  {
    if ([v2 _shouldRetry] && (objc_msgSend(*(a1 + 32), "state") < 11 || (objc_msgSend(*(a1 + 32), "delegate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "assistantSessionShouldAttemptRetry:", *(a1 + 32)), v4, v5)))
    {
      v6 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v8 = 136315138;
        v9 = "[ADSessionRemoteServer _retrySiriNetworkForFailedConnection:siriNetworkAnalysisInfo:onError:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Retrying after backoff", &v8, 0xCu);
      }

      [*(a1 + 32) _retryWithParameters:*(a1 + 64) skipPeer:*(a1 + 65) skipPeerError:*(a1 + 48) causedByError:*(a1 + 56) useSecondary:*(a1 + 66)];
    }

    else
    {
      v7 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v8 = 136315138;
        v9 = "[ADSessionRemoteServer _retrySiriNetworkForFailedConnection:siriNetworkAnalysisInfo:onError:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s State has changed, not proceeding with retry.", &v8, 0xCu);
      }

      [*(a1 + 32) _clearLimbo];
      [*(a1 + 32) _resetServerConnection];
      [*(a1 + 32) _informDelegateOfError:*(a1 + 56)];
    }
  }

  else
  {
    v3 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADSessionRemoteServer _retrySiriNetworkForFailedConnection:siriNetworkAnalysisInfo:onError:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Server connection is no longer current. ignoring backoff", &v8, 0xCu);
    }
  }
}

id sub_1002CF5C0(uint64_t a1)
{
  v4[0] = @"oldId";
  v4[1] = @"newId";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

void sub_1002CF824(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 208);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002CF90C;
  block[3] = &unk_10051A150;
  v8 = v3;
  v9 = v4;
  v12 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v13 = *(a1 + 58);
  v6 = v3;
  dispatch_async(v5, block);
}

id sub_1002CF90C(uint64_t a1)
{
  v2 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    if ([v3 btPreference])
    {
      v5 = @"preferBT";
    }

    else
    {
      v5 = @"notBT";
    }

    v6 = [*(a1 + 32) wifiPreference];
    v7 = @"notWiFi";
    v16 = "[ADSessionRemoteServer _retryWithParameters:skipPeer:skipPeerError:causedByError:useSecondary:]_block_invoke_2";
    *buf = 136315650;
    v17 = 2112;
    v18 = v5;
    if (v6)
    {
      v7 = @"preferWiFi";
    }

    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Recommendation on retry %@ %@", buf, 0x20u);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 65);
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = [*(a1 + 32) wifiPreference];
  LOBYTE(v14) = *(a1 + 66);
  return [v11 _reallyRetryPreferringWWAN:v8 skipPeer:v9 skipPeerError:v10 useWiFiHint:v12 causedByError:*(a1 + 56) forceReconnect:0 useSecondary:v14];
}

id sub_1002D1994(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    if (v2)
    {
      v4 = [v2 mutableCopy];
    }

    else
    {
      v4 = objc_alloc_init(NSMutableDictionary);
    }

    v5 = v4;
    v6 = [*(a1 + 48) _currentSNConnectionType];
    v7 = [v6 technologyDescription];

    if (v7)
    {
      [v5 setObject:v7 forKey:@"connectionType"];
    }

    v8 = [*(a1 + 32) connectionURL];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 absoluteString];
      [v5 setObject:v10 forKey:@"connectionURL"];
    }

    v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) interfaceIndex]);
    [v5 setObject:v11 forKey:@"interfaceIndex"];

    v12 = [*(a1 + 32) sendBufferSize];
    if (v12)
    {
      [v5 setObject:v12 forKey:@"sendBufferSize"];
    }

    v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) wwanPreferred]);
    [v5 setObject:v13 forKey:@"wwanPreferred"];

    v14 = [*(a1 + 32) policyId];
    if (v14)
    {
      [v5 setObject:v14 forKey:@"policyId"];
    }
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

void sub_1002D1E70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 216);
  if (v2 == *(a1 + 40))
  {
    v4 = *(v1 + 345);
    v5 = AFSiriLogContextSession;
    v6 = os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO);
    if (v4 == 1)
    {
      if (v6)
      {
        v12 = 136315138;
        v13 = "[ADSessionRemoteServer didCloseConnection:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Ignoring connection close since we have an incoming retry", &v12, 0xCu);
      }
    }

    else
    {
      if (v6)
      {
        v12 = 136315394;
        v13 = "[ADSessionRemoteServer didCloseConnection:]_block_invoke";
        v14 = 2112;
        v15 = v2;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Connection closed %@", &v12, 0x16u);
        v1 = *(a1 + 32);
      }

      if (*(v1 + 322) == 1)
      {
        v7 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
        {
          v12 = 136315138;
          v13 = "[ADSessionRemoteServer didCloseConnection:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Connection closed with active request, treating as error", &v12, 0xCu);
          v1 = *(a1 + 32);
        }

        v8 = *(a1 + 40);
        v9 = [AFError errorWithCode:9];
        [v1 _siriNetworkConnection:v8 didEncounterError:v9 siriNetworkAnalysisInfo:0];
      }

      else
      {
        v10 = [v1 delegate];
        [v10 assistantSessionConnectionDidClose:*(a1 + 32)];

        [*(a1 + 32) _clearLimbo];
        v11 = [*(a1 + 32) _siriNetworkManager];
        [v11 releaseWiFiAssertion];

        [*(a1 + 32) _resetServerConnection];
      }
    }
  }
}

void *sub_1002D2164(void *result)
{
  v1 = result[4];
  if (v1[27] == result[5])
  {
    v2 = result;
    v3 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v4 = v2[6];
      v5 = 136315394;
      v6 = "[ADSessionRemoteServer didReceiveAceObject:object:]_block_invoke";
      v7 = 2112;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Received object %@", &v5, 0x16u);
      v1 = v2[4];
    }

    return [v1 _handleAceObject:v2[6]];
  }

  return result;
}

void *sub_1002D2494(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[27] == *(a1 + 40))
  {
    [result _setSNCurrentConnectionType:*(a1 + 48)];
    v3 = [*(a1 + 32) delegate];
    [v3 assistantSession:*(a1 + 32) didOpenConnectionWithPolicyId:*(a1 + 56) routeId:*(a1 + 64) connectionDelay:*(a1 + 72)];

    v4 = *(a1 + 32);

    return [v4 _connectionOpened];
  }

  return result;
}

id sub_1002D251C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v2 setObject:v4 forKey:@"policyId"];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    [v3 setObject:v5 forKey:@"routeId"];
  }

  v6 = [NSNumber numberWithDouble:*(a1 + 56)];
  [v3 setObject:v6 forKey:@"delay"];

  v7 = [*(a1 + 48) technologyDescription];
  if (v7)
  {
    [v3 setObject:v7 forKey:@"connectionType"];
  }

  return v3;
}

void sub_1002D27D8(uint64_t a1)
{
  if ([*(a1 + 32) canUseWiFiDirectly] && (sub_100017820() & 1) == 0)
  {
    v2 = [*(a1 + 40) _siriNetworkManager];
    [v2 acquireWiFiAssertion:1];
  }
}

id sub_1002D2D60(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    *(*(a1 + 32) + 272) = 1;
  }

  else if (a3)
  {
    [*(a1 + 32) _setCachedServerCertificate:0];
  }

  v4 = *(a1 + 32);

  return [v4 _eagerAuthDidComplete];
}

void sub_1002D32D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002D32F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADSessionRemoteServer _resetServerConnectionSynchronously:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  [v5 cancelSynchronously:*(a1 + 48) isOnConnectionQueue:a3 completion:*(a1 + 40)];
  kdebug_trace();
  v7 = +[AFAnalytics sharedAnalytics];
  [v7 logEventWithType:913 context:0];

  v8 = [*(a1 + 32) _siriNetworkManager];
  [v8 releaseWiFiAssertion];
}

void sub_1002D3420(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = WeakRetained[26];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002D3548;
    block[3] = &unk_10051D2A0;
    v10 = WeakRetained;
    v7 = v3;
    v8 = *(a1 + 32);
    v11 = v7;
    v12 = v8;
    v14 = *(a1 + 48);
    v13 = *(a1 + 40);
    dispatch_async(v6, block);
  }

  else
  {
    dispatch_group_leave(*(*(a1 + 32) + 440));
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_1002D3548(void *a1)
{
  v2 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADSessionRemoteServer _resetServerConnectionSynchronously:completion:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Adding metrics", &v8, 0xCu);
  }

  v3 = *(a1[4] + 424);
  if (!v3)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = a1[4];
    v6 = *(v5 + 424);
    *(v5 + 424) = v4;

    v3 = *(a1[4] + 424);
  }

  [v3 addObject:a1[5]];
  dispatch_group_leave(*(a1[6] + 440));
  return (*(a1[8] + 16))();
}

void sub_1002D4164(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 208);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002D4224;
  block[3] = &unk_10051E088;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t sub_1002D4224(uint64_t a1)
{
  v2 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    if ([v3 btPreference])
    {
      v5 = @"preferBT";
    }

    else
    {
      v5 = @"notBT";
    }

    v6 = [*(a1 + 32) wifiPreference];
    v7 = @"notWiFi";
    *&v10[4] = "[ADSessionRemoteServer _startConnection]_block_invoke_2";
    *v10 = 136315650;
    *&v10[12] = 2112;
    *&v10[14] = v5;
    if (v6)
    {
      v7 = @"preferWiFi";
    }

    *&v10[22] = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Starting with proximity link recommendation %@ %@", v10, 0x20u);
  }

  if ([*(a1 + 32) wifiPreference])
  {
    v8 = [*(a1 + 40) _siriNetworkManager];
    [v8 acquireWiFiAssertion:2];
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), [*(a1 + 32) btPreference] ^ 1, objc_msgSend(*(a1 + 32), "wifiPreference"));
}

void sub_1002D6184(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[ADDeviceSyncTimerProvider getSnapshotWithCompletion:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Fetched local timer snapshot %@.", buf, 0x16u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002D633C;
  v8[3] = &unk_10051A360;
  v5 = v3;
  v9 = v5;
  v6 = [ADDeviceSyncSnapshot newWithBuilder:v8];
  v7 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[ADDeviceSyncTimerProvider getSnapshotWithCompletion:]_block_invoke_3";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Converted to device sync snapshot %@.", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1002D633C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setGeneration:{objc_msgSend(v3, "generation")}];
  v5 = [*(a1 + 32) date];
  [v4 setDate:v5];

  v6 = objc_alloc_init(NSMutableArray);
  v7 = [*(a1 + 32) timersByID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002D6448;
  v9[3] = &unk_10051A338;
  v10 = v6;
  v8 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];

  [v4 setItems:v8];
}

void sub_1002D6448(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D8DFC;
  v6[3] = &unk_100510EA0;
  v7 = a3;
  v4 = v7;
  v5 = [ADDeviceSyncItem newWithBuilder:v6];

  [v3 addObject:v5];
}

uint64_t sub_1002D6880(uint64_t a1, void *a2)
{
  v3 = [a2 generation];
  v4 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADDeviceSyncTimerProvider getGenerationWithCompletion:]_block_invoke";
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Loaded local timer generation %llu.", &v6, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1002D6DF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ADDeviceProximityManager sharedManager];
  v5 = sub_100015560(v3);
  v6 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002D6EE8;
  v9[3] = &unk_10051DD70;
  v7 = *(a1 + 32);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v4 getDeviceProximityRelativeToLocalDeviceWithDeviceContexts:v5 includesAllReachableDevices:v6 completion:v9];
}

void sub_1002D70B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1002D72B0;
  v16 = sub_1002D72C0;
  v17 = 0;
  if ([v5 isLocationSharingDevice])
  {
    v7 = sub_1002D72C8(v5, 4000);
    v8 = v13[5];
    v13[5] = v7;
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002D7574;
    v11[3] = &unk_10051A5E8;
    v11[4] = &v12;
    [v6 enumerateObjectsUsingBlock:v11];
  }

  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = v13[5];
    *buf = 136315394;
    v19 = "[ADDeviceResolutionServiceListener meDeviceWithCompletion:]_block_invoke";
    v20 = 2112;
    v21 = v10;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s #hal meDevice: %@", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  _Block_object_dispose(&v12, 8);
}

void sub_1002D7290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D72B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1002D72C8(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = +[ADDeviceCircleManager sharedInstance];
  v4 = [v3 managedPeerInfoMatchingPeerInfo:v2];

  v5 = [v2 idsDeviceUniqueIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v4 idsDeviceUniqueIdentifier];
  }

  v8 = v7;

  v9 = [v2 assistantIdentifier];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v4 assistantIdentifier];
  }

  v12 = v11;

  v13 = [v2 name];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [v4 name];
  }

  v16 = v15;

  v17 = [v2 roomName];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [v4 roomName];
  }

  v20 = v19;

  v21 = [v2 mediaRouteIdentifier];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = [v4 mediaRouteIdentifier];
  }

  v24 = v23;

  if ([v2 isCommunalDevice])
  {
    v25 = 1;
  }

  else
  {
    v25 = [v4 isCommunalDevice];
  }

  v26 = [v2 homeKitAccessoryIdentifier];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = [v4 homeKitAccessoryIdentifier];
  }

  v29 = v28;

  v30 = [SVDDeviceUnit alloc];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1002D75F0;
  v38[3] = &unk_10051A660;
  v39 = v16;
  v40 = v20;
  v42 = v29;
  v43 = a2;
  v44 = v25;
  v41 = v24;
  v31 = v29;
  v32 = v24;
  v33 = v20;
  v34 = v16;
  v35 = [v30 initWithIdentifier:v8 assistantId:v12 builder:v38];

  return v35;
}

void sub_1002D7574(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 isLocationSharingDevice])
  {
    v6 = sub_1002D72C8(v9, 0);
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

void sub_1002D75F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setName:v3];
  [v4 setRoomName:*(a1 + 40)];
  [v4 setProximity:*(a1 + 64)];
  [v4 setMediaRouteIdentifier:*(a1 + 48)];
  [v4 setIsCommunalDevice:*(a1 + 72)];
  [v4 setHomeKitAccessoryIdentifier:*(a1 + 56)];
}

void sub_1002D77D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 assistantId];
  v5 = [v3 userAssignedName];
  v6 = [v3 siriEnabled];

  if (!v3 || (v6 & 1) != 0)
  {
    v9 = +[ADCommandCenter sharedCommandCenter];
    v10 = [v9 _sharedDataService];
    if ([v10 watchIsNearbyForAssistantId:v4])
    {
      v11 = 2000;
    }

    else
    {
      v11 = 0;
    }

    v12 = [SVDDeviceUnit alloc];
    v13 = objc_opt_new();
    v14 = [v13 UUIDString];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1002D79EC;
    v17[3] = &unk_10051A598;
    v18 = v5;
    v19 = v11;
    v15 = [v12 initWithIdentifier:v14 assistantId:v4 builder:v17];

    v16 = *(a1 + 32);
    if (v16)
    {
      (*(v16 + 16))(v16, v15);
    }
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[ADDeviceResolutionServiceListener _pairedCompanionDeviceFromSharedDataWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s #hal assistant is disabled on paired companion. Returning nil.", buf, 0xCu);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }
  }
}

void sub_1002D79EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setName:v3];
  [v4 setProximity:*(a1 + 40)];
}

void sub_1002D7B9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1002D72B0;
  v15 = sub_1002D72C0;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002D7DC0;
  v10[3] = &unk_10051A548;
  v10[4] = *(a1 + 32);
  v10[5] = &v11;
  [v6 enumerateObjectsUsingBlock:v10];
  v7 = v12[5];
  v8 = AFSiriLogContextDaemon;
  v9 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      *buf = 136315394;
      v18 = "[ADDeviceResolutionServiceListener pairedCompanionDeviceWithCompletion:]_block_invoke_2";
      v19 = 2112;
      v20 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal pairedCompanionDevice from device circle: %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v9)
    {
      *buf = 136315138;
      v18 = "[ADDeviceResolutionServiceListener pairedCompanionDeviceWithCompletion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal paired companion not found in device circle, falling back to find synced id from shared data.", buf, 0xCu);
    }

    [*(a1 + 32) _pairedCompanionDeviceFromSharedDataWithCompletion:*(a1 + 40)];
  }

  _Block_object_dispose(&v11, 8);
}

void sub_1002D7DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002D7DC0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if (([*(a1 + 32) _peerIsPairedWatch:?] & 1) != 0 || objc_msgSend(*(a1 + 32), "_peerIsPairedPhone:", v9))
  {
    v6 = sub_1002D72C8(v9, 3000);
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

void sub_1002D8124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002D8154(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v7 = [*(a1 + 32) objectForKey:a2];
  v8 = v7;
  v9 = *(*(a1 + 40) + 8);
  if (v7)
  {
    if (*(v9 + 24) == 1)
    {
      v10 = [v7 matchesCapabilityDescriptions:v11];
      v9 = *(*(a1 + 40) + 8);
    }

    else
    {
      v10 = 0;
    }

    *(v9 + 24) = v10;
  }

  else
  {
    *(v9 + 24) = 0;
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

NSDictionary *__cdecl sub_1002D8218(id a1, SVDCapability *a2)
{
  v2 = a2;
  v3 = [(SVDCapability *)v2 key];
  v6 = v3;
  v7 = v2;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

void sub_1002D84B8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _devicesMatchingDescriptions:*(a1 + 40) capabilitiesTuples:a2 proximityMap:0];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 count]);
    v7 = 136315394;
    v8 = "[ADDeviceResolutionServiceListener getDevicesMatchingCapabilityDescriptions:completion:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal returning  [matchingDevices count] %@", &v7, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1002D85E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002D86B4;
  v6[3] = &unk_10051A428;
  v6[4] = v4;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  [v4 getDeviceContextAndProximityMapIncludingAllReachableDevice:1 completion:v6];
}

void sub_1002D86B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1002BC5A4(a3);
  v4 = [*(a1 + 32) _devicesMatchingDescriptions:*(a1 + 40) capabilitiesTuples:*(a1 + 48) proximityMap:v5];
  (*(*(a1 + 56) + 16))();
}

void sub_1002D87F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v21 = sub_1002BC5A4(a3);
  v22 = objc_alloc_init(NSMutableDictionary);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v25;
    *&v7 = 136315138;
    v20 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v24 + 1) + 8 * v10) content];
        v12 = [v11 identifier];
        if (v12 && [*(a1 + 32) containsObject:v12])
        {
          v13 = a1;
          v14 = [v11 deviceInfo];
          v15 = [v14 assistantIdentifier];

          if (!v15 || ([v21 objectForKey:v15], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            if ([v11 fromLocalDevice])
            {
              v17 = AFSiriLogContextDaemon;
              v16 = &off_100533FB0;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
              {
                *buf = v20;
                v29 = "[ADDeviceResolutionServiceListener getSourceDeviceForContextWithIdentifiers:completion:]_block_invoke";
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Override proximity for local device to be primary", buf, 0xCu);
              }
            }

            else
            {
              v16 = 0;
            }
          }

          v18 = [v11 deviceInfo];
          v19 = sub_1002D72C8(v18, [v16 integerValue]);

          [v22 setObject:v19 forKey:v12];
          a1 = v13;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002D8B18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 af_lenientMappedArray:&stru_10051A468];
  (*(*(a1 + 32) + 16))();
}

SVDDeviceUnit *__cdecl sub_1002D8B84(id a1, AFPeerContentTuple *a2)
{
  v2 = a2;
  v3 = [(AFPeerContentTuple *)v2 info];
  v4 = [(AFPeerContentTuple *)v2 content];

  v5 = sub_1002D72C8(v3, [v4 integerValue]);
  v6 = [v5 assistantId];
  v7 = [v6 length];

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[ADDeviceResolutionServiceListener getAllReachableDevicesWithCompletion:]_block_invoke_2";
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Missing assistantId for device: %@", &v11, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

void sub_1002D8EB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = sub_1002BC5A4(a3);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v21 + 1) + 8 * v11) content];
        v13 = [v12 identifier];
        v14 = [v12 deviceInfo];
        v15 = [v14 assistantIdentifier];

        if (v13 && ([*(a1 + 32) containsObject:v13] & 1) != 0)
        {
          if (v15)
          {
LABEL_12:
            v16 = [v6 objectForKey:v15];
          }

          else
          {
            v16 = 0;
          }

          [*(a1 + 48) setObject:v16 forKeyedSubscript:v12];

          goto LABEL_14;
        }

        if (v15 && ([*(a1 + 40) containsObject:v15] & 1) != 0)
        {
          goto LABEL_12;
        }

LABEL_14:

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }

  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = *(a1 + 48);
    *buf = 136315394;
    v26 = "[ADDeviceResolutionServiceListener getContextAndProximitySnapshotForCurrentRequestForDeviceUnits:serviceContexts:completion:]_block_invoke_3";
    v27 = 2112;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s #hal cacheDeviceContextProximity getContextAndProximitySnapshotForCurrentRequest result: %@", buf, 0x16u);
  }

  v19 = *(a1 + 56);
  v20 = [NSDictionary dictionaryWithDictionary:*(a1 + 48), v21];
  (*(v19 + 16))(v19, v20);
}

void sub_1002D9B68(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADDeviceResolutionServiceListener listener:shouldAcceptNewConnection:]_block_invoke";
    v6 = 1024;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Device Resolution Service Connection Invalidated (pid=%d)", &v4, 0x12u);
  }
}

void sub_1002D9C24(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADDeviceResolutionServiceListener listener:shouldAcceptNewConnection:]_block_invoke";
    v6 = 1024;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Device Resolution Service Connection Interrupted (pid=%d)", &v4, 0x12u);
  }
}

void *sub_1002D9D54(void *result)
{
  v1 = result[4];
  if (!*(v1 + 8))
  {
    v2 = result;
    v3 = *(v1 + 24);
    v4 = +[SVDDeviceResolutionXPCInterface serviceName];
    v5 = [v3 createXPCListenerWithMachServiceName:v4];
    v6 = v2[4];
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(v2[4] + 8);
      v10 = 136315394;
      v11 = "[ADDeviceResolutionServiceListener setupListener]_block_invoke";
      v12 = 2112;
      v13 = v9;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s listener = %@", &v10, 0x16u);
    }

    [*(v2[4] + 8) setDelegate:?];
    return [*(v2[4] + 8) resume];
  }

  return result;
}

void sub_1002DA260(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_dictionary)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[ADSiriTetherListener _handleNewConnection:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Message!", &v12, 0xCu);
    }

    reply = xpc_dictionary_create_reply(v3);
    v8 = reply;
    if (reply)
    {
      v9 = xpc_dictionary_get_remote_connection(reply);
      if (v9)
      {
        v10 = v9;
        xpc_connection_send_message(v9, v8);
      }
    }
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (type == &_xpc_type_error)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v12 = 136315394;
        v13 = "[ADSiriTetherListener _handleNewConnection:]_block_invoke";
        v14 = 2048;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Clearing tether %p", &v12, 0x16u);
      }

      xpc_connection_cancel(*(a1 + 32));
    }

    else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[ADSiriTetherListener _handleNewConnection:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Ignoring unexpected event", &v12, 0xCu);
    }
  }
}

void sub_1002DA4F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002DA518(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_connection)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _handleNewConnection:v3];
LABEL_6:

    goto LABEL_8;
  }

  v5 = type;
  v6 = AFSiriLogContextDaemon;
  v7 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
  if (v5 == &_xpc_type_error)
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    WeakRetained = v6;
    v9 = 136315394;
    v10 = "[ADSiriTetherListener listen]_block_invoke";
    v11 = 2082;
    string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
    _os_log_error_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "%s %{public}s", &v9, 0x16u);
    goto LABEL_6;
  }

  if (v7)
  {
    v9 = 136315138;
    v10 = "[ADSiriTetherListener listen]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Ignoring unexpected event", &v9, 0xCu);
  }

LABEL_8:
}

void sub_1002DAEE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v1 = +[ADSpeechPlaybackSimulator _speechLogDecodingError];
  [WeakRetained speechCapturingDidStopRecordingWithError:v1 endpointMode:0 totalPacketCount:0 endpointerMetrics:0];
}

void sub_1002DAF58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained speechCapturingDidStartRecordingSuccessfully:1 error:0 withInfo:*(a1 + 40)];
}

void sub_1002DAFB4(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained speechCapturingDidRecordSpeechPackets:a1[5] atTimestamp:a1[6] totalPacketCount:0.0];
}

void sub_1002DB00C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained speechCapturingDidStopRecordingWithError:0 endpointMode:1 totalPacketCount:*(a1 + 40) endpointerMetrics:0];
}

void sub_1002DB06C(uint64_t a1)
{
  v2 = [*(a1 + 32) lastObject];
  if (v2)
  {
    [*(a1 + 32) removeLastObject];
    v11 = v2;
    v3 = [NSArray arrayWithObjects:&v11 count:1];
    v4 = *(*(a1 + 40) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002DB35C;
    block[3] = &unk_10051A6D8;
    objc_copyWeak(&v10, (a1 + 64));
    v5 = v3;
    v6 = *(a1 + 56);
    v8 = v5;
    v9 = v6;
    dispatch_async(v4, block);
    *(*(*(a1 + 56) + 8) + 24) += [v5 count];

    objc_destroyWeak(&v10);
  }

  if (![*(a1 + 32) count])
  {
    dispatch_source_cancel(*(a1 + 48));
  }
}

void sub_1002DB1E4(uint64_t a1)
{
  if (*(a1 + 72) == *(*(*(a1 + 56) + 8) + 24))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002DB2E8;
  block[3] = &unk_10051A728;
  objc_copyWeak(v9, (a1 + 64));
  v4 = *(a1 + 56);
  v9[1] = v2;
  block[4] = v4;
  dispatch_async(v3, block);
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  if (v6 == *(a1 + 40))
  {
    *(v5 + 24) = 0;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))();
  }

  objc_destroyWeak(v9);
}

void sub_1002DB2E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 speechCapturingDidStopRecordingWithError:0 endpointMode:*(a1 + 48) totalPacketCount:*(*(*(a1 + 32) + 8) + 24) endpointerMetrics:0];
}

void sub_1002DB35C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  [v2 speechCapturingDidRecordSpeechPackets:*(a1 + 32) atTimestamp:*(*(*(a1 + 40) + 8) + 24) totalPacketCount:0.0];
}

id sub_1002DB6FC(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) identifier];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

void sub_1002DBAB8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((sub_1002DBC8C(v3) & 1) == 0)
  {
    v4 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
LABEL_3:

      [*(a1 + 32) addObject:v3];
      goto LABEL_4;
    }

    v5 = [v3 identifier];
    v6 = [v3 model];
    v7 = [v3 name];
    v8 = [v3 roomName];
    v9 = [v3 proximity];
    if (v9 > 19)
    {
      if (v9 == 20)
      {
        v10 = "Near";
        goto LABEL_15;
      }

      if (v9 == 30)
      {
        v10 = "Far";
        goto LABEL_15;
      }
    }

    else
    {
      if (!v9)
      {
        v10 = "Unknown";
        goto LABEL_15;
      }

      if (v9 == 10)
      {
        v10 = "Immed";
LABEL_15:
        v11 = 136316418;
        v12 = "[ADAudioSessionCoordinator _disqualifiedDevices]_block_invoke";
        v13 = 2112;
        v14 = v5;
        v15 = 2112;
        v16 = v6;
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = v8;
        v21 = 2080;
        v22 = v10;
        _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s deviceID = %@, model = %@, name = %@, roomName = %@, proximity = %s", &v11, 0x3Eu);

        goto LABEL_3;
      }
    }

    v10 = "?";
    goto LABEL_15;
  }

LABEL_4:
}

id sub_1002DBC8C(void *a1)
{
  v1 = sub_1002DBCC4(a1);
  v2 = [v1 isSupportedAndEnabled];

  return v2;
}

id sub_1002DBCC4(void *a1)
{
  v1 = a1;
  v2 = [v1 siriInfo];
  v3 = [v2 objectForKey:@"audio-session-coordination.system-info"];

  if (v3)
  {
    v4 = [[AFAudioSessionCoordinationSystemInfo alloc] initWithDictionaryRepresentation:v3];
  }

  else
  {
    v4 = 0;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002DBDFC;
  v9[3] = &unk_10051AC20;
  v5 = v1;
  v10 = v5;
  v6 = objc_retainBlock(v9);
  if (v4)
  {
    v7 = [v4 mutatedCopyWithMutator:v6];
  }

  else
  {
    v7 = [AFAudioSessionCoordinationSystemInfo newWithBuilder:v6];
  }

  return v7;
}

void sub_1002DBDFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 roomName];
  [v4 setHomeKitRoomName:v5];

  v6 = [*(a1 + 32) mediaSystemIdentifier];
  [v4 setHomeKitMediaSystemIdentifier:v6];
}

void sub_1002DC08C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sub_1002DBC8C(v3) && (sub_1002DC274(v3, *(*(a1 + 32) + 64)) & 1) == 0)
  {
    v4 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
LABEL_4:

      [*(a1 + 40) addObject:v3];
      goto LABEL_5;
    }

    v5 = [v3 identifier];
    v6 = [v3 model];
    v7 = [v3 name];
    v8 = [v3 roomName];
    v9 = [v3 proximity];
    if (v9 > 19)
    {
      if (v9 == 20)
      {
        v10 = "Near";
        goto LABEL_16;
      }

      if (v9 == 30)
      {
        v10 = "Far";
        goto LABEL_16;
      }
    }

    else
    {
      if (!v9)
      {
        v10 = "Unknown";
        goto LABEL_16;
      }

      if (v9 == 10)
      {
        v10 = "Immed";
LABEL_16:
        v11 = 136316418;
        v12 = "[ADAudioSessionCoordinator _qualifiedOutOfRangeDevices]_block_invoke";
        v13 = 2112;
        v14 = v5;
        v15 = 2112;
        v16 = v6;
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = v8;
        v21 = 2080;
        v22 = v10;
        _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s deviceID = %@, model = %@, name = %@, roomName = %@, proximity = %s", &v11, 0x3Eu);

        goto LABEL_4;
      }
    }

    v10 = "?";
    goto LABEL_16;
  }

LABEL_5:
}

uint64_t sub_1002DC274(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 homeKitRoomName];
  v6 = [v3 roomName];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if ([v5 isEqual:v6])
    {
      v9 = [v4 homeKitMediaSystemIdentifier];
      v10 = [v3 mediaSystemIdentifier];
      v11 = v10;
      if (v9 && v10 && ([v9 isEqual:v10] & 1) != 0)
      {
        v8 = 1;
      }

      else
      {
        v12 = [v4 mediaRemoteGroupIdentifier];
        v13 = sub_1002DBCC4(v3);
        v14 = [v13 mediaRemoteGroupIdentifier];

        v8 = 0;
        if (v12 && v14)
        {
          v8 = [v12 isEqual:v14];
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void sub_1002DC5B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sub_1002DBC8C(v3) && sub_1002DC274(v3, *(*(a1 + 32) + 64)))
  {
    v4 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
LABEL_4:

      [*(a1 + 40) addObject:v3];
      goto LABEL_5;
    }

    v5 = [v3 identifier];
    v6 = [v3 model];
    v7 = [v3 name];
    v8 = [v3 roomName];
    v9 = [v3 proximity];
    if (v9 > 19)
    {
      if (v9 == 20)
      {
        v10 = "Near";
        goto LABEL_16;
      }

      if (v9 == 30)
      {
        v10 = "Far";
        goto LABEL_16;
      }
    }

    else
    {
      if (!v9)
      {
        v10 = "Unknown";
        goto LABEL_16;
      }

      if (v9 == 10)
      {
        v10 = "Immed";
LABEL_16:
        v11 = 136316418;
        v12 = "[ADAudioSessionCoordinator _qualifiedInRangeDevices]_block_invoke";
        v13 = 2112;
        v14 = v5;
        v15 = 2112;
        v16 = v6;
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = v8;
        v21 = 2080;
        v22 = v10;
        _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s deviceID = %@, model = %@, name = %@, roomName = %@, proximity = %s", &v11, 0x3Eu);

        goto LABEL_4;
      }
    }

    v10 = "?";
    goto LABEL_16;
  }

LABEL_5:
}

void sub_1002DC90C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sub_1002DBC8C(v3))
  {
    v4 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
LABEL_3:

      [*(a1 + 32) addObject:v3];
      goto LABEL_4;
    }

    v5 = [v3 identifier];
    v6 = [v3 model];
    v7 = [v3 name];
    v8 = [v3 roomName];
    v9 = [v3 proximity];
    if (v9 > 19)
    {
      if (v9 == 20)
      {
        v10 = "Near";
        goto LABEL_15;
      }

      if (v9 == 30)
      {
        v10 = "Far";
        goto LABEL_15;
      }
    }

    else
    {
      if (!v9)
      {
        v10 = "Unknown";
        goto LABEL_15;
      }

      if (v9 == 10)
      {
        v10 = "Immed";
LABEL_15:
        v11 = 136316418;
        v12 = "[ADAudioSessionCoordinator _qualifiedDevices]_block_invoke";
        v13 = 2112;
        v14 = v5;
        v15 = 2112;
        v16 = v6;
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = v8;
        v21 = 2080;
        v22 = v10;
        _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s deviceID = %@, model = %@, name = %@, roomName = %@, proximity = %s", &v11, 0x3Eu);

        goto LABEL_3;
      }
    }

    v10 = "?";
    goto LABEL_15;
  }

LABEL_4:
}

void sub_1002DF75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002DF788(uint64_t a1, uint64_t a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[ADAudioSessionCoordinator _startHeartBeatWithEffectiveDate:]_block_invoke";
    v8 = 2048;
    v9 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s index = %tu", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _heartBeatFired];
}

void sub_1002DF864(id a1, unint64_t a2)
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "[ADAudioSessionCoordinator _startHeartBeatWithEffectiveDate:]_block_invoke";
    v6 = 2048;
    v7 = a2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s count = %tu", &v4, 0x16u);
  }
}

void sub_1002E0184(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [[ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest alloc] initWithExpirationDuration:*(a1 + 40)];
  [v3 _sendKeepAudioSessionAliveRequest:v5 toDeviceWithID:v4 responseHandler:0];
}

void sub_1002E1D58(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v5 = [v2 objectForKey:AFMediaRemoteDeviceInfoNotificationKey];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v5;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    v4 = 0;
  }

  [*(a1 + 40) _updateMediaRemoteGroupIdentifier:v4 reason:@"Notification (Optimistic)"];
LABEL_5:
}

void sub_1002E1F54(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v5 = [v2 objectForKey:AFMediaRemoteDeviceInfoNotificationKey];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v5;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    v4 = 0;
  }

  [*(a1 + 40) _updateMediaRemoteRouteIdentifier:v4 reason:@"Notification (Optimistic)"];
LABEL_5:
}

void *sub_1002E2310(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[13])
  {
    return [result _setUpRapportLink];
  }

  return result;
}

void sub_1002E3420(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    mach_absolute_time();
    AFMachAbsoluteTimeGetTimeInterval();
    *buf = 136315650;
    v15 = "[ADAudioSessionCoordinator fetchAndUpdateMediaRemoteGroupIdentifierForReason:]_block_invoke";
    v16 = 2112;
    v17 = v3;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s groupIdentifier = %@ (%f seconds)", buf, 0x20u);
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002E3590;
  block[3] = &unk_10051DB68;
  block[4] = v8;
  v12 = v3;
  v13 = v7;
  v10 = v3;
  dispatch_async(v9, block);
}

void sub_1002E36F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    mach_absolute_time();
    AFMachAbsoluteTimeGetTimeInterval();
    *buf = 136315650;
    v15 = "[ADAudioSessionCoordinator fetchAndUpdateMediaRemoteRouteIdentifierForReason:]_block_invoke";
    v16 = 2112;
    v17 = v3;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s routeIdentifier = %@ (%f seconds)", buf, 0x20u);
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002E3864;
  block[3] = &unk_10051DB68;
  block[4] = v8;
  v12 = v3;
  v13 = v7;
  v10 = v3;
  dispatch_async(v9, block);
}

void sub_1002E3CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002E3CD8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002E3EA4;
  v9[3] = &unk_10051AB60;
  v10 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002E4018;
  v4[3] = &unk_10051AB88;
  v8 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v3 = [AFAssertionContext newWithBuilder:v4];
  [v2 relinquishAsertionsPassingTest:v9 context:v3];
}

uint64_t sub_1002E3E1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002E3E34(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

uint64_t sub_1002E3EA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 context];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"isRemote"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [v3 context];
    v9 = [v8 userInfo];
    v10 = [v9 objectForKey:@"senderID"];
    v11 = [v10 isEqualToString:*(a1 + 32)];

    if (v11)
    {
      v12 = AFSiriLogContextDaemon;
      v11 = 1;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v14 = 136315394;
        v15 = "[ADAudioSessionCoordinator _relinquishRemoteAssertionForSenderID:reason:effectiveDate:error:]_block_invoke_2";
        v16 = 2112;
        v17 = v3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Remote assertion %@ will be relinquished now.", &v14, 0x16u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1002E4018(void *a1, void *a2)
{
  v3 = a1[7];
  v4 = a2;
  [v4 setTimestamp:v3];
  [v4 setEffectiveDate:a1[4]];
  [v4 setReason:a1[5]];
  v5 = a1[6];
  v7[0] = @"senderID";
  v7[1] = @"isRemote";
  v8[0] = v5;
  v8[1] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v4 setUserInfo:v6];
}

void sub_1002E4888(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTimestamp:*(a1 + 64)];
  [v3 setReason:*(a1 + 32)];
  [v3 setEffectiveDate:*(a1 + 40)];
  [v3 setExpirationDuration:*(a1 + 72)];
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(a1 + 56);
    v13[0] = @"senderID";
    v13[1] = @"senderName";
    v14[0] = v5;
    v14[1] = v4;
    v13[2] = @"isRemote";
    v14[2] = &__kCFBooleanTrue;
    v6 = v14;
    v7 = v13;
    v8 = 3;
  }

  else
  {
    v9 = *(a1 + 56);
    v11[0] = @"senderID";
    v11[1] = @"isRemote";
    v12[0] = v9;
    v12[1] = &__kCFBooleanTrue;
    v6 = v12;
    v7 = v11;
    v8 = 2;
  }

  v10 = [NSDictionary dictionaryWithObjects:v6 forKeys:v7 count:v8];
  [v3 setUserInfo:v10];
}

void sub_1002E49BC(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v6 = 136315394;
    v7 = "[ADAudioSessionCoordinator _acquireRemoteAssertionForSenderID:reason:effectiveDate:expirationDuration:error:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Relinquished remote assertion %@.", &v6, 0x16u);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

uint64_t sub_1002E4A94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 context];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"isRemote"];
  v7 = [v6 BOOLValue];

  if (v7 && ([v3 context], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "userInfo"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKey:", @"senderID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *(a1 + 32)), v10, v9, v8, v11) && (objc_msgSend(v3, "uuid"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqual:", *(a1 + 40)), v12, (v13 & 1) == 0))
  {
    v16 = AFSiriLogContextDaemon;
    v14 = 1;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v17 = 136315394;
      v18 = "[ADAudioSessionCoordinator _acquireRemoteAssertionForSenderID:reason:effectiveDate:expirationDuration:error:]_block_invoke";
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Remote assertion %@ will be relinquished now.", &v17, 0x16u);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_1002E4C2C(void *a1, void *a2)
{
  v3 = a2;
  [v3 setTimestamp:a1[8]];
  [v3 setEffectiveDate:a1[4]];
  [v3 setReason:a1[5]];
  v4 = a1[6];
  if (v4)
  {
    v5 = a1[7];
    v13[0] = @"senderID";
    v13[1] = @"senderName";
    v14[0] = v5;
    v14[1] = v4;
    v13[2] = @"isRemote";
    v14[2] = &__kCFBooleanTrue;
    v6 = v14;
    v7 = v13;
    v8 = 3;
  }

  else
  {
    v9 = a1[7];
    v11[0] = @"senderID";
    v11[1] = @"isRemote";
    v12[0] = v9;
    v12[1] = &__kCFBooleanTrue;
    v6 = v12;
    v7 = v11;
    v8 = 2;
  }

  v10 = [NSDictionary dictionaryWithObjects:v6 forKeys:v7 count:v8];
  [v3 setUserInfo:v10];
}

void sub_1002E4EB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = a3;
  v10 = mach_absolute_time();
  v11 = [v9 objectForKey:RPOptionSenderID];

  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    *buf = 136315906;
    v26 = "[ADAudioSessionCoordinator _registerRequestID:requestHandler:]_block_invoke";
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v18;
    v31 = 2112;
    v32 = v7;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s <<<--- senderID = %@, requestID = %@, request = %@", buf, 0x2Au);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002E5088;
  block[3] = &unk_10051AA70;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v20 = v7;
  v21 = v11;
  v23 = v8;
  v24 = v10;
  v22 = v14;
  v15 = v8;
  v16 = v11;
  v17 = v7;
  dispatch_async(v13, block);
}

void sub_1002E5088(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v4 = a1[4];
    v3 = a1[5];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002E5150;
    v8[3] = &unk_10051AA48;
    v5 = v3;
    v7 = a1[7];
    v6 = a1[8];
    v9 = v5;
    v11 = v6;
    v10 = v7;
    (*(v1 + 16))(v1, v4, v5, v8);
  }
}

void sub_1002E5150(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    mach_absolute_time();
    AFMachAbsoluteTimeGetTimeInterval();
    v11 = 136316162;
    v12 = "[ADAudioSessionCoordinator _registerRequestID:requestHandler:]_block_invoke_2";
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2048;
    v20 = v10;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s --->>> senderID = %@, response = %@, error = %@ (%f seconds)", &v11, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002E5480(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 104);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v14 = RPOptionStatusFlags;
  v15 = &off_100533FC8;
  v6 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002E55D4;
  v9[3] = &unk_10051A9F8;
  v7 = *(a1 + 56);
  v8 = *(a1 + 80);
  v10 = v7;
  v13 = v8;
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  [v3 sendRequestID:v2 request:v4 destinationID:v5 options:v6 responseHandler:v9];
}

void sub_1002E55D4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v8;
    mach_absolute_time();
    AFMachAbsoluteTimeGetTimeInterval();
    *buf = 136316162;
    v21 = "[ADAudioSessionCoordinator _sendRequestID:request:recipientID:responseHandler:]_block_invoke";
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    v28 = 2048;
    v29 = v15;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s <<<--- recipientID = %@, response = %@, error = %@ (%f seconds)", buf, 0x34u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002E5780;
  block[3] = &unk_10051E088;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v18 = v7;
  v19 = v10;
  v17 = v6;
  v11 = v7;
  v12 = v6;
  dispatch_async(v9, block);
}

uint64_t sub_1002E5780(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void sub_1002E5B2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setTimestamp:v2];
  [v3 setReason:@"Relinquish all local assertions"];
}

void sub_1002E5E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 248), 8);
  _Block_object_dispose((v36 - 200), 8);
  _Block_object_dispose((v36 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1002E5ED4(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[5];
  v6 = *(v5 + 16);
  v7 = a2;
  v8 = v6(v5, a3);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = (*(a1[5] + 16))();

  v12 = *(a1[7] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = a1[4];

  dispatch_group_leave(v14);
}

void sub_1002E5F88(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[5];
  v6 = *(v5 + 16);
  v7 = a2;
  v8 = v6(v5, a3);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = (*(a1[5] + 16))();

  v12 = *(a1[7] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = a1[4];

  dispatch_group_leave(v14);
}

void sub_1002E603C(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v2 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = v2;
  v5[2] = sub_1002E617C;
  v5[3] = &unk_10051A948;
  v5[4] = *(a1 + 32);
  v3 = [AFAudioSessionCoordinationSnapshot newWithBuilder:v5];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[ADAudioSessionCoordinator getSnapshotWithCompletion:]_block_invoke_4";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s snapshot = %@", buf, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002E617C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setCurrentOrUpNextDateInterval:*(*(a1 + 32) + 40)];
  [v3 setIsAudioSessionActive:*(*(a1 + 32) + 48) > 1uLL];
  [v3 setLocalActiveAssertionContexts:*(*(*(a1 + 40) + 8) + 40)];
  [v3 setLocalPendingAssertionContexts:*(*(*(a1 + 48) + 8) + 40)];
  [v3 setRemoteActiveAssertionContexts:*(*(*(a1 + 56) + 8) + 40)];
  [v3 setRemotePendingAssertionContexts:*(*(*(a1 + 64) + 8) + 40)];
  v4 = [*(*(a1 + 32) + 104) localDevice];
  v5 = sub_1002E6500(v4);
  [v3 setLocalDevice:v5];

  v6 = objc_alloc_init(NSMutableArray);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = [*(a1 + 32) _qualifiedInRangeDevices];
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      v11 = 0;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = sub_1002E6500(*(*(&v35 + 1) + 8 * v11));
        if (v12)
        {
          [v6 addObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v9);
  }

  [v3 setRemoteQualifiedInRangeDevices:v6];
  v13 = objc_alloc_init(NSMutableArray);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = [*(a1 + 32) _qualifiedOutOfRangeDevices];
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      v18 = 0;
      do
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = sub_1002E6500(*(*(&v31 + 1) + 8 * v18));
        if (v19)
        {
          [v13 addObject:v19];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v16);
  }

  [v3 setRemoteQualifiedOutOfRangeDevices:v13];
  v20 = objc_alloc_init(NSMutableArray);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = [*(a1 + 32) _disqualifiedDevices];
  v22 = [v21 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v28;
    do
    {
      v25 = 0;
      do
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = sub_1002E6500(*(*(&v27 + 1) + 8 * v25));
        if (v26)
        {
          [v20 addObject:v26];
        }

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v23);
  }

  [v3 setRemoteDisqualifiedDevices:v20];
}

id sub_1002E6500(void *a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002E65B0;
  v4[3] = &unk_10051AD50;
  v5 = a1;
  v1 = v5;
  v2 = [AFAudioSessionCoordinationDeviceInfo newWithBuilder:v4];

  return v2;
}

void sub_1002E65B0(uint64_t a1, void *a2)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002E6690;
  v7[3] = &unk_10051D9B8;
  v8 = *(a1 + 32);
  v4 = a2;
  v5 = [AFPeerInfo newWithBuilder:v7];
  [v4 setPeerInfo:v5];

  v6 = sub_1002DBCC4(*(a1 + 32));
  [v4 setSystemInfo:v6];
}

void sub_1002E6690(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) idsDeviceIdentifier];
  if (v3)
  {
    [v15 setIdsDeviceUniqueIdentifier:v3];
    v4 = _IDSCopyIDForDeviceUniqueID();
    [v15 setIdsIdentifier:v4];
  }

  v5 = [*(a1 + 32) name];
  [v15 setName:v5];

  v6 = [*(a1 + 32) model];
  [v15 setProductType:v6];

  v7 = [*(a1 + 32) mediaRouteIdentifier];
  [v15 setMediaRouteIdentifier:v7];

  v8 = [*(a1 + 32) mediaSystemIdentifier];
  v9 = [v8 UUIDString];
  [v15 setMediaSystemIdentifier:v9];

  v10 = [*(a1 + 32) homeKitIdentifier];
  v11 = [v10 UUIDString];
  [v15 setHomeKitAccessoryIdentifier:v11];

  v12 = [*(a1 + 32) effectiveIdentifier];
  [v15 setRapportEffectiveIdentifier:v12];

  v13 = [*(a1 + 32) roomName];
  [v15 setRoomName:v13];

  v14 = [*(a1 + 32) homeKitIdentifier];
  [v15 setIsCommunalDevice:v14 != 0];

  [v15 setIsDeviceOwnedByCurrentUser:{(objc_msgSend(*(a1 + 32), "statusFlags") >> 19) & 1}];
}

id sub_1002E6854(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](v2, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) context];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

void sub_1002E6EF0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) homeKitMediaSystemIdentifier];
  if (v2)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = [*(*(a1 + 32) + 104) activeDevices];
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v19;
      *&v5 = 136315394;
      v17 = v5;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [v9 mediaSystemIdentifier];
          v11 = [v10 isEqual:v2];

          if (v11)
          {
            v12 = sub_1002E6500(v9);
            v13 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
            {
              *buf = v17;
              v23 = "[ADAudioSessionCoordinator acquireAudioSessionAssertionWithContext:relinquishmentHandler:]_block_invoke";
              v24 = 2112;
              v25 = v12;
              _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s Found Stereo Pair partner %@.", buf, 0x16u);
            }

            v14 = [v12 systemInfo];
            v15 = [v14 isSupportedAndEnabled];

            if (v15)
            {
              *(*(*(a1 + 40) + 8) + 24) = 0;
            }
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v23 = "[ADAudioSessionCoordinator acquireAudioSessionAssertionWithContext:relinquishmentHandler:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s No media system identifier for local system.", buf, 0xCu);
    }
  }
}

void sub_1002E7148(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[ADAudioSessionCoordinator acquireAudioSessionAssertionWithContext:relinquishmentHandler:]_block_invoke_2";
      v11 = 2112;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s error = %@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADAudioSessionCoordinator acquireAudioSessionAssertionWithContext:relinquishmentHandler:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s relinquishmentContext = %@", &v9, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

void sub_1002E72A0(id a1, AFAssertionContextMutating *a2)
{
  v2 = a2;
  v3 = +[NSDate date];
  [(AFAssertionContextMutating *)v2 setEffectiveDate:v3];
}

void sub_1002E7488(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  v5 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v5)
    {
      v6 = *(*(a1 + 32) + 104);
      *buf = 136315650;
      v18 = "[ADAudioSessionCoordinator _setUpRapportLink]_block_invoke";
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v3;
      v7 = "%s Failed activating Rapport Link %@ due to error %@.";
      v8 = v4;
      v9 = 32;
LABEL_7:
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
    }
  }

  else if (v5)
  {
    v14 = *(*(a1 + 32) + 104);
    *buf = 136315394;
    v18 = "[ADAudioSessionCoordinator _setUpRapportLink]_block_invoke";
    v19 = 2112;
    v20 = v14;
    v7 = "%s Activated Rapport Link %@.";
    v8 = v4;
    v9 = 22;
    goto LABEL_7;
  }

  v10 = [*(*(a1 + 32) + 104) localDevice];
  v11 = *(a1 + 32);
  v12 = *(v11 + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002E7640;
  v15[3] = &unk_10051E010;
  v15[4] = v11;
  v16 = v10;
  v13 = v10;
  dispatch_async(v12, v15);
}

void sub_1002E7640(uint64_t a1)
{
  [*(a1 + 32) _handleUpdatedLocalDevice:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 96);

  dispatch_group_leave(v2);
}

void sub_1002E7684(id a1, ADRapportLinkConfigurationMutating *a2)
{
  v2 = a2;
  v3 = [ADRapportLinkDiscoveryOptions newWithBuilder:&stru_10051A810];
  [(ADRapportLinkConfigurationMutating *)v2 setDiscoveryOptions:v3];

  v4 = [ADRapportLinkTransportOptions newWithBuilder:&stru_10051A850];
  [(ADRapportLinkConfigurationMutating *)v2 setTransportOptions:v4];
}

void sub_1002E7724(id a1, ADRapportLinkDiscoveryOptionsMutating *a2)
{
  v2 = a2;
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesHome:2];
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesRemoraDevices:2];
}

void sub_1002E7B18(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADAudioSessionCoordinator initWithInstanceContext:delegate:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s %@", buf, 0x16u);
  }

  v5 = AFIsInternalInstall();
  if (a2 <= 3 && v5)
  {
    WriteStackshotReport_async();
  }
}

void sub_1002E7C34(id a1, AFAudioSessionCoordinationSystemInfoMutating *a2)
{
  v2 = a2;
  [(AFAudioSessionCoordinationSystemInfoMutating *)v2 setIsSupportedAndEnabled:AFSupportsAudioSessionCoordination()];
}

void sub_1002ED254(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(a1 + 32);
  v5 = v4[9];
  v9 = v3;
  if (v5)
  {
    [v3 setObject:v5 forKey:@"Path"];
    v4 = *(a1 + 32);
  }

  v6 = v4[7];
  if (v6)
  {
    [v9 setObject:v6 forKey:@"Domains"];
    v4 = *(a1 + 32);
  }

  v7 = v4[10];
  if (v7)
  {
    [v9 setObject:v7 forKey:@"Clears Domain Objects"];
    v4 = *(a1 + 32);
  }

  v8 = v4[8];
  if (v8)
  {
    [v9 setObject:v8 forKey:@"Sync Keys"];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002ED42C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[14] invalidate];
    WeakRetained = v2;
  }
}

uint64_t sub_1002ED5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0, a3);
  }

  return result;
}

uint64_t sub_1002ED5DC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2, 0);
  }

  return result;
}

void sub_1002ED780(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  dispatch_group_leave(*(a1[4] + 120));
  v7 = a1[5];
  if (v7)
  {
    (*(v7 + 16))(v7, v9, v6);
  }

  v8 = a1[6];
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v6);
  }
}

void sub_1002EDBA8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5 || ([v9 encodedClassName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", SACommandFailedClassIdentifier), v6, v7))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained failedToLaunchAppWithBundleIdentifier:*(a1 + 32)];
  }
}

void sub_1002EEC58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 32);
        v12 = [NSString stringWithFormat:@"%@#%@", v5, *(*(&v13 + 1) + 8 * v10)];
        [v11 addObject:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void sub_1002EED98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 32);
        v12 = [NSString stringWithFormat:@"%@#%@", v5, *(*(&v13 + 1) + 8 * v10)];
        [v11 addObject:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void sub_1002EEED8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 32);
        v12 = [NSString stringWithFormat:@"%@#%@", v5, *(*(&v13 + 1) + 8 * v10)];
        [v11 addObject:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

id sub_1002EF120(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    *a2 = 0;
  }

  if (v3)
  {
    v13 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v13];
    v6 = v13;
    if (v6)
    {
      v7 = v6;
      v8 = [AFError errorWithCode:2401 description:@"Failed to archive input message." underlyingError:v6];

      if (!a2)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (v5)
    {
      v8 = 0;
      if (!a2)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v8 = [AFError errorWithCode:2401 description:@"No output data." underlyingError:0];
    if (a2)
    {
LABEL_11:
      v9 = v8;
      *a2 = v8;
    }
  }

  else
  {
    v8 = [AFError errorWithCode:2401 description:@"No input message." underlyingError:0];
    v5 = 0;
    if (a2)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v5 == 0;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v14[0] = @"d";
    v14[1] = @"v";
    v15[0] = v5;
    v15[1] = &off_100533FE0;
    v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  return v11;
}

void *sub_1002EF2E4(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    *a2 = 0;
  }

  if (!v3)
  {
    v12 = @"No input dictionary representation.";
    goto LABEL_12;
  }

  v5 = [v3 objectForKey:@"v"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_11;
  }

  v6 = [v5 unsignedIntegerValue];

  if (v6)
  {
LABEL_11:
    v12 = @"Incompatible input dictionary representation.";
LABEL_12:
    v11 = [AFError errorWithCode:2402 description:v12 underlyingError:0];
    v8 = 0;
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v7 = [v4 objectForKey:@"d"];
  if (v7)
  {
    v17 = 0;
    v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v17];
    v9 = v17;
    if (v9)
    {
      v10 = v9;
      v11 = [AFError errorWithCode:2402 description:@"Failed to unarchive input data." underlyingError:v9];
    }

    else if (v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = [AFError errorWithCode:2402 description:@"No output message." underlyingError:0];
    }
  }

  else
  {
    v11 = [AFError errorWithCode:2402 description:@"No input data. Possible incompatible input dictionary representation." underlyingError:0];
    v8 = 0;
  }

  if (a2)
  {
LABEL_13:
    v13 = v11;
    *a2 = v11;
  }

LABEL_14:
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;

  return v14;
}

uint64_t sub_1002EF4DC(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = [v11 type];
  v18 = 0;
  if (v17 <= 5)
  {
    if (v17 == 2)
    {
      if (v12)
      {
        v12[2](v12);
        v18 = 1;
      }

      else
      {
        v18 = 0;
      }
    }

    else if (v17 == 4)
    {
      v22 = [v11 commandPushGenerationsResponse];
      v20 = v22;
      if (v13)
      {
        v23 = v22 == 0;
      }

      else
      {
        v23 = 1;
      }

      v18 = !v23;
      if (!v23)
      {
        v13[2](v13, v22);
      }

      goto LABEL_39;
    }
  }

  else
  {
    switch(v17)
    {
      case 6:
        v24 = [v11 commandPullGenerationsResponse];
        v20 = v24;
        if (v14)
        {
          v25 = v24 == 0;
        }

        else
        {
          v25 = 1;
        }

        v18 = !v25;
        if (!v25)
        {
          v14[2](v14, v24);
        }

        goto LABEL_39;
      case 8:
        v26 = [v11 commandPullDeltaResponse];
        v20 = v26;
        if (v15)
        {
          v27 = v26 == 0;
        }

        else
        {
          v27 = 1;
        }

        v18 = !v27;
        if (!v27)
        {
          v15[2](v15, v26);
        }

        goto LABEL_39;
      case 10:
        v19 = [v11 commandPullSnapshotResponse];
        v20 = v19;
        if (v16)
        {
          v21 = v19 == 0;
        }

        else
        {
          v21 = 1;
        }

        v18 = !v21;
        if (!v21)
        {
          v16[2](v16, v19);
        }

LABEL_39:

        break;
    }
  }

  return v18;
}

void sub_1002EFCD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (!v3)
  {
    [v2 _fetchSyncFlagsOnDisk];
    v2 = *(a1 + 32);
    v3 = v2[2];
  }

  v4 = [v3 allObjects];
  [v2 _clearSyncNeededFlagsForKeys:v4];
}

id sub_1002EFDEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    [v2 _fetchSyncFlagsOnDisk];
    v2 = *(a1 + 32);
  }

  v3 = *(a1 + 40);

  return [v2 _clearSyncNeededFlagsForKeys:v3];
}

id sub_1002EFEE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    [v2 _fetchSyncFlagsOnDisk];
    v2 = *(a1 + 32);
  }

  v3 = *(a1 + 40);

  return [v2 _setSyncNeededFlagsForKeys:v3];
}

uint64_t sub_1002EFFD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    [v2 _fetchSyncFlagsOnDisk];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1002F010C(id a1)
{
  v1 = objc_alloc_init(ADSyncFlagManager);
  v2 = qword_100590868;
  qword_100590868 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1002F04D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002F04EC(uint64_t a1)
{
  sub_1002F0834();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RadarDraft");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100590898 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getRadarDraftClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ADRadarManager.m" lineNumber:28 description:{@"Unable to find class %s", "RadarDraft"}];

    __break(1u);
  }
}

void sub_1002F05B4(uint64_t a1)
{
  sub_1002F0834();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RadarComponent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1005908A0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getRadarComponentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ADRadarManager.m" lineNumber:29 description:{@"Unable to find class %s", "RadarComponent"}];

    __break(1u);
  }
}

id sub_1002F067C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100590888;
  v7 = qword_100590888;
  if (!qword_100590888)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1002F076C;
    v3[3] = &unk_10051E1C8;
    v3[4] = &v4;
    sub_1002F076C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1002F0744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002F076C(uint64_t a1)
{
  sub_1002F0834();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TapToRadarService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100590888 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getTapToRadarServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ADRadarManager.m" lineNumber:27 description:{@"Unable to find class %s", "TapToRadarService"}];

    __break(1u);
  }
}

void sub_1002F0834()
{
  v3[0] = 0;
  if (!qword_100590890)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1002F0984;
    v3[4] = &unk_10051E200;
    v3[5] = v3;
    v4 = off_10051AEC8;
    v5 = 0;
    qword_100590890 = _sl_dlopen();
  }

  if (!qword_100590890)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *TapToRadarKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"ADRadarManager.m" lineNumber:26 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_1002F0984()
{
  result = _sl_dlopen();
  qword_100590890 = result;
  return result;
}

void sub_1002F0A84(id a1)
{
  v1 = objc_opt_new();
  v2 = [v1 fileExistsAtPath:@"/AppleInternal/Library/Frameworks/TapToRadarKit.framework" isDirectory:0];

  if (v2)
  {
    if (sub_1002F067C())
    {
      v3 = [[ADRadarManager alloc] _init];
      v4 = qword_100590878;
      qword_100590878 = v3;

      _objc_release_x1(v3, v4);
    }

    else
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "+[ADRadarManager sharedInstance]_block_invoke";
        v8 = 2080;
        v9 = "+[ADRadarManager sharedInstance]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s %s: TapToRadarService class is not available", &v6, 0x16u);
      }
    }
  }
}

void sub_1002F0E6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315650;
    *&buf[4] = "[ADDeviceSyncTimerConsumer applySnapshot:fromDeviceWithIdentifier:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 2112;
    v33 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Loaded synced timer storage %@ for device %@.", buf, 0x20u);
  }

  v23 = v3;
  v6 = objc_alloc_init(NSMutableDictionary);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = a1;
  obj = [*(a1 + 40) items];
  v7 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 UUID];
        v13 = [v6 objectForKey:v12];
        v14 = v11;
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1000D8914;
        v29[3] = &unk_100510E50;
        v15 = v14;
        v30 = v15;
        v16 = objc_retainBlock(v29);
        if (v13)
        {
          v17 = [v13 mutatedCopyWithMutator:v16];
        }

        else
        {
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1000D89C0;
          v33 = &unk_100510E78;
          *&v34 = v15;
          *(&v34 + 1) = v16;
          v17 = [AFClockTimer newWithBuilder:buf];
        }

        [v6 setObject:v17 forKey:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v8);
  }

  [v23 beginGrouping];
  [v23 setItemsByID:v6];
  [v23 setGeneration:{objc_msgSend(*(a1 + 40), "generation")}];
  v18 = [*(a1 + 40) date];
  [v23 setDate:v18];

  [v23 endGroupingWithOptions:0];
  v19 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v21 = *(v22 + 32);
    v20 = *(v22 + 40);
    *buf = 136315906;
    *&buf[4] = "[ADDeviceSyncTimerConsumer applySnapshot:fromDeviceWithIdentifier:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v20;
    *&buf[22] = 2112;
    v33 = v21;
    LOWORD(v34) = 2112;
    *(&v34 + 2) = v23;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Dumped device sync snapshot %@ from device %@ to synced timer storage %@.", buf, 0x2Au);
  }
}

uint64_t sub_1002F15A4(uint64_t a1, void *a2)
{
  v3 = [a2 generation];
  v4 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[ADDeviceSyncTimerConsumer getGenerationForDeviceWithIdentifier:completion:]_block_invoke";
    v9 = 2048;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Loaded synced timer generation %llu for device %@.", &v7, 0x20u);
  }

  return (*(*(a1 + 40) + 16))();
}

id sub_1002F1FF4()
{
  if (qword_1005908D8 != -1)
  {
    dispatch_once(&qword_1005908D8, &stru_10051AFC0);
  }

  v1 = qword_1005908E0;

  return v1;
}

void sub_1002F2048(id a1)
{
  sub_1002F20AC();
  qword_1005908E0 = objc_getClass("EKPreferences");
  if (!qword_1005908E0)
  {
    __assert_rtn("initEKPreferences_block_invoke", "ADShowNextEventRequestHandler.m", 28, "classEKPreferences");
  }

  off_10058E068 = sub_1002F210C;
}

void sub_1002F20AC()
{
  if (!qword_1005908B8)
  {
    qword_1005908B8 = dlopen("/System/Library/Frameworks/EventKit.framework/EventKit", 2);
    if (!qword_1005908B8)
    {
      __assert_rtn("EventKitLibrary", "ADShowNextEventRequestHandler.m", 26, "frameworkLibrary");
    }
  }
}

void sub_1002F2470()
{
  if (!qword_1005908C0)
  {
    qword_1005908C0 = dlopen("/System/Library/PrivateFrameworks/CalendarFoundation.framework/CalendarFoundation", 2);
    if (!qword_1005908C0)
    {
      __assert_rtn("CalendarFoundationLibrary", "ADShowNextEventRequestHandler.m", 19, "frameworkLibrary");
    }
  }
}

id sub_1002F24D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 startDate];
  v5 = [v3 endDate];

  v6 = [v2 CalIsBetweenStartDate:v4 endDate:v5];
  return v6;
}

id sub_1002F2540()
{
  if (qword_1005908C8 != -1)
  {
    dispatch_once(&qword_1005908C8, &stru_10051AFA0);
  }

  v1 = qword_1005908D0;

  return v1;
}

void sub_1002F2594(id a1)
{
  sub_1002F2470();
  qword_1005908D0 = objc_getClass("CalDateRange");
  if (!qword_1005908D0)
  {
    __assert_rtn("initCalDateRange_block_invoke", "ADShowNextEventRequestHandler.m", 20, "classCalDateRange");
  }

  off_10058E060 = sub_1002F25F8;
}

uint64_t sub_1002F29FC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1002F2A14(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) createResponse];
    v4 = 0;
  }

  else
  {
    v4 = [NSError errorWithDomain:kAFAssistantErrorDomain code:706 userInfo:0];
    v3 = 0;
  }

  v5 = v3;
  (*(*(a1 + 40) + 16))();
}

id sub_1002F2AB4()
{
  if (qword_1005908A8 != -1)
  {
    dispatch_once(&qword_1005908A8, &stru_10051AF80);
  }

  v1 = qword_1005908B0;

  return v1;
}

void sub_1002F2B08(id a1)
{
  sub_1002F20AC();
  qword_1005908B0 = objc_getClass("EKEventStore");
  if (!qword_1005908B0)
  {
    __assert_rtn("initEKEventStore_block_invoke", "ADShowNextEventRequestHandler.m", 27, "classEKEventStore");
  }

  off_10058E058 = sub_1002F2B6C;
}

void sub_1002F3080(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setDelegate:?];
  v2 = *(*(a1 + 32) + 8);
  v4 = @"com.apple.icloud.fmip.voiceassistantsync";
  v3 = [NSArray arrayWithObjects:&v4 count:1];
  [v2 _setEnabledTopics:v3];
}

void sub_1002F3234(id a1)
{
  v1 = objc_alloc_init(ADFMIPListener);
  v2 = qword_100590910;
  qword_100590910 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1002F3270(id a1)
{
  v1 = [NSSet alloc];
  v5[0] = @"com.apple.chatkit.groups";
  v5[1] = @"com.apple.homekit.name";
  v5[2] = @"com.apple.icloud.fmip";
  v5[3] = @"com.apple.maps";
  v5[4] = @"com.apple.media.entities";
  v5[5] = @"com.apple.media.podcasts";
  v5[6] = @"com.apple.siri.appIntentSupportPolicyAndVocab.nano";
  v5[7] = @"com.apple.siri.appIntentSupportPolicyAndVocab";
  v5[8] = @"com.apple.siri.calendar.systemsetting";
  v5[9] = @"com.apple.siri.client.state.DynamiteClientState";
  v5[10] = @"com.apple.siri.parsecContext";
  v5[11] = @"com.apple.siri.ParsecSubscriptionServiceSupport";
  v2 = [NSArray arrayWithObjects:v5 count:12];
  v3 = [v1 initWithArray:v2];
  v4 = qword_100590918;
  qword_100590918 = v3;
}

void sub_1002F3384(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = +[ADSyncFlagManager sharedManager];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1002F3430;
    v3[3] = &unk_10051C0B0;
    v4 = v1;
    [v2 fetchKeysThatNeedToSync:v3];
  }
}

void sub_1002F3430(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 allObjects];
  (*(v2 + 16))(v2, v3);
}

void sub_1002F3490(void *a1)
{
  v1 = a1;
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "ADSetSyncNeededFlagForReason";
    v6 = 2112;
    v7 = v1;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s %@", &v4, 0x16u);
  }

  v3 = sub_1002F356C(v1);
  sub_1002F36B4(v3);
}

id sub_1002F356C(void *a1)
{
  v1 = a1;
  if (qword_1005908F8 != -1)
  {
    dispatch_once(&qword_1005908F8, &stru_10051AFE0);
  }

  if ([v1 length])
  {
    v2 = [qword_100590900 objectForKey:v1];
    if ([v2 count])
    {
      goto LABEL_10;
    }

    if ([v1 hasSuffix:@".siri_data_changed"])
    {
      v3 = [v1 substringToIndex:{objc_msgSend(v1, "length") - objc_msgSend(@".siri_data_changed", "length")}];
      if (v3)
      {
        v4 = v3;
        v7 = v3;
        v5 = [NSArray arrayWithObjects:&v7 count:1];

        v2 = v5;
        goto LABEL_10;
      }
    }
  }

  v2 = 0;
LABEL_10:

  return v2;
}

void sub_1002F36B4(void *a1)
{
  v1 = a1;
  v2 = +[ADSyncFlagManager sharedManager];
  [v2 setSyncNeededFlagForKeys:v1];
}

void sub_1002F3718(id a1)
{
  if (AFSupportsPairedDevice())
  {
    v27[0] = @"com.apple.siri.applications";
    v27[1] = @"com.apple.siri.appIntentSupportPolicyAndVocab";
    v27[2] = @"com.apple.siri.appIntentSupportPolicyAndVocab.nano";
    v1 = v27;
    v2 = 3;
  }

  else
  {
    v26[0] = @"com.apple.siri.applications";
    v26[1] = @"com.apple.siri.appIntentSupportPolicyAndVocab";
    v1 = v26;
    v2 = 2;
  }

  v3 = [NSArray arrayWithObjects:v1 count:v2];
  v25[0] = v3;
  v24[0] = @"registered_applications_changed";
  v24[1] = @"address_book";
  v23 = @"com.apple.contact.people";
  v4 = [NSArray arrayWithObjects:&v23 count:1];
  v25[1] = v4;
  v24[2] = @"locale_change";
  v22 = @"com.apple.siri.calendar.systemsetting";
  v5 = [NSArray arrayWithObjects:&v22 count:1];
  v25[2] = v5;
  v24[3] = @"com.apple.assistant.sync_homekit_now";
  v21 = @"com.apple.homekit.name";
  v6 = [NSArray arrayWithObjects:&v21 count:1];
  v25[3] = v6;
  v24[4] = @"siri_kit_app_vocabulary";
  v20 = @"com.apple.siri.vocabularyupdates";
  v7 = [NSArray arrayWithObjects:&v20 count:1];
  v25[4] = v7;
  v24[5] = @"dynamite_token_change";
  v19 = @"com.apple.siri.client.state.DynamiteClientState";
  v8 = [NSArray arrayWithObjects:&v19 count:1];
  v25[5] = v8;
  v24[6] = @"correction_profiles_change";
  v18 = @"com.apple.siri.corrections";
  v9 = [NSArray arrayWithObjects:&v18 count:1];
  v25[6] = v9;
  v24[7] = @"com.apple.geoservices.siri_data_changed";
  v17 = @"com.apple.maps";
  v10 = [NSArray arrayWithObjects:&v17 count:1];
  v25[7] = v10;
  v24[8] = @"parsec_context_change";
  v16 = @"com.apple.siri.parsecContext";
  v11 = [NSArray arrayWithObjects:&v16 count:1];
  v25[8] = v11;
  v24[9] = @"subcscirption_status";
  v15 = @"com.apple.siri.ParsecSubscriptionServiceSupport";
  v12 = [NSArray arrayWithObjects:&v15 count:1];
  v25[9] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:10];
  v14 = qword_100590900;
  qword_100590900 = v13;
}

void sub_1002F3A14(void *a1)
{
  v1 = a1;
  v2 = +[ADSyncFlagManager sharedManager];
  [v2 clearFlagsForKeys:v1];
}

uint64_t sub_1002F3A78(void *a1)
{
  v1 = a1;
  v2 = sub_1002F3AF0();
  v3 = [v2 objectForKey:v1];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [v1 hasSuffix:@".siri_data_changed"];
  }

  return v4;
}

id sub_1002F3AF0()
{
  v0 = qword_1005908E8;
  if (!qword_1005908E8)
  {
    v1 = [@"CKPersistentStorageKeysAndValuesUpdated." stringByAppendingString:@"synched"];
    v2 = [@"CKPersistentStorageKeysRemoved." stringByAppendingString:@"synched"];
    v3 = SAKnowledgeStoreNameSiriUserCorrectionsValue;
    v4 = [@"CKPersistentStorageKeysAndValuesUpdated." stringByAppendingString:SAKnowledgeStoreNameSiriUserCorrectionsValue];
    v5 = [@"CKPersistentStorageKeysRemoved." stringByAppendingString:v3];
    v9[0] = @"AppleDatePreferencesChangedNotification";
    v9[1] = kCFLocaleCurrentLocaleDidChangeNotification;
    v10[0] = @"locale_change";
    v10[1] = @"locale_change";
    v9[2] = @"com.apple.LaunchServices.applicationRegistered";
    v9[3] = @"com.apple.LaunchServices.applicationUnregistered";
    v10[2] = @"registered_applications_changed";
    v10[3] = @"registered_applications_changed";
    v9[4] = @"ADPreferencesEnabledBitsDidChangeNotification";
    v9[5] = @"com.apple.assistant.sync_needed";
    v10[4] = @"assistant_enabled";
    v10[5] = @"requested_by_assistantd";
    v9[6] = @"MPStoreClientTokenDidChangeNotification";
    v9[7] = @"com.apple.assistant.app_vocabulary";
    v10[6] = @"dynamite_token_change";
    v10[7] = @"siri_kit_app_vocabulary";
    v9[8] = @"com.apple.assistant.siri_settings_did_change";
    v9[9] = @"com.apple.assistant.sync_homekit_now";
    v10[8] = @"siri_settings_did_change";
    v10[9] = @"com.apple.assistant.sync_homekit_now";
    v9[10] = @"com.apple.assistant.sync_homekit_urgent";
    v9[11] = @"com.apple.assistant.sync_data_changed";
    v10[10] = @"com.apple.assistant.sync_homekit_now";
    v10[11] = @"com.apple.assistant.sync_data_changed";
    v9[12] = @"__ABDataBaseChangedByOtherProcessNotification";
    v9[13] = @"ABDatabaseChangedExternallyNotificationPriv";
    v10[12] = @"address_book";
    v10[13] = @"address_book";
    v9[14] = @"ABDistributedDatabaseChangedNotificationPriv";
    v9[15] = @"com.apple.siri.vocabulary.contacts_changed";
    v10[14] = @"address_book";
    v10[15] = @"address_book";
    v9[16] = v1;
    v9[17] = v2;
    v10[16] = @"correction_profiles_change";
    v10[17] = @"correction_profiles_change";
    v9[18] = v4;
    v9[19] = v5;
    v10[18] = @"correction_profiles_change";
    v10[19] = @"correction_profiles_change";
    v9[20] = @"com.apple.geoservices.siri_data_changed";
    v9[21] = @"com.apple.parsecd.bag";
    v10[20] = @"com.apple.geoservices.siri_data_changed";
    v10[21] = @"parsec_context_change";
    v9[22] = @"com.apple.VideoSubscriberAccount.DidRegisterSubscription";
    v10[22] = @"subcscirption_status";
    v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:23];
    v7 = qword_1005908E8;
    qword_1005908E8 = v6;

    v0 = qword_1005908E8;
  }

  return v0;
}

id sub_1002F3D78(void *a1)
{
  v1 = a1;
  v2 = sub_1002F3AF0();
  v3 = [v2 objectForKey:v1];

  if (!v3)
  {
    if ([v1 hasSuffix:@".siri_data_changed"])
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t sub_1002F3E04(void *a1, void *a2, void *a3, int a4, char a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  if (!a4 || (a5 & 1) != 0)
  {
    goto LABEL_19;
  }

  if ([v9 isEqualToString:@"parsec_context_change"])
  {
    v12 = AFSiriLogContextUtility;
    v13 = 1;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "ADSyncNotificationShouldBeFilteredForReason";
      v14 = "%s Ignoring the parsec context update notification on a FullUOD device";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v14, buf, 0xCu);
      goto LABEL_38;
    }

    goto LABEL_38;
  }

  if (![v9 isEqualToString:@"dynamite_token_change"])
  {
    if ([v9 isEqualToString:@"correction_profiles_change"])
    {
      v12 = AFSiriLogContextUtility;
      v13 = 1;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "ADSyncNotificationShouldBeFilteredForReason";
        v14 = "%s Ignoring the correction update sync on a FullUOD device";
        goto LABEL_18;
      }

      goto LABEL_38;
    }

    if ([v9 isEqualToString:@"subcscirption_status"])
    {
      v12 = AFSiriLogContextUtility;
      v13 = 1;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "ADSyncNotificationShouldBeFilteredForReason";
        v14 = "%s Ignoring the PSSS sync on a FullUOD device";
        goto LABEL_18;
      }

      goto LABEL_38;
    }

    if ([v9 isEqualToString:@"com.apple.icloud.fmip.siri_data_changed"])
    {
      v12 = AFSiriLogContextUtility;
      v13 = 1;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "ADSyncNotificationShouldBeFilteredForReason";
        v14 = "%s Ignoring FindMy update notification on a FullUOD device";
        goto LABEL_18;
      }

      goto LABEL_38;
    }

LABEL_19:
    if ([v9 isEqualToString:@"address_book"] && ((+[AFUtilitiesWrapper deviceSupportsSiriUOD](AFUtilitiesWrapper, "deviceSupportsSiriUOD") & 1) != 0 || (+[AFUtilitiesWrapper shouldRunAsrOnServerForUOD](AFUtilitiesWrapper, "shouldRunAsrOnServerForUOD") & 1) != 0 || +[AFUtilitiesWrapper offlineDictationCapable](AFUtilitiesWrapper, "offlineDictationCapable")) && (objc_msgSend(v11, "isEqualToString:", @"com.apple.siri.vocabulary.contacts_changed") & 1) == 0)
    {
      v29 = AFSiriLogContextUtility;
      v13 = 1;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "ADSyncNotificationShouldBeFilteredForReason";
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s Ignoring AB notification that is not from Siri Vocabulary", buf, 0xCu);
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = [v9 isEqualToString:@"address_book"];
    if (v10)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if ((v16 & 1) == 0)
    {
      if (((v10 != 0) & [v9 isEqualToString:@"registered_applications_changed"]) == 1)
      {
        if (xpc_dictionary_get_BOOL(v10, [@"isPlaceholder" UTF8String]))
        {
          v25 = AFSiriLogContextUtility;
          v13 = 1;
          if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            *&buf[4] = "ADSyncNotificationShouldBeFilteredForReason";
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s Ignoring App notification for placeholders", buf, 0xCu);
          }
        }

        if (xpc_dictionary_get_BOOL(v10, [@"isForcedUpdate" UTF8String]))
        {
          v26 = AFSiriLogContextUtility;
          v13 = 1;
          if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            *&buf[4] = "ADSyncNotificationShouldBeFilteredForReason";
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s Ignoring App notification for forced update", buf, 0xCu);
          }
        }

        else if (v13)
        {
          v13 = 1;
        }

        else if (AFIsInternalInstall())
        {
          v30 = xpc_dictionary_get_array(v10, [@"bundleIDs" UTF8String]);
          v31 = v30;
          if (v30 && xpc_array_get_count(v30))
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LOBYTE(v41) = 0;
            v37[0] = _NSConcreteStackBlock;
            v37[1] = 3221225472;
            v37[2] = sub_1002F46F0;
            v37[3] = &unk_10051B008;
            v37[4] = buf;
            xpc_array_apply(v31, v37);
            v32 = *(*&buf[8] + 24);
            if ((v32 & 1) == 0)
            {
              v33 = AFSiriLogContextUtility;
              if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
              {
                *v38 = 136315138;
                v39 = "ADSyncNotificationShouldBeFilteredForReason";
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s Ignoring App notification for internal stressCycler test app", v38, 0xCu);
              }
            }

            v13 = v32 ^ 1;
            _Block_object_dispose(buf, 8);
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else if (((v10 != 0) & [v9 isEqualToString:@"correction_profiles_change"]) == 1)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v41) = 0;
        v27 = xpc_dictionary_get_dictionary(v10, "updated");
        v28 = xpc_dictionary_get_array(v10, "removed");
        if (v27 && xpc_dictionary_get_count(v27))
        {
          applier[0] = _NSConcreteStackBlock;
          applier[1] = 3221225472;
          applier[2] = sub_1002F4760;
          applier[3] = &unk_10051B030;
          applier[4] = buf;
          xpc_dictionary_apply(v27, applier);
        }

        else if (v28 && xpc_array_get_count(v28))
        {
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_1002F47B0;
          v35[3] = &unk_10051B008;
          v35[4] = buf;
          xpc_array_apply(v28, v35);
        }

        else
        {
          *(*&buf[8] + 24) = 1;
        }

        if (*(*&buf[8] + 24))
        {
          v13 = 0;
        }

        else
        {
          v34 = AFSiriLogContextUtility;
          v13 = 1;
          if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
          {
            *v38 = 136315138;
            v39 = "ADSyncNotificationShouldBeFilteredForReason";
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s Ignoring CK notification because there's no correction profile change", v38, 0xCu);
            v13 = *(*&buf[8] + 24) ^ 1;
          }
        }

        _Block_object_dispose(buf, 8);
      }
    }

    v17 = qword_1005908F0;
    if (!qword_1005908F0)
    {
      v18 = [[NSSet alloc] initWithArray:&off_100533680];
      v19 = qword_1005908F0;
      qword_1005908F0 = v18;

      v17 = qword_1005908F0;
    }

    if (([v17 containsObject:v9] & 1) == 0)
    {
      v20 = sub_10000A928(@"session_did_finish_timestamp");
      if (!v20)
      {
        sub_100216038(@"session_did_finish_timestamp");
        v20 = +[NSDate date];
      }

      [v20 timeIntervalSinceNow];
      v22 = v21 > -691200.0;

      if (!v22)
      {
        v23 = AFSiriLogContextUtility;
        if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "ADSyncNotificationShouldBeFilteredForReason";
          *&buf[12] = 2048;
          *&buf[14] = 8;
          *&buf[22] = 2112;
          v41 = v9;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s User hasn't used Siri or dictation in the past %tu days, not syncing for %@", buf, 0x20u);
        }

        sub_1002F3490(v9);
        v13 = 1;
      }
    }

    goto LABEL_38;
  }

  v12 = AFSiriLogContextUtility;
  v13 = 1;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "ADSyncNotificationShouldBeFilteredForReason";
    v14 = "%s Ignoring the Dynamite client state update notification on a FullUOD device";
    goto LABEL_18;
  }

LABEL_38:

  return v13 & 1;
}

uint64_t sub_1002F46F0(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (strstr(string_ptr, "com.apple.stressCycler"))
  {
    return 1;
  }

  v6 = strstr(string_ptr, "com.apple.watchOSStressCycler");
  result = 1;
  if (!v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  return result;
}

BOOL sub_1002F4760(uint64_t a1, char *__s1)
{
  v3 = strstr(__s1, "Correction:");
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v3 == 0;
}

BOOL sub_1002F47B0(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  v5 = strstr(string_ptr, "Correction:");
  if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v5 == 0;
}

BOOL sub_1002F4800()
{
  if (!off_10058E0D0())
  {
    return 0;
  }

  v0 = sub_10000A928(@"sync_flag");
  v1 = v0;
  if (v0)
  {
    [v0 timeIntervalSinceNow];
    v3 = v2 < -172800.0;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t sub_1002F4874()
{
  v0 = qword_100590928;
  if (!qword_100590928)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/SetupAssistant.framework/SetupAssistant", 2);
    qword_100590928 = v0;
    if (!v0)
    {
      __assert_rtn("SetupAssistantLibrary", "ADSyncUtilities.m", 46, "frameworkLibrary");
    }
  }

  v1 = dlsym(v0, "BYSetupAssistantHasCompletedInitialRun");
  off_10058E0D0 = v1;
  if (!v1)
  {
    __assert_rtn("initBYSetupAssistantHasCompletedInitialRun", "ADSyncUtilities.m", 47, "softLinkBYSetupAssistantHasCompletedInitialRun");
  }

  return v1();
}

id sub_1002F491C(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = a1;
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1002F4A1C;
    v11 = &unk_10051B118;
    v12 = objc_alloc_init(NSMutableArray);
    v13 = v3;
    v5 = v12;
    [v4 enumerateObjectsUsingBlock:&v8];

    v6 = [v5 copy];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

void sub_1002F4A1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

BOOL sub_1002F4AD4(id a1, ADDictationSession *a2, BOOL *a3)
{
  v3 = a2;
  v4 = [(ADDictationSession *)v3 speechRecognitionTransactionState]- 1 < 2 || [(ADDictationSession *)v3 audioFileIOTransactionState]- 1 < 2;

  return v4;
}

void sub_1002F5164(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchKnownAccounts];
  [*(a1 + 32) _publishHomeSeed:*(a1 + 40) forAccounts:v2];
}

void sub_1002F5610(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 iCloudAltDSID];

  if (v4)
  {
    v5 = [BMAccount alloc];
    v6 = [v8 iCloudAltDSID];
    v7 = [v5 initWithAltDSID:v6];

    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }
  }
}

void sub_1002F5DE8(uint64_t a1)
{
  v2 = [*(a1 + 32) isPartOfHome];
  v3 = +[ADAnalyticsIdentifiersUtils logger];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Ensuring home seed and aggregation id is published to all Home members", v5, 2u);
    }

    [*(a1 + 32) _publishHomeSeedToAllMembers];
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Won't run consistency check as device is not part of a home", buf, 2u);
    }
  }
}

void sub_1002F661C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (!v6)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      *buf = 136315651;
      v19 = "[ADCommandCenter(RemoteExecute) startRemoteRequest:onTargetDevice:completion:]_block_invoke";
      v20 = 2113;
      v21 = v10;
      v22 = 2113;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Routing to multiuser device (%{private}@ / %{private}@)", buf, 0x20u);
    }

    v11 = [[ADPeerInfo alloc] initWithUniqueIdentifer:v5];
    [(ADPeerInfo *)v11 setAssistantIdentifier:*(a1 + 32)];
    v12 = [*(a1 + 40) _queue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1002F685C;
    v14[3] = &unk_10051E0D8;
    v13 = *(a1 + 48);
    v14[4] = *(a1 + 40);
    v15 = v13;
    v16 = v11;
    v17 = *(a1 + 56);
    v9 = v11;
    dispatch_async(v12, v14);

    goto LABEL_9;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v19 = "[ADCommandCenter(RemoteExecute) startRemoteRequest:onTargetDevice:completion:]_block_invoke_2";
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s No reachable multiuser device", buf, 0xCu);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = [AFError errorWithCode:1012];
    (*(v8 + 16))(v8, v9);
LABEL_9:
  }
}

uint64_t sub_1002F6DC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002F6DD8(void *a1, uint64_t a2)
{
  v4 = a1[5];
  if (v4)
  {
    if (a2)
    {
      (*(v4 + 16))(a1[5], 0);
    }

    else
    {
      v5 = [AFError errorWithCode:1200];
      (*(v4 + 16))(v4, v5);
    }
  }

  v6 = +[AFAnalytics sharedAnalytics];
  v7 = *(a1[6] + 8);
  v12[0] = @"transport type";
  v12[1] = @"id";
  v8 = *(v7 + 40);
  v9 = a1[4];
  v13[0] = v8;
  v13[1] = v9;
  v12[2] = @"success";
  v10 = [NSNumber numberWithBool:a2];
  v13[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v6 logEventWithType:4804 context:v11];
}

uint64_t sub_1002F714C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = *(a1 + 32) - 1;
  if (v7 <= 6 && ((0x4Bu >> v7) & 1) != 0)
  {
    v8 = [NSSet setWithArray:off_10051B310[v7], v15];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v5 productType];
        LOBYTE(v12) = [v13 hasPrefix:v12];

        if (v12)
        {
          v9 = 1;
          goto LABEL_15;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v9;
}

void sub_1002F799C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_alloc_init(SAExecuteOnRemoteResponse);
    [v8 setResult:v5];
    v9 = [*(a1 + 32) remoteDevice];
    [v8 setRemoteDevice:v9];

    [v8 setResponseFromRemote:{objc_msgSend(*(a1 + 32), "requiresResponseFromRemote")}];
    v10 = *(a1 + 40);
    v11 = 2;
    v12 = 0;
LABEL_5:
    [v10 _addNetworkActivityTracingForLabel:7 start:0 withCompletionReason:v11 andError:v12];
    goto LABEL_6;
  }

  if (v6)
  {
    v8 = sub_100362334(v6);
    v10 = *(a1 + 40);
    v11 = 4;
    v12 = v7;
    goto LABEL_5;
  }

  [*(a1 + 40) _addNetworkActivityTracingForLabel:7 start:0 withCompletionReason:4 andError:0];
  v8 = 0;
LABEL_6:
  if ([*(a1 + 32) suppressResponse])
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = v13;
      v16 = [v14 dictionary];
      v17 = 136315394;
      v18 = "[ADCommandCenter(RemoteExecute) _saExecuteOnRemoteRequest:executionContext:completion:]_block_invoke";
      v19 = 2112;
      v20 = v16;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Suppressing response/error, as suppressResponse is set on %@", &v17, 0x16u);
    }

    v8 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1002F83F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onPeer:allowsRelay:allowFallbackOnAWDL:executionContext:completion:]_block_invoke";
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Error: %@", buf, 0x16u);
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v7);
    }

    [*(a1 + 32) _logExecuteOnRemoteRequestForRequestId:*(a1 + 40) turnId:*(a1 + 48) event:2];
    v10 = 0;
  }

  else
  {
    v11 = v5;
    objc_opt_class();
    v12 = v11;
    if (objc_opt_isKindOfClass())
    {
      v13 = [v11 objectForKeyedSubscript:@"payload"];

      v12 = v11;
      if (v13)
      {
        v12 = [v11 objectForKeyedSubscript:@"payload"];
      }
    }

    v10 = [SAGenericCommand aceObjectWithDictionary:v12];
    v14 = AFSiriLogContextDaemon;
    v15 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (!v12 || v10)
    {
      if (v15)
      {
        *buf = 136315394;
        v30 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onPeer:allowsRelay:allowFallbackOnAWDL:executionContext:completion:]_block_invoke";
        v31 = 2112;
        v32 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Response from peer: %@", buf, 0x16u);
      }

      v17 = *(a1 + 64);
      if (v17)
      {
        (*(v17 + 16))(v17, v10, 0);
      }

      v7 = 0;
    }

    else
    {
      if (v15)
      {
        *buf = 136315394;
        v30 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onPeer:allowsRelay:allowFallbackOnAWDL:executionContext:completion:]_block_invoke";
        v31 = 2112;
        v32 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Malformed command dictionary: %@", buf, 0x16u);
      }

      v7 = [AFError errorWithCode:102];
      v16 = *(a1 + 64);
      if (v16)
      {
        (*(v16 + 16))(v16, 0, v7);
      }
    }

    [*(a1 + 32) _logExecuteOnRemoteRequestForRequestId:*(a1 + 40) turnId:*(a1 + 48) event:1];

    if (v10 && (+[AFFeatureFlags isCrossDeviceTVControlFromWatchEnabled]& 1) == 0)
    {
      v18 = +[AFAnalytics sharedAnalytics];
      v19 = AFAnalyticsContextCreateWithError();
      v28[0] = v19;
      v20 = AFAnalyticsContextCreateWithCommand();
      v28[1] = v20;
      v21 = *(*(*(a1 + 72) + 8) + 40);
      v26[0] = @"transport type";
      v26[1] = @"id";
      v22 = *(a1 + 56);
      v27[0] = v21;
      v27[1] = v22;
      v23 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
      v28[2] = v23;
      v24 = [NSArray arrayWithObjects:v28 count:3];
      v25 = AFAnalyticsContextsMerge();
      [v18 logEventWithType:4802 context:v25];
    }
  }
}

void sub_1002F87AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onPeer:allowsRelay:allowFallbackOnAWDL:executionContext:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Falling back on IDS in sending command to peer.", buf, 0xCu);
    }

    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = @"ids";

    v10 = +[AFAnalytics sharedAnalytics];
    v11 = *(*(*(a1 + 72) + 8) + 40);
    v17[0] = @"transport type";
    v17[1] = @"id";
    v12 = *(a1 + 32);
    v18[0] = v11;
    v18[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v10 logEventWithType:4801 context:v13];

    v14 = +[ADPeerCloudService sharedInstance];
    [v14 startRemoteSerialzedCommandExecution:*(a1 + 40) onPeer:*(a1 + 48) allowsRelay:*(a1 + 80) allowFallbackOnAWDL:0 executionContext:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    v15 = *(*(a1 + 72) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = @"rapport";

    (*(*(a1 + 64) + 16))();
  }
}

void sub_1002F90C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (!v6)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = 136315651;
      v12 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onDeviceForAssistantId:allowFallbackOnAWDL:executionContext:completion:]_block_invoke";
      v13 = 2113;
      v14 = v10;
      v15 = 2113;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Routing to multiuser device (%{private}@ / %{private}@)", &v11, 0x20u);
    }

    v9 = [[ADPeerInfo alloc] initWithUniqueIdentifer:v5];
    [(ADPeerInfo *)v9 setAssistantIdentifier:*(a1 + 32)];
    [*(a1 + 40) _remoteExecute_remoteDeviceExecuteSerializedCommand:*(a1 + 48) onPeer:v9 allowsRelay:*(a1 + 72) allowFallbackOnAWDL:*(a1 + 73) executionContext:*(a1 + 56) completion:*(a1 + 64)];
    goto LABEL_9;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315138;
    v12 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onDeviceForAssistantId:allowFallbackOnAWDL:executionContext:completion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s No reachable multiuser device", &v11, 0xCu);
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    v9 = [AFError errorWithCode:1012];
    (*(v8 + 16))(v8, 0, v9);
LABEL_9:
  }
}

void sub_1002F927C(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  if ([v3 length])
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *v14 = 136315651;
      *&v14[4] = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onDeviceForAssistantId:allowFallbackOnAWDL:executionContext:completion:]_block_invoke";
      *&v14[12] = 2113;
      *&v14[14] = v3;
      *&v14[22] = 2113;
      v15 = v5;
      v6 = "%s Routing to context collector (%{private}@ for relay to %{private}@)";
      v7 = v4;
      v8 = 32;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v6, v14, v8);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = AFSupportsHALOnDemandRapportConnection();
  v10 = AFSiriLogContextDaemon;
  if (v9)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      *v14 = 136315395;
      *&v14[4] = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onDeviceForAssistantId:allowFallbackOnAWDL:executionContext:completion:]_block_invoke";
      *&v14[12] = 2113;
      *&v14[14] = v11;
      v6 = "%s #hal Routing to context collector through #on-demand connection to %{private}@)";
      v7 = v10;
      v8 = 22;
      goto LABEL_7;
    }

LABEL_8:
    [*(a1 + 40) _remoteExecute_remoteDeviceExecuteSerializedCommand:*(a1 + 48) onPeer:*(a1 + 56) allowsRelay:*(a1 + 80) allowFallbackOnAWDL:*(a1 + 81) executionContext:*(a1 + 64) completion:{*(a1 + 72), *v14, *&v14[16], v15}];
    goto LABEL_9;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *v14 = 136315138;
    *&v14[4] = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onDeviceForAssistantId:allowFallbackOnAWDL:executionContext:completion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Remote device not reachable and no context collector is available for relay", v14, 0xCu);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = [AFError errorWithCode:1000];
    (*(v12 + 16))(v12, 0, v13);
  }

LABEL_9:
}

void sub_1002F97A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    v6 = [v3 idsIdentifier];
    v7 = 136315394;
    v8 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onSpecifiedDeviceTypes:preferredMessagingOption:allowFallbackOnAWDL:executionContext:completion:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Executing command on primary user device with identifier: %@", &v7, 0x16u);
  }

  if (*(a1 + 64))
  {
    [v3 setPreferredMessagingOptionsForCommands:?];
  }

  [*(a1 + 32) _remoteExecute_remoteDeviceExecuteSerializedCommand:*(a1 + 40) onPeer:v3 allowsRelay:0 allowFallbackOnAWDL:*(a1 + 72) executionContext:*(a1 + 48) completion:*(a1 + 56)];
}

void sub_1002F9DCC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteCommand:onPeer:allowsRelay:throughProxyDevice:executionContext:completion:]_block_invoke";
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Error: %@", buf, 0x16u);
    }

LABEL_13:
    v13 = a1[5];
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v7);
    }

    v9 = 0;
    goto LABEL_16;
  }

  v9 = [SAGenericCommand aceObjectWithDictionary:v5];
  v10 = AFSiriLogContextDaemon;
  v11 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (!v9)
  {
    if (v11)
    {
      *buf = 136315394;
      v26 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteCommand:onPeer:allowsRelay:throughProxyDevice:executionContext:completion:]_block_invoke";
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Malformed command dictionary: %@", buf, 0x16u);
    }

    v7 = [AFError errorWithCode:102];
    goto LABEL_13;
  }

  if (v11)
  {
    *buf = 136315394;
    v26 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteCommand:onPeer:allowsRelay:throughProxyDevice:executionContext:completion:]_block_invoke";
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Response came back from the companion: %@", buf, 0x16u);
  }

  v12 = a1[5];
  if (v12)
  {
    (*(v12 + 16))(v12, v9, 0);
  }

  v7 = 0;
LABEL_16:
  v14 = +[AFAnalytics sharedAnalytics];
  v15 = AFAnalyticsContextCreateWithError();
  v24[0] = v15;
  v16 = AFAnalyticsContextCreateWithCommand();
  v24[1] = v16;
  v17 = *(*(a1[6] + 8) + 40);
  v22[0] = @"transport type";
  v22[1] = @"id";
  v18 = a1[4];
  v23[0] = v17;
  v23[1] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  v24[2] = v19;
  v20 = [NSArray arrayWithObjects:v24 count:3];
  v21 = AFAnalyticsContextsMerge();
  [v14 logEventWithType:4802 context:v21];
}

void sub_1002FA738(uint64_t a1)
{
  v2 = [*(a1 + 32) _beginRemoteExecutionContextForCommand:*(a1 + 40) fromPeer:*(a1 + 48) withRemoteExecutionInfo:*(a1 + 56)];
  v3 = [AFTwoArgumentSafetyBlock alloc];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1002FA954;
  v19[3] = &unk_10051B280;
  v4 = *(a1 + 64);
  v20 = v2;
  v21 = v4;
  v19[4] = *(a1 + 32);
  v5 = v2;
  v6 = [AFError errorWithCode:40];
  v7 = [v3 initWithBlock:v19 defaultValue1:0 defaultValue2:v6];

  v8 = [*(a1 + 32) rootExecutionContexts];
  v9 = [v5 info];
  v10 = [v9 requestID];
  v11 = [v8 valueForKey:v10];

  v12 = [v11 personaId];
  v13 = [v11 personaAccessLevel];
  [*(a1 + 32) _attachPersonaIdIfNeeded:v12 personaAccessLevel:v13 aceCommand:*(a1 + 40)];
  [*(a1 + 32) _updateConversationContextFromRemoteCommand:*(a1 + 40) remoteExecutionInfo:*(a1 + 56)];
  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002FAAD4;
  v17[3] = &unk_10051B168;
  v18 = v7;
  v16 = v7;
  [v15 _handleCommand:v14 executionContext:v5 completion:v17];
}

void sub_1002FA954(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[ADCommandCenter(RemoteExecute) executeCommand:fromPeer:remoteExecutionInfo:reply:]_block_invoke_2";
      v12 = 2112;
      v13 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s error = %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADCommandCenter(RemoteExecute) executeCommand:fromPeer:remoteExecutionInfo:reply:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s response = %@", &v10, 0x16u);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = [v5 dictionary];
    (*(v8 + 16))(v8, v9, v6);
  }

  [*(a1 + 32) _endRemoteExecutionContext:*(a1 + 40)];
}

void sub_1002FAEA0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002FAED8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002FAEF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FB478;
  block[3] = &unk_10051B688;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

Class sub_1002FAFB4(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100590938)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_1002FB404;
    v6[4] = &unk_10051E200;
    v6[5] = v6;
    v7 = off_10051B398;
    v8 = 0;
    qword_100590938 = _sl_dlopen();
  }

  if (!qword_100590938)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *iTunesCloudLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"ADDevicePropertiesUtils.m" lineNumber:23 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("ICMusicSubscriptionStatusController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getICMusicSubscriptionStatusControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"ADDevicePropertiesUtils.m" lineNumber:24 description:{@"Unable to find class %s", "ICMusicSubscriptionStatusController"}];

LABEL_10:
    __break(1u);
  }

  qword_100590930 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1002FB1A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "+[ADDevicePropertiesUtils fetchActiveSubscriptionsWithQueue:completion:]_block_invoke_3";
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Error fetching active subscriptions: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "+[ADDevicePropertiesUtils fetchActiveSubscriptionsWithQueue:completion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Retrieved", buf, 0xCu);
  }

  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 40) _SISchemaAppleMediaProductsSubscriptionFrom:v5]);
  v10 = v8;
  v9 = [NSArray arrayWithObjects:&v10 count:1];

  [*(a1 + 32) invokeWithValue:v9];
}

id sub_1002FB338(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "+[ADDevicePropertiesUtils fetchActiveSubscriptionsWithQueue:completion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Timed out", &v4, 0xCu);
  }

  AnalyticsSendEvent();
  return [*(a1 + 32) invokeWithValue:0];
}

uint64_t sub_1002FB404()
{
  result = _sl_dlopen();
  qword_100590938 = result;
  return result;
}

uint64_t sub_1002FB478(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2)
  {
    [v2 cancel];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_1002FB6A8(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(*(a1 + 32) + 16);
    if (v2)
    {
      (*(v2 + 16))(v2, 1);
      v3 = *(a1 + 32);
      v4 = *(v3 + 16);
      *(v3 + 16) = 0;
    }
  }
}

void sub_1002FC0F8(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [*(a1[6] + 48) path];
  v10 = 0;
  v5 = [v2 createSymbolicLinkAtPath:v3 withDestinationPath:v4 error:&v10];
  v6 = v10;

  v7 = AFSiriLogContextAnalytics;
  if (v5)
  {
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      v8 = a1[5];
      *buf = 136315394;
      v12 = "[ADAnalyticsService _linkStoreForSysdiagnose]_block_invoke";
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Created link at %@.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
  {
    v9 = a1[5];
    *buf = 136315650;
    v12 = "[ADAnalyticsService _linkStoreForSysdiagnose]_block_invoke";
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v6;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to create link at %@ due to error %@.", buf, 0x20u);
  }
}

id sub_1002FC454(uint64_t a1)
{
  [*(a1 + 32) _processStagedEvents];
  v2 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADAnalyticsService _endEventsFuzzingWithEndTime:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Finished flushing, removing time interval", &v4, 0xCu);
  }

  return [*(*(a1 + 32) + 112) dequeueObject];
}

void sub_1002FC880(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = 136315650;
      v10 = "[ADAnalyticsService _processStagedEvents]_block_invoke";
      v11 = 2048;
      v12 = [v7 count];
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed to save %tu events to the analytics store due to error %@.", &v9, 0x20u);
    }
  }
}

void sub_1002FCBB8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  dispatch_group_enter(v5);
  v7 = [AFSafetyBlock alloc];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1002FCEFC;
  v39[3] = &unk_10051BF08;
  v40 = *(a1 + 32);
  v8 = [v7 initWithBlock:v39];
  v9 = *(a1 + 40);
  v10 = [NSNumber numberWithInt:a3];
  [v9 setObject:v8 forKey:v10];

  v11 = +[NSUUID UUID];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1002FCF04;
  v35[3] = &unk_10051B508;
  v25 = *(a1 + 40);
  v12 = v25.i64[0];
  v36 = vextq_s8(v25, v25, 8uLL);
  v38 = a3;
  v37 = v11;
  v13 = v11;
  v14 = objc_retainBlock(v35);
  v15 = *(a1 + 48);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1002FCFB8;
  v32[3] = &unk_10051B530;
  v34 = a3;
  v16 = v14;
  v33 = v16;
  [v15 _observeConnectionDisrupted:a3 observer:v32 referenceId:v13];
  v17 = [AFWatchdogTimer alloc];
  v18 = *(*(a1 + 48) + 8);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1002FD084;
  v29[3] = &unk_10051B530;
  v31 = a3;
  v19 = v16;
  v30 = v19;
  v20 = [v17 initWithTimeoutInterval:v18 onQueue:v29 timeoutHandler:3.0];
  [v20 start];
  v21 = *(a1 + 56);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1002FD160;
  v26[3] = &unk_10051E038;
  v27 = v20;
  v28 = v19;
  v22 = *(v21 + 16);
  v23 = v19;
  v24 = v20;
  v22(v21, v6, a3, v26);
}

uint64_t sub_1002FCEE4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1002FCF04(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002FD1A4;
  v5[3] = &unk_10051B508;
  v3 = *(a1 + 40);
  v9 = *(a1 + 56);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  dispatch_async(v2, v5);
}

uint64_t sub_1002FCFB8(uint64_t a1)
{
  v2 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[ADAnalyticsService _executeDelegateBlockOnAllConnections:completion:]_block_invoke_5";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Connection disrupted for pid: %d, aborting boost request.", &v5, 0x12u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_1002FD084(uint64_t a1)
{
  v2 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 136315650;
    v6 = "[ADAnalyticsService _executeDelegateBlockOnAllConnections:completion:]_block_invoke";
    v7 = 2048;
    v8 = 0x4008000000000000;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Timed out after %f seconds waiting for pid: %d", &v5, 0x1Cu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_1002FD160(uint64_t a1)
{
  [*(a1 + 32) stop];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

id sub_1002FD1A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 56)];
  [v2 removeObjectForKey:v3];

  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return [v5 _stopObservingConnectionDisrupted:v4 referenceId:v6];
}

void sub_1002FD2EC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FD394;
  block[3] = &unk_10051C510;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

uint64_t sub_1002FD394(void *a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        [v7 processIdentifier];
        v8 = [v7 remoteObjectProxyWithErrorHandler:&stru_10051B4E0];
        if (v8)
        {
          (*(a1[5] + 16))();
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1002FD934(id a1, AFAnalyticsServiceDelegate *a2, int a3, id a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002FD9C8;
  v6[3] = &unk_10051D2F0;
  v7 = a4;
  v5 = v7;
  [(AFAnalyticsServiceDelegate *)a2 flushStagedEventsWithReply:v6];
}

uint64_t sub_1002FDA70(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 80);
    *(v3 + 80) = 0;
  }

  v5 = objc_retainBlock(*(a1 + 40));
  v6 = *(a1 + 32);
  v7 = *(v6 + 80);
  *(v6 + 80) = v5;

  return _objc_release_x1(v5, v7);
}

uint64_t sub_1002FDC74(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1002FDC8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[ADAnalyticsService _publishEventsToObserver:completion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_1002FDF28(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1002FDF40(uint64_t a1)
{
  v2 = objc_alloc_init(ADAnalyticsFBFDeliveryInfrastructure);
  [(ADAnalyticsFBFDeliveryInfrastructure *)v2 deliverWrappedEvents:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1002FE130(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1002FE148(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 98) == 1)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v8 = v1;
    v9 = v2;
    *(v3 + 98) = 1;
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002FE214;
    v6[3] = &unk_10051E038;
    v6[4] = v5;
    v7 = *(a1 + 40);
    [v5 _executeDelegateBlockOnAllConnections:&stru_10051B4A0 completion:v6];
  }
}

void sub_1002FE214(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002FE400;
  v4[3] = &unk_10051E038;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void sub_1002FE2A4(id a1, AFAnalyticsServiceDelegate *a2, int a3, id a4)
{
  v6 = a2;
  v7 = a4;
  v8 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "[ADAnalyticsService boostAllConnections:]_block_invoke_3";
    v14 = 2112;
    v15 = v6;
    v16 = 1024;
    v17 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Boosting events on connection: %@ pid: %d", buf, 0x1Cu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002FE3F0;
  v10[3] = &unk_10051D2F0;
  v11 = v7;
  v9 = v7;
  [(AFAnalyticsServiceDelegate *)v6 boostQueuedEvents:v10];
}

uint64_t sub_1002FE400(uint64_t a1)
{
  *(*(a1 + 32) + 98) = 0;
  v2 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADAnalyticsService boostAllConnections:]_block_invoke_3";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Finished boosting all analytics connections", &v4, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1002FE58C(void *a1)
{
  v5 = [[SISchemaClientEvent alloc] initWithData:a1[4]];
  if (v5)
  {
    v2 = +[AssistantSiriAnalytics sharedAnalytics];
    v3 = [v2 defaultMessageStream];
    [v3 emitMessage:v5 timestamp:a1[6]];
  }

  v4 = a1[5];
  if (v4)
  {
    (*(v4 + 16))();
  }
}

uint64_t sub_1002FE9DC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1002FE9F4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (!v2)
  {
    v3 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v21 = "[ADAnalyticsService stageEvents:completion:]_block_invoke_2";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Hub events logged but no speechId currently available. Staging events using NULL in place of speechId.", buf, 0xCu);
    }
  }

  v4 = [*(a1 + 40) copy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v15 + 1) + 8 * i) setSpeechId:{v2, v15}];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v10 = *(a1 + 32);
  if ((v10[96] & 1) == 0)
  {
    v11 = [NSPredicate predicateWithBlock:&stru_10051B460];
    v12 = [v5 filteredArrayUsingPredicate:v11];

    v13 = *(a1 + 32);
    v14 = [NSSet setWithArray:v12];
    [v13 _stageEvents:v14];

    v10 = *(a1 + 32);
  }

  [v10 _publishEventsToObserver:v5 completion:{*(a1 + 48), v15}];
}

BOOL sub_1002FEBEC(id a1, AFAnalyticsEvent *a2, NSDictionary *a3)
{
  v3 = a2;
  if ([(AFAnalyticsEvent *)v3 deliveryStream])
  {
    IsValid = 1;
  }

  else
  {
    [(AFAnalyticsEvent *)v3 type];
    IsValid = AFAnalyticsEventTypeIsValid();
  }

  return IsValid;
}

void sub_1002FEC38(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1002FECC4;
  v3[3] = &unk_10051B3F8;
  v4 = *(a1 + 32);
  [a2 countQueuedEventRecordsWithCompletion:v3];
}

void sub_1002FECC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[ADAnalyticsService checkForMetricsUploadProblem]_block_invoke_2";
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Error counting queued event records in analytics db: %@", &v16, 0x16u);
    }
  }

  else if (a2)
  {
    v7 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = v7;
      v15 = +[ADPreferences sharedPreferences];
      v16 = 136315906;
      v17 = "[ADAnalyticsService checkForMetricsUploadProblem]_block_invoke";
      v18 = 2112;
      v19 = v13;
      v20 = 2048;
      v21 = a2;
      v22 = 1024;
      v23 = [v15 metricsSenderDisabled];
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Triggering ABC for upload failure since %@, recordCount: %lu, senderDisabled: %d", &v16, 0x26u);
    }

    v8 = +[SiriCoreSymptomsReporter sharedInstance];
    v9 = +[NSProcessInfo processInfo];
    v10 = [v9 processIdentifier];
    [v8 reportIssueForType:@"analytics_deliverability" subType:@"upload_stuck" context:0 processIdentifier:v10 walkboutStatus:byte_100590548];

    v11 = +[ADPreferences sharedPreferences];
    v12 = +[NSDate date];
    [v11 setLastMetricsUploadFailureReportedOnDate:v12];
  }
}

uint64_t sub_1002FEFEC(uint64_t a1)
{
  result = AFIsInternalInstall();
  if ((result & 1) == 0)
  {
    v3 = +[AFPreferences sharedPreferences];
    v4 = [v3 shouldLogForQA];

    v5 = *(a1 + 32);
    if (v4)
    {

      return [v5 _linkStoreForSysdiagnose];
    }

    else
    {

      return [v5 _unlinkStoreForSysdiagnose];
    }
  }

  return result;
}

void sub_1002FF214(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 88);
  if (v4 != v3)
  {
    v5 = *(v2 + 80);
    if (v5)
    {
      (*(v5 + 16))(v5);
      v6 = *(a1 + 32);
      v7 = *(v6 + 80);
      *(v6 + 80) = 0;

      v4 = *(*(a1 + 32) + 88);
    }

    [v4 invalidate];
    v8 = *(a1 + 40);
    v9 = (*(a1 + 32) + 88);

    objc_storeStrong(v9, v8);
  }
}

void sub_1002FF340(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _store];
  (*(v1 + 16))(v1, v2);
}

id sub_1002FF444(uint64_t a1)
{
  [*(a1 + 32) _removeConnection:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _signalConnectionDisruption:v3];
}

id sub_1002FF940(uint64_t a1)
{
  if ((AFIsInternalInstall() & 1) != 0 || (+[AFPreferences sharedPreferences](AFPreferences, "sharedPreferences"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 shouldLogForQA], v2, v3))
  {
    v4 = *(a1 + 32);

    return [v4 _linkStoreForSysdiagnose];
  }

  else
  {
    v6 = *(a1 + 32);

    return [v6 _unlinkStoreForSysdiagnose];
  }
}

void sub_1002FF9CC(id a1)
{
  v1 = objc_alloc_init(ADAnalyticsService);
  v2 = qword_100590948;
  qword_100590948 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1002FFBE0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v3 = [v2 remoteObjectProxyWithErrorHandler:&stru_10051B5C8];
    [v3 receivedNotificationResponse:*(a1 + 40)];
  }

  else
  {
    v4 = [*(a1 + 40) notification];
    v5 = [v4 request];
    v6 = [v5 identifier];
    v7 = [v6 rangeOfString:@"-snoozed" options:4];
    v3 = v6;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v7;
      v3 = v6;
      if (v7 == [v6 length] - v8)
      {
        v3 = [v6 substringToIndex:v9];
      }
    }

    v10 = [*(*(a1 + 32) + 16) objectForKey:v3];
    v11 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10, *(a1 + 40));
      [*(a1 + 32) _clearNotificationWithIdentifier:v3];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));

      if (WeakRetained)
      {
        v13 = objc_loadWeakRetained((*(a1 + 32) + 24));
        [v13 receivedNotificationResponse:*(a1 + 40)];
      }

      else
      {
        v14 = AFSiriLogContextUtility;
        if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
        {
          v16 = *(a1 + 40);
          v17 = 136315394;
          v18 = "[ADUserNotificationServiceProvider userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]_block_invoke";
          v19 = 2112;
          v20 = v16;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s No response handler for %@", &v17, 0x16u);
        }
      }
    }
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_1002FFE0C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[ADUserNotificationServiceProvider userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Failed to connect to notification service client: %@", &v4, 0x16u);
  }
}

void sub_1002FFF98(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  if (v2)
  {
    v3 = *(*(a1 + 40) + 16);
    v4 = objc_retainBlock(*(a1 + 48));
    [v3 setObject:v4 forKey:v2];

    if ((*(a1 + 56) & 1) != 0 && (AFIsDeviceUnlocked() & 1) == 0)
    {
      if (([*(a1 + 40) _isMonitoringUnlockActivity] & 1) == 0)
      {
        [*(a1 + 40) _startMonitoringUnlockActivity];
      }

      v5 = [*(a1 + 32) identifier];
      v6 = sub_1003001E4(v5);

      v7 = [*(a1 + 32) content];
      v8 = [*(a1 + 32) trigger];
      v9 = [UNNotificationRequest requestWithIdentifier:v6 content:v7 trigger:v8];

      v10 = *(*(a1 + 40) + 40);
      v11 = [*(a1 + 32) identifier];
      [v10 setObject:v9 forKey:v11];
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100300254;
    v16[3] = &unk_10051C498;
    v17 = v12;
    [v13 postNotificationRequest:v17 completion:v16];
  }

  else
  {
    v14 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 136315394;
      v19 = "[ADUserNotificationServiceProvider postNotificationRequest:options:responseHandler:]_block_invoke";
      v20 = 2112;
      v21 = v15;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s No identifier specified for %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

id sub_1003001E4(void *a1)
{
  v1 = a1;
  v2 = [[NSString alloc] initWithFormat:@"%@%@", v1, @"-snoozed"];

  return v2;
}

void sub_100300254(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 136315650;
      v7 = "[ADUserNotificationServiceProvider postNotificationRequest:options:responseHandler:]_block_invoke";
      v8 = 2112;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed to post notification %@ with error %@", &v6, 0x20u);
    }
  }
}

void sub_100300724(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 elements];
  v6 = [v5 count];

  v7 = AFSiriLogContextUtility;
  v8 = os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      v20 = v7;
      v21 = [v4 elements];
      *buf = 136315394;
      v29 = "[ADUserNotificationServiceProvider _startMonitoringUnlockActivity]_block_invoke";
      v30 = 2112;
      v31 = v21;
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [v4 elements];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      v13 = FBSDisplayLayoutElementLockScreenIdentifier;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [*(*(&v23 + 1) + 8 * v14) identifier];
          v16 = [v15 isEqualToString:v13];

          if (v16)
          {

            goto LABEL_16;
          }

          v14 = v14 + 1;
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = dispatch_time(0, 1500000000);
    v18 = *(a1 + 32);
    v19 = *(v18 + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003009BC;
    block[3] = &unk_10051DFE8;
    block[4] = v18;
    dispatch_after(v17, v19, block);
  }

  else if (v8)
  {
    *buf = 136315138;
    v29 = "[ADUserNotificationServiceProvider _startMonitoringUnlockActivity]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s No layout elements", buf, 0xCu);
  }

LABEL_16:
}

void sub_100300A6C(uint64_t a1)
{
  v2 = sub_1003001E4(*(a1 + 32));
  v3 = *(*(a1 + 40) + 8);
  v5[0] = *(a1 + 32);
  v5[1] = v2;
  v4 = [NSArray arrayWithObjects:v5 count:2];
  [v3 removeDeliveredNotificationsWithIdentifiers:v4];

  [*(a1 + 40) _clearNotificationWithIdentifier:*(a1 + 32)];
}

void sub_100300D48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = *(a1 + 40);

  if (WeakRetained == v3)
  {
    v4 = *(*(a1 + 32) + 8);

    [v4 setDelegate:0];
  }
}

id sub_100300E54(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = (*(a1 + 32) + 24);

  return objc_storeWeak(v3, v2);
}

void sub_100301860(uint64_t a1)
{
  [0 setDelegate:*(a1 + 32)];
  v19 = objc_alloc_init(NSMutableDictionary);
  v2 = dispatch_group_create();
  v3 = *(*(a1 + 32) + 8);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(a1 + 40);
  v4 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        dispatch_group_enter(v2);
        v9 = [v8 identifier];
        v10 = *(a1 + 32);
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_100301B80;
        v27[3] = &unk_10051E1A0;
        v28 = v3;
        v29 = v19;
        v30 = v9;
        v31 = v2;
        v11 = v9;
        [v10 _getContextForAppInfo:v8 completion:v27];
      }

      v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v5);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100301C5C;
  block[3] = &unk_10051E088;
  v12 = a1;
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v24 = v19;
  v25 = v14;
  v26 = v13;
  v15 = v19;
  v16 = v3;
  dispatch_group_notify(v2, v3, block);
  objc_initWeak(&location, *(v12 + 32));
  v17 = dispatch_time(0, 1000000000);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100301CAC;
  v20[3] = &unk_10051B5F0;
  objc_copyWeak(&v21, &location);
  dispatch_after(v17, v16, v20);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void sub_100301B80(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100301CEC;
  v5[3] = &unk_10051DB18;
  v6 = a2;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v4 = v6;
  dispatch_async(v3, v5);
}

id sub_100301C5C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4]);
  }

  v3 = a1[5];

  return [0 removeDelegate:v3];
}

void sub_100301CAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeAllCompletionsWithError];
}

void sub_100301CEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) setObject:v2 forKey:*(a1 + 48)];
  }

  v3 = *(a1 + 56);

  dispatch_group_leave(v3);
}

void sub_1003020E8(id a1)
{
  if (AFIsHorseman())
  {
    v8[0] = SAAceDomainSignalDomainMEDIA_PLAYERValue;
    v8[1] = SAAceDomainSignalDomainMESSAGESValue;
    v9[0] = SAMPGroupIdentifier;
    v9[1] = SASmsGroupIdentifier;
    v8[2] = SAAceDomainSignalDomainREMINDERSValue;
    v8[3] = SAAceDomainSignalDomainCONTACTValue;
    v9[2] = SAReminderGroupIdentifier;
    v9[3] = SAABGroupIdentifier;
    v8[4] = SAAceDomainSignalDomainPHONEValue;
    v9[4] = SAPhoneGroupIdentifier;
    v1 = v9;
    v2 = v8;
    v3 = 5;
  }

  else
  {
    v6[0] = SAAceDomainSignalDomainMESSAGESValue;
    v6[1] = SAAceDomainSignalDomainMEDIA_PLAYERValue;
    v7[0] = SASmsGroupIdentifier;
    v7[1] = SAMPGroupIdentifier;
    v1 = v7;
    v2 = v6;
    v3 = 2;
  }

  v4 = [NSDictionary dictionaryWithObjects:v1 forKeys:v2 count:v3];
  v5 = qword_100590960;
  qword_100590960 = v4;
}

void sub_1003025D8(uint64_t a1, uint64_t a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100302730;
  block[3] = &unk_10051C588;
  v8 = a3;
  v6 = *(a1 + 32);
  v4 = v6;
  v9 = v6;
  v5 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100302694(void *a1)
{
  v1 = a1[5];
  v2 = a1[4];
  if (*(*(a1[6] + 8) + 24))
  {
    v3 = SACommandFailed_ptr;
  }

  else
  {
    v3 = SACommandSucceeded_ptr;
  }

  v5 = objc_alloc_init(*v3);
  v4 = [v2 createResponseWithReplyCommand:v5];
  (*(v1 + 16))(v1, v4, 0);
}

void sub_100302730(uint64_t a1)
{
  if (*(a1 + 32))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 40));
}

id sub_100302750()
{
  if (qword_100590990 != -1)
  {
    dispatch_once(&qword_100590990, &stru_10051B708);
  }

  v1 = qword_100590998;

  return v1;
}

void sub_1003027A4(id a1)
{
  if (qword_100590980 != -1)
  {
    dispatch_once(&qword_100590980, &stru_10051B6E8);
  }

  qword_100590998 = objc_getClass("FBSOpenApplicationOptions");
  off_10058E500 = sub_100302808;
}

id sub_100302840()
{
  if (qword_100590970 != -1)
  {
    dispatch_once(&qword_100590970, &stru_10051B6C8);
  }

  v1 = qword_100590978;

  return v1;
}

void sub_100302894(id a1)
{
  if (qword_100590980 != -1)
  {
    dispatch_once(&qword_100590980, &stru_10051B6E8);
  }

  qword_100590978 = objc_getClass("FBSOpenApplicationService");
  off_10058E4F8 = sub_1003028F8;
}

void sub_100302B18(id a1)
{
  v3[0] = SAAceDomainSignalDomainALARMValue;
  v3[1] = SAAceDomainSignalDomainCALENDARValue;
  v4[0] = @"com.apple.NanoAlarm";
  v4[1] = @"com.apple.NanoCalendar";
  v3[2] = SAAceDomainSignalDomainHEALTHValue;
  v3[3] = SAAceDomainSignalDomainMAPSValue;
  v4[2] = @"com.apple.SessionTrackerApp";
  v4[3] = @"com.apple.NanoMaps";
  v3[4] = SAAceDomainSignalDomainSETTINGSValue;
  v3[5] = SAAceDomainSignalDomainTIMERValue;
  v4[4] = @"com.apple.NanoSettings";
  v4[5] = @"com.apple.private.NanoTimer";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  v2 = qword_100590950;
  qword_100590950 = v1;
}

void *sub_100302F74(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315395;
    v11 = "[ADAssistantDataManager localMeCardDidUpdate:]_block_invoke";
    v12 = 2113;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %{private}@", buf, 0x16u);
  }

  result = *(a1 + 40);
  if (!result[22])
  {
    if (*(a1 + 32))
    {
      v5 = [*(a1 + 32) copy];
      v9 = v5;
      v6 = [NSArray arrayWithObjects:&v9 count:1];
      v7 = *(a1 + 40);
      v8 = *(v7 + 24);
      *(v7 + 24) = v6;

      result = *(a1 + 40);
    }

    return [result _generateAssistantData];
  }

  return result;
}

void sub_1003034EC(uint64_t a1)
{
  v2 = +[TUCallCapabilities supportsTelephonyCalls];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100303590;
  block[3] = &unk_10051D228;
  block[4] = v4;
  v8 = v2;
  v7 = v3;
  dispatch_async(v5, block);
}

uint64_t sub_100303590(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 104);
  v3 = *(a1 + 48);
  *(v1 + 104) = v3;
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, v2 != v3);
  }

  return result;
}

void sub_1003035C0(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create(0, v1);

  v3 = qword_1005909C8;
  qword_1005909C8 = v2;
}

void sub_1003038C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[SAVoice alloc] initWithSiriVoice:v6];

  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100304094;
  block[3] = &unk_10051E088;
  block[4] = v8;
  v13 = v7;
  v14 = v5;
  v10 = v5;
  v11 = v7;
  dispatch_async(v9, block);
}

void sub_1003039B4(uint64_t a1)
{
  v2 = +[ADPreferences sharedPreferences];
  v3 = [v2 outputVoice];

  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[ADAssistantDataManager _updateVoice:]_block_invoke";
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Retrieving best available voice asset for voice info %@...", buf, 0x16u);
  }

  v5 = [SiriTTSSynthesisVoice alloc];
  v6 = [v3 languageCode];
  v7 = [v3 name];
  v8 = [v5 initWithLanguage:v6 name:v7];

  v9 = +[SiriTTSDaemonSession afSharedSession];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100303EF8;
  v12[3] = &unk_10051B888;
  v13 = v8;
  v14 = v3;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v10 = v3;
  v11 = v8;
  [v9 getSynthesisVoiceMatching:v11 reply:v12];
}

void sub_100303BAC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = +[AFPreferences sharedPreferences];
    v9 = [v8 inProgressOutputVoice];

    if (v9)
    {
      v10 = [v9 languageCode];
      v11 = [v9 name];
      if ([v10 isEqualToString:a1[5]] && (objc_msgSend(v11, "isEqualToString:", a1[6]) & 1) != 0)
      {
        [v5 updateWithTargetVoice:a1[7]];
        if ([v5 footprint] == 2 || objc_msgSend(v5, "footprint") == 3)
        {
          v12 = AFSiriLogContextSession;
          if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
          {
            v20 = 136315138;
            v21 = "[ADAssistantDataManager _updateVoice:]_block_invoke";
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s InProgress Output Voice download complete", &v20, 0xCu);
          }

          v13 = +[AFPreferences sharedPreferences];
          [v13 setInProgressOutputVoice:0];

          v14 = +[ADCommandCenter sharedCommandCenter];
          [v14 setOutputVoice:a1[4]];

          (*(a1[9] + 16))();
          goto LABEL_19;
        }
      }

      else
      {
        v15 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
        {
          v20 = 136315138;
          v21 = "[ADAssistantDataManager _updateVoice:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s InProgress Output Voice changed during downloaded", &v20, 0xCu);
        }
      }
    }

    else
    {
      v16 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v20 = 136315138;
        v21 = "[ADAssistantDataManager _updateVoice:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s InProgress Output Voice download already completed", &v20, 0xCu);
      }
    }

    (*(a1[8] + 16))();
LABEL_19:

    goto LABEL_20;
  }

  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    v17 = a1[4];
    v18 = v7;
    v19 = [v6 localizedDescription];
    v20 = 136315650;
    v21 = "[ADAssistantDataManager _updateVoice:]_block_invoke";
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = v19;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Unable to retrieve best available voice asset for in-progress voice info %@, error: %@", &v20, 0x20u);
  }

  (*(a1[8] + 16))();
LABEL_20:
}

void sub_100303EF8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextSession;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = v7;
      v10 = [v6 localizedDescription];
      v12 = 136315650;
      v13 = "[ADAssistantDataManager _updateVoice:]_block_invoke";
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Unable to retrieve best available voice asset for voice info %@, error: %@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v11 = a1[5];
    v12 = 136315650;
    v13 = "[ADAssistantDataManager _updateVoice:]_block_invoke";
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Retrieved best available voice asset %@ for voice info %@.", &v12, 0x20u);
  }

  [v5 updateWithTargetVoice:a1[4]];
  (*(a1[6] + 16))();
}