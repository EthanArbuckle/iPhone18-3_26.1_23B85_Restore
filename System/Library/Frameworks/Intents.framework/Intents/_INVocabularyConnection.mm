@interface _INVocabularyConnection
+ (void)initialize;
- (_INVocabularyConnection)init;
- (id)_connect;
- (id)settingsService;
- (void)_clearConnection;
- (void)dealloc;
@end

@implementation _INVocabularyConnection

+ (void)initialize
{
  if (objc_opt_class() == self && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

- (_INVocabularyConnection)init
{
  v6.receiver = self;
  v6.super_class = _INVocabularyConnection;
  v2 = [(_INVocabularyConnection *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("INVocabularyConnectionQueue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_connectionValid = 0;
  }

  return v2;
}

- (id)settingsService
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__71931;
  v10 = __Block_byref_object_dispose__71932;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42___INVocabularyConnection_settingsService__block_invoke;
  v5[3] = &unk_1E7282B68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_connect
{
  connection = self->_connection;
  if (!connection)
  {
    objc_initWeak(&location, self);
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.siri.vocabularyupdates" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0361938];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    objc_initWeak(&from, self->_connection);
    v8 = self->_connection;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __35___INVocabularyConnection__connect__block_invoke;
    v17[3] = &unk_1E7282B40;
    objc_copyWeak(&v18, &location);
    objc_copyWeak(&v19, &from);
    [(NSXPCConnection *)v8 setInterruptionHandler:v17];
    v9 = self->_connection;
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __35___INVocabularyConnection__connect__block_invoke_69;
    v14 = &unk_1E7282B40;
    objc_copyWeak(&v15, &location);
    objc_copyWeak(&v16, &from);
    [(NSXPCConnection *)v9 setInvalidationHandler:&v11];
    [(NSXPCConnection *)self->_connection resume:v11];
    self->_connectionValid = 1;
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

- (void)dealloc
{
  [(_INVocabularyConnection *)self _clearConnection];
  v3.receiver = self;
  v3.super_class = _INVocabularyConnection;
  [(_INVocabularyConnection *)&v3 dealloc];
}

- (void)_clearConnection
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___INVocabularyConnection__clearConnection__block_invoke;
  block[3] = &unk_1E72882F8;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end