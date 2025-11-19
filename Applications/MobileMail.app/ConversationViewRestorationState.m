@interface ConversationViewRestorationState
+ (OS_os_log)signpostLog;
+ (id)_queryByRemovingSearchPredicate:(id)a3 messageRepository:(id)a4;
+ (id)loadFromDictionary:(id)a3 daemonInterface:(id)a4;
+ (id)loadFromDictionary:(id)a3 usingRepository:(id)a4;
+ (id)log;
+ (id)stateWithBuilder:(id)a3;
- (id)_beginLoadingWithQuery:(id)a3 itemID:(id)a4 usingRepository:(id)a5;
- (id)dictionaryRepresentation;
- (unint64_t)signpostID;
- (void)_logSignpostForCollectionLoadBegin;
- (void)_logSignpostForCollectionLoadEndFindingItemID:(BOOL)a3;
- (void)_logSignpostForReferenceItemLoadCompleteWithSuccess:(BOOL)a3;
- (void)_logSignpostForReferenceItemRequest;
- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5;
- (void)collectionDidFinishInitialLoad:(id)a3;
@end

@implementation ConversationViewRestorationState

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100095B18;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
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
  block[4] = a1;
  if (qword_1006DCE60 != -1)
  {
    dispatch_once(&qword_1006DCE60, block);
  }

  v2 = qword_1006DCE58;

  return v2;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

+ (id)stateWithBuilder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v4[2](v4, v5);
  v6 = [v5 referenceMessageListItem];
  if (v6)
  {
    v7 = [v5 referenceMessageList];

    if (v7)
    {
      v8 = [v5 disabledMarkAsReadMessageItemIDs];
      v9 = v8;
      if (!v8)
      {
        v9 = +[NSSet set];
      }

      [v5 setDisabledMarkAsReadMessageItemIDs:v9];
      if (!v8)
      {
      }

      v10 = [v5 expansionTrackerState];
      v11 = v10;
      if (!v10)
      {
        v11 = +[NSDictionary dictionary];
      }

      [v5 setExpansionTrackerState:v11];
      if (!v10)
      {
      }

      v12 = [v5 expandedContentItemIDs];
      v13 = v12;
      if (!v12)
      {
        v13 = +[NSSet set];
      }

      [v5 setExpandedContentItemIDs:v13];
      if (!v12)
      {
      }

      v14 = [v5 scrolledItemID];
      if (v14)
      {
        v15 = [v5 scrolledItemOffset];
      }

      else
      {
        v15 = 0;
      }

      [v5 setScrolledItemOffset:v15];
      if (v14)
      {
      }

      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)loadFromDictionary:(id)a3 daemonInterface:(id)a4
{
  v6 = a3;
  v7 = [a4 messageRepository];
  v8 = [a1 loadFromDictionary:v6 usingRepository:v7];

  return v8;
}

+ (id)loadFromDictionary:(id)a3 usingRepository:(id)a4
{
  v6 = a3;
  v56 = a4;
  v7 = +[ConversationViewRestorationState log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Beginning load of state from dictionary: %@", &buf, 0xCu);
  }

  v8 = [v6 objectForKeyedSubscript:@"ConversationViewStateVersion"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 integerValue];
    if (v10 > 0)
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
      v11 = v6;
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

        v17 = [a1 _queryByRemovingSearchPredicate:v16 messageRepository:v56];

        if (v17)
        {
          if ([v17 isValid])
          {
            v54 = objc_alloc_init(ConversationViewRestorationState);
            v18 = [v11 objectForKeyedSubscript:@"ConversationViewStateShowAsConversation"];
            v53 = [v18 BOOLValue];

            [(ConversationViewRestorationState *)v54 setShowAsConversation:v53];
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

            v38 = [(ConversationViewRestorationState *)v54 scrolledItemID];

            if (v38)
            {
              v39 = [NSSet setWithObjects:objc_opt_class(), 0];
              v40 = (v12[2])(v12, @"ConversationViewStateScrolledOffsetID", v39);
              [(ConversationViewRestorationState *)v54 setScrolledItemOffset:v40];
            }

            v41 = [(ConversationViewRestorationState *)v54 scrolledItemID];

            v42 = [(ConversationViewRestorationState *)v54 expansionTrackerState];
            v43 = [v42 count];

            v44 = [(ConversationViewRestorationState *)v54 disabledMarkAsReadMessageItemIDs];
            v45 = [v44 count];

            v46 = +[ConversationViewRestorationState log];
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              *v60 = 138413570;
              v61 = v55;
              v62 = 2112;
              v63 = v17;
              v64 = 1024;
              v65 = v53;
              v66 = 1024;
              v67 = v41 != 0;
              v68 = 1024;
              v69 = v43 != 0;
              v70 = 1024;
              v71 = v45 != 0;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Decoded dictionary representation: referenceItemID=%@ messageListQuery=%@ showAsConversation=%{BOOL}d hasScrolledItem=%{BOOL}d hasExpandedItems=%{BOOL}d hasDisabledMarkAsReadItems=%{BOOL}d", v60, 0x2Eu);
            }

            v47 = v54;
            v48 = [(ConversationViewRestorationState *)v54 _beginLoadingWithQuery:v17 itemID:v55 usingRepository:v56];
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
    v10 = 0;
  }

  v49 = +[ConversationViewRestorationState log];
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    sub_10048555C(v10, v49);
  }

  v50 = [NSError mf_invalidRestorationDataErrorWithUnderlyingError:0];
  v51 = [EFFuture futureWithError:v50];

LABEL_34:

  return v51;
}

