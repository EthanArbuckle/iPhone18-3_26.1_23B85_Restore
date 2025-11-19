@interface ADAnalyticsStore
- (ADAnalyticsStore)initWithPath:(id)a3;
- (BOOL)_deleteEventRecordsBeforeOrEqualToTimestamp:(unint64_t)a3 deliveryStream:(unint64_t)a4 eventStreamUID:(id)a5 streamSpeechId:(id)a6 error:(id *)a7;
- (BOOL)_deleteEventRecordsFromStartTime:(unint64_t)a3 toEndTime:(unint64_t)a4 eventStreamUID:(id)a5 error:(id *)a6;
- (BOOL)_deleteEventRecordsWithRecordIDs:(id)a3 error:(id *)a4;
- (BOOL)_insertEventRecords:(id)a3 error:(id *)a4;
- (BOOL)_purgeDeletedEventRecordsBeforeOrEqualToDate:(id)a3 error:(id *)a4;
- (BOOL)_resetForReason:(id)a3 error:(id *)a4;
- (BOOL)_updateRecordsWithSpeechId:(id)a3 toUpdatedSpeechId:(id)a4 error:(id *)a5;
- (id)_fetchEventRecords:(unint64_t)a3 afterTimestamp:(unint64_t)a4 eventStreamUID:(id)a5 streamSpeechId:(id)a6 deliveryStream:(unint64_t)a7 error:(id *)a8;
- (id)_fetchEventRecordsCreatedAfterDate:(id)a3 error:(id *)a4;
- (id)_fetchEventStreamUIDsWithError:(id *)a3;
- (id)_preparedDatabaseWithError:(id *)a3;
- (void)_countQueuedEventRecordsWithCriteria:(id)a3 withCompletion:(id)a4;
- (void)checkpointWithCompletion:(id)a3;
- (void)countQueuedEventRecordsForDeliveryStream:(unint64_t)a3 withCompletion:(id)a4;
- (void)countQueuedEventRecordsWithCompletion:(id)a3;
- (void)dealloc;
- (void)deleteEventRecordsBeforeOrEqualToTimestamp:(unint64_t)a3 deliveryStream:(unint64_t)a4 eventStreamUID:(id)a5 streamSpeechId:(id)a6 completion:(id)a7;
- (void)deleteEventRecordsFromStartTime:(unint64_t)a3 toEndTime:(unint64_t)a4 eventStreamUID:(id)a5 completion:(id)a6;
- (void)deleteEventRecordsWithRecordIDs:(id)a3 completion:(id)a4;
- (void)fetchEventRecords:(unint64_t)a3 afterTimestamp:(unint64_t)a4 eventStreamUID:(id)a5 streamSpeechId:(id)a6 deliveryStream:(unint64_t)a7 completion:(id)a8;
- (void)fetchEventRecordsCreatedAfterDate:(id)a3 completion:(id)a4;
- (void)fetchEventStreamUIDsWithCompletion:(id)a3;
- (void)insertEventRecords:(id)a3 completion:(id)a4;
- (void)purgeDeletedEventRecordsBeforeOrEqualToDate:(id)a3 completion:(id)a4;
- (void)purgeWithCompletion:(id)a3;
- (void)resetWithCompletion:(id)a3;
- (void)updateRecordsWithSpeechId:(id)a3 toUpdatedSpeechId:(id)a4 withCompletion:(id)a5;
@end

@implementation ADAnalyticsStore

- (BOOL)_updateRecordsWithSpeechId:(id)a3 toUpdatedSpeechId:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (a5)
    {
      *a5 = 0;
    }

    v23 = 0;
    v10 = [(ADAnalyticsStore *)self _preparedDatabaseWithError:&v23];
    v11 = v23;
    v12 = v11;
    if (!v10)
    {
      if (a5)
      {
        v15 = v11;
        v14 = 0;
        *a5 = v12;
      }

      else
      {
        v14 = 0;
      }

      v18 = v12;
      goto LABEL_20;
    }

    if (v8)
    {
      [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"assistant_id" value:v8 negation:0];
    }

    else
    {
      [SiriCoreSQLiteQueryCriterion isNullQueryCriterionWithColumnName:@"assistant_id" negation:0];
    }
    v16 = ;
    v32 = @"assistant_id";
    v33 = v9;
    v17 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v22 = v12;
    v14 = [v10 updateTableWithName:@"events" valueMap:v17 criterion:v16 error:&v22];
    v18 = v22;

    if ((v14 & 1) == 0)
    {
      v19 = AFSiriLogContextAnalytics;
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v25 = "[ADAnalyticsStore _updateRecordsWithSpeechId:toUpdatedSpeechId:error:]";
        v26 = 2112;
        v27 = v8;
        v28 = 2112;
        v29 = v9;
        v30 = 2112;
        v31 = v18;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Failed to update database records with speechId (%@) to speechId (%@) due to error %@", buf, 0x2Au);
        if (!a5)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if (a5)
      {
LABEL_16:
        v20 = v18;
        *a5 = v18;
      }
    }

LABEL_17:

LABEL_20:
    goto LABEL_21;
  }

  v13 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v25 = "[ADAnalyticsStore _updateRecordsWithSpeechId:toUpdatedSpeechId:error:]";
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Attempting to updated event records to NULL speechId", buf, 0xCu);
  }

  v14 = 0;
LABEL_21:

  return v14;
}

- (void)_countQueuedEventRecordsWithCriteria:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v8 = [(ADAnalyticsStore *)self _preparedDatabaseWithError:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    v14 = v9;
    v11 = [v8 countValuesInTableWithName:@"events" columnName:@"timestamp" behavior:2 indexedBy:0 criterion:v6 range:0 error:&v14];
    v12 = v14;

    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    (v7)[2](v7, v13, v12);
    v10 = v12;
  }

  else
  {
    v7[2](v7, 0, v9);
  }
}

