@interface AUAudioUnitBus_XPC
- (AUAudioUnitBus_XPC)initWithCoder:(id)a3;
- (BOOL)isEnabled;
- (BOOL)setFormat:(id)a3 error:(id *)a4;
- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)propertyChanged:(id)a3;
- (void)removeObserver:(id)a3 forKeyPath:(id)a4;
- (void)removeObserver:(id)a3 forKeyPath:(id)a4 context:(void *)a5;
@end

@implementation AUAudioUnitBus_XPC

- (void)propertyChanged:(id)a3
{
  v4 = a3;
  [(AUAudioUnitBus_XPC *)self willChangeValueForKey:v4[1]];
  [(AUAudioUnitBus_XPC *)self didChangeValueForKey:v4[1]];
}

- (BOOL)isEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_audioUnit);

  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(&self->_audioUnit);
    v4 = [AUAudioUnitProperty propertyWithKey:@"enabled" scope:self->_scope element:self->_element];
    v5 = [WeakRetained _getValueForProperty:v4 error:0];

    LOBYTE(WeakRetained) = [v5 BOOLValue];
  }

  return WeakRetained;
}

- (BOOL)setFormat:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (self->_format != v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_remoteAUXPCConnection);

    if (WeakRetained)
    {
      v9 = objc_loadWeakRetained(&self->_remoteAUXPCConnection);
      caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_message(&v19, v9);

      v10 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_proxy(&v19);
      element = self->_element;
      scope = self->_scope;
      v13 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::reply(&v19);
      [v10 setBusFormat:element scope:scope format:v7 reply:v13];

      v14 = v22;
      WeakRetained = v21;

      std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](&v20);
      if (WeakRetained)
      {
        if (a4)
        {
          v15 = WeakRetained;
          v16 = 0;
          *a4 = WeakRetained;
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_11;
      }

      WeakRetained = v14;
    }

    objc_storeStrong(&self->_format, a3);
    if (WeakRetained)
    {
      v14 = objc_loadWeakRetained(&self->_audioUnit);
      [v14 propertiesChanged:WeakRetained];
      v16 = 1;
LABEL_11:

      goto LABEL_12;
    }
  }

  v16 = 1;
LABEL_12:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)removeObserver:(id)a3 forKeyPath:(id)a4
{
  v15[4] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v12.receiver = self;
  v12.super_class = AUAudioUnitBus_XPC;
  [(AUAudioUnitBus *)&v12 removeObserver:a3 forKeyPath:v6];
  if (!self->_removingObserverWithContext)
  {
    WeakRetained = objc_loadWeakRetained(&self->_audioUnit);
    std::recursive_mutex::lock((WeakRetained + 584));

    v8 = [AUAudioUnitProperty propertyWithKey:v6 scope:self->_scope element:self->_element];
    v9 = objc_loadWeakRetained(&self->_remoteAUXPCConnection);
    v13[0] = &unk_1F033F978;
    v13[1] = &__block_literal_global_30;
    v13[3] = v13;
    caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v14, v9, v13);
    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v13);

    v10 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(&v14);
    [v10 removePropertyObserver:v8 context:0 reply:&__block_literal_global_32];

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v15);
    std::recursive_mutex::unlock((WeakRetained + 584));
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)a3 forKeyPath:(id)a4 context:(void *)a5
{
  v19[4] = *MEMORY[0x1E69E9840];
  v8 = a4;
  self->_removingObserverWithContext = 1;
  v16.receiver = self;
  v16.super_class = AUAudioUnitBus_XPC;
  [(AUAudioUnitBus *)&v16 removeObserver:a3 forKeyPath:v8 context:a5];
  WeakRetained = objc_loadWeakRetained(&self->_audioUnit);
  v10 = WeakRetained == 0;

  if (!v10)
  {
    v11 = objc_loadWeakRetained(&self->_audioUnit);
    std::recursive_mutex::lock((v11 + 584));

    v12 = [AUAudioUnitProperty propertyWithKey:v8 scope:self->_scope element:self->_element];
    v13 = objc_loadWeakRetained(&self->_remoteAUXPCConnection);
    v17[0] = &unk_1F033F978;
    v17[1] = &__block_literal_global_24;
    v17[3] = v17;
    caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v18, v13, v17);
    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v17);

    v14 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(&v18);
    [v14 removePropertyObserver:v12 context:a5 reply:&__block_literal_global_26];

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v19);
    std::recursive_mutex::unlock((v11 + 584));
  }

  self->_removingObserverWithContext = 0;

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6
{
  v19[4] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v16.receiver = self;
  v16.super_class = AUAudioUnitBus_XPC;
  [(AUAudioUnitBus *)&v16 addObserver:a3 forKeyPath:v10 options:a5 context:a6];
  WeakRetained = objc_loadWeakRetained(&self->_audioUnit);
  std::recursive_mutex::lock((WeakRetained + 584));

  v12 = [AUAudioUnitProperty propertyWithKey:v10 scope:self->_scope element:self->_element];
  v13 = objc_loadWeakRetained(&self->_remoteAUXPCConnection);
  v17[0] = &unk_1F033F978;
  v17[1] = &__block_literal_global_4303;
  v17[3] = v17;
  caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v18, v13, v17);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v17);

  v14 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(&v18);
  [v14 addPropertyObserver:v12 context:a6 reply:&__block_literal_global_20];

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v19);
  std::recursive_mutex::unlock((WeakRetained + 584));

  v15 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AUAudioUnitBus_XPC;
  [(AUAudioUnitBus *)&v2 dealloc];
}

- (AUAudioUnitBus_XPC)initWithCoder:(id)a3
{
  v4 = a3;
  {
    v11 = objc_alloc(MEMORY[0x1E695DFD8]);
    v12 = objc_opt_self();
    v13 = objc_opt_self();
    -[AUAudioUnitBus_XPC initWithCoder:]::layoutTagArrayClasses = [v11 initWithObjects:{v12, v13, 0}];
  }

  {
    v14 = objc_alloc(MEMORY[0x1E695DFD8]);
    AVAudioFormatClass = getAVAudioFormatClass();
    -[AUAudioUnitBus_XPC initWithCoder:]::formatClasses = [v14 initWithObjects:{AVAudioFormatClass, getAVAudioChannelLayoutClass(), 0}];
  }

  v16.receiver = self;
  v16.super_class = AUAudioUnitBus_XPC;
  v5 = [(AUAudioUnitBus_XPC *)&v16 init];
  if (v5)
  {
    v5->_scope = [v4 decodeIntegerForKey:@"scope"];
    v5->_element = [v4 decodeIntegerForKey:@"element"];
    v6 = [v4 decodeObjectOfClasses:-[AUAudioUnitBus_XPC initWithCoder:]::formatClasses forKey:@"format"];
    format = v5->_format;
    v5->_format = v6;

    v8 = [v4 decodeObjectOfClasses:-[AUAudioUnitBus_XPC initWithCoder:]::layoutTagArrayClasses forKey:@"supportedChannelLayoutTags"];
    supportedChannelLayoutTags = v5->_supportedChannelLayoutTags;
    v5->_supportedChannelLayoutTags = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_scope forKey:@"scope"];
  [v4 encodeInteger:self->_element forKey:@"element"];
  [v4 encodeObject:self->_format forKey:@"format"];
  [v4 encodeObject:self->_supportedChannelLayoutTags forKey:@"supportedChannelLayoutTags"];
}

@end