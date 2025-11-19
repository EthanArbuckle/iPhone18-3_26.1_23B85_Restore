@interface CarCardAccessory
- (BOOL)isEqual:(id)a3;
- (CarCardAccessory)initWithSymbolName:(id)a3 identifier:(id)a4 handler:(id)a5;
- (CarCardAccessory)initWithType:(unint64_t)a3;
- (unint64_t)hash;
@end

@implementation CarCardAccessory

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = CarCardAccessory;
  v3 = [(CarCardAccessory *)&v10 hash];
  v4 = [(CarCardAccessory *)self identifier];
  v5 = [v4 hash];
  v6 = v5 ^ [(CarCardAccessory *)self type];
  v7 = [(CarCardAccessory *)self symbolName];
  v8 = v6 ^ [v7 hash];

  return v8 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v19 = 1;
  }

  else
  {
    if ([(CarCardAccessory *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      v6 = [(CarCardAccessory *)v5 type];
      if (v6 != [(CarCardAccessory *)self type])
      {
        v19 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v7 = [(CarCardAccessory *)v5 identifier];
      v8 = [(CarCardAccessory *)self identifier];
      v9 = v7;
      v10 = v8;
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

      v12 = [(CarCardAccessory *)v5 symbolName];
      v13 = [(CarCardAccessory *)self symbolName];
      v14 = v12;
      v15 = v13;
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

      v17 = [(CarCardAccessory *)self handler];
      if (v17 && ([(CarCardAccessory *)v5 handler], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v19 = 1;
      }

      else
      {
        v20 = [(CarCardAccessory *)self handler];
        if (v20)
        {

          v19 = 0;
          if (!v17)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v21 = [(CarCardAccessory *)v5 handler];
          v19 = v21 == 0;

          if (!v17)
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

- (CarCardAccessory)initWithSymbolName:(id)a3 identifier:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CarCardAccessory *)self initWithType:4];
  if (v11)
  {
    v12 = [v9 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v8 copy];
    symbolName = v11->_symbolName;
    v11->_symbolName = v14;

    v16 = [v10 copy];
    handler = v11->_handler;
    v11->_handler = v16;
  }

  return v11;
}

- (CarCardAccessory)initWithType:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = CarCardAccessory;
  v4 = [(CarCardAccessory *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        identifier = v4->_identifier;
        v7 = @"Share";
        goto LABEL_15;
      }

      if (a3 == 4)
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
      if (a3 - 1 < 2)
      {
        identifier = v4->_identifier;
        v7 = @"Back";
LABEL_15:
        v4->_identifier = &v7->isa;
LABEL_16:

        return v5;
      }

      if (!a3)
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