- (void)countQueuedEventRecordsForDeliveryStream:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100159118;
  block[3] = &unk_10051BFA8;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)countQueuedEventRecordsWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001592DC;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)_fetchEventRecordsCreatedAfterDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v27 = 0;
  v7 = [(ADAnalyticsStore *)self _preparedDatabaseWithError:&v27];
  v8 = v27;
  v9 = v8;
  if (!v7)
  {
    if (a4)
    {
      v24 = v8;
      v23 = 0;
      *a4 = v9;
    }

    else
    {
      v23 = 0;
    }

    v20 = v9;
    goto LABEL_18;
  }

  v10 = [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"status" value:&off_1005339B0 negation:0];
  if (v6)
  {
    [v6 timeIntervalSince1970];
    v11 = [NSNumber numberWithDouble:?];
    v12 = [SiriCoreSQLiteQueryCriterion greaterThanOrEqualToQueryCriterionWithColumnName:@"date_created" value:v11];
    v33[0] = v12;
    v33[1] = v10;
    v13 = [NSArray arrayWithObjects:v33 count:2];
    v14 = [SiriCoreSQLiteQueryCriterion andQueryCriterionWithSubcriteria:v13];

    v10 = v14;
  }

  v15 = [SiriCoreSQLiteQueryOrder alloc];
  v32[0] = @"stream_uid";
  v32[1] = @"timestamp";
  v16 = [NSArray arrayWithObjects:v32 count:2];
  v17 = [v15 initWithColumnNames:v16 mode:1];

  eventRecordBuilder = self->_eventRecordBuilder;
  v26 = v9;
  v19 = [v7 selectRecordsFromTableWithName:@"events" columnNames:0 behavior:0 indexedBy:0 criterion:v10 order:v17 range:0 recordBuilder:eventRecordBuilder error:&v26];
  v20 = v26;

  if (!v20)
  {
    v23 = v19;
    goto LABEL_17;
  }

  v21 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v29 = "[ADAnalyticsStore _fetchEventRecordsCreatedAfterDate:error:]";
    v30 = 2112;
    v31 = v20;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Failed to select database records due to error %@", buf, 0x16u);
    if (a4)
    {
      goto LABEL_9;
    }

LABEL_16:
    v23 = 0;
    goto LABEL_17;
  }

  if (!a4)
  {
    goto LABEL_16;
  }

LABEL_9:
  v22 = v20;
  v23 = 0;
  *a4 = v20;
LABEL_17:

LABEL_18:

  return v23;
}

- (id)_fetchEventRecords:(unint64_t)a3 afterTimestamp:(unint64_t)a4 eventStreamUID:(id)a5 streamSpeechId:(id)a6 deliveryStream:(unint64_t)a7 error:(id *)a8
{
  v14 = a5;
  v15 = a6;
  if (a8)
  {
    *a8 = 0;
  }

  v48 = 0;
  v16 = [(ADAnalyticsStore *)self _preparedDatabaseWithError:&v48];
  v17 = v48;
  v18 = v17;
  if (v16)
  {
    v45 = v16;
    v41 = a8;
    v42 = a3;
    v43 = self;
    if (v15)
    {
      [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"assistant_id" value:v15 negation:0];
    }

    else
    {
      [SiriCoreSQLiteQueryCriterion isNullQueryCriterionWithColumnName:@"assistant_id" negation:0];
    }
    v21 = ;
    v46 = v14;
    v22 = [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"stream_uid" value:v14 negation:0];
    v54[0] = v22;
    v54[1] = v21;
    v44 = v21;
    v23 = [NSNumber numberWithUnsignedLongLong:a4];
    v24 = [SiriCoreSQLiteQueryCriterion greaterThanQueryCriterionWithColumnName:@"timestamp" value:v23];
    v54[2] = v24;
    v25 = [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"status" value:&off_1005339B0 negation:0];
    v54[3] = v25;
    v26 = [NSNumber numberWithUnsignedInteger:a7];
    v27 = [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"delivery_stream" value:v26 negation:0];
    v54[4] = v27;
    v28 = [NSArray arrayWithObjects:v54 count:5];
    v29 = [SiriCoreSQLiteQueryCriterion andQueryCriterionWithSubcriteria:v28];

    v30 = v29;
    v31 = [SiriCoreSQLiteQueryOrder alloc];
    v53 = @"timestamp";
    v32 = [NSArray arrayWithObjects:&v53 count:1];
    v33 = [v31 initWithColumnNames:v32 mode:1];

    v34 = [[SiriCoreSQLiteQueryRange alloc] initWithLimit:v42];
    eventRecordBuilder = v43->_eventRecordBuilder;
    v47 = v18;
    v16 = v45;
    v36 = [v45 selectRecordsFromTableWithName:@"events" columnNames:0 behavior:0 indexedBy:@"events_index_event_batch" criterion:v30 order:v33 range:v34 recordBuilder:eventRecordBuilder error:&v47];
    v37 = v47;

    if (v37)
    {
      v38 = AFSiriLogContextAnalytics;
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v50 = "[ADAnalyticsStore _fetchEventRecords:afterTimestamp:eventStreamUID:streamSpeechId:deliveryStream:error:]";
        v51 = 2112;
        v52 = v37;
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s Failed to select database records due to error %@", buf, 0x16u);
      }

      v14 = v46;
      if (v41)
      {
        v39 = v37;
        v20 = 0;
        *v41 = v37;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = v36;
      v14 = v46;
    }
  }

  else
  {
    if (a8)
    {
      v19 = v17;
      v20 = 0;
      *a8 = v18;
    }

    else
    {
      v20 = 0;
    }

    v37 = v18;
  }

  return v20;
}

- (id)_fetchEventStreamUIDsWithError:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  v34 = 0;
  v4 = [(ADAnalyticsStore *)self _preparedDatabaseWithError:&v34];
  v5 = v34;
  v6 = v5;
  if (!v4)
  {
    if (a3)
    {
      v14 = v5;
      v13 = 0;
      *a3 = v6;
    }

    else
    {
      v13 = 0;
    }

    v10 = v6;
    goto LABEL_25;
  }

  v7 = [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"status" value:&off_1005339B0 negation:0];
  v40[0] = @"stream_uid";
  v40[1] = @"assistant_id";
  v8 = [NSArray arrayWithObjects:v40 count:2];
  v33 = v6;
  v9 = [v4 selectValueTuplesFromTableWithName:@"events" columnNames:v8 behavior:1 indexedBy:@"events_index_covering_status_stream_uid" criterion:v7 order:0 range:0 error:&v33];
  v10 = v33;

  if (!v10)
  {
    v27 = v7;
    v28 = v4;
    v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v21 = [v20 firstObject];
          v22 = [v21 siriCoreSQLiteValue_toString];

          v23 = [v20 objectAtIndex:1];
          v24 = [v23 siriCoreSQLiteValue_toString];

          if (v22)
          {
            v25 = objc_alloc_init(ADAnalyticsCompositeStreamId);
            [(ADAnalyticsCompositeStreamId *)v25 setStreamUID:v22];
            [(ADAnalyticsCompositeStreamId *)v25 setSpeechId:v24];
            [v13 addObject:v25];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v17);
    }

    v7 = v27;
    v4 = v28;
    goto LABEL_24;
  }

  v11 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v37 = "[ADAnalyticsStore _fetchEventStreamUIDsWithError:]";
    v38 = 2112;
    v39 = v10;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to select database records due to error %@", buf, 0x16u);
    if (a3)
    {
      goto LABEL_7;
    }

LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  if (!a3)
  {
    goto LABEL_23;
  }

LABEL_7:
  v12 = v10;
  v13 = 0;
  *a3 = v10;
LABEL_24:

LABEL_25:

  return v13;
}

- (BOOL)_purgeDeletedEventRecordsBeforeOrEqualToDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v22 = 0;
  v7 = [(ADAnalyticsStore *)self _preparedDatabaseWithError:&v22];
  v8 = v22;
  v9 = v8;
  if (v7)
  {
    [v6 timeIntervalSince1970];
    v10 = [NSNumber numberWithDouble:?];
    v11 = [SiriCoreSQLiteQueryCriterion lessThanOrEqualToQueryCriterionWithColumnName:@"date_created" value:v10];
    v27[0] = v11;
    v12 = [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"status" value:&off_1005339C8 negation:0];
    v27[1] = v12;
    v13 = [NSArray arrayWithObjects:v27 count:2];
    v14 = [SiriCoreSQLiteQueryCriterion andQueryCriterionWithSubcriteria:v13];

    v21 = v9;
    v15 = [v7 deleteFromTableWithName:@"events" indexedBy:@"events_index_date_created_status" criterion:v14 error:&v21];
    v16 = v21;

    if ((v15 & 1) == 0)
    {
      v17 = AFSiriLogContextAnalytics;
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "[ADAnalyticsStore _purgeDeletedEventRecordsBeforeOrEqualToDate:error:]";
        v25 = 2112;
        v26 = v16;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Failed to purge database records with deleted state due to error %@", buf, 0x16u);
        if (!a4)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      if (a4)
      {
LABEL_7:
        v18 = v16;
        *a4 = v16;
      }
    }

LABEL_8:

    goto LABEL_13;
  }

  if (a4)
  {
    v19 = v8;
    v15 = 0;
    *a4 = v9;
  }

  else
  {
    v15 = 0;
  }

  v16 = v9;
LABEL_13:

  return v15;
}

- (BOOL)_deleteEventRecordsWithRecordIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!a4)
  {
    if (![v6 count])
    {
      goto LABEL_18;
    }

LABEL_5:
    v33 = 0;
    v8 = [(ADAnalyticsStore *)self _preparedDatabaseWithError:&v33];
    v9 = v33;
    if (!v8)
    {
      if (a4)
      {
        v9 = v9;
        v19 = 0;
        *a4 = v9;
      }

      else
      {
        v19 = 0;
      }

      v20 = v9;
      goto LABEL_23;
    }

    v26 = v9;
    v27 = v8;
    v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [v7 allObjects];
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"record_id" value:*(*(&v29 + 1) + 8 * i) negation:0];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v42 count:16];
      }

      while (v13);
    }

    v17 = [SiriCoreSQLiteQueryCriterion orQueryCriterionWithSubcriteria:v10];
    v40 = @"status";
    v41 = &off_1005339C8;
    v18 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v8 = v27;
    v28 = v26;
    v19 = [v27 updateTableWithName:@"events" valueMap:v18 criterion:v17 error:&v28];
    v20 = v28;

    if ((v19 & 1) == 0)
    {
      v21 = AFSiriLogContextAnalytics;
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
      {
        v24 = v21;
        v25 = [v10 count];
        *buf = 136315650;
        v35 = "[ADAnalyticsStore _deleteEventRecordsWithRecordIDs:error:]";
        v36 = 2048;
        v37 = v25;
        v38 = 2112;
        v39 = v20;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Failed to update %lu database records with deleted state due to error %@", buf, 0x20u);

        if (!a4)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if (a4)
      {
LABEL_16:
        v22 = v20;
        *a4 = v20;
      }
    }

LABEL_17:

LABEL_23:
    goto LABEL_24;
  }

  *a4 = 0;
  if ([v6 count])
  {
    goto LABEL_5;
  }

  *a4 = 0;
LABEL_18:
  v19 = 1;
LABEL_24:

  return v19;
}

- (BOOL)_deleteEventRecordsFromStartTime:(unint64_t)a3 toEndTime:(unint64_t)a4 eventStreamUID:(id)a5 error:(id *)a6
{
  v10 = a5;
  if (a6)
  {
    *a6 = 0;
  }

  v31 = 0;
  v11 = [(ADAnalyticsStore *)self _preparedDatabaseWithError:&v31];
  v12 = v31;
  v13 = v12;
  if (v11)
  {
    v14 = [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"stream_uid" value:v10 negation:0];
    v15 = v14;
    if (!a3 || a4)
    {
      v38[0] = v14;
      v16 = [NSNumber numberWithUnsignedLongLong:a3];
      v29 = v10;
      v17 = [SiriCoreSQLiteQueryCriterion greaterThanOrEqualToQueryCriterionWithColumnName:@"timestamp" value:v16];
      v38[1] = v17;
      v18 = [NSNumber numberWithUnsignedLongLong:a4];
      v22 = [SiriCoreSQLiteQueryCriterion lessThanOrEqualToQueryCriterionWithColumnName:@"timestamp" value:v18];
      v38[2] = v22;
      v23 = [NSArray arrayWithObjects:v38 count:3];
      v19 = [SiriCoreSQLiteQueryCriterion andQueryCriterionWithSubcriteria:v23];

      v10 = v29;
    }

    else
    {
      v39[0] = v14;
      v16 = [NSNumber numberWithUnsignedLongLong:a3];
      v17 = [SiriCoreSQLiteQueryCriterion greaterThanOrEqualToQueryCriterionWithColumnName:@"timestamp" value:v16];
      v39[1] = v17;
      v18 = [NSArray arrayWithObjects:v39 count:2];
      v19 = [SiriCoreSQLiteQueryCriterion andQueryCriterionWithSubcriteria:v18];
    }

    v36 = @"status";
    v37 = &off_1005339C8;
    v24 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v30 = v13;
    v21 = [v11 updateTableWithName:@"events" valueMap:v24 criterion:v19 error:&v30];
    v25 = v30;

    if (v21)
    {
      goto LABEL_14;
    }

    v26 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[ADAnalyticsStore _deleteEventRecordsFromStartTime:toEndTime:eventStreamUID:error:]";
      v34 = 2112;
      v35 = v25;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Failed to update database records with deleted state due to error %@", buf, 0x16u);
      if (!a6)
      {
        goto LABEL_14;
      }
    }

    else if (!a6)
    {
LABEL_14:

      goto LABEL_17;
    }

    v27 = v25;
    *a6 = v25;
    goto LABEL_14;
  }

  if (a6)
  {
    v20 = v12;
    v21 = 0;
    *a6 = v13;
  }

  else
  {
    v21 = 0;
  }

  v25 = v13;
