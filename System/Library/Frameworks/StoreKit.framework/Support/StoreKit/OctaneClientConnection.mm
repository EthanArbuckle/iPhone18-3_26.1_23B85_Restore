@interface OctaneClientConnection
+ (id)_connectionForUUID:(id)d;
+ (id)addConnectionWithBundleID:(id)d connection:(id)connection type:(int64_t)type;
+ (id)connectionsForBundleID:(id)d;
+ (unint64_t)observerCountForEventIdentifier:(id)identifier;
+ (void)_enumerateAllConnectionsWithBlock:(id)block;
+ (void)initialize;
+ (void)receiveEventOfType:(int64_t)type withData:(id)data onAllObserversWithID:(id)d;
+ (void)removeConnectionWithUUID:(id)d;
- (OctaneClientConnection)initWithBundleID:(id)d connection:(id)connection type:(int64_t)type;
- (void)dealloc;
- (void)receiveEventOfType:(int64_t)type eventData:(id)data identifier:(id)identifier;
- (void)registerObservationID:(id)d;
- (void)transactionDeleted:(unint64_t)deleted forBundleID:(id)d;
- (void)transactionUpdated:(id)updated forBundleID:(id)d;
- (void)unregisterObservationID:(id)d;
@end

@implementation OctaneClientConnection

+ (void)initialize
{
  v2 = objc_opt_new();
  v3 = qword_1003D4500;
  qword_1003D4500 = v2;

  qword_1003D4508 = objc_opt_new();

  _objc_release_x1();
}

+ (id)addConnectionWithBundleID:(id)d connection:(id)connection type:(int64_t)type
{
  dCopy = d;
  connectionCopy = connection;
  v9 = [[OctaneClientConnection alloc] initWithBundleID:dCopy connection:connectionCopy type:type];

  v10 = qword_1003D4508;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005E240;
  v16[3] = &unk_10037F868;
  v17 = dCopy;
  v11 = v9;
  v18 = v11;
  v12 = dCopy;
  sub_10004D3C0(v10, v16);
  v13 = v18;
  v14 = v11;

  return v11;
}

+ (id)connectionsForBundleID:(id)d
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10005E3E8;
  v18 = sub_10005E3F8;
  v19 = 0;
  v4 = qword_1003D4508;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10005E400;
  v11 = &unk_10037F7D0;
  v13 = &v14;
  v5 = dCopy;
  v12 = v5;
  sub_10004D3C0(v4, &v8);
  allObjects = [v15[5] allObjects];

  _Block_object_dispose(&v14, 8);

  return allObjects;
}

+ (void)removeConnectionWithUUID:(id)d
{
  v4 = [self _connectionForUUID:d];
  v5 = v4;
  if (v4)
  {
    v6 = qword_1003D4508;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10005E6A4;
    v23[3] = &unk_100380818;
    v7 = v4;
    v24 = v7;
    sub_10004D3C0(v6, v23);
    if (v7[5] == 1)
    {
      v8 = [v7[4] mutableCopy];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10005E704;
      v21[3] = &unk_100382590;
      v9 = v8;
      v22 = v9;
      [self _enumerateAllConnectionsWithBlock:v21];
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        do
        {
          v14 = 0;
          do
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v17 + 1) + 8 * v14);
            v16 = +[OctaneManager sharedInstance];
            [v16 unregisterForEventWithIdentifier:v15];

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
        }

        while (v12);
      }
    }
  }
}

+ (unint64_t)observerCountForEventIdentifier:(id)identifier
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005E848;
  v7[3] = &unk_1003825B8;
  identifierCopy = identifier;
  v8 = identifierCopy;
  v9 = &v10;
  [self _enumerateAllConnectionsWithBlock:v7];
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

