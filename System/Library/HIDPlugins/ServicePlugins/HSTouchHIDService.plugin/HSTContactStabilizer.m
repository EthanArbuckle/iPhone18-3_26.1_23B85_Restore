@interface HSTContactStabilizer
- (BOOL)handleHSDecode:(void *)a3;
- (BOOL)handleHSEncode:(void *)a3;
- (HSTContactStabilizer)initWithConfig:(const HSTContactStabilizerConfig *)a3;
- (id).cxx_construct;
- (void)_handleContactFrame:(id)a3;
- (void)_handleResetEvent:(id)a3;
- (void)handleConsume:(id)a3;
@end

@implementation HSTContactStabilizer

- (HSTContactStabilizer)initWithConfig:(const HSTContactStabilizerConfig *)a3
{
  v27.receiver = self;
  v27.super_class = HSTContactStabilizer;
  v4 = [(HSStage *)&v27 init];
  v5 = v4;
  if (v4)
  {
    v6 = v4 + 120;
    *(v4 + 120) = *&a3->excessiveEccentricity.min;
    v8 = *&a3->unstableDeltaRadius.gain;
    v7 = *&a3->endLongtermZAreaInit;
    v9 = *&a3->excessiveMinorRadius.min;
    *(v4 + 46) = a3->hysteresisRadius;
    *(v4 + 152) = v8;
    *(v4 + 168) = v7;
    *(v4 + 136) = v9;
    v26 = v4;
    v10 = (v4 + 192);
    v11 = *(v4 + 25);
    v12 = 32;
    do
    {
      v13 = *(v10 + 16);
      if (v11 >= v13)
      {
        v14 = 0x8E38E38E38E38E39 * ((v11 - *v10) >> 4);
        v15 = v14 + 1;
        if (v14 + 1 > 0x1C71C71C71C71C7)
        {
          std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
        }

        v16 = 0x8E38E38E38E38E39 * ((v13 - *v10) >> 4);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0xE38E38E38E38E3)
        {
          v17 = 0x1C71C71C71C71C7;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ContactStabilizer>>(v10, v17);
        }

        v18 = 16 * ((v11 - *v10) >> 4);
        *v18 = 0;
        *(v18 + 8) = 0;
        *(v18 + 16) = v6;
        *(v18 + 24) = 0;
        *(v18 + 32) = v6;
        *(v18 + 40) = 0;
        *(v18 + 64) = 0;
        *(v18 + 72) = 0;
        *(v18 + 96) = 0;
        *(v18 + 104) = 0;
        *(v18 + 112) = 0;
        *(v18 + 120) = 0;
        *(v18 + 128) = 0;
        *(v18 + 136) = 0;
        v11 = 144 * v14 + 144;
        v19 = *(v10 + 8) - *v10;
        v20 = 144 * v14 - v19;
        memcpy((v18 - v19), *v10, v19);
        v21 = *v10;
        *v10 = v20;
        *(v10 + 8) = v11;
        *(v10 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v11 = 0;
        *(v11 + 8) = 0;
        *(v11 + 16) = v6;
        *(v11 + 24) = 0;
        *(v11 + 32) = v6;
        *(v11 + 40) = 0;
        *(v11 + 41) = *v29;
        *(v11 + 56) = *&v29[15];
        *(v11 + 64) = 0;
        *(v11 + 72) = 0;
        *(v11 + 73) = *v28;
        *(v11 + 88) = *&v28[15];
        *(v11 + 96) = 0;
        *(v11 + 104) = 0;
        *(v11 + 112) = 0;
        *(v11 + 120) = 0;
        *(v11 + 128) = 0;
        *(v11 + 136) = 0;
        v11 += 144;
      }

      *(v10 + 8) = v11;
      --v12;
    }

    while (v12);
    v5 = v26;
    v22 = objc_opt_new();
    stats = v26->_stats;
    v26->_stats = v22;

    v24 = v26;
  }

  return v5;
}