LABEL_17:

  return v21;
}

- (BOOL)_deleteEventRecordsBeforeOrEqualToTimestamp:(unint64_t)a3 deliveryStream:(unint64_t)a4 eventStreamUID:(id)a5 streamSpeechId:(id)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a6;
  if (a7)
  {
    *a7 = 0;
  }

  v37 = 0;
  v14 = [(ADAnalyticsStore *)self _preparedDatabaseWithError:&v37];
  v15 = v37;
  v16 = v15;
  if (v14)
  {
    v33 = v14;
    v34 = v13;
    if (v13)
    {
      [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"assistant_id" value:v13 negation:0];
    }

    else
    {
      [SiriCoreSQLiteQueryCriterion isNullQueryCriterionWithColumnName:@"assistant_id" negation:0];
    }
    v19 = ;
    v35 = v12;
    v20 = [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"stream_uid" value:v12 negation:0];
    v44[0] = v20;
    v44[1] = v19;
    v32 = v19;
    v21 = [NSNumber numberWithUnsignedInteger:a4];
    v22 = [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"delivery_stream" value:v21 negation:0];
    v44[2] = v22;
    v23 = [NSNumber numberWithUnsignedLongLong:a3];
    v24 = [SiriCoreSQLiteQueryCriterion lessThanOrEqualToQueryCriterionWithColumnName:@"timestamp" value:v23];
    v44[3] = v24;
    v25 = [NSArray arrayWithObjects:v44 count:4];
    v26 = [SiriCoreSQLiteQueryCriterion andQueryCriterionWithSubcriteria:v25];

    v42 = @"status";
    v43 = &off_1005339C8;
    v27 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v36 = v16;
    v14 = v33;
    v18 = [v33 updateTableWithName:@"events" valueMap:v27 criterion:v26 error:&v36];
    v28 = v36;

    if (v18)
    {
      goto LABEL_13;
    }

    v29 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[ADAnalyticsStore _deleteEventRecordsBeforeOrEqualToTimestamp:deliveryStream:eventStreamUID:streamSpeechId:error:]";
      v40 = 2112;
      v41 = v28;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s Failed to update database records with deleted state due to error %@", buf, 0x16u);
      if (!a7)
      {
        goto LABEL_13;
      }
    }

    else if (!a7)
    {
LABEL_13:

      v13 = v34;
      v12 = v35;
      goto LABEL_16;
    }

    v30 = v28;
    *a7 = v28;
    goto LABEL_13;
  }

  if (a7)
  {
    v17 = v15;
    v18 = 0;
    *a7 = v16;
  }

  else
  {
    v18 = 0;
  }

  v28 = v16;
LABEL_16:

  return v18;
}

- (BOOL)_insertEventRecords:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v46 = 0;
  v7 = [(ADAnalyticsStore *)self _preparedDatabaseWithError:&v46];
  v8 = v46;
  v9 = v8;
  if (!v7)
  {
    if (a4)
    {
      v30 = v8;
      v29 = 0;
      *a4 = v9;
    }

    else
    {
      v29 = 0;
    }

    goto LABEL_40;
  }

  v45 = v8;
  v10 = [v7 beginTransactionWithError:&v45];
  v11 = v45;

  if ((v10 & 1) == 0)
  {
    v31 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v48 = "[ADAnalyticsStore _insertEventRecords:error:]";
      v49 = 2112;
      v50 = v11;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s Failed to begin database transaction due to error %@", buf, 0x16u);
      if (a4)
      {
        goto LABEL_35;
      }
    }

    else if (a4)
    {
LABEL_35:
      v32 = v11;
      v29 = 0;
      *a4 = v11;
LABEL_39:
      v9 = v11;
      goto LABEL_40;
    }

    v29 = 0;
    goto LABEL_39;
  }

  v34 = v11;
  v35 = v6;
  v12 = [v6 mutableCopy];
  if ([v12 count])
  {
    v36 = v12;
    do
    {
      context = objc_autoreleasePoolPush();
      if ([v12 count] >= 0x11)
      {
        v13 = [v12 subarrayWithRange:{0, 16}];
        [v12 removeObjectsInRange:{0, 16}];
      }

      else
      {
        v13 = [v12 copy];
        [v12 removeAllObjects];
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v41 objects:v55 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v42;
        do
        {
          v18 = 0;
          do
          {
            if (*v42 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v41 + 1) + 8 * v18);
            v40 = 0;
            v20 = [v7 insertIntoTableWithName:@"events" record:v19 error:&v40];
            v21 = v40;
            if ((v20 & 1) == 0)
            {
              v22 = AFSiriLogContextAnalytics;
              if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v48 = "[ADAnalyticsStore _insertEventRecords:error:]";
                v49 = 2112;
                v50 = v19;
                v51 = 2112;
                v52 = @"events";
                v53 = 2112;
                v54 = v21;
                _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Failed to insert event record %@ into %@ table due to error %@", buf, 0x2Au);
              }
            }

            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v41 objects:v55 count:16];
        }

        while (v16);
      }

      objc_autoreleasePoolPop(context);
      v12 = v36;
    }

    while ([v36 count]);
  }

  v39 = v34;
  v23 = [v7 commitTransactionWithError:&v39];
  v9 = v39;

  if ((v23 & 1) == 0)
  {
    v24 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v48 = "[ADAnalyticsStore _insertEventRecords:error:]";
      v49 = 2112;
      v50 = v9;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Failed to commit database transaction due to error %@", buf, 0x16u);
    }

    v38 = 0;
    v25 = [v7 rollbackTransactionWithError:&v38];
    v26 = v38;
    if ((v25 & 1) == 0)
    {
      v27 = AFSiriLogContextAnalytics;
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v48 = "[ADAnalyticsStore _insertEventRecords:error:]";
        v49 = 2112;
        v50 = v26;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Failed to rollback database transaction due to error %@", buf, 0x16u);
      }
    }
  }

  if (a4)
  {
    v28 = v9;
    *a4 = v9;
  }

  v29 = v9 == 0;

  v6 = v35;
