@interface CarCardAccessory
- (BOOL)isEqual:(id)equal;
- (CarCardAccessory)initWithSymbolName:(id)name identifier:(id)identifier handler:(id)handler;
- (CarCardAccessory)initWithType:(unint64_t)type;
- (unint64_t)hash;
@end

@implementation CarCardAccessory

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = CarCardAccessory;
  v3 = [(CarCardAccessory *)&v10 hash];
  identifier = [(CarCardAccessory *)self identifier];
  v5 = [identifier hash];
  v6 = v5 ^ [(CarCardAccessory *)self type];
  symbolName = [(CarCardAccessory *)self symbolName];
  v8 = v6 ^ [symbolName hash];

  return v8 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v19 = 1;
  }

  else
  {
    if ([(CarCardAccessory *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      type = [(CarCardAccessory *)v5 type];
      if (type != [(CarCardAccessory *)self type])
      {
        v19 = 0;
LABEL_25:

        goto LABEL_26;
      }

      identifier = [(CarCardAccessory *)v5 identifier];
      identifier2 = [(CarCardAccessory *)self identifier];
      v9 = identifier;
      v10 = identifier2;
      if (v9 | v10)
      {
        v11 = [v9 isEqual:v10];

        if (!v11)
        {
          v19 = 0;
LABEL_24:

          goto LABEL_25;
        }
      }

      symbolName = [(CarCardAccessory *)v5 symbolName];
      symbolName2 = [(CarCardAccessory *)self symbolName];
      v14 = symbolName;
      v15 = symbolName2;
      if (v14 | v15)
      {
        v16 = [v14 isEqual:v15];

        if (!v16)
        {
          v19 = 0;
LABEL_23:

          goto LABEL_24;
        }
      }

      handler = [(CarCardAccessory *)self handler];
      if (handler && ([(CarCardAccessory *)v5 handler], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v19 = 1;
      }

      else
      {
        handler2 = [(CarCardAccessory *)self handler];
        if (handler2)
        {

          v19 = 0;
          if (!handler)
          {
            goto LABEL_22;
          }
        }

        else
        {
          handler3 = [(CarCardAccessory *)v5 handler];
          v19 = handler3 == 0;

          if (!handler)
          {
LABEL_22:

            goto LABEL_23;
          }
        }

        v18 = 0;
      }

      goto LABEL_22;
    }

    v19 = 0;
  }

LABEL_26:

  return v19;
}

- (CarCardAccessory)initWithSymbolName:(id)name identifier:(id)identifier handler:(id)handler
{
  nameCopy = name;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = [(CarCardAccessory *)self initWithType:4];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [nameCopy copy];
    symbolName = v11->_symbolName;
    v11->_symbolName = v14;

    v16 = [handlerCopy copy];
    handler = v11->_handler;
    v11->_handler = v16;
  }

  return v11;
}

- (CarCardAccessory)initWithType:(unint64_t)type
{
  v12.receiver = self;
  v12.super_class = CarCardAccessory;
  v4 = [(CarCardAccessory *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    if (type > 2)
    {
      if (type == 3)
      {
        identifier = v4->_identifier;
        v7 = @"Share";
        goto LABEL_15;
      }

      if (type == 4)
      {
        v8 = sub_10006D178();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = [NSString stringWithFormat:@"Use -initWithSymbolName:identifier:handler: for this type"];
          *buf = 136316162;
          v14 = "[CarCardAccessory initWithType:]";
          v15 = 2080;
          v16 = "CarCardAccessory.m";
          v17 = 1024;
          v18 = 32;
          v19 = 2080;
          v20 = "NO";
          v21 = 2112;
          v22 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
        }

        if (sub_100E03634())
        {
          identifier = sub_10006D178();
          if (os_log_type_enabled(identifier, OS_LOG_TYPE_ERROR))
          {
            v10 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v14 = v10;
            _os_log_impl(&_mh_execute_header, identifier, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
      if (type - 1 < 2)
      {
        identifier = v4->_identifier;
        v7 = @"Back";
LABEL_15:
        v4->_identifier = &v7->isa;
LABEL_16:

        return v5;
      }

      if (!type)
      {
        identifier = v4->_identifier;
        v7 = &stru_1016631F0;
        goto LABEL_15;
      }
    }
  }

  return v5;
}

@end