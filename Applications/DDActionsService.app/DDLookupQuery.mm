@interface DDLookupQuery
+ (id)dictionarySectionForString:(id)a3 queryId:(unint64_t)a4;
+ (id)footerSectionForString:(id)a3 queryId:(unint64_t)a4;
+ (id)queryWithQuery:(id)a3;
+ (id)queryWithoutNetwork;
- (BOOL)parsecEnabled;
- (DDLookupQuery)initWithSession:(id)a3;
- (id)_rankFeedbackWithLocalSections:(id)a3 remoteSections:(id)a4 footerSection:(id)a5;
- (id)bag;
- (void)sectionsForString:(id)a3 useNetwork:(BOOL)a4 clientId:(id)a5 queryId:(unint64_t)a6 selectionType:(int64_t)a7 domain:(id)a8 range:(_NSRange)a9 scale:(double)a10 proxy:(id)a11 handler:(id)a12;
- (void)session:(id)a3 bag:(id)a4 didLoadWithError:(id)a5;
@end

@implementation DDLookupQuery

+ (id)queryWithQuery:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 userAgent];
    v7 = [v5 identifier];
  }

  else
  {
    v8 = [NSBundle bundleForClass:a1];
    v9 = [v8 objectForInfoDictionaryKey:kCFBundleVersionKey];

    if (![(__CFString *)v9 length])
    {

      v9 = @"1.0";
    }

    v6 = [NSString stringWithFormat:@"%@/%@", kPARLookupClient, v9];

    v7 = @"com.apple.lookup";
  }

  v10 = [[PARSessionConfiguration alloc] initWithId:v7 userAgent:v6];
  v11 = +[PARSession sharedSession];
  [v11 setConfiguration:v10];

  v12 = [DDLookupQuery alloc];
  v13 = [PARSession sessionWithConfiguration:v10];
  v14 = [(DDLookupQuery *)v12 initWithSession:v13];

  return v14;
}

+ (id)queryWithoutNetwork
{
  v2 = [[DDLookupQuery alloc] initWithSession:0];

  return v2;
}

- (DDLookupQuery)initWithSession:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = DDLookupQuery;
  v6 = [(DDLookupQuery *)&v16 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      v8 = dispatch_queue_create("DDLookupQuery.bag", 0);
      bagQueue = v7->_bagQueue;
      v7->_bagQueue = v8;

      v10 = [v5 bag];
      bag = v7->_bag;
      v7->_bag = v10;

      if (v7->_bag)
      {
        v7->_bagFetchingOver = 1;
      }

      else
      {
        v13 = dispatch_semaphore_create(0);
        bagSem = v7->_bagSem;
        v7->_bagSem = v13;
      }

      objc_storeStrong(&v7->_session, a3);
      [v5 setDelegate:v7];
    }

    else
    {
      v12 = v6->_bag;
      v6->_bag = 0;

      v7->_bagFetchingOver = 1;
    }
  }

  return v7;
}

- (id)bag
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000020D8;
  v22 = sub_1000020E8;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  bagQueue = self->_bagQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000020F0;
  block[3] = &unk_1000186D0;
  block[4] = self;
  block[5] = &v18;
  block[6] = &v14;
  dispatch_sync(bagQueue, block);
  if ((v15[3] & 1) == 0)
  {
    bagSem = self->_bagSem;
    v5 = dispatch_time(0, 2000000000);
    v6 = dispatch_semaphore_wait(bagSem, v5);
    v7 = v6 == 0;
    if (v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000B494();
    }

    v8 = self->_bagQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100002138;
    v11[3] = &unk_100018738;
    v11[4] = self;
    v11[5] = &v18;
    v12 = v7;
    dispatch_sync(v8, v11);
  }

  v9 = v19[5];
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v9;
}

