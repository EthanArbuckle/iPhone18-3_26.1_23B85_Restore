@interface HSStageProxy
- (BOOL)decodeStateFromData:(id)data;
- (BOOL)hsDecode:(void *)decode;
- (BOOL)hsEncode:(void *)encode;
- (id)description;
- (id)name;
- (void)lock;
- (void)unlock;
@end

@implementation HSStageProxy

- (BOOL)decodeStateFromData:(id)data
{
  dataCopy = data;
  v8 = dataCopy;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [(HSStageProxy *)self HSStageProxy_decodeStateFromData:v5];

  LOBYTE(self) = [v6 BOOLValue];
  return self;
}

- (BOOL)hsEncode:(void *)encode
{
  encodeStateToData = [(HSStageProxy *)self encodeStateToData];
  if (!encodeStateToData)
  {
    v5 = 0;
    goto LABEL_18;
  }

  HSUtil::Buffer::Buffer(v15, encodeStateToData);
  HSUtil::Decoder::Decoder(v12, v15);
  HSUtil::Decoder::decodeElement(v12, v9);
  if (!LODWORD(v12[0]))
  {
    if (!*encode)
    {
      HSUtil::Encoder::_encodeDecoder(encode, v9);
      if (!*encode)
      {
        v5 = 1;
        goto LABEL_8;
      }
    }

    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSStageProxy.mm", v16);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSStageProxy(Other) hsEncode:];
    }
  }

  v5 = 0;
LABEL_8:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v6 = v10;
  v10 = 0;
  if (v6)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v6);
    operator delete();
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v7 = v13;
  v13 = 0;
  if (v7)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v7);
    operator delete();
  }

  HSUtil::Buffer::~Buffer(v15);
LABEL_18:

  return v5;
}

- (BOOL)hsDecode:(void *)decode
{
  v5 = HSUtil::EncoderBuf::EncoderBuf(&v11);
  if (!v11)
  {
    HSUtil::Encoder::_encodeDecoder(v5, decode);
  }

  v6 = HSUtil::EncoderBuf::buffer(&v11);
  if (*(v6 + 5))
  {
    v7 = HSUtil::Buffer::getNSData(v6);
    v8 = [(HSStageProxy *)self decodeStateFromData:v7];
  }

  else
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSStageProxy.mm", v10);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSStageProxy(Other) hsDecode:];
    }

    v8 = 0;
  }

  HSUtil::Buffer::~Buffer(&v17);
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::~__value_func[abi:ne200100](&v12);
  return v8;
}

- (void)lock
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "-lock can't be called remotely");
}

- (void)unlock
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "-unlock can't be called remotely");
}

- (id)name
{
  v6.receiver = self;
  v6.super_class = HSStageProxy;
  name = [(HSStageProxy *)&v6 name];
  v3 = name;
  if (name)
  {
    v4 = name;
  }

  else
  {
    v4 = @"HSStageProxy";
  }

  return v4;
}

- (id)description
{
  name = [(HSStageProxy *)self name];
  v4 = [NSString stringWithFormat:@"<HSStageProxy: %p : %@>", self, name];

  return v4;
}

@end