@interface HSStage
- (BOOL)decodeStateFromData:(id)data;
- (BOOL)handleHSEncode:(void *)encode;
- (BOOL)hsDecode:(void *)decode;
- (BOOL)hsEncode:(void *)encode;
- (HSStage)init;
- (id).cxx_construct;
- (id)HSStageProxy_decodeStateFromData:(id)data;
- (id)consumers;
- (id)encodeStateToData;
- (id)name;
- (id)stateObject;
- (void)_pruneObservers;
- (void)addStageObserver:(id)observer;
- (void)consume:(id)consume;
- (void)dealloc;
- (void)handleConsume:(id)consume;
- (void)postNotification:(id)notification;
- (void)removeStageObserver:(id)observer;
- (void)setConsumers:(id)consumers;
- (void)setStateObject:(id)object;
@end

@implementation HSStage

- (HSStage)init
{
  v12.receiver = self;
  v12.super_class = HSStage;
  v2 = [(HSStage *)&v12 init];
  if (v2)
  {
    v3 = [objc_opt_class() instanceMethodForSelector:"consume:"];
    if (v3 == [HSStage instanceMethodForSelector:"consume:"])
    {
      v4 = [objc_opt_class() instanceMethodForSelector:"hsEncode:"];
      if (v4 == [HSStage instanceMethodForSelector:"hsEncode:"])
      {
        v5 = [objc_opt_class() instanceMethodForSelector:"hsDecode:"];
        if (v5 == [HSStage instanceMethodForSelector:"hsDecode:"])
        {
          HSUtil::ObjectLock::ObjectLock(v11, v2);
          consumers = v2->_state.consumers;
          v2->_state.consumers = &__NSArray0__struct;

          v7 = v2;
          HSUtil::ObjectLock::~ObjectLock(v11);
          goto LABEL_6;
        }

        v9 = "[[self class] instanceMethodForSelector:@selector(hsDecode:)] == [HSStage instanceMethodForSelector:@selector(hsDecode:)]";
        v10 = 34;
      }

      else
      {
        v9 = "[[self class] instanceMethodForSelector:@selector(hsEncode:)] == [HSStage instanceMethodForSelector:@selector(hsEncode:)]";
        v10 = 33;
      }
    }

    else
    {
      v9 = "[[self class] instanceMethodForSelector:@selector(consume:)] == [HSStage instanceMethodForSelector:@selector(consume:)]";
      v10 = 32;
    }

    __assert_rtn("[HSStage init]", "HSStage.mm", v10, v9);
  }

LABEL_6:

  return v2;
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    [HSStage dealloc];
  }

  v3.receiver = self;
  v3.super_class = HSStage;
  [(HSStage *)&v3 dealloc];
}

- (id)name
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)consumers
{
  HSUtil::ObjectLock::ObjectLock(v5, self);
  v3 = self->_state.consumers;
  HSUtil::ObjectLock::~ObjectLock(v5);

  return v3;
}

- (void)setConsumers:(id)consumers
{
  consumersCopy = consumers;
  HSUtil::ObjectLock::ObjectLock(v7, self);
  v5 = [consumersCopy copy];
  consumers = self->_state.consumers;
  self->_state.consumers = v5;

  HSUtil::ObjectLock::~ObjectLock(v7);
}

- (void)consume:(id)consume
{
  consumeCopy = consume;
  HSUtil::ObjectLock::ObjectLock(v5, self);
  [(HSStage *)self handleConsume:consumeCopy];
  HSUtil::ObjectLock::~ObjectLock(v5);
}

- (BOOL)hsEncode:(void *)encode
{
  HSUtil::ObjectLock::ObjectLock(v6, self);
  LOBYTE(encode) = [(HSStage *)self handleHSEncode:encode];
  HSUtil::ObjectLock::~ObjectLock(v6);
  return encode;
}

- (BOOL)hsDecode:(void *)decode
{
  HSUtil::ObjectLock::ObjectLock(v6, self);
  LOBYTE(decode) = [(HSStage *)self handleHSDecode:decode];
  HSUtil::ObjectLock::~ObjectLock(v6);
  return decode;
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_state.consumers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        [v9 consume:{consumeCopy, v10}];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)handleHSEncode:(void *)encode
{
  if (!*encode)
  {
    __src = -116;
    HSUtil::Encoder::_write(encode, encode + 17, &__src, 1uLL);
  }

  return 1;
}

- (void)addStageObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HSStage.mm" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
  }

  HSUtil::ObjectLock::ObjectLock(v8, self);
  objc_initWeak(&location, observerCopy);
  std::__hash_table<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::__emplace_unique_key_args<objc_object  {objcproto15HSStageObserver}*,objc_object  {objcproto15HSStageObserver} const {__weak}&>(&self->_state.observers.__table_.__bucket_list_.__ptr_, &location);
  objc_destroyWeak(&location);
  [(HSStage *)self _pruneObservers];
  HSUtil::ObjectLock::~ObjectLock(v8);
}