- (void)session:(id)a3 bag:(id)a4 didLoadWithError:(id)a5
{
  v6 = a4;
  v7 = self->_bagSem;
  if (v7)
  {
    bagQueue = self->_bagQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000022D4;
    block[3] = &unk_100018760;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(bagQueue, block);
  }
}

- (BOOL)parsecEnabled
{
  if (!self->_session)
  {
    return 0;
  }

  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.spotlightui"];
  v4 = [v3 objectForKey:@"SBSearchDisabledDomains"];
  v5 = [v4 containsObject:@"DOMAIN_PARSEC"];

  if (v5)
  {
    v6 = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Parsec disabled from system setting, network calls will be disabled", v12, 2u);
      v6 = 0;
    }

    goto LABEL_14;
  }

  v8 = [(DDLookupQuery *)self bag];
  v6 = [v8 isEnabled];
  if ((v6 & 1) == 0)
  {
    v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v9)
      {
        v14 = 0;
        v10 = "Parsec disabled from parsec bag, network calls will be disabled";
        v11 = &v14;
LABEL_12:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      }
    }

    else if (v9)
    {
      *buf = 0;
      v10 = "Parsec disabled because the bag couldn't be fetched, network calls will be disabled";
      v11 = buf;
      goto LABEL_12;
    }
  }

LABEL_14:
  return v6;
}

- (id)_rankFeedbackWithLocalSections:(id)a3 remoteSections:(id)a4 footerSection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSDate date];
  if (![v9 count])
  {
    goto LABEL_6;
  }

  v12 = [v9 firstObject];
  v13 = [v12 results];
  v14 = [v13 firstObject];
  v15 = [v14 placement];

  if (v15 != 1)
  {
LABEL_6:
    v17 = &__NSArray0__struct;
    if (![v8 count])
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v16 = [v9 firstObject];
  v60 = v16;
  v17 = [NSArray arrayWithObjects:&v60 count:1];

  if ([v9 count] == 1)
  {

    v9 = 0;
    if (![v8 count])
    {
      goto LABEL_8;
    }

LABEL_7:
    v18 = [v17 arrayByAddingObjectsFromArray:v8];

    v17 = v18;
    goto LABEL_8;
  }

  v40 = [v9 subarrayWithRange:{1, objc_msgSend(v9, "count") - 1}];

  v9 = v40;
  if ([v8 count])
  {
    goto LABEL_7;
  }

LABEL_8:
  if ([v9 count])
  {
    v19 = [v17 arrayByAddingObjectsFromArray:v9];

    v17 = v19;
  }

  v44 = v8;
  v42 = self;
  v43 = v10;
  if (v10)
  {
    if (![v17 count])
    {
      v20 = DDLocalizedString();
      [v10 setTitle:v20];
    }

    v21 = [v17 arrayByAddingObject:v10];

    v17 = v21;
  }

  [v11 timeIntervalSinceNow];
  v23 = v22;
  v47 = +[NSMutableArray array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v24 = v17;
  v48 = [v24 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v48)
  {
    v25 = 0;
    obj = v24;
    v46 = *v55;
    do
    {
      for (i = 0; i != v48; i = i + 1)
      {
        if (*v55 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v54 + 1) + 8 * i);
        v29 = +[NSMutableArray array];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v49 = v28;
        v30 = [v28 results];
        v31 = [v30 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = 0;
          v34 = *v51;
          do
          {
            for (j = 0; j != v32; j = j + 1)
            {
              if (*v51 != v34)
              {
                objc_enumerationMutation(v30);
              }

              v36 = [[SFResultRankingFeedback alloc] initWithResult:*(*(&v50 + 1) + 8 * j) hiddenResults:0 duplicateResults:0 localResultPosition:v33++];
              [v29 addObject:v36];
            }

            v32 = [v30 countByEnumeratingWithState:&v50 objects:v58 count:16];
          }

          while (v32);
        }

        v27 = [[SFSectionRankingFeedback alloc] initWithResults:v29 section:v49 localSectionPosition:v25 personalizationScore:0.0];
        [v47 addObject:v27];
        ++v25;
      }

      v24 = obj;
      v48 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v48);
  }

  v37 = [[SFRankingFeedback alloc] initWithSections:v47 blendingDuration:-v23];
  v38 = [(DDLookupQuery *)v42 feedbackListener];
  [v38 didRankSections:v37];

  return v24;
}

