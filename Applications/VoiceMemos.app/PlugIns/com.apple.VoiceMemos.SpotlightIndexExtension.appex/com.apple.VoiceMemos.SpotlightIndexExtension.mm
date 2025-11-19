void sub_100000F38(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000FBC;
  block[3] = &unk_100004148;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100000FBC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000010AC(id *a1)
{
  v2 = +[NSMutableArray array];
  v3 = +[NSMutableArray array];
  v4 = objc_autoreleasePoolPush();
  v5 = [a1[4] container];
  v6 = [v5 newBackgroundModel];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100001260;
  v13[3] = &unk_100004198;
  v14 = a1[5];
  v15 = v6;
  v7 = v2;
  v16 = v7;
  v8 = v3;
  v17 = v8;
  v9 = v6;
  [v9 performBlockAndWait:v13];

  objc_autoreleasePoolPop(v4);
  v10 = +[RCSSavedRecordingService sharedService];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000013A8;
  v11[3] = &unk_100004170;
  v12 = a1[6];
  [v10 updateSearchMetadataWithRecordingURIsToInsert:0 recordingURIsToUpdate:v7 recordingURIsToDelete:v8 completionBlock:v11];
}

void sub_100001260(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
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

        v7 = [RCCloudRecording savedRecordingURIForSearchableItemIdentifier:*(*(&v10 + 1) + 8 * i), v10];
        v8 = [*(a1 + 40) recordingWithURIRepresentation:v7];
        if (v8)
        {
          v9 = 48;
        }

        else
        {
          v9 = 56;
        }

        [*(a1 + v9) addObject:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1000013A8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000142C;
  block[3] = &unk_100004148;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_10000142C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}