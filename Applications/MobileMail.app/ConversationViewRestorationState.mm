@interface ConversationViewRestorationState
+ (OS_os_log)signpostLog;
+ (id)_queryByRemovingSearchPredicate:(id)predicate messageRepository:(id)repository;
+ (id)loadFromDictionary:(id)dictionary daemonInterface:(id)interface;
+ (id)loadFromDictionary:(id)dictionary usingRepository:(id)repository;
+ (id)log;
+ (id)stateWithBuilder:(id)builder;
- (id)_beginLoadingWithQuery:(id)query itemID:(id)d usingRepository:(id)repository;
- (id)dictionaryRepresentation;
- (unint64_t)signpostID;
- (void)_logSignpostForCollectionLoadBegin;
- (void)_logSignpostForCollectionLoadEndFindingItemID:(BOOL)d;
- (void)_logSignpostForReferenceItemLoadCompleteWithSuccess:(BOOL)success;
- (void)_logSignpostForReferenceItemRequest;
- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after;
- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before;
- (void)collectionDidFinishInitialLoad:(id)load;
@end

@implementation ConversationViewRestorationState

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100095B18;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DCE50 != -1)
  {
    dispatch_once(&qword_1006DCE50, block);
  }

  v2 = qword_1006DCE48;

  return v2;
}

+ (OS_os_log)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100095C3C;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DCE60 != -1)
  {
    dispatch_once(&qword_1006DCE60, block);
  }

  v2 = qword_1006DCE58;

  return v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

+ (id)stateWithBuilder:(id)builder
{
  builderCopy = builder;
  v5 = objc_alloc_init(self);
  builderCopy[2](builderCopy, v5);
  referenceMessageListItem = [v5 referenceMessageListItem];
  if (referenceMessageListItem)
  {
    referenceMessageList = [v5 referenceMessageList];

    if (referenceMessageList)
    {
      disabledMarkAsReadMessageItemIDs = [v5 disabledMarkAsReadMessageItemIDs];
      v9 = disabledMarkAsReadMessageItemIDs;
      if (!disabledMarkAsReadMessageItemIDs)
      {
        v9 = +[NSSet set];
      }

      [v5 setDisabledMarkAsReadMessageItemIDs:v9];
      if (!disabledMarkAsReadMessageItemIDs)
      {
      }

      expansionTrackerState = [v5 expansionTrackerState];
      v11 = expansionTrackerState;
      if (!expansionTrackerState)
      {
        v11 = +[NSDictionary dictionary];
      }

      [v5 setExpansionTrackerState:v11];
      if (!expansionTrackerState)
      {
      }

      expandedContentItemIDs = [v5 expandedContentItemIDs];
      v13 = expandedContentItemIDs;
      if (!expandedContentItemIDs)
      {
        v13 = +[NSSet set];
      }

      [v5 setExpandedContentItemIDs:v13];
      if (!expandedContentItemIDs)
      {
      }

      scrolledItemID = [v5 scrolledItemID];
      if (scrolledItemID)
      {
        scrolledItemOffset = [v5 scrolledItemOffset];
      }

      else
      {
        scrolledItemOffset = 0;
      }

      [v5 setScrolledItemOffset:scrolledItemOffset];
      if (scrolledItemID)
      {
      }

      referenceMessageList = v5;
    }
  }

  else
  {
    referenceMessageList = 0;
  }

  return referenceMessageList;
}

+ (id)loadFromDictionary:(id)dictionary daemonInterface:(id)interface
{
  dictionaryCopy = dictionary;
  messageRepository = [interface messageRepository];
  v8 = [self loadFromDictionary:dictionaryCopy usingRepository:messageRepository];

  return v8;
}

