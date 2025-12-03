@interface WFHandoffSimulator
+ (id)URLForContinuingWorkflowWithState:(id)state fromSource:(id)source;
+ (id)URLForSimulatingHandoffWithActivityType:(id)type userInfo:(id)info webpageURL:(id)l fromSource:(id)source;
+ (id)temporaryFileURLBySerializingUserInfo:(id)info;
+ (id)userActivityForContinuingWorkflowWithState:(id)state fromSource:(id)source;
+ (void)deserializeUserInfoAtURL:(id)l completionHandler:(id)handler;
+ (void)getStateForContinuingWorkflowFromUserActivityUserInfo:(id)info completionHandler:(id)handler;
+ (void)registerHandoffURLRequestHandler:(id)handler;
@end

@implementation WFHandoffSimulator

+ (void)getStateForContinuingWorkflowFromUserActivityUserInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  v8 = [infoCopy objectForKey:WFHandoffSourceKey];
  v9 = v8;
  v10 = WFWorkflowRunSourceHandoff;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [infoCopy objectForKey:WFHandoffWorkflowControllerStateKey];
  v13 = [infoCopy objectForKey:WFHandoffWorkflowControllerStateDataKey];
  v14 = v13;
  if (v12)
  {
    handlerCopy[2](handlerCopy, v12, v11);
  }

  else if (v13)
  {
    v15 = [NSSet setWithObject:objc_opt_class()];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000B5748;
    v21[3] = &unk_1000F4238;
    v23 = handlerCopy;
    v22 = v11;
    v16 = [NSKeyedUnarchiver wf_securelyUnarchiveObjectWithData:v14 allowedClasses:v15 completionHandler:v21];
  }

  else
  {
    v17 = [infoCopy objectForKey:@"userInfoURL"];
    v18 = [NSURL URLWithString:v17];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000B575C;
    v19[3] = &unk_1000F4260;
    v20 = handlerCopy;
    [self deserializeUserInfoAtURL:v18 completionHandler:v19];
  }
}

+ (id)userActivityForContinuingWorkflowWithState:(id)state fromSource:(id)source
{
  stateCopy = state;
  sourceCopy = source;
  v17[0] = WFHandoffWorkflowControllerStateKey;
  v17[1] = WFHandoffSourceKey;
  v18[0] = stateCopy;
  v18[1] = sourceCopy;
  v8 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v9 = [self temporaryFileURLBySerializingUserInfo:v8];
  if (v9)
  {
    v10 = [NSUserActivity alloc];
    v11 = [v10 initWithActivityType:WFHandoffContinueWorkflowActivityType];
    v15 = @"userInfoURL";
    absoluteString = [v9 absoluteString];
    v16 = absoluteString;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v11 setUserInfo:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)deserializeUserInfoAtURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if ([lCopy isFileURL] && (+[WFTemporaryFileManager sharedAppGroupDirectoryURL](WFTemporaryFileManager, "sharedAppGroupDirectoryURL"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(lCopy, "wf_isContainedByDirectoryAtURL:", v6), v6, (v7 & 1) != 0))
  {
    v8 = [WFFileType typeWithUTType:UTTypePropertyList];
    v9 = [WFFileRepresentation fileWithURL:lCopy options:1 ofType:v8];

    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v10, v11, v12, v13, v14, objc_opt_class(), 0];
    v16 = [v15 mutableCopy];

    [v16 addObject:objc_opt_class()];
    [v16 addObject:objc_opt_class()];
    mappedData = [v9 mappedData];
    v18 = [NSKeyedUnarchiver wf_securelyUnarchiveObjectWithData:mappedData allowedClasses:v16 completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

+ (id)temporaryFileURLBySerializingUserInfo:(id)info
{
  v3 = [NSKeyedArchiver wf_securelyArchivedDataWithRootObject:info deletionResponsibility:1];
  v4 = [WFTemporaryFileManager proposedSharedTemporaryFileURLForFilename:@"URLHandoffUserInfo.plist"];
  uRLByDeletingLastPathComponent = [v4 URLByDeletingLastPathComponent];
  v6 = +[NSFileManager defaultManager];
  path = [uRLByDeletingLastPathComponent path];
  v8 = [v6 fileExistsAtPath:path];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = +[NSFileManager defaultManager];
    v16 = 0;
    [v10 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v16];
    v9 = v16;
  }

  v15 = v9;
  v11 = [v3 writeToURL:v4 options:0 error:&v15];
  v12 = v15;

  v13 = 0;
  if (v11)
  {
    v13 = v4;
  }

  return v13;
}

+ (id)URLForContinuingWorkflowWithState:(id)state fromSource:(id)source
{
  stateCopy = state;
  sourceCopy = source;
  v9 = sourceCopy;
  if (!stateCopy || !sourceCopy)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFHandoffSimulator.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"state && handoffSource"}];
  }

  v14[0] = WFHandoffWorkflowControllerStateKey;
  v14[1] = WFHandoffSourceKey;
  v15[0] = stateCopy;
  v15[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11 = [self URLForSimulatingHandoffWithActivityType:WFHandoffContinueWorkflowActivityType userInfo:v10 webpageURL:0 fromSource:v9];

  return v11;
}

+ (id)URLForSimulatingHandoffWithActivityType:(id)type userInfo:(id)info webpageURL:(id)l fromSource:(id)source
{
  typeCopy = type;
  infoCopy = info;
  lCopy = l;
  sourceCopy = source;
  v15 = sourceCopy;
  if (!infoCopy || !sourceCopy)
  {
    v27 = +[NSAssertionHandler currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"WFHandoffSimulator.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"userInfo && handoffSource"}];
  }

  v16 = [typeCopy isEqualToString:NSUserActivityTypeBrowsingWeb];
  if (lCopy && v16)
  {
    v17 = lCopy;
    goto LABEL_13;
  }

  v18 = objc_opt_new();
  v19 = [NSURLQueryItem queryItemWithName:@"type" value:typeCopy];
  [v18 addObject:v19];

  if (!infoCopy)
  {
    goto LABEL_9;
  }

  v20 = [self temporaryFileURLBySerializingUserInfo:infoCopy];
  v17 = v20;
  if (v20)
  {
    absoluteString = [v20 absoluteString];
    v22 = [NSURLQueryItem queryItemWithName:@"userInfoURL" value:absoluteString];
    [v18 addObject:v22];

LABEL_9:
    if (lCopy)
    {
      absoluteString2 = [lCopy absoluteString];
      v24 = [NSURLQueryItem queryItemWithName:@"webpageURL" value:absoluteString2];
      [v18 addObject:v24];
    }

    v25 = objc_opt_new();
    [v25 setScheme:WFWorkflowActiveURLScheme];
    [v25 setHost:@"continue-user-activity"];
    [v25 setQueryItems:v18];
    v17 = [v25 URL];
  }

LABEL_13:

  return v17;
}

+ (void)registerHandoffURLRequestHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFHandoffSimulator.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v6 = +[WFInterchangeManager sharedManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B61AC;
  v9[3] = &unk_1000F4210;
  v10 = handlerCopy;
  selfCopy = self;
  v7 = handlerCopy;
  [v6 registerHandler:v9 forIncomingRequestsWithAction:@"continue-user-activity" scheme:0];
}

@end