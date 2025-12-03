@interface ADDeviceSyncSession
- (ADDeviceSyncSession)initWithQueue:(id)queue deviceIdentifier:(id)identifier dataConsumersByType:(id)type dataProvidersByType:(id)byType messageSenders:(id)senders;
- (BOOL)_handlePulledDeltaWithIncrementalChanges:(id)changes forDataType:(id)type;
- (BOOL)_handlePulledSnapshot:(id)snapshot forDataType:(id)type;
- (BOOL)_handlePushedOrPulledGeneration:(unint64_t)generation forDataType:(id)type;
- (void)_handlePingWithCompletion:(id)completion;
- (void)_handlePullDeltaForDataType:(id)type generation:(unint64_t)generation limit:(unint64_t)limit completion:(id)completion;
- (void)_handlePullGenerationsForDataTypes:(id)types completion:(id)completion;
- (void)_handlePullSnapshotForDataType:(id)type completion:(id)completion;
- (void)_handlePushGenerationsByDataType:(id)type completion:(id)completion;
- (void)_invalidate;
- (void)_pingWithCompletion:(id)completion;
- (void)_pullDeltaForDataType:(id)type generation:(unint64_t)generation limit:(unint64_t)limit completion:(id)completion;
- (void)_pullGenerationsForDataTypes:(id)types completion:(id)completion;
- (void)_pullSnapshotForDataType:(id)type completion:(id)completion;
- (void)_pushGenerationsByDataType:(id)type completion:(id)completion;
- (void)_receiveMessage:(id)message completion:(id)completion;
- (void)_sendMessage:(id)message completion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)pushGenerationsByDataTypes:(id)types;
- (void)receiveMessage:(id)message completion:(id)completion;
- (void)sendMessage:(id)message completion:(id)completion;
@end

@implementation ADDeviceSyncSession

- (void)_pullSnapshotForDataType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v8 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "[ADDeviceSyncSession _pullSnapshotForDataType:completion:]";
    v24 = 2112;
    v25 = typeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s dataType = %@", buf, 0x16u);
  }

  outgoingSequence = self->_outgoingSequence;
  self->_outgoingSequence = outgoingSequence + 1;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10014E380;
  v19[3] = &unk_1005134F8;
  v20 = typeCopy;
  v21 = outgoingSequence;
  v10 = typeCopy;
  v11 = [ADDeviceSyncMessage newWithBuilder:v19];
  v12 = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10014E40C;
  v15[3] = &unk_1005134D0;
  v16 = v12;
  v17 = completionCopy;
  v18 = outgoingSequence;
  v13 = v12;
  v14 = completionCopy;
  [(ADDeviceSyncSession *)self _sendMessage:v11 completion:v15];
}

- (void)_pullDeltaForDataType:(id)type generation:(unint64_t)generation limit:(unint64_t)limit completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v12 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v29 = "[ADDeviceSyncSession _pullDeltaForDataType:generation:limit:completion:]";
    v30 = 2112;
    v31 = typeCopy;
    v32 = 2048;
    generationCopy = generation;
    v34 = 2048;
    limitCopy = limit;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s dataType = %@, generation = %llu, limit = %llu", buf, 0x2Au);
  }

  outgoingSequence = self->_outgoingSequence;
  self->_outgoingSequence = outgoingSequence + 1;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10014EB3C;
  v23[3] = &unk_100513570;
  v24 = typeCopy;
  v25 = outgoingSequence;
  generationCopy2 = generation;
  limitCopy2 = limit;
  v14 = typeCopy;
  v15 = [ADDeviceSyncMessage newWithBuilder:v23];
  v16 = self->_queue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10014EBCC;
  v19[3] = &unk_1005134D0;
  v20 = v16;
  v21 = completionCopy;
  v22 = outgoingSequence;
  v17 = v16;
  v18 = completionCopy;
  [(ADDeviceSyncSession *)self _sendMessage:v15 completion:v19];
}

