@interface WFWorkflowSceneDelegate
- (id)stateRestorationActivityForScene:(id)a3;
- (void)composeViewControllerRequestsDismissal:(id)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation WFWorkflowSceneDelegate

- (id)stateRestorationActivityForScene:(id)a3
{
  v3 = [(WFWorkflowSceneDelegate *)self composeViewController];
  v4 = [v3 workflow];
  v5 = [v4 reference];

  if (v5)
  {
    v6 = [WFWindowSceneManager userActivityForEditingWorkflow:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)composeViewControllerRequestsDismissal:(id)a3
{
  v3 = [a3 view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v7 = [v5 session];

  if (v7)
  {
    v6 = +[UIApplication sharedApplication];
    [v6 requestSceneSessionDestruction:v7 options:0 errorHandler:0];
  }
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v36 = a5;
  v10 = +[WFDatabase defaultDatabase];
  v11 = [v9 stateRestorationActivity];
  v12 = [WFWindowSceneManager workflowIdentifierFromUserActivity:v11];

  if (v12)
  {
LABEL_12:
    v19 = [v10 referenceForWorkflowID:v12];
    v20 = [WFWorkflow workflowWithReference:v19 database:v10 error:0];
    [WFWindowSceneManager setupSession:v9 forEditingWorkflow:v19];
    v21 = [[WFComposeViewController alloc] initWithWorkflow:v20];
    composeViewController = self->_composeViewController;
    self->_composeViewController = v21;

    [(WFComposeViewController *)self->_composeViewController setDelegate:self];
    v23 = [v20 name];
    [v8 setTitle:v23];

    v24 = objc_opt_class();
    v25 = v8;
    if (v25 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = getWFGeneralLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        v28 = objc_opt_class();
        *buf = 136315906;
        v43 = "WFEnforceClass";
        v44 = 2114;
        v45 = v25;
        v46 = 2114;
        v47 = v28;
        v48 = 2114;
        v49 = v24;
        v29 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
      }

      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    v30 = [[UIWindow alloc] initWithWindowScene:v26];
    [(WFWorkflowSceneDelegate *)self setWindow:v30];

    v31 = +[UIColor systemBackgroundColor];
    v32 = [(WFWorkflowSceneDelegate *)self window];
    [v32 setBackgroundColor:v31];

    v33 = [(WFWorkflowSceneDelegate *)self composeViewController];
    v34 = [(WFWorkflowSceneDelegate *)self window];
    [v34 setRootViewController:v33];

    v35 = [(WFWorkflowSceneDelegate *)self window];
    [v35 makeKeyAndVisible];
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = [v36 userActivities];
    v14 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v38;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [WFWindowSceneManager workflowIdentifierFromUserActivity:*(*(&v37 + 1) + 8 * v17)];
          if (v18)
          {
            v12 = v18;

            goto LABEL_12;
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v12 = +[UIApplication sharedApplication];
    [v12 requestSceneSessionDestruction:v9 options:0 errorHandler:0];
  }
}

@end