- (void)sectionsForString:(id)a3 useNetwork:(BOOL)a4 clientId:(id)a5 queryId:(unint64_t)a6 selectionType:(int64_t)a7 domain:(id)a8 range:(_NSRange)a9 scale:(double)a10 proxy:(id)a11 handler:(id)a12
{
  v16 = a4;
  v18 = a3;
  v61 = a5;
  v19 = a8;
  v62 = a11;
  v20 = a12;
  [v18 substringWithRange:{a9.location, a9.length}];
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = sub_1000020D8;
  v21 = v104 = sub_1000020E8;
  v105 = v21;
  if ([v101[5] containsString:@""])
  {
    v22 = v19;
    v99 = 0;
    v23 = [NSRegularExpression regularExpressionWithPattern:@"[\\p{Letter}&&\\p{script=hebrew}]()[\\p{Letter}&&\\p{script=hebrew}]" options:0 error:&v99];
    v24 = v99;
    v25 = v101[5];
    v26 = [v25 length];
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_100003478;
    v98[3] = &unk_100018788;
    v98[4] = &v100;
    [v23 enumerateMatchesInString:v25 options:0 range:0 usingBlock:{v26, v98}];

    v19 = v22;
  }

  v27 = [v101[5] stringByReplacingOccurrencesOfString:@"׳" withString:@"'"];
  v28 = v101[5];
  v101[5] = v27;

  if ([v101[5] hasSuffix:{@", "}] && objc_msgSend(v101[5], "length") >= 2)
  {
    v29 = [v101[5] substringToIndex:{objc_msgSend(v101[5], "length") - 1}];
    v30 = v101[5];
    v101[5] = v29;
  }

  if ([v101[5] hasSuffix:@"."])
  {
    v31 = [v101[5] length];
    if ((v31 & 0xFFFFFFFFFFFFFFFELL) == 2 || v31 >= 4 && (v34 = v31, v35 = [v101[5] characterAtIndex:v31 - 3], v31 = v34, v35 != 46))
    {
      v32 = [v101[5] substringToIndex:v31 - 1];
      v33 = v101[5];
      v101[5] = v32;
    }
  }

  if ([v101[5] length] >= 3 && objc_msgSend(v101[5], "characterAtIndex:", 0) == 8220 && objc_msgSend(v101[5], "characterAtIndex:", objc_msgSend(v101[5], "length") - 1) == 8221)
  {
    v36 = [v101[5] substringWithRange:{1, objc_msgSend(v101[5], "length") - 2}];
    v37 = v101[5];
    v101[5] = v36;
  }

  if ([v101[5] length] >= 3 && objc_msgSend(v101[5], "hasSuffix:", @"'s"))
  {
    v38 = [v101[5] substringToIndex:{objc_msgSend(v101[5], "length") - 2}];
    v39 = v101[5];
    v101[5] = v38;
  }

  v40 = v101[5];

  if ([v40 length])
  {
    if (qword_10001FA50 == -1)
    {
      if (v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_10000B538();
      if (v16)
      {
LABEL_21:
        v41 = v19;
        group = dispatch_group_create();
        v96[0] = 0;
        v96[1] = v96;
        v96[2] = 0x3032000000;
        v96[3] = sub_1000020D8;
        v96[4] = sub_1000020E8;
        v97 = 0;
        v94[0] = 0;
        v94[1] = v94;
        v94[2] = 0x2020000000;
        v95 = 0;
        if (a7 != 2)
        {
          v42 = qword_10001FA48;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000353C;
          block[3] = &unk_1000187D0;
          v92 = v96;
          v93 = a6;
          v90 = v40;
          v91 = self;
          dispatch_group_async(group, v42, block);
        }

        v43 = [(DDLookupQuery *)self bag];
        v44 = [v43 searchRenderTimeout];
        [v44 floatValue];
        v46 = v45;

        if (v46 > 0.0)
        {
          v47 = dispatch_time(0, (v46 * 1000000.0));
          v43 = dispatch_get_global_queue(17, 0);
          v81[0] = _NSConcreteStackBlock;
          v81[1] = 3221225472;
          v81[2] = sub_100003688;
          v81[3] = &unk_100018820;
          v86 = v94;
          v87 = v96;
          v82 = group;
          v83 = self;
          v84 = v40;
          v88 = a6;
          v85 = v20;
          dispatch_after(v47, v43, v81);
        }

        if (v62)
        {
          v48 = [(PARSession *)self->_session configuration];
          v49 = [v48 identifier];
          v50 = [(PARSession *)self->_session configuration];
          v51 = [v50 userAgent];
          v74[0] = _NSConcreteStackBlock;
          v74[1] = 3221225472;
          v74[2] = sub_1000038D8;
          v74[3] = &unk_100018870;
          v74[4] = self;
          v75 = group;
          v78 = v94;
          v79 = v96;
          v76 = v40;
          v80 = a6;
          v77 = v20;
          [v62 performClientTextQueryWithTerm:v76 queryId:a6 sessionId:v49 userAgent:v51 reply:v74];

LABEL_38:
          _Block_object_dispose(v94, 8);
          _Block_object_dispose(v96, 8);

          v19 = v58;
LABEL_41:

          goto LABEL_42;
        }

        v52 = v61;
        if (!v61)
        {
          v43 = +[NSBundle mainBundle];
          v52 = [v43 bundleIdentifier];
        }

        v53 = [PARRequest lookupRequestWithString:v40 queryContext:v18 domain:v41 lookupSelectionType:a7 appBundleId:v52 queryId:a6];
        if (v61)
        {
          v54 = a10;
          if (a10 > 0.0)
          {
            goto LABEL_35;
          }
        }

        else
        {

          v54 = a10;
          if (a10 > 0.0)
          {
LABEL_35:
            [v53 setScale:v54];
            if (a10 <= 0.0)
            {
            }

            session = self->_session;
            v67[0] = _NSConcreteStackBlock;
            v67[1] = 3221225472;
            v67[2] = sub_100003B10;
            v67[3] = &unk_100018898;
            v67[4] = self;
            v68 = group;
            v71 = v94;
            v72 = v96;
            v69 = v40;
            v73 = a6;
            v70 = v20;
            v56 = [(PARSession *)session taskWithRequest:v53 completion:v67];
            [v56 resume];

            goto LABEL_38;
          }
        }

        v43 = +[UIScreen mainScreen];
        [v43 scale];
        goto LABEL_35;
      }
    }

    v57 = qword_10001FA48;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100003D5C;
    v63[3] = &unk_1000188E8;
    v64 = v40;
    v66 = a6;
    v65 = v20;
    dispatch_async(v57, v63);

    v41 = v64;
    goto LABEL_41;
  }

  (*(v20 + 2))(v20, 0, 0);
LABEL_42:
  _Block_object_dispose(&v100, 8);
}

+ (id)dictionarySectionForString:(id)a3 queryId:(unint64_t)a4
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = [[DDSearchResultDictionarySection alloc] initWithSearchString:v5 queryId:a4];
    v7 = [(DDSearchResultDictionarySection *)v6 results];
    if ([v7 count])
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)footerSectionForString:(id)a3 queryId:(unint64_t)a4
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = [[DDSearchResultFooterSection alloc] initWithQuery:v5 queryId:a4];

    v7 = v6;
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

@end