- (void)_pullGenerationsForDataTypes:(id)types completion:(id)completion
{
  typesCopy = types;
  completionCopy = completion;
  v8 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "[ADDeviceSyncSession _pullGenerationsForDataTypes:completion:]";
    v24 = 2112;
    v25 = typesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s dataTypes = %@", buf, 0x16u);
  }

  outgoingSequence = self->_outgoingSequence;
  self->_outgoingSequence = outgoingSequence + 1;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10014F2D0;
  v19[3] = &unk_1005134F8;
  v20 = typesCopy;
  v21 = outgoingSequence;
  v10 = typesCopy;
  v11 = [ADDeviceSyncMessage newWithBuilder:v19];
  v12 = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10014F35C;
  v15[3] = &unk_1005134D0;
  v16 = v12;
  v17 = completionCopy;
  v18 = outgoingSequence;
  v13 = v12;
  v14 = completionCopy;
  [(ADDeviceSyncSession *)self _sendMessage:v11 completion:v15];
}

- (void)_pushGenerationsByDataType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v8 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "[ADDeviceSyncSession _pushGenerationsByDataType:completion:]";
    v24 = 2112;
    v25 = typeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s generationsByDataType = %@", buf, 0x16u);
  }

  outgoingSequence = self->_outgoingSequence;
  self->_outgoingSequence = outgoingSequence + 1;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10014FA60;
  v19[3] = &unk_1005134F8;
  v20 = typeCopy;
  v21 = outgoingSequence;
  v10 = typeCopy;
  v11 = [ADDeviceSyncMessage newWithBuilder:v19];
  v12 = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10014FAEC;
  v15[3] = &unk_1005134D0;
  v16 = v12;
  v17 = completionCopy;
  v18 = outgoingSequence;
  v13 = v12;
  v14 = completionCopy;
  [(ADDeviceSyncSession *)self _sendMessage:v11 completion:v15];
}

- (void)_pingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[ADDeviceSyncSession _pingWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  outgoingSequence = self->_outgoingSequence;
  self->_outgoingSequence = outgoingSequence + 1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001500D4;
  v15[3] = &unk_1005134A8;
  v15[4] = outgoingSequence;
  v7 = [ADDeviceSyncMessage newWithBuilder:v15];
  v8 = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10015012C;
  v11[3] = &unk_1005134D0;
  v12 = v8;
  v13 = completionCopy;
  v14 = outgoingSequence;
  v9 = v8;
  v10 = completionCopy;
  [(ADDeviceSyncSession *)self _sendMessage:v7 completion:v11];
}

- (void)_sendMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v8 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    deviceIdentifier = self->_deviceIdentifier;
    *buf = 136315650;
    v37 = "[ADDeviceSyncSession _sendMessage:completion:]";
    v38 = 2112;
    v39 = deviceIdentifier;
    v40 = 2112;
    v41 = messageCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, outgoingMessage = %@", buf, 0x20u);
  }

  v22 = completionCopy;
  v10 = [[ADDeviceSyncMessageSendingContext alloc] initWithQueue:self->_queue deviceIdentifier:self->_deviceIdentifier timeoutDuration:completionCopy completion:16.0];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = self->_messageSenders;
  v12 = [(NSSet *)v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(ADDeviceSyncMessageSendingContext *)v10 beginSendingWithMessageSender:*(*(&v30 + 1) + 8 * v15)];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSSet *)v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v13);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = self->_messageSenders;
  v17 = [(NSSet *)v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      v20 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * v20);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100150818;
        v23[3] = &unk_100513488;
        v24 = v10;
        v25 = v21;
        [v21 sendMessage:messageCopy completion:v23];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [(NSSet *)v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }
}

