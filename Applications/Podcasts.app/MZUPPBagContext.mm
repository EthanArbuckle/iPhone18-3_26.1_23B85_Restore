@interface MZUPPBagContext
+ (void)loadBagContextFromIMURLBag:(id)bag completionBlock:(id)block;
- (double)pollingInterval;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MZUPPBagContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(MZUPPBagContext *)self bag];
  [v4 setBag:v5];

  baseURLForGETAll = [(MZUPPBagContext *)self baseURLForGETAll];
  [v4 setBaseURLForGETAll:baseURLForGETAll];

  baseURLForPUTAll = [(MZUPPBagContext *)self baseURLForPUTAll];
  [v4 setBaseURLForPUTAll:baseURLForPUTAll];

  return v4;
}

- (double)pollingInterval
{
  result = self->_pollingInterval;
  if (fabs(result) <= 2.22044605e-16)
  {
    return 1800.0;
  }

  return result;
}

+ (void)loadBagContextFromIMURLBag:(id)bag completionBlock:(id)block
{
  bagCopy = bag;
  blockCopy = block;
  if (blockCopy)
  {
    if (bagCopy)
    {
      v37[0] = 0;
      v37[1] = v37;
      v37[2] = 0x3032000000;
      v37[3] = sub_1000089DC;
      v37[4] = sub_10003B4C4;
      v38 = objc_alloc_init(MZUPPBagContext);
      v35[0] = 0;
      v35[1] = v35;
      v35[2] = 0x3032000000;
      v35[3] = sub_1000089DC;
      v35[4] = sub_10003B4C4;
      v36 = 0;
      v7 = dispatch_group_create();
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10009BCCC;
      v30[3] = &unk_1004DA568;
      v8 = dispatch_queue_create(0, 0);
      v31 = v8;
      v33 = v37;
      v34 = v35;
      v9 = v7;
      v32 = v9;
      v10 = objc_retainBlock(v30);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10009BE50;
      v25[3] = &unk_1004DA5E0;
      v11 = v9;
      v26 = v11;
      v27 = bagCopy;
      v12 = v8;
      v28 = v12;
      v13 = v10;
      v29 = v13;
      v14 = objc_retainBlock(v25);
      (v14[2])(v14, kMTBaseURLForGETAll, &stru_1004DA620, kMTSyncGetAllUPP, kMTSyncGetAll);
      (v14[2])(v14, kMTBaseURLForPUTAll, &stru_1004DA620, kMTSyncPutAllUPP, kMTSyncPutAll);
      (v14[2])(v14, kMTUPPDisabledBagContext, &stru_1004DA640, kMTUPPDisabled, 0);
      (v14[2])(v14, kMTPollingIntervalBagContext, &stru_1004DA660, kMTUPPPollingInterval, 0);
      v15 = dispatch_queue_create(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10009C0D0;
      block[3] = &unk_1004DA688;
      v21 = v11;
      v23 = v35;
      v24 = v37;
      v22 = blockCopy;
      v16 = v11;
      dispatch_async(v15, block);

      _Block_object_dispose(v35, 8);
      _Block_object_dispose(v37, 8);
    }

    else
    {
      v39 = NSLocalizedDescriptionKey;
      v17 = [NSString stringWithFormat:@"Could not load bag context due to invalid bag."];
      v40 = v17;
      v18 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v19 = [NSError errorWithDomain:NSCocoaErrorDomain code:100 userInfo:v18];

      (*(blockCopy + 2))(blockCopy, 0, v19);
    }
  }
}

@end