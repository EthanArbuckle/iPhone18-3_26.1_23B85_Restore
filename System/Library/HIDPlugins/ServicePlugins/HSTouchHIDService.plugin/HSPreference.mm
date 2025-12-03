@interface HSPreference
- (BOOL)hsDecode:(void *)decode;
- (BOOL)hsEncode:(void *)encode;
- (HSPreference)initWithKey:(id)key name:(id)name description:(id)description;
@end

@implementation HSPreference

- (HSPreference)initWithKey:(id)key name:(id)name description:(id)description
{
  keyCopy = key;
  nameCopy = name;
  descriptionCopy = description;
  if (keyCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HSPreferenceStage.mm" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"k"}];

    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  v18 = +[NSAssertionHandler currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"HSPreferenceStage.mm" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"n"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = HSPreference;
  v13 = [(HSPreference *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->key, key);
    objc_storeStrong(&v14->name, name);
    objc_storeStrong(&v14->description, description);
    v15 = v14;
  }

  return v14;
}

- (BOOL)hsEncode:(void *)encode
{
  if (!*encode)
  {
    *&v7 = *(encode + 17);
    DWORD2(v7) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](encode + 56, &v7);
    HSUtil::Encoder::_writeTokenValue32(encode, 0xE8u, 0);
  }

  HSUtil::Encoder::encodeNSString(encode, self->key);
  HSUtil::Encoder::encodeNSString(encode, self->name);
  description = self->description;
  if (description)
  {
    HSUtil::Encoder::encodeNSString(encode, description);
  }

  else
  {
    if (*encode)
    {
      return 1;
    }

    LOBYTE(v7) = -116;
    HSUtil::Encoder::_write(encode, encode + 17, &v7, 1uLL);
  }

  if (!*encode)
  {
    HSUtil::Encoder::_encodeContainerStop(encode);
  }

  return 1;
}

- (BOOL)hsDecode:(void *)decode
{
  HSUtil::Decoder::decodeArray(decode, v14);
  if (*decode)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPreferenceStage.mm", v17);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSPreference hsDecode:];
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v5 = HSUtil::Decoder::decodeNSString(v14);
  key = self->key;
  self->key = v5;

  if (LODWORD(v14[0]))
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPreferenceStage.mm", v17);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSPreference hsDecode:];
    }

    goto LABEL_16;
  }

  v7 = HSUtil::Decoder::decodeNSString(v14);
  name = self->name;
  self->name = v7;

  if (LODWORD(v14[0]))
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPreferenceStage.mm", v17);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSPreference hsDecode:];
    }

    goto LABEL_16;
  }

  if (HSUtil::Decoder::getElementType(v14) == 224)
  {
    v9 = HSUtil::Decoder::decodeNSString(v14);
  }

  else
  {
    HSUtil::Decoder::decodeNull(v14);
    v9 = 0;
  }

  description = self->description;
  self->description = v9;

  if (LODWORD(v14[0]))
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPreferenceStage.mm", v17);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSPreference hsDecode:];
    }

    goto LABEL_16;
  }

  v11 = 1;
LABEL_17:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v12 = v15;
  v15 = 0;
  if (v12)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v12);
    operator delete();
  }

  return v11;
}

- (void)hsDecode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end