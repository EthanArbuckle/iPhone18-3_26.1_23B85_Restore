void ADCommonUtils::runtimePlatformANEProductString(_BYTE *a1@<X8>)
{
  if ([MEMORY[0x277CEE958] hasANE])
  {
    v3 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CEE958] aneSubType];
    v4 = [MEMORY[0x277CEE958] aneSubTypeVariant];
    v5 = [MEMORY[0x277CEE958] aneSubTypeProductVariant];
    v6 = [v3 stringWithFormat:@"%@%@%@", v11, v4, v5];
    v7 = [v6 uppercaseString];
    v8 = [v7 UTF8String];
    v9 = strlen(v8);
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      operator new();
    }

    a1[23] = v9;
    if (v9)
    {
      memmove(a1, v8, v9);
    }

    a1[v10] = 0;
  }

  else
  {
    a1[23] = 0;
    *a1 = 0;
  }
}

id findNetworkSupportingFile(NSString *a1, NSString *a2, NSString *a3, NSString *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [(NSString *)v8 stringByDeletingLastPathComponent];
  v12 = [v11 stringByAppendingPathComponent:v7];

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [v13 fileExistsAtPath:v12];

  if (v14)
  {
    goto LABEL_2;
  }

  v16 = ![(NSString *)v8 isEqualToString:v9];
  if (!v10)
  {
    LOBYTE(v16) = 1;
  }

  if (v16)
  {
    v15 = 0;
  }

  else
  {
    v17 = [(NSString *)v10 stringByDeletingLastPathComponent];
    v18 = [v17 stringByAppendingPathComponent:v7];

    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = [v19 fileExistsAtPath:v18];

    if (v20)
    {
      v12 = v18;
LABEL_2:
      v15 = v12;
      v12 = v15;
      goto LABEL_10;
    }

    v15 = 0;
    v12 = v18;
  }

LABEL_10:

  return v15;
}

void sub_2402F7F4C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

NSString *findModel(NSString *a1, NSString *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v3;
    v32 = 2112;
    v33 = v4;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Searching for %@/%@*", buf, 0x16u);
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 contentsOfDirectoryAtPath:v3 error:0];

  if (v6)
  {
    v7 = MEMORY[0x277CCAC30];
    v8 = [(NSString *)v4 stringByAppendingString:@"-"];
    v29 = [v7 predicateWithFormat:@"(SELF == %@) || (SELF BEGINSWITH %@)", v4, v8];

    v9 = [v6 filteredArrayUsingPredicate:v29];
    if (![v9 count])
    {
      v21 = 0;
LABEL_24:

      goto LABEL_25;
    }

    if ([v9 count] >= 2)
    {
      v10 = +[ADDeviceConfiguration getDeviceName];
      v11 = [v10 stringByReplacingOccurrencesOfString:@"AP" withString:&stru_285231EA0];

      v12 = [v11 stringByReplacingOccurrencesOfString:@"DEV" withString:&stru_285231EA0];

      v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(SELF CONTAINS[c] %@)", v12];
      v14 = [v9 filteredArrayUsingPredicate:v13];
      if ([v14 count])
      {
        v15 = v14;

        v9 = v15;
      }
    }

    if ([v9 count] >= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v9;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WARNING: found multiple networks matching query. First one will be loaded (might not be what you intended). Found paths: %@", buf, 0xCu);
    }

    v16 = [v9 objectAtIndexedSubscript:0];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@", v3, v16, @"model.espresso.net"];
    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [v18 fileExistsAtPath:v17];

    if (v19)
    {
      v20 = v17;
    }

    else
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@", v3, v16, @"model.mil"];

      v23 = [MEMORY[0x277CCAA00] defaultManager];
      v24 = [v23 fileExistsAtPath:v22];

      if (v24)
      {
        v20 = v22;
      }

      else
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@", v3, v16, @"model.bundle"];

        v26 = [MEMORY[0x277CCAA00] defaultManager];
        v27 = [v26 fileExistsAtPath:v25];

        if (!v27)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v31 = v25;
            _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Folder exists but does not contain espresso network file (Looking for: %{public}@)", buf, 0xCu);
          }

          v21 = 0;
          goto LABEL_23;
        }

        v20 = v25;
      }
    }

    v25 = v20;
    v21 = v20;
LABEL_23:

    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v31 = v3;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed getting content of directory: %{public}@", buf, 0xCu);
  }

  v21 = 0;
LABEL_25:

  return v21;
}

