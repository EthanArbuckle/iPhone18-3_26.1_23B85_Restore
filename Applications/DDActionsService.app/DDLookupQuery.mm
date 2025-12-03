@interface DDLookupQuery
+ (id)dictionarySectionForString:(id)string queryId:(unint64_t)id;
+ (id)footerSectionForString:(id)string queryId:(unint64_t)id;
+ (id)queryWithQuery:(id)query;
+ (id)queryWithoutNetwork;
- (BOOL)parsecEnabled;
- (DDLookupQuery)initWithSession:(id)session;
- (id)_rankFeedbackWithLocalSections:(id)sections remoteSections:(id)remoteSections footerSection:(id)section;
- (id)bag;
- (void)sectionsForString:(id)string useNetwork:(BOOL)network clientId:(id)id queryId:(unint64_t)queryId selectionType:(int64_t)type domain:(id)domain range:(_NSRange)range scale:(double)self0 proxy:(id)self1 handler:(id)self2;
- (void)session:(id)session bag:(id)bag didLoadWithError:(id)error;
@end

@implementation DDLookupQuery

+ (id)queryWithQuery:(id)query
{
  queryCopy = query;
  v5 = queryCopy;
  if (queryCopy)
  {
    userAgent = [queryCopy userAgent];
    identifier = [v5 identifier];
  }

  else
  {
    v8 = [NSBundle bundleForClass:self];
    v9 = [v8 objectForInfoDictionaryKey:kCFBundleVersionKey];

    if (![(__CFString *)v9 length])
    {

      v9 = @"1.0";
    }

    userAgent = [NSString stringWithFormat:@"%@/%@", kPARLookupClient, v9];

    identifier = @"com.apple.lookup";
  }

  v10 = [[PARSessionConfiguration alloc] initWithId:identifier userAgent:userAgent];
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

- (DDLookupQuery)initWithSession:(id)session
{
  sessionCopy = session;
  v16.receiver = self;
  v16.super_class = DDLookupQuery;
  v6 = [(DDLookupQuery *)&v16 init];
  v7 = v6;
  if (v6)
  {
    if (sessionCopy)
    {
      v8 = dispatch_queue_create("DDLookupQuery.bag", 0);
      bagQueue = v7->_bagQueue;
      v7->_bagQueue = v8;

      v10 = [sessionCopy bag];
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

      objc_storeStrong(&v7->_session, session);
      [sessionCopy setDelegate:v7];
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

- (void)session:(id)session bag:(id)bag didLoadWithError:(id)error
{
  bagCopy = bag;
  v7 = self->_bagSem;
  if (v7)
  {
    bagQueue = self->_bagQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000022D4;
    block[3] = &unk_100018760;
    block[4] = self;
    v10 = bagCopy;
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
    isEnabled = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Parsec disabled from system setting, network calls will be disabled", v12, 2u);
      isEnabled = 0;
    }

    goto LABEL_14;
  }

  v8 = [(DDLookupQuery *)self bag];
  isEnabled = [v8 isEnabled];
  if ((isEnabled & 1) == 0)
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
  return isEnabled;
}

- (id)_rankFeedbackWithLocalSections:(id)sections remoteSections:(id)remoteSections footerSection:(id)section
{
  sectionsCopy = sections;
  remoteSectionsCopy = remoteSections;
  sectionCopy = section;
  v11 = +[NSDate date];
  if (![remoteSectionsCopy count])
  {
    goto LABEL_6;
  }

  firstObject = [remoteSectionsCopy firstObject];
  results = [firstObject results];
  firstObject2 = [results firstObject];
  placement = [firstObject2 placement];

  if (placement != 1)
  {
LABEL_6:
    v17 = &__NSArray0__struct;
    if (![sectionsCopy count])
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  firstObject3 = [remoteSectionsCopy firstObject];
  v60 = firstObject3;
  v17 = [NSArray arrayWithObjects:&v60 count:1];

  if ([remoteSectionsCopy count] == 1)
  {

    remoteSectionsCopy = 0;
    if (![sectionsCopy count])
    {
      goto LABEL_8;
    }

LABEL_7:
    v18 = [v17 arrayByAddingObjectsFromArray:sectionsCopy];

    v17 = v18;
    goto LABEL_8;
  }

  v40 = [remoteSectionsCopy subarrayWithRange:{1, objc_msgSend(remoteSectionsCopy, "count") - 1}];

  remoteSectionsCopy = v40;
  if ([sectionsCopy count])
  {
    goto LABEL_7;
  }

LABEL_8:
  if ([remoteSectionsCopy count])
  {
    v19 = [v17 arrayByAddingObjectsFromArray:remoteSectionsCopy];

    v17 = v19;
  }

  v44 = sectionsCopy;
  selfCopy = self;
  v43 = sectionCopy;
  if (sectionCopy)
  {
    if (![v17 count])
    {
      v20 = DDLocalizedString();
      [sectionCopy setTitle:v20];
    }

    v21 = [v17 arrayByAddingObject:sectionCopy];

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
        results2 = [v28 results];
        v31 = [results2 countByEnumeratingWithState:&v50 objects:v58 count:16];
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
                objc_enumerationMutation(results2);
              }

              v36 = [[SFResultRankingFeedback alloc] initWithResult:*(*(&v50 + 1) + 8 * j) hiddenResults:0 duplicateResults:0 localResultPosition:v33++];
              [v29 addObject:v36];
            }

            v32 = [results2 countByEnumeratingWithState:&v50 objects:v58 count:16];
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
  feedbackListener = [(DDLookupQuery *)selfCopy feedbackListener];
  [feedbackListener didRankSections:v37];

  return v24;
}

- (void)sectionsForString:(id)string useNetwork:(BOOL)network clientId:(id)id queryId:(unint64_t)queryId selectionType:(int64_t)type domain:(id)domain range:(_NSRange)range scale:(double)self0 proxy:(id)self1 handler:(id)self2
{
  networkCopy = network;
  stringCopy = string;
  idCopy = id;
  domainCopy = domain;
  proxyCopy = proxy;
  handlerCopy = handler;
  [stringCopy substringWithRange:{range.location, range.length}];
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = sub_1000020D8;
  v21 = v104 = sub_1000020E8;
  v105 = v21;
  if ([v101[5] containsString:@""])
  {
    v22 = domainCopy;
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

    domainCopy = v22;
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
      if (networkCopy)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_10000B538();
      if (networkCopy)
      {
LABEL_21:
        v41 = domainCopy;
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
        if (type != 2)
        {
          v42 = qword_10001FA48;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000353C;
          block[3] = &unk_1000187D0;
          v92 = v96;
          queryIdCopy = queryId;
          v90 = v40;
          selfCopy = self;
          dispatch_group_async(group, v42, block);
        }

        v43 = [(DDLookupQuery *)self bag];
        searchRenderTimeout = [v43 searchRenderTimeout];
        [searchRenderTimeout floatValue];
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
          selfCopy2 = self;
          v84 = v40;
          queryIdCopy2 = queryId;
          v85 = handlerCopy;
          dispatch_after(v47, v43, v81);
        }

        if (proxyCopy)
        {
          configuration = [(PARSession *)self->_session configuration];
          identifier = [configuration identifier];
          configuration2 = [(PARSession *)self->_session configuration];
          userAgent = [configuration2 userAgent];
          v74[0] = _NSConcreteStackBlock;
          v74[1] = 3221225472;
          v74[2] = sub_1000038D8;
          v74[3] = &unk_100018870;
          v74[4] = self;
          v75 = group;
          v78 = v94;
          v79 = v96;
          v76 = v40;
          queryIdCopy3 = queryId;
          v77 = handlerCopy;
          [proxyCopy performClientTextQueryWithTerm:v76 queryId:queryId sessionId:identifier userAgent:userAgent reply:v74];

LABEL_38:
          _Block_object_dispose(v94, 8);
          _Block_object_dispose(v96, 8);

          domainCopy = v58;
LABEL_41:

          goto LABEL_42;
        }

        bundleIdentifier = idCopy;
        if (!idCopy)
        {
          v43 = +[NSBundle mainBundle];
          bundleIdentifier = [v43 bundleIdentifier];
        }

        v53 = [PARRequest lookupRequestWithString:v40 queryContext:stringCopy domain:v41 lookupSelectionType:type appBundleId:bundleIdentifier queryId:queryId];
        if (idCopy)
        {
          scaleCopy2 = scale;
          if (scale > 0.0)
          {
            goto LABEL_35;
          }
        }

        else
        {

          scaleCopy2 = scale;
          if (scale > 0.0)
          {
LABEL_35:
            [v53 setScale:scaleCopy2];
            if (scale <= 0.0)
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
            queryIdCopy4 = queryId;
            v70 = handlerCopy;
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
    queryIdCopy5 = queryId;
    v65 = handlerCopy;
    dispatch_async(v57, v63);

    v41 = v64;
    goto LABEL_41;
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
LABEL_42:
  _Block_object_dispose(&v100, 8);
}

+ (id)dictionarySectionForString:(id)string queryId:(unint64_t)id
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v6 = [[DDSearchResultDictionarySection alloc] initWithSearchString:stringCopy queryId:id];
    results = [(DDSearchResultDictionarySection *)v6 results];
    if ([results count])
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

+ (id)footerSectionForString:(id)string queryId:(unint64_t)id
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v6 = [[DDSearchResultFooterSection alloc] initWithQuery:stringCopy queryId:id];

    v7 = v6;
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

@end