+ (id)loadFromDictionary:(id)dictionary usingRepository:(id)repository
{
  dictionaryCopy = dictionary;
  repositoryCopy = repository;
  v7 = +[ConversationViewRestorationState log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dictionaryCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Beginning load of state from dictionary: %@", &buf, 0xCu);
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"ConversationViewStateVersion"];
  v9 = v8;
  if (v8)
  {
    integerValue = [v8 integerValue];
    if (integerValue > 0)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v73 = 0x3032000000;
      v74 = sub_1000969A0;
      v75 = sub_1000969B0;
      v76 = 0;
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_1000969B8;
      v57[3] = &unk_10064E4D8;
      v11 = dictionaryCopy;
      v58 = v11;
      p_buf = &buf;
      v12 = objc_retainBlock(v57);
      v13 = objc_opt_class();
      v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
      v55 = (v12[2])(v12, @"ConversationViewStateReferenceItemID", v14);

      if (v55)
      {
        v15 = [NSSet setWithObjects:objc_opt_class(), 0];
        v16 = (v12[2])(v12, @"ConversationViewStateMessageListQuery", v15);

        v17 = [self _queryByRemovingSearchPredicate:v16 messageRepository:repositoryCopy];

        if (v17)
        {
          if ([v17 isValid])
          {
            v54 = objc_alloc_init(ConversationViewRestorationState);
            v18 = [v11 objectForKeyedSubscript:@"ConversationViewStateShowAsConversation"];
            bOOLValue = [v18 BOOLValue];

            [(ConversationViewRestorationState *)v54 setShowAsConversation:bOOLValue];
            v19 = objc_opt_class();
            v20 = objc_opt_class();
            v21 = objc_opt_class();
            v22 = [NSSet setWithObjects:v19, v20, v21, objc_opt_class(), 0];
            v23 = (v12[2])(v12, @"ConversationViewStateExpansionTrackerState", v22);
            v24 = v23;
            if (!v23)
            {
              v24 = +[NSDictionary dictionary];
            }

            [(ConversationViewRestorationState *)v54 setExpansionTrackerState:v24];
            if (!v23)
            {
            }

            v25 = objc_opt_class();
            v26 = objc_opt_class();
            v27 = [NSSet setWithObjects:v25, v26, objc_opt_class(), 0];
            v28 = (v12[2])(v12, @"ConversationViewStateDisableMarkAsReadIDs", v27);
            v29 = v28;
            if (!v28)
            {
              v29 = +[NSSet set];
            }

            [(ConversationViewRestorationState *)v54 setDisabledMarkAsReadMessageItemIDs:v29];
            if (!v28)
            {
            }

            v30 = objc_opt_class();
            v31 = objc_opt_class();
            v32 = [NSSet setWithObjects:v30, v31, objc_opt_class(), 0];
            v33 = (v12[2])(v12, @"ConversationViewStatekExpandedContentIDs", v32);
            v34 = v33;
            if (!v33)
            {
              v34 = +[NSSet set];
            }

            [(ConversationViewRestorationState *)v54 setExpandedContentItemIDs:v34];
            if (!v33)
            {
            }

            v35 = objc_opt_class();
            v36 = [NSSet setWithObjects:v35, objc_opt_class(), 0];
            v37 = (v12[2])(v12, @"ConversationViewStateScrolledItemID", v36);
            [(ConversationViewRestorationState *)v54 setScrolledItemID:v37];

            scrolledItemID = [(ConversationViewRestorationState *)v54 scrolledItemID];

            if (scrolledItemID)
            {
              v39 = [NSSet setWithObjects:objc_opt_class(), 0];
              v40 = (v12[2])(v12, @"ConversationViewStateScrolledOffsetID", v39);
              [(ConversationViewRestorationState *)v54 setScrolledItemOffset:v40];
            }

            scrolledItemID2 = [(ConversationViewRestorationState *)v54 scrolledItemID];

            expansionTrackerState = [(ConversationViewRestorationState *)v54 expansionTrackerState];
            v43 = [expansionTrackerState count];

            disabledMarkAsReadMessageItemIDs = [(ConversationViewRestorationState *)v54 disabledMarkAsReadMessageItemIDs];
            v45 = [disabledMarkAsReadMessageItemIDs count];

            v46 = +[ConversationViewRestorationState log];
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              *v60 = 138413570;
              v61 = v55;
              v62 = 2112;
              v63 = v17;
              v64 = 1024;
              v65 = bOOLValue;
              v66 = 1024;
              v67 = scrolledItemID2 != 0;
              v68 = 1024;
              v69 = v43 != 0;
              v70 = 1024;
              v71 = v45 != 0;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Decoded dictionary representation: referenceItemID=%@ messageListQuery=%@ showAsConversation=%{BOOL}d hasScrolledItem=%{BOOL}d hasExpandedItems=%{BOOL}d hasDisabledMarkAsReadItems=%{BOOL}d", v60, 0x2Eu);
            }

            v47 = v54;
            v48 = [(ConversationViewRestorationState *)v54 _beginLoadingWithQuery:v17 itemID:v55 usingRepository:repositoryCopy];
          }

          else
          {
            v47 = +[NSError mf_restorationQueryInvalid];
            v48 = [EFFuture futureWithError:v47];
          }
        }

        else
        {
          v47 = [NSError mf_invalidRestorationDataErrorWithUnderlyingError:*(*(&buf + 1) + 40)];
          v48 = [EFFuture futureWithError:v47];
        }

        v51 = v48;
      }

      else
      {
        v17 = [NSError mf_invalidRestorationDataErrorWithUnderlyingError:*(*(&buf + 1) + 40)];
        v51 = [EFFuture futureWithError:v17];
      }

      _Block_object_dispose(&buf, 8);
      goto LABEL_34;
    }
  }

  else
  {
    integerValue = 0;
  }

  v49 = +[ConversationViewRestorationState log];
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    sub_10048555C(integerValue, v49);
  }

  v50 = [NSError mf_invalidRestorationDataErrorWithUnderlyingError:0];
  v51 = [EFFuture futureWithError:v50];

