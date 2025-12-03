@interface TUIElementActionTriggerHandler
+ (id)argumentsForView:(id)view;
- (BOOL)hasActionForTrigger:(id)trigger;
- (BOOL)invoke:(id)invoke view:(id)view allowRefId:(BOOL)id;
- (BOOL)invoke:(id)invoke view:(id)view allowRefId:(BOOL)id arguments:(id)arguments;
- (BOOL)invoke:(id)invoke view:(id)view point:(CGPoint)point allowRefId:(BOOL)id;
- (BOOL)isEqualToHandler:(id)handler;
- (TUIActionHandlerDelegate)actionDelegate;
- (TUIElementActionTriggerHandler)initWithActionsData:(id)data actionObject:(id)object actionDelegate:(id)delegate;
- (TUIElementActionTriggerHandler)initWithActionsData:(id)data block:(id)block;
- (id)keyCommands;
- (void)addKeyCommands:(id)commands;
- (void)invoke:(id)invoke view:(id)view point:(CGPoint)point completion:(id)completion;
@end

@implementation TUIElementActionTriggerHandler

- (TUIElementActionTriggerHandler)initWithActionsData:(id)data actionObject:(id)object actionDelegate:(id)delegate
{
  dataCopy = data;
  objectCopy = object;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = TUIElementActionTriggerHandler;
  v12 = [(TUIElementActionTriggerHandler *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionsData, data);
    objc_storeStrong(&v13->_actionObject, object);
    objc_storeWeak(&v13->_actionDelegate, delegateCopy);
  }

  return v13;
}

- (TUIElementActionTriggerHandler)initWithActionsData:(id)data block:(id)block
{
  dataCopy = data;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = TUIElementActionTriggerHandler;
  v9 = [(TUIElementActionTriggerHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionsData, data);
    v11 = objc_retainBlock(blockCopy);
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

- (BOOL)isEqualToHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy == self)
  {
    v10 = 1;
  }

  else
  {
    actionsData = self->_actionsData;
    actionsData = [(TUIElementActionTriggerHandler *)handlerCopy actionsData];
    LODWORD(actionsData) = [(TUIElementTriggerBehaviorMap *)actionsData isEqual:actionsData];

    if (actionsData && (actionObject = self->_actionObject, [(TUIElementActionTriggerHandler *)v5 actionObject], v9 = objc_claimAutoreleasedReturnValue(), v9, actionObject == v9))
    {
      WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
      actionDelegate = [(TUIElementActionTriggerHandler *)v5 actionDelegate];
      v10 = WeakRetained == actionDelegate;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)invoke:(id)invoke view:(id)view allowRefId:(BOOL)id arguments:(id)arguments
{
  idCopy = id;
  invokeCopy = invoke;
  viewCopy = view;
  argumentsCopy = arguments;
  v13 = TUIActionLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = argumentsCopy;
    v15 = idCopy;
    layoutAttributes = [viewCopy layoutAttributes];
    [layoutAttributes renderModel];
    v17 = v37 = idCopy;
    identifier = [v17 identifier];
    [identifier tui_identifierToString];
    v20 = v19 = viewCopy;
    *buf = 138544386;
    v39 = invokeCopy;
    v40 = 2114;
    v41 = v19;
    v42 = 2048;
    v43 = v15;
    argumentsCopy = v14;
    v44 = 2112;
    v45 = v14;
    v46 = 2114;
    v47 = v20;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "invoke trigger='%{public}@ view=%{public}@ allowRefId=%lu arguments=%@ view.id=%{public}@", buf, 0x34u);

    viewCopy = v19;
    idCopy = v37;
  }

  if (!self->_block)
  {
    v23 = [(TUIElementTriggerBehaviorMap *)self->_actionsData behaviorDataForTrigger:invokeCopy];
    behavior = [v23 behavior];
    if (behavior)
    {
      arguments = [v23 arguments];
      v26 = [arguments dictionaryByAddingEntriesFromDictionary:argumentsCopy];

      v27 = TUIActionLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        behavior2 = [v23 behavior];
        *buf = 138543618;
        v39 = behavior2;
        v40 = 2112;
        v41 = v26;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "invoke: trigger via behavior=%{public}@ arguments=%@", buf, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
      v22 = [WeakRetained handleActionForObject:self->_actionObject withName:behavior arguments:v26];
      goto LABEL_11;
    }

    v22 = 0;
    if (v23 || !idCopy)
    {
      goto LABEL_13;
    }

    v26 = [(TUIElementTriggerBehaviorMap *)self->_actionsData refIdForTrigger:invokeCopy];
    if (![v26 length])
    {
      v22 = 0;
      goto LABEL_12;
    }

    WeakRetained = [viewCopy descendentViewWithRefId:v26];
    layoutAttributes2 = [WeakRetained layoutAttributes];
    renderModel = [layoutAttributes2 renderModel];

    if (WeakRetained == viewCopy)
    {
      v33 = argumentsCopy;
      v34 = viewCopy;
      actionHandler = TUIActionLog();
      if (os_log_type_enabled(actionHandler, OS_LOG_TYPE_FAULT))
      {
        sub_19B6FC(v26, v34, actionHandler);
      }

      v22 = 0;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v22 = 0;
        goto LABEL_29;
      }

      v33 = argumentsCopy;
      v34 = viewCopy;
      v35 = TUIActionLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v39 = v26;
        v40 = 2114;
        v41 = WeakRetained;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "invoke: via refId=%{public}@ descendentView=%{public}@", buf, 0x16u);
      }

      actionHandler = [renderModel actionHandler];
      v22 = [actionHandler invoke:invokeCopy view:v34 allowRefId:1 arguments:v33];
    }

    viewCopy = v34;
    argumentsCopy = v33;
LABEL_29:

