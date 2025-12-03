@interface WFWorkflowSceneDelegate
- (id)stateRestorationActivityForScene:(id)scene;
- (void)composeViewControllerRequestsDismissal:(id)dismissal;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation WFWorkflowSceneDelegate

- (id)stateRestorationActivityForScene:(id)scene
{
  composeViewController = [(WFWorkflowSceneDelegate *)self composeViewController];
  workflow = [composeViewController workflow];
  reference = [workflow reference];

  if (reference)
  {
    v6 = [WFWindowSceneManager userActivityForEditingWorkflow:reference];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)composeViewControllerRequestsDismissal:(id)dismissal
{
  view = [dismissal view];
  window = [view window];
  windowScene = [window windowScene];
  session = [windowScene session];

  if (session)
  {
    v6 = +[UIApplication sharedApplication];
    [v6 requestSceneSessionDestruction:session options:0 errorHandler:0];
  }
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v10 = +[WFDatabase defaultDatabase];
  stateRestorationActivity = [sessionCopy stateRestorationActivity];
  v12 = [WFWindowSceneManager workflowIdentifierFromUserActivity:stateRestorationActivity];

  if (v12)
  {
LABEL_12:
    v19 = [v10 referenceForWorkflowID:v12];
    v20 = [WFWorkflow workflowWithReference:v19 database:v10 error:0];
    [WFWindowSceneManager setupSession:sessionCopy forEditingWorkflow:v19];
    v21 = [[WFComposeViewController alloc] initWithWorkflow:v20];
    composeViewController = self->_composeViewController;
    self->_composeViewController = v21;

    [(WFComposeViewController *)self->_composeViewController setDelegate:self];
    name = [v20 name];
    [sceneCopy setTitle:name];

    v24 = objc_opt_class();
    v25 = sceneCopy;
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
    window = [(WFWorkflowSceneDelegate *)self window];
    [window setBackgroundColor:v31];

    composeViewController = [(WFWorkflowSceneDelegate *)self composeViewController];
    window2 = [(WFWorkflowSceneDelegate *)self window];
    [window2 setRootViewController:composeViewController];

    window3 = [(WFWorkflowSceneDelegate *)self window];
    [window3 makeKeyAndVisible];
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    userActivities = [optionsCopy userActivities];
    v14 = [userActivities countByEnumeratingWithState:&v37 objects:v41 count:16];
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
            objc_enumerationMutation(userActivities);
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
        v15 = [userActivities countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v12 = +[UIApplication sharedApplication];
    [v12 requestSceneSessionDestruction:sessionCopy options:0 errorHandler:0];
  }
}

@end