unint64_t PixelBufferUtils::componentsPerPixelForPixelFormat(PixelBufferUtils *this, uint64_t a2)
{
  result = 4;
  if (this > 1380401728)
  {
    if (this > 1717856626)
    {
      if (this <= 1751411058)
      {
        if (this == 1717856627)
        {
          return 1;
        }

        v4 = 1751410032;
      }

      else
      {
        if (this == 1751411059 || this == 1919365990)
        {
          return 1;
        }

        v4 = 1932996149;
      }

      goto LABEL_31;
    }

    if (this > 1380411456)
    {
      if (this == 1380411457)
      {
        return result;
      }

      if (this == 1647392359)
      {
        return 1;
      }

      v4 = 1717855600;
      goto LABEL_31;
    }

    if (this == 1380401729)
    {
      return result;
    }

    v5 = 1380410945;
LABEL_27:
    if (this == v5)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (this > 875704437)
  {
    if (this > 1111970368)
    {
      if (this == 1111970369)
      {
        return result;
      }

      if (this == 1278226488)
      {
        return 1;
      }

      v4 = 1278226536;
      goto LABEL_31;
    }

    if (this == 875704438)
    {
      goto LABEL_34;
    }

    v5 = 1094862674;
    goto LABEL_27;
  }

  if (this > 825437746)
  {
    if (this != 825437747)
    {
      if (this == 843264104)
      {
        return 2;
      }

      if (this != 875704422)
      {
        goto LABEL_38;
      }

LABEL_34:
      if (a2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    return 1;
  }

  if (this == 32)
  {
    return result;
  }

  v4 = 825306677;
LABEL_31:
  if (this == v4)
  {
    return 1;
  }

LABEL_38:
  v7 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  v8 = [v7 objectForKeyedSubscript:@"BitsPerComponent"];
  if (v8)
  {
    v9 = PixelBufferUtils::pixelSizeForPixelFormat(this, a2);
    [v8 floatValue];
    v11 = (v9 / ceilf(v10 * 0.125));

    return v11;
  }

  else
  {

    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v14 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "componentsPerPixelForPixelFormat", 613, this, v12);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }
}

void sub_2402F8824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PixelBufferUtils::planeCountForPixelFormat(PixelBufferUtils *this)
{
  if (this > 1380401728)
  {
    if (this > 1717856626)
    {
      if (this <= 1751411058)
      {
        if (this == 1717856627)
        {
          return 0;
        }

        v2 = 1751410032;
      }

      else
      {
        if (this == 1751411059)
        {
          return 0;
        }

        if (this == 1919365990)
        {
          return 3;
        }

        v2 = 1932996149;
      }
    }

    else if (this <= 1380411456)
    {
      if (this == 1380401729)
      {
        return 0;
      }

      v2 = 1380410945;
    }

    else
    {
      if (this == 1380411457 || this == 1647392359)
      {
        return 0;
      }

      v2 = 1717855600;
    }

LABEL_29:
    if (this != v2)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (this > 875704437)
  {
    if (this <= 1111970368)
    {
      if (this == 875704438)
      {
        return 2;
      }

      v2 = 1094862674;
    }

    else
    {
      if (this == 1111970369 || this == 1278226488)
      {
        return 0;
      }

      v2 = 1278226536;
    }

    goto LABEL_29;
  }

  if (this <= 825437746)
  {
    if (this == 32)
    {
      return 0;
    }

    v2 = 825306677;
    goto LABEL_29;
  }

  if (this == 825437747 || this == 843264104)
  {
    return 0;
  }

  if (this == 875704422)
  {
    return 2;
  }

LABEL_34:
  v4 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (!v4)
  {
    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v11 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "planeCountForPixelFormat", 659, this, v9);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 count];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_2402F8AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2402F8B08(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void embedDepthMapUsingFourierEncoding<half>(__CVBuffer *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v249 = a4;
  v9 = [v249 data];
  v10 = [v249 batchBytes];
  v11 = [v249 channelBytes];
  v255 = [v249 channelBytes];
  v12 = [v249 rowBytes];
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  memset(&v291, 0, sizeof(v291));
  PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v291);
  v13 = v10 * a6;
  v14 = v11 * a5;
  v15 = (v9 + v10 * a6 + v11 * a5);
  v16 = *a2;
  pixelBuffer = a1;
  if (a2[1] == *a2)
  {
    goto LABEL_31;
  }

  height = v291.height;
  rowBytes = v291.rowBytes;
  v17 = v291.height * v291.rowBytes;
  if (!v291.height || (width = v291.width) == 0)
  {
    v51 = 0;
    do
    {
      bzero(v15, v17);
      ++v51;
      v15 += v255;
    }

    while (v51 < (a2[1] - *a2) >> 2);
    goto LABEL_31;
  }

  v19 = v255;
  v250 = v291.height * v291.rowBytes;
  if (v291.width >= 8)
  {
    v169 = 0;
    data = v291.data;
    v239 = &v15[2 * v291.width + v12 * (v291.height - 1)];
    v241 = v291.data + 2 * v291.width + v291.rowBytes * (v291.height - 1);
    v237 = v12 | v291.rowBytes;
    v258 = v291.width & 0xFFFFFFFFFFFFFFF8;
    v170 = v13 + v14 + v9 + 8;
    while (1)
    {
      v171 = v239 + v19 * v169;
      v247 = v169;
      v264 = *(v16 + 4 * v169);
      bzero(v15, v17);
      v172 = 0;
      v173 = data;
      v176 = v15 < v241 && data < v171 || v237 < 0;
      v177 = v15;
      v245 = v170;
      v178 = v170;
      v253 = v177;
      do
      {
        if (!v176)
        {
          v180 = v178;
          v181 = v173;
          v182 = v258;
          while (1)
          {
            v267 = vmovn_s16(vmvnq_s8(vceqzq_f16(*v181)));
            v282 = vmulq_n_f32(vcvt_hight_f32_f16(*v181), v264);
            v289 = vmulq_n_f32(vcvtq_f32_f16(*v181->i8), v264);
            v276 = sinf(v282.f32[1]);
            v279 = sinf(v282.f32[0]);
            v273 = sinf(v282.f32[2]);
            v270 = sinf(v282.f32[3]);
            v282.i32[0] = sinf(v289.f32[1]);
            *&v183 = sinf(v289.f32[0]);
            DWORD1(v183) = v282.i32[0];
            v283 = v183;
            v184 = sinf(v289.f32[2]);
            v185 = v283;
            *(&v185 + 2) = v184;
            v284 = v185;
            v186 = sinf(v289.f32[3]);
            _S3 = v284;
            v188 = v186;
            if (v267.i8[0])
            {
              __asm { FCVT            H0, S3 }

              *(v180 - 4) = _H0;
            }

            if (v267.i8[1])
            {
              _S0 = DWORD1(v284);
              __asm { FCVT            H0, S0 }

              *(v180 - 3) = _S0;
            }

            _S2 = v279;
            if (v267.i8[2])
            {
              _S0 = DWORD2(v284);
              __asm { FCVT            H0, S0 }

              *(v180 - 2) = _S0;
            }

            if (v267.i8[3])
            {
              _S0 = v188;
              __asm { FCVT            H0, S0 }

              *(v180 - 1) = LOWORD(_S0);
            }

            if (v267.i8[4])
            {
              __asm { FCVT            H0, S2 }

              *v180 = _H0;
              if ((v267.i8[5] & 1) == 0)
              {
LABEL_159:
                if ((v267.i8[6] & 1) == 0)
                {
                  goto LABEL_160;
                }

                goto LABEL_164;
              }
            }

            else if ((v267.i8[5] & 1) == 0)
            {
              goto LABEL_159;
            }

            _S0 = v276;
            __asm { FCVT            H0, S0 }

            v180[1] = LOWORD(_S0);
            if ((v267.i8[6] & 1) == 0)
            {
LABEL_160:
              if (v267.i8[7])
              {
                goto LABEL_165;
              }

              goto LABEL_148;
            }

LABEL_164:
            _S0 = v273;
            __asm { FCVT            H0, S0 }

            v180[2] = LOWORD(_S0);
            if (v267.i8[7])
            {
LABEL_165:
              _S0 = v270;
              __asm { FCVT            H0, S0 }

              v180[3] = LOWORD(_S0);
            }

LABEL_148:
            ++v181;
            v180 += 8;
            v182 -= 8;
            if (!v182)
            {
              v179 = v258;
              if (width == v258)
              {
                goto LABEL_144;
              }

              goto LABEL_169;
            }
          }
        }

        v179 = 0;
        do
        {
LABEL_169:
          __asm { FCMP            H0, #0 }

          if (!_ZF)
          {
            __asm { FCVT            S0, H0 }

            _S0 = sinf(v264 * _S0);
            __asm { FCVT            H0, S0 }

            *&v177[2 * v179] = LOWORD(_S0);
          }

          ++v179;
        }

        while (width != v179);
LABEL_144:
        ++v172;
        v177 += v12;
        v173 = (v173 + rowBytes);
        v178 = (v178 + v12);
      }

      while (v172 != height);
      v169 = v247 + 1;
      v19 = v255;
      v15 = &v253[v255];
      v17 = v250;
      v16 = *a2;
      v170 = v245 + v255;
      if (v247 + 1 >= ((a2[1] - *a2) >> 2))
      {
        goto LABEL_31;
      }
    }
  }

  v20 = 0;
  v21 = v13 + v14 + v9 + 6;
  v22 = v291.data + 6;
  do
  {
    v23 = *(v16 + 4 * v20);
    bzero(v15, v17);
    v24 = v22;
    v25 = v21;
    v26 = height;
    do
    {
      __asm { FCMP            H0, #0 }

      if (!_ZF)
      {
        __asm { FCVT            S0, H0 }

        _S0 = sinf(v23 * _S0);
        __asm { FCVT            H0, S0 }

        *(v25 - 3) = LOWORD(_S0);
      }

      if (width != 1)
      {
        __asm { FCMP            H0, #0 }

        if (!_ZF)
        {
          __asm { FCVT            S0, H0 }

          _S0 = sinf(v23 * _S0);
          __asm { FCVT            H0, S0 }

          *(v25 - 2) = LOWORD(_S0);
        }

        if (width != 2)
        {
          __asm { FCMP            H0, #0 }

          if (!_ZF)
          {
            __asm { FCVT            S0, H0 }

            _S0 = sinf(v23 * _S0);
            __asm { FCVT            H0, S0 }

            *(v25 - 1) = LOWORD(_S0);
          }

          if (width != 3)
          {
            __asm { FCMP            H0, #0 }

            if (!_ZF)
            {
              __asm { FCVT            S0, H0 }

              _S0 = sinf(v23 * _S0);
              __asm { FCVT            H0, S0 }

              *v25 = LOWORD(_S0);
            }

            if (width != 4)
            {
              __asm { FCMP            H0, #0 }

              if (!_ZF)
              {
                __asm { FCVT            S0, H0 }

                _S0 = sinf(v23 * _S0);
                __asm { FCVT            H0, S0 }

                v25[1] = LOWORD(_S0);
              }

              if (width != 5)
              {
                __asm { FCMP            H0, #0 }

                if (!_ZF)
                {
                  __asm { FCVT            S0, H0 }

                  _S0 = sinf(v23 * _S0);
                  __asm { FCVT            H0, S0 }

                  v25[2] = LOWORD(_S0);
                }

                if (width != 6)
                {
                  __asm { FCMP            H0, #0 }

                  if (!_ZF)
                  {
                    __asm { FCVT            S0, H0 }

                    _S0 = sinf(v23 * _S0);
                    __asm { FCVT            H0, S0 }

                    v25[3] = LOWORD(_S0);
                  }
                }
              }
            }
          }
        }
      }

      v25 = (v25 + v12);
      v24 += rowBytes;
      --v26;
    }

    while (v26);
    ++v20;
    v15 += v255;
    v16 = *a2;
    v21 += v255;
    v17 = v250;
  }

  while (v20 < (a2[1] - *a2) >> 2);
LABEL_31:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  v52 = [v249 channelBytes];
  v53 = [v249 rowBytes];
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  memset(&v291, 0, sizeof(v291));
  PixelBufferUtils::asVImageBuffer(pixelBuffer, *MEMORY[0x277CBF3A0], &v291);
  v54 = *a2;
  if (a2[1] == *a2)
  {
    goto LABEL_61;
  }

  v261 = v291.height;
  v263 = v291.rowBytes;
  v55 = v291.height * v291.rowBytes;
  v256 = v291.height * v291.rowBytes;
  if (!v291.height || (v56 = v291.width) == 0)
  {
    v85 = 0;
    do
    {
      bzero(v15, v256);
      ++v85;
      v15 += v52;
    }

    while (v85 < (a2[1] - *a2) >> 2);
    goto LABEL_61;
  }

  v251 = v52;
  if (v291.width >= 8)
  {
    v201 = 0;
    v240 = 2 * v291.width + v53 * (v291.height - 1);
    v242 = v291.data;
    v238 = v291.data + 2 * v291.width + v291.rowBytes * (v291.height - 1);
    v236 = v53 | v291.rowBytes;
    v202 = v291.width & 0xFFFFFFFFFFFFFFF8;
    v203 = v15 + 8;
    v254 = v15;
    v204 = v52;
    while (1)
    {
      v205 = &v254[v240 + v204 * v201];
      v246 = v201;
      v265 = *(v54 + 4 * v201);
      bzero(v15, v55);
      v206 = 0;
      v207 = v242;
      v210 = v15 < v238 && v242 < v205 || v236 < 0;
      v211 = v15;
      v244 = v203;
      v212 = v203;
      v248 = v211;
      v259 = v210;
      do
      {
        if (!v210)
        {
          v214 = v212;
          v215 = v207;
          v216 = v202;
          while (1)
          {
            v268 = vmovn_s16(vmvnq_s8(vceqzq_f16(*v215)));
            v285 = vmulq_n_f32(vcvt_hight_f32_f16(*v215), v265);
            v290 = vmulq_n_f32(vcvtq_f32_f16(*v215->i8), v265);
            v277 = cosf(v285.f32[1]);
            v280 = cosf(v285.f32[0]);
            v274 = cosf(v285.f32[2]);
            v271 = cosf(v285.f32[3]);
            v285.i32[0] = cosf(v290.f32[1]);
            *&v217 = cosf(v290.f32[0]);
            DWORD1(v217) = v285.i32[0];
            v286 = v217;
            v218 = cosf(v290.f32[2]);
            v219 = v286;
            *(&v219 + 2) = v218;
            v287 = v219;
            v220 = cosf(v290.f32[3]);
            _S3 = v287;
            v222 = v220;
            if (v268.i8[0])
            {
              __asm { FCVT            H0, S3 }

              *(v214 - 4) = _H0;
            }

            if (v268.i8[1])
            {
              _S0 = DWORD1(v287);
              __asm { FCVT            H0, S0 }

              *(v214 - 3) = _S0;
            }

            _S2 = v280;
            if (v268.i8[2])
            {
              _S0 = DWORD2(v287);
              __asm { FCVT            H0, S0 }

              *(v214 - 2) = _S0;
            }

            if (v268.i8[3])
            {
              _S0 = v222;
              __asm { FCVT            H0, S0 }

              *(v214 - 1) = LOWORD(_S0);
            }

            if (v268.i8[4])
            {
              __asm { FCVT            H0, S2 }

              *v214 = _H0;
              if ((v268.i8[5] & 1) == 0)
              {
LABEL_198:
                if ((v268.i8[6] & 1) == 0)
                {
                  goto LABEL_199;
                }

                goto LABEL_203;
              }
            }

            else if ((v268.i8[5] & 1) == 0)
            {
              goto LABEL_198;
            }

            _S0 = v277;
            __asm { FCVT            H0, S0 }

            v214[1] = LOWORD(_S0);
            if ((v268.i8[6] & 1) == 0)
            {
LABEL_199:
              if (v268.i8[7])
              {
                goto LABEL_204;
              }

              goto LABEL_187;
            }

LABEL_203:
            _S0 = v274;
            __asm { FCVT            H0, S0 }

            v214[2] = LOWORD(_S0);
            if (v268.i8[7])
            {
LABEL_204:
              _S0 = v271;
              __asm { FCVT            H0, S0 }

              v214[3] = LOWORD(_S0);
            }

LABEL_187:
            ++v215;
            v214 += 8;
            v202 -= 8;
            if (!v202)
            {
              v202 = v216;
              v213 = v216;
              _ZF = v56 == v216;
              v210 = v259;
              if (!_ZF)
              {
                goto LABEL_209;
              }

              goto LABEL_183;
            }
          }
        }

        v213 = 0;
        do
        {
LABEL_209:
          __asm { FCMP            H0, #0 }

          if (!_ZF)
          {
            __asm { FCVT            S0, H0 }

            _S0 = cosf(v265 * _S0);
            __asm { FCVT            H0, S0 }

            *&v211[2 * v213] = LOWORD(_S0);
          }

          ++v213;
        }

        while (v56 != v213);
LABEL_183:
        ++v206;
        v211 += v53;
        v207 = (v207 + v263);
        v212 = (v212 + v53);
      }

      while (v206 != v261);
      v201 = v246 + 1;
      v204 = v251;
      v15 = &v248[v251];
      v54 = *a2;
      v203 = &v244[v251];
      v55 = v256;
      if (v246 + 1 >= ((a2[1] - *a2) >> 2))
      {
        goto LABEL_61;
      }
    }
  }

  v57 = 0;
  v58 = v15 + 6;
  v59 = v291.data + 6;
  do
  {
    v60 = *(v54 + 4 * v57);
    bzero(v15, v55);
    v61 = v59;
    v62 = v58;
    v63 = v261;
    do
    {
      __asm { FCMP            H0, #0 }

      if (!_ZF)
      {
        __asm { FCVT            S0, H0 }

        _S0 = cosf(v60 * _S0);
        __asm { FCVT            H0, S0 }

        *(v62 - 3) = LOWORD(_S0);
      }

      if (v56 != 1)
      {
        __asm { FCMP            H0, #0 }

        if (!_ZF)
        {
          __asm { FCVT            S0, H0 }

          _S0 = cosf(v60 * _S0);
          __asm { FCVT            H0, S0 }

          *(v62 - 2) = LOWORD(_S0);
        }

        if (v56 != 2)
        {
          __asm { FCMP            H0, #0 }

          if (!_ZF)
          {
            __asm { FCVT            S0, H0 }

            _S0 = cosf(v60 * _S0);
            __asm { FCVT            H0, S0 }

            *(v62 - 1) = LOWORD(_S0);
          }

          if (v56 != 3)
          {
            __asm { FCMP            H0, #0 }

            if (!_ZF)
            {
              __asm { FCVT            S0, H0 }

              _S0 = cosf(v60 * _S0);
              __asm { FCVT            H0, S0 }

              *v62 = LOWORD(_S0);
            }

            if (v56 != 4)
            {
              __asm { FCMP            H0, #0 }

              if (!_ZF)
              {
                __asm { FCVT            S0, H0 }

                _S0 = cosf(v60 * _S0);
                __asm { FCVT            H0, S0 }

                v62[1] = LOWORD(_S0);
              }

              if (v56 != 5)
              {
                __asm { FCMP            H0, #0 }

                if (!_ZF)
                {
                  __asm { FCVT            S0, H0 }

                  _S0 = cosf(v60 * _S0);
                  __asm { FCVT            H0, S0 }

                  v62[2] = LOWORD(_S0);
                }

                if (v56 != 6)
                {
                  __asm { FCMP            H0, #0 }

                  if (!_ZF)
                  {
                    __asm { FCVT            S0, H0 }

                    _S0 = cosf(v60 * _S0);
                    __asm { FCVT            H0, S0 }

                    v62[3] = LOWORD(_S0);
                  }
                }
              }
            }
          }
        }
      }

      v62 = (v62 + v53);
      v61 += v263;
      --v63;
    }

    while (v63);
    ++v57;
    v15 += v251;
    v54 = *a2;
    v58 = (v58 + v251);
    v55 = v256;
  }

  while (v57 < (a2[1] - *a2) >> 2);
LABEL_61:
  v86 = v15;
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  v281 = [v249 channelBytes];
  v87 = [v249 rowBytes];
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  memset(&v291, 0, sizeof(v291));
  PixelBufferUtils::asVImageBuffer(pixelBuffer, *MEMORY[0x277CBF3A0], &v291);
  v88 = *a3;
  if (a3[1] != *a3)
  {
    v89 = v291.rowBytes;
    v90 = v291.height;
    v91 = v291.height * v291.rowBytes;
    v288 = v291.height * v291.rowBytes;
    if (v291.height)
    {
      v92 = v291.width;
      if (v291.width)
      {
        v93 = 0;
        v275 = 2 * v291.width + v87 * (v291.height - 1);
        v272 = v291.data + 2 * v291.width + v291.rowBytes * (v291.height - 1);
        v266 = v87 | v291.rowBytes;
        v94 = v291.width & 0xFFFFFFFFFFFFFFF8;
        v95 = v86;
        v96 = v86 + 8;
        v97 = v86 + 6;
        v278 = v291.data;
        v269 = v291.data + 6;
        while (1)
        {
          v98 = *(v88 + 4 * v93);
          bzero(v95, v91);
          if (v92 > 7)
          {
            break;
          }

          v99 = v269;
          v100 = v97;
          v101 = v90;
          v102 = a3;
          v91 = v288;
          do
          {
            __asm { FCMP            H0, #0 }

            if (!_ZF)
            {
              __asm { FCVT            S0, H0 }

              _S0 = v98 * _S0;
              __asm { FCVT            H0, S0 }

              *(v100 - 3) = LOWORD(_S0);
            }

            if (v92 != 1)
            {
              __asm { FCMP            H0, #0 }

              if (!_ZF)
              {
                __asm { FCVT            S0, H0 }

                _S0 = v98 * _S0;
                __asm { FCVT            H0, S0 }

                *(v100 - 2) = LOWORD(_S0);
              }

              if (v92 != 2)
              {
                __asm { FCMP            H0, #0 }

                if (!_ZF)
                {
                  __asm { FCVT            S0, H0 }

                  _S0 = v98 * _S0;
                  __asm { FCVT            H0, S0 }

                  *(v100 - 1) = LOWORD(_S0);
                }

                if (v92 != 3)
                {
                  __asm { FCMP            H0, #0 }

                  if (!_ZF)
                  {
                    __asm { FCVT            S0, H0 }

                    _S0 = v98 * _S0;
                    __asm { FCVT            H0, S0 }

                    *v100 = LOWORD(_S0);
                  }

                  if (v92 != 4)
                  {
                    __asm { FCMP            H0, #0 }

                    if (!_ZF)
                    {
                      __asm { FCVT            S0, H0 }

                      _S0 = v98 * _S0;
                      __asm { FCVT            H0, S0 }

                      v100[1] = LOWORD(_S0);
                    }

                    if (v92 != 5)
                    {
                      __asm { FCMP            H0, #0 }

                      if (!_ZF)
                      {
                        __asm { FCVT            S0, H0 }

                        _S0 = v98 * _S0;
                        __asm { FCVT            H0, S0 }

                        v100[2] = LOWORD(_S0);
                      }

                      if (v92 != 6)
                      {
                        __asm { FCMP            H0, #0 }

                        if (!_ZF)
                        {
                          __asm { FCVT            S0, H0 }

                          _S0 = v98 * _S0;
                          __asm { FCVT            H0, S0 }

                          v100[3] = LOWORD(_S0);
                        }
                      }
                    }
                  }
                }
              }
            }

            v100 = (v100 + v87);
            v99 += v89;
            --v101;
          }

          while (v101);
LABEL_65:
          ++v93;
          v95 += v281;
          v88 = *v102;
          v96 += v281;
          v97 = (v97 + v281);
          if (v93 >= (v102[1] - *v102) >> 2)
          {
            goto LABEL_129;
          }
        }

        _CF = v278 >= &v86[v275 + v281 * v93] || v95 >= v272;
        if (!_CF || (v266 & 0x8000000000000000) != 0)
        {
          v161 = 0;
          v162 = v278;
          v163 = v95;
          v102 = a3;
          v91 = v288;
          do
          {
            for (i = 0; i != v92; ++i)
            {
              __asm { FCMP            H0, #0 }

              if (!_ZF)
              {
                __asm { FCVT            S0, H0 }

                _S0 = v98 * _S0;
                __asm { FCVT            H0, S0 }

                *&v163[2 * i] = LOWORD(_S0);
              }
            }

            ++v161;
            v163 += v87;
            v162 = (v162 + v89);
          }

          while (v161 != v90);
          goto LABEL_65;
        }

        v125 = 0;
        v126 = v96;
        v127 = v278;
        v128 = v95;
        v102 = a3;
        v91 = v288;
LABEL_97:
        v129 = v126;
        v130 = v127;
        v131 = v92 & 0xFFFFFFFFFFFFFFF8;
        while (1)
        {
          _Q0 = *v130;
          v133 = vmovn_s16(vmvnq_s8(vceqzq_f16(*v130)));
          if (v133.i8[0])
          {
            __asm { FCVT            S2, H0 }

            _S2 = v98 * _S2;
            __asm { FCVT            H2, S2 }

            *(v129 - 4) = LOWORD(_S2);
            if ((v133.i8[1] & 1) == 0)
            {
LABEL_101:
              if ((v133.i8[2] & 1) == 0)
              {
                goto LABEL_102;
              }

              goto LABEL_110;
            }
          }

          else if ((v133.i8[1] & 1) == 0)
          {
            goto LABEL_101;
          }

          _H2 = _Q0.i16[1];
          __asm { FCVT            S2, H2 }

          _S2 = v98 * _S2;
          __asm { FCVT            H2, S2 }

          *(v129 - 3) = LOWORD(_S2);
          if ((v133.i8[2] & 1) == 0)
          {
LABEL_102:
            if ((v133.i8[3] & 1) == 0)
            {
              goto LABEL_103;
            }

            goto LABEL_111;
          }

LABEL_110:
          _H2 = _Q0.i16[2];
          __asm { FCVT            S2, H2 }

          _S2 = v98 * _S2;
          __asm { FCVT            H2, S2 }

          *(v129 - 2) = LOWORD(_S2);
          if ((v133.i8[3] & 1) == 0)
          {
LABEL_103:
            if ((v133.i8[4] & 1) == 0)
            {
              goto LABEL_104;
            }

            goto LABEL_112;
          }

LABEL_111:
          _H2 = _Q0.i16[3];
          __asm { FCVT            S2, H2 }

          _S2 = v98 * _S2;
          __asm { FCVT            H2, S2 }

          *(v129 - 1) = LOWORD(_S2);
          if ((v133.i8[4] & 1) == 0)
          {
LABEL_104:
            if ((v133.i8[5] & 1) == 0)
            {
              goto LABEL_105;
            }

            goto LABEL_113;
          }

LABEL_112:
          _H2 = _Q0.i16[4];
          __asm { FCVT            S2, H2 }

          _S2 = v98 * _S2;
          __asm { FCVT            H2, S2 }

          *v129 = LOWORD(_S2);
          if ((v133.i8[5] & 1) == 0)
          {
LABEL_105:
            if ((v133.i8[6] & 1) == 0)
            {
              goto LABEL_106;
            }

            goto LABEL_114;
          }

LABEL_113:
          _H2 = _Q0.i16[5];
          __asm { FCVT            S2, H2 }

          _S2 = v98 * _S2;
          __asm { FCVT            H2, S2 }

          v129[1] = LOWORD(_S2);
          if ((v133.i8[6] & 1) == 0)
          {
LABEL_106:
            if (v133.i8[7])
            {
              goto LABEL_115;
            }

            goto LABEL_98;
          }

LABEL_114:
          _H2 = _Q0.i16[6];
          __asm { FCVT            S2, H2 }

          _S2 = v98 * _S2;
          __asm { FCVT            H2, S2 }

          v129[2] = LOWORD(_S2);
          if (v133.i8[7])
          {
LABEL_115:
            _H0 = _Q0.i16[7];
            __asm { FCVT            S0, H0 }

            _S0 = v98 * _S0;
            __asm { FCVT            H0, S0 }

            v129[3] = LOWORD(_S0);
          }

LABEL_98:
          ++v130;
          v129 += 8;
          v131 -= 8;
          if (!v131)
          {
            if (v92 != v94)
            {
              v157 = v92 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                __asm { FCMP            H0, #0 }

                if (!_ZF)
                {
                  __asm { FCVT            S0, H0 }

                  _S0 = v98 * _S0;
                  __asm { FCVT            H0, S0 }

                  *&v128[2 * v157] = LOWORD(_S0);
                }

                ++v157;
              }

              while (v92 != v157);
            }

            ++v125;
            v128 += v87;
            v127 = (v127 + v89);
            v126 = (v126 + v87);
            if (v125 == v90)
            {
              goto LABEL_65;
            }

            goto LABEL_97;
          }
        }
      }
    }

    v168 = 0;
    do
    {
      bzero(v86, v288);
      ++v168;
      v86 += v281;
    }

    while (v168 < (a3[1] - *a3) >> 2);
  }

LABEL_129:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
}

void embedDepthMapUsingFourierEncoding<float>(__CVBuffer *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v141 = a4;
  v9 = [v141 data];
  v10 = [v141 batchBytes];
  v11 = [v141 channelBytes];
  v147 = [v141 channelBytes];
  v12 = [v141 rowBytes];
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  memset(&v175, 0, sizeof(v175));
  PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v175);
  v13 = v10 * a6;
  v14 = v11 * a5;
  v15 = (v9 + v10 * a6 + v11 * a5);
  v16 = *a2;
  pixelBuffer = a1;
  if (a2[1] == *a2)
  {
    goto LABEL_19;
  }

  height = v175.height;
  rowBytes = v175.rowBytes;
  v17 = v175.height * v175.rowBytes;
  if (!v175.height || (width = v175.width) == 0)
  {
    v29 = 0;
    do
    {
      bzero(v15, v17);
      ++v29;
      v15 += v147;
    }

    while (v29 < (a2[1] - *a2) >> 2);
    goto LABEL_19;
  }

  v19 = v147;
  v142 = v175.height * v175.rowBytes;
  if (v175.width >= 4)
  {
    v86 = 0;
    data = v175.data;
    v131 = &v15[4 * v175.width + v12 * (v175.height - 1)];
    v133 = v175.data + 4 * v175.width + v175.rowBytes * (v175.height - 1);
    v129 = v12 | v175.rowBytes;
    v151 = v175.width & 0xFFFFFFFFFFFFFFFCLL;
    v87 = v13 + v14 + v9 + 8;
    while (1)
    {
      v88 = v131 + v19 * v86;
      v139 = v86;
      v160 = *(v16 + 4 * v86);
      bzero(v15, v17);
      v89 = 0;
      v90 = data;
      v93 = v15 < v133 && data < v88 || v129 < 0;
      v94 = v15;
      v137 = v87;
      v95 = v87;
      v145 = v94;
      do
      {
        if (!v93)
        {
          v97 = v95;
          v98 = v90;
          v99 = v151;
          while (1)
          {
            v163 = vmovn_s32(vmvnq_s8(vceqzq_f32(*v98)));
            v173 = vmulq_n_f32(*v98, v160);
            v166 = sinf(v173.f32[1]);
            *&v100 = sinf(v173.f32[0]);
            *(&v100 + 1) = v166;
            v167 = v100;
            v101 = sinf(v173.f32[2]);
            v102 = v167;
            *(&v102 + 2) = v101;
            v168 = v102;
            v103 = sinf(v173.f32[3]);
            if (v163.i8[0])
            {
              *(v97 - 2) = v168;
              if ((v163.i8[2] & 1) == 0)
              {
LABEL_119:
                if ((v163.i8[4] & 1) == 0)
                {
                  goto LABEL_120;
                }

                goto LABEL_124;
              }
            }

            else if ((v163.i8[2] & 1) == 0)
            {
              goto LABEL_119;
            }

            *(v97 - 1) = *(&v168 + 1);
            if ((v163.i8[4] & 1) == 0)
            {
LABEL_120:
              if (v163.i8[6])
              {
                goto LABEL_125;
              }

              goto LABEL_116;
            }

LABEL_124:
            *v97 = *(&v168 + 2);
            if (v163.i8[6])
            {
LABEL_125:
              v97[1] = v103;
            }

LABEL_116:
            ++v98;
            v97 += 4;
            v99 -= 4;
            if (!v99)
            {
              v96 = v151;
              if (width == v151)
              {
                goto LABEL_112;
              }

              goto LABEL_129;
            }
          }
        }

        v96 = 0;
        do
        {
LABEL_129:
          v104 = v90->f32[v96];
          if (v104 != 0.0)
          {
            *&v94[4 * v96] = sinf(v160 * v104);
          }

          ++v96;
        }

        while (width != v96);
LABEL_112:
        ++v89;
        v94 += v12;
        v90 = (v90 + rowBytes);
        v95 = (v95 + v12);
      }

      while (v89 != height);
      v86 = v139 + 1;
      v19 = v147;
      v15 = &v145[v147];
      v17 = v142;
      v16 = *a2;
      v87 = v137 + v147;
      if (v139 + 1 >= ((a2[1] - *a2) >> 2))
      {
        goto LABEL_19;
      }
    }
  }

  v20 = 0;
  v21 = v13 + v14 + v9 + 8;
  v22 = (v175.data + 8);
  do
  {
    v23 = *(v16 + 4 * v20);
    bzero(v15, v17);
    v24 = v22;
    v25 = v21;
    v26 = height;
    do
    {
      v27 = *(v24 - 2);
      if (v27 != 0.0)
      {
        *(v25 - 2) = sinf(v23 * v27);
      }

      if (width != 1)
      {
        v28 = *(v24 - 1);
        if (v28 != 0.0)
        {
          *(v25 - 1) = sinf(v23 * v28);
        }

        if (width != 2 && *v24 != 0.0)
        {
          *v25 = sinf(v23 * *v24);
        }
      }

      v25 = (v25 + v12);
      v24 = (v24 + rowBytes);
      --v26;
    }

    while (v26);
    ++v20;
    v15 += v147;
    v16 = *a2;
    v21 += v147;
    v17 = v142;
  }

  while (v20 < (a2[1] - *a2) >> 2);
LABEL_19:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  v30 = [v141 channelBytes];
  v31 = [v141 rowBytes];
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  memset(&v175, 0, sizeof(v175));
  PixelBufferUtils::asVImageBuffer(pixelBuffer, *MEMORY[0x277CBF3A0], &v175);
  v32 = *a2;
  if (a2[1] == *a2)
  {
    goto LABEL_37;
  }

  v154 = v175.height;
  v157 = v175.rowBytes;
  v33 = v175.height * v175.rowBytes;
  v148 = v175.height * v175.rowBytes;
  if (!v175.height || (v34 = v175.width) == 0)
  {
    v44 = 0;
    do
    {
      bzero(v15, v148);
      ++v44;
      v15 += v30;
    }

    while (v44 < (a2[1] - *a2) >> 2);
    goto LABEL_37;
  }

  v143 = v30;
  if (v175.width >= 4)
  {
    v105 = 0;
    v132 = 4 * v175.width + v31 * (v175.height - 1);
    v134 = v175.data;
    v130 = v175.data + 4 * v175.width + v175.rowBytes * (v175.height - 1);
    v128 = v31 | v175.rowBytes;
    v106 = v175.width & 0xFFFFFFFFFFFFFFFCLL;
    v107 = (v15 + 8);
    v146 = v15;
    v108 = v30;
    v152 = v31;
    while (1)
    {
      v109 = &v146[v132 + v108 * v105];
      v138 = v105;
      v161 = *(v32 + 4 * v105);
      bzero(v15, v33);
      v110 = 0;
      v111 = v134;
      v114 = v15 < v130 && v134 < v109 || v128 < 0;
      v115 = v15;
      v136 = v107;
      v116 = v107;
      v140 = v115;
      do
      {
        if (!v114)
        {
          v118 = v116;
          v119 = v111;
          v120 = v106;
          while (1)
          {
            v164 = vmovn_s32(vmvnq_s8(vceqzq_f32(*v119)));
            v174 = vmulq_n_f32(*v119, v161);
            v169 = cosf(v174.f32[1]);
            *&v121 = cosf(v174.f32[0]);
            *(&v121 + 1) = v169;
            v170 = v121;
            v122 = cosf(v174.f32[2]);
            v123 = v170;
            *(&v123 + 2) = v122;
            v171 = v123;
            v124 = cosf(v174.f32[3]);
            if (v164.i8[0])
            {
              *(v118 - 2) = v171;
              if ((v164.i8[2] & 1) == 0)
              {
LABEL_150:
                if ((v164.i8[4] & 1) == 0)
                {
                  goto LABEL_151;
                }

                goto LABEL_155;
              }
            }

            else if ((v164.i8[2] & 1) == 0)
            {
              goto LABEL_150;
            }

            *(v118 - 1) = *(&v171 + 1);
            if ((v164.i8[4] & 1) == 0)
            {
LABEL_151:
              if (v164.i8[6])
              {
                goto LABEL_156;
              }

              goto LABEL_147;
            }

LABEL_155:
            *v118 = *(&v171 + 2);
            if (v164.i8[6])
            {
LABEL_156:
              v118[1] = v124;
            }

LABEL_147:
            ++v119;
            v118 += 4;
            v106 -= 4;
            if (!v106)
            {
              v106 = v120;
              v117 = v120;
              v125 = v34 == v120;
              v31 = v152;
              if (!v125)
              {
                goto LABEL_161;
              }

              goto LABEL_143;
            }
          }
        }

        v117 = 0;
        do
        {
LABEL_161:
          v126 = v111->f32[v117];
          if (v126 != 0.0)
          {
            *&v115[4 * v117] = cosf(v161 * v126);
          }

          ++v117;
        }

        while (v34 != v117);
LABEL_143:
        ++v110;
        v115 += v31;
        v111 = (v111 + v157);
        v116 = (v116 + v31);
      }

      while (v110 != v154);
      v105 = v138 + 1;
      v108 = v143;
      v15 = &v140[v143];
      v32 = *a2;
      v107 = (v136 + v143);
      v33 = v148;
      if (v138 + 1 >= ((a2[1] - *a2) >> 2))
      {
        goto LABEL_37;
      }
    }
  }

  v35 = 0;
  v36 = (v15 + 8);
  v37 = (v175.data + 8);
  do
  {
    v38 = *(v32 + 4 * v35);
    bzero(v15, v33);
    v39 = v37;
    v40 = v36;
    v41 = v154;
    do
    {
      v42 = *(v39 - 2);
      if (v42 != 0.0)
      {
        *(v40 - 2) = cosf(v38 * v42);
      }

      if (v34 != 1)
      {
        v43 = *(v39 - 1);
        if (v43 != 0.0)
        {
          *(v40 - 1) = cosf(v38 * v43);
        }

        if (v34 != 2 && *v39 != 0.0)
        {
          *v40 = cosf(v38 * *v39);
        }
      }

      v40 = (v40 + v31);
      v39 = (v39 + v157);
      --v41;
    }

    while (v41);
    ++v35;
    v15 += v143;
    v32 = *a2;
    v36 = (v36 + v143);
    v33 = v148;
  }

  while (v35 < (a2[1] - *a2) >> 2);
LABEL_37:
  v45 = v15;
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  v165 = [v141 channelBytes];
  v46 = [v141 rowBytes];
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  memset(&v175, 0, sizeof(v175));
  PixelBufferUtils::asVImageBuffer(pixelBuffer, *MEMORY[0x277CBF3A0], &v175);
  v47 = *a3;
  if (a3[1] != *a3)
  {
    v48 = v175.rowBytes;
    v49 = v175.height;
    v50 = v175.height * v175.rowBytes;
    v172 = v175.height * v175.rowBytes;
    if (v175.height)
    {
      v51 = v175.width;
      if (v175.width)
      {
        v52 = 0;
        v158 = v175.data + 4 * v175.width + v175.rowBytes * (v175.height - 1);
        v159 = 4 * v175.width + v46 * (v175.height - 1);
        v150 = v46 | v175.rowBytes;
        v53 = v175.width & 0xFFFFFFFFFFFFFFFCLL;
        v54 = v45;
        v55 = (v45 + 8);
        v56 = (v45 + 12);
        v162 = v175.data;
        v155 = (v175.data + 12);
        while (1)
        {
          v57 = *(v47 + 4 * v52);
          bzero(v54, v50);
          if (v51 > 7)
          {
            break;
          }

          v58 = v155;
          v59 = v56;
          v60 = v49;
          v61 = a3;
          v50 = v172;
          do
          {
            v62 = *(v58 - 3);
            if (v62 != 0.0)
            {
              *(v59 - 3) = v57 * v62;
            }

            if (v51 != 1)
            {
              v63 = *(v58 - 2);
              if (v63 != 0.0)
              {
                *(v59 - 2) = v57 * v63;
              }

              if (v51 != 2)
              {
                v64 = *(v58 - 1);
                if (v64 != 0.0)
                {
                  *(v59 - 1) = v57 * v64;
                }

                if (v51 != 3)
                {
                  if (*v58 != 0.0)
                  {
                    *v59 = v57 * *v58;
                  }

                  if (v51 != 4)
                  {
                    v65 = v58[1];
                    if (v65 != 0.0)
                    {
                      v59[1] = v57 * v65;
                    }

                    if (v51 != 5)
                    {
                      v66 = v58[2];
                      if (v66 != 0.0)
                      {
                        v59[2] = v57 * v66;
                      }

                      if (v51 != 6)
                      {
                        v67 = v58[3];
                        if (v67 != 0.0)
                        {
                          v59[3] = v57 * v67;
                        }
                      }
                    }
                  }
                }
              }
            }

            v59 = (v59 + v46);
            v58 = (v58 + v48);
            --v60;
          }

          while (v60);
LABEL_41:
          ++v52;
          v54 += v165;
          v47 = *v61;
          v55 = (v55 + v165);
          v56 = (v56 + v165);
          if (v52 >= (v61[1] - *v61) >> 2)
          {
            goto LABEL_97;
          }
        }

        v68 = v162 >= &v45[v159 + v165 * v52] || v54 >= v158;
        if (!v68 || (v150 & 0x8000000000000000) != 0)
        {
          v80 = 0;
          v81 = v162;
          v82 = v54;
          v61 = a3;
          v50 = v172;
          do
          {
            for (i = 0; i != v51; ++i)
            {
              v84 = v81[i];
              if (v84 != 0.0)
              {
                *&v82[4 * i] = v57 * v84;
              }
            }

            ++v80;
            v82 += v46;
            v81 = (v81 + v48);
          }

          while (v80 != v49);
          goto LABEL_41;
        }

        v69 = 0;
        v70 = v55;
        v71 = v162;
        v72 = v54;
        v61 = a3;
        v50 = v172;
LABEL_73:
        v73 = v70;
        v74 = v71;
        v75 = v51 & 0xFFFFFFFFFFFFFFFCLL;
        while (1)
        {
          v76 = *v74;
          v77 = vmovn_s32(vmvnq_s8(vceqzq_f32(*v74)));
          if (v77.i8[0])
          {
            *(v73 - 2) = v57 * v76.f32[0];
            if ((v77.i8[2] & 1) == 0)
            {
LABEL_77:
              if ((v77.i8[4] & 1) == 0)
              {
                goto LABEL_78;
              }

              goto LABEL_82;
            }
          }

          else if ((v77.i8[2] & 1) == 0)
          {
            goto LABEL_77;
          }

          *(v73 - 1) = vmuls_lane_f32(v57, *v76.f32, 1);
          if ((v77.i8[4] & 1) == 0)
          {
LABEL_78:
            if (v77.i8[6])
            {
              goto LABEL_83;
            }

            goto LABEL_74;
          }

LABEL_82:
          *v73 = vmuls_lane_f32(v57, v76, 2);
          if (v77.i8[6])
          {
LABEL_83:
            v73[1] = vmuls_lane_f32(v57, v76, 3);
          }

LABEL_74:
          ++v74;
          v73 += 4;
          v75 -= 4;
          if (!v75)
          {
            if (v51 != v53)
            {
              v78 = v51 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                v79 = v71->f32[v78];
                if (v79 != 0.0)
                {
                  *&v72[4 * v78] = v57 * v79;
                }

                ++v78;
              }

              while (v51 != v78);
            }

            ++v69;
            v72 += v46;
            v71 = (v71 + v48);
            v70 = (v70 + v46);
            if (v69 == v49)
            {
              goto LABEL_41;
            }

            goto LABEL_73;
          }
        }
      }
    }

    v85 = 0;
    do
    {
      bzero(v45, v172);
      ++v85;
      v45 += v165;
    }

    while (v85 < (a3[1] - *a3) >> 2);
  }

LABEL_97:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
}

void sub_2402FBC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2402FBD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2402FF0D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

double *ImageUtils::IntegralImage<double>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  result = *(a2 + 8);
  if (*(a2 + 32) < 8 * v3 * v4)
  {
    if (result)
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = 0.0;
    v8 = v4;
    do
    {
      v9 = *v6++;
      v7 = v7 + v9;
      *result++ = v7;
      --v8;
    }

    while (v8);
    if (v3 >= 2)
    {
      v10 = *(a2 + 8);
      for (i = 1; i != v3; ++i)
      {
        v12 = 0.0;
        v13 = v4;
        do
        {
          v14 = *v6++;
          v12 = v12 + v14;
          v15 = *v10++;
          *result++ = v12 + v15;
          --v13;
        }

        while (v13);
      }
    }
  }

  return result;
}

double *ImageUtils::IntegralImage<float>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  result = *(a2 + 8);
  if (*(a2 + 32) < 8 * v3 * v4)
  {
    if (result)
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = 0.0;
    v8 = v4;
    do
    {
      v9 = *v6++;
      v7 = v7 + v9;
      *result++ = v7;
      --v8;
    }

    while (v8);
    if (v3 >= 2)
    {
      v10 = *(a2 + 8);
      for (i = 1; i != v3; ++i)
      {
        v12 = 0.0;
        v13 = v4;
        do
        {
          v14 = *v6++;
          v12 = v12 + v14;
          v15 = *v10++;
          *result++ = v15 + v12;
          --v13;
        }

        while (v13);
      }
    }
  }

  return result;
}

uint64_t ImageUtils::AdaptiveThreshold<double>(uint64_t a1, unsigned int a2, int a3, uint64_t a4, double a5)
{
  v9 = *(a1 + 20);
  if (!a3)
  {
    if (v9 <= a2 || (v14 = *(a1 + 16), v14 <= a2))
    {
LABEL_235:
      __assert_rtn("AdaptiveThreshold", "ImageUtils.cpp", 67, "im.Cols() > meanKernelSize && im.Rows() > meanKernelSize");
    }

    v15 = *(a1 + 16);
    v16 = *(a1 + 20);
    v17 = v15;
    if (*(a4 + 32) < v14 * v9)
    {
      if (*(a4 + 8) && *(a4 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }

      operator new[]();
    }

    *(a4 + 16) = v14;
    *(a4 + 20) = v9;
    if (8 * v15 * v9)
    {
      operator new[]();
    }

    v194 = 0;
    if (v9)
    {
      v195 = *(a1 + 8);
      v196 = 0.0;
      v197 = v9;
      v198 = 0;
      do
      {
        v199 = *v195++;
        v196 = v196 + v199;
        *v198++ = v196;
        --v197;
      }

      while (v197);
      if (v17 >= 2)
      {
        for (i = 1; i != v17; ++i)
        {
          v201 = 0.0;
          v202 = v9;
          do
          {
            v203 = *v195++;
            v201 = v201 + v203;
            v204 = *v194++;
            *v198++ = v201 + v204;
            --v202;
          }

          while (v202);
        }
      }
    }

    v205 = a2 - 1;
    if (v205 >= v17 || v205 >= v9)
    {
      __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
    }

    v206 = *(a1 + 20);
    v384 = v206 - 1;
    if (v384 >= v9)
    {
      __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
    }

    v207 = ~a2;
    v382 = v206 + ~a2;
    if (v382 >= v9)
    {
      __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
    }

    v208 = *(a1 + 16);
    v209 = v208 - 1;
    if (v208 - 1 >= v17)
    {
      __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
    }

    v210 = v208 + v207;
    if (v208 + v207 >= v17)
    {
      __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
    }

    v376 = *(a1 + 16);
    LODWORD(v211) = 0;
    v212 = a2 >> 1;
    v213 = a2 & 1;
    v214 = (a2 >> 1) + v213 - 1;
    v215 = v9 - (a2 >> 1);
    v380 = v14 - (a2 >> 1);
    v216 = 8 * v205;
    v217 = v9 * v205;
    v218 = *(v216 + 8 * v217);
    v219 = 8 * v384;
    v220 = 8 * v382;
    v221 = *(v219 + 8 * v217) - *(v220 + 8 * v217);
    v222 = v209 * v9;
    v223 = v210 * v9;
    v224 = *(v216 + 8 * v222) - *(v216 + 8 * v223);
    v372 = v223;
    v374 = v222;
    v225 = *(v219 + 8 * v222) + *(v220 + 8 * v223) - *(v220 + 8 * v222) - *(v219 + 8 * v223);
    v226 = *(a1 + 8);
    v227 = (a2 * a2);
    v228 = *(a4 + 8);
    v386 = ~v214;
    v229 = v212 + (a2 & 1);
    if (v229 <= 1)
    {
      v230 = 1;
    }

    else
    {
      v230 = v229;
    }

    v231 = v230 & 0xFFFFFFF0;
    v232 = vdupq_lane_s64(*&a5, 0);
    v233 = vdupq_lane_s64(v218, 0);
    v234 = vdupq_lane_s64(*&v221, 0);
    v235 = v231;
    v236 = v16 - v16 * v229;
    v237 = v16 + v16 * v212;
    v238 = v230 - v215;
    v239 = 8 * v217;
    v240 = v230 - v212 - v213;
    v241 = v239 + 8 * v240;
    v242 = v239 + 8 * (v212 + v230);
    v243 = 1;
    v244.i64[0] = 0x101010101010101;
    v244.i64[1] = 0x101010101010101;
    while (1)
    {
      v245 = v243;
      v246 = v236;
      v247 = v237;
      if (v229 <= 0xF)
      {
        break;
      }

      v249 = &v226[v235];
      v250 = v228;
      v251 = v230 & 0xFFFFFFF0;
      do
      {
        v253 = *(v226 + 12);
        v252 = *(v226 + 14);
        v255 = *(v226 + 8);
        v254 = *(v226 + 10);
        v257 = *(v226 + 4);
        v256 = *(v226 + 6);
        v258 = *v226;
        v259 = *(v226 + 2);
        v226 += 16;
        *v250++ = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v233, vmulq_n_f64(vaddq_f64(v258, v232), v227)), vcgeq_f64(v233, vmulq_n_f64(vaddq_f64(v259, v232), v227))), vuzp1q_s32(vcgeq_f64(v233, vmulq_n_f64(vaddq_f64(v257, v232), v227)), vcgeq_f64(v233, vmulq_n_f64(vaddq_f64(v256, v232), v227))))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v233, vmulq_n_f64(vaddq_f64(v255, v232), v227)), vcgeq_f64(v233, vmulq_n_f64(vaddq_f64(v254, v232), v227))), vuzp1q_s32(vcgeq_f64(v233, vmulq_n_f64(vaddq_f64(v253, v232), v227)), vcgeq_f64(v233, vmulq_n_f64(vaddq_f64(v252, v232), v227)))))), v244);
        v251 -= 16;
      }

      while (v251);
      v228 = (v228 + v231);
      v248 = v230 & 0xFFFFFFF0;
      if (v231 != v230)
      {
        goto LABEL_144;
      }

LABEL_146:
      if (v230 >= v215)
      {
        v263 = v230;
        v226 = v249;
        if (v230 >= v206)
        {
          goto LABEL_138;
        }
      }

      else
      {
        v262 = 0;
        v226 = v249;
        do
        {
          if (v212 + v230 + v262 >= v16)
          {
            __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
          }

          if (v240 + v262 >= v16)
          {
            __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
          }

          v228->i8[v262] = (v249[v262] + a5) * v227 > *(v242 + 8 * v262) - *(v241 + 8 * v262);
          ++v226;
          ++v262;
        }

        while (v238 + v262);
        v228 = (v228 + v262);
        v263 = v230 + v262;
        if (v230 + v262 >= v206)
        {
          goto LABEL_138;
        }
      }

      v264 = v206 + ~v263;
      if (v264 <= 0xE)
      {
        goto LABEL_159;
      }

      v265 = v264 + 1;
      v266 = (v264 + 1) & 0x1FFFFFFF0;
      v267 = &v226[v266];
      v268 = v228;
      v269 = v266;
      do
      {
        v271 = *(v226 + 12);
        v270 = *(v226 + 14);
        v273 = *(v226 + 8);
        v272 = *(v226 + 10);
        v275 = *(v226 + 4);
        v274 = *(v226 + 6);
        v276 = *v226;
        v277 = *(v226 + 2);
        v226 += 16;
        *v268++ = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v234, vmulq_n_f64(vaddq_f64(v276, v232), v227)), vcgeq_f64(v234, vmulq_n_f64(vaddq_f64(v277, v232), v227))), vuzp1q_s32(vcgeq_f64(v234, vmulq_n_f64(vaddq_f64(v275, v232), v227)), vcgeq_f64(v234, vmulq_n_f64(vaddq_f64(v274, v232), v227))))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v234, vmulq_n_f64(vaddq_f64(v273, v232), v227)), vcgeq_f64(v234, vmulq_n_f64(vaddq_f64(v272, v232), v227))), vuzp1q_s32(vcgeq_f64(v234, vmulq_n_f64(vaddq_f64(v271, v232), v227)), vcgeq_f64(v234, vmulq_n_f64(vaddq_f64(v270, v232), v227)))))), v244);
        v269 -= 16;
      }

      while (v269);
      v228 = (v228 + v266);
      if (v265 != v266)
      {
        v263 += v266;
        v226 = v267;
LABEL_159:
        v278 = v206 - v263;
        do
        {
          v279 = *v226++;
          v228->i8[0] = (v279 + a5) * v227 > v221;
          v228 = (v228 + 1);
          --v278;
        }

        while (v278);
        goto LABEL_138;
      }

      v226 = v267;
LABEL_138:
      LODWORD(v211) = v211 + 1;
      v243 = v245 + 1;
      v236 = v246 + v16;
      v237 = v247 + v16;
      if (v211 > v214)
      {
        v280 = v380;
        if (v211 < v380)
        {
          v211 = v245;
          v378 = 8 * v240;
          v281 = 8 * (v212 + v230);
          v282.i64[0] = 0x101010101010101;
          v282.i64[1] = 0x101010101010101;
          while (1)
          {
            if (v212 + v211 >= v17)
            {
              __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
            }

            v283 = (v212 + v211) * v16;
            v284 = v211 + v386;
            if (v211 + v386 >= v17)
            {
              __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
            }

            v285 = v284 * v16;
            v286 = *(8 * v205 + 8 * v283) - *(8 * v205 + 8 * v284 * v16);
            if (v229 <= 0xF)
            {
              break;
            }

            v288 = &v226[v235];
            v289 = vdupq_lane_s64(*&v286, 0);
            v290 = v228;
            v291 = v230 & 0xFFFFFFF0;
            do
            {
              v293 = *(v226 + 12);
              v292 = *(v226 + 14);
              v295 = *(v226 + 8);
              v294 = *(v226 + 10);
              v297 = *(v226 + 4);
              v296 = *(v226 + 6);
              v298 = *v226;
              v299 = *(v226 + 2);
              v226 += 16;
              *v290++ = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v289, vmulq_n_f64(vaddq_f64(v298, v232), v227)), vcgeq_f64(v289, vmulq_n_f64(vaddq_f64(v299, v232), v227))), vuzp1q_s32(vcgeq_f64(v289, vmulq_n_f64(vaddq_f64(v297, v232), v227)), vcgeq_f64(v289, vmulq_n_f64(vaddq_f64(v296, v232), v227))))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v289, vmulq_n_f64(vaddq_f64(v295, v232), v227)), vcgeq_f64(v289, vmulq_n_f64(vaddq_f64(v294, v232), v227))), vuzp1q_s32(vcgeq_f64(v289, vmulq_n_f64(vaddq_f64(v293, v232), v227)), vcgeq_f64(v289, vmulq_n_f64(vaddq_f64(v292, v232), v227)))))), v282);
              v291 -= 16;
            }

            while (v291);
            v228 = (v228 + v231);
            v287 = v230 & 0xFFFFFFF0;
            if (v231 != v230)
            {
              goto LABEL_173;
            }

LABEL_175:
            if (v230 >= v215)
            {
              v309 = v230;
              v226 = v288;
              if (v230 >= v206)
              {
                goto LABEL_165;
              }
            }

            else
            {
              v302 = 0;
              v303 = 8 * v247;
              v304 = v281 + v303;
              v305 = 8 * v246;
              v306 = v281 + v305;
              v307 = v378 + v303;
              v308 = v378 + v305;
              v226 = v288;
              do
              {
                if (v212 + v230 + v302 >= v16)
                {
                  __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
                }

                if (v240 + v302 >= v16)
                {
                  __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
                }

                v228->i8[v302] = (v288[v302] + a5) * v227 > *(v304 + 8 * v302) - *(v307 + 8 * v302) - *(v306 + 8 * v302) + *(v308 + 8 * v302);
                ++v226;
                ++v302;
              }

              while (v238 + v302);
              v228 = (v228 + v302);
              v309 = v230 + v302;
              v280 = v380;
              if (v230 + v302 >= v206)
              {
                goto LABEL_165;
              }
            }

            v310 = *(8 * v384 + 8 * v283) - *(8 * v382 + 8 * v283) - *(8 * v384 + 8 * v285) + *(8 * v382 + 8 * v285);
            v311 = v206 + ~v309;
            if (v311 < 0xF)
            {
              goto LABEL_188;
            }

            v312 = v311 + 1;
            v313 = (v311 + 1) & 0x1FFFFFFF0;
            v314 = &v226[v313];
            v315 = vdupq_lane_s64(*&v310, 0);
            v316 = v228;
            v317 = v313;
            do
            {
              v319 = *(v226 + 12);
              v318 = *(v226 + 14);
              v321 = *(v226 + 8);
              v320 = *(v226 + 10);
              v323 = *(v226 + 4);
              v322 = *(v226 + 6);
              v324 = *v226;
              v325 = *(v226 + 2);
              v226 += 16;
              *v316++ = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v315, vmulq_n_f64(vaddq_f64(v324, v232), v227)), vcgeq_f64(v315, vmulq_n_f64(vaddq_f64(v325, v232), v227))), vuzp1q_s32(vcgeq_f64(v315, vmulq_n_f64(vaddq_f64(v323, v232), v227)), vcgeq_f64(v315, vmulq_n_f64(vaddq_f64(v322, v232), v227))))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v315, vmulq_n_f64(vaddq_f64(v321, v232), v227)), vcgeq_f64(v315, vmulq_n_f64(vaddq_f64(v320, v232), v227))), vuzp1q_s32(vcgeq_f64(v315, vmulq_n_f64(vaddq_f64(v319, v232), v227)), vcgeq_f64(v315, vmulq_n_f64(vaddq_f64(v318, v232), v227)))))), v282);
              v317 -= 16;
            }

            while (v317);
            v228 = (v228 + v313);
            if (v312 != v313)
            {
              v309 += v313;
              v226 = v314;
LABEL_188:
              v326 = v206 - v309;
              do
              {
                v327 = *v226++;
                v228->i8[0] = (v327 + a5) * v227 > v310;
                v228 = (v228 + 1);
                --v326;
              }

              while (v326);
              goto LABEL_165;
            }

            v226 = v314;
