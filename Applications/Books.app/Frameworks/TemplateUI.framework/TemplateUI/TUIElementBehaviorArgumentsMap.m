@interface TUIElementBehaviorArgumentsMap
- (BOOL)isEqual:(id)a3;
- (TUIElementBehaviorArgumentsMap)initWithBehavior:(id)a3 arguments:(id)a4;
@end

@implementation TUIElementBehaviorArgumentsMap

- (TUIElementBehaviorArgumentsMap)initWithBehavior:(id)a3 arguments:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TUIElementBehaviorArgumentsMap;
  v8 = [(TUIElementBehaviorArgumentsMap *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    behavior = v8->_behavior;
    v8->_behavior = v9;

    v11 = [v7 copy];
    arguments = v8->_arguments;
    v8->_arguments = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = v7;
    if (!v7)
    {
      goto LABEL_8;
    }

    behavior = self->_behavior;
    v10 = [(TUIElementBehaviorArgumentsMap *)v7 behavior];
    v11 = v10;
    if (behavior == v10)
    {
    }

    else
    {
      v12 = self->_behavior;
      v13 = [(TUIElementBehaviorArgumentsMap *)v8 behavior];
      LODWORD(v12) = [(NSString *)v12 isEqualToString:v13];

      if (!v12)
      {
LABEL_8:
        v14 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    arguments = self->_arguments;
    v16 = [(TUIElementBehaviorArgumentsMap *)v8 arguments];
    if (arguments == v16)
    {
      v14 = 1;
    }

    else
    {
      v17 = self->_arguments;
      v18 = [(TUIElementBehaviorArgumentsMap *)v8 arguments];
      v14 = [(NSDictionary *)v17 isEqualToDictionary:v18];
    }

    goto LABEL_15;
  }

  v14 = 1;
LABEL_16:

  return v14 & 1;
}

@end