- (void)_handlePullSnapshotForDataType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v8 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[ADDeviceSyncSession _handlePullSnapshotForDataType:completion:]";
    v19 = 2112;
    v20 = typeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s dataType = %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    v9 = [(NSDictionary *)self->_dataProvidersByType objectForKey:typeCopy];
    if (v9)
    {
      v10 = self->_queue;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100150A78;
      v14[3] = &unk_100513460;
      v15 = v10;
      v16 = completionCopy;
      v11 = v10;
      [v9 getSnapshotWithCompletion:v14];
    }

    else
    {
      typeCopy = [[NSString alloc] initWithFormat:@"No data provider for data type %@.", typeCopy];
      v11 = [AFError errorWithCode:2410 description:typeCopy underlyingError:0];

      v13 = AFSiriLogContextDeviceSync;
      if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "[ADDeviceSyncSession _handlePullSnapshotForDataType:completion:]";
        v19 = 2112;
        v20 = v11;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
      }

      (*(completionCopy + 2))(completionCopy, 0, v11);
    }
  }
}

- (void)_handlePullDeltaForDataType:(id)type generation:(unint64_t)generation limit:(unint64_t)limit completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v12 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v22 = "[ADDeviceSyncSession _handlePullDeltaForDataType:generation:limit:completion:]";
    v23 = 2112;
    v24 = typeCopy;
    v25 = 2048;
    generationCopy = generation;
    v27 = 2048;
    limitCopy = limit;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s dataType = %@, generation = %llu, limit = %llu", buf, 0x2Au);
  }

  if (completionCopy)
  {
    v13 = [(NSDictionary *)self->_dataProvidersByType objectForKey:typeCopy];
    if (v13)
    {
      v14 = self->_queue;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100150F10;
      v18[3] = &unk_10051DDC0;
      v19 = v14;
      v20 = completionCopy;
      v15 = v14;
      [v13 getIncrementalChangesAfterGeneration:generation limit:limit completion:v18];
    }

    else
    {
      typeCopy = [[NSString alloc] initWithFormat:@"No data provider for data type %@.", typeCopy];
      v15 = [AFError errorWithCode:2410 description:typeCopy underlyingError:0];

      v17 = AFSiriLogContextDeviceSync;
      if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "[ADDeviceSyncSession _handlePullDeltaForDataType:generation:limit:completion:]";
        v23 = 2112;
        v24 = v15;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
      }

      (*(completionCopy + 2))(completionCopy, 0, v15);
    }
  }
}

- (void)_handlePullGenerationsForDataTypes:(id)types completion:(id)completion
{
  typesCopy = types;
  completionCopy = completion;
  v8 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v38 = "[ADDeviceSyncSession _handlePullGenerationsForDataTypes:completion:]";
    v39 = 2112;
    v40 = typesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s dataTypes = %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    queue = self->_queue;
    v9 = dispatch_group_create();
    v10 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(typesCopy, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = typesCopy;
    if (typesCopy)
    {
      allKeys = typesCopy;
    }

    else
    {
      allKeys = [(NSDictionary *)self->_dataProvidersByType allKeys];
    }

    v12 = allKeys;
    v13 = [allKeys countByEnumeratingWithState:&v32 objects:v36 count:{16, completionCopy}];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v18 = [(NSDictionary *)self->_dataProvidersByType objectForKey:v17];
          if (v18)
          {
            dispatch_group_enter(v9);
            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = sub_10015145C;
            v27[3] = &unk_100513438;
            v28 = queue;
            v29 = v10;
            v30 = v17;
            v31 = v9;
            [v18 getGenerationWithCompletion:v27];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v14);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015150C;
    block[3] = &unk_10051E088;
    v24 = v10;
    typesCopy = v21;
    v25 = v21;
    completionCopy = v20;
    v26 = v20;
    v19 = v10;
    dispatch_group_notify(v9, queue, block);
  }
}