LABEL_165:
            ++v211;
            v246 += v16;
            v247 += v16;
            if (v211 == v280)
            {
              goto LABEL_191;
            }
          }

          v287 = 0;
          v288 = v226;
LABEL_173:
          v300 = v230 - v287;
          do
          {
            v301 = *v288++;
            v228->i8[0] = (v301 + a5) * v227 > v286;
            v228 = (v228 + 1);
            --v300;
          }

          while (v300);
          goto LABEL_175;
        }

LABEL_191:
        if (v211 >= v376)
        {
          return 0;
        }

        v328 = vdupq_lane_s64(*&v224, 0);
        v329 = vdupq_lane_s64(*&v225, 0);
        v330 = 8 * v240;
        v331 = 8 * v372 + v330;
        v332 = 8 * v374 + v330;
        v333 = v212 + v230;
        v334 = 8 * v333;
        v335 = 8 * v372 + v334;
        v336 = 8 * v374 + v334;
        v337.i64[0] = 0x101010101010101;
        v337.i64[1] = 0x101010101010101;
        while (2)
        {
          if (v229 <= 0xF)
          {
            v338 = 0;
            v339 = v226;
            goto LABEL_200;
          }

          v339 = &v226[v235];
          v340 = v228;
          v341 = v230 & 0xFFFFFFF0;
          do
          {
            v343 = *(v226 + 12);
            v342 = *(v226 + 14);
            v345 = *(v226 + 8);
            v344 = *(v226 + 10);
            v347 = *(v226 + 4);
            v346 = *(v226 + 6);
            v348 = *v226;
            v349 = *(v226 + 2);
            v226 += 16;
            *v340++ = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v328, vmulq_n_f64(vaddq_f64(v348, v232), v227)), vcgeq_f64(v328, vmulq_n_f64(vaddq_f64(v349, v232), v227))), vuzp1q_s32(vcgeq_f64(v328, vmulq_n_f64(vaddq_f64(v347, v232), v227)), vcgeq_f64(v328, vmulq_n_f64(vaddq_f64(v346, v232), v227))))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v328, vmulq_n_f64(vaddq_f64(v345, v232), v227)), vcgeq_f64(v328, vmulq_n_f64(vaddq_f64(v344, v232), v227))), vuzp1q_s32(vcgeq_f64(v328, vmulq_n_f64(vaddq_f64(v343, v232), v227)), vcgeq_f64(v328, vmulq_n_f64(vaddq_f64(v342, v232), v227)))))), v337);
            v341 -= 16;
          }

          while (v341);
          v228 = (v228 + v231);
          v338 = v230 & 0xFFFFFFF0;
          if (v231 != v230)
          {
LABEL_200:
            v350 = v230 - v338;
            do
            {
              v351 = *v339++;
              v228->i8[0] = (v351 + a5) * v227 > v224;
              v228 = (v228 + 1);
              --v350;
            }

            while (v350);
          }

          if (v230 >= v215)
          {
            v353 = v230;
            v226 = v339;
            if (v230 < v206)
            {
              goto LABEL_210;
            }
          }

          else
          {
            v352 = 0;
            v226 = v339;
            do
            {
              if (v333 + v352 >= v16)
              {
                __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
              }

              if (v240 + v352 >= v16)
              {
                __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
              }

              v228->i8[v352] = (v339[v352] + a5) * v227 > *(v336 + 8 * v352) - *(v332 + 8 * v352) - *(v335 + 8 * v352) + *(v331 + 8 * v352);
              ++v226;
              ++v352;
            }

            while (v238 + v352);
            v228 = (v228 + v352);
            v353 = v230 + v352;
            if (v230 + v352 < v206)
            {
LABEL_210:
              v354 = v206 + ~v353;
              if (v354 <= 0xE)
              {
LABEL_215:
                v368 = v206 - v353;
                do
                {
                  v369 = *v226++;
                  v228->i8[0] = (v369 + a5) * v227 > v225;
                  v228 = (v228 + 1);
                  --v368;
                }

                while (v368);
              }

              else
              {
                v355 = v354 + 1;
                v356 = (v354 + 1) & 0x1FFFFFFF0;
                v357 = &v226[v356];
                v358 = v228;
                v359 = v356;
                do
                {
                  v361 = *(v226 + 12);
                  v360 = *(v226 + 14);
                  v363 = *(v226 + 8);
                  v362 = *(v226 + 10);
                  v365 = *(v226 + 4);
                  v364 = *(v226 + 6);
                  v366 = *v226;
                  v367 = *(v226 + 2);
                  v226 += 16;
                  *v358++ = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v329, vmulq_n_f64(vaddq_f64(v366, v232), v227)), vcgeq_f64(v329, vmulq_n_f64(vaddq_f64(v367, v232), v227))), vuzp1q_s32(vcgeq_f64(v329, vmulq_n_f64(vaddq_f64(v365, v232), v227)), vcgeq_f64(v329, vmulq_n_f64(vaddq_f64(v364, v232), v227))))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v329, vmulq_n_f64(vaddq_f64(v363, v232), v227)), vcgeq_f64(v329, vmulq_n_f64(vaddq_f64(v362, v232), v227))), vuzp1q_s32(vcgeq_f64(v329, vmulq_n_f64(vaddq_f64(v361, v232), v227)), vcgeq_f64(v329, vmulq_n_f64(vaddq_f64(v360, v232), v227)))))), v337);
                  v359 -= 16;
                }

                while (v359);
                v228 = (v228 + v356);
                if (v355 != v356)
                {
                  v353 += v356;
                  v226 = v357;
                  goto LABEL_215;
                }

                v226 = v357;
              }
            }
          }

          LODWORD(v211) = v211 + 1;
          if (v211 == v376)
          {
            return 0;
          }

          continue;
        }
      }
    }

    v248 = 0;
    v249 = v226;
LABEL_144:
    v260 = v230 - v248;
    do
    {
      v261 = *v249++;
      v228->i8[0] = (v261 + a5) * v227 > *&v218;
      v228 = (v228 + 1);
      --v260;
    }

    while (v260);
    goto LABEL_146;
  }

  if (v9 <= a2)
  {
    goto LABEL_235;
  }

  v10 = *(a1 + 16);
  if (v10 <= a2)
  {
    goto LABEL_235;
  }

  v11 = *(a1 + 16);
  v12 = *(a1 + 20);
  v13 = v11;
  if (*(a4 + 32) < v10 * v9)
  {
    if (*(a4 + 8))
    {
      if (*(a4 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  *(a4 + 16) = v10;
  *(a4 + 20) = v9;
  if (8 * v11 * v9)
  {
    operator new[]();
  }

  v18 = 0;
  if (v9)
  {
    v19 = *(a1 + 8);
    v20 = 0.0;
    v21 = v9;
    v22 = 0;
    do
    {
      v23 = *v19++;
      v20 = v20 + v23;
      *v22++ = v20;
      --v21;
    }

    while (v21);
    if (v13 >= 2)
    {
      for (j = 1; j != v13; ++j)
      {
        v25 = 0.0;
        v26 = v9;
        do
        {
          v27 = *v19++;
          v25 = v25 + v27;
          v28 = *v18++;
          *v22++ = v25 + v28;
          --v26;
        }

        while (v26);
      }
    }
  }

  v29 = a2 - 1;
  if (v29 >= v13 || v29 >= v9)
  {
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  v30 = *(a1 + 20);
  v383 = v30 - 1;
  if (v383 >= v9)
  {
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  v31 = ~a2;
  v381 = v30 + ~a2;
  if (v381 >= v9)
  {
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  v32 = *(a1 + 16);
  v33 = v32 - 1;
  if (v32 - 1 >= v13)
  {
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  v34 = v32 + v31;
  if (v32 + v31 >= v13)
  {
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  v375 = *(a1 + 16);
  LODWORD(v35) = 0;
  v36 = a2 >> 1;
  v37 = a2 & 1;
  v38 = (a2 >> 1) + v37 - 1;
  v39 = v9 - (a2 >> 1);
  v379 = v10 - (a2 >> 1);
  v40 = 8 * v29;
  v41 = v9 * v29;
  v42 = *(v40 + 8 * v41);
  v43 = 8 * v383;
  v44 = 8 * v381;
  v45 = *(v43 + 8 * v41) - *(v44 + 8 * v41);
  v46 = v33 * v9;
  v47 = v34 * v9;
  v48 = *(v40 + 8 * v46) - *(v40 + 8 * v47);
  v371 = v47;
  v373 = v46;
  v49 = *(v43 + 8 * v46) + *(v44 + 8 * v47) - *(v44 + 8 * v46) - *(v43 + 8 * v47);
  v50 = *(a1 + 8);
  v51 = (a2 * a2);
  v52 = *(a4 + 8);
  v385 = ~v38;
  v53 = v36 + (a2 & 1);
  if (v53 <= 1)
  {
    v54 = 1;
  }

  else
  {
    v54 = v53;
  }

  v55 = v54 & 0xFFFFFFF0;
  v56 = vdupq_lane_s64(*&a5, 0);
  v57 = vdupq_lane_s64(v42, 0);
  v58 = vdupq_lane_s64(*&v45, 0);
  v59 = v55;
  v60 = v12 - v12 * v53;
  v61 = v12 + v12 * v36;
  v62 = v54 - v39;
  v63 = 8 * v41;
  v64 = v54 - v36 - v37;
  v65 = v63 + 8 * v64;
  v66 = v63 + 8 * (v36 + v54);
  v67 = 1;
  v68.i64[0] = 0x101010101010101;
  v68.i64[1] = 0x101010101010101;
  do
  {
    v69 = v67;
    v70 = v60;
    v71 = v61;
    if (v53 <= 0xF)
    {
      v72 = 0;
      v73 = v50;
LABEL_45:
      v84 = v54 - v72;
      do
      {
        v85 = *v73++;
        v52->i8[0] = (v85 + a5) * v51 <= *&v42;
        v52 = (v52 + 1);
        --v84;
      }

      while (v84);
      goto LABEL_47;
    }

    v73 = &v50[v59];
    v74 = v52;
    v75 = v54 & 0xFFFFFFF0;
    do
    {
      v77 = *(v50 + 12);
      v76 = *(v50 + 14);
      v79 = *(v50 + 8);
      v78 = *(v50 + 10);
      v81 = *(v50 + 4);
      v80 = *(v50 + 6);
      v82 = *v50;
      v83 = *(v50 + 2);
      v50 += 16;
      *v74++ = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v57, vmulq_n_f64(vaddq_f64(v82, v56), v51)), vcgeq_f64(v57, vmulq_n_f64(vaddq_f64(v83, v56), v51))), vuzp1q_s32(vcgeq_f64(v57, vmulq_n_f64(vaddq_f64(v81, v56), v51)), vcgeq_f64(v57, vmulq_n_f64(vaddq_f64(v80, v56), v51)))), vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v57, vmulq_n_f64(vaddq_f64(v79, v56), v51)), vcgeq_f64(v57, vmulq_n_f64(vaddq_f64(v78, v56), v51))), vuzp1q_s32(vcgeq_f64(v57, vmulq_n_f64(vaddq_f64(v77, v56), v51)), vcgeq_f64(v57, vmulq_n_f64(vaddq_f64(v76, v56), v51))))), v68);
      v75 -= 16;
    }

    while (v75);
    v52 = (v52 + v55);
    v72 = v54 & 0xFFFFFFF0;
    if (v55 != v54)
    {
      goto LABEL_45;
    }

LABEL_47:
    if (v54 >= v39)
    {
      v87 = v54;
      v50 = v73;
      if (v54 >= v30)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v86 = 0;
      v50 = v73;
      do
      {
        if (v36 + v54 + v86 >= v12)
        {
          __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
        }

        if (v64 + v86 >= v12)
        {
          __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
        }

        v52->i8[v86] = (v73[v86] + a5) * v51 <= *(v66 + 8 * v86) - *(v65 + 8 * v86);
        ++v50;
        ++v86;
      }

      while (v62 + v86);
      v52 = (v52 + v86);
      v87 = v54 + v86;
      if (v54 + v86 >= v30)
      {
        goto LABEL_39;
      }
    }

    v88 = v30 + ~v87;
    if (v88 > 0xE)
    {
      v89 = v88 + 1;
      v90 = (v88 + 1) & 0x1FFFFFFF0;
      v91 = &v50[v90];
      v92 = v52;
      v93 = v90;
      do
      {
        v95 = *(v50 + 12);
        v94 = *(v50 + 14);
        v97 = *(v50 + 8);
        v96 = *(v50 + 10);
        v99 = *(v50 + 4);
        v98 = *(v50 + 6);
        v100 = *v50;
        v101 = *(v50 + 2);
        v50 += 16;
        *v92++ = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v58, vmulq_n_f64(vaddq_f64(v100, v56), v51)), vcgeq_f64(v58, vmulq_n_f64(vaddq_f64(v101, v56), v51))), vuzp1q_s32(vcgeq_f64(v58, vmulq_n_f64(vaddq_f64(v99, v56), v51)), vcgeq_f64(v58, vmulq_n_f64(vaddq_f64(v98, v56), v51)))), vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v58, vmulq_n_f64(vaddq_f64(v97, v56), v51)), vcgeq_f64(v58, vmulq_n_f64(vaddq_f64(v96, v56), v51))), vuzp1q_s32(vcgeq_f64(v58, vmulq_n_f64(vaddq_f64(v95, v56), v51)), vcgeq_f64(v58, vmulq_n_f64(vaddq_f64(v94, v56), v51))))), v68);
        v93 -= 16;
      }

      while (v93);
      v52 = (v52 + v90);
      if (v89 == v90)
      {
        v50 = v91;
        goto LABEL_39;
      }

      v87 += v90;
      v50 = v91;
    }

    v102 = v30 - v87;
    do
    {
      v103 = *v50++;
      v52->i8[0] = (v103 + a5) * v51 <= v45;
      v52 = (v52 + 1);
      --v102;
    }

    while (v102);
LABEL_39:
    LODWORD(v35) = v35 + 1;
    v67 = v69 + 1;
    v60 = v70 + v12;
    v61 = v71 + v12;
  }

  while (v35 <= v38);
  v104 = v379;
  if (v35 < v379)
  {
    v35 = v69;
    v377 = 8 * v64;
    v105 = 8 * (v36 + v54);
    v106.i64[0] = 0x101010101010101;
    v106.i64[1] = 0x101010101010101;
    while (1)
    {
      if (v36 + v35 >= v13)
      {
        __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
      }

      v107 = (v36 + v35) * v12;
      v108 = v35 + v385;
      if (v35 + v385 >= v13)
      {
        __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
      }

      v109 = v108 * v12;
      v110 = *(8 * v29 + 8 * v107) - *(8 * v29 + 8 * v108 * v12);
      if (v53 <= 0xF)
      {
        break;
      }

      v112 = &v50[v59];
      v113 = vdupq_lane_s64(*&v110, 0);
      v114 = v52;
      v115 = v54 & 0xFFFFFFF0;
      do
      {
        v117 = *(v50 + 12);
        v116 = *(v50 + 14);
        v119 = *(v50 + 8);
        v118 = *(v50 + 10);
        v121 = *(v50 + 4);
        v120 = *(v50 + 6);
        v122 = *v50;
        v123 = *(v50 + 2);
        v50 += 16;
        *v114++ = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v113, vmulq_n_f64(vaddq_f64(v122, v56), v51)), vcgeq_f64(v113, vmulq_n_f64(vaddq_f64(v123, v56), v51))), vuzp1q_s32(vcgeq_f64(v113, vmulq_n_f64(vaddq_f64(v121, v56), v51)), vcgeq_f64(v113, vmulq_n_f64(vaddq_f64(v120, v56), v51)))), vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v113, vmulq_n_f64(vaddq_f64(v119, v56), v51)), vcgeq_f64(v113, vmulq_n_f64(vaddq_f64(v118, v56), v51))), vuzp1q_s32(vcgeq_f64(v113, vmulq_n_f64(vaddq_f64(v117, v56), v51)), vcgeq_f64(v113, vmulq_n_f64(vaddq_f64(v116, v56), v51))))), v106);
        v115 -= 16;
      }

      while (v115);
      v52 = (v52 + v55);
      v111 = v54 & 0xFFFFFFF0;
      if (v55 != v54)
      {
        goto LABEL_74;
      }