+ (id)_queryByRemovingSearchPredicate:(id)a3 messageRepository:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 queryOptions] & 0x20) != 0)
  {
    v8 = [v5 predicate];
    v9 = [v6 mailboxRepository];
    v10 = [EMMessageListItemPredicates mailboxScopeForPredicate:v8 withMailboxTypeResolver:v9];

    v11 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v10];
    v7 = [v5 queryWithPredicate:v11];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (id)_beginLoadingWithQuery:(id)a3 itemID:(id)a4 usingRepository:(id)a5
{
  v22 = a3;
  v8 = a4;
  v9 = a5;
  [(ConversationViewRestorationState *)self setExpectedReferenceItemID:v8];
  [(ConversationViewRestorationState *)self _logSignpostForCollectionLoadBegin];
  v10 = +[ConversationViewRestorationState log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v31 = v8;
    v32 = 2114;
    v33 = v9;
    v34 = 2114;
    v35 = v22;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Starting load of message list using itemID: %{public}@, repository: %{public}@, query: %{public}@", buf, 0x20u);
  }

  v11 = +[EFPromise promise];
  [(ConversationViewRestorationState *)self setCollectionDidLoadReferenceIDPromise:v11];

  v12 = [[EMMessageList alloc] initWithQuery:v22 repository:v9];
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

  v15 = [(ConversationViewRestorationState *)self collectionDidLoadReferenceIDPromise];
  v16 = [v15 future];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100097164;
  v25[3] = &unk_10064E500;
  v25[4] = self;
  v17 = v8;
  v26 = v17;
  v18 = [v16 then:v25];
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
  v3 = [(ConversationViewRestorationState *)self referenceMessageListItem];
  v4 = [v3 itemID];

  v5 = [(ConversationViewRestorationState *)self referenceMessageList];
  v6 = [v5 query];

  v7 = 0;
  if (v4 && v6)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000979B8;
    v19[3] = &unk_10064E590;
    v8 = objc_opt_new();
    v20 = v8;
    v9 = objc_retainBlock(v19);
    if (v9[2])(v9, v4, @"ConversationViewStateReferenceItemID") && ((v9[2])(v9, v6, @"ConversationViewStateMessageListQuery"))
    {
      v10 = [(ConversationViewRestorationState *)self disabledMarkAsReadMessageItemIDs];
      (v9[2])(v9, v10, @"ConversationViewStateDisableMarkAsReadIDs");

      v11 = [(ConversationViewRestorationState *)self expansionTrackerState];
      (v9[2])(v9, v11, @"ConversationViewStateExpansionTrackerState");

      v12 = [(ConversationViewRestorationState *)self expandedContentItemIDs];
      (v9[2])(v9, v12, @"ConversationViewStatekExpandedContentIDs");

      v13 = [(ConversationViewRestorationState *)self scrolledItemID];

      if (v13)
      {
        v14 = [(ConversationViewRestorationState *)self scrolledItemID];
        (v9[2])(v9, v14, @"ConversationViewStateScrolledItemID");

        v15 = [(ConversationViewRestorationState *)self scrolledItemOffset];

        if (v15)
        {
          v16 = [(ConversationViewRestorationState *)self scrolledItemOffset];
          (v9[2])(v9, v16, @"ConversationViewStateScrolledOffsetID");
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
  v4 = [(ConversationViewRestorationState *)self signpostID];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v5 = [(ConversationViewRestorationState *)self expectedReferenceItemID];
    v6 = 138543362;
    v7 = v5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ConversationViewStateCollectionLoad", "ItemID=%{public}@", &v6, 0xCu);
  }
}

- (void)_logSignpostForCollectionLoadEndFindingItemID:(BOOL)a3
{
  v3 = a3;
  v5 = +[ConversationViewRestorationState signpostLog];
  v6 = [(ConversationViewRestorationState *)self signpostID];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = [(ConversationViewRestorationState *)self expectedReferenceItemID];
    v8[0] = 67240450;
    v8[1] = v3;
    v9 = 2114;
    v10 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "ConversationViewStateCollectionLoad", "DidFindItemID=%{public,signpost.telemetry:number1}u ItemID=%{public}@ enableTelemetry=YES ", v8, 0x12u);
  }
}

