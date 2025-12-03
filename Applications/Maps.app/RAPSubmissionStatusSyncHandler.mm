@interface RAPSubmissionStatusSyncHandler
- (RAPSubmissionStatusSyncHandler)init;
- (void)_fetchUnresolvedRAPRecordsWithLimit:(unint64_t)limit offset:(int64_t)offset oldestDate:(id)date completion:(id)completion;
- (void)_updateMapsSyncRAPRecordWithIdentifiers:(id)identifiers toStatus:(signed __int16)status forceUpdate:(BOOL)update editBlock:(id)block completion:(id)completion;
- (void)_updateRAPStatusWithIdentifiers:(id)identifiers toStatus:(signed __int16)status forceUpdate:(BOOL)update extraEditBlock:(id)block completion:(id)completion;
- (void)fetchUnresolvedRAPIdentifiersWithBatchSize:(unint64_t)size offset:(int64_t)offset oldestDate:(id)date completion:(id)completion;
- (void)saveIdentifier:(id)identifier completion:(id)completion;
- (void)setFixedProblemAsReviewed:(id)reviewed;
- (void)updateRAPsStatusWithRapInfos:(id)infos completion:(id)completion;
@end

@implementation RAPSubmissionStatusSyncHandler

- (void)saveIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v7 = objc_alloc_init(MSRAPRecord);
  [v7 setReportId:identifierCopy];

  v8 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v13 = v7;
  v9 = [NSArray arrayWithObjects:&v13 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C79F5C;
  v11[3] = &unk_1016610B8;
  v12 = completionCopy;
  v10 = completionCopy;
  [v8 saveWithObjects:v9 completionHandler:v11];
}

- (void)_updateMapsSyncRAPRecordWithIdentifiers:(id)identifiers toStatus:(signed __int16)status forceUpdate:(BOOL)update editBlock:(id)block completion:(id)completion
{
  updateCopy = update;
  statusCopy = status;
  identifiersCopy = identifiers;
  blockCopy = block;
  completionCopy = completion;
  if ([identifiersCopy count])
  {
    if (updateCopy)
    {
      v28 = identifiersCopy;
      v15 = [NSArray arrayWithObjects:&v28 count:1];
      v16 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"reportId IN %@" argumentArray:v15];
    }

    else
    {
      statusCopy = [NSString stringWithFormat:@"status != %d", statusCopy];
      v15 = [statusCopy stringByAppendingString:@" AND reportId IN %@"];

      v27 = identifiersCopy;
      v18 = [NSArray arrayWithObjects:&v27 count:1];
      v16 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:v15 argumentArray:v18];
    }

    v19 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v16 sortDescriptors:0 range:0];
    objc_initWeak(&location, self);
    v20 = objc_alloc_init(MSRAPRecordRequest);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100C7A210;
    v21[3] = &unk_10164F708;
    v22 = completionCopy;
    v23 = blockCopy;
    v25 = statusCopy;
    objc_copyWeak(&v24, &location);
    [v20 fetchWithOptions:v19 completionHandler:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_updateRAPStatusWithIdentifiers:(id)identifiers toStatus:(signed __int16)status forceUpdate:(BOOL)update extraEditBlock:(id)block completion:(id)completion
{
  updateCopy = update;
  statusCopy = status;
  identifiersCopy = identifiers;
  completionCopy = completion;
  blockCopy = block;
  v15 = sub_100C7A474();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = 134218240;
    v17 = [identifiersCopy count];
    v18 = 1024;
    v19 = statusCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Updating %lu RAPs status to: %d", &v16, 0x12u);
  }

  [(RAPSubmissionStatusSyncHandler *)self _updateMapsSyncRAPRecordWithIdentifiers:identifiersCopy toStatus:statusCopy forceUpdate:updateCopy editBlock:blockCopy completion:completionCopy];
}

- (void)updateRAPsStatusWithRapInfos:(id)infos completion:(id)completion
{
  infosCopy = infos;
  completionCopy = completion;
  v6 = sub_100C7A474();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = infosCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Updating RAP submissions with RapInfos:%@", &buf, 0xCu);
  }

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v31 = objc_opt_new();
  v9 = +[NSMutableDictionary dictionary];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v10 = infosCopy;
  v11 = [v10 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v11)
  {
    v12 = *v51;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v51 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v50 + 1) + 8 * i);
        rapDisplayMenu = [v14 rapDisplayMenu];
        if (rapDisplayMenu == 1)
        {
          v16 = v31;
LABEL_13:
          rapId = [v14 rapId];
          [v16 addObject:rapId];

          goto LABEL_14;
        }

        v16 = v7;
        if (rapDisplayMenu == 2)
        {
          goto LABEL_13;
        }

        v16 = v8;
        if (rapDisplayMenu == 3)
        {
          goto LABEL_13;
        }