LABEL_76:
      if (v54 >= v39)
      {
        v133 = v54;
        v50 = v112;
        if (v54 >= v30)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v126 = 0;
        v127 = 8 * v71;
        v128 = v105 + v127;
        v129 = 8 * v70;
        v130 = v105 + v129;
        v131 = v377 + v127;
        v132 = v377 + v129;
        v50 = v112;
        do
        {
          if (v36 + v54 + v126 >= v12)
          {
            __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
          }

          if (v64 + v126 >= v12)
          {
            __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
          }

          v52->i8[v126] = (v112[v126] + a5) * v51 <= *(v128 + 8 * v126) - *(v131 + 8 * v126) - *(v130 + 8 * v126) + *(v132 + 8 * v126);
          ++v50;
          ++v126;
        }

        while (v62 + v126);
        v52 = (v52 + v126);
        v133 = v54 + v126;
        v104 = v379;
        if (v133 >= v30)
        {
          goto LABEL_66;
        }
      }

      v134 = *(8 * v383 + 8 * v107) - *(8 * v381 + 8 * v107) - *(8 * v383 + 8 * v109) + *(8 * v381 + 8 * v109);
      v135 = v30 + ~v133;
      if (v135 < 0xF)
      {
        goto LABEL_89;
      }

      v136 = v135 + 1;
      v137 = (v135 + 1) & 0x1FFFFFFF0;
      v138 = &v50[v137];
      v139 = vdupq_lane_s64(*&v134, 0);
      v140 = v52;
      v141 = v137;
      do
      {
        v143 = *(v50 + 12);
        v142 = *(v50 + 14);
        v145 = *(v50 + 8);
        v144 = *(v50 + 10);
        v147 = *(v50 + 4);
        v146 = *(v50 + 6);
        v148 = *v50;
        v149 = *(v50 + 2);
        v50 += 16;
        *v140++ = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v139, vmulq_n_f64(vaddq_f64(v148, v56), v51)), vcgeq_f64(v139, vmulq_n_f64(vaddq_f64(v149, v56), v51))), vuzp1q_s32(vcgeq_f64(v139, vmulq_n_f64(vaddq_f64(v147, v56), v51)), vcgeq_f64(v139, vmulq_n_f64(vaddq_f64(v146, v56), v51)))), vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v139, vmulq_n_f64(vaddq_f64(v145, v56), v51)), vcgeq_f64(v139, vmulq_n_f64(vaddq_f64(v144, v56), v51))), vuzp1q_s32(vcgeq_f64(v139, vmulq_n_f64(vaddq_f64(v143, v56), v51)), vcgeq_f64(v139, vmulq_n_f64(vaddq_f64(v142, v56), v51))))), v106);
        v141 -= 16;
      }

      while (v141);
      v52 = (v52 + v137);
      if (v136 != v137)
      {
        v133 += v137;
        v50 = v138;
LABEL_89:
        v150 = v30 - v133;
        do
        {
          v151 = *v50++;
          v52->i8[0] = (v151 + a5) * v51 <= v134;
          v52 = (v52 + 1);
          --v150;
        }

        while (v150);
        goto LABEL_66;
      }

      v50 = v138;
LABEL_66:
      ++v35;
      v70 += v12;
      v71 += v12;
      if (v35 == v104)
      {
        goto LABEL_92;
      }
    }

    v111 = 0;
    v112 = v50;
LABEL_74:
    v124 = v54 - v111;
    do
    {
      v125 = *v112++;
      v52->i8[0] = (v125 + a5) * v51 <= v110;
      v52 = (v52 + 1);
      --v124;
    }

    while (v124);
    goto LABEL_76;
  }

LABEL_92:
  if (v35 < v375)
  {
    v152 = vdupq_lane_s64(*&v48, 0);
    v153 = vdupq_lane_s64(*&v49, 0);
    v154 = 8 * v64;
    v155 = 8 * v371 + v154;
    v156 = 8 * v373 + v154;
    v157 = v36 + v54;
    v158 = 8 * v157;
    v159 = 8 * v371 + v158;
    v160 = 8 * v373 + v158;
    v161.i64[0] = 0x101010101010101;
    v161.i64[1] = 0x101010101010101;
    while (v53 > 0xF)
    {
      v163 = &v50[v59];
      v164 = v52;
      v165 = v54 & 0xFFFFFFF0;
      do
      {
        v167 = *(v50 + 12);
        v166 = *(v50 + 14);
        v169 = *(v50 + 8);
        v168 = *(v50 + 10);
        v171 = *(v50 + 4);
        v170 = *(v50 + 6);
        v172 = *v50;
        v173 = *(v50 + 2);
        v50 += 16;
        *v164++ = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v152, vmulq_n_f64(vaddq_f64(v172, v56), v51)), vcgeq_f64(v152, vmulq_n_f64(vaddq_f64(v173, v56), v51))), vuzp1q_s32(vcgeq_f64(v152, vmulq_n_f64(vaddq_f64(v171, v56), v51)), vcgeq_f64(v152, vmulq_n_f64(vaddq_f64(v170, v56), v51)))), vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v152, vmulq_n_f64(vaddq_f64(v169, v56), v51)), vcgeq_f64(v152, vmulq_n_f64(vaddq_f64(v168, v56), v51))), vuzp1q_s32(vcgeq_f64(v152, vmulq_n_f64(vaddq_f64(v167, v56), v51)), vcgeq_f64(v152, vmulq_n_f64(vaddq_f64(v166, v56), v51))))), v161);
        v165 -= 16;
      }

      while (v165);
      v52 = (v52 + v55);
      v162 = v54 & 0xFFFFFFF0;
      if (v55 != v54)
      {
        goto LABEL_101;
      }

LABEL_103:
      if (v54 >= v39)
      {
        v177 = v54;
        v50 = v163;
        if (v54 >= v30)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v176 = 0;
        v50 = v163;
        do
        {
          if (v157 + v176 >= v12)
          {
            __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
          }

          if (v64 + v176 >= v12)
          {
            __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
          }

          v52->i8[v176] = (v163[v176] + a5) * v51 <= *(v160 + 8 * v176) - *(v156 + 8 * v176) - *(v159 + 8 * v176) + *(v155 + 8 * v176);
          ++v50;
          ++v176;
        }

        while (v62 + v176);
        v52 = (v52 + v176);
        v177 = v54 + v176;
        if (v54 + v176 >= v30)
        {
          goto LABEL_95;
        }
      }

      v178 = v30 + ~v177;
      if (v178 <= 0xE)
      {
        goto LABEL_116;
      }

      v179 = v178 + 1;
      v180 = (v178 + 1) & 0x1FFFFFFF0;
      v181 = &v50[v180];
      v182 = v52;
      v183 = v180;
      do
      {
        v185 = *(v50 + 12);
        v184 = *(v50 + 14);
        v187 = *(v50 + 8);
        v186 = *(v50 + 10);
        v189 = *(v50 + 4);
        v188 = *(v50 + 6);
        v190 = *v50;
        v191 = *(v50 + 2);
        v50 += 16;
        *v182++ = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v153, vmulq_n_f64(vaddq_f64(v190, v56), v51)), vcgeq_f64(v153, vmulq_n_f64(vaddq_f64(v191, v56), v51))), vuzp1q_s32(vcgeq_f64(v153, vmulq_n_f64(vaddq_f64(v189, v56), v51)), vcgeq_f64(v153, vmulq_n_f64(vaddq_f64(v188, v56), v51)))), vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v153, vmulq_n_f64(vaddq_f64(v187, v56), v51)), vcgeq_f64(v153, vmulq_n_f64(vaddq_f64(v186, v56), v51))), vuzp1q_s32(vcgeq_f64(v153, vmulq_n_f64(vaddq_f64(v185, v56), v51)), vcgeq_f64(v153, vmulq_n_f64(vaddq_f64(v184, v56), v51))))), v161);
        v183 -= 16;
      }

      while (v183);
      v52 = (v52 + v180);
      if (v179 != v180)
      {
        v177 += v180;
        v50 = v181;
LABEL_116:
        v192 = v30 - v177;
        do
        {
          v193 = *v50++;
          v52->i8[0] = (v193 + a5) * v51 <= v49;
          v52 = (v52 + 1);
          --v192;
        }

        while (v192);
        goto LABEL_95;
      }

      v50 = v181;
LABEL_95:
      LODWORD(v35) = v35 + 1;
      if (v35 == v375)
      {
        return 0;
      }
    }

    v162 = 0;
    v163 = v50;
LABEL_101:
    v174 = v54 - v162;
    do
    {
      v175 = *v163++;
      v52->i8[0] = (v175 + a5) * v51 <= v48;
      v52 = (v52 + 1);
      --v174;
    }

    while (v174);
    goto LABEL_103;
  }

  return 0;
}

void sub_240301284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a23)
  {
    if (a25 == 1)
    {
      v25 = a1;
      MEMORY[0x245CBFC90](a23, 0x1000C8000313F17);
      a1 = v25;
    }
  }

  _Unwind_Resume(a1);
}

uint64_t Matrix<double>::~Matrix(uint64_t result)
{
  *result = off_285231258;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x245CBFC90](v1, 0x1000C8000313F17);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void Matrix<double>::~Matrix(uint64_t a1)
{
  *a1 = off_285231258;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x245CBFC90](v2, 0x1000C8000313F17);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x245CBFCB0);
}

uint64_t ImageUtils::ErodeRect2x2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  if (*(a2 + 32) < v4 * v3)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  if (v6 < 3 || v5 <= 2)
  {
    __assert_rtn("ErodeRect2x2", "ImageUtils.cpp", 844, "im.Cols() > 2 && im.Rows() > 2");
  }

  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  memset(v9, 1, v6 * v5);
  if ((*v8 & 1) == 0)
  {
    *v9 = 0;
  }

  v10 = v9 + 1;
  v11 = v6 - 2;
  v12 = v8 + 1;
  v13 = v6 - 1;
  v14 = v6 - 1;
  do
  {
    v15 = *v12++;
    if ((v15 & 1) == 0)
    {
      *(v10 - 1) = 0;
    }

    ++v10;
    --v14;
  }

  while (v14);
  v16 = &v8[v11 + 2];
  v17 = -*(a1 + 20);
  v18 = v11 + 2;
  v19 = &v8[2 * v11 + 5];
  v20 = &v8[v11 + 3];
  v21 = 1;
  do
  {
    v24 = v19;
    if ((*v16 & 1) == 0)
    {
      *v10 = 0;
      v10[v17] = 0;
    }

    ++v10;
    v25 = -*(a1 + 20);
    v26 = v6 - 1;
    v27 = v20;
    do
    {
      v28 = *v27++;
      if ((v28 & 1) == 0)
      {
        *(v10 - 1) = 0;
        *&v10[v25 - 1] = 0;
      }

      ++v10;
      --v26;
    }

    while (v26);
    v16 += v18;
    result = (v21 + 1);
    v19 = &v24[v18];
    v20 += v18;
  }

  while (v21++ != v5 - 2);
  v29 = *v16;
  v30 = *(a1 + 20);
  v31 = v10 - 1;
  if ((v29 & 1) == 0)
  {
    *v10 = 0;
    v10[-v30] = 0;
    LODWORD(v30) = *(a1 + 20);
  }

  do
  {
    v32 = *v24++;
    if ((v32 & 1) == 0)
    {
      *(v31 + 1) = 0;
      *&v31[-v30 + 1] = 0;
    }

    ++v31;
    --v13;
  }

  while (v13);
  return result;
}

uint64_t ErodeOrDilateRect3x3<false>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  if (*(a2 + 32) < v4 * v3)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = v6 - 3;
  if (v6 < 3 || v5 <= 2)
  {
    __assert_rtn("ErodeOrDilateRect3x3", "ImageUtils.cpp", 721, "im.Cols() > 2 && im.Rows() > 2");
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  memset(v10, 1, v6 * v5);
  if ((*v9 & 1) == 0)
  {
    *v10 = 0;
    *(v10 + *(a1 + 20)) = 0;
  }

  v11 = v10 + 1;
  v12 = *(a1 + 20);
  v13 = v9 + 1;
  v14 = v6 - 2;
  v15 = v6 - 2;
  do
  {
    v16 = v11;
    v17 = *v13++;
    if ((v17 & 1) == 0)
    {
      *(v11 - 1) = 0;
      *(v11 + 1) = 0;
      v18 = v11 + v12;
      *(v18 - 1) = 0;
      *(v18 + 1) = 0;
    }

    ++v11;
    --v15;
  }

  while (v15);
  v19 = &v9[v7 + 2];
  v20 = *(a1 + 20);
  if (!*v19)
  {
    *v16 = 0;
    *(v16 + v20) = 0;
    LODWORD(v20) = *(a1 + 20);
  }

  v21 = v16 + 1;
  v22 = &v9[v7 + 3];
  v23 = v20;
  v24 = -v20;
  v25 = v7 + 3;
  v26 = &v9[2 * v7 + 7];
  result = &v9[v7 + 4];
  v28 = 1;
  do
  {
    v32 = v11;
    v33 = v26;
    if ((*v22 & 1) == 0)
    {
      *v21 = 0;
      *(v11 + 2) = 0;
      *&v21[v24] = 0;
      *&v21[v23] = 0;
    }

    v34 = 0;
    v35 = *(a1 + 20);
    v36 = v11 + v35;
    v37 = v32 - v35;
    do
    {
      if ((*(result + v34) & 1) == 0)
      {
        v38 = v32 + v34;
        *(v38 + 1) = 0;
        *(v38 + 2) = 0;
        v39 = v37 + v34;
        *(v39 + 1) = 0;
        *(v39 + 3) = 0;
        v40 = v36 + v34;
        *(v40 + 1) = 0;
        *(v40 + 3) = 0;
      }

      ++v34;
    }

    while (v14 != v34);
    v29 = (v32 + v34);
    v11 = v32 + v34 + 2;
    if (!v19[v25])
    {
      v29[1] = 0;
      v29[2] = 0;
      *(v11 + v24 - 1) = 0;
      *(v11 + v23 - 1) = 0;
    }

    v30 = v29 + 1;
    v21 = v29 + 3;
    v22 = &v19[v7 + 4];
    v26 += v25;
    result += v25;
    v19 += v25;
  }

  while (v28++ != v5 - 2);
  v41 = *(a1 + 20);
  v42 = v32 + v34 + 3;
  if ((*v22 & 1) == 0)
  {
    *(v30 + 1) = 0;
    *&v21[-v41] = 0;
    LODWORD(v41) = *(a1 + 20);
  }

  v43 = -v41;
  do
  {
    v44 = v42;
    v45 = *v33++;
    if ((v45 & 1) == 0)
    {
      *v42 = 0;
      *(v42 + 2) = 0;
      v46 = v42 + v43;
      *v46 = 0;
      *(v46 + 2) = 0;
    }

    v42 = v44 + 1;
    --v14;
  }

  while (v14);
  if (!v22[v7 + 2])
  {
    *v42 = 0;
    *(v42 + v43) = 0;
    *(v44 + 2 + v43) = 0;
  }

  return result;
}

void ErodeOrDilateRect2x2<true>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  if (*(a2 + 32) < v4 * v3)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  v6 = *(a1 + 16);
  v5 = *(a1 + 20);
  v7 = v5 - 2;
  if (v5 < 2 || v6 <= 1)
  {
    __assert_rtn("ErodeOrDilateRect2x2", "ImageUtils.cpp", 669, "im.Cols() > 1 && im.Rows() > 1");
  }

  v9 = v5 - 1;
  v10 = *(a1 + 8);
  v11 = *(a2 + 8);
  bzero(v11, v5 * v6);
  v12 = 0;
  v13 = *(a1 + 20);
  do
  {
    v15 = 0;
    v16 = v11;
    v17 = &v11[*(a1 + 20)];
    do
    {
      if (*(v10 + v15) == 1)
      {
        *&v11[v15] = 257;
        *&v17[v15] = 257;
      }

      ++v15;
    }

    while (v9 != v15);
    v18 = &v11[v15];
    if (*(v10 + v7 + 1))
    {
      v11[v15] = 1;
      v18[v13] = 1;
    }

    v10 += v7 + 2;
    v11 = v18 + 1;
  }

  while (v12++ != v6 - 2);
  v19 = 0;
  do
  {
    if (*(v10 + v19) == 1)
    {
      v20 = &v16[v19 + v15];
      v20[1] = 1;
      v20[2] = 1;
    }

    ++v19;
  }

  while (v9 != v19);
  if (*(v10 + v7 + 1))
  {
    v16[v15 + 1 + v19] = 1;
  }
}

uint64_t ErodeOrDilateRect3x3<true>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  if (*(a2 + 32) < v4 * v3)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = v6 - 3;
  if (v6 < 3 || v5 <= 2)
  {
    __assert_rtn("ErodeOrDilateRect3x3", "ImageUtils.cpp", 721, "im.Cols() > 2 && im.Rows() > 2");
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  bzero(v10, v6 * v5);
  if (*v9 == 1)
  {
    *v10 = 257;
    *(v10 + *(a1 + 20)) = 257;
  }

  v11 = v10 + 1;
  v12 = *(a1 + 20);
  v13 = v9 + 1;
  v14 = v6 - 2;
  v15 = v6 - 2;
  do
  {
    v16 = v11;
    v17 = *v13++;
    if (v17 == 1)
    {
      *(v11 - 1) = 257;
      *(v11 + 1) = 1;
      v18 = v11 + v12;
      *(v18 - 1) = 257;
      *(v18 + 1) = 1;
    }

    v11 = v16 + 1;
    --v15;
  }

  while (v15);
  v19 = &v9[v7 + 2];
  v20 = *(a1 + 20);
  if (*v19)
  {
    *v16 = 257;
    *(v16 + v20) = 257;
    LODWORD(v20) = *(a1 + 20);
  }

  v21 = v16 + 1;
  v22 = &v9[v7 + 3];
  v23 = v20;
  v24 = -v20;
  v25 = v7 + 3;
  v26 = &v9[2 * v7 + 7];
  result = &v9[v7 + 4];
  v28 = 1;
  do
  {
    v31 = v11;
    v32 = v26;
    if (*v22 == 1)
    {
      *v21 = 1;
      *(v11 + 2) = 1;
      *&v21[v24] = 257;
      *&v21[v23] = 257;
    }

    v33 = 0;
    v34 = *(a1 + 20);
    v35 = v11 + v34;
    v36 = v31 - v34;
    do
    {
      if (*(result + v33) == 1)
      {
        v37 = (v31 + v33);
        v37[1] = 1;
        v37[2] = 1;
        v37[3] = 1;
        v38 = v36 + v33;
        *(v38 + 1) = 257;
        *(v38 + 3) = 1;
        v39 = v35 + v33;
        *(v39 + 1) = 257;
        *(v39 + 3) = 1;
      }

      ++v33;
    }

    while (v14 != v33);
    v40 = (v31 + v33);
    v11 = v31 + v33 + 2;
    if (v19[v25])
    {
      v40[1] = 1;
      v40[2] = 1;
      *(v11 + v24 - 1) = 257;
      *(v11 + v23 - 1) = 257;
    }

    v29 = v40 + 1;
    v21 = v40 + 3;
    v22 = &v19[v7 + 4];
    v26 += v25;
    result += v25;
    v19 += v25;
  }

  while (v28++ != v5 - 2);
  v41 = *(a1 + 20);
  v42 = v31 + v33 + 3;
  if (*v22 == 1)
  {
    *(v29 + 1) = 257;
    *&v21[-v41] = 257;
    LODWORD(v41) = *(a1 + 20);
  }

  v43 = -v41;
  do
  {
    v44 = v42;
    v45 = *v32++;
    if (v45 == 1)
    {
      *v42 = 257;
      *(v42 + 2) = 1;
      v46 = v42 + v43;
      *v46 = 257;
      *(v46 + 2) = 1;
    }

    v42 = v44 + 1;
    --v14;
  }

  while (v14);
  if (v22[v7 + 2])
  {
    *v42 = 257;
    *(v42 + v43) = 1;
    *(v44 + 2 + v43) = 1;
  }

  return result;
}

uint64_t ImageUtils::CloseRect2x2(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v5 = 0;
  v6 = 0;
  v4 = &unk_285231278;
  v7 = 0;
  ErodeOrDilateRect2x2<true>(a1, &v4);
  ImageUtils::ErodeRect2x2(&v4, a2);
  v4 = &unk_285231278;
  result = v5;
  if (v5)
  {
    if (v7 == 1)
    {
      return MEMORY[0x245CBFC90]();
    }
  }

  return result;
}

void sub_240301EA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Matrix<BOOL>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t Matrix<BOOL>::~Matrix(uint64_t result)
{
  *result = &unk_285231278;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x245CBFC90](v1, 0x1000C8077774924);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_285231278;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x245CBFC90](v1, 0x1000C8077774924);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void Matrix<BOOL>::~Matrix(uint64_t a1)
{
  *a1 = &unk_285231278;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x245CBFC90](v2, 0x1000C8077774924);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x245CBFCB0);
}

uint64_t ImageUtils::CloseRect3x3(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v5 = 0;
  v6 = 0;
  v4 = &unk_285231278;
  v7 = 0;
  ErodeOrDilateRect3x3<true>(a1, &v4);
  ErodeOrDilateRect3x3<false>(&v4, a2);
  v4 = &unk_285231278;
  result = v5;
  if (v5)
  {
    if (v7 == 1)
    {
      return MEMORY[0x245CBFC90]();
    }
  }

  return result;
}

