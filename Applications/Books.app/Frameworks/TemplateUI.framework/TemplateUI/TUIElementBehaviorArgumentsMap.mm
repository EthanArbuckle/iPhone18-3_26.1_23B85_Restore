@interface TUIElementBehaviorArgumentsMap
- (BOOL)isEqual:(id)equal;
- (TUIElementBehaviorArgumentsMap)initWithBehavior:(id)behavior arguments:(id)arguments;
@end

@implementation TUIElementBehaviorArgumentsMap

- (TUIElementBehaviorArgumentsMap)initWithBehavior:(id)behavior arguments:(id)arguments
{
  behaviorCopy = behavior;
  argumentsCopy = arguments;
  v14.receiver = self;
  v14.super_class = TUIElementBehaviorArgumentsMap;
  v8 = [(TUIElementBehaviorArgumentsMap *)&v14 init];
  if (v8)
  {
    v9 = [behaviorCopy copy];
    behavior = v8->_behavior;
    v8->_behavior = v9;

    v11 = [argumentsCopy copy];
    arguments = v8->_arguments;
    v8->_arguments = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v6 = equalCopy;
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
    behavior = [(TUIElementBehaviorArgumentsMap *)v7 behavior];
    v11 = behavior;
    if (behavior == behavior)
    {
    }

    else
    {
      v12 = self->_behavior;
      behavior2 = [(TUIElementBehaviorArgumentsMap *)v8 behavior];
      LODWORD(v12) = [(NSString *)v12 isEqualToString:behavior2];

      if (!v12)
      {
LABEL_8:
        v14 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    arguments = self->_arguments;
    arguments = [(TUIElementBehaviorArgumentsMap *)v8 arguments];
    if (arguments == arguments)
    {
      v14 = 1;
    }

    else
    {
      v17 = self->_arguments;
      arguments2 = [(TUIElementBehaviorArgumentsMap *)v8 arguments];
      v14 = [(NSDictionary *)v17 isEqualToDictionary:arguments2];
    }

    goto LABEL_15;
  }

  v14 = 1;
LABEL_16:

  return v14 & 1;
}

@end