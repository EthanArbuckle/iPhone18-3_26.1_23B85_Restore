@interface VolumeEQPresetManager
- (DictionaryRef)getPreset:(int64_t)a3;
- (id).cxx_construct;
- (id)init:(id)a3;
- (void)loadVolumeBasedEQPresets:(id)a3;
- (void)setCurrentRoute:(RouteChangeInfo)a3;
@end

@implementation VolumeEQPresetManager

- (id)init:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VolumeEQPresetManager;
  v5 = [(VolumeEQPresetManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(VolumeEQPresetManager *)v5 loadVolumeBasedEQPresets:v4];
    [(VolumeEQPresetManager *)v6 setCurrentRoute:0, 0];
  }

  return v6;
}

- (DictionaryRef)getPreset:(int64_t)a3
{
  v4 = v3;
  _X4 = 0;
  _X5 = 0;
  __asm { CASPAL          X4, X5, X4, X5, [X8] }

  size = self->_vEQPresets.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    goto LABEL_17;
  }

  v13 = HIDWORD(_X4);
  v14 = vcnt_s8(size);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = HIDWORD(_X4);
    if (size <= v13)
    {
      v15 = HIDWORD(_X4) % size;
    }
  }

  else
  {
    v15 = (size - 1) & HIDWORD(_X4);
  }

  v16 = self->_vEQPresets.__table_.__bucket_list_.__ptr_[v15];
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = *v16;
  if (!v17)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v18 = v17[1];
    if (v18 == v13)
    {
      break;
    }

    if (v14.u32[0] > 1uLL)
    {
      if (v18 >= size)
      {
        v18 %= size;
      }
    }

    else
    {
      v18 &= size - 1;
    }

    if (v18 != v15)
    {
      goto LABEL_17;
    }

LABEL_16:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_17;
    }
  }

  if (*(v17 + 4) != HIDWORD(_X4))
  {
    goto LABEL_16;
  }

  v20 = v17[4];
  if (!v20)
  {
    goto LABEL_17;
  }

  v21 = vcnt_s8(v20);
  v21.i16[0] = vaddlv_u8(v21);
  if (v21.u32[0] > 1uLL)
  {
    v22 = a3;
    if (v20 <= a3)
    {
      v22 = a3 % v20;
    }
  }

  else
  {
    v22 = (v20 - 1) & a3;
  }

  v23 = *(v17[3] + 8 * v22);
  if (!v23 || (v24 = *v23) == 0)
  {
LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  while (1)
  {
    v25 = v24[1];
    if (v25 == a3)
    {
      break;
    }

    if (v21.u32[0] > 1uLL)
    {
      if (v25 >= v20)
      {
        v25 %= v20;
      }
    }

    else
    {
      v25 &= v20 - 1;
    }

    if (v25 != v22)
    {
      goto LABEL_17;
    }

LABEL_34:
    v19 = 0;
    v24 = *v24;
    if (!v24)
    {
      goto LABEL_18;
    }
  }

  if (v24[2] != a3)
  {
    goto LABEL_34;
  }

  v19 = v24[3];
  if (v19)
  {
    self = CFRetain(v24[3]);
  }

LABEL_18:
  *v4 = v19;
  return self;
}

- (void)setCurrentRoute:(RouteChangeInfo)a3
{
  v3 = *&self->_currentRoute.__a_.__a_value.var0;
  do
  {
    _X7 = *&self->_currentRoute.__a_.__a_value.var2;
    __asm { CASPAL          X6, X7, X2, X3, [X8] }

    _ZF = _X6 == v3;
    v3 = _X6;
  }

  while (!_ZF);
}

