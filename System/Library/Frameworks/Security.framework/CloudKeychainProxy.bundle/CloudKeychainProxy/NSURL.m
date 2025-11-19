@interface NSURL
- (BOOL)writePlist:(id)a3;
- (id)readPlist;
@end

@implementation NSURL

- (id)readPlist
{
  v12 = 0;
  v3 = [NSData dataWithContentsOfURL:self options:0 error:&v12];
  v4 = v12;
  v5 = v4;
  if (v3)
  {
    v10 = 0;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    v6 = [NSPropertyListSerialization propertyListWithData:v3 options:2 format:&v11 error:&v10];
    v7 = v10;

    if (!v6)
    {
      v8 = sub_10000AE54("SecError");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v14 = self;
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "could not deserialize PersistentState from %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = v4;
  }

  return v6;
}

- (BOOL)writePlist:(id)a3
{
  v4 = a3;
  if ([NSPropertyListSerialization propertyList:v4 isValidForFormat:100])
  {
    v14 = 0;
    v5 = [NSPropertyListSerialization dataWithPropertyList:v4 format:100 options:0 error:&v14];
    v6 = v14;
    v7 = v6;
    if (v5)
    {
      v13 = v6;
      v8 = 1;
      v9 = [v5 writeToURL:self options:1 error:&v13];
      v10 = v13;

      if (v9)
      {
LABEL_13:

        goto LABEL_14;
      }

      v11 = sub_10000AE54("SecError");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "error writing PersistentState to file: %@", buf, 0xCu);
      }

      v7 = v10;
    }

    else
    {
      v11 = sub_10000AE54("SecError");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "error serializing PersistentState to xml: %@", buf, 0xCu);
      }
    }

    v8 = 0;
    v10 = v7;
    goto LABEL_13;
  }

  v10 = sub_10000AE54("SecError");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "can't save PersistentState as XML", buf, 2u);
  }

  v8 = 0;
LABEL_14:

  return v8;
}

@end