- (void)_logSignpostForReferenceItemRequest
{
  v3 = +[ConversationViewRestorationState signpostLog];
  v4 = [(ConversationViewRestorationState *)self signpostID];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v5 = [(ConversationViewRestorationState *)self expectedReferenceItemID];
    v6 = 138543362;
    v7 = v5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ConversationViewStateReferenceItemLoad", "ItemID=%{public}@", &v6, 0xCu);
  }
}

- (void)_logSignpostForReferenceItemLoadCompleteWithSuccess:(BOOL)a3
{
  v3 = a3;
  v5 = +[ConversationViewRestorationState signpostLog];
  v6 = [(ConversationViewRestorationState *)self signpostID];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = [(ConversationViewRestorationState *)self expectedReferenceItemID];
    v8[0] = 67240450;
    v8[1] = v3;
    v9 = 2114;
    v10 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "ConversationViewStateReferenceItemLoad", "Success=%{public,signpost.telemetry:number1}u ItemID=%{public}@ enableTelemetry=YES ", v8, 0x12u);
  }
}

- (void)collectionDidFinishInitialLoad:(id)a3
{
  v4 = a3;
  v5 = +[ConversationViewRestorationState log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 ef_publicDescription];
    sub_1004857BC(v6, v8, v5);
  }

  v7 = [(ConversationViewRestorationState *)self collectionDidLoadReferenceIDPromise];
  [v7 finishWithResult:v4];

  [(ConversationViewRestorationState *)self _logSignpostForCollectionLoadEndFindingItemID:0];
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(ConversationViewRestorationState *)self expectedReferenceItemID];
  v10 = [v8 containsObject:v9];

  if (v10)
  {
    v11 = +[ConversationViewRestorationState log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100485814(v11);
    }

    v12 = [(ConversationViewRestorationState *)self collectionDidLoadReferenceIDPromise];
    [v12 finishWithResult:v7];

    [(ConversationViewRestorationState *)self _logSignpostForCollectionLoadEndFindingItemID:1];
  }
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(ConversationViewRestorationState *)self expectedReferenceItemID];
  v10 = [v8 containsObject:v9];

  if (v10)
  {
    v11 = +[ConversationViewRestorationState log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100485814(v11);
    }

    v12 = [(ConversationViewRestorationState *)self collectionDidLoadReferenceIDPromise];
    [v12 finishWithResult:v7];

    [(ConversationViewRestorationState *)self _logSignpostForCollectionLoadEndFindingItemID:1];
  }
}

@end