@interface TUITrigger
- (BOOL)isEqual:(id)a3;
- (TUITrigger)initWithName:(id)a3 observationMode:(unint64_t)a4;
@end

@implementation TUITrigger

- (TUITrigger)initWithName:(id)a3 observationMode:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TUITrigger;
  v8 = [(TUITrigger *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_observationMode = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  if (v6)
  {
    v7 = [(TUITrigger *)self name];
    v8 = [v6 name];
    if ([v7 isEqual:v8])
    {
      v9 = [(TUITrigger *)self observationMode];
      v10 = v9 == [v6 observationMode];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end