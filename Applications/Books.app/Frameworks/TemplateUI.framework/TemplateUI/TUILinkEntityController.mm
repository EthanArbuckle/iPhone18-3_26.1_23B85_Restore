@interface TUILinkEntityController
- (TUILinkEntityActionHandling)actionHandler;
- (TUILinkEntityController)initWithFeedId:(id)id queue:(id)queue viewResolver:(id)resolver;
- (void)addLinkEntityObserver:(id)observer;
- (void)attachToTracker:(id)tracker;
- (void)detachFromTracker;
- (void)invokeAction:(id)action forLinkEntityReference:(id)reference withParameters:(id)parameters completion:(id)completion;
- (void)removeLinkEntityObserver:(id)observer;
- (void)visibleContentsChanged:(id)changed;
- (void)visibleLinkEntityReferencesWithFilter:(id)filter completion:(id)completion;
@end

@implementation TUILinkEntityController

- (TUILinkEntityController)initWithFeedId:(id)id queue:(id)queue viewResolver:(id)resolver
{
  queueCopy = queue;
  resolverCopy = resolver;
  v16.receiver = self;
  v16.super_class = TUILinkEntityController;
  v11 = [(TUILinkEntityController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_feedId.uniqueIdentifier = id.var0;
    objc_storeStrong(&v11->_queue, queue);
    objc_storeWeak(&v12->_viewResolver, resolverCopy);
    v13 = [NSHashTable hashTableWithOptions:517];
    q_observers = v12->_q_observers;
    v12->_q_observers = v13;
  }

  return v12;
}

- (void)attachToTracker:(id)tracker
{
  objc_storeStrong(&self->_tracker, tracker);
  trackerCopy = tracker;
  [trackerCopy addVisibilityObserver:self];
}

- (void)detachFromTracker
{
  [(TUIVisibilityTracker *)self->_tracker removeVisibilityObserver:self];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B4D0C;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_async(queue, block);
  tracker = self->_tracker;
  self->_tracker = 0;
}

- (void)visibleContentsChanged:(id)changed
{
  changedCopy = changed;
  rootNode = [changedCopy rootNode];
  q_visibleNode = self->_q_visibleNode;
  self->_q_visibleNode = rootNode;

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v17 = changedCopy;
  rootNode2 = [changedCopy rootNode];
  sub_B52A8(v7, v8, rootNode2, 0);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_q_observers;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = TUILinkEntityObserverLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 134218498;
          selfCopy = self;
          v24 = 2112;
          v25 = v7;
          v26 = 2112;
          v27 = v8;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "visible-content-changed observer[%p]: added=%@ removed=%@", buf, 0x20u);
        }

        [v15 linkEntityController:self visibleEntityReferencesWithAdded:v7 removed:v8];
      }

      v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v12);
  }
}

- (void)addLinkEntityObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_B5618;
  v7[3] = &unk_25DCA0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)removeLinkEntityObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_B59A0;
  v7[3] = &unk_25DCA0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)visibleLinkEntityReferencesWithFilter:(id)filter completion:(id)completion
{
  filterCopy = filter;
  completionCopy = completion;
  if (completionCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_B5B6C;
    block[3] = &unk_260E70;
    block[4] = self;
    v10 = filterCopy;
    v11 = completionCopy;
    dispatch_async(queue, block);
  }
}

- (void)invokeAction:(id)action forLinkEntityReference:(id)reference withParameters:(id)parameters completion:(id)completion
{
  actionCopy = action;
  referenceCopy = reference;
  parametersCopy = parameters;
  completionCopy = completion;
  resolvePath = [referenceCopy resolvePath];
  WeakRetained = objc_loadWeakRetained(&self->_viewResolver);
  v16 = [WeakRetained resolveViewWithPath:resolvePath];

  v17 = v16;
  v18 = TUILinkEntityActionLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    *buf = 134218754;
    v57 = uniqueIdentifier;
    v58 = 2112;
    v59 = actionCopy;
    v60 = 2112;
    v61 = referenceCopy;
    v62 = 2112;
    v63 = parametersCopy;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[fid:%lu] performAction:%@ linkEntity:%@ params:%@", buf, 0x2Au);
  }

  if (v17)
  {
    layoutAttributes = [v17 layoutAttributes];
    renderModel = [layoutAttributes renderModel];
    v22 = TUIProtocolCast(&OBJC_PROTOCOL___TUIRenderModelActionContaining, renderModel);
    actionHandler = [v22 actionHandler];

    model = [referenceCopy model];
    actionsMap = [model actionsMap];
    v25 = [actionsMap objectForKeyedSubscript:actionCopy];

    if (!v25)
    {
      v32 = TUILinkEntityActionLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_19AA08(self, actionCopy, v32);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }

      v29 = v17;
      goto LABEL_33;
    }

    v52 = model;
    refId = [v25 refId];

    v53 = resolvePath;
    v54 = actionCopy;
    if (refId)
    {
      refId2 = [v25 refId];
      v28 = [v17 descendentViewWithRefId:refId2];

      v51 = v28 == 0;
      if (v28)
      {
        v29 = v28;
        v30 = v17;
      }

      else
      {
        log = TUILinkEntityActionLog();
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v44 = self->_feedId.uniqueIdentifier;
          refId3 = [v25 refId];
          layoutAttributes2 = [v17 layoutAttributes];
          renderModel2 = [layoutAttributes2 renderModel];
          identifier = [renderModel2 identifier];
          tui_identifierToString = [identifier tui_identifierToString];
          *buf = 134218754;
          v57 = v44;
          v58 = 2112;
          v59 = refId3;
          v60 = 2112;
          v61 = v17;
          v62 = 2112;
          v63 = tui_identifierToString;
          _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "[fid:%lu] failed to lookup refId:%@ descendentOfView:%@ (%@); falling back on view", buf, 0x2Au);

          v30 = log;
          v29 = v17;
        }

        else
        {
          v29 = v17;
          v30 = log;
        }
      }
    }

    else
    {
      v51 = 1;
      v29 = v17;
    }

    if (parametersCopy)
    {
      v33 = parametersCopy;
    }

    else
    {
      v33 = &__NSDictionary0__struct;
    }

    v34 = [v33 mutableCopy];
    v35 = [TUIElementActionTriggerHandler argumentsForView:v29];
    [v34 addEntriesFromDictionary:v35];

    v36 = [v34 copy];
    trigger = [v25 trigger];
    if (trigger && (v38 = trigger, [v25 trigger], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(actionHandler, "hasActionForTrigger:", v39), v39, v38, v40))
    {
      trigger2 = [v25 trigger];
      [actionHandler invoke:trigger2 view:v29 allowRefId:v51 arguments:v36];

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }

    else
    {
      v42 = objc_loadWeakRetained(&self->_actionHandler);

      if (v42)
      {
        v43 = objc_loadWeakRetained(&self->_actionHandler);
        [v43 handleAction:v54 forLinkEntity:referenceCopy withParameters:v36 sourceView:v29 completion:completionCopy];

        actionCopy = v54;
        parametersCopy = v36;
LABEL_32:
        model = v52;
        resolvePath = v53;
LABEL_33:

        goto LABEL_34;
      }

      completionCopy[2](completionCopy, 0);
    }

    parametersCopy = v36;
    actionCopy = v54;
    goto LABEL_32;
  }

  v31 = TUILinkEntityActionLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    sub_19AA94(self, resolvePath, v31);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_34:
}

- (TUILinkEntityActionHandling)actionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  return WeakRetained;
}

@end