LABEL_34:

  return v51;
}

+ (id)_queryByRemovingSearchPredicate:(id)predicate messageRepository:(id)repository
{
  predicateCopy = predicate;
  repositoryCopy = repository;
  if (([predicateCopy queryOptions] & 0x20) != 0)
  {
    predicate = [predicateCopy predicate];
    mailboxRepository = [repositoryCopy mailboxRepository];
    v10 = [EMMessageListItemPredicates mailboxScopeForPredicate:predicate withMailboxTypeResolver:mailboxRepository];

    v11 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v10];
    v7 = [predicateCopy queryWithPredicate:v11];
  }

  else
  {
    v7 = predicateCopy;
  }

  return v7;
}

- (id)_beginLoadingWithQuery:(id)query itemID:(id)d usingRepository:(id)repository
{
  queryCopy = query;
  dCopy = d;
  repositoryCopy = repository;
  [(ConversationViewRestorationState *)self setExpectedReferenceItemID:dCopy];
  [(ConversationViewRestorationState *)self _logSignpostForCollectionLoadBegin];
  v10 = +[ConversationViewRestorationState log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v31 = dCopy;
    v32 = 2114;
    v33 = repositoryCopy;
    v34 = 2114;
    v35 = queryCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Starting load of message list using itemID: %{public}@, repository: %{public}@, query: %{public}@", buf, 0x20u);
  }

  v11 = +[EFPromise promise];
  [(ConversationViewRestorationState *)self setCollectionDidLoadReferenceIDPromise:v11];

  v12 = [[EMMessageList alloc] initWithQuery:queryCopy repository:repositoryCopy];
  [v12 beginObserving:self];
  objc_initWeak(buf, self);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10009711C;
  v27[3] = &unk_10064CC78;
  objc_copyWeak(&v29, buf);
  v13 = v12;
  v28 = v13;
  v14 = [EFCancelationToken tokenWithCancelationBlock:v27];
  [(ConversationViewRestorationState *)self setObservationCancelable:v14];

  collectionDidLoadReferenceIDPromise = [(ConversationViewRestorationState *)self collectionDidLoadReferenceIDPromise];
  future = [collectionDidLoadReferenceIDPromise future];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100097164;
  v25[3] = &unk_10064E500;
  v25[4] = self;
  v17 = dCopy;
  v26 = v17;
  v18 = [future then:v25];
  v19 = [v18 recover:&stru_10064E540];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000973EC;
  v24[3] = &unk_10064E568;
  v24[4] = self;
  v20 = [v19 then:v24];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10009750C;
  v23[3] = &unk_10064D028;
  v23[4] = self;
  [v20 addFailureBlock:v23];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);

  return v20;
}