- (void)_handlePushGenerationsByDataType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v8 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ADDeviceSyncSession _handlePushGenerationsByDataType:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = typeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s generationsByDataType = %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v20 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001519B8;
  v14[3] = &unk_100513410;
  v14[4] = self;
  v14[5] = buf;
  [typeCopy enumerateKeysAndObjectsUsingBlock:v14];
  if (completionCopy)
  {
    if (*(*&buf[8] + 24))
    {
      v9 = 0;
    }

    else
    {
      v10 = [NSString alloc];
      allKeys = [typeCopy allKeys];
      v12 = [v10 initWithFormat:@"No data consumer for data types %@.", allKeys];
      v9 = [AFError errorWithCode:2411 description:v12 underlyingError:0];

      if (v9)
      {
        v13 = AFSiriLogContextDeviceSync;
        if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_ERROR))
        {
          *v15 = 136315394;
          v16 = "[ADDeviceSyncSession _handlePushGenerationsByDataType:completion:]";
          v17 = 2112;
          v18 = v9;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s error = %@", v15, 0x16u);
        }
      }
    }

    completionCopy[2](completionCopy, v9);
  }

  _Block_object_dispose(buf, 8);
}

- (void)_handlePingWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADDeviceSyncSession _handlePingWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_receiveMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v8 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    deviceIdentifier = self->_deviceIdentifier;
    *buf = 136315650;
    v61 = "[ADDeviceSyncSession _receiveMessage:completion:]";
    v62 = 2112;
    v63 = deviceIdentifier;
    v64 = 2112;
    v65 = messageCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, incomingMessage = %@", buf, 0x20u);
  }

  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v55 = sub_100151FD0;
  v56 = &unk_10051E088;
  selfCopy = self;
  v10 = completionCopy;
  v59 = v10;
  v11 = messageCopy;
  v58 = v11;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v49 = sub_100152074;
  v50 = &unk_100513348;
  selfCopy2 = self;
  v12 = v10;
  v53 = v12;
  v13 = v11;
  v52 = v13;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v43 = sub_100152138;
  v44 = &unk_100513398;
  selfCopy3 = self;
  v14 = v12;
  v47 = v14;
  v15 = v13;
  v46 = v15;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v37 = sub_1001521FC;
  v38 = &unk_1005133C0;
  selfCopy4 = self;
  v41 = v14;
  v40 = v15;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v31 = sub_1001522F0;
  v32 = &unk_1005133E8;
  selfCopy5 = self;
  v16 = v41;
  v35 = v16;
  v34 = v40;
  v17 = v34;
  v18 = v54;
  v19 = v48;
  v20 = v42;
  v21 = v36;
  v22 = v30;
  type = [v17 type];
  v24 = 0;
  if (type > 4)
  {
    switch(type)
    {
      case 5:
        v27 = v21;
        commandPullGenerationsRequest = [v17 commandPullGenerationsRequest];
        v24 = commandPullGenerationsRequest != 0;
        if (commandPullGenerationsRequest)
        {
          v43(v20, commandPullGenerationsRequest);
        }

        break;
      case 7:
        v27 = v21;
        commandPullGenerationsRequest = [v17 commandPullDeltaRequest];
        v24 = commandPullGenerationsRequest != 0;
        if (commandPullGenerationsRequest)
        {
          v37(v27, commandPullGenerationsRequest);
        }

        break;
      case 9:
        v25 = v21;
        commandPullSnapshotRequest = [v17 commandPullSnapshotRequest];
        v24 = commandPullSnapshotRequest != 0;
        if (commandPullSnapshotRequest)
        {
          v31(v22, commandPullSnapshotRequest);
        }

LABEL_13:

        v21 = v25;
        goto LABEL_20;
      default:
        goto LABEL_20;
    }

    v21 = v27;
    goto LABEL_20;
  }

  if (type == 1)
  {
    v55(v18);
    v24 = 1;
    goto LABEL_20;
  }

  if (type == 3)
  {
    v25 = v21;
    commandPullSnapshotRequest = [v17 commandPushGenerationsRequest];
    v24 = commandPullSnapshotRequest != 0;
    if (commandPullSnapshotRequest)
    {
      v49(v19, commandPullSnapshotRequest);
    }

    goto LABEL_13;
  }

LABEL_20:

  if (v16 && !v24)
  {
    v29 = [AFError errorWithCode:2408 description:@"There's no supported request in incoming message." underlyingError:0];
    (*(v16 + 2))(v16, 0, v29);
  }
}

