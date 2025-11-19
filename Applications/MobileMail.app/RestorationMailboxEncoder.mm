@interface RestorationMailboxEncoder
+ (id)encoderWithLog:(id)a3;
- (RestorationMailboxEncoder)initWithLog:(id)a3;
- (id)encodeMailbox:(id)a3;
- (void)_encodeGenericMailbox:(id)a3 coder:(id)a4;
- (void)_encodeSmartMailbox:(id)a3 coder:(id)a4;
- (void)_encodeUnifiedMailbox:(id)a3 coder:(id)a4;
@end

@implementation RestorationMailboxEncoder

+ (id)encoderWithLog:(id)a3
{
  v3 = a3;
  v4 = [[RestorationMailboxEncoder alloc] initWithLog:v3];

  return v4;
}

- (RestorationMailboxEncoder)initWithLog:(id)a3
{
  v8.receiver = self;
  v8.super_class = RestorationMailboxEncoder;
  v4 = [(RestorationMailboxEncoder *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      v4->_log = a3;
    }

    else
    {
      v6 = sub_100243B10();
      v5->_log = v6;
    }
  }

  return v5;
}

- (id)encodeMailbox:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RestorationMailboxEncoder *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 ef_publicDescription];
      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "RestorationMailboxEncoder: Encoding mailbox: %{public}@", &v15, 0xCu);
    }

    v7 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    if ([v4 isSmartMailbox] & 1) != 0 || (objc_msgSend(v4, "objectID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEphemeral"), v8, (v9))
    {
      if ([v4 isSmartMailbox])
      {
        v10 = v4;
        if ([v10 smartMailboxType] == 8)
        {
          [(RestorationMailboxEncoder *)self _encodeUnifiedMailbox:v10 coder:v7];
        }

        else
        {
          [(RestorationMailboxEncoder *)self _encodeSmartMailbox:v10 coder:v7];
        }
      }
    }

    else
    {
      [(RestorationMailboxEncoder *)self _encodeGenericMailbox:v4 coder:v7];
    }

    v12 = [v7 encodedData];
    if ([v12 length])
    {
      v11 = v12;
    }

    else
    {
      v13 = [(RestorationMailboxEncoder *)self log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10048CA38();
      }

      v11 = 0;
    }
  }

  else
  {
    v7 = [(RestorationMailboxEncoder *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10048CA78();
    }

    v11 = 0;
  }

  return v11;
}

- (void)_encodeGenericMailbox:(id)a3 coder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RestorationMailboxEncoder *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [v6 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_10048CAB8();
  }

  [v7 encodeInteger:1 forKey:@"SerializationType"];
  v9 = [v6 objectID];
  [v7 encodeObject:v9 forKey:@"ObjectID"];
}

- (void)_encodeSmartMailbox:(id)a3 coder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RestorationMailboxEncoder *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [v6 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_10048CAFC();
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v9 = +[SharedMailboxController allSharedInstances];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10024416C;
  v15 = &unk_1006565E8;
  v10 = v6;
  v16 = v10;
  v17 = &v18;
  [v9 enumerateObjectsUsingBlock:&v12];

  if (v19[3] && (_MSSourceTypeIsValid() & 1) != 0)
  {
    [v7 encodeInteger:2 forKey:{@"SerializationType", v12, v13, v14, v15}];
    v11 = [NSNumber numberWithUnsignedInteger:v19[3]];
    [v7 encodeObject:v11 forKey:@"SmartMailboxSourceType"];
  }

  else
  {
    v11 = [(RestorationMailboxEncoder *)self log:v12];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [v10 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10048CB40();
    }
  }

  _Block_object_dispose(&v18, 8);
}

- (void)_encodeUnifiedMailbox:(id)a3 coder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RestorationMailboxEncoder *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [v6 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_10048CB98();
  }

  [v7 encodeInteger:3 forKey:@"SerializationType"];
  [v7 encodeInteger:objc_msgSend(v6 forKey:{"type"), @"UnifiedMailboxType"}];
  v9 = [v6 name];
  [v7 encodeObject:v9 forKey:@"UnifiedMailboxName"];
}

@end