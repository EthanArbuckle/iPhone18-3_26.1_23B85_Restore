@interface RestorationMailboxEncoder
+ (id)encoderWithLog:(id)log;
- (RestorationMailboxEncoder)initWithLog:(id)log;
- (id)encodeMailbox:(id)mailbox;
- (void)_encodeGenericMailbox:(id)mailbox coder:(id)coder;
- (void)_encodeSmartMailbox:(id)mailbox coder:(id)coder;
- (void)_encodeUnifiedMailbox:(id)mailbox coder:(id)coder;
@end

@implementation RestorationMailboxEncoder

+ (id)encoderWithLog:(id)log
{
  logCopy = log;
  v4 = [[RestorationMailboxEncoder alloc] initWithLog:logCopy];

  return v4;
}

- (RestorationMailboxEncoder)initWithLog:(id)log
{
  v8.receiver = self;
  v8.super_class = RestorationMailboxEncoder;
  v4 = [(RestorationMailboxEncoder *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if (log)
    {
      v4->_log = log;
    }

    else
    {
      v6 = sub_100243B10();
      v5->_log = v6;
    }
  }

  return v5;
}

- (id)encodeMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if (mailboxCopy)
  {
    v5 = [(RestorationMailboxEncoder *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [mailboxCopy ef_publicDescription];
      v15 = 138543362;
      v16 = ef_publicDescription;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "RestorationMailboxEncoder: Encoding mailbox: %{public}@", &v15, 0xCu);
    }

    v7 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    if ([mailboxCopy isSmartMailbox] & 1) != 0 || (objc_msgSend(mailboxCopy, "objectID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEphemeral"), v8, (v9))
    {
      if ([mailboxCopy isSmartMailbox])
      {
        v10 = mailboxCopy;
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
      [(RestorationMailboxEncoder *)self _encodeGenericMailbox:mailboxCopy coder:v7];
    }

    encodedData = [v7 encodedData];
    if ([encodedData length])
    {
      v11 = encodedData;
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

- (void)_encodeGenericMailbox:(id)mailbox coder:(id)coder
{
  mailboxCopy = mailbox;
  coderCopy = coder;
  v8 = [(RestorationMailboxEncoder *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [mailboxCopy ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_10048CAB8();
  }

  [coderCopy encodeInteger:1 forKey:@"SerializationType"];
  objectID = [mailboxCopy objectID];
  [coderCopy encodeObject:objectID forKey:@"ObjectID"];
}

- (void)_encodeSmartMailbox:(id)mailbox coder:(id)coder
{
  mailboxCopy = mailbox;
  coderCopy = coder;
  v8 = [(RestorationMailboxEncoder *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [mailboxCopy ef_publicDescription];
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
  v10 = mailboxCopy;
  v16 = v10;
  v17 = &v18;
  [v9 enumerateObjectsUsingBlock:&v12];

  if (v19[3] && (_MSSourceTypeIsValid() & 1) != 0)
  {
    [coderCopy encodeInteger:2 forKey:{@"SerializationType", v12, v13, v14, v15}];
    v11 = [NSNumber numberWithUnsignedInteger:v19[3]];
    [coderCopy encodeObject:v11 forKey:@"SmartMailboxSourceType"];
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

- (void)_encodeUnifiedMailbox:(id)mailbox coder:(id)coder
{
  mailboxCopy = mailbox;
  coderCopy = coder;
  v8 = [(RestorationMailboxEncoder *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [mailboxCopy ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_10048CB98();
  }

  [coderCopy encodeInteger:3 forKey:@"SerializationType"];
  [coderCopy encodeInteger:objc_msgSend(mailboxCopy forKey:{"type"), @"UnifiedMailboxType"}];
  name = [mailboxCopy name];
  [coderCopy encodeObject:name forKey:@"UnifiedMailboxName"];
}

@end