+ (void)receiveEventOfType:(int64_t)type withData:(id)data onAllObserversWithID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10005E3E8;
  v26 = sub_10005E3F8;
  v27 = objc_opt_new();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10005EAA4;
  v19[3] = &unk_1003825B8;
  v10 = dCopy;
  v20 = v10;
  v21 = &v22;
  [self _enumerateAllConnectionsWithBlock:v19];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11 = v23[5];
  v12 = [v11 countByEnumeratingWithState:&v15 objects:v28 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v15 + 1) + 8 * v14) receiveEventOfType:type eventData:dataCopy identifier:{v10, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v15 objects:v28 count:16];
    }

    while (v12);
  }

  _Block_object_dispose(&v22, 8);
}

+ (void)_enumerateAllConnectionsWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_opt_new();
  v5 = qword_1003D4508;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005ECC8;
  v16[3] = &unk_100380818;
  v6 = v4;
  v17 = v6;
  sub_10004D3C0(v5, v16);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_sync_enter(v11);
        blockCopy[2](blockCopy, v11);
        objc_sync_exit(v11);

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v8);
  }
}

+ (id)_connectionForUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10005E3E8;
  v15 = sub_10005E3F8;
  v16 = 0;
  v4 = qword_1003D4508;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005EFA8;
  v8[3] = &unk_1003807A0;
  v5 = dCopy;
  v9 = v5;
  v10 = &v11;
  sub_10004D3C0(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (OctaneClientConnection)initWithBundleID:(id)d connection:(id)connection type:(int64_t)type
{
  dCopy = d;
  connectionCopy = connection;
  v24.receiver = self;
  v24.super_class = OctaneClientConnection;
  v10 = [(OctaneClientConnection *)&v24 init];
  if (v10)
  {
    userInfo = [connectionCopy userInfo];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([userInfo objectForKeyedSubscript:@"octaneClientUUID"], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v13 = [dCopy copy];
      bundleID = v10->_bundleID;
      v10->_bundleID = v13;

      remoteObjectProxy = [connectionCopy remoteObjectProxy];
      remoteObject = v10->_remoteObject;
      v10->_remoteObject = remoteObjectProxy;

      v17 = [userInfo objectForKeyedSubscript:@"octaneClientUUID"];
      v18 = [v17 copy];
      uuid = v10->_uuid;
      v10->_uuid = v18;

      v10->_type = type;
      if (type != 1)
      {
LABEL_12:

        goto LABEL_13;
      }

      v20 = objc_opt_new();
      eventObservations = v10->_eventObservations;
      v10->_eventObservations = v20;
    }

    else
    {
      if (qword_1003D4558 != -1)
      {
        sub_1002D0110();
      }

      v22 = qword_1003D4548;
      if (os_log_type_enabled(qword_1003D4548, OS_LOG_TYPE_ERROR))
      {
        sub_1002D0138(connectionCopy, v22);
      }

      eventObservations = v10;
      v10 = 0;
    }

    goto LABEL_12;
  }

LABEL_13:

  return v10;
}

- (void)dealloc
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005F39C;
  v4[3] = &unk_100380818;
  v4[4] = self;
  sub_10004D3C0(qword_1003D4508, v4);
  v3.receiver = self;
  v3.super_class = OctaneClientConnection;
  [(OctaneClientConnection *)&v3 dealloc];
}

- (void)registerObservationID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_eventObservations addObject:dCopy];
  objc_sync_exit(selfCopy);
}

- (void)unregisterObservationID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_eventObservations removeObject:dCopy];
  objc_sync_exit(selfCopy);
}

- (void)transactionDeleted:(unint64_t)deleted forBundleID:(id)d
{
  if (!self->_type)
  {
    [(ASDOctaneClientProtocol *)self->_remoteObject transactionDeleted:deleted forBundleID:d];
  }
}

- (void)transactionUpdated:(id)updated forBundleID:(id)d
{
  if (!self->_type)
  {
    [(ASDOctaneClientProtocol *)self->_remoteObject transactionUpdated:updated forBundleID:d];
  }
}

- (void)receiveEventOfType:(int64_t)type eventData:(id)data identifier:(id)identifier
{
  if (self->_type == 1)
  {
    [(ASDOctaneClientProtocol *)self->_remoteObject receiveEventOfType:type eventData:data identifier:identifier];
  }
}

@end