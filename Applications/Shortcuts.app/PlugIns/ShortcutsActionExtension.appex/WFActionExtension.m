@interface WFActionExtension
- (id)instantiateWorkflowFromSingleUseToken:(id)a3 error:(id *)a4;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)finishWithItems:(id)a3 error:(id)a4;
- (void)finishWithOutput:(id)a3 error:(id)a4 cancelled:(BOOL)a5;
- (void)processAndRunWorkflow:(id)a3;
- (void)runWorkflow:(id)a3 withInput:(id)a4 javaScriptRunners:(id)a5;
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6;
@end

@implementation WFActionExtension

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001E20;
  block[3] = &unk_1000085E0;
  block[4] = self;
  v9 = a5;
  v10 = a6;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)finishWithItems:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
    v9 = [v7 userInfo];
    v10 = [v9 mutableCopy];

    v11 = [v8 userInfo];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000020E4;
    v23[3] = &unk_1000084D8;
    v24 = v10;
    v12 = v10;
    [v11 enumerateKeysAndObjectsUsingBlock:v23];

    v13 = [v8 domain];
    v14 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v13, [v8 code], v12);
  }

  else
  {
    v14 = 0;
  }

  if ([v6 count])
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = sub_10000214C;
    v21[4] = sub_100002178;
    v22 = &stru_100008518;
    v15 = [(WFActionExtension *)self extensionContext];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100002180;
    v20[3] = &unk_100008568;
    v20[4] = v21;
    [v15 completeRequestReturningItems:v6 completionHandler:v20];

    _Block_object_dispose(v21, 8);
    v16 = &stru_100008518;
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100002264;
    v17[3] = &unk_1000085B8;
    v17[4] = self;
    v18 = v14;
    v19 = &stru_100008518;
    v16 = objc_retainBlock(v17);
    v16->invoke(v16, 0);
  }
}

- (void)finishWithOutput:(id)a3 error:(id)a4 cancelled:(BOOL)a5
{
  v7 = a4;
  v8 = [a3 items];
  v9 = [v8 if_compactMap:&stru_1000084B0];

  [(WFActionExtension *)self finishWithItems:v9 error:v7];
}

- (void)runWorkflow:(id)a3 withInput:(id)a4 javaScriptRunners:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 effectiveInputClasses];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000025E8;
  v14[3] = &unk_100008470;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [v10 generateCollectionByCoercingToItemClasses:v11 completionHandler:v14];
}

- (id)instantiateWorkflowFromSingleUseToken:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSUserDefaults systemShortcutsUserDefaults];
  v7 = [v6 workflowIdentifierConsumingSingleUseToken:v5];

  if (v7)
  {
    v8 = +[WFDatabase defaultDatabase];
    v9 = [v8 referenceForWorkflowID:v7];
    if (v9)
    {
      v10 = [WFWorkflow workflowWithReference:v9 database:v8 error:a4];
    }

    else
    {
      v11 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "[WFActionExtension instantiateWorkflowFromSingleUseToken:error:]";
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Resolved single use token to workflow ID %@, but no workflow found in the database with that ID", &v13, 0x16u);
      }

      v10 = 0;
    }
  }

  else
  {
    v8 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[WFActionExtension instantiateWorkflowFromSingleUseToken:error:]";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Given single use token %@ not found in user defaults", &v13, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)processAndRunWorkflow:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(WFActionExtension *)self contentItems];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000029E4;
  v7[3] = &unk_100008448;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 if_mapAsynchronously:&stru_100008420 completionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = a3;
  [(WFActionExtension *)self setExtensionContext:v4];
  self->_initializationResult = [WFInitialization initializeProcessWithDatabase:1];
  if (v4)
  {
    [v4 _extensionHostAuditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  v38 = v4;
  v36 = [VCAccessSpecifier accessSpecifierForAuditToken:buf];
  v41 = [v36 associatedAppBundleIdentifier];
  v5 = objc_opt_new();
  v44 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v37 = self;
  v6 = [(WFActionExtension *)self extensionContext];
  v7 = [v6 inputItems];

  obj = v7;
  v42 = [v7 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v42)
  {
    v43 = 0;
    v40 = *v51;
    do
    {
      for (i = 0; i != v42; i = i + 1)
      {
        if (*v51 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v50 + 1) + 8 * i);
        v10 = [v9 attributedTitle];
        v11 = [v9 attributedContentText];
        v12 = [v9 attachments];
        NSLog(@"Started action extension with input: %@ %@ %@", v10, v11, v12);

        v13 = [WFNSExtensionItemContentItem itemWithObject:v9 sourceAppBundleIdentifier:v41];
        [v44 addObject:v13];
        v14 = [v9 userInfo];
        v15 = [v14 objectForKey:@"ActionExtensionWorkflowToken"];

        if (v15)
        {
          v16 = v15;

          v43 = v16;
        }

        v17 = [v9 attachments];
        [v17 count];

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v18 = [v9 attachments];
        v19 = [v18 countByEnumeratingWithState:&v46 objects:v56 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v47;
          do
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v47 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = [*(*(&v46 + 1) + 8 * j) registeredTypeIdentifiers];
              [v5 addObjectsFromArray:v23];
            }

            v20 = [v18 countByEnumeratingWithState:&v46 objects:v56 count:16];
          }

          while (v20);
        }

        [v9 attributedTitle];
        v24 = [v9 attributedContentText];

        if (v24)
        {
          v25 = [v9 attributedContentText];
          v26 = [WFContentItem itemWithObject:v25];

          [v44 addObject:v26];
        }
      }

      v42 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v42);
  }

  else
  {
    v43 = 0;
  }

  [(WFActionExtension *)v37 setContentItems:v44];
  if ([v44 count])
  {
    v45 = 0;
    v27 = v43;
    v28 = [(WFActionExtension *)v37 instantiateWorkflowFromSingleUseToken:v43 error:&v45];
    v29 = v45;
    if (v28)
    {
      [(WFActionExtension *)v37 processAndRunWorkflow:v28];

      v30 = v38;
      v31 = v36;
      goto LABEL_31;
    }
  }

  else
  {
    v54[0] = NSLocalizedFailureReasonErrorKey;
    v32 = sub_100003178(@"The app that opened this extension did not provide any input.");
    v55[0] = v32;
    v54[1] = NSLocalizedDescriptionKey;
    v33 = sub_100003178(@"Unfortunately, there is nothing Shortcuts can do about this it is due to a bug in the host app. We’d recommend contacting the maker of that app and letting them know of this problem.");;
    v55[1] = v33;
    v34 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];
    v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v34];
  }

  v30 = v38;
  v31 = v36;
  v35 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[WFActionExtension beginRequestWithExtensionContext:]";
    *&buf[12] = 2114;
    *&buf[14] = v29;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s Failed to load requested shortcut in action extension: %{public}@", buf, 0x16u);
  }

  [(WFActionExtension *)v37 finishWithOutput:0 error:v29 cancelled:0];
  v27 = v43;
LABEL_31:
}

@end