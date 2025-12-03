@interface HSTContactFrame
- (BOOL)decodeFromMap:(void *)map;
- (BOOL)isTouching;
- (HSTContactFrame)init;
- (id).cxx_construct;
- (id)contactAtIndex:(unint64_t)index;
- (id)description;
- (id)metadata;
- (signed)imagePixels;
- (void)_clear;
- (void)encodeToMap:(void *)map;
@end

@implementation HSTContactFrame

- (id)contactAtIndex:(unint64_t)index
{
  v5 = objc_opt_new();
  objc_storeStrong((v5 + 8), self);
  *(v5 + 16) = index;

  return v5;
}

- (id)metadata
{
  v3 = objc_opt_new();
  objc_storeStrong(v3 + 1, self);

  return v3;
}

- (HSTContactFrame)init
{
  v6.receiver = self;
  v6.super_class = HSTContactFrame;
  v2 = [(HSTFrame *)&v6 init];
  v3 = v2;
  if (v2)
  {
    std::vector<HSTPipeline::Contact>::reserve(&v2->contacts.__begin_, 0xAuLL);
    v4 = v3;
  }

  return v3;
}

- (id)description
{
  v3 = objc_opt_new();
  begin = self->contacts.__begin_;
  for (i = self->contacts.__end_; begin != i; ++begin)
  {
    v6 = [NSString stringWithFormat:@"HSTContact{ID:%u, Stage:%u, Finger:%u, Flags:0x%08llX}", begin->contactID, begin->stage, begin->finger, begin->flags];
    [v3 appendFormat:@"%@, ", v6];
  }

  v7 = [NSString stringWithFormat:@"<HSTContactFrame contacts: %@>", v3];

  return v7;
}

- (BOOL)isTouching
{
  begin = self->contacts.__begin_;
  end = self->contacts.__end_;
  if (begin == end)
  {
    return 0;
  }

  v4 = begin + 1;
  do
  {
    v5 = v4[-1].stage - 3;
    result = v5 < 2;
  }

  while (v5 >= 2 && v4++ != end);
  return result;
}

- (signed)imagePixels
{
  if (self->metadata.image.__engaged_)
  {
    return ([(NSData *)self->super.data bytes]+ self->metadata.image.var0.__val_.dataOffset);
  }

  else
  {
    return 0;
  }
}

- (void)encodeToMap:(void *)map
{
  v9.receiver = self;
  v9.super_class = HSTContactFrame;
  [(HSTFrame *)&v9 encodeToMap:?];
  HSUtil::Encoder::encodeUInt(map, HSUtil::CoderKey::Literal<(char)102,(char)114,(char)97,(char)109,(char)101,(char)78,(char)117,(char)109,(char)98,(char)101,(char)114>::Key, self->frameNumber);
  HSUtil::Encoder::encodeUInt(map, HSUtil::CoderKey::Literal<(char)102,(char)105,(char)114,(char)109,(char)119,(char)97,(char)114,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key, self->firmwareTimestamp);
  HSUtil::Encoder::encodeUInt(map, HSUtil::CoderKey::Literal<(char)105,(char)110,(char)112,(char)117,(char)116,(char)68,(char)101,(char)116,(char)101,(char)99,(char)116,(char)105,(char)111,(char)110,(char)83,(char)116,(char)97,(char)116,(char)101>::Key, self->inputDetectionState);
  HSUtil::Encoder::encodeUInt(map, HSUtil::CoderKey::Literal<(char)100,(char)101,(char)118,(char)105,(char)99,(char)101,(char)79,(char)112,(char)101,(char)114,(char)97,(char)116,(char)105,(char)110,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101>::Key, self->deviceOperatingState);
  HSUtil::Encoder::encodeArrayStart(map, HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)116,(char)97,(char)99,(char)116,(char)115>::Key, 2);
  begin = self->contacts.__begin_;
  end = self->contacts.__end_;
  v7 = *map;
  while (begin != end)
  {
    if (!v7)
    {
      v8 = HSTPipeline::Contact::encode(begin, map);
      v7 = *map;
      if (!*map && (v8 & 1) == 0)
      {
        v7 = 10;
        *map = 10;
      }
    }

    ++begin;
  }

  if (!v7)
  {
    HSUtil::Encoder::_encodeContainerStop(map);
  }

  HSUtil::Encoder::encodeCodable<HSTContactFrameMetadata>(map, HSUtil::CoderKey::Literal<(char)109,(char)101,(char)116,(char)97,(char)100,(char)97,(char)116,(char)97>::Key, &self->metadata);
}

