@interface TUIFeedHeightLayoutCondition
- (BOOL)evaluateWithRenderModel:(id)a3;
- (TUIFeedHeightLayoutCondition)initWithView:(id)a3 completion:(id)a4;
- (void)updateWithView:(id)a3;
@end

@implementation TUIFeedHeightLayoutCondition

- (TUIFeedHeightLayoutCondition)initWithView:(id)a3 completion:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = TUIFeedHeightLayoutCondition;
  v7 = [(TUIFeedBaseLayoutCondition *)&v10 initWithCompletion:a4];
  v8 = v7;
  if (v7)
  {
    [(TUIFeedHeightLayoutCondition *)v7 updateWithView:v6];
  }

  return v8;
}

- (BOOL)evaluateWithRenderModel:(id)a3
{
  v4 = a3;
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
    v9 = TUIDynamicCast(v8, v4);
    v10 = v9;
    if (v9)
    {
      v11 = [v9 info];
      v12 = [v11 objectForKeyedSubscript:@"TUIRenderInfoKeyIsFinal"];
      v13 = [v12 BOOLValue];

      v14 = [v10 sections];
      v15 = [v14 count];
      v7 = v15 != 0;

      if (v15 && (v13 & 1) == 0)
      {
        [v4 size];
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

- (void)updateWithView:(id)a3
{
  if (a3)
  {
    [a3 bounds];
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