@interface HSPreference
- (BOOL)hsDecode:(void *)a3;
- (BOOL)hsEncode:(void *)a3;
- (HSPreference)initWithKey:(id)a3 name:(id)a4 description:(id)a5;
@end

@implementation HSPreference

- (HSPreference)initWithKey:(id)a3 name:(id)a4 description:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HSPreferenceStage.mm" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"k"}];

    if (v11)
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
    objc_storeStrong(&v13->key, a3);
    objc_storeStrong(&v14->name, a4);
    objc_storeStrong(&v14->description, a5);
    v15 = v14;
  }

  return v14;
}

- (BOOL)hsEncode:(void *)a3
{
  if (!*a3)
  {
    *&v7 = *(a3 + 17);
    DWORD2(v7) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a3 + 56, &v7);
    HSUtil::Encoder::_writeTokenValue32(a3, 0xE8u, 0);
  }

  HSUtil::Encoder::encodeNSString(a3, self->key);
  HSUtil::Encoder::encodeNSString(a3, self->name);
  description = self->description;
  if (description)
  {
    HSUtil::Encoder::encodeNSString(a3, description);
  }

  else
  {
    if (*a3)
    {
      return 1;
    }

    LOBYTE(v7) = -116;
    HSUtil::Encoder::_write(a3, a3 + 17, &v7, 1uLL);
  }

  if (!*a3)
  {
    HSUtil::Encoder::_encodeContainerStop(a3);
  }

  return 1;
}

- (BOOL)hsDecode:(void *)a3
{
  HSUtil::Decoder::decodeArray(a3, v14);
  if (*a3)
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