void sub_24030206C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Matrix<BOOL>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t Scale<double>(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *(a1 + 16);
  v8 = vcvtpd_u64_f64(v7 * a3);
  LODWORD(v4) = vcvtpd_u64_f64(*(a1 + 20) * a4);
  v65 = off_285231258;
  if (v7 * v4)
  {
    operator new[]();
  }

  v66 = 0;
  v67 = v7;
  v68 = v4;
  v69 = 0;
  v70 = 8 * v7 * v4;
  if (*(a2 + 32) < 8 * v8 * v4)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  v56 = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v4;
  if (a4 >= 1.0)
  {
    v9 = 4.0;
  }

  else
  {
    v9 = 4.0 / a4;
  }

  v10 = vcvtpd_u64_f64(v9);
  if (a3 >= 1.0)
  {
    v11 = 4.0;
  }

  else
  {
    v11 = 4.0 / a3;
  }

  v12 = vcvtpd_u64_f64(v11);
  v57 = v12;
  if (v12 <= v10)
  {
    v12 = v10;
  }

  v59 = off_285231258;
  if (v12 != -4)
  {
    operator new[]();
  }

  v13 = fmin(a3, 1.0);
  v61 = 1;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v59 = &unk_285231338;
  v60 = 0;
  if (v4)
  {
    v14 = 0;
    v15 = fmin(a4, 1.0);
    do
    {
      v58 = 0;
      CalculateWeightsForScale<double>(&v59, v10, &v58 + 1, &v58, v9, (v14++ + 0.5) / a4 + -0.5, v15);
    }

    while (v14 != v4);
    if (v8)
    {
      v16 = 0;
      v17 = *(a2 + 8);
      v18 = 8 * v4;
      v19 = 0.0;
      do
      {
        v58 = 0;
        CalculateWeightsForScale<double>(&v59, v57, &v58 + 1, &v58, v11, (v19 + 0.5) / a3 + -0.5, v13);
        v20 = HIDWORD(v58);
        if (v58 >= v56)
        {
          v21 = v56 - 1;
        }

        else
        {
          v21 = v58;
        }

        if (v58 >= v56)
        {
          v22 = v58 - v56 + 1;
        }

        else
        {
          v22 = 0;
        }

        v23 = &v17[v4];
        v24 = (v66 + 8 * (HIDWORD(v58) & ~(SHIDWORD(v58) >> 31)) * v4);
        v25 = v66 + 8 * (v21 * v4);
        if (v58 < 0)
        {
          do
          {
            v40 = v60;
            v41 = *v24;
            v42 = 0.0;
            v43 = v20;
            do
            {
              v44 = *v40++;
              v42 = v42 + v44 * v41;
            }

            while (!__CFADD__(v43++, 1));
            v46 = &v60[~v20 + 1];
            v47 = v24;
            if (v24 < v25)
            {
              do
              {
                v48 = *v46++;
                v42 = v42 + v48 * *v47;
                v47 = (v47 + v18);
              }

              while (v47 < v25);
              v41 = *v47;
            }

            v49 = v42 + *v46 * v41;
            if (v22)
            {
              v50 = v46 + 1;
              v51 = v22;
              do
              {
                v52 = *v50++;
                v49 = v49 + v52 * v41;
                --v51;
              }

              while (v51);
            }

            *v17++ = v49;
            ++v24;
            v25 += 8;
          }

          while (v17 < v23);
        }

        else if (v22)
        {
          do
          {
            v26 = v60;
            v27 = 0.0;
            for (i = v24; i < v25; i = (i + v18))
            {
              v29 = *v26++;
              v27 = v27 + v29 * *i;
            }

            v31 = *v26;
            v30 = v26 + 1;
            v32 = *i;
            v33 = v27 + v31 * *i;
            v34 = v22;
            do
            {
              v35 = *v30++;
              v33 = v33 + v35 * v32;
              --v34;
            }

            while (v34);
            *v17++ = v33;
            ++v24;
            v25 += 8;
          }

          while (v17 < v23);
        }

        else
        {
          do
          {
            v36 = v60;
            v37 = 0.0;
            for (j = v24; j < v25; j = (j + v18))
            {
              v39 = *v36++;
              v37 = v37 + v39 * *j;
            }

            *v17++ = v37 + *v36 * *j;
            ++v24;
            v25 += 8;
          }

          while (v17 < v23);
        }

        v19 = v19 + 1.0;
        ++v16;
      }

      while (v16 != v8);
    }
  }

  else if (v8)
  {
    v53 = 0.0;
    do
    {
      CalculateWeightsForScale<double>(&v59, v57, &v58 + 1, &v58, v11, (v53 + 0.5) / a3 + -0.5, v13);
      v53 = v53 + 1.0;
      --v8;
    }

    while (v8);
  }

  v59 = off_285231258;
  if (v60 && v63 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  v65 = off_285231258;
  result = v66;
  if (v66 && v69 == 1)
  {
    return MEMORY[0x245CBFC90]();
  }

  return result;
}

void sub_2403029F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t CalculateWeightsForScale<double>(uint64_t result, int a2, signed int *a3, int *a4, double a5, double a6, double a7)
{
  v7 = vcvtmd_s64_f64(a6 + a5 * -0.5);
  v8 = v7;
  v9 = v7 + a2;
  v10 = (a6 - v7) * a7;
  v11 = fabs(v10);
  v12 = v10 * v10;
  v13 = v10 * v10 * v11;
  v14 = 1.0;
  if (v11 <= 1.0)
  {
    v15 = v12 * -2.5 + v13 * 1.5;
LABEL_5:
    v16 = v15 + v14;
    if (v16 != 0.0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v14 = 2.0;
  if (v11 <= 2.0)
  {
    v15 = v12 * 2.5 + v13 * -0.5 + v11 * -4.0;
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v17 = (a6 - ++v8) * a7;
    v18 = fabs(v17);
    v19 = v17 * v17;
    v20 = v17 * v17 * v18;
    if (v18 <= 1.0)
    {
      v16 = v19 * -2.5 + v20 * 1.5 + 1.0;
    }

    else
    {
      v16 = 0.0;
      if (v18 <= 2.0)
      {
        v16 = v19 * 2.5 + v20 * -0.5 + v18 * -4.0 + 2.0;
      }
    }
  }

  while (v16 == 0.0);
LABEL_12:
  v21 = *(result + 8);
  *v21 = v16;
  v22 = v21 + 1;
  if (v8 >= v9)
  {
    goto LABEL_18;
  }

  v23 = (v9 + ~v8);
  if (v23 > 2)
  {
    v25 = vadd_s32(vdup_n_s32(v8), 0x100000000);
    v26 = vdupq_lane_s64(*&a6, 0);
    v27 = v23 + 1;
    __asm { FMOV            V7.2D, #1.0 }

    v33 = v27 & 0x1FFFFFFFCLL;
    __asm { FMOV            V16.2D, #-2.5 }

    v35 = (v21 + 3);
    __asm
    {
      FMOV            V17.2D, #1.5
      FMOV            V18.2D, #2.0
      FMOV            V19.2D, #2.5
      FMOV            V20.2D, #-0.5
      FMOV            V21.2D, #-4.0
    }

    v41 = v27 & 0x1FFFFFFFCLL;
    do
    {
      v42 = vadd_s32(v25, 0x100000001);
      v43 = vadd_s32(v25, 0x300000003);
      v44.i64[0] = v42.i32[0];
      v44.i64[1] = v42.i32[1];
      v45 = vcvtq_f64_s64(v44);
      v44.i64[0] = v43.i32[0];
      v44.i64[1] = v43.i32[1];
      v46 = vmulq_n_f64(vsubq_f64(v26, v45), a7);
      v47 = vmulq_n_f64(vsubq_f64(v26, vcvtq_f64_s64(v44)), a7);
      v48 = vabsq_f64(v46);
      v49 = vabsq_f64(v47);
      v50 = vmulq_f64(v46, v46);
      v51 = vmulq_f64(v47, v47);
      v52 = vmulq_f64(v50, v48);
      v53 = vmulq_f64(v51, v49);
      v54 = vcgeq_f64(_Q7, v48);
      v55 = vcgeq_f64(_Q7, v49);
      v56 = vcgeq_f64(_Q18, v48);
      v57 = vcgeq_f64(_Q18, v49);
      v58 = vbicq_s8(vbslq_s8(vbicq_s8(v56, v54), vaddq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v50, _Q19), _Q20, v52), _Q21, v48), _Q18), vaddq_f64(vmlaq_f64(vmulq_f64(v50, _Q16), _Q17, v52), _Q7)), vbicq_s8(vmvnq_s8(v54), v56));
      v59 = vbicq_s8(vbslq_s8(vbicq_s8(v57, v55), vaddq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v51, _Q19), _Q20, v53), _Q21, v49), _Q18), vaddq_f64(vmlaq_f64(vmulq_f64(v51, _Q16), _Q17, v53), _Q7)), vbicq_s8(vmvnq_s8(v55), v57));
      v35[-1] = v58;
      *v35 = v59;
      v16 = v16 + *v58.i64 + *&v58.i64[1] + *v59.i64 + *&v59.i64[1];
      v25 = vadd_s32(v25, 0x400000004);
      v35 += 2;
      v41 -= 4;
    }

    while (v41);
    v22 += v27 & 0x1FFFFFFFCLL;
    if (v27 == v33)
    {
      goto LABEL_18;
    }

    v24 = v8 + v33;
  }

  else
  {
    v24 = v8;
  }

  v78 = v7 + a2 - v24;
  v79 = v24 + 1;
  do
  {
    v81 = (a6 - v79) * a7;
    v82 = fabs(v81);
    v83 = v81 * v81;
    v84 = v81 * v81 * v82;
    if (v82 <= 1.0)
    {
      v80 = v83 * -2.5 + v84 * 1.5 + 1.0;
    }

    else
    {
      v80 = 0.0;
      if (v82 <= 2.0)
      {
        v80 = v83 * 2.5 + v84 * -0.5 + v82 * -4.0 + 2.0;
      }
    }

    *v22++ = v80;
    v16 = v16 + v80;
    ++v79;
    --v78;
  }

  while (v78);
LABEL_18:
  v60 = v7 + a2;
  v61 = v7 + a2 + 1;
  v62 = v60 - v8 + 2;
  v63 = v22 - 1;
  do
  {
    v64 = *v63--;
    --v62;
    --v61;
  }

  while (v64 == 0.0);
  v65 = (v61 - v8 + 1);
  if (v61 - v8 != -1)
  {
    v66 = *(result + 8);
    v67 = ~v66;
    v68 = &v66->f64[v65];
    if (v68 <= &v66->f64[1])
    {
      v68 = &v66->f64[1];
    }

    v69 = v68 + v67;
    v70 = *(result + 8);
    if (v69 < 0x18)
    {
      goto LABEL_30;
    }

    v71 = (v69 >> 3) + 1;
    v72 = vdupq_lane_s64(*&v16, 0);
    v73 = &v66->f64[v62];
    if (v73 <= &v66->f64[1])
    {
      v73 = &v66->f64[1];
    }

    v74 = (((v67 + v73) >> 3) + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v75 = v66 + 1;
    do
    {
      v76 = vdivq_f64(*v75, v72);
      v75[-1] = vdivq_f64(v75[-1], v72);
      *v75 = v76;
      v75 += 2;
      v74 -= 4;
    }

    while (v74);
    if (v71 != (v71 & 0x3FFFFFFFFFFFFFFCLL))
    {
      v70 = &v66->f64[v71 & 0x3FFFFFFFFFFFFFFCLL];
LABEL_30:
      v77 = &v66->f64[v65];
      do
      {
        *v70 = *v70 / v16;
        ++v70;
      }

      while (v70 < v77);
    }
  }

  *a3 = v8;
  *a4 = v61;
  return result;
}

uint64_t MatrixNxPts<1u,double>::~MatrixNxPts(uint64_t result)
{
  *result = off_285231258;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x245CBFC90](v1, 0x1000C8000313F17);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void MatrixNxPts<1u,double>::~MatrixNxPts(uint64_t a1)
{
  *a1 = off_285231258;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x245CBFC90](v2, 0x1000C8000313F17);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x245CBFCB0);
}