LABEL_14:
        rapResponse = [v14 rapResponse];
        v19 = rapResponse == 0;

        if (!v19)
        {
          rapResponse2 = [v14 rapResponse];
          rapId2 = [v14 rapId];
          [v9 setObject:rapResponse2 forKeyedSubscript:rapId2];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v11);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v57 = 0x3032000000;
  v58 = sub_100C7ADB8;
  v59 = sub_100C7ADC8;
  v60 = 0;
  v22 = dispatch_group_create();
  v23 = sub_100C7A474();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *v54 = 138412290;
    v55 = v7;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Array of RAP submissions that have been Reviewed: %@", v54, 0xCu);
  }

  dispatch_group_enter(v22);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100C7ADD0;
  v48[3] = &unk_10164F6E0;
  v24 = v9;
  v49 = v24;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100C7AE74;
  v45[3] = &unk_10165E218;
  p_buf = &buf;
  v25 = v22;
  v46 = v25;
  [(RAPSubmissionStatusSyncHandler *)self _updateRAPStatusWithIdentifiers:v7 toStatus:1 forceUpdate:1 extraEditBlock:v48 completion:v45];
  v26 = sub_100C7A474();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *v54 = 138412290;
    v55 = v8;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Array of RAP submissions that in Tell Us More statuses: %@", v54, 0xCu);
  }

  if ([v8 count])
  {
    dispatch_group_enter(v25);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100C7AEDC;
    v43[3] = &unk_10164F6E0;
    v44 = v24;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100C7AF80;
    v40[3] = &unk_10165E218;
    v42 = &buf;
    v41 = v25;
    [(RAPSubmissionStatusSyncHandler *)self _updateRAPStatusWithIdentifiers:v8 toStatus:2 forceUpdate:1 extraEditBlock:v43 completion:v40];
  }

  v27 = sub_100C7A474();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *v54 = 138412290;
    v55 = v31;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Array of RAP submissions that in In Review statuses: %@", v54, 0xCu);
  }

  if ([v31 count])
  {
    dispatch_group_enter(v25);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100C7AFE8;
    v38[3] = &unk_10164F6E0;
    v39 = v24;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100C7B08C;
    v35[3] = &unk_10165E218;
    v37 = &buf;
    v36 = v25;
    [(RAPSubmissionStatusSyncHandler *)self _updateRAPStatusWithIdentifiers:v31 toStatus:0 extraEditBlock:v38 completion:v35];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C7B0F4;
  block[3] = &unk_10165F5A0;
  v33 = completionCopy;
  v34 = &buf;
  v28 = completionCopy;
  dispatch_group_notify(v25, &_dispatch_main_q, block);

  _Block_object_dispose(&buf, 8);
}

- (void)setFixedProblemAsReviewed:(id)reviewed
{
  problemStatus = [reviewed problemStatus];
  firstObject = [problemStatus firstObject];

  problemId = [firstObject problemId];

  v7 = sub_100C7A474();
  v8 = v7;
  if (problemId)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      problemId2 = [firstObject problemId];
      *buf = 138412290;
      v16 = problemId2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Received notification for fixed RAP: %@", buf, 0xCu);
    }

    problemId3 = [firstObject problemId];
    v14 = problemId3;
    v11 = [NSArray arrayWithObjects:&v14 count:1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100C7B2FC;
    v12[3] = &unk_10165F7B8;
    v13 = firstObject;
    [(RAPSubmissionStatusSyncHandler *)self setIdentifiersAsReviewed:v11 completion:v12];

    v8 = v13;
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = firstObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Received notification for fixed RAP with nil GEORPProblemStatus problemID. Problem status: %@", buf, 0xCu);
  }
}

- (void)_fetchUnresolvedRAPRecordsWithLimit:(unint64_t)limit offset:(int64_t)offset oldestDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  v12 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"((status == 0) || (status == 2)) && reportId != ''" argumentArray:0];
  v27 = dateCopy;
  v13 = [NSArray arrayWithObjects:&v27 count:1];
  v14 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"createTime > %@" argumentArray:v13];

  v15 = [_TtC8MapsSync22MapsSyncQueryPredicate alloc];
  v26[0] = v12;
  v26[1] = v14;
  v16 = [NSArray arrayWithObjects:v26 count:2];
  v17 = [v15 initWithAnd:v16];

  v18 = [[_TtC8MapsSync13MapsSyncRange alloc] initWithOffset:offset limit:limit];
  v19 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v17 sortDescriptors:0 range:v18];
  objc_initWeak(&location, self);
  v20 = objc_alloc_init(MSRAPRecordRequest);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100C7B630;
  v22[3] = &unk_10165E308;
  objc_copyWeak(&v24, &location);
  v21 = completionCopy;
  v23 = v21;
  [v20 fetchWithOptions:v19 completionHandler:v22];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)fetchUnresolvedRAPIdentifiersWithBatchSize:(unint64_t)size offset:(int64_t)offset oldestDate:(id)date completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C7B808;
  v11[3] = &unk_10164F6B8;
  completionCopy = completion;
  offsetCopy = offset;
  v10 = completionCopy;
  [(RAPSubmissionStatusSyncHandler *)self _fetchUnresolvedRAPRecordsWithLimit:size offset:offset oldestDate:date completion:v11];
}

- (RAPSubmissionStatusSyncHandler)init
{
  v6.receiver = self;
  v6.super_class = RAPSubmissionStatusSyncHandler;
  v2 = [(RAPSubmissionStatusSyncHandler *)&v6 init];
  if (v2)
  {
    v3 = sub_100C7A474();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Initializing submission status sync handler", v5, 2u);
    }
  }

  return v2;
}

@end