LABEL_40:

  return v29;
}

- (id)_preparedDatabaseWithError:(id *)a3
{
  v4 = self;
  if (a3)
  {
    *a3 = 0;
  }

  database = self->_database;
  if (database)
  {
LABEL_4:
    v6 = database;
    goto LABEL_86;
  }

  v7 = +[ADPreferences sharedPreferences];
  v8 = [v7 lastKnownAnalyticsStoreState];

  v9 = &CRCopyCountryCode_ptr;
  v139 = a3;
  if (v8 && (+[AFAnalytics sharedAnalytics](AFAnalytics, "sharedAnalytics"), v10 = objc_claimAutoreleasedReturnValue(), [v10 logEventWithType:4301 context:0], v10, +[NSFileManager defaultManager](NSFileManager, "defaultManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "fileExistsAtPath:", v4->_path), v11, v12))
  {
    v13 = +[NSFileManager defaultManager];
    path = v4->_path;
    v166 = 0;
    v15 = [v13 removeItemAtPath:path error:&v166];
    v16 = v166;

    if ((v15 & 1) == 0)
    {
      v17 = AFSiriLogContextAnalytics;
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
      {
        v18 = v4->_path;
        *buf = 136315650;
        v189 = "[ADAnalyticsStore _preparedDatabaseWithError:]";
        v190 = 2112;
        v191 = v18;
        v192 = 2112;
        v193 = v16;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Failed to remove database at path %@ due to %@.", buf, 0x20u);
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v19 = +[ADPreferences sharedPreferences];
  [v19 setLastKnownAnalyticsStoreState:1];

  v20 = 0;
  v21 = 0;
  v145 = v4;
  do
  {
    v22 = v20;
    v20 = [[SiriCoreSQLiteDatabase alloc] initWithPath:v4->_path dataProtectionClass:2 options:3];

    v23 = [v9[381] defaultManager];
    v24 = [v23 fileExistsAtPath:v4->_path];

    v165 = 0;
    v25 = [v20 openWithError:&v165];
    v26 = v165;
    if (!v25)
    {
      v28 = +[AFAnalytics sharedAnalytics];
      v29 = AFAnalyticsContextCreateWithError();
      v200[0] = v29;
      v198 = @"retryCount";
      v30 = [NSNumber numberWithUnsignedInteger:v21];
      v199 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v199 forKeys:&v198 count:1];
      v200[1] = v31;
      v32 = [NSArray arrayWithObjects:v200 count:2];
      v33 = AFAnalyticsContextsMerge();
      [v28 logEventWithType:4302 context:v33];

      v4 = v145;
      v34 = AFSiriLogContextAnalytics;
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
      {
        v55 = v145->_path;
        *buf = 136316162;
        v189 = "[ADAnalyticsStore _preparedDatabaseWithError:]";
        v190 = 2048;
        v191 = v21;
        v192 = 2048;
        v193 = 3;
        v194 = 2112;
        v195 = v55;
        v196 = 2112;
        v197 = v26;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s Failed to open analytics database (retry %tu/%tu) at path %@ with error %@.", buf, 0x34u);
        if (v26)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }

LABEL_17:
      if (v26)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    if (v24)
    {
      goto LABEL_17;
    }

    v27 = +[AFAnalytics sharedAnalytics];
    [v27 logEventWithType:4307 context:0];

    if (v26)
    {
      goto LABEL_21;
    }

LABEL_18:
    v164 = 0;
    v35 = [v20 performIntegrityCheckWithError:&v164];
    v26 = v164;
    if ((v35 & 1) == 0 && (+[AFAnalytics sharedAnalytics](AFAnalytics, "sharedAnalytics"), v36 = objc_claimAutoreleasedReturnValue(), AFAnalyticsContextCreateWithError(), v37 = objc_claimAutoreleasedReturnValue(), v187[0] = v37, v185 = @"retryCount", +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v21), v38 = objc_claimAutoreleasedReturnValue(), v186 = v38, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v186, &v185, 1), v39 = objc_claimAutoreleasedReturnValue(), v187[1] = v39, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v187, 2), v40 = objc_claimAutoreleasedReturnValue(), AFAnalyticsContextsMerge(), v41 = objc_claimAutoreleasedReturnValue(), [v36 logEventWithType:4303 context:v41], v41, v4 = v145, v40, v39, v38, v37, v36, v42 = AFSiriLogContextAnalytics, os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR)))
    {
      v56 = v145->_path;
      *buf = 136316162;
      v189 = "[ADAnalyticsStore _preparedDatabaseWithError:]";
      v190 = 2048;
      v191 = v21;
      v192 = 2048;
      v193 = 3;
      v194 = 2112;
      v195 = v56;
      v196 = 2112;
      v197 = v26;
      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%s Failed to perform integrity check on analytics database (retry %tu/%tu) at path %@ with error %@.", buf, 0x34u);
      if (!v26)
      {
        goto LABEL_39;
      }
    }

    else if (!v26)
    {
      goto LABEL_39;
    }

LABEL_21:
    [v20 closeWithError:0];
    if (SiriCoreSQLiteDatabaseIsErrorUnrecoverable())
    {
      v43 = +[AFAnalytics sharedAnalytics];
      v44 = AFAnalyticsContextCreateWithError();
      v184[0] = v44;
      v182 = @"retryCount";
      v45 = [NSNumber numberWithUnsignedInteger:v21];
      v183 = v45;
      v46 = [NSDictionary dictionaryWithObjects:&v183 forKeys:&v182 count:1];
      v184[1] = v46;
      v47 = [NSArray arrayWithObjects:v184 count:2];
      v48 = AFAnalyticsContextsMerge();
      [v43 logEventWithType:4304 context:v48];

      v4 = v145;
      v9 = &CRCopyCountryCode_ptr;
      v49 = +[NSFileManager defaultManager];
      LODWORD(v45) = [v49 fileExistsAtPath:v145->_path];

      if (v45)
      {
        v50 = +[NSFileManager defaultManager];
        v51 = v145->_path;
        v163 = v26;
        v52 = [v50 removeItemAtPath:v51 error:&v163];
        v16 = v163;

        if ((v52 & 1) == 0)
        {
          v53 = AFSiriLogContextAnalytics;
          if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
          {
            v54 = v145->_path;
            *buf = 136316162;
            v189 = "[ADAnalyticsStore _preparedDatabaseWithError:]";
            v190 = 2048;
            v191 = v21;
            v192 = 2048;
            v193 = 3;
            v194 = 2112;
            v195 = v54;
            v196 = 2112;
            v197 = v16;
            _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%s Failed to remove database (retry %tu out of %tu) at path %@ due to %@.", buf, 0x34u);
          }
        }
      }

      else
      {
        v16 = v26;
      }
    }

    else
    {
      v16 = v26;
      v9 = &CRCopyCountryCode_ptr;
    }

    v21 = (v21 + 1);
  }

  while (v21 != 3);
  if (!v16)
  {
LABEL_39:
    v135 = [SiriCoreSQLiteTableDescription alloc];
    v142 = [[SiriCoreSQLiteColumnDescription alloc] initWithName:@"stream_uid" type:@"TEXT" constraints:0];
    v178[0] = v142;
    v65 = [SiriCoreSQLiteColumnDescription alloc];
    obja = [SiriCoreSQLiteColumnConstraint defaultColumnConstraintWithName:0 value:&off_1005339B0];
    v177 = obja;
    v137 = [NSArray arrayWithObjects:&v177 count:1];
    v134 = [v65 initWithName:@"delivery_stream" type:@"INTEGER" constraints:v137];
    v178[1] = v134;
    v133 = [[SiriCoreSQLiteColumnDescription alloc] initWithName:@"type" type:@"INTEGER" constraints:0];
    v178[2] = v133;
    v132 = [[SiriCoreSQLiteColumnDescription alloc] initWithName:@"timestamp" type:@"INTEGER" constraints:0];
    v178[3] = v132;
    v131 = [[SiriCoreSQLiteColumnDescription alloc] initWithName:@"context_data" type:@"BLOB" constraints:0];
    v178[4] = v131;
    v130 = [[SiriCoreSQLiteColumnDescription alloc] initWithName:@"context_data_type" type:@"INTEGER" constraints:0];
    v178[5] = v130;
    v66 = [[SiriCoreSQLiteColumnDescription alloc] initWithName:@"date_created" type:@"REAL" constraints:0];
    v178[6] = v66;
    v67 = [SiriCoreSQLiteColumnDescription alloc];
    v68 = [SiriCoreSQLiteColumnConstraint defaultColumnConstraintWithName:0 value:&off_1005339B0];
    v176 = v68;
    v69 = [NSArray arrayWithObjects:&v176 count:1];
    v70 = [v67 initWithName:@"status" type:@"INTEGER" constraints:v69];
    v178[7] = v70;
    v71 = [[SiriCoreSQLiteColumnDescription alloc] initWithName:@"assistant_id" type:@"TEXT" constraints:0];
    v178[8] = v71;
    v72 = [[SiriCoreSQLiteColumnDescription alloc] initWithName:@"record_id" type:@"TEXT" constraints:0];
    v178[9] = v72;
    v73 = [NSArray arrayWithObjects:v178 count:10];
    v74 = [v135 initWithName:@"events" columns:v73 constraints:0];

    v75 = [v20 fetchTableWithName:@"events" error:0];
    v76 = v75;
    v138 = v74;
    if (v75)
    {
      v77 = [v75 columns];
      v78 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v77 count]);

      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v136 = v76;
      v79 = [v76 columns];
      v80 = [v79 countByEnumeratingWithState:&v159 objects:v175 count:16];
      if (v80)
      {
        v81 = v80;
        v82 = *v160;
        do
        {
          for (i = 0; i != v81; i = i + 1)
          {
            if (*v160 != v82)
            {
              objc_enumerationMutation(v79);
            }

            v84 = [*(*(&v159 + 1) + 8 * i) name];
            [v78 addObject:v84];
          }

          v81 = [v79 countByEnumeratingWithState:&v159 objects:v175 count:16];
        }

        while (v81);
      }

      v85 = [v138 columns];
      v86 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v85 count]);

      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v87 = [v138 columns];
      v88 = [v87 countByEnumeratingWithState:&v155 objects:v174 count:16];
      if (v88)
      {
        v89 = v88;
        v90 = *v156;
        do
        {
          for (j = 0; j != v89; j = j + 1)
          {
            if (*v156 != v90)
            {
              objc_enumerationMutation(v87);
            }

            v92 = *(*(&v155 + 1) + 8 * j);
            v93 = [v92 name];
            v94 = [v78 containsObject:v93];

            if ((v94 & 1) == 0)
            {
              [v86 addObject:v92];
            }
          }

          v89 = [v87 countByEnumeratingWithState:&v155 objects:v174 count:16];
        }

        while (v89);
      }

      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      obj = v86;
      v95 = [obj countByEnumeratingWithState:&v151 objects:v173 count:16];
      if (v95)
      {
        v96 = v95;
        v97 = 0;
        v98 = 0;
        v143 = *v152;
        while (2)
        {
          v99 = 0;
          v100 = v98;
          do
          {
            if (*v152 != v143)
            {
              objc_enumerationMutation(obj);
            }

            v101 = *(*(&v151 + 1) + 8 * v99);
            v102 = [v101 name];
            v103 = [v102 isEqualToString:@"record_id"];

            v150 = v100;
            v104 = [v20 alterTableWithName:@"events" addColumn:v101 error:&v150];
            v98 = v150;

            if ((v104 & 1) == 0)
            {
              v105 = AFSiriLogContextAnalytics;
              if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
              {
                v128 = v105;
                v129 = [v101 name];
                *buf = 136315906;
                v189 = "[ADAnalyticsStore _preparedDatabaseWithError:]";
                v190 = 2112;
                v191 = v129;
                v192 = 2112;
                v193 = @"events";
                v194 = 2112;
                v195 = v98;
                _os_log_error_impl(&_mh_execute_header, v128, OS_LOG_TYPE_ERROR, "%s Failed to add column '%@' to '%@' table with error %@", buf, 0x2Au);
              }

              v76 = v136;
              if (v139)
              {
                v106 = v98;
                *v139 = v98;
              }

              goto LABEL_84;
            }

            v97 |= v103;
            v99 = v99 + 1;
            v100 = v98;
          }

          while (v96 != v99);
          v96 = [obj countByEnumeratingWithState:&v151 objects:v173 count:16];
          if (v96)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v97 = 0;
        v98 = 0;
      }

      v76 = v136;
LABEL_74:
      [v20 dropIndexWithName:@"events_index_date_inserted" error:0];
      [v20 dropIndexWithName:@"status" error:0];
      [v20 dropIndexWithName:@"delivery_stream" error:0];
      [v20 dropIndexWithName:@"events_index_date_created" error:0];
      v147[0] = _NSConcreteStackBlock;
      v147[1] = 3221225472;
      v147[2] = sub_10015C29C;
      v147[3] = &unk_100513890;
      v144 = v20;
      v148 = v144;
      v108 = objc_retainBlock(v147);
      v172[0] = @"stream_uid";
      v172[1] = @"assistant_id";
      v109 = [NSArray arrayWithObjects:v172 count:2];
      (v108[2])(v108, @"events_index_stream_uid", v109);

      v171 = @"timestamp";
      v110 = [NSArray arrayWithObjects:&v171 count:1];
      (v108[2])(v108, @"events_index_timestamp", v110);

      v170[0] = @"status";
      v170[1] = @"date_created";
      v111 = [NSArray arrayWithObjects:v170 count:2];
      (v108[2])(v108, @"events_index_date_created_status", v111);

      v169[0] = @"status";
      v169[1] = @"stream_uid";
      v112 = [NSArray arrayWithObjects:v169 count:2];
      (v108[2])(v108, @"events_index_covering_status_stream_uid", v112);

      v168[0] = @"timestamp";
      v168[1] = @"stream_uid";
      v168[2] = @"assistant_id";
      v168[3] = @"status";
      v168[4] = @"delivery_stream";
      v113 = [NSArray arrayWithObjects:v168 count:5];
      (v108[2])(v108, @"events_index_event_batch", v113);

      v167 = @"record_id";
      v114 = [NSArray arrayWithObjects:&v167 count:1];
      (v108[2])(v108, @"events_index_record_uuid", v114);

      if ((v97 & 1) == 0)
      {
        v119 = v98;
        v117 = v144;
        goto LABEL_80;
      }

      v115 = AFSiriLogContextAnalytics;
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v189 = "[ADAnalyticsStore _preparedDatabaseWithError:]";
        v190 = 2112;
        v191 = @"record_id";
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_INFO, "%s %@ column added as part of DB migration, performing column value uniquification", buf, 0x16u);
      }

      v116 = [SiriCoreSQLiteQueryCriterion isNullQueryCriterionWithColumnName:@"record_id" negation:0];
      v146 = v98;
      v117 = v144;
      v118 = [v144 updateTableWithName:@"events" columnName:@"record_id" columnValue:@"UUID()" criterion:v116 error:&v146];
      v119 = v146;

      if (v118)
      {

LABEL_80:
        v120 = +[ADPreferences sharedPreferences];
        [v120 setLastKnownAnalyticsStoreState:0];

        v121 = v145->_database;
        v145->_database = v117;
        v122 = v117;

        database = v145->_database;
        goto LABEL_4;
      }

      v126 = AFSiriLogContextAnalytics;
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v189 = "[ADAnalyticsStore _preparedDatabaseWithError:]";
        v190 = 2112;
        v191 = v119;
        _os_log_error_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "%s Failed to update database records with UUIDs due to error %@", buf, 0x16u);
        if (!v139)
        {
          goto LABEL_92;
        }
      }

      else if (!v139)
      {
LABEL_92:

        goto LABEL_85;
      }

      v127 = v119;
      *v139 = v119;
      goto LABEL_92;
    }

    v149 = 0;
    v107 = [v20 createTable:v74 error:&v149];
    v98 = v149;
    if (v107)
    {
      v97 = 0;
      goto LABEL_74;
    }

    v123 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v189 = "[ADAnalyticsStore _preparedDatabaseWithError:]";
      v190 = 2112;
      v191 = @"events";
      v192 = 2112;
      v193 = v98;
      _os_log_error_impl(&_mh_execute_header, v123, OS_LOG_TYPE_ERROR, "%s Failed to create '%@' table with error %@", buf, 0x20u);
      if (!v139)
      {
        goto LABEL_84;
      }
    }

    else if (!v139)
    {
LABEL_84:

      goto LABEL_85;
    }

    v124 = v98;
    *v139 = v98;
    goto LABEL_84;
  }

  v57 = +[AFAnalytics sharedAnalytics];
  v58 = AFAnalyticsContextCreateWithError();
  v181[0] = v58;
  v179 = @"retryCount";
  v59 = [NSNumber numberWithUnsignedInteger:3];
  v180 = v59;
  v60 = [NSDictionary dictionaryWithObjects:&v180 forKeys:&v179 count:1];
  v181[1] = v60;
  v61 = [NSArray arrayWithObjects:v181 count:2];
  v62 = AFAnalyticsContextsMerge();
  [v57 logEventWithType:4305 context:v62];

  v63 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v189 = "[ADAnalyticsStore _preparedDatabaseWithError:]";
    v190 = 2048;
    v191 = 3;
    v192 = 2112;
    v193 = v16;
    _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%s Failed to prepare analytics database after %tu retries due to %@.", buf, 0x20u);
    if (v139)
    {
LABEL_37:
      v64 = v16;
      *v139 = v16;
    }
  }

  else if (v139)
  {
    goto LABEL_37;
  }

