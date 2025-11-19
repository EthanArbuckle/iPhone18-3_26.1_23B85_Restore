@interface TUIElementActionTriggerHandler
+ (id)argumentsForView:(id)a3;
- (BOOL)hasActionForTrigger:(id)a3;
- (BOOL)invoke:(id)a3 view:(id)a4 allowRefId:(BOOL)a5;
- (BOOL)invoke:(id)a3 view:(id)a4 allowRefId:(BOOL)a5 arguments:(id)a6;
- (BOOL)invoke:(id)a3 view:(id)a4 point:(CGPoint)a5 allowRefId:(BOOL)a6;
- (BOOL)isEqualToHandler:(id)a3;
- (TUIActionHandlerDelegate)actionDelegate;
- (TUIElementActionTriggerHandler)initWithActionsData:(id)a3 actionObject:(id)a4 actionDelegate:(id)a5;
- (TUIElementActionTriggerHandler)initWithActionsData:(id)a3 block:(id)a4;
- (id)keyCommands;
- (void)addKeyCommands:(id)a3;
- (void)invoke:(id)a3 view:(id)a4 point:(CGPoint)a5 completion:(id)a6;
@end

@implementation TUIElementActionTriggerHandler

- (TUIElementActionTriggerHandler)initWithActionsData:(id)a3 actionObject:(id)a4 actionDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TUIElementActionTriggerHandler;
  v12 = [(TUIElementActionTriggerHandler *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionsData, a3);
    objc_storeStrong(&v13->_actionObject, a4);
    objc_storeWeak(&v13->_actionDelegate, v11);
  }

  return v13;
}

- (TUIElementActionTriggerHandler)initWithActionsData:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TUIElementActionTriggerHandler;
  v9 = [(TUIElementActionTriggerHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionsData, a3);
    v11 = objc_retainBlock(v8);
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

- (BOOL)isEqualToHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    actionsData = self->_actionsData;
    v7 = [(TUIElementActionTriggerHandler *)v4 actionsData];
    LODWORD(actionsData) = [(TUIElementTriggerBehaviorMap *)actionsData isEqual:v7];

    if (actionsData && (actionObject = self->_actionObject, [(TUIElementActionTriggerHandler *)v5 actionObject], v9 = objc_claimAutoreleasedReturnValue(), v9, actionObject == v9))
    {
      WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
      v12 = [(TUIElementActionTriggerHandler *)v5 actionDelegate];
      v10 = WeakRetained == v12;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)invoke:(id)a3 view:(id)a4 allowRefId:(BOOL)a5 arguments:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = TUIActionLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v12;
    v15 = v7;
    v16 = [v11 layoutAttributes];
    [v16 renderModel];
    v17 = v37 = v7;
    v18 = [v17 identifier];
    [v18 tui_identifierToString];
    v20 = v19 = v11;
    *buf = 138544386;
    v39 = v10;
    v40 = 2114;
    v41 = v19;
    v42 = 2048;
    v43 = v15;
    v12 = v14;
    v44 = 2112;
    v45 = v14;
    v46 = 2114;
    v47 = v20;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "invoke trigger='%{public}@ view=%{public}@ allowRefId=%lu arguments=%@ view.id=%{public}@", buf, 0x34u);

    v11 = v19;
    v7 = v37;
  }

  if (!self->_block)
  {
    v23 = [(TUIElementTriggerBehaviorMap *)self->_actionsData behaviorDataForTrigger:v10];
    v24 = [v23 behavior];
    if (v24)
    {
      v25 = [v23 arguments];
      v26 = [v25 dictionaryByAddingEntriesFromDictionary:v12];

      v27 = TUIActionLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [v23 behavior];
        *buf = 138543618;
        v39 = v28;
        v40 = 2112;
        v41 = v26;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "invoke: trigger via behavior=%{public}@ arguments=%@", buf, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
      v22 = [WeakRetained handleActionForObject:self->_actionObject withName:v24 arguments:v26];
      goto LABEL_11;
    }

    v22 = 0;
    if (v23 || !v7)
    {
      goto LABEL_13;
    }

    v26 = [(TUIElementTriggerBehaviorMap *)self->_actionsData refIdForTrigger:v10];
    if (![v26 length])
    {
      v22 = 0;
      goto LABEL_12;
    }

    WeakRetained = [v11 descendentViewWithRefId:v26];
    v31 = [WeakRetained layoutAttributes];
    v32 = [v31 renderModel];

    if (WeakRetained == v11)
    {
      v33 = v12;
      v34 = v11;
      v36 = TUIActionLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        sub_19B6FC(v26, v34, v36);
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

      v33 = v12;
      v34 = v11;
      v35 = TUIActionLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v39 = v26;
        v40 = 2114;
        v41 = WeakRetained;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "invoke: via refId=%{public}@ descendentView=%{public}@", buf, 0x16u);
      }

      v36 = [v32 actionHandler];
      v22 = [v36 invoke:v10 view:v34 allowRefId:1 arguments:v33];
    }

    v11 = v34;
    v12 = v33;
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

