@interface ACXTimedIdentifierList
- (ACXTimedIdentifierList)initWithTimeout:(double)timeout;
- (BOOL)addIdentifierIfNotPresent:(id)present;
- (BOOL)containsIdentifier:(id)identifier;
- (BOOL)removeIdentifier:(id)identifier;
- (void)updateTimeOnIdentifier:(id)identifier;
@end

@implementation ACXTimedIdentifierList

- (ACXTimedIdentifierList)initWithTimeout:(double)timeout
{
  v12.receiver = self;
  v12.super_class = ACXTimedIdentifierList;
  v4 = [(ACXTimedIdentifierList *)&v12 init];
  v5 = v4;
  if (v4)
  {
    if (timeout <= 0.0)
    {
      sub_10005A1A0();
    }

    v4->_timeoutInSeconds = timeout;
    v6 = objc_opt_new();
    list = v5->_list;
    v5->_list = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.appconduitd.TimedIdentifierList", v8);
    queue = v5->_queue;
    v5->_queue = v9;
  }

  return v5;
}

- (BOOL)addIdentifierIfNotPresent:(id)present
{
  presentCopy = present;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(ACXTimedIdentifierList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004EDE0;
  block[3] = &unk_10008CA70;
  block[4] = self;
  v9 = presentCopy;
  v10 = &v11;
  v6 = presentCopy;
  dispatch_sync(queue, block);

  LOBYTE(presentCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return presentCopy;
}

- (void)updateTimeOnIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(ACXTimedIdentifierList *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004F2B4;
  v7[3] = &unk_10008CC38;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)removeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(ACXTimedIdentifierList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004F46C;
  block[3] = &unk_10008CA70;
  block[4] = self;
  v9 = identifierCopy;
  v10 = &v11;
  v6 = identifierCopy;
  dispatch_sync(queue, block);

  LOBYTE(identifierCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return identifierCopy;
}

- (BOOL)containsIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(ACXTimedIdentifierList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004F648;
  block[3] = &unk_10008CA20;
  v9 = identifierCopy;
  v10 = &v11;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);

  LOBYTE(identifierCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return identifierCopy;
}

@end