LABEL_85:
  v6 = 0;
LABEL_86:

  return v6;
}

- (BOOL)_resetForReason:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  database = self->_database;
  if (database)
  {
    v32 = 0;
    v8 = [(SiriCoreSQLiteDatabase *)database closeWithError:&v32];
    v9 = v32;
    if ((v8 & 1) == 0)
    {
      v10 = AFSiriLogContextAnalytics;
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
      {
        path = self->_path;
        *buf = 136315650;
        v37 = "[ADAnalyticsStore _resetForReason:error:]";
        v38 = 2112;
        v39 = path;
        v40 = 2112;
        v41 = v9;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Failed to close database (%@) due to %@.", buf, 0x20u);
      }
    }

    v11 = self->_database;
    self->_database = 0;
  }

  else
  {
    v9 = 0;
  }

  v12 = mach_absolute_time();
  v13 = +[NSFileManager defaultManager];
  v14 = [v13 fileExistsAtPath:self->_path];

  if (v14)
  {
    v15 = +[NSFileManager defaultManager];
    v16 = self->_path;
    v31 = 0;
    v17 = [v15 removeItemAtPath:v16 error:&v31];
    v18 = v31;

    if ((v17 & 1) == 0)
    {
      v19 = AFSiriLogContextAnalytics;
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
      {
        v20 = self->_path;
        *buf = 136315650;
        v37 = "[ADAnalyticsStore _resetForReason:error:]";
        v38 = 2112;
        v39 = v20;
        v40 = 2112;
        v41 = v18;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Failed to remove database (%@) due to %@.", buf, 0x20u);
      }
    }
  }

  else
  {
    v18 = 0;
  }

  if (v9)
  {
    v21 = v9;
  }

  else
  {
    v21 = v18;
  }

  if (a4)
  {
    v21 = v21;
    *a4 = v21;
  }

  if (v6)
  {
    v22 = v6;
  }

  else
  {
    v22 = @"unknown";
  }

  v33 = @"reason";
  v34 = v22;
  v23 = v21;
  v24 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v35[0] = v24;
  v25 = AFAnalyticsContextCreateWithError();
  v35[1] = v25;
  v26 = [NSArray arrayWithObjects:v35 count:2];
  v27 = AFAnalyticsContextsMerge();

  v28 = +[AFAnalytics sharedAnalytics];
  [v28 logEventWithType:4306 machAbsoluteTime:v12 context:v27];

  return v23 == 0;
}

