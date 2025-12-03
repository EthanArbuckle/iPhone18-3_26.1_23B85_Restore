@interface TUIFeedHeightLayoutCondition
- (BOOL)evaluateWithRenderModel:(id)model;
- (TUIFeedHeightLayoutCondition)initWithView:(id)view completion:(id)completion;
- (void)updateWithView:(id)view;
@end

@implementation TUIFeedHeightLayoutCondition

- (TUIFeedHeightLayoutCondition)initWithView:(id)view completion:(id)completion
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = TUIFeedHeightLayoutCondition;
  v7 = [(TUIFeedBaseLayoutCondition *)&v10 initWithCompletion:completion];
  v8 = v7;
  if (v7)
  {
    [(TUIFeedHeightLayoutCondition *)v7 updateWithView:viewCopy];
  }

  return v8;
}

- (BOOL)evaluateWithRenderModel:(id)model
{
  modelCopy = model;
  os_unfair_lock_lock_with_options();
  state = self->super._state;
  height = self->_height;
  os_unfair_lock_unlock(&self->super._lock);
  if (state)
  {
    v7 = 1;
  }

  else
  {
    v8 = objc_opt_class();
    v9 = TUIDynamicCast(v8, modelCopy);
    v10 = v9;
    if (v9)
    {
      info = [v9 info];
      v12 = [info objectForKeyedSubscript:@"TUIRenderInfoKeyIsFinal"];
      bOOLValue = [v12 BOOLValue];

      sections = [v10 sections];
      v15 = [sections count];
      v7 = v15 != 0;

      if (v15 && (bOOLValue & 1) == 0)
      {
        [modelCopy size];
        v7 = v16 >= height;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)updateWithView:(id)view
{
  if (view)
  {
    [view bounds];
    Height = CGRectGetHeight(v6);
  }

  else
  {
    Height = NAN;
  }

  os_unfair_lock_lock_with_options();
  self->_height = Height;

  os_unfair_lock_unlock(&self->super._lock);
}

@end