- (void)removeStageObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HSStage.mm" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
  }

  HSUtil::ObjectLock::ObjectLock(v8, self);
  objc_initWeak(&location, observerCopy);
  std::__hash_table<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::__erase_unique<objc_object  {objcproto15HSStageObserver}*>(&self->_state.observers.__table_.__bucket_list_.__ptr_, &location);
  objc_destroyWeak(&location);
  [(HSStage *)self _pruneObservers];
  HSUtil::ObjectLock::~ObjectLock(v8);
}

- (void)postNotification:(id)notification
{
  notificationCopy = notification;
  HSUtil::ObjectLock::ObjectLock(v9, self);
  std::unordered_set<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::unordered_set(v7, &self->_state.observers);
  [v9[1] unlock];
  LOBYTE(v9[0]) = 0;
  for (i = v8; i; i = *i)
  {
    WeakRetained = objc_loadWeakRetained(i + 2);
    [WeakRetained stage:self postedNotification:notificationCopy];
  }

  std::__hash_table<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::~__hash_table(v7);
  HSUtil::ObjectLock::~ObjectLock(v9);
}

- (void)_pruneObservers
{
  next = self->_state.observers.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      while (1)
      {
        WeakRetained = objc_loadWeakRetained(next + 2);

        if (!WeakRetained)
        {
          break;
        }

        next = *next;
        if (!next)
        {
          return;
        }
      }

      v5 = *next;
      std::__hash_table<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::remove(&self->_state.observers.__table_.__bucket_list_.__ptr_, next, v6);
      std::unique_ptr<std::__hash_node<objc_object  {objcproto15HSStageObserver}* {__weak},void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](v6);
      next = v5;
    }

    while (v5);
  }
}

- (id).cxx_construct
{
  std::recursive_mutex::recursive_mutex(&self->_state);
  self->_state.observers.__table_.__size_ = 0;
  *&self->_state.observers.__table_.__bucket_list_.__deleter_.__size_ = 0u;
  *&self->_state.consumers = 0u;
  self->_state.observers.__table_.__max_load_factor_ = 1.0;
  return self;
}

- (id)encodeStateToData
{
  v3 = HSUtil::EncoderBuf::EncoderBuf(v8);
  HSUtil::Encoder::encodeHSCodable(v3, self);
  v4 = HSUtil::EncoderBuf::buffer(v8);
  if (*(v4 + 5))
  {
    v5 = HSUtil::Buffer::getNSData(v4);
  }

  else
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSStage+Util.mm", v7);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSStage(Util) encodeStateToData];
    }

    v5 = 0;
  }

  HSUtil::Buffer::~Buffer(&v14);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::~__value_func[abi:ne200100](&v9);

  return v5;
}

- (BOOL)decodeStateFromData:(id)data
{
  HSUtil::Buffer::Buffer(v12, data);
  HSUtil::DecoderBuf::DecoderBuf(v8, v12);
  HSUtil::Buffer::~Buffer(v12);
  HSUtil::Decoder::decodeHSCodable(v8, self);
  v4 = v8[0];
  if (v8[0])
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSStage+Util.mm", v12);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSStage(Util) decodeStateFromData:];
    }
  }

  HSUtil::Buffer::~Buffer(&v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v5 = v9;
  v9 = 0;
  if (v5)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v5);
    operator delete();
  }

  return v4 == 0;
}

- (id)stateObject
{
  encodeStateToData = [(HSStage *)self encodeStateToData];
  if (encodeStateToData)
  {
    HSUtil::Buffer::Buffer(v12, encodeStateToData);
    HSUtil::DecoderBuf::DecoderBuf(v8, v12);
    HSUtil::Buffer::~Buffer(v12);
    v3 = HSUtil::Decoder::decodeObject(v8);
    v4 = v3;
    if (v8[0])
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSStage+Util.mm", v12);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSStage(Util) stateObject];
      }

      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    HSUtil::Buffer::~Buffer(&v11);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v6 = v9;
    v9 = 0;
    if (v6)
    {
      std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v6);
      operator delete();
    }
  }

  else
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSStage+Util.mm", v12);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSStage(Util) stateObject];
    }

    v5 = 0;
  }

  return v5;
}

- (void)setStateObject:(id)object
{
  objectCopy = object;
  v5 = HSUtil::EncoderBuf::EncoderBuf(v10);
  HSUtil::Encoder::encodeObject(v5, objectCopy);
  v6 = HSUtil::EncoderBuf::buffer(v10);
  if (*(v6 + 5))
  {
    v7 = HSUtil::Buffer::getNSData(v6);
    v8 = [(HSStage *)self decodeStateFromData:v7];

    if ((v8 & 1) == 0)
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSStage+Util.mm", v9);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSStage(Util) setStateObject:];
      }
    }
  }

  else
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSStage+Util.mm", v9);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSStage(Util) setStateObject:];
    }
  }

  HSUtil::Buffer::~Buffer(&v16);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::~__value_func[abi:ne200100](&v11);
}

- (id)HSStageProxy_decodeStateFromData:(id)data
{
  v3 = HSProxySynth::HSStageProxy_decodeStateFromData_call1<BOOL>(self, data);

  return v3;
}

@end