- (id)dictionaryRepresentation
{
  referenceMessageListItem = [(ConversationViewRestorationState *)self referenceMessageListItem];
  itemID = [referenceMessageListItem itemID];

  referenceMessageList = [(ConversationViewRestorationState *)self referenceMessageList];
  query = [referenceMessageList query];

  v7 = 0;
  if (itemID && query)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000979B8;
    v19[3] = &unk_10064E590;
    v8 = objc_opt_new();
    v20 = v8;
    v9 = objc_retainBlock(v19);
    if (v9[2])(v9, itemID, @"ConversationViewStateReferenceItemID") && ((v9[2])(v9, query, @"ConversationViewStateMessageListQuery"))
    {
      disabledMarkAsReadMessageItemIDs = [(ConversationViewRestorationState *)self disabledMarkAsReadMessageItemIDs];
      (v9[2])(v9, disabledMarkAsReadMessageItemIDs, @"ConversationViewStateDisableMarkAsReadIDs");

      expansionTrackerState = [(ConversationViewRestorationState *)self expansionTrackerState];
      (v9[2])(v9, expansionTrackerState, @"ConversationViewStateExpansionTrackerState");

      expandedContentItemIDs = [(ConversationViewRestorationState *)self expandedContentItemIDs];
      (v9[2])(v9, expandedContentItemIDs, @"ConversationViewStatekExpandedContentIDs");

      scrolledItemID = [(ConversationViewRestorationState *)self scrolledItemID];

      if (scrolledItemID)
      {
        scrolledItemID2 = [(ConversationViewRestorationState *)self scrolledItemID];
        (v9[2])(v9, scrolledItemID2, @"ConversationViewStateScrolledItemID");

        scrolledItemOffset = [(ConversationViewRestorationState *)self scrolledItemOffset];

        if (scrolledItemOffset)
        {
          scrolledItemOffset2 = [(ConversationViewRestorationState *)self scrolledItemOffset];
          (v9[2])(v9, scrolledItemOffset2, @"ConversationViewStateScrolledOffsetID");
        }
      }

      v17 = [NSNumber numberWithBool:[(ConversationViewRestorationState *)self showAsConversation]];
      [v8 setObject:v17 forKeyedSubscript:@"ConversationViewStateShowAsConversation"];

      [v8 setObject:&off_100673EF8 forKeyedSubscript:@"ConversationViewStateVersion"];
      v7 = [v8 copy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)_logSignpostForCollectionLoadBegin
{
  v3 = +[ConversationViewRestorationState signpostLog];
  signpostID = [(ConversationViewRestorationState *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    expectedReferenceItemID = [(ConversationViewRestorationState *)self expectedReferenceItemID];
    v6 = 138543362;
    v7 = expectedReferenceItemID;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "ConversationViewStateCollectionLoad", "ItemID=%{public}@", &v6, 0xCu);
  }
}

- (void)_logSignpostForCollectionLoadEndFindingItemID:(BOOL)d
{
  dCopy = d;
  v5 = +[ConversationViewRestorationState signpostLog];
  signpostID = [(ConversationViewRestorationState *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    expectedReferenceItemID = [(ConversationViewRestorationState *)self expectedReferenceItemID];
    v8[0] = 67240450;
    v8[1] = dCopy;
    v9 = 2114;
    v10 = expectedReferenceItemID;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, signpostID, "ConversationViewStateCollectionLoad", "DidFindItemID=%{public,signpost.telemetry:number1}u ItemID=%{public}@ enableTelemetry=YES ", v8, 0x12u);
  }
}

- (void)_logSignpostForReferenceItemRequest
{
  v3 = +[ConversationViewRestorationState signpostLog];
  signpostID = [(ConversationViewRestorationState *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    expectedReferenceItemID = [(ConversationViewRestorationState *)self expectedReferenceItemID];
    v6 = 138543362;
    v7 = expectedReferenceItemID;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "ConversationViewStateReferenceItemLoad", "ItemID=%{public}@", &v6, 0xCu);
  }
}

- (void)_logSignpostForReferenceItemLoadCompleteWithSuccess:(BOOL)success
{
  successCopy = success;
  v5 = +[ConversationViewRestorationState signpostLog];
  signpostID = [(ConversationViewRestorationState *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    expectedReferenceItemID = [(ConversationViewRestorationState *)self expectedReferenceItemID];
    v8[0] = 67240450;
    v8[1] = successCopy;
    v9 = 2114;
    v10 = expectedReferenceItemID;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, signpostID, "ConversationViewStateReferenceItemLoad", "Success=%{public,signpost.telemetry:number1}u ItemID=%{public}@ enableTelemetry=YES ", v8, 0x12u);
  }
}

- (void)collectionDidFinishInitialLoad:(id)load
{
  loadCopy = load;
  v5 = +[ConversationViewRestorationState log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    ef_publicDescription = [loadCopy ef_publicDescription];
    sub_1004857BC(ef_publicDescription, v8, v5);
  }

  collectionDidLoadReferenceIDPromise = [(ConversationViewRestorationState *)self collectionDidLoadReferenceIDPromise];
  [collectionDidLoadReferenceIDPromise finishWithResult:loadCopy];

  [(ConversationViewRestorationState *)self _logSignpostForCollectionLoadEndFindingItemID:0];
}

- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after
{
  collectionCopy = collection;
  dsCopy = ds;
  expectedReferenceItemID = [(ConversationViewRestorationState *)self expectedReferenceItemID];
  v10 = [dsCopy containsObject:expectedReferenceItemID];

  if (v10)
  {
    v11 = +[ConversationViewRestorationState log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100485814(v11);
    }

    collectionDidLoadReferenceIDPromise = [(ConversationViewRestorationState *)self collectionDidLoadReferenceIDPromise];
    [collectionDidLoadReferenceIDPromise finishWithResult:collectionCopy];

    [(ConversationViewRestorationState *)self _logSignpostForCollectionLoadEndFindingItemID:1];
  }
}

- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before
{
  collectionCopy = collection;
  dsCopy = ds;
  expectedReferenceItemID = [(ConversationViewRestorationState *)self expectedReferenceItemID];
  v10 = [dsCopy containsObject:expectedReferenceItemID];

  if (v10)
  {
    v11 = +[ConversationViewRestorationState log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100485814(v11);
    }

    collectionDidLoadReferenceIDPromise = [(ConversationViewRestorationState *)self collectionDidLoadReferenceIDPromise];
    [collectionDidLoadReferenceIDPromise finishWithResult:collectionCopy];

    [(ConversationViewRestorationState *)self _logSignpostForCollectionLoadEndFindingItemID:1];
  }
}

@end