LABEL_11:
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  v21 = TUIActionLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "invoke: trigger via block", buf, 2u);
  }

  (*(self->_block + 2))();
  v22 = 1;
LABEL_14:

  return v22;
}

+ (id)argumentsForView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];
  [viewCopy center];
  [superview convertPoint:0 toView:?];
  v6 = v5;
  v8 = v7;

  [viewCopy bounds];
  if (viewCopy)
  {
    v11 = v9;
    v12 = v10;
    v23[0] = @"sourceViewIdentifier";
    layoutAttributes = [viewCopy layoutAttributes];
    renderModel = [layoutAttributes renderModel];
    identifier = [renderModel identifier];
    tui_identifierToString = [identifier tui_identifierToString];
    v24[0] = tui_identifierToString;
    v24[1] = viewCopy;
    v23[1] = @"sourceView";
    v23[2] = @"width";
    v17 = [NSNumber numberWithDouble:v11];
    v24[2] = v17;
    v23[3] = @"height";
    v18 = [NSNumber numberWithDouble:v12];
    v24[3] = v18;
    v23[4] = @"positionX";
    v19 = [NSNumber numberWithDouble:v6];
    v24[4] = v19;
    v23[5] = @"positionY";
    v20 = [NSNumber numberWithDouble:v8];
    v24[5] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:6];
  }

  else
  {
    v21 = &__NSDictionary0__struct;
  }

  return v21;
}

- (BOOL)invoke:(id)invoke view:(id)view allowRefId:(BOOL)id
{
  idCopy = id;
  viewCopy = view;
  invokeCopy = invoke;
  v10 = [objc_opt_class() argumentsForView:viewCopy];
  LOBYTE(idCopy) = [(TUIElementActionTriggerHandler *)self invoke:invokeCopy view:viewCopy allowRefId:idCopy arguments:v10];

  return idCopy;
}

- (BOOL)invoke:(id)invoke view:(id)view point:(CGPoint)point allowRefId:(BOOL)id
{
  idCopy = id;
  y = point.y;
  x = point.x;
  invokeCopy = invoke;
  viewCopy = view;
  [viewCopy convertPoint:0 toView:{x, y}];
  if (viewCopy)
  {
    v15 = v13;
    v16 = v14;
    v24[0] = viewCopy;
    v23[0] = @"sourceView";
    v23[1] = @"sourcePoint";
    v17 = [NSValue valueWithCGPoint:x, y];
    v24[1] = v17;
    v24[2] = &off_275CA8;
    v23[2] = @"width";
    v23[3] = @"height";
    v24[3] = &off_275CA8;
    v23[4] = @"positionX";
    v18 = [NSNumber numberWithDouble:v15];
    v24[4] = v18;
    v23[5] = @"positionY";
    v19 = [NSNumber numberWithDouble:v16];
    v24[5] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:6];
    v21 = [(TUIElementActionTriggerHandler *)self invoke:invokeCopy view:viewCopy allowRefId:idCopy arguments:v20];
  }

  else
  {
    v21 = [(TUIElementActionTriggerHandler *)self invoke:invokeCopy view:0 allowRefId:idCopy arguments:0];
  }

  return v21;
}

- (void)invoke:(id)invoke view:(id)view point:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  completionCopy = completion;
  viewCopy = view;
  invokeCopy = invoke;
  v13 = objc_opt_new();
  v14 = objc_retainBlock(completionCopy);
  [v13 setObject:v14 forKeyedSubscript:@"completion"];

  v15 = [objc_opt_class() argumentsForView:viewCopy];
  [v13 addEntriesFromDictionary:v15];

  v16 = [NSValue valueWithCGPoint:x, y];
  [v13 setObject:v16 forKeyedSubscript:@"sourcePoint"];

  v17 = [v13 copy];
  LOBYTE(self) = [(TUIElementActionTriggerHandler *)self invoke:invokeCopy view:viewCopy allowRefId:0 arguments:v17];

  if ((self & 1) == 0)
  {
    (*(completionCopy + 2))(completionCopy, &__NSDictionary0__struct);
  }
}

- (BOOL)hasActionForTrigger:(id)trigger
{
  triggerCopy = trigger;
  v5 = [(TUIElementTriggerBehaviorMap *)self->_actionsData behaviorDataForTrigger:triggerCopy];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(TUIElementTriggerBehaviorMap *)self->_actionsData refIdForTrigger:triggerCopy];
    v6 = v7 != 0;
  }

  return v6;
}

- (id)keyCommands
{
  v3 = objc_opt_new();
  [(TUIElementActionTriggerHandler *)self addKeyCommands:v3];

  return v3;
}

- (void)addKeyCommands:(id)commands
{
  commandsCopy = commands;
  if ([(TUIElementActionTriggerHandler *)self hasActionForTrigger:@"press"])
  {
    v5 = [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0 action:"tui_handleSelectKey:"];
    v12[0] = v5;
    v6 = [UIKeyCommand keyCommandWithInput:@"\x03" modifierFlags:0 action:"tui_handleSelectKey:"];
    v12[1] = v6;
    v7 = [NSArray arrayWithObjects:v12 count:2];
    [commandsCopy addObjectsFromArray:v7];
  }

  if ([(TUIElementActionTriggerHandler *)self hasActionForTrigger:@"context-menu"])
  {
    v8 = [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0x40000 action:"tui_handleContextMenuKey:"];
    v11[0] = v8;
    v9 = [UIKeyCommand keyCommandWithInput:@"\x03" modifierFlags:0x40000 action:"tui_handleContextMenuKey:"];
    v11[1] = v9;
    v10 = [NSArray arrayWithObjects:v11 count:2];
    [commandsCopy addObjectsFromArray:v10];
  }
}

- (TUIActionHandlerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

@end