+ (id)argumentsForView:(id)a3
{
  v3 = a3;
  v4 = [v3 superview];
  [v3 center];
  [v4 convertPoint:0 toView:?];
  v6 = v5;
  v8 = v7;

  [v3 bounds];
  if (v3)
  {
    v11 = v9;
    v12 = v10;
    v23[0] = @"sourceViewIdentifier";
    v13 = [v3 layoutAttributes];
    v14 = [v13 renderModel];
    v15 = [v14 identifier];
    v16 = [v15 tui_identifierToString];
    v24[0] = v16;
    v24[1] = v3;
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

- (BOOL)invoke:(id)a3 view:(id)a4 allowRefId:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() argumentsForView:v8];
  LOBYTE(v5) = [(TUIElementActionTriggerHandler *)self invoke:v9 view:v8 allowRefId:v5 arguments:v10];

  return v5;
}

- (BOOL)invoke:(id)a3 view:(id)a4 point:(CGPoint)a5 allowRefId:(BOOL)a6
{
  v6 = a6;
  y = a5.y;
  x = a5.x;
  v11 = a3;
  v12 = a4;
  [v12 convertPoint:0 toView:{x, y}];
  if (v12)
  {
    v15 = v13;
    v16 = v14;
    v24[0] = v12;
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
    v21 = [(TUIElementActionTriggerHandler *)self invoke:v11 view:v12 allowRefId:v6 arguments:v20];
  }

  else
  {
    v21 = [(TUIElementActionTriggerHandler *)self invoke:v11 view:0 allowRefId:v6 arguments:0];
  }

  return v21;
}

- (void)invoke:(id)a3 view:(id)a4 point:(CGPoint)a5 completion:(id)a6
{
  y = a5.y;
  x = a5.x;
  v18 = a6;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = objc_retainBlock(v18);
  [v13 setObject:v14 forKeyedSubscript:@"completion"];

  v15 = [objc_opt_class() argumentsForView:v11];
  [v13 addEntriesFromDictionary:v15];

  v16 = [NSValue valueWithCGPoint:x, y];
  [v13 setObject:v16 forKeyedSubscript:@"sourcePoint"];

  v17 = [v13 copy];
  LOBYTE(self) = [(TUIElementActionTriggerHandler *)self invoke:v12 view:v11 allowRefId:0 arguments:v17];

  if ((self & 1) == 0)
  {
    (*(v18 + 2))(v18, &__NSDictionary0__struct);
  }
}

- (BOOL)hasActionForTrigger:(id)a3
{
  v4 = a3;
  v5 = [(TUIElementTriggerBehaviorMap *)self->_actionsData behaviorDataForTrigger:v4];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(TUIElementTriggerBehaviorMap *)self->_actionsData refIdForTrigger:v4];
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

- (void)addKeyCommands:(id)a3
{
  v4 = a3;
  if ([(TUIElementActionTriggerHandler *)self hasActionForTrigger:@"press"])
  {
    v5 = [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0 action:"tui_handleSelectKey:"];
    v12[0] = v5;
    v6 = [UIKeyCommand keyCommandWithInput:@"\x03" modifierFlags:0 action:"tui_handleSelectKey:"];
    v12[1] = v6;
    v7 = [NSArray arrayWithObjects:v12 count:2];
    [v4 addObjectsFromArray:v7];
  }

  if ([(TUIElementActionTriggerHandler *)self hasActionForTrigger:@"context-menu"])
  {
    v8 = [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0x40000 action:"tui_handleContextMenuKey:"];
    v11[0] = v8;
    v9 = [UIKeyCommand keyCommandWithInput:@"\x03" modifierFlags:0x40000 action:"tui_handleContextMenuKey:"];
    v11[1] = v9;
    v10 = [NSArray arrayWithObjects:v11 count:2];
    [v4 addObjectsFromArray:v10];
  }
}

- (TUIActionHandlerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

@end