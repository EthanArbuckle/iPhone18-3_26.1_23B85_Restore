void sub_100001134(uint64_t a1, void *a2)
{
  v3 = WFHandoffSourceKey;
  v4 = a2;
  v5 = [v4 objectForKey:v3];
  v6 = v5;
  v7 = WFWorkflowRunSourceHandoff;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v4 objectForKey:WFHandoffWorkflowControllerStateKey];

  (*(*(a1 + 32) + 16))();
}

void sub_100001B84(uint64_t a1, void *a2)
{
  v3 = [a2 parameters];
  v4 = [v3 objectForKey:@"type"];
  v5 = [v3 objectForKey:@"webpageURL"];
  v6 = [v3 objectForKey:@"userInfoURL"];
  v7 = [NSURL URLWithString:v6];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100001CCC;
  v12[3] = &unk_100008368;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v5;
  v15 = v9;
  v13 = v4;
  v10 = v5;
  v11 = v4;
  [v8 deserializeUserInfoAtURL:v7 completionHandler:v12];
}

void sub_1000020CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000020E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([a3 conformsToProtocol:&OBJC_PROTOCOL___NSSecureCoding] & 1) == 0)
  {
    [*(a1 + 32) removeObjectForKey:v5];
  }
}

id sub_10000214C(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100002180(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = dispatch_semaphore_create(0);
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000023BC;
    v9[3] = &unk_100008540;
    v10 = v3;
    v5 = *(v4 + 16);
    v6 = v3;
    v5(v4, v9);
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void sub_100002264(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFBackgroundAssertion backgroundAssertionWithName:@"is.workflow.my.app.actionextension.cancelcleanup" expirationHandler:0];
  v5 = [*(a1 + 32) extensionContext];
  [v5 cancelRequestWithError:*(a1 + 40)];

  v6 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002368;
  v10[3] = &unk_100008590;
  v11 = v4;
  v12 = v3;
  v7 = *(v6 + 16);
  v8 = v3;
  v9 = v4;
  v7(v6, v10);
}

uint64_t sub_100002368(uint64_t a1)
{
  [*(a1 + 32) end];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000023C4(id a1, id a2)
{
  if (a2)
  {
    (*(a2 + 2))(a2);
  }
}

NSExtensionItem *__cdecl sub_100002468(id a1, WFContentItem *a2, unint64_t a3)
{
  v3 = a2;
  NSClassFromString(@"WFEvernoteContentItem");
  if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(@"WFDropboxItemContentItem"), (objc_opt_isKindOfClass()))
  {
    v4 = 0;
  }

  else
  {
    v4 = [(WFContentItem *)v3 minimalExtensionItem];
  }

  return v4;
}

void sub_1000025E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v18 = v6;
  if (v6)
  {
    v8 = [v7 runnerClient];

    if (v8)
    {
      v9 = [*(a1 + 32) runnerClient];
      [v9 stop];
    }

    v10 = [WFActionExtensionWorkflowRunnerClient alloc];
    v11 = [*(a1 + 40) workflowID];
    v12 = [v10 initWithWorkflowIdentifier:v11 input:v18 javaScriptRunners:*(a1 + 48)];
    v13 = *(a1 + 32);
    v14 = *(v13 + 24);
    *(v13 + 24) = v12;

    v15 = *(a1 + 32);
    v16 = [v15 runnerClient];
    [v16 setDelegate:v15];

    v17 = [*(a1 + 32) runnerClient];
    [v17 start];
  }

  else
  {
    [v7 finishWithOutput:0 error:a4 cancelled:0];
  }
}

void sub_1000029C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000029E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addEntriesFromDictionary:{*(*(&v13 + 1) + 8 * v9), v13}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained contentItems];
  v12 = [WFContentCollection collectionWithItems:v11];

  [WeakRetained runWorkflow:*(a1 + 32) withInput:v12 javaScriptRunners:v4];
}

void sub_100002B50(id a1, WFContentItem *a2, unint64_t a3, id a4)
{
  v5 = a2;
  v6 = a4;
  v7 = v5;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(WFContentItem *)v7 preloadImportantItemsWithCompletionHandler:v6];
  }

  else
  {

    (*(v6 + 2))(v6, 0, 0);
  }
}

id sub_100003178(void *a1)
{
  v1 = a1;
  v2 = sub_1000031E4();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id sub_1000031E4()
{
  if (qword_10000CA88 != -1)
  {
    dispatch_once(&qword_10000CA88, &stru_100008620);
  }

  v1 = qword_10000CA80;

  return v1;
}

void sub_100003238(id a1)
{
  memset(&v5, 0, sizeof(v5));
  if (dladdr(sub_1000031E4, &v5) && v5.dli_fname)
  {
    v1 = [[NSURL alloc] initFileURLWithFileSystemRepresentation:v5.dli_fname isDirectory:0 relativeToURL:0];
    v2 = _CFBundleCopyBundleURLForExecutableURL();
    v3 = [NSBundle bundleWithURL:v2];
    v4 = qword_10000CA80;
    qword_10000CA80 = v3;
  }

  else
  {
    v1 = getWFGeneralLogObject();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }
}