- (BOOL)_handlePulledSnapshot:(id)snapshot forDataType:(id)type
{
  snapshotCopy = snapshot;
  v7 = [(NSDictionary *)self->_dataConsumersByType objectForKey:type];
  v8 = v7;
  if (v7)
  {
    [v7 applySnapshot:snapshotCopy fromDeviceWithIdentifier:self->_deviceIdentifier];
  }

  return v8 != 0;
}

- (BOOL)_handlePulledDeltaWithIncrementalChanges:(id)changes forDataType:(id)type
{
  changesCopy = changes;
  v7 = [(NSDictionary *)self->_dataConsumersByType objectForKey:type];
  v8 = v7;
  if (v7)
  {
    [v7 applyIncrementalChanges:changesCopy fromDeviceWithIdentifier:self->_deviceIdentifier];
  }

  return v8 != 0;
}

- (BOOL)_handlePushedOrPulledGeneration:(unint64_t)generation forDataType:(id)type
{
  typeCopy = type;
  v7 = [(NSDictionary *)self->_dataConsumersByType objectForKey:typeCopy];
  if (v7)
  {
    v8 = self->_queue;
    objc_initWeak(&location, self);
    deviceIdentifier = self->_deviceIdentifier;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100152D50;
    v12[3] = &unk_1005132F8;
    v13 = v7;
    selfCopy = self;
    v17[1] = generation;
    v10 = v8;
    v15 = v10;
    objc_copyWeak(v17, &location);
    v16 = typeCopy;
    [v13 getGenerationForDeviceWithIdentifier:deviceIdentifier completion:v12];

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  return v7 != 0;
}

- (void)_invalidate
{
  deviceIdentifier = self->_deviceIdentifier;
  self->_deviceIdentifier = 0;

  dataConsumersByType = self->_dataConsumersByType;
  self->_dataConsumersByType = 0;

  dataProvidersByType = self->_dataProvidersByType;
  self->_dataProvidersByType = 0;

  messageSenders = self->_messageSenders;
  self->_messageSenders = 0;
}

- (void)sendMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001532AC;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = messageCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = messageCopy;
  dispatch_async(queue, block);
}

- (void)receiveMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100153380;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = messageCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = messageCopy;
  dispatch_async(queue, block);
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100153404;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)pushGenerationsByDataTypes:(id)types
{
  typesCopy = types;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001534A4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = typesCopy;
  v6 = typesCopy;
  dispatch_async(queue, v7);
}

- (ADDeviceSyncSession)initWithQueue:(id)queue deviceIdentifier:(id)identifier dataConsumersByType:(id)type dataProvidersByType:(id)byType messageSenders:(id)senders
{
  queueCopy = queue;
  identifierCopy = identifier;
  typeCopy = type;
  byTypeCopy = byType;
  sendersCopy = senders;
  v31.receiver = self;
  v31.super_class = ADDeviceSyncSession;
  v18 = [(ADDeviceSyncSession *)&v31 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, queue);
    v20 = [identifierCopy copy];
    deviceIdentifier = v19->_deviceIdentifier;
    v19->_deviceIdentifier = v20;

    v22 = [typeCopy copy];
    dataConsumersByType = v19->_dataConsumersByType;
    v19->_dataConsumersByType = v22;

    v24 = [byTypeCopy copy];
    dataProvidersByType = v19->_dataProvidersByType;
    v19->_dataProvidersByType = v24;

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100153624;
    v29[3] = &unk_100513280;
    v30 = identifierCopy;
    v26 = [sendersCopy objectsPassingTest:v29];
    messageSenders = v19->_messageSenders;
    v19->_messageSenders = v26;
  }

  return v19;
}

- (void)dealloc
{
  [(ADDeviceSyncSession *)self _invalidate];
  v3.receiver = self;
  v3.super_class = ADDeviceSyncSession;
  [(ADDeviceSyncSession *)&v3 dealloc];
}

@end