- (void)loadVolumeBasedEQPresets:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = **(Phase::Logger::GetInstance(v4) + 1216);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "VolumeEQPresetManager.mm";
    v60 = 1024;
    *v61 = 62;
    *&v61[4] = 2112;
    *&v61[6] = v4;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Volume EQ: Searching for presets at %@", buf, 0x1Cu);
  }

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 enumeratorAtPath:v4];
  v8 = 0;
  p_vEQPresets = &self->_vEQPresets;
  v55 = self;
  while (1)
  {
    v9 = [v7 nextObject];

    if (!v9)
    {
      break;
    }

    v10 = [v9 lastPathComponent];
    if ([v10 hasSuffix:@".aupreset"] && objc_msgSend(v10, "hasPrefix:", @"aufx-tmst-appl-veq"))
    {
      v11 = [v10 componentsSeparatedByString:@"-"];
      v12 = v11;
      if (v11 && [v11 count] >= 5 && objc_msgSend(v12, "count") <= 6)
      {
        v13 = [v12 count];
        v14 = [v12 count];
        if (v13 == 5)
        {
          v15 = 0;
        }

        else
        {
          v15 = -1;
        }

        if (v14 == 6)
        {
          v16 = [v12 objectAtIndexedSubscript:5];
          v17 = [v16 stringByDeletingPathExtension];
          v15 = [v17 intValue];
        }

        if (v15 == -1)
        {
          v20 = **(Phase::Logger::GetInstance(v14) + 1216);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "VolumeEQPresetManager.mm";
            v60 = 1024;
            *v61 = 119;
            _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Volume EQ: Could not get product ID", buf, 0x12u);
          }

          goto LABEL_80;
        }

        v18 = [v12 objectAtIndexedSubscript:4];
        v19 = [v18 stringByDeletingPathExtension];
        if (([v19 isEqualToString:@"vo08"] & 1) == 0)
        {
          if ([v19 isEqualToString:@"vo16"])
          {
            v21 = 1;
          }

          else
          {
            v22 = [v19 isEqualToString:@"vo24"];
            if ((v22 & 1) == 0)
            {
              v36 = **(Phase::Logger::GetInstance(v22) + 1216);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "VolumeEQPresetManager.mm";
                v60 = 1024;
                *v61 = 81;
                *&v61[4] = 2112;
                *&v61[6] = v19;
                _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d Volume EQ: Unsupported bandwith token %@", buf, 0x1Cu);
              }

              goto LABEL_80;
            }

            v21 = 2;
          }

          v56 = v21;
          goto LABEL_25;
        }

        v56 = 0;
LABEL_25:

        v23 = [(Phase::Logger *)v4 stringByAppendingPathComponent:v9];
        v24 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v23];
        v25 = v24;
        v53 = v24;
        if (v24)
        {
          v24 = [v24 length];
          if (v24)
          {
            v26 = v25;
            v24 = [v25 bytes];
            if (v24)
            {
              v58 = 0;
              v27 = v25;
              v50 = v23;
              v51 = v4;
              v28 = CFDataCreate(0, [v25 bytes], objc_msgSend(v53, "length"));
              if (!v28)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Could not construct");
              }

              cf = v28;
              v29 = CFGetTypeID(v28);
              if (v29 != CFDataGetTypeID())
              {
                v48 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v48, "Could not construct");
              }

              applesauce::CF::make_DictionaryRef(&cf, buf);
              v49 = *buf;
              v58 = *buf;
              *buf = 0;
              v30 = cf;
              if (cf)
              {
                CFRelease(cf);
              }

              v31 = **(Phase::Logger::GetInstance(v30) + 1216);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                *&buf[4] = "VolumeEQPresetManager.mm";
                v60 = 1024;
                *v61 = 151;
                *&v61[4] = 2112;
                *&v61[6] = v9;
                v62 = 1024;
                v63 = v15;
                v64 = 2048;
                v65 = v56;
                _os_log_impl(&dword_23A302000, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Volume EQ: Adding preset at %@ for product ID %d and bandwidth Type %ld", buf, 0x2Cu);
              }

              size = v55->_vEQPresets.__table_.__bucket_list_.__deleter_.__size_;
              if (size)
              {
                v33 = vcnt_s8(size);
                v33.i16[0] = vaddlv_u8(v33);
                if (v33.u32[0] > 1uLL)
                {
                  v34 = v15;
                  if (size <= v15)
                  {
                    v34 = v15 % size;
                  }
                }

                else
                {
                  v34 = (size - 1) & v15;
                }

                v37 = p_vEQPresets->__table_.__bucket_list_.__ptr_[v34];
                if (v37)
                {
                  for (i = *v37; i; i = *i)
                  {
                    v39 = i[1];
                    if (v39 == v15)
                    {
                      if (i[2].i32[0] == v15)
                      {
                        v40 = i[4];
                        v52 = v6;
                        if (!*&v40)
                        {
                          goto LABEL_72;
                        }

                        v41 = vcnt_s8(v40);
                        v41.i16[0] = vaddlv_u8(v41);
                        if (v41.u32[0] > 1uLL)
                        {
                          v42 = v56;
                          if (*&v40 <= v56)
                          {
                            v42 = v56 % *&v40;
                          }
                        }

                        else
                        {
                          v42 = (v40.i32[0] - 1) & v56;
                        }

                        v43 = *(*&i[3] + 8 * v42);
                        if (!v43 || (v44 = *v43) == 0)
                        {
LABEL_72:
                          operator new();
                        }

                        while (1)
                        {
                          v45 = v44[1];
                          if (v45 == v56)
                          {
                            if (v44[2] == v56)
                            {
                              v23 = v50;
                              v4 = v51;
                              v46 = v44[3];
                              v44[3] = v49;
                              if (v49)
                              {
                                CFRetain(v49);
                              }

                              v6 = v52;
                              if (v46)
                              {
                                CFRelease(v46);
                              }

                              if (v49)
                              {
                                CFRelease(v49);
                              }

                              goto LABEL_79;
                            }
                          }

                          else
                          {
                            if (v41.u32[0] > 1uLL)
                            {
                              if (v45 >= *&v40)
                              {
                                v45 %= *&v40;
                              }
                            }

                            else
                            {
                              v45 &= *&v40 - 1;
                            }

                            if (v45 != v42)
                            {
                              goto LABEL_72;
                            }
                          }

                          v44 = *v44;
                          if (!v44)
                          {
                            goto LABEL_72;
                          }
                        }
                      }
                    }

                    else
                    {
                      if (v33.u32[0] > 1uLL)
                      {
                        if (v39 >= size)
                        {
                          v39 %= size;
                        }
                      }

                      else
                      {
                        v39 &= size - 1;
                      }

                      if (v39 != v34)
                      {
                        break;
                      }
                    }
                  }
                }
              }

              operator new();
            }
          }
        }

        v35 = **(Phase::Logger::GetInstance(v24) + 1216);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "VolumeEQPresetManager.mm";
          v60 = 1024;
          *v61 = 135;
          *&v61[4] = 2112;
          *&v61[6] = v23;
          _os_log_impl(&dword_23A302000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d Volume EQ: Could not read preset file at %@", buf, 0x1Cu);
        }

LABEL_79:
      }

LABEL_80:
    }

    v8 = v9;
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 6) = 0xFFFFFFFF00000000;
  *(self + 7) = 0;
  return self;
}

@end