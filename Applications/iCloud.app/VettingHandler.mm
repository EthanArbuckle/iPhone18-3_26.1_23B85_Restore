@interface VettingHandler
- (VettingHandler)initWithCloudKitURL:(id)l;
- (void)completeVettingWithCompletionHandler:(id)handler willIssueCompletionOperationHandler:(id)operationHandler;
- (void)fetchVettingRecordWithVettingToken:(id)token completionHandler:(id)handler;
@end

@implementation VettingHandler

- (VettingHandler)initWithCloudKitURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = VettingHandler;
  v5 = [(VettingHandler *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (void)fetchVettingRecordWithVettingToken:(id)token completionHandler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
  v8 = [CKContainerID alloc];
  v9 = [v8 initWithContainerIdentifier:kCKCompleteParticipantVettingVettingRecordContainerName environment:1];
  if (__sTestOverridesAvailable == 1 && ([(VettingHandler *)self testDevice], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    testDevice = [(VettingHandler *)self testDevice];
    v12 = [testDevice containerWithContainerID:v9];
  }

  else
  {
    v12 = [[CKContainer alloc] initWithContainerID:v9];
  }

  tokenCopy = [NSString stringWithFormat:@"V:%@", tokenCopy];
  v14 = [[CKRecordID alloc] initWithRecordName:tokenCopy];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = sub_100015FCC;
  v36[4] = sub_100015FDC;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_100015FCC;
  v34[4] = sub_100015FDC;
  v35 = 0;
  v15 = [CKFetchRecordsOperation alloc];
  v38 = v14;
  v16 = [NSArray arrayWithObjects:&v38 count:1];
  v17 = [v15 initWithRecordIDs:v16];

  resolvedConfiguration = [v17 resolvedConfiguration];
  [resolvedConfiguration setRequestOriginator:2];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100015FE4;
  v29[3] = &unk_100028CE8;
  v19 = v14;
  v30 = v19;
  v32 = v34;
  v20 = tokenCopy;
  v31 = v20;
  v33 = v36;
  [v17 setPerRecordCompletionBlock:v29];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100016238;
  v24[3] = &unk_100028D10;
  v27 = v34;
  v21 = v20;
  v25 = v21;
  v22 = handlerCopy;
  v26 = v22;
  v28 = v36;
  [v17 setFetchRecordsCompletionBlock:v24];
  publicCloudDatabase = [v12 publicCloudDatabase];
  [publicCloudDatabase addOperation:v17];

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
}

- (void)completeVettingWithCompletionHandler:(id)handler willIssueCompletionOperationHandler:(id)operationHandler
{
  handlerCopy = handler;
  operationHandlerCopy = operationHandler;
  v9 = [(VettingHandler *)self url];
  pathComponents = [v9 pathComponents];

  if ([pathComponents count] <= 2)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"VettingHandler.m" lineNumber:89 description:{@"Too short vetting URL (should have already been checked): %@", pathComponents}];
  }

  [pathComponents objectAtIndexedSubscript:2];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100016480;
  v15[3] = &unk_100028D60;
  v16 = v15[4] = self;
  v17 = handlerCopy;
  v18 = operationHandlerCopy;
  v11 = operationHandlerCopy;
  v12 = v16;
  v13 = handlerCopy;
  [(VettingHandler *)self fetchVettingRecordWithVettingToken:v12 completionHandler:v15];
}

@end