- (BOOL)decodeFromMap:(void *)map
{
  v42.receiver = self;
  v42.super_class = HSTContactFrame;
  if (![(HSTFrame *)&v42 decodeFromMap:?])
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTContactFrame decodeFromMap:];
    }

    return 0;
  }

  [(HSTContactFrame *)self _clear];
  HSUtil::Decoder::setOffset(map, 0);
  while (1)
  {
    v5 = HSUtil::Decoder::decodeKey(map);
    if (*map)
    {
      break;
    }

    if (v5 == HSUtil::CoderKey::Literal<(char)102,(char)114,(char)97,(char)109,(char)101,(char)78,(char)117,(char)109,(char)98,(char)101,(char)114>::Key)
    {
      v6 = HSUtil::Decoder::decodeUInt(map);
      v7 = 24;
LABEL_13:
      *(&self->super.super.isa + v7) = v6;
      goto LABEL_17;
    }

    if (v5 == HSUtil::CoderKey::Literal<(char)102,(char)105,(char)114,(char)109,(char)119,(char)97,(char)114,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key)
    {
      v6 = HSUtil::Decoder::decodeUInt(map);
      v7 = 32;
      goto LABEL_13;
    }

    if (v5 == HSUtil::CoderKey::Literal<(char)105,(char)110,(char)112,(char)117,(char)116,(char)68,(char)101,(char)116,(char)101,(char)99,(char)116,(char)105,(char)111,(char)110,(char)83,(char)116,(char)97,(char)116,(char)101>::Key)
    {
      v8 = HSUtil::Decoder::decodeUInt(map);
      v9 = 40;
    }

    else
    {
      if (v5 != HSUtil::CoderKey::Literal<(char)100,(char)101,(char)118,(char)105,(char)99,(char)101,(char)79,(char)112,(char)101,(char)114,(char)97,(char)116,(char)105,(char)110,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101>::Key)
      {
        if (v5 == HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)116,(char)97,(char)99,(char)116,(char)115>::Key)
        {
          *&v10 = 0xAAAAAAAAAAAAAAAALL;
          *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v40 = v10;
          v41 = v10;
          v38 = v10;
          v39 = v10;
          v37 = v10;
          HSUtil::Decoder::decodeArray(map, &v37);
          while (1)
          {
            *&v35[8] = -1431655936;
            v36 = 0xFFFFFFFF;
            v34 = 0xAAAAAAAA00000000;
            *v35 = 0;
            memset(&v35[12], 0, 20);
            HSUtil::Decoder::decodeCodable<HSTPipeline::Contact>(&v37, &v34);
            if (v37)
            {
              break;
            }

            p_contacts = &self->contacts;
            end = self->contacts.__end_;
            cap = self->contacts.__cap_;
            if (end >= cap)
            {
              v18 = end - p_contacts->__begin_;
              v19 = v18 + 1;
              if ((v18 + 1) >> 58)
              {
                std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
              }

              v20 = cap - p_contacts->__begin_;
              if (v20 >> 5 > v19)
              {
                v19 = v20 >> 5;
              }

              if (v20 >= 0x7FFFFFFFFFFFFFC0)
              {
                v21 = 0x3FFFFFFFFFFFFFFLL;
              }

              else
              {
                v21 = v19;
              }

              if (v21)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<HSTPipeline::Contact>>(&self->contacts, v21);
              }

              v22 = (v18 << 6);
              v23 = v34;
              v24 = *v35;
              v25 = v36;
              v22[2] = *&v35[16];
              v22[3] = v25;
              *v22 = v23;
              v22[1] = v24;
              v17 = ((v18 << 6) + 64);
              v26 = self->contacts.__end_ - self->contacts.__begin_;
              v27 = ((v18 << 6) - v26);
              memcpy(v22 - v26, p_contacts->__begin_, v26);
              begin = p_contacts->__begin_;
              p_contacts->__begin_ = v27;
              self->contacts.__end_ = v17;
              self->contacts.__cap_ = 0;
              if (begin)
              {
                operator delete(begin);
              }
            }

            else
            {
              v14 = v34;
              v15 = *v35;
              v16 = v36;
              *&end->velocity.y = *&v35[16];
              *&end->azimuth = v16;
              *&end->contactID = v14;
              *&end->position.x = v15;
              v17 = end + 1;
            }

            self->contacts.__end_ = v17;
          }

          if (v37 == 3)
          {
            v29 = 1;
          }

          else
          {
            memset(__b, 170, sizeof(__b));
            v30 = basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v44 = "[HSTContactFrame decodeFromMap:]";
              v45 = 2080;
              v46 = v30;
              v47 = 2048;
              v48 = 268;
              v49 = 2080;
              v50 = "contactsArray";
              _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", buf, 0x2Au);
            }

            v29 = 0;
          }

          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }

          v31 = v38;
          *&v38 = 0;
          if (v31)
          {
            std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v31);
            operator delete();
          }

          if ((v29 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v5 == HSUtil::CoderKey::Literal<(char)109,(char)101,(char)116,(char)97,(char)100,(char)97,(char)116,(char)97>::Key)
        {
          HSUtil::Decoder::decodeCodable<HSTContactFrameMetadata>(map, &self->metadata);
        }

        else
        {
          HSUtil::Decoder::skipElement(map);
        }

        goto LABEL_17;
      }

      v8 = HSUtil::Decoder::decodeUInt(map);
      v9 = 44;
    }

    *(&self->super.super.isa + v9) = v8;
LABEL_17:
    if (*map)
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSTContactFrame decodeFromMap:];
      }

      return 0;
    }
  }

  if (*map == 3)
  {
    return 1;
  }

  memset(__b, 170, sizeof(__b));
  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [HSTContactFrame decodeFromMap:];
  }

  return 0;
}

- (void)_clear
{
  self->frameNumber = 0;
  self->firmwareTimestamp = 0;
  self->inputDetectionState = 0;
  self->deviceOperatingState = 0;
  self->contacts.__end_ = self->contacts.__begin_;
  self->metadata.surfaceSize.var0.__null_state_ = 0;
  self->metadata.surfaceSize.__engaged_ = 0;
  self->metadata.image.var0.__null_state_ = 0;
  self->metadata.image.__engaged_ = 0;
  self->metadata.tritium.var0.__null_state_ = 0;
  LOBYTE(self->metadata.tritium.var0.__val_.initialToCurrentFrameDeltaMs) = 0;
  self->metadata.tritium.__engaged_ = 0;
  self->metadata.buttonState.var0.__null_state_ = 0;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  *(self + 72) = 0;
  *(self + 80) = 0;
  *(self + 88) = 0;
  *(self + 104) = 0;
  *(self + 112) = 0;
  *(self + 120) = 0;
  *(self + 124) = 0;
  *(self + 128) = 0;
  return self;
}

- (void)decodeFromMap:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end