- (void)_handleContactFrame:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v31 = +[NSAssertionHandler currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"HSTContactStabilizer.mm" lineNumber:613 description:{@"Invalid parameter not satisfying: %@", @"frame"}];
  }

  self->_stats->contacts.__end_ = self->_stats->contacts.__begin_;
  self->_stats->hysteresisRadius = self->_config.hysteresisRadius;
  v6 = v5[6];
  v35 = v5[7];
  if (v6 == v35)
  {
LABEL_20:
    v37.receiver = self;
    v37.super_class = HSTContactStabilizer;
    [(HSStage *)&v37 handleConsume:v5];
    stats = self->_stats;
    v36.receiver = self;
    v36.super_class = HSTContactStabilizer;
    [(HSStage *)&v36 handleConsume:stats];
  }

  else
  {
    v7 = 0x924924924924924;
    v33 = v5;
    p_stabilizers = &self->_stabilizers;
    v8 = 0x6DB6DB6DB6DB6DB7;
    v32 = self;
    while (0x8E38E38E38E38E39 * ((p_stabilizers->__end_ - p_stabilizers->__begin_) >> 4) > v6->contactID)
    {
      v9 = v8;
      v10 = v7;
      v11 = p_stabilizers->__begin_ + 144 * v6->contactID;
      ContactStabilizer::update(v11, v5[4], v6);
      v12 = self->_stats;
      contactID = v6->contactID;
      position = v6->position;
      v16 = *v11;
      v15 = *(v11 + 8);
      end = v12->contacts.__end_;
      cap = v12->contacts.__cap_;
      v7 = v10;
      v8 = v9;
      if (end >= cap)
      {
        begin = v12->contacts.__begin_;
        v21 = ((end - begin) >> 2) * v9;
        v22 = v21 + 1;
        if (v21 + 1 > v10)
        {
          std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
        }

        v23 = ((cap - begin) >> 2) * v9;
        if (2 * v23 > v22)
        {
          v22 = 2 * v23;
        }

        if (v23 >= 0x492492492492492)
        {
          v24 = v10;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<StatContact>>(&v12->contacts, v24);
        }

        v25 = 28 * v21;
        *v25 = contactID;
        *(v25 + 4) = position;
        *(v25 + 12) = v16;
        *(v25 + 20) = v15;
        v19 = 28 * v21 + 28;
        v26 = v12->contacts.__begin_;
        v27 = v12->contacts.__end_ - v26;
        v28 = (28 * v21 - v27);
        memcpy(v28, v26, v27);
        v29 = v12->contacts.__begin_;
        v12->contacts.__begin_ = v28;
        v12->contacts.__end_ = v19;
        v12->contacts.__cap_ = 0;
        if (v29)
        {
          operator delete(v29);
        }

        self = v32;
        v5 = v33;
        v7 = v10;
        v8 = v9;
      }

      else
      {
        *end = contactID;
        *(end + 4) = position;
        *(end + 12) = v16;
        v19 = end + 28;
        *(end + 20) = v15;
        self = v32;
        v5 = v33;
      }

      v12->contacts.__end_ = v19;
      v6->position = *v11;
      if (++v6 == v35)
      {
        goto LABEL_20;
      }
    }
  }
}

- (void)_handleResetEvent:(id)a3
{
  v4 = a3;
  begin = self->_stabilizers.__begin_;
  for (i = self->_stabilizers.__end_; begin != i; begin = (begin + 144))
  {
    if (*(begin + 64) == 1)
    {
      *(begin + 64) = 0;
    }

    if (*(begin + 96) == 1)
    {
      *(begin + 96) = 0;
    }

    *(begin + 6) = 0;
    if ((*(begin + 112) & 1) == 0)
    {
      *(begin + 112) = 1;
    }

    *(begin + 13) = 0;
    *(begin + 68) = 0;
    *begin = 0;
    *(begin + 1) = 0;
  }

  v7.receiver = self;
  v7.super_class = HSTContactStabilizer;
  [(HSStage *)&v7 handleConsume:v4];
}