- (void)updateRecordsWithSpeechId:(id)a3 toUpdatedSpeechId:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[ADAnalyticsStore updateRecordsWithSpeechId:toUpdatedSpeechId:withCompletion:]";
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Updating records with speechId value (%@) to (%@)", buf, 0x20u);
  }

  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10015C7C8;
  v16[3] = &unk_10051E0D8;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(queue, v16);
}

- (void)checkpointWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    path = self->_path;
    *buf = 136315394;
    v12 = "[ADAnalyticsStore checkpointWithCompletion:]";
    v13 = 2112;
    v14 = path;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Checkpointing write-ahead log (%@)...", buf, 0x16u);
  }

  v7 = +[ADDaemon sharedDaemon];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10015C988;
  v9[3] = &unk_10051E038;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 scheduleUnlockedWork:v9];
}

- (void)resetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    path = self->_path;
    *buf = 136315394;
    v12 = "[ADAnalyticsStore resetWithCompletion:]";
    v13 = 2112;
    v14 = path;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Resetting analytics store (%@)...", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10015CC5C;
  v9[3] = &unk_10051E038;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(queue, v9);
}

- (void)purgeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    path = self->_path;
    *buf = 136315394;
    v12 = "[ADAnalyticsStore purgeWithCompletion:]";
    v13 = 2112;
    v14 = path;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Purging data from analytics store (%@)...", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10015CEA4;
  v9[3] = &unk_10051E038;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(queue, v9);
}

- (void)fetchEventRecordsCreatedAfterDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015D2E4;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)purgeDeletedEventRecordsBeforeOrEqualToDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[ADAnalyticsStore purgeDeletedEventRecordsBeforeOrEqualToDate:completion:]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Purging deleted records before date %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015D4C4;
  block[3] = &unk_10051E088;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

- (void)deleteEventRecordsFromStartTime:(unint64_t)a3 toEndTime:(unint64_t)a4 eventStreamUID:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015D610;
  block[3] = &unk_10051BA90;
  v18 = a3;
  v19 = a4;
  block[4] = self;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(queue, block);
}

- (void)deleteEventRecordsWithRecordIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    *buf = 136315394;
    v17 = "[ADAnalyticsStore deleteEventRecordsWithRecordIDs:completion:]";
    v18 = 2048;
    v19 = [v6 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Will delete %lu records", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015D7FC;
  block[3] = &unk_10051E088;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(queue, block);
}

- (void)deleteEventRecordsBeforeOrEqualToTimestamp:(unint64_t)a3 deliveryStream:(unint64_t)a4 eventStreamUID:(id)a5 streamSpeechId:(id)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  queue = self->_queue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10015D974;
  v19[3] = &unk_10051CA38;
  v23 = a3;
  v24 = a4;
  v19[4] = self;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(queue, v19);
}

- (void)fetchEventRecords:(unint64_t)a3 afterTimestamp:(unint64_t)a4 eventStreamUID:(id)a5 streamSpeechId:(id)a6 deliveryStream:(unint64_t)a7 completion:(id)a8
{
  v14 = a5;
  v15 = a6;
  v16 = a8;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015DB1C;
  block[3] = &unk_100513868;
  v25 = a3;
  v26 = a4;
  block[4] = self;
  v22 = v14;
  v27 = a7;
  v23 = v15;
  v24 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  dispatch_async(queue, block);
}

- (void)fetchEventStreamUIDsWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015DC48;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)insertEventRecords:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ADDaemon sharedDaemon];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10015DDAC;
  v11[3] = &unk_10051E088;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 scheduleUnlockedWork:v11];
}

- (ADAnalyticsStore)initWithPath:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ADAnalyticsStore;
  v5 = [(ADAnalyticsStore *)&v15 init];
  if (v5)
  {
    v6 = [v4 stringByStandardizingPath];
    path = v5->_path;
    v5->_path = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UTILITY, 0);

    v10 = dispatch_queue_create("com.apple.assistant.analytics-store", v9);
    queue = v5->_queue;
    v5->_queue = v10;

    v12 = objc_alloc_init(ADAnalyticsEventRecordBuilder);
    eventRecordBuilder = v5->_eventRecordBuilder;
    v5->_eventRecordBuilder = v12;
  }

  return v5;
}

- (void)dealloc
{
  [(SiriCoreSQLiteDatabase *)self->_database closeWithError:0];
  v3.receiver = self;
  v3.super_class = ADAnalyticsStore;
  [(ADAnalyticsStore *)&v3 dealloc];
}

@end