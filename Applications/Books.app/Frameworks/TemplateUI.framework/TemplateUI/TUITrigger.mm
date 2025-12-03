@interface TUITrigger
- (BOOL)isEqual:(id)equal;
- (TUITrigger)initWithName:(id)name observationMode:(unint64_t)mode;
@end

@implementation TUITrigger

- (TUITrigger)initWithName:(id)name observationMode:(unint64_t)mode
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = TUITrigger;
  v8 = [(TUITrigger *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_observationMode = mode;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, equalCopy);

  if (v6)
  {
    name = [(TUITrigger *)self name];
    name2 = [v6 name];
    if ([name isEqual:name2])
    {
      observationMode = [(TUITrigger *)self observationMode];
      v10 = observationMode == [v6 observationMode];
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