- (void)handleConsume:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(HSTContactStabilizer *)self _handleContactFrame:v4];
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [(HSTContactStabilizer *)self _handleResetEvent:v6];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = HSTContactStabilizer;
      [(HSStage *)&v8 handleConsume:v6];
    }
  }
}

- (BOOL)handleHSEncode:(void *)a3
{
  if (!*a3)
  {
    *&v11 = *(a3 + 17);
    DWORD2(v11) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a3 + 56, &v11);
    HSUtil::Encoder::_writeTokenValue32(a3, 0xEBu, 0);
  }

  HSUtil::Encoder::encodeCodable<HSTContactStabilizerConfig>(a3, HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)102,(char)105,(char)103>::Key, &self->_config);
  HSUtil::Encoder::encodeArrayStart(a3, HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)98,(char)105,(char)108,(char)105,(char)122,(char)101,(char)114,(char)115>::Key, 4);
  p_stabilizers = &self->_stabilizers;
  begin = self->_stabilizers.__begin_;
  end = p_stabilizers->__end_;
  v8 = *a3;
  while (begin != end)
  {
    if (!v8)
    {
      v9 = ContactStabilizer::encode(begin, a3);
      v8 = *a3;
      if (!*a3 && (v9 & 1) == 0)
      {
        v8 = 10;
        *a3 = 10;
      }
    }

    begin = (begin + 144);
  }

  if (!v8)
  {
    HSUtil::Encoder::_encodeContainerStop(a3);
    if (!*a3)
    {
      HSUtil::Encoder::_encodeContainerStop(a3);
    }
  }

  return 1;
}

- (BOOL)handleHSDecode:(void *)a3
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = v5;
  v22 = v5;
  v19 = v5;
  v20 = v5;
  v18 = v5;
  HSUtil::Decoder::decodeMap(a3, &v18);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTContactStabilizer handleHSDecode:];
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  HSUtil::Decoder::decodeCodable<HSTContactStabilizerConfig>(&v18, HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)102,(char)105,(char)103>::Key, &self->_config);
  if (v18)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTContactStabilizer handleHSDecode:];
    }

    goto LABEL_7;
  }

  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16 = v9;
  v17 = v9;
  v14 = v9;
  v15 = v9;
  v13 = v9;
  HSUtil::Decoder::decodeArray(&v18, HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)98,(char)105,(char)108,(char)105,(char)122,(char)101,(char)114,(char)115>::Key, &v13);
  if (v18)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTContactStabilizer handleHSDecode:];
    }
  }

  else
  {
    begin = self->_stabilizers.__begin_;
    end = self->_stabilizers.__end_;
    v6 = 1;
    if (begin == end)
    {
      goto LABEL_17;
    }

    while (1)
    {
      if (*(begin + 64) == 1)
      {
        *(begin + 64) = 0;
      }

      if (*(begin + 96) == 1)
      {
        *(begin + 96) = 0;
      }

      *(begin + 6) = 0;
      if ((*(begin + 112) & 1) == 0)
      {
        *(begin + 112) = 1;
      }

      *(begin + 13) = 0;
      *(begin + 68) = 0;
      *begin = 0;
      *(begin + 1) = 0;
      HSUtil::Decoder::decodeCodable<ContactStabilizer>(&v13, begin);
      if (v13 >= 5)
      {
        break;
      }

      begin = (begin + 144);
      if (begin == end)
      {
        v6 = 1;
        goto LABEL_17;
      }
    }

    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTContactStabilizer handleHSDecode:];
    }
  }

  v6 = 0;
LABEL_17:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v10 = v14;
  *&v14 = 0;
  if (v10)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v10);
    operator delete();
  }

LABEL_8:
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v7 = v19;
  *&v19 = 0;
  if (v7)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v7);
    operator delete();
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 15) = 0;
  *(self + 21) = 0;
  *(self + 22) = 0;
  *(self + 46) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 24) = 0;
  return self;
}

- (void)handleHSDecode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end