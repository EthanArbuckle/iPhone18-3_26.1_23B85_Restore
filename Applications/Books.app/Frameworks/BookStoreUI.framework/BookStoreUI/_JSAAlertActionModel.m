@interface _JSAAlertActionModel
+ (int64_t)_alertActionStyleForName:(id)a3;
- (_JSAAlertActionModel)initWithAction:(id)a3;
@end

@implementation _JSAAlertActionModel

- (_JSAAlertActionModel)initWithAction:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = _JSAAlertActionModel;
  v5 = [(_JSAAlertActionModel *)&v34 init];
  if (v5)
  {
    v6 = [v4 valueForProperty:@"actionType"];
    v7 = [v4 valueForProperty:@"option"];
    v8 = [v4 valueForProperty:@"title"];
    v9 = [v4 valueForProperty:@"selected"];
    v33 = [v4 valueForProperty:@"style"];
    v10 = [v4 valueForProperty:@"type"];
    v32 = [v4 valueForProperty:@"placeholderText"];
    v31 = [v4 valueForProperty:@"allowsEmpty"];
    if ([v6 isString])
    {
      v11 = [v6 toString];
    }

    else
    {
      v11 = &stru_3960F8;
    }

    actionType = v5->_actionType;
    v5->_actionType = &v11->isa;

    if ([v7 isString])
    {
      v13 = [v7 toString];
    }

    else
    {
      v13 = &stru_3960F8;
    }

    option = v5->_option;
    v5->_option = &v13->isa;

    if ([v8 isString])
    {
      v15 = [v8 toString];
    }

    else
    {
      v15 = &stru_3960F8;
    }

    title = v5->_title;
    v5->_title = &v15->isa;

    v17 = [v4 valueForProperty:@"callback"];
    callback = v5->_callback;
    v5->_callback = v17;

    v19 = [v9 isBoolean];
    if (v19)
    {
      LOBYTE(v19) = [v9 toBool];
    }

    v20 = v8;
    v5->_selected = v19;
    v21 = v7;
    v22 = v6;
    if ([v33 isString])
    {
      v23 = objc_opt_class();
      v24 = [v33 toString];
      v5->_style = [v23 _alertActionStyleForName:v24];
    }

    else
    {
      v5->_style = 0;
    }

    if ([v10 isString])
    {
      v25 = objc_opt_class();
      v26 = [v10 toString];
      v5->_type = [v25 _modelTypeForString:v26];
    }

    else
    {
      v5->_type = 0;
    }

    if ([v32 isString])
    {
      v27 = [v32 toString];
    }

    else
    {
      v27 = 0;
    }

    placeholderText = v5->_placeholderText;
    v5->_placeholderText = v27;

    v29 = [v31 isBoolean];
    if (v29)
    {
      LOBYTE(v29) = [v31 toBool];
    }

    v5->_allowsEmpty = v29;
  }

  return v5;
}

+ (int64_t)_alertActionStyleForName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"destructive"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [v3 isEqualToString:@"cancel"];
  }

  return v4;
}

@end