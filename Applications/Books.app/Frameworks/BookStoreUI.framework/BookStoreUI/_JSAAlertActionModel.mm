@interface _JSAAlertActionModel
+ (int64_t)_alertActionStyleForName:(id)name;
- (_JSAAlertActionModel)initWithAction:(id)action;
@end

@implementation _JSAAlertActionModel

- (_JSAAlertActionModel)initWithAction:(id)action
{
  actionCopy = action;
  v34.receiver = self;
  v34.super_class = _JSAAlertActionModel;
  v5 = [(_JSAAlertActionModel *)&v34 init];
  if (v5)
  {
    v6 = [actionCopy valueForProperty:@"actionType"];
    v7 = [actionCopy valueForProperty:@"option"];
    v8 = [actionCopy valueForProperty:@"title"];
    v9 = [actionCopy valueForProperty:@"selected"];
    v33 = [actionCopy valueForProperty:@"style"];
    v10 = [actionCopy valueForProperty:@"type"];
    v32 = [actionCopy valueForProperty:@"placeholderText"];
    v31 = [actionCopy valueForProperty:@"allowsEmpty"];
    if ([v6 isString])
    {
      toString = [v6 toString];
    }

    else
    {
      toString = &stru_3960F8;
    }

    actionType = v5->_actionType;
    v5->_actionType = &toString->isa;

    if ([v7 isString])
    {
      toString2 = [v7 toString];
    }

    else
    {
      toString2 = &stru_3960F8;
    }

    option = v5->_option;
    v5->_option = &toString2->isa;

    if ([v8 isString])
    {
      toString3 = [v8 toString];
    }

    else
    {
      toString3 = &stru_3960F8;
    }

    title = v5->_title;
    v5->_title = &toString3->isa;

    v17 = [actionCopy valueForProperty:@"callback"];
    callback = v5->_callback;
    v5->_callback = v17;

    isBoolean = [v9 isBoolean];
    if (isBoolean)
    {
      LOBYTE(isBoolean) = [v9 toBool];
    }

    v20 = v8;
    v5->_selected = isBoolean;
    v21 = v7;
    v22 = v6;
    if ([v33 isString])
    {
      v23 = objc_opt_class();
      toString4 = [v33 toString];
      v5->_style = [v23 _alertActionStyleForName:toString4];
    }

    else
    {
      v5->_style = 0;
    }

    if ([v10 isString])
    {
      v25 = objc_opt_class();
      toString5 = [v10 toString];
      v5->_type = [v25 _modelTypeForString:toString5];
    }

    else
    {
      v5->_type = 0;
    }

    if ([v32 isString])
    {
      toString6 = [v32 toString];
    }

    else
    {
      toString6 = 0;
    }

    placeholderText = v5->_placeholderText;
    v5->_placeholderText = toString6;

    isBoolean2 = [v31 isBoolean];
    if (isBoolean2)
    {
      LOBYTE(isBoolean2) = [v31 toBool];
    }

    v5->_allowsEmpty = isBoolean2;
  }

  return v5;
}

+ (int64_t)_alertActionStyleForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"destructive"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [nameCopy isEqualToString:@"cancel"];
  }

  return v4;
}

@end