uint64_t ImageUtils::Scale<unsigned short>(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  v8 = vcvtpd_u64_f64(v6 * a3);
  LODWORD(v3) = vcvtpd_u64_f64(v7 * a3);
  v94 = off_285231258;
  if (v6 * v3)
  {
    operator new[]();
  }

  v95 = 0;
  v96 = v6;
  v97 = v3;
  v98 = 0;
  v99 = 8 * v6 * v3;
  if (*(a2 + 32) < 8 * v8 * v3)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  if (a3 >= 1.0)
  {
    v9 = 4.0;
  }

  else
  {
    v9 = 4.0 / a3;
  }

  v10 = vcvtpd_u64_f64(v9);
  *(a2 + 16) = v8;
  *(a2 + 20) = v3;
  v88 = off_285231258;
  if (v10 != -4)
  {
    operator new[]();
  }

  v11 = fmin(a3, 1.0);
  v90 = 1;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v88 = &unk_285231338;
  v89 = 0;
  if (v3)
  {
    v12 = 0;
    v13 = 2 * v7;
    v14 = 8 * (v6 * v3);
    do
    {
      v87 = 0;
      CalculateWeightsForScale<double>(&v88, -4, &v87 + 1, &v87, v9, (v12 + 0.5) / a3 + -0.5, v11);
      if (v87 >= v7)
      {
        v18 = v7 - 1;
      }

      else
      {
        v18 = v87;
      }

      if (v87 >= v7)
      {
        v19 = v87 - v7 + 1;
      }

      else
      {
        v19 = 0;
      }

      v20 = (v95 + 8 * v12);
      if (v20 < v14)
      {
        v21 = *(a1 + 8);
        v22 = (v21 + 2 * (HIDWORD(v87) & ~(SHIDWORD(v87) >> 31)));
        v23 = v21 + 2 * v18;
        v24 = (SHIDWORD(v87) >> 31) & -HIDWORD(v87);
        if (v24)
        {
          do
          {
            v34 = v89;
            LOWORD(v15) = *v22;
            v15 = *&v15;
            v35 = 0.0;
            v36 = v24;
            do
            {
              v37 = *v34++;
              v35 = v35 + v37 * v15;
              --v36;
            }

            while (v36);
            v38 = v22;
            if (v22 < v23)
            {
              do
              {
                v39 = *v34++;
                v40 = v39;
                LODWORD(v39) = *v38++;
                v35 = v35 + v40 * LODWORD(v39);
              }

              while (v38 < v23);
              LOWORD(v40) = *v38;
              v15 = *&v40;
            }

            v41 = v35 + *v34 * v15;
            if (v19)
            {
              v42 = v34 + 1;
              v43 = v19;
              do
              {
                v44 = *v42++;
                v41 = v41 + v44 * v15;
                --v43;
              }

              while (v43);
            }

            *v20 = v41;
            v20 += v3;
            v22 = (v22 + v13);
            v23 += v13;
          }

          while (v20 < v14);
        }

        else if (v19)
        {
          do
          {
            v25 = v89;
            v26 = 0.0;
            for (i = v22; i < v23; v26 = v26 + v16 * LODWORD(v28))
            {
              v28 = *v25++;
              v16 = v28;
              LODWORD(v28) = *i++;
            }

            v30 = *v25;
            v29 = v25 + 1;
            LOWORD(v16) = *i;
            v16 = *&v16;
            v31 = v26 + v30 * v16;
            v32 = v19;
            do
            {
              v33 = *v29++;
              v31 = v31 + v33 * v16;
              --v32;
            }

            while (v32);
            *v20 = v31;
            v20 += v3;
            v22 = (v22 + v13);
            v23 += v13;
          }

          while (v20 < v14);
        }

        else
        {
          do
          {
            v45 = v89;
            v46 = 0.0;
            for (j = v22; j < v23; v46 = v46 + v49 * LODWORD(v48))
            {
              v48 = *v45++;
              v49 = v48;
              LODWORD(v48) = *j++;
              v17 = LODWORD(v48);
            }

            LOWORD(v17) = *j;
            v17 = *&v17;
            *v20 = v46 + *v45 * v17;
            v20 += v3;
            v22 = (v22 + v13);
            v23 += v13;
          }

          while (v20 < v14);
        }
      }

      ++v12;
    }

    while (v12 != v3);
  }

  if (v8)
  {
    v50 = 0;
    v51 = *(a2 + 8);
    v52 = 8 * v3;
    v53 = 0.0;
    do
    {
      v87 = 0;
      CalculateWeightsForScale<double>(&v88, -4, &v87 + 1, &v87, v9, (v53 + 0.5) / a3 + -0.5, v11);
      if (v87 >= v6)
      {
        v54 = v6 - 1;
      }

      else
      {
        v54 = v87;
      }

      if (v87 >= v6)
      {
        v55 = v87 - v6 + 1;
      }

      else
      {
        v55 = 0;
      }

      if (v3)
      {
        v56 = &v51[v3];
        v57 = (v95 + 8 * (HIDWORD(v87) & ~(SHIDWORD(v87) >> 31)) * v3);
        v58 = v95 + 8 * (v54 * v3);
        v59 = (SHIDWORD(v87) >> 31) & -HIDWORD(v87);
        if (v59)
        {
          do
          {
            v70 = v89;
            v71 = *v57;
            v72 = 0.0;
            v73 = v59;
            do
            {
              v74 = *v70++;
              v72 = v72 + v74 * v71;
              --v73;
            }

            while (v73);
            v75 = v57;
            if (v57 < v58)
            {
              do
              {
                v76 = *v70++;
                v72 = v72 + v76 * *v75;
                v75 = (v75 + v52);
              }

              while (v75 < v58);
              v71 = *v75;
            }

            v77 = v72 + *v70 * v71;
            if (v55)
            {
              v78 = v70 + 1;
              v79 = v55;
              do
              {
                v80 = *v78++;
                v77 = v77 + v80 * v71;
                --v79;
              }

              while (v79);
            }

            *v51++ = v77;
            ++v57;
            v58 += 8;
          }

          while (v51 < v56);
        }

        else if (v55)
        {
          do
          {
            v60 = v89;
            v61 = 0.0;
            for (k = v57; k < v58; k = (k + v52))
            {
              v63 = *v60++;
              v61 = v61 + v63 * *k;
            }

            v65 = *v60;
            v64 = v60 + 1;
            v66 = *k;
            v67 = v61 + v65 * *k;
            v68 = v55;
            do
            {
              v69 = *v64++;
              v67 = v67 + v69 * v66;
              --v68;
            }

            while (v68);
            *v51++ = v67;
            ++v57;
            v58 += 8;
          }

          while (v51 < v56);
        }

        else
        {
          do
          {
            v81 = v89;
            v82 = 0.0;
            for (m = v57; m < v58; m = (m + v52))
            {
              v84 = *v81++;
              v82 = v82 + v84 * *m;
            }

            *v51++ = v82 + *v81 * *m;
            ++v57;
            v58 += 8;
          }

          while (v51 < v56);
        }
      }

      v53 = v53 + 1.0;
      ++v50;
    }

    while (v50 != v8);
  }

  v88 = off_285231258;
  if (v89 && v92 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  v94 = off_285231258;
  result = v95;
  if (v95 && v98 == 1)
  {
    return MEMORY[0x245CBFC90]();
  }

  return result;
}

void sub_240303558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t ImageUtils::Scale<unsigned char>(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = vcvtpd_u64_f64(v5 * a3);
  LODWORD(v3) = vcvtpd_u64_f64(v6 * a3);
  v56 = off_285231258;
  if (v5 * v3)
  {
    operator new[]();
  }

  v57 = 0;
  v58 = v5;
  v59 = v3;
  v60 = 0;
  v61 = 8 * v5 * v3;
  if (*(a2 + 32) < 8 * v7 * v3)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  if (a3 >= 1.0)
  {
    v8 = 4.0;
  }

  else
  {
    v8 = 4.0 / a3;
  }

  v9 = vcvtpd_u64_f64(v8);
  *(a2 + 16) = v7;
  *(a2 + 20) = v3;
  v50 = off_285231258;
  if (v9 != -4)
  {
    operator new[]();
  }

  v10 = fmin(a3, 1.0);
  v52 = 1;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v50 = &unk_285231338;
  v51 = 0;
  if (v3)
  {
    v11 = 0;
    do
    {
      v49 = 0;
      CalculateWeightsForScale<double>(&v50, -4, &v49 + 1, &v49, v8, (v11 + 0.5) / a3 + -0.5, v10);
      if (v49 < 0)
      {
        HIDWORD(v49) = 0;
      }

      if (v49 >= v6)
      {
        LODWORD(v49) = v6 - 1;
      }

      ++v11;
    }

    while (v11 != v3);
  }

  if (v7)
  {
    v12 = 0;
    v13 = *(a2 + 8);
    v14 = 8 * v3;
    v15 = 0.0;
    do
    {
      v49 = 0;
      CalculateWeightsForScale<double>(&v50, -4, &v49 + 1, &v49, v8, (v15 + 0.5) / a3 + -0.5, v10);
      if (v49 >= v5)
      {
        v16 = v5 - 1;
      }

      else
      {
        v16 = v49;
      }

      if (v49 >= v5)
      {
        v17 = v49 - v5 + 1;
      }

      else
      {
        v17 = 0;
      }

      if (v3)
      {
        v18 = &v13[v3];
        v19 = (v57 + 8 * (HIDWORD(v49) & ~(SHIDWORD(v49) >> 31)) * v3);
        v20 = v57 + 8 * (v16 * v3);
        v21 = (SHIDWORD(v49) >> 31) & -HIDWORD(v49);
        if (v21)
        {
          do
          {
            v32 = v51;
            v33 = *v19;
            v34 = 0.0;
            v35 = v21;
            do
            {
              v36 = *v32++;
              v34 = v34 + v36 * v33;
              --v35;
            }

            while (v35);
            v37 = v19;
            if (v19 < v20)
            {
              do
              {
                v38 = *v32++;
                v34 = v34 + v38 * *v37;
                v37 = (v37 + v14);
              }

              while (v37 < v20);
              v33 = *v37;
            }

            v39 = v34 + *v32 * v33;
            if (v17)
            {
              v40 = v32 + 1;
              v41 = v17;
              do
              {
                v42 = *v40++;
                v39 = v39 + v42 * v33;
                --v41;
              }

              while (v41);
            }

            *v13++ = v39;
            ++v19;
            v20 += 8;
          }

          while (v13 < v18);
        }

        else if (v17)
        {
          do
          {
            v22 = v51;
            v23 = 0.0;
            for (i = v19; i < v20; i = (i + v14))
            {
              v25 = *v22++;
              v23 = v23 + v25 * *i;
            }

            v27 = *v22;
            v26 = v22 + 1;
            v28 = *i;
            v29 = v23 + v27 * *i;
            v30 = v17;
            do
            {
              v31 = *v26++;
              v29 = v29 + v31 * v28;
              --v30;
            }

            while (v30);
            *v13++ = v29;
            ++v19;
            v20 += 8;
          }

          while (v13 < v18);
        }

        else
        {
          do
          {
            v43 = v51;
            v44 = 0.0;
            for (j = v19; j < v20; j = (j + v14))
            {
              v46 = *v43++;
              v44 = v44 + v46 * *j;
            }

            *v13++ = v44 + *v43 * *j;
            ++v19;
            v20 += 8;
          }

          while (v13 < v18);
        }
      }

      v15 = v15 + 1.0;
      ++v12;
    }

    while (v12 != v7);
  }

  v50 = off_285231258;
  if (v51 && v54 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  v56 = off_285231258;
  result = v57;
  if (v57 && v60 == 1)
  {
    return MEMORY[0x245CBFC90]();
  }

  return result;
}

void sub_240303C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t ImageUtils::Scale<BOOL>(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 16);
  v6 = vcvtpd_u64_f64(v5 * a3);
  LODWORD(v3) = vcvtpd_u64_f64(*(a1 + 20) * a3);
  v57 = off_285231258;
  if (v5 * v3)
  {
    operator new[]();
  }

  v58 = 0;
  v59 = v5;
  v60 = v3;
  v61 = 0;
  v62 = 8 * v5 * v3;
  if (*(a2 + 32) < 8 * v6 * v3)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  if (a3 >= 1.0)
  {
    v7 = 4.0;
  }

  else
  {
    v7 = 4.0 / a3;
  }

  *(a2 + 16) = v6;
  *(a2 + 20) = v3;
  v51 = off_285231258;
  if (vcvtpd_u64_f64(v7) != -4)
  {
    operator new[]();
  }

  v8 = fmin(a3, 1.0);
  v53 = 1;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v51 = &unk_285231338;
  v52 = 0;
  if (v3)
  {
    v9 = 0;
    do
    {
      v50 = 0;
      CalculateWeightsForScale<double>(&v51, -4, &v50 + 1, &v50, v7, (v9++ + 0.5) / a3 + -0.5, v8);
    }

    while (v9 != v3);
    if (v6)
    {
      v11 = 0;
      v12 = *(a2 + 8);
      v13 = 8 * v3;
      v14 = 0.0;
      do
      {
        v50 = 0;
        CalculateWeightsForScale<double>(&v51, -4, &v50 + 1, &v50, v7, (v14 + 0.5) / a3 + -0.5, v8);
        v15 = HIDWORD(v50);
        if (v50 >= v5)
        {
          v16 = v5 - 1;
        }

        else
        {
          v16 = v50;
        }

        if (v50 >= v5)
        {
          v17 = v50 - v5 + 1;
        }

        else
        {
          v17 = 0;
        }

        v18 = &v12[v3];
        v19 = (v58 + 8 * (HIDWORD(v50) & ~(SHIDWORD(v50) >> 31)) * v3);
        v20 = v58 + 8 * (v16 * v3);
        if (v50 < 0)
        {
          do
          {
            v35 = v52;
            v36 = *v19;
            v37 = 0.0;
            v38 = v15;
            do
            {
              v39 = *v35++;
              v37 = v37 + v39 * v36;
            }

            while (!__CFADD__(v38++, 1));
            v41 = &v52[~v15 + 1];
            v42 = v19;
            if (v19 < v20)
            {
              do
              {
                v43 = *v41++;
                v37 = v37 + v43 * *v42;
                v42 = (v42 + v13);
              }

              while (v42 < v20);
              v36 = *v42;
            }

            v44 = v37 + *v41 * v36;
            if (v17)
            {
              v45 = v41 + 1;
              v46 = v17;
              do
              {
                v47 = *v45++;
                v44 = v44 + v47 * v36;
                --v46;
              }

              while (v46);
            }

            *v12++ = v44;
            ++v19;
            v20 += 8;
          }

          while (v12 < v18);
        }

        else if (v17)
        {
          do
          {
            v21 = v52;
            v22 = 0.0;
            for (i = v19; i < v20; i = (i + v13))
            {
              v24 = *v21++;
              v22 = v22 + v24 * *i;
            }

            v26 = *v21;
            v25 = v21 + 1;
            v27 = *i;
            v28 = v22 + v26 * *i;
            v29 = v17;
            do
            {
              v30 = *v25++;
              v28 = v28 + v30 * v27;
              --v29;
            }

            while (v29);
            *v12++ = v28;
            ++v19;
            v20 += 8;
          }

          while (v12 < v18);
        }

        else
        {
          do
          {
            v31 = v52;
            v32 = 0.0;
            for (j = v19; j < v20; j = (j + v13))
            {
              v34 = *v31++;
              v32 = v32 + v34 * *j;
            }

            *v12++ = v32 + *v31 * *j;
            ++v19;
            v20 += 8;
          }

          while (v12 < v18);
        }

        v14 = v14 + 1.0;
        ++v11;
      }

      while (v11 != v6);
    }
  }

  else if (v6)
  {
    v48 = 0.0;
    do
    {
      CalculateWeightsForScale<double>(&v51, -4, &v50 + 1, &v50, v7, (v48 + 0.5) / a3 + -0.5, v8);
      v48 = v48 + 1.0;
      --v6;
    }

    while (v6);
  }

  v51 = off_285231258;
  if (v52 && v55 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  v57 = off_285231258;
  result = v58;
  if (v58 && v61 == 1)
  {
    return MEMORY[0x245CBFC90]();
  }

  return result;
}

void sub_240304944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

double ImageUtils::Gradient<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 20);
  v6 = 8 * v5 * v4;
  if (*(a2 + 32) < v6)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v5;
  *(a2 + 20) = v4;
  v7 = *(a3 + 8);
  if (*(a3 + 32) < v6)
  {
    if (v7 && *(a3 + 24) == 1)
    {
      MEMORY[0x245CBFC90]();
    }

    operator new[]();
  }

  *(a3 + 16) = v5;
  *(a3 + 20) = v4;
  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  v10 = v8 + 1;
  *v9 = v8[1] - *v8;
  v11 = (v9 + 1);
  *v7 = v8[v4] - *v8;
  v12 = v7 + 1;
  v13 = (v4 - 1);
  if (v13 < 2)
  {
    v16 = v9 + 1;
    goto LABEL_19;
  }

  v14 = (v4 - 2);
  if (v14 <= 0xF)
  {
    v15 = 1;
LABEL_14:
    v16 = v11;
LABEL_15:
    v17 = 0;
    v18 = ~v15 + v4;
    do
    {
      v16[v17] = (v10[v17 + 1] - v10[v17 - 1]) * 0.5;
      v12[v17] = v10[v4 + v17] - v10[v17];
      ++v17;
      --v18;
    }

    while (v18);
    v16 = (v16 + v17 * 8);
    v12 = (v12 + v17 * 8);
    v10 = (v10 + v17 * 8);
    goto LABEL_19;
  }

  v69 = (v4 - 3);
  v70 = v69 * 8 + 16;
  v71 = &v9[v69 + 2];
  v72 = &v7[v69 + 2];
  v73 = &v8[v69 + 3];
  v74 = &v8[v4];
  v75 = v74 + 1;
  v76 = v74 + v70;
  v78 = v11 < v73 && v8 < v71;
  v80 = v11 < v76 && v75 < v71;
  v82 = v12 < v73 && v8 < v72;
  v84 = v12 < v76 && v75 < v72;
  v85 = v12 >= v71 || v11 >= v72;
  v15 = 1;
  if (!v85 || v78 || v80 || v82 || v84)
  {
    goto LABEL_14;
  }

  v86 = 8 * (v14 & 0xFFFFFFFE);
  v16 = &v11->f64[v86 / 8];
  v15 = v14 | 1;
  __asm { FMOV            V0.2D, #0.5 }

  v88 = v12;
  v89 = v10;
  v90 = v14 & 0xFFFFFFFE;
  do
  {
    *v11++ = vmulq_f64(vsubq_f64(*(v89 + 1), *(v89 - 1)), _Q0);
    v91 = *&v89[v4];
    v92 = *v89;
    v89 += 2;
    *v88++ = vsubq_f64(v91, v92);
    v90 -= 2;
  }

  while (v90);
  v12 = (v12 + v86);
  v10 = (v10 + v86);
  if ((v14 & 0xFFFFFFFE) != v14)
  {
    goto LABEL_15;
  }

LABEL_19:
  *v16 = *v10 - *(v10 - 1);
  v19 = v16 + 1;
  *v12 = v10[v4] - *v10;
  v20 = v12 + 1;
  v21 = v5 - 1;
  v22 = v10 + 1;
  if (v5 - 1 < 2)
  {
    v35 = v10;
    goto LABEL_124;
  }

  if (v13 > 1)
  {
    v23 = 8 * (v4 - 3);
    v24 = v23 + 24;
    v25 = v23 + 24 - 8 * v4;
    v26 = v23 + 24 + 8 * v4;
    v27 = v23 + 32;
    v28 = (v4 - 2);
    v29 = 8 * (v28 & 0xFFFFFFFE);
    v30 = 1;
    __asm { FMOV            V1.2D, #0.5 }

    v35 = v10;
    while (1)
    {
      v38 = v35[2];
      v35 += 2;
      *v19 = v38 - *v22;
      *v20 = (v22[v4] - v22[-v4]) * 0.5;
      v39 = (v16 + 2);
      v40 = v12 + 2;
      if (v28 < 8)
      {
        v41 = 1;
        goto LABEL_78;
      }

      v42 = v13;
      v43 = (v16 + v24);
      v44 = (v12 + v24);
      v45 = v10 + 16 - 8 * v4;
      v46 = (v10 + v25);
      v47 = &v10[v4 + 2];
      v48 = (v10 + v26);
      v49 = v10 + 1;
      v50 = (v10 + v27);
      _CF = v39 >= v46 || v45 >= v43;
      v52 = !_CF;
      v53 = v39 >= v48 || v47 >= v43;
      v54 = !v53;
      v55 = v39 >= v50 || v49 >= v43;
      v56 = !v55;
      v57 = v40 >= v46 || v45 >= v44;
      v58 = !v57;
      v59 = v40 >= v48 || v47 >= v44;
      v60 = !v59;
      v61 = v40 >= v50 || v49 >= v44;
      v62 = !v61;
      v63 = v40 >= v43 || v39 >= v44;
      v41 = 1;
      if (!v63 || v52 || v54 || v56 || v58 || v60 || v62)
      {
        break;
      }

      v16 = &v39->f64[v29 / 8];
      v64 = v40;
      v65 = v35;
      v66 = v28 & 0xFFFFFFFE;
      do
      {
        *v39++ = vmulq_f64(vsubq_f64(*(v65 + 1), *(v65 - 1)), _Q1);
        *v64++ = vmulq_f64(vsubq_f64(*&v65[v4], *&v65[-v4]), _Q1);
        v65 += 2;
        v66 -= 2;
      }

      while (v66);
      v40 = (v40 + v29);
      v35 = (v35 + v29);
      v13 = v42;
      if ((v28 & 0xFFFFFFFE) != v28)
      {
        v41 = v28 | 1;
        v39 = v16;
        goto LABEL_78;
      }

      v36 = v40 - 1;
      v37 = (v16 - 1);
LABEL_23:
      *v40 = (v35[v4] - v35[-v4]) * 0.5;
      ++v30;
      v20 = v36 + 2;
      v19 = (v37 + 16);
      *v16 = *v35 - *(v35 - 1);
      v22 = v35 + 1;
      v12 = v40;
      v10 = v35;
      if (v30 == v21)
      {
        goto LABEL_124;
      }
    }

    v13 = v42;
LABEL_78:
    v67 = 0;
    v68 = v13 - v41;
    do
    {
      v39->f64[v67] = (v35[v67 + 1] - v35[v67 - 1]) * 0.5;
      v40[v67] = (v35[v4 + v67] - v35[v67 - v4]) * 0.5;
      ++v67;
      --v68;
    }

    while (v68);
    v40 = (v40 + v67 * 8);
    v36 = v40 - 1;
    v16 = &v39->f64[v67];
    v37 = v39 + v67 * 8 - 8;
    v35 = (v35 + v67 * 8);
    goto LABEL_23;
  }

  v93 = v5 - 2;
  if (v93 > 0xB)
  {
    v137 = 16 * (v5 - 3) + 24;
    v138 = (v16 + v137);
    v139 = (v12 + v137);
    v140 = (v10 + v137);
    v141 = &v10[-v4 + 1];
    v142 = (v10 + v137 - 8 * v4);
    v143 = &v10[v4];
    v144 = v143 + 1;
    v145 = v143 + v137;
    v147 = v19 < v140 && v22 < v138;
    v149 = v19 < v142 && v141 < v138;
    v151 = v19 < v145 && v144 < v138;
    v153 = v20 < v140 && v22 < v139;
    v155 = v20 < v142 && v141 < v139;
    v157 = v20 < v145 && v144 < v139;
    v158 = v20 >= v138 || v19 >= v139;
    v94 = 1;
    if (v158 && !v147 && !v149 && !v151 && !v153 && !v155 && !v157)
    {
      v159 = 16 * (v93 & 0xFFFFFFFE);
      v160 = &v19[v159 / 8];
      v94 = v93 | 1;
      v16 = (v16 + v159);
      __asm { FMOV            V0.2D, #0.5 }

      v163 = v10 + 1;
      v164 = (v12 + 1);
      v165 = v93 & 0xFFFFFFFE;
      do
      {
        v166 = v163;
        v169 = vld2q_f64(v166);
        v161 = -1 * v4;
        v167 = &v166[v161];
        v169.val[0] = vsubq_f64(v169.val[1], v169.val[0]);
        v168 = vmulq_f64(vsubq_f64(*&v163[v4 + 2], v167[1]), _Q0);
        *v164 = vmulq_f64(vsubq_f64(*&v163[v4], *v167), _Q0);
        v164[1] = v168;
        v164 += 2;
        v170 = vld2q_f64(v163);
        v163 += 4;
        v169.val[1] = vsubq_f64(v170.val[1], v170.val[0]);
        vst2q_f64(v19, v169);
        v19 += 4;
        v165 -= 2;
      }

      while (v165);
      v22 = (v22 + v159);
      v20 = (v20 + v159);
      v10 = (v10 + v159);
      if ((v93 & 0xFFFFFFFE) == v93)
      {
        v35 = v10;
        v19 = v160;
        goto LABEL_124;
      }

      v12 = (v12 + v159);
      v19 = v160;
    }
  }

  else
  {
    v94 = 1;
  }

  v95 = 0;
  v96 = ~v94 + v5;
  v97 = v12;
  v98 = v16;
  v99 = v10;
  do
  {
    *v19 = v10[v95 + 2] - *v22;
    v100 = v22[v4];
    v101 = v22[-v4];
    v22 = v99 + 3;
    v99 += 2;
    *v20 = (v100 - v101) * 0.5;
    v19 = v98 + 3;
    v98 += 2;
    v102 = &v16[v95];
    v20 = v97 + 3;
    v97 += 2;
    v12[v95 + 2] = (v10[v4 + 2 + v95] - v10[v95 + 2 - v4]) * 0.5;
    v104 = v10[v95 + 1];
    v103 = v10[v95 + 2];
    v95 += 2;
    v102[2] = v103 - v104;
    --v96;
  }

  while (v96);
  v20 = &v12[v95 + 1];
  v19 = &v16[v95 + 1];
  v35 = &v10[v95];
  v22 = &v10[v95 + 1];
LABEL_124:
  v105 = v35 + 2;
  *v19 = v35[2] - *v22;
  v106 = (v19 + 1);
  *v20 = *v22 - v22[-v4];
  v107 = v20 + 1;
  if (v13 < 2)
  {
    v110 = v19 + 1;
    goto LABEL_132;
  }

  v108 = (v4 - 2);
  if (v108 <= 0xF)
  {
    v109 = 1;
LABEL_127:
    v110 = v106;
LABEL_128:
    v111 = 0;
    v112 = ~v109 + v4;
    do
    {
      v110[v111] = (v105[v111 + 1] - v105[v111 - 1]) * 0.5;
      v107[v111] = v105[v111] - v105[v111 - v4];
      ++v111;
      --v112;
    }

    while (v112);
    v110 = (v110 + v111 * 8);
    v107 = (v107 + v111 * 8);
    v105 = (v105 + v111 * 8);
    goto LABEL_132;
  }

  v114 = (v4 - 3);
  v115 = &v19[v114 + 2];
  v116 = &v20[v114 + 2];
  v117 = &v35[-v4 + 2];
  v118 = v35 + v114 * 8 - 8 * v4 + 24;
  v119 = v35 + 1;
  v120 = &v35[v114 + 4];
  v122 = v106 < v118 && v117 < v115;
  v124 = v106 < v120 && v119 < v115;
  v126 = v107 < v118 && v117 < v116;
  v128 = v107 < v120 && v119 < v116;
  v129 = v107 >= v115 || v106 >= v116;
  v109 = 1;
  if (!v129 || v122 || v124 || v126 || v128)
  {
    goto LABEL_127;
  }

  v130 = 8 * (v108 & 0xFFFFFFFE);
  v110 = &v106->f64[v130 / 8];
  v109 = v108 | 1;
  __asm { FMOV            V0.2D, #0.5 }

  v132 = v107;
  v133 = v105;
  v134 = v108 & 0xFFFFFFFE;
  do
  {
    *v106++ = vmulq_f64(vsubq_f64(*(v133 + 1), *(v133 - 1)), _Q0);
    v135 = *&v133[-v4];
    v136 = *v133;
    v133 += 2;
    *v132++ = vsubq_f64(v136, v135);
    v134 -= 2;
  }

  while (v134);
  v107 = (v107 + v130);
  v105 = (v105 + v130);
  if ((v108 & 0xFFFFFFFE) != v108)
  {
    goto LABEL_128;
  }

LABEL_132:
  *v110 = *v105 - *(v105 - 1);
  result = *v105 - v105[-v4];
  *v107 = result;
  return result;
}

int8x16_t *ImageUtils::Fliplr<double>(int8x16_t *result, uint64_t a2)
{
  v2 = result;
  v4 = result[1].u32[0];
  v3 = result[1].u32[1];
  if (*(a2 + 32) < 8 * v4 * v3)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v4;
  *(a2 + 20) = v3;
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *(a2 + 8);
    if (v3 > 3)
    {
      v9 = 8 * (v3 - 1);
      v10 = v9 + 8;
      v11 = 8 * v3;
      v12 = 8 * v3 - 8;
      v13 = v12 - v9;
      v14 = 8 * (v3 & 0xFFFFFFFC);
      if ((v3 & 0xFFFFFFFC) == v3)
      {
        v15 = 0;
        v16 = 0;
        v17 = v11 - 16;
        do
        {
          result = (8 * v15);
          v18 = v2->i64[1];
          v19 = v18 + 8 * (v3 * v16);
          v20 = v19 + 8 * v3;
          v21 = v19 + v13;
          if (v6 >= v20 || v21 >= v6->u64 + v10)
          {
            v23 = v6 + 1;
            result = (result + v18 + v17);
            v24 = v3 & 0xFFFFFFFC;
            do
            {
              v25 = vextq_s8(result[-1], result[-1], 8uLL);
              v23[-1] = vextq_s8(*result, *result, 8uLL);
              *v23 = v25;
              v23 += 2;
              result -= 2;
              v24 -= 4;
            }

            while (v24);
            v6 = (v6 + v14);
          }

          else
          {
            v26 = (result->i64 + v18 + v12);
            LODWORD(result) = v3;
            do
            {
              v27 = *v26--;
              v6->i64[0] = v27;
              v6 = (v6 + 8);
              result = (result - 1);
            }

            while (result);
          }

          ++v16;
          v15 += v3;
        }

        while (v16 != v4);
      }

      else
      {
        v28 = 0;
        v29 = 0;
        v30 = v11 - 16;
        do
        {
          v31 = v2->i64[1];
          v32 = v31 + 8 * (v3 * v29);
          v33 = v32 + 8 * v3;
          v34 = v32 + v13;
          if (v6 >= v33 || v34 >= v6->u64 + v10)
          {
            v36 = (v6 + v14);
            v37 = v6 + 1;
            v38 = (v31 + v30 + 8 * v28);
            v39 = v3 & 0xFFFFFFFC;
            do
            {
              v40 = vextq_s8(v38[-1], v38[-1], 8uLL);
              v37[-1] = vextq_s8(*v38, *v38, 8uLL);
              *v37 = v40;
              v37 += 2;
              v38 -= 2;
              v39 -= 4;
            }

            while (v39);
            v33 -= v14;
            v41 = v3 & 0xFFFFFFFC;
            v6 = v36;
          }

          else
          {
            v41 = 0;
          }

          LODWORD(result) = v3 - v41;
          v42 = (v33 - 8);
          do
          {
            v43 = *v42--;
            v6->i64[0] = v43;
            v6 = (v6 + 8);
            result = (result - 1);
          }

          while (result);
          ++v29;
          v28 += v3;
        }

        while (v29 != v4);
      }
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = result->i64[1] + 8 * v7 + 8 * v3;
        v6->i64[0] = *(v8 - 8);
        if (v3 == 1)
        {
          v6 = (v6 + 8);
        }

        else
        {
          v6->i64[1] = *(v8 - 16);
          if (v3 == 2)
          {
            ++v6;
          }

          else
          {
            v6[1].i64[0] = *(v8 - 24);
            v6 = (v6 + 24);
          }
        }

        v7 += v3;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t ImageUtils::Flipud<double>(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  v2 = *(result + 20);
  if (*(a2 + 32) < 8 * v3 * v2)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v3;
  *(a2 + 20) = v2;
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(a2 + 8);
    if (v2 > 3)
    {
      v8 = 8 * (v2 & 0xFFFFFFFC);
      if ((v2 & 0xFFFFFFFC) == v2)
      {
        v9 = 0;
        v10 = v2 * (v3 - 1);
        do
        {
          v11 = *(result + 8);
          v12 = (v11 + 8 * ((v3 + ~v9) * v2));
          if ((v5 - v12) >= 0x20)
          {
            v15 = (v11 + 8 * v10 + 16);
            v16 = v5 + 2;
            v17 = v2 & 0xFFFFFFFC;
            do
            {
              v18 = *v15;
              *(v16 - 1) = *(v15 - 1);
              *v16 = v18;
              v15 += 2;
              v16 += 2;
              v17 -= 4;
            }

            while (v17);
            v5 = (v5 + v8);
          }

          else
          {
            v13 = v2;
            do
            {
              v14 = *v12;
              v12 += 8;
              *v5++ = v14;
              --v13;
            }

            while (v13);
          }

          ++v9;
          v10 -= v2;
        }

        while (v9 != v3);
      }

      else
      {
        v19 = 0;
        v20 = v2 * (v3 - 1);
        do
        {
          v21 = *(result + 8);
          v22 = (v21 + 8 * ((v3 + ~v19) * v2));
          if ((v5 - v22) >= 0x20)
          {
            v24 = &v5[v8 / 8];
            v25 = (v21 + 8 * v20 + 16);
            v26 = v5 + 2;
            v27 = v2 & 0xFFFFFFFC;
            do
            {
              v28 = *v25;
              *(v26 - 1) = *(v25 - 1);
              *v26 = v28;
              v25 += 2;
              v26 += 2;
              v27 -= 4;
            }

            while (v27);
            v22 += v8;
            v23 = v2 & 0xFFFFFFFC;
            v5 = v24;
          }

          else
          {
            v23 = 0;
          }

          v29 = v2 - v23;
          do
          {
            v30 = *v22;
            v22 += 8;
            *v5++ = v30;
            --v29;
          }

          while (v29);
          ++v19;
          v20 -= v2;
        }

        while (v19 != v3);
      }
    }

    else
    {
      v6 = v2 * (v3 - 1);
      do
      {
        v7 = (*(result + 8) + 8 * v6);
        *v5 = *v7;
        if (v2 == 1)
        {
          ++v5;
        }

        else
        {
          v5[1] = v7[1];
          if (v2 == 2)
          {
            v5 += 2;
          }

          else
          {
            v5[2] = v7[2];
            v5 += 3;
          }
        }

        v6 -= v2;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

double ImageUtils::Rot90<double>(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 20);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v18 = *(a3 + 8);
      if (*(a3 + 32) < 8 * v4 * v3)
      {
        if (v18 && *(a3 + 24) == 1)
        {
          MEMORY[0x245CBFC90](*(a3 + 8));
        }

        operator new[]();
      }

      v19 = v4 * v3;
      *(a3 + 16) = v4;
      *(a3 + 20) = v3;
      if (v4 * v3)
      {
        v20 = *(a1 + 8);
        v21 = v19 - 1;
        v22 = (v20 + 8 * v21);
        if (v19 >= 0xA && ((v23 = 8 * v21, v24 = 8 * v21 + 8, v18 < v20 + v24) ? (v25 = v20 >= v18->u64 + v24) : (v25 = 1), v25))
        {
          v26 = v19 & 0xFFFFFFFC;
          v27 = (v18 + 8 * v26);
          v28 = v18 + 1;
          v29 = (v23 + v20 - 8);
          v30 = v26;
          do
          {
            v10 = vextq_s8(*v29, *v29, 8uLL);
            v31 = vextq_s8(v29[-1], v29[-1], 8uLL);
            v28[-1] = v10;
            *v28 = v31;
            v28 += 2;
            v29 -= 2;
            v30 -= 4;
          }

          while (v30);
          if (v26 == v19)
          {
            return *v10.i64;
          }

          v22 -= v26;
          v18 = v27;
        }

        else
        {
          LODWORD(v26) = 0;
        }

        v32 = v19 - v26;
        do
        {
          v33 = *v22--;
          v10.i64[0] = v33;
          v18->i64[0] = v33;
          v18 = (v18 + 8);
          --v32;
        }

        while (v32);
      }
    }

    else if (a2 == 3)
    {
      if (*(a3 + 32) < 8 * v3 * v4)
      {
        if (*(a3 + 8) && *(a3 + 24) == 1)
        {
          MEMORY[0x245CBFC90]();
        }

        operator new[]();
      }

      *(a3 + 16) = v3;
      *(a3 + 20) = v4;
      if (v3 && v4)
      {
        v11 = 0;
        v12 = *(a3 + 8);
        v13 = 8 * (v4 - 1) * v3;
        do
        {
          v14 = (*(a1 + 8) + v13);
          v15 = v4;
          do
          {
            v10.i64[0] = *v14;
            *v12++ = *v14;
            v14 -= v3;
            --v15;
          }

          while (v15);
          ++v11;
          v13 += 8;
        }

        while (v11 != v3);
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      if (*(a3 + 32) < 8 * v3 * v4)
      {
        if (*(a3 + 8))
        {
          if (*(a3 + 24) == 1)
          {
            MEMORY[0x245CBFC90]();
          }
        }

        operator new[]();
      }

      *(a3 + 16) = v3;
      *(a3 + 20) = v4;
      if (v3 && v4)
      {
        v5 = 0;
        v6 = *(a3 + 8);
        v7 = 8 * (v3 - 1);
        do
        {
          v8 = (*(a1 + 8) + v7);
          v9 = v4;
          do
          {
            v10.i64[0] = *v8;
            *v6++ = *v8;
            v8 += v3;
            --v9;
          }

          while (v9);
          ++v5;
          v7 -= 8;
        }

        while (v5 != v3);
      }
    }
  }

  else
  {
    v16 = *(a1 + 8);
    v17 = *(a3 + 8);
    if (*(a3 + 32) < 8 * v4 * v3)
    {
      if (v17 && *(a3 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }

      operator new[]();
    }

    *(a3 + 16) = v4;
    *(a3 + 20) = v3;

    memcpy(v17, v16, 8 * v4 * v3);
  }

  return *v10.i64;
}

double ImageUtils::Rot90<BOOL>(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 20);
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (*(a3 + 32) < v4 * v3)
        {
          if (*(a3 + 8))
          {
            if (*(a3 + 24) == 1)
            {
              MEMORY[0x245CBFC90]();
            }
          }

          operator new[]();
        }

        *(a3 + 16) = v3;
        *(a3 + 20) = v4;
        if (v3 && v4)
        {
          v5 = 0;
          v6 = *(a3 + 8);
          do
          {
            v7 = (*(a1 + 8) + (v3 - 1) - v5);
            v8 = v4;
            do
            {
              *v6++ = *v7;
              v7 += v3;
              --v8;
            }

            while (v8);
            ++v5;
          }

          while (v5 != v3);
        }
      }
    }

    else
    {
      v13 = *(a1 + 8);
      v14 = *(a3 + 8);
      if (*(a3 + 32) < v4 * v3)
      {
        if (v14 && *(a3 + 24) == 1)
        {
          MEMORY[0x245CBFC90]();
        }

        operator new[]();
      }

      *(a3 + 16) = v4;
      *(a3 + 20) = v3;

      memcpy(v14, v13, v4 * v3);
    }

    return *v16.i64;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      if (*(a3 + 32) < v4 * v3)
      {
        if (*(a3 + 8) && *(a3 + 24) == 1)
        {
          MEMORY[0x245CBFC90]();
        }

        operator new[]();
      }

      *(a3 + 16) = v3;
      *(a3 + 20) = v4;
      if (v3 && v4)
      {
        v9 = 0;
        v10 = *(a3 + 8);
        do
        {
          v11 = (*(a1 + 8) + (v4 - 1) * v3 + v9);
          v12 = v4;
          do
          {
            *v10++ = *v11;
            v11 -= v3;
            --v12;
          }

          while (v12);
          ++v9;
        }

        while (v9 != v3);
      }
    }

    return *v16.i64;
  }

  v15 = *(a3 + 8);
  if (*(a3 + 32) < v4 * v3)
  {
    if (v15 && *(a3 + 24) == 1)
    {
      MEMORY[0x245CBFC90](*(a3 + 8));
    }

    operator new[]();
  }

  v17 = v4 * v3;
  *(a3 + 16) = v4;
  *(a3 + 20) = v3;
  if (v4 * v3)
  {
    v18 = *(a1 + 8);
    v19 = v17 - 1;
    v20 = (v18 + v19);
    if (v17 < 8 || (v15 < v18 + v17 ? (v21 = v18 >= v15->u64 + v17) : (v21 = 1), !v21))
    {
      LODWORD(v22) = 0;
      goto LABEL_53;
    }

    if (v17 >= 0x20)
    {
      v22 = v17 & 0xFFFFFFE0;
      v25 = v15 + 1;
      v26 = (v19 + v18 - 15);
      v27 = v22;
      do
      {
        v28 = vrev64q_s8(*v26);
        v16 = vextq_s8(v28, v28, 8uLL);
        v29 = vrev64q_s8(v26[-1]);
        v25[-1] = v16;
        *v25 = vextq_s8(v29, v29, 8uLL);
        v25 += 2;
        v26 -= 2;
        v27 -= 32;
      }

      while (v27);
      if (v22 == v17)
      {
        return *v16.i64;
      }

      if ((v17 & 0x18) == 0)
      {
        v15 = (v15 + v22);
        v20 -= v22;
        goto LABEL_53;
      }
    }

    else
    {
      v22 = 0;
    }

    v30 = (v15 + (v17 & 0xFFFFFFF8));
    v31 = v22 - (v17 & 0xFFFFFFF8);
    v32 = (v15->i64 + v22);
    v33 = (v19 - v22 + v18 - 7);
    do
    {
      v34 = *v33--;
      *v16.i8 = vrev64_s8(v34);
      *v32++ = v16.i64[0];
      v31 += 8;
    }

    while (v31);
    if ((v17 & 0xFFFFFFF8) == v17)
    {
      return *v16.i64;
    }

    v20 -= v17 & 0xFFFFFFF8;
    v15 = v30;
    LODWORD(v22) = v17 & 0xFFFFFFF8;
LABEL_53:
    v23 = v17 - v22;
    do
    {
      v24 = *v20--;
      v15->i8[0] = v24;
      v15 = (v15 + 1);
      --v23;
    }

    while (v23);
  }

  return *v16.i64;
}

void ImageUtils::OtsuThreshold(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 20);
  v3 = *(a1 + 8);
  v4 = *v3;
  v5 = v2 * v1;
  if (v2 * v1 < 2)
  {
    v8 = *v3;
  }

  else
  {
    v6 = v3 + 1;
    v7 = v5 - 1;
    v8 = v4;
    do
    {
      if (*v6 < v4)
      {
        v4 = *v6;
      }

      else if (*v6 > v8)
      {
        v8 = *v6;
      }

      ++v6;
      --v7;
    }

    while (v7);
  }

  if (v4 != v8)
  {
    v10 = malloc_type_calloc(0x100uLL, 8uLL, 0x100004000313F17uLL);
    v11 = v10;
    if (v5)
    {
      v12 = *(a1 + 8);
      do
      {
        v13 = *v12++;
        v14 = vcvtad_u64_f64((v13 - v4) / (v8 - v4) * 255.0);
        v10[v14] = 1.0 / (v1 * v2) + v10[v14];
        --v5;
      }

      while (v5);
    }

    v15 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
    v16 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
    v17 = v16;
    v18 = *v11;
    *v15 = *v11;
    *v16 = v18;
    if (v15 >= v16 + 256 || v16 >= v15 + 256)
    {
      v19 = 0;
      v21 = *v15;
      v22 = 2;
      do
      {
        v21 = v21 + v11[v19 + 1];
        v15[v19 + 1] = v21;
        v18 = v18 + v11[v19 + 1] * v22;
        v16[++v19] = v18;
        ++v22;
      }

      while ((v19 * 8) != 2040);
    }

    else
    {
      v19 = 0;
      v20 = 2;
      do
      {
        v15[v19 + 1] = v15[v19] + v11[v19 + 1];
        v18 = v16[v19] + v11[v19 + 1] * v20;
        v16[++v19] = v18;
        ++v20;
      }

      while ((v19 * 8) != 2040);
    }

    v23 = &v16[v19 - 1];
    v24 = &v15[v19 - 1];
    v25 = &v11[v19 - 1];
    v26 = 0;
    v27 = *(v24 - 2032);
    v28 = -(*(v23 - 2032) - v18 * v27);
    v29 = v28 * v28 / (v27 * (1.0 - v27));
    v30 = 1;
    v31 = -253;
    v32 = 1;
    do
    {
      v33 = *(v24 + 8 * v31);
      v34 = -(*(v23 + 8 * v31) - v18 * v33);
      v35 = v34 * v34 / (v33 * (1.0 - v33));
      if (v35 > v29)
      {
        v26 = v31 + 254;
        v32 = 1;
      }

      else
      {
        if (v35 == v29)
        {
          v26 += v30;
          ++v32;
        }

        v35 = v29;
      }

      ++v30;
      ++v31;
      v29 = v35;
    }

    while (v31 != 1);
    v36 = (v25 - 2032);
    free(v15);
    free(v17);
    free(v36);
  }
}

uint64_t ImageUtils::ExtractPatch<double>(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v6 = a2;
  v7 = *(result + 20);
  v8 = *(result + 8);
  v9 = a3 - a2 + 1;
  v10 = a5 - a4 + 1;
  if (*(a6 + 32) < 8 * v9 * v10)
  {
    if (*(a6 + 8))
    {
      if (*(a6 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  *(a6 + 16) = v9;
  *(a6 + 20) = v10;
  if (a3 >= a2 && a5 >= a4)
  {
    v11 = *(a6 + 8);
    v12 = v7 * a2;
    v13 = v8 + 8 * v12;
    if (a5 + 1 <= a4 + 1)
    {
      v14 = a4 + 1;
    }

    else
    {
      v14 = a5 + 1;
    }

    v15 = v14 + ~a4;
    if (v15 > 2)
    {
      if (v14 - 1 >= a4)
      {
        v18 = -(v8 + 8 * (v12 + a4));
        v19 = -8 * v7;
        v20 = v15 + 1;
        v21 = (v15 + 1) & 0x1FFFFFFFCLL;
        v22 = 8 * v21;
        if (v20 == v21)
        {
          v23 = 0;
          do
          {
            if (v11 + v18 + v19 * v23 >= 0x20)
            {
              v25 = v11 + 2;
              v26 = a4;
              result = v21;
              do
              {
                v27 = (v13 + 8 * v26);
                v28 = v27[1];
                *(v25 - 1) = *v27;
                *v25 = v28;
                v25 += 2;
                v26 += 4;
                result -= 4;
              }

              while (result);
              v11 = (v11 + v22);
            }

            else
            {
              v24 = a4;
              do
              {
                *v11++ = *(v13 + 8 * v24++);
              }

              while (v14 != v24);
            }

            ++v6;
            v13 += 8 * v7;
            ++v23;
          }

          while (v6 <= a3);
        }

        else
        {
          v29 = 0;
          do
          {
            if (v11 + v18 + v19 * v29 >= 0x20)
            {
              v31 = v11 + 2;
              v32 = a4;
              result = v21;
              do
              {
                v33 = (v13 + 8 * v32);
                v34 = v33[1];
                *(v31 - 1) = *v33;
                *v31 = v34;
                v31 += 2;
                v32 += 4;
                result -= 4;
              }

              while (result);
              v11 = (v11 + v22);
              v30 = v21 + a4;
            }

            else
            {
              v30 = a4;
            }

            do
            {
              *v11++ = *(v13 + 8 * v30++);
            }

            while (v30 <= a5);
            ++v6;
            v13 += 8 * v7;
            ++v29;
          }

          while (v6 <= a3);
        }
      }

      else
      {
        do
        {
          v17 = a4;
          do
          {
            *v11++ = *(v13 + 8 * v17++);
          }

          while (v14 != v17);
          ++v6;
          v13 += 8 * v7;
        }

        while (v6 <= a3);
      }
    }

    else
    {
      do
      {
        v16 = a4;
        do
        {
          *v11++ = *(v13 + 8 * v16++);
        }

        while (v14 != v16);
        ++v6;
        v13 += 8 * v7;
      }

      while (v6 <= a3);
    }
  }

  return result;
}

uint64_t ImageUtils::Conv2<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  v6 = v4 * v5;
  if (8 * v4 * v5)
  {
    operator new[]();
  }

  v7 = 0;
  if (v6)
  {
    v8 = *(a2 + 8);
    v9 = (v6 - 1);
    v10 = (v8 + 8 * v9);
    if (v6 < 0xA || ((v11 = 8 * v9, v12 = 8 * v9 + 8, v8 + v12) ? (v13 = v8 >= v12) : (v13 = 1), !v13))
    {
      LODWORD(v14) = 0;
LABEL_15:
      v19 = v6 - v14;
      do
      {
        v20 = *v10--;
        *v7++ = v20;
        --v19;
      }

      while (v19);
      goto LABEL_17;
    }

    v14 = v6 & 0xFFFFFFFC;
    v15 = 16;
    v16 = (v11 + v8 - 8);
    v17 = v14;
    do
    {
      v18 = vextq_s8(v16[-1], v16[-1], 8uLL);
      *(v15 - 16) = vextq_s8(*v16, *v16, 8uLL);
      *v15 = v18;
      v15 += 32;
      v16 -= 2;
      v17 -= 4;
    }

    while (v17);
    if (v14 != v6)
    {
      v10 -= v6 & 0xFFFFFFFC;
      v7 = (8 * (v6 & 0xFFFFFFFC));
      goto LABEL_15;
    }
  }

LABEL_17:
  if (a1 == a3)
  {
    v141 = "&im1 != res";
    v142 = 196;
    v143 = "ImageUtils.hpp";
    v144 = "Filter2";
    goto LABEL_162;
  }

  v21 = *(a1 + 16);
  v22 = *(a1 + 20);
  v23 = *(a3 + 8);
  if (*(a3 + 32) < 8 * v21 * v22)
  {
    if (v23)
    {
      if (*(a3 + 24) == 1)
      {
        MEMORY[0x245CBFC90](*(a3 + 8), 0x1000C8000313F17);
      }
    }

    operator new[]();
  }

  *(a3 + 16) = v21;
  *(a3 + 20) = v22;
  if ((v5 & 1) == 0)
  {
    v141 = "nCols2%2 == 1";
    v142 = 541;
LABEL_161:
    v143 = "VdspSpecialization.hpp";
    v144 = "vDSPImgfir";
LABEL_162:
    __assert_rtn(v144, v143, v142, v141);
  }

  if ((v4 & 1) == 0)
  {
    v141 = "nRows2%2 == 1";
    v142 = 542;
    goto LABEL_161;
  }

  v24 = *(a1 + 8);
  v25 = *(a1 + 20);
  v157 = *(a1 + 16);
  v26 = (v5 - 1) >> 1;
  v172 = v4 - 1;
  v27 = (v4 - 1) >> 1;
  v160 = v27;
  if (v4 != 1)
  {
    v28 = 0;
    v29 = v25 - v26;
    v30 = v26 + v25;
    if (v26 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = (v5 - 1) >> 1;
    }

    v146 = 8 * (v31 - 1) + 8;
    v148 = 8 * v31;
    v145 = 8 * (v25 - v5) + 8;
    v150 = 8 * (v26 - 1) + 8;
    v153 = v31;
    if (v27 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = (v4 - 1) >> 1;
    }

    v158 = v32;
    v33 = v5 * v27;
    v34 = v26 + v5 * v27;
    while (1)
    {
      if (v5 != 1)
      {
        if (v27 - v28 >= v4)
        {
          v174 = v28;
          v163 = v34;
          bzero(v23, v148);
          v27 = (v4 - 1) >> 1;
          v34 = v163;
          v31 = v153;
          v30 = v26 + v25;
          v28 = v174;
          v23 = (v23 + v146);
        }

        else
        {
          v35 = 0;
          v36 = v34;
          v37 = (v5 - 1) >> 1;
          do
          {
            *v23 = 0.0;
            if (v26 - v35 < v5)
            {
              v38 = 0;
              v39 = 0.0;
              v40 = v36;
              v41 = v27 - v28;
              do
              {
                v42 = v40;
                v43 = v38;
                v44 = v37;
                do
                {
                  v39 = v39 + *(8 * v42) * *(v24 + 8 * v43);
                  *v23 = v39;
                  ++v44;
                  ++v43;
                  ++v42;
                }

                while (v44 < v5);
                ++v41;
                v38 += v25;
                v40 += v5;
              }

              while (v41 < v4);
            }

            ++v35;
            ++v23;
            --v37;
            --v36;
          }

          while (v35 != v31);
        }
      }

      if (v26 >= v29)
      {
        goto LABEL_54;
      }

      if (v27 - v28 < v4)
      {
        break;
      }

      v175 = v28;
      v164 = v34;
      bzero(v23, v145);
      v27 = (v4 - 1) >> 1;
      v34 = v164;
      v31 = v153;
      v30 = v26 + v25;
      v28 = v175;
      v23 = (v23 + v145);
      v29 = v25 - v26;
      if (v25 - v26 < v25)
      {
LABEL_55:
        if (v27 - v28 >= v4)
        {
          v173 = v28;
          v162 = v34;
          bzero(v23, v150);
          v27 = (v4 - 1) >> 1;
          v34 = v162;
          v31 = v153;
          v30 = v26 + v25;
          v28 = v173;
          v23 = (v23 + v150);
        }

        else
        {
          v54 = v25 - 2 * v26;
          v55 = v5 - 1;
          v56 = v29;
          do
          {
            v57 = v55;
            if (v55 <= 1uLL)
            {
              v57 = 1;
            }

            *v23 = 0.0;
            if (v56 != v30)
            {
              v58 = 0.0;
              v59 = v33;
              v60 = v54;
              v61 = v27 - v28;
              do
              {
                v62 = v59;
                v63 = v60;
                v64 = v57;
                do
                {
                  v58 = v58 + *(8 * v62) * *(v24 + 8 * v63);
                  *v23 = v58;
                  ++v63;
                  ++v62;
                  --v64;
                }

                while (v64);
                ++v61;
                v60 += v25;
                v59 += v5;
              }

              while (v61 < v4);
            }

            ++v56;
            ++v23;
            --v55;
            ++v54;
          }

          while (v56 != v25);
        }
      }

LABEL_34:
      ++v28;
      v34 -= v5;
      v33 -= v5;
      if (v28 == v158)
      {
        goto LABEL_68;
      }
    }

    v45 = 0;
    v46 = (v5 - 1) >> 1;
    do
    {
      *v23 = 0.0;
      v47 = 0.0;
      v48 = v33;
      v49 = v45;
      v50 = v27 - v28;
      do
      {
        v51 = v48;
        v52 = v49;
        v53 = v5;
        do
        {
          v47 = v47 + *(8 * v51) * *(v24 + 8 * v52);
          *v23 = v47;
          ++v52;
          ++v51;
          --v53;
        }

        while (v53);
        ++v50;
        v49 += v25;
        v48 += v5;
      }

      while (v50 < v4);
      ++v46;
      ++v23;
      ++v45;
    }

    while (v46 != v29);
LABEL_54:
    if (v29 < v25)
    {
      goto LABEL_55;
    }

    goto LABEL_34;
  }

LABEL_68:
  v65 = v157 - v27;
  if (v27 < v157 - v27)
  {
    v66 = 0;
    v67 = v25 - v26;
    v68 = v26 + v25;
    if (v26 <= 1)
    {
      v69 = 1;
    }

    else
    {
      v69 = (v5 - 1) >> 1;
    }

    v151 = 8 * (v26 - 1) + 8;
    v154 = 8 * (v25 - v5) + 8;
    v70 = v27;
    v176 = v157 - v27;
    v159 = v25 - v26;
    do
    {
      if (v5 != 1)
      {
        if (!v4)
        {
          v166 = v70;
          bzero(v23, 8 * v69);
          v27 = v160;
          v70 = v166;
          v68 = v26 + v25;
          v67 = v25 - v26;
          v65 = v176;
          v23 += v69;
          if (v26 < v159)
          {
LABEL_96:
            v167 = v70;
            bzero(v23, v154);
            v27 = (v4 - 1) >> 1;
            v70 = v167;
            v68 = v26 + v25;
            v67 = v25 - v26;
            v65 = v176;
            v23 = (v23 + v154);
          }

LABEL_97:
          if (v67 < v25)
          {
            if (v4)
            {
              v89 = v70 - v27;
              goto LABEL_100;
            }

            v165 = v70;
            bzero(v23, v151);
            v27 = v160;
            v70 = v165;
            v68 = v26 + v25;
            v67 = v25 - v26;
            v65 = v176;
            v23 = (v23 + v151);
          }

          goto LABEL_74;
        }

        v71 = 0;
        v72 = (v5 - 1) >> 1;
        do
        {
          *v23 = 0.0;
          if (v26 - v71 < v5)
          {
            v73 = 0;
            v74 = 0.0;
            v75 = v72;
            v76 = v66;
            do
            {
              v77 = v75;
              v78 = v76;
              v79 = v72;
              do
              {
                v74 = v74 + *(8 * v77) * *(v24 + 8 * v78);
                *v23 = v74;
                ++v79;
                ++v78;
                ++v77;
              }

              while (v79 < v5);
              ++v73;
              v76 += v25;
              v75 += v5;
            }

            while (v73 != v4);
          }

          ++v71;
          ++v23;
          --v72;
        }

        while (v71 != v69);
      }

      if (v26 >= v67)
      {
        goto LABEL_97;
      }

      if (!v4)
      {
        goto LABEL_96;
      }

      if (v5)
      {
        v80 = v66;
        v81 = (v5 - 1) >> 1;
        do
        {
          v82 = 0;
          v83 = 0;
          *v23 = 0.0;
          v84 = 0.0;
          v85 = v80;
          do
          {
            v86 = v82;
            v87 = v85;
            v88 = v5;
            do
            {
              v84 = v84 + *(8 * v86) * *(v24 + 8 * v87);
              *v23 = v84;
              ++v87;
              ++v86;
              --v88;
            }

            while (v88);
            ++v83;
            v85 += v25;
            v82 += v5;
          }

          while (v83 != v4);
          ++v81;
          ++v23;
          ++v80;
        }

        while (v81 != v67);
        goto LABEL_97;
      }

      v168 = v70;
      bzero(v23, v154);
      v67 = v25 - v26;
      v23 = (v23 + v154);
      if (v159 < v25)
      {
        v27 = (v4 - 1) >> 1;
        v70 = v168;
        v89 = v168 - v160;
        v65 = v176;
        v68 = v26 + v25;
LABEL_100:
        v90 = -2 * v26 + v25 + v25 * v89;
        v91 = v5 - 1;
        v92 = v67;
        do
        {
          v93 = v91;
          if (v91 <= 1uLL)
          {
            v93 = 1;
          }

          *v23 = 0.0;
          if (v92 != v68)
          {
            v94 = 0;
            v95 = 0;
            v96 = 0.0;
            v97 = v90;
            do
            {
              v98 = v94;
              v99 = v97;
              v100 = v93;
              do
              {
                v96 = v96 + *(8 * v98) * *(v24 + 8 * v99);
                *v23 = v96;
                ++v99;
                ++v98;
                --v100;
              }

              while (v100);
              ++v95;
              v97 += v25;
              v94 += v5;
            }

            while (v95 != v4);
          }

          ++v92;
          ++v23;
          --v91;
          ++v90;
        }

        while (v92 != v25);
        goto LABEL_74;
      }

      v27 = (v4 - 1) >> 1;
      v70 = v168;
      v65 = v176;
      v68 = v26 + v25;
LABEL_74:
      ++v70;
      v66 += v25;
    }

    while (v70 != v65);
  }

  if (v65 < v157)
  {
    v101 = v27 + v157;
    v102 = v25 - v26;
    v103 = v26 + v25;
    if (v26 <= 1)
    {
      v104 = 1;
    }

    else
    {
      v104 = (v5 - 1) >> 1;
    }

    v149 = 8 * (v104 - 1) + 8;
    v152 = 8 * v104;
    v155 = 8 * (v25 - v5) + 8;
    v156 = v104;
    v147 = 8 * (v26 - 1) + 8;
    v105 = v157 - 2 * v27;
    v106 = v25 * v105;
    v107 = v25 + v25 * v105 - 2 * v26;
    v161 = v27 + v157;
    while (1)
    {
      v108 = v172;
      if (v172-- > 1)
      {
        v110 = v108;
      }

      else
      {
        v110 = 1;
      }

      if (v5 != 1)
      {
        if (v101 == v65)
        {
          v178 = v65;
          v170 = v107;
          bzero(v23, v152);
          v101 = v161;
          v107 = v170;
          v104 = v156;
          v103 = v26 + v25;
          v65 = v178;
          v23 = (v23 + v149);
        }

        else
        {
          v131 = 0;
          v132 = (v5 - 1) >> 1;
          do
          {
            *v23 = 0.0;
            if (v26 - v131 < v5)
            {
              v133 = 0;
              v134 = 0.0;
              v135 = v132;
              v136 = v106;
              do
              {
                v137 = v135;
                v138 = v136;
                v139 = v132;
                do
                {
                  v134 = v134 + *(8 * v137) * *(v24 + 8 * v138);
                  *v23 = v134;
                  ++v139;
                  ++v138;
                  ++v137;
                }

                while (v139 < v5);
                ++v133;
                v136 += v25;
                v135 += v5;
              }

              while (v133 != v110);
            }

            ++v131;
            ++v23;
            --v132;
          }

          while (v131 != v104);
        }
      }

      if (v26 >= v102)
      {
        goto LABEL_135;
      }

      if (v101 != v65 && v5)
      {
        break;
      }

      v179 = v65;
      v171 = v107;
      bzero(v23, v155);
      v101 = v161;
      v107 = v171;
      v104 = v156;
      v103 = v26 + v25;
      v65 = v179;
      v23 = (v23 + v155);
      if (v102 < v25)
      {
LABEL_136:
        if (v101 == v65)
        {
          v177 = v65;
          v169 = v107;
          bzero(v23, v147);
          v101 = v161;
          v107 = v169;
          v104 = v156;
          v103 = v26 + v25;
          v65 = v177;
          v23 = (v23 + v147);
        }

        else
        {
          v120 = v107;
          v121 = v5 - 1;
          v122 = v25 - v26;
          do
          {
            v123 = v121;
            if (v121 <= 1uLL)
            {
              v123 = 1;
            }

            *v23 = 0.0;
            if (v122 != v103)
            {
              v124 = 0;
              v125 = 0;
              v126 = 0.0;
              v127 = v120;
              do
              {
                v128 = v124;
                v129 = v127;
                v130 = v123;
                do
                {
                  v126 = v126 + *(8 * v128) * *(v24 + 8 * v129);
                  *v23 = v126;
                  ++v129;
                  ++v128;
                  --v130;
                }

                while (v130);
                ++v125;
                v127 += v25;
                v124 += v5;
              }

              while (v125 != v110);
            }

            ++v122;
            ++v23;
            --v121;
            ++v120;
          }

          while (v122 != v25);
        }
      }

LABEL_119:
      ++v65;
      v106 += v25;
      v107 += v25;
      if (v65 == v157)
      {
        return 0;
      }
    }

    v111 = v106;
    v112 = (v5 - 1) >> 1;
    do
    {
      v113 = 0;
      v114 = 0;
      *v23 = 0.0;
      v115 = 0.0;
      v116 = v111;
      do
      {
        v117 = v113;
        v118 = v116;
        v119 = v5;
        do
        {
          v115 = v115 + *(8 * v117) * *(v24 + 8 * v118);
          *v23 = v115;
          ++v118;
          ++v117;
          --v119;
        }

        while (v119);
        ++v114;
        v116 += v25;
        v113 += v5;
      }

      while (v114 != v110);
      ++v112;
      ++v23;
      ++v111;
    }

    while (v112 != v102);
LABEL_135:
    if (v102 < v25)
    {
      goto LABEL_136;
    }

    goto LABEL_119;
  }

  return 0;
}

void sub_240306F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t ImageUtils::Conv2<float>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  v6 = v4 * v5;
  if (4 * v4 * v5)
  {
    operator new[]();
  }

  v7 = 0;
  if (v6)
  {
    v8 = *(a2 + 8);
    v9 = (v6 - 1);
    v10 = (v8 + 4 * v9);
    if (v6 < 0xC || ((v11 = 4 * v9, v12 = 4 * v9 + 4, v8 + v12) ? (v13 = v8 >= v12) : (v13 = 1), !v13))
    {
      LODWORD(v14) = 0;
LABEL_15:
      v20 = v6 - v14;
      do
      {
        v21 = *v10--;
        *v7++ = v21;
        --v20;
      }

      while (v20);
      goto LABEL_17;
    }

    v14 = v6 & 0xFFFFFFF8;
    v15 = 16;
    v16 = (v11 + v8 - 12);
    v17 = v14;
    do
    {
      v18 = vrev64q_s32(*v16);
      v19 = vrev64q_s32(v16[-1]);
      *(v15 - 16) = vextq_s8(v18, v18, 8uLL);
      *v15 = vextq_s8(v19, v19, 8uLL);
      v15 += 32;
      v16 -= 2;
      v17 -= 8;
    }

    while (v17);
    if (v14 != v6)
    {
      v10 -= v6 & 0xFFFFFFF8;
      v7 = (4 * (v6 & 0xFFFFFFF8));
      goto LABEL_15;
    }
  }

LABEL_17:
  if (a1 == a3)
  {
    v142 = "&im1 != res";
    v143 = 196;
    v144 = "ImageUtils.hpp";
    v145 = "Filter2";
    goto LABEL_162;
  }

  v22 = *(a1 + 16);
  v23 = *(a1 + 20);
  v24 = *(a3 + 8);
  if (*(a3 + 32) < 4 * v22 * v23)
  {
    if (v24)
    {
      if (*(a3 + 24) == 1)
      {
        MEMORY[0x245CBFC90](*(a3 + 8), 0x1000C8052888210);
      }
    }

    operator new[]();
  }

  *(a3 + 16) = v22;
  *(a3 + 20) = v23;
  if ((v5 & 1) == 0)
  {
    v142 = "nCols2%2 == 1";
    v143 = 541;
LABEL_161:
    v144 = "VdspSpecialization.hpp";
    v145 = "vDSPImgfir";
LABEL_162:
    __assert_rtn(v145, v144, v143, v142);
  }

  if ((v4 & 1) == 0)
  {
    v142 = "nRows2%2 == 1";
    v143 = 542;
    goto LABEL_161;
  }

  v25 = *(a1 + 8);
  v26 = *(a1 + 20);
  v158 = *(a1 + 16);
  v27 = (v5 - 1) >> 1;
  v173 = v4 - 1;
  v28 = (v4 - 1) >> 1;
  v161 = v28;
  if (v4 != 1)
  {
    v29 = 0;
    v30 = v26 - v27;
    v31 = v27 + v26;
    if (v27 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = (v5 - 1) >> 1;
    }

    v147 = 4 * (v32 - 1) + 4;
    v149 = 4 * v32;
    v146 = 4 * (v26 - v5) + 4;
    v151 = 4 * (v27 - 1) + 4;
    v154 = v32;
    if (v28 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = (v4 - 1) >> 1;
    }

    v159 = v33;
    v34 = v5 * v28;
    v35 = v27 + v5 * v28;
    while (1)
    {
      if (v5 != 1)
      {
        if (v28 - v29 >= v4)
        {
          v175 = v29;
          v164 = v35;
          bzero(v24, v149);
          v28 = (v4 - 1) >> 1;
          v35 = v164;
          v32 = v154;
          v31 = v27 + v26;
          v29 = v175;
          v24 = (v24 + v147);
        }

        else
        {
          v36 = 0;
          v37 = v35;
          v38 = (v5 - 1) >> 1;
          do
          {
            *v24 = 0.0;
            if (v27 - v36 < v5)
            {
              v39 = 0;
              v40 = 0.0;
              v41 = v37;
              v42 = v28 - v29;
              do
              {
                v43 = v41;
                v44 = v39;
                v45 = v38;
                do
                {
                  v40 = v40 + (*(4 * v43) * *(v25 + 4 * v44));
                  *v24 = v40;
                  ++v45;
                  ++v44;
                  ++v43;
                }

                while (v45 < v5);
                ++v42;
                v39 += v26;
                v41 += v5;
              }

              while (v42 < v4);
            }

            ++v36;
            ++v24;
            --v38;
            --v37;
          }

          while (v36 != v32);
        }
      }

      if (v27 >= v30)
      {
        goto LABEL_54;
      }

      if (v28 - v29 < v4)
      {
        break;
      }

      v176 = v29;
      v165 = v35;
      bzero(v24, v146);
      v28 = (v4 - 1) >> 1;
      v35 = v165;
      v32 = v154;
      v31 = v27 + v26;
      v29 = v176;
      v24 = (v24 + v146);
      v30 = v26 - v27;
      if (v26 - v27 < v26)
      {
LABEL_55:
        if (v28 - v29 >= v4)
        {
          v174 = v29;
          v163 = v35;
          bzero(v24, v151);
          v28 = (v4 - 1) >> 1;
          v35 = v163;
          v32 = v154;
          v31 = v27 + v26;
          v29 = v174;
          v24 = (v24 + v151);
        }

        else
        {
          v55 = v26 - 2 * v27;
          v56 = v5 - 1;
          v57 = v30;
          do
          {
            v58 = v56;
            if (v56 <= 1uLL)
            {
              v58 = 1;
            }

            *v24 = 0.0;
            if (v57 != v31)
            {
              v59 = 0.0;
              v60 = v34;
              v61 = v55;
              v62 = v28 - v29;
              do
              {
                v63 = v60;
                v64 = v61;
                v65 = v58;
                do
                {
                  v59 = v59 + (*(4 * v63) * *(v25 + 4 * v64));
                  *v24 = v59;
                  ++v64;
                  ++v63;
                  --v65;
                }

                while (v65);
                ++v62;
                v61 += v26;
                v60 += v5;
              }

              while (v62 < v4);
            }

            ++v57;
            ++v24;
            --v56;
            ++v55;
          }

          while (v57 != v26);
        }
      }

LABEL_34:
      ++v29;
      v35 -= v5;
      v34 -= v5;
      if (v29 == v159)
      {
        goto LABEL_68;
      }
    }

    v46 = 0;
    v47 = (v5 - 1) >> 1;
    do
    {
      *v24 = 0.0;
      v48 = 0.0;
      v49 = v34;
      v50 = v46;
      v51 = v28 - v29;
      do
      {
        v52 = v49;
        v53 = v50;
        v54 = v5;
        do
        {
          v48 = v48 + (*(4 * v52) * *(v25 + 4 * v53));
          *v24 = v48;
          ++v53;
          ++v52;
          --v54;
        }

        while (v54);
        ++v51;
        v50 += v26;
        v49 += v5;
      }

      while (v51 < v4);
      ++v47;
      ++v24;
      ++v46;
    }

    while (v47 != v30);
LABEL_54:
    if (v30 < v26)
    {
      goto LABEL_55;
    }

    goto LABEL_34;
  }

LABEL_68:
  v66 = v158 - v28;
  if (v28 < v158 - v28)
  {
    v67 = 0;
    v68 = v26 - v27;
    v69 = v27 + v26;
    if (v27 <= 1)
    {
      v70 = 1;
    }

    else
    {
      v70 = (v5 - 1) >> 1;
    }

    v152 = 4 * (v27 - 1) + 4;
    v155 = 4 * (v26 - v5) + 4;
    v71 = v28;
    v177 = v158 - v28;
    v160 = v26 - v27;
    do
    {
      if (v5 != 1)
      {
        if (!v4)
        {
          v167 = v71;
          bzero(v24, 4 * v70);
          v28 = v161;
          v71 = v167;
          v69 = v27 + v26;
          v68 = v26 - v27;
          v66 = v177;
          v24 += v70;
          if (v27 < v160)
          {
LABEL_96:
            v168 = v71;
            bzero(v24, v155);
            v28 = (v4 - 1) >> 1;
            v71 = v168;
            v69 = v27 + v26;
            v68 = v26 - v27;
            v66 = v177;
            v24 = (v24 + v155);
          }

LABEL_97:
          if (v68 < v26)
          {
            if (v4)
            {
              v90 = v71 - v28;
              goto LABEL_100;
            }

            v166 = v71;
            bzero(v24, v152);
            v28 = v161;
            v71 = v166;
            v69 = v27 + v26;
            v68 = v26 - v27;
            v66 = v177;
            v24 = (v24 + v152);
          }

          goto LABEL_74;
        }

        v72 = 0;
        v73 = (v5 - 1) >> 1;
        do
        {
          *v24 = 0.0;
          if (v27 - v72 < v5)
          {
            v74 = 0;
            v75 = 0.0;
            v76 = v73;
            v77 = v67;
            do
            {
              v78 = v76;
              v79 = v77;
              v80 = v73;
              do
              {
                v75 = v75 + (*(4 * v78) * *(v25 + 4 * v79));
                *v24 = v75;
                ++v80;
                ++v79;
                ++v78;
              }

              while (v80 < v5);
              ++v74;
              v77 += v26;
              v76 += v5;
            }

            while (v74 != v4);
          }

          ++v72;
          ++v24;
          --v73;
        }

        while (v72 != v70);
      }

      if (v27 >= v68)
      {
        goto LABEL_97;
      }

      if (!v4)
      {
        goto LABEL_96;
      }

      if (v5)
      {
        v81 = v67;
        v82 = (v5 - 1) >> 1;
        do
        {
          v83 = 0;
          v84 = 0;
          *v24 = 0.0;
          v85 = 0.0;
          v86 = v81;
          do
          {
            v87 = v83;
            v88 = v86;
            v89 = v5;
            do
            {
              v85 = v85 + (*(4 * v87) * *(v25 + 4 * v88));
              *v24 = v85;
              ++v88;
              ++v87;
              --v89;
            }

            while (v89);
            ++v84;
            v86 += v26;
            v83 += v5;
          }

          while (v84 != v4);
          ++v82;
          ++v24;
          ++v81;
        }

        while (v82 != v68);
        goto LABEL_97;
      }

      v169 = v71;
      bzero(v24, v155);
      v68 = v26 - v27;
      v24 = (v24 + v155);
      if (v160 < v26)
      {
        v28 = (v4 - 1) >> 1;
        v71 = v169;
        v90 = v169 - v161;
        v66 = v177;
        v69 = v27 + v26;
LABEL_100:
        v91 = -2 * v27 + v26 + v26 * v90;
        v92 = v5 - 1;
        v93 = v68;
        do
        {
          v94 = v92;
          if (v92 <= 1uLL)
          {
            v94 = 1;
          }

          *v24 = 0.0;
          if (v93 != v69)
          {
            v95 = 0;
            v96 = 0;
            v97 = 0.0;
            v98 = v91;
            do
            {
              v99 = v95;
              v100 = v98;
              v101 = v94;
              do
              {
                v97 = v97 + (*(4 * v99) * *(v25 + 4 * v100));
                *v24 = v97;
                ++v100;
                ++v99;
                --v101;
              }

              while (v101);
              ++v96;
              v98 += v26;
              v95 += v5;
            }

            while (v96 != v4);
          }

          ++v93;
          ++v24;
          --v92;
          ++v91;
        }

        while (v93 != v26);
        goto LABEL_74;
      }

      v28 = (v4 - 1) >> 1;
      v71 = v169;
      v66 = v177;
      v69 = v27 + v26;
LABEL_74:
      ++v71;
      v67 += v26;
    }

    while (v71 != v66);
  }

  if (v66 < v158)
  {
    v102 = v28 + v158;
    v103 = v26 - v27;
    v104 = v27 + v26;
    if (v27 <= 1)
    {
      v105 = 1;
    }

    else
    {
      v105 = (v5 - 1) >> 1;
    }

    v150 = 4 * (v105 - 1) + 4;
    v153 = 4 * v105;
    v156 = 4 * (v26 - v5) + 4;
    v157 = v105;
    v148 = 4 * (v27 - 1) + 4;
    v106 = v158 - 2 * v28;
    v107 = v26 * v106;
    v108 = v26 + v26 * v106 - 2 * v27;
    v162 = v28 + v158;
    while (1)
    {
      v109 = v173;
      if (v173-- > 1)
      {
        v111 = v109;
      }

      else
      {
        v111 = 1;
      }

      if (v5 != 1)
      {
        if (v102 == v66)
        {
          v179 = v66;
          v171 = v108;
          bzero(v24, v153);
          v102 = v162;
          v108 = v171;
          v105 = v157;
          v104 = v27 + v26;
          v66 = v179;
          v24 = (v24 + v150);
        }

        else
        {
          v132 = 0;
          v133 = (v5 - 1) >> 1;
          do
          {
            *v24 = 0.0;
            if (v27 - v132 < v5)
            {
              v134 = 0;
              v135 = 0.0;
              v136 = v133;
              v137 = v107;
              do
              {
                v138 = v136;
                v139 = v137;
                v140 = v133;
                do
                {
                  v135 = v135 + (*(4 * v138) * *(v25 + 4 * v139));
                  *v24 = v135;
                  ++v140;
                  ++v139;
                  ++v138;
                }

                while (v140 < v5);
                ++v134;
                v137 += v26;
                v136 += v5;
              }

              while (v134 != v111);
            }

            ++v132;
            ++v24;
            --v133;
          }

          while (v132 != v105);
        }
      }

      if (v27 >= v103)
      {
        goto LABEL_135;
      }

      if (v102 != v66 && v5)
      {
        break;
      }

      v180 = v66;
      v172 = v108;
      bzero(v24, v156);
      v102 = v162;
      v108 = v172;
      v105 = v157;
      v104 = v27 + v26;
      v66 = v180;
      v24 = (v24 + v156);
      if (v103 < v26)
      {
LABEL_136:
        if (v102 == v66)
        {
          v178 = v66;
          v170 = v108;
          bzero(v24, v148);
          v102 = v162;
          v108 = v170;
          v105 = v157;
          v104 = v27 + v26;
          v66 = v178;
          v24 = (v24 + v148);
        }

        else
        {
          v121 = v108;
          v122 = v5 - 1;
          v123 = v26 - v27;
          do
          {
            v124 = v122;
            if (v122 <= 1uLL)
            {
              v124 = 1;
            }

            *v24 = 0.0;
            if (v123 != v104)
            {
              v125 = 0;
              v126 = 0;
              v127 = 0.0;
              v128 = v121;
              do
              {
                v129 = v125;
                v130 = v128;
                v131 = v124;
                do
                {
                  v127 = v127 + (*(4 * v129) * *(v25 + 4 * v130));
                  *v24 = v127;
                  ++v130;
                  ++v129;
                  --v131;
                }

                while (v131);
                ++v126;
                v128 += v26;
                v125 += v5;
              }

              while (v126 != v111);
            }

            ++v123;
            ++v24;
            --v122;
            ++v121;
          }

          while (v123 != v26);
        }
      }

LABEL_119:
      ++v66;
      v107 += v26;
      v108 += v26;
      if (v66 == v158)
      {
        return 0;
      }
    }

    v112 = v107;
    v113 = (v5 - 1) >> 1;
    do
    {
      v114 = 0;
      v115 = 0;
      *v24 = 0.0;
      v116 = 0.0;
      v117 = v112;
      do
      {
        v118 = v114;
        v119 = v117;
        v120 = v5;
        do
        {
          v116 = v116 + (*(4 * v118) * *(v25 + 4 * v119));
          *v24 = v116;
          ++v119;
          ++v118;
          --v120;
        }

        while (v120);
        ++v115;
        v117 += v26;
        v114 += v5;
      }

      while (v115 != v111);
      ++v113;
      ++v24;
      ++v112;
    }

    while (v113 != v103);
LABEL_135:
    if (v103 < v26)
    {
      goto LABEL_136;
    }

    goto LABEL_119;
  }

  return 0;
}

void sub_240307B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t Matrix<float>::~Matrix(uint64_t result)
{
  *result = &unk_285231238;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x245CBFC90](v1, 0x1000C8052888210);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_285231238;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x245CBFC90](v1, 0x1000C8052888210);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void Matrix<float>::~Matrix(uint64_t a1)
{
  *a1 = &unk_285231238;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x245CBFC90](v2, 0x1000C8052888210);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x245CBFCB0);
}

uint64_t svd_os(uint64_t a1, double *a2, double *a3, double *a4, double *a5, int8x16_t a6, int8x16_t a7, float64x2_t a8, __n128 a9, float64x2_t a10, float64x2_t a11, float64x2_t a12, int8x16_t a13)
{
  v161[53] = *MEMORY[0x277D85DE8];
  if ((a1 - 10) < 0xFFFFFFFFFFFFFFF7)
  {
    return 4294967197;
  }

  v14 = a1 - 1;
  if (a1 == 1)
  {
    a6.i64[0] = *a2;
    a7.i64[0] = 1.0;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    *a3 = vbslq_s8(vnegq_f64(v15), a7, a6).u64[0];
    *a4 = fabs(*a2);
    *a5 = 1.0;
    if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  v13 = 0;
  v16 = a1 - 2;
  v156 = a1 - 2;
  v17 = 8 * a1;
  v18 = 8 * a1 + 8;
  v148 = a1 * a1;
  v149 = &v161[v14];
  v19 = a2 + 1;
  v20 = &a2[a1];
  v21 = a2 + 3;
  v22 = &a2[a1 + 3];
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  v24 = vnegq_f64(v23);
  v25 = a1 - 1;
  v26 = a2;
  v27 = a1;
  v157 = a1 - 1;
  while (1)
  {
    v28 = v14 - v13;
    v29 = a1 - v13;
    if (a1 - v13 < 2)
    {
      goto LABEL_13;
    }

    a8.f64[0] = 0.0;
    v30 = 1;
    do
    {
      a9.n128_u64[0] = v26[v30];
      a8.f64[0] = a8.f64[0] + a9.n128_f64[0] * a9.n128_f64[0];
      ++v30;
    }

    while (v27 != v30);
    if (a8.f64[0] == 0.0)
    {
LABEL_13:
      *&a8.f64[0] = *v26;
      *v26 = 0;
      goto LABEL_14;
    }

    a8.f64[0] = sqrt(a8.f64[0] + *v26 * *v26);
    a10.f64[0] = -*v26;
    a8 = vbslq_s8(v24, a8, a10);
    a9.n128_f64[0] = 1.0 / (*v26 - a8.f64[0]);
    *v26 = (a8.f64[0] - *v26) / a8.f64[0];
    if (v28 < 4)
    {
      v43 = 1;
      goto LABEL_65;
    }

    v63 = v28 & 0xFFFFFFFFFFFFFFFCLL;
    v64 = v21;
    v65 = v25 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      a10 = vmulq_n_f64(v64[-1], a9.n128_f64[0]);
      a11 = vmulq_n_f64(*v64, a9.n128_f64[0]);
      v64[-1] = a10;
      *v64 = a11;
      v64 += 2;
      v65 -= 4;
    }

    while (v65);
    if (v28 != v63)
    {
      v43 = v63 | 1;
      do
      {
LABEL_65:
        a10.f64[0] = a9.n128_f64[0] * *&v26[v43];
        v26[v43++] = *&a10.f64[0];
      }

      while (v27 != v43);
    }

LABEL_14:
    a4[v13] = a8.f64[0];
    if ((*&a8.f64[0] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      return -v13;
    }

    v31 = v29 - 1;
    v32 = &v26[a1];
    if (v29 >= 2)
    {
      *&a8.f64[0] = *v26;
      if (*v26 != 0.0)
      {
        v44 = 0;
        v45 = v28 & 0xFFFFFFFFFFFFFFFCLL;
        v48 = a2 + v18 + v18 * v13 < &a2[a1] + v17 * v13 && (a2 + v18 * v13 + 8) < &a2[v148] || v28 < 4;
        v49 = v20;
        v50 = v22;
        while (1)
        {
          v51 = v50;
          v52 = v21;
          v53 = v25 & 0xFFFFFFFFFFFFFFFCLL;
          v54 = *&v32[v44 * a1];
          if (v28 < 4)
          {
            break;
          }

          do
          {
            a13 = *v51;
            a10 = vmulq_f64(v52[-1], v51[-1]);
            a12.f64[0] = a10.f64[1];
            v56 = vmulq_f64(*v52, *v51);
            a13.i64[0] = *&v56.f64[1];
            v54 = v54 + a10.f64[0] + a10.f64[1] + v56.f64[0] + v56.f64[1];
            v52 += 2;
            v51 += 2;
            v53 -= 4;
          }

          while (v53);
          v55 = v28 & 0xFFFFFFFFFFFFFFFCLL | 1;
          if (v28 != v45)
          {
            goto LABEL_50;
          }

LABEL_51:
          a11.f64[0] = v54 * *v26;
          *&v32[v44 * a1] = *&v32[v44 * a1] - a11.f64[0];
          a8.f64[0] = -a11.f64[0];
          if (v48)
          {
            v57 = 1;
          }

          else
          {
            v58 = 0;
            a9 = vdupq_lane_s64(*&a8.f64[0], 0);
            v59 = v25 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              a10 = *&v21[v58 / 8 - 2];
              a11 = *&v21[v58 / 8];
              v60 = &v50[v58 / 0x10];
              a12 = vmlaq_f64(v50[v58 / 0x10 - 1], a10, a9);
              a13 = vmlaq_f64(v50[v58 / 0x10], a11, a9);
              v60[-1] = a12;
              *v60 = a13;
              v58 += 32;
              v59 -= 4;
            }

            while (v59);
            v57 = v28 & 0xFFFFFFFFFFFFFFFCLL | 1;
            if (v28 == v45)
            {
              goto LABEL_45;
            }
          }

          do
          {
            a10.f64[0] = v49[v57];
            a9.n128_f64[0] = a10.f64[0] + a8.f64[0] * *&v26[v57];
            v49[v57++] = a9.n128_f64[0];
          }

          while (v27 != v57);
LABEL_45:
          ++v44;
          v50 = (v50 + v17);
          v49 = (v49 + v17);
          if (v44 == v31)
          {
            goto LABEL_17;
          }
        }

        v55 = 1;
        v54 = *&v32[v44 * a1];
        do
        {
LABEL_50:
          v54 = v54 + *&v26[v55] * v49[v55];
          ++v55;
        }

        while (v27 != v55);
        goto LABEL_51;
      }
    }

LABEL_17:
    if (v13 == v156)
    {
      break;
    }

    v14 = a1 - 1;
    if (v29 < 3)
    {
      goto LABEL_22;
    }

    a8.f64[0] = 0.0;
    v33 = 16 * a1;
    v34 = v16;
    do
    {
      a9.n128_u64[0] = *(v26 + v33);
      a8.f64[0] = a8.f64[0] + a9.n128_f64[0] * a9.n128_f64[0];
      v33 += v17;
      --v34;
    }

    while (v34);
    if (a8.f64[0] == 0.0)
    {
LABEL_22:
      *&a8.f64[0] = *v32;
      *v32 = 0;
    }

    else
    {
      a8.f64[0] = sqrt(a8.f64[0] + *v32 * *v32);
      a10.f64[0] = -*v32;
      a8 = vbslq_s8(v24, a8, a10);
      a9.n128_f64[0] = 1.0 / (*v32 - a8.f64[0]);
      *v32 = (a8.f64[0] - *v32) / a8.f64[0];
      v61 = 16 * a1;
      v62 = v16;
      do
      {
        a10.f64[0] = a9.n128_f64[0] * *(v26 + v61);
        *(v26 + v61) = *&a10.f64[0];
        v61 += v17;
        --v62;
      }

      while (v62);
    }

    v161[v13] = a8.f64[0];
    if ((*&a8.f64[0] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      return v13;
    }

    v35 = v26 + v18;
    if (v29 >= 3 && *v32 != 0.0)
    {
      v36 = 0;
      v37 = v19;
      do
      {
        v38 = 16 * a1;
        v39 = v16;
        v40 = *&v35[8 * v36];
        do
        {
          v40 = v40 + *(v26 + v38) * *(v37 + v38);
          v38 += v17;
          --v39;
        }

        while (v39);
        a11.f64[0] = v40 * *v32;
        *&v35[8 * v36] = *&v35[8 * v36] - a11.f64[0];
        v41 = 16 * a1;
        v42 = v16;
        do
        {
          a10.f64[0] = *(v37 + v41);
          a9.n128_f64[0] = a10.f64[0] + -a11.f64[0] * *(v26 + v41);
          *(v37 + v41) = a9.n128_f64[0];
          v41 += v17;
          --v42;
        }

        while (v42);
        ++v36;
        ++v37;
      }

      while (v36 != v31);
    }

    ++v13;
    --v27;
    --v25;
    v21 = (v21 + v18);
    v22 = (v22 + v18);
    v20 = (v20 + v18);
    --v16;
    v19 = (v19 + v18);
    v26 = (v26 + v18);
  }

  v66 = a1 - 1;
  v67 = *v32;
  a7.i64[0] = v32[1];
  *&v161[v156] = *v32;
  a4[v156 + 1] = *a7.i64;
  v68 = v66 + v66 * a1;
  v69 = a3;
  a3[v68] = 1.0;
  if (a1 < 2)
  {
    v118 = a5;
    a5[v68] = 1.0;
    *a5 = 1.0;
    v119 = v149;
    goto LABEL_113;
  }

  v70 = 0;
  v71 = -8 - v17;
  v72 = v157 * a1;
  v73 = &a2[v72];
  v151 = &a2[v72 - 1];
  v74 = &a3[a1 * a1];
  v75 = v74 - 2;
  v76 = &a2[++v72];
  v77 = v74 + 1;
  v152 = v73;
  v78 = v73 - 2;
  v79 = &a3[v72];
  v80 = a1 * v156;
  v81 = 1;
  v67 = 1.0;
  v82 = a1 - 2;
  v83 = a1 - 1;
  do
  {
    v84 = v83;
    v83 = v82;
    v85 = v75;
    v86 = v81;
    if (v84 < a1)
    {
      do
      {
        *v85 = 0.0;
        v85 = (v85 + v17);
        --v86;
      }

      while (v86);
    }

    v87 = v81 & 0xFFFFFFFFFFFFFFFCLL;
    v88 = v70 + 1;
    v89 = v83 + v83 * a1;
    *a7.i64 = a2[v89];
    if (a1 - v83 >= 2 && *a7.i64 != 0.0)
    {
      v90 = 0;
      v91 = &v69[v83 + v84 * a1];
      v92 = v88 & 0xFFFFFFFFFFFFFFFCLL;
      v95 = &a3[v148 - 1] + v71 * v70 < v152 + -8 * a1 * v70 && (v151 + v71 * v70) < &a3[v148] || v70 < 3;
      v96 = v70 + 2;
      v97 = v75;
      v98 = v77;
      while (1)
      {
        v100 = v98;
        v101 = v76;
        v102 = v81 & 0xFFFFFFFFFFFFFFFCLL;
        v103 = *(v91 + 8 * v90 * a1);
        if (v70 < 3)
        {
          break;
        }

        do
        {
          a9 = vmulq_f64(v101[-1], v100[-1]);
          *&a11.f64[0] = a9.n128_u64[1];
          a10 = vmulq_f64(*v101, *v100);
          a12.f64[0] = a10.f64[1];
          v103 = v103 + a9.n128_f64[0] + a9.n128_f64[1] + a10.f64[0] + a10.f64[1];
          v101 += 2;
          v100 += 2;
          v102 -= 4;
        }

        while (v102);
        v104 = v88 & 0xFFFFFFFFFFFFFFFCLL | 1;
        if (v88 != v92)
        {
          goto LABEL_90;
        }

LABEL_91:
        a10.f64[0] = v103 * a2[v89];
        *(v91 + 8 * v90 * a1) = *(v91 + 8 * v90 * a1) - a10.f64[0];
        v105 = -a10.f64[0];
        if (v95)
        {
          v106 = 1;
        }

        else
        {
          a8 = vdupq_lane_s64(*&v105, 0);
          v107 = v98;
          v108 = v76;
          v109 = v81 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            a9 = v108[-1];
            a10 = *v108;
            a11 = vmlaq_f64(v107[-1], a9, a8);
            a12 = vmlaq_f64(*v107, *v108, a8);
            v107[-1] = a11;
            *v107 = a12;
            v108 += 2;
            v107 += 2;
            v109 -= 4;
          }

          while (v109);
          v106 = v88 & 0xFFFFFFFFFFFFFFFCLL | 1;
          if (v88 == v92)
          {
            goto LABEL_85;
          }
        }

        do
        {
          a9.n128_f64[0] = v97[v106];
          v97[v106] = a9.n128_f64[0] + v105 * v78[v106];
          ++v106;
        }

        while (v96 != v106);
LABEL_85:
        v98 = (v98 + v17);
        v97 = (v97 + v17);
        if (v90++ == a1 - v83 - 2)
        {
          *a7.i64 = a2[v89];
          v69 = a3;
          v66 = a1 - 1;
          v71 = -8 - v17;
          goto LABEL_99;
        }
      }

      v104 = 1;
      v103 = *(v91 + 8 * v90 * a1);
      do
      {
LABEL_90:
        v103 = v103 + v78[v104] * v97[v104];
        ++v104;
      }

      while (v96 != v104);
      goto LABEL_91;
    }

LABEL_99:
    a8.f64[0] = 1.0 - *a7.i64;
    v69[v89] = 1.0 - *a7.i64;
    if (v84 < a1)
    {
      *a7.i64 = -*a7.i64;
      if (v70 < 3 || (a3 - a2) <= 0x1F)
      {
        goto LABEL_106;
      }

      v110 = v88 & 0xFFFFFFFFFFFFFFFCLL;
      v111 = v79;
      v112 = v76;
      do
      {
        a8 = vmulq_n_f64(v112[-1], *a7.i64);
        a9 = vmulq_n_f64(*v112, *a7.i64);
        v111[-1] = a8;
        *v111 = a9;
        v112 += 2;
        v111 += 2;
        v87 -= 4;
      }

      while (v87);
      if (v88 != v110)
      {
        v84 += v110;
LABEL_106:
        v113 = a1 - v84;
        v114 = v84 + v80;
        v115 = &v69[v114];
        v116 = &a2[v114];
        do
        {
          v117 = *v116++;
          a8.f64[0] = v117 * *a7.i64;
          *v115++ = v117 * *a7.i64;
          --v113;
        }

        while (v113);
      }
    }

    v82 = v83 - 1;
    ++v81;
    v75 = (v75 + v71);
    v76 = (v76 + v71);
    v77 = (v77 + v71);
    v78 = (v78 + v71);
    v79 = (v79 + v71);
    v80 -= a1;
    ++v70;
  }

  while (v88 != v66);
  v118 = a5;
  a5[v157 + v157 * a1] = 1.0;
  if (a1 != 2)
  {
    v125 = 0;
    v126 = a2 - 2;
    v153 = a5 + (v17 - 8) * a1 - 8;
    v127 = &a5[v148 - 2];
    v128 = v17 ^ 0xFFFFFFFFFFFFFFF8;
    v129 = &a2[v148 - 3];
    v130 = 1;
    v131 = a1 - 2;
    v132 = a1 - 1;
    do
    {
      v133 = v132;
      v132 = v131;
      if (v133 < a1)
      {
        v154 = v133;
        v134 = a1;
        bzero(&v153[v71 * v125], 8 * v125 + 8);
        v71 = -8 - v17;
        v133 = v154;
        v69 = a3;
        v118 = a5;
        a1 = v134;
      }

      v135 = v132 * a1;
      v136 = &v126[v133];
      v137 = v132 * a1;
      v138 = &v118[v132 + v137];
      v67 = v136[v137];
      if (a1 - v132 >= 2 && v67 != 0.0)
      {
        v139 = 0;
        v140 = v127;
        do
        {
          v141 = 0;
          v142 = v130;
          v143 = v138[v139];
          do
          {
            v143 = v143 + *(v129 + v141) * *(v140 + v141);
            v141 += v17;
            --v142;
          }

          while (v142);
          v144 = 0;
          a9.n128_f64[0] = v143 * v136[v135];
          v138[v139] = v138[v139] - a9.n128_f64[0];
          v145 = v130;
          do
          {
            a8.f64[0] = *(v140 + v144);
            *(v140 + v144) = a8.f64[0] + -a9.n128_f64[0] * *(v129 + v144);
            v144 += v17;
            --v145;
          }

          while (v145);
          ++v139;
          ++v140;
        }

        while (v139 != a1 - v132);
        v67 = v136[v135];
      }

      *a7.i64 = 1.0 - v67;
      *v138 = 1.0 - v67;
      if (v133 < a1)
      {
        v146 = 0;
        v67 = -v67;
        v147 = v130;
        do
        {
          *a7.i64 = *(v129 + v146) * v67;
          *(v127 + v146) = *a7.i64;
          v146 += v17;
          --v147;
        }

        while (v147);
      }

      v131 = v132 - 1;
      ++v125;
      ++v130;
      v127 = (v127 + v128);
      v129 = (v129 + v128);
    }

    while (v125 != v156);
  }

  *v118 = 1.0;
  v120 = v118 + 1;
  v121 = &v118[v17 / 8];
  v119 = v149;
  v122 = v157;
  do
  {
    *v121 = 0.0;
    *v120++ = 0;
    v121 = (v121 + v17);
    --v122;
  }

  while (v122);
LABEL_113:
  v159 = a1;
  v160 = 0;
  v123 = dbdsqr_(&v159, &v159, &v159, a4, v161, v118, &v159, v69, v67, a7, a8, a9, a10, a11.f64[0], a12.f64[0], a13, &v159, v119, &v160);
  return (v123 | v160) != 0;
}