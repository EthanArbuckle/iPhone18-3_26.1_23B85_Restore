uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x23EE863B0](a1 + 120);
  return a1;
}

void Phase::ChannelLayout::GetStringFromLayoutTag(Phase::ChannelLayout *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v4 = this & 0xFFFF0000;
  if ((this & 0xFFFF0000) == 0x930000)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "DiscreteInOrder");
    v14 = std::string::append(&v21, " ", 1uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v2);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }
  }

  else if (v4 == 12517376)
  {
    v11 = llroundf(sqrtf(this));
    if (v11)
    {
      v12 = v11 * v11 == this;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      goto LABEL_19;
    }

    std::string::basic_string[abi:ne200100]<0>(&v21, "HOA_ACN_N3D");
    v16 = std::string::append(&v21, " ", 1uLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v11 - 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }
  }

  else
  {
    if (v4 != 12451840)
    {
      if (this > 9568276)
      {
        if (this <= 11206661)
        {
          if (this <= 10354694)
          {
            if (this > 9961475)
            {
              if (this > 10158085)
              {
                switch(this)
                {
                  case 0x9B0006:
                    v13 = "EAC_6_0_A";
                    goto LABEL_20;
                  case 0x9C0007:
                    v13 = "EAC_7_0_A";
                    goto LABEL_20;
                  case 0x9D0007:
                    v13 = "EAC3_6_1_A";
                    goto LABEL_20;
                }
              }

              else
              {
                switch(this)
                {
                  case 0x980004:
                    v13 = "AC3_3_0_1";
                    goto LABEL_20;
                  case 0x990004:
                    v13 = "AC3_2_1_1";
                    goto LABEL_20;
                  case 0x9A0005:
                    v13 = "AC3_3_1_1";
                    goto LABEL_20;
                }
              }
            }

            else if (this > 9764865)
            {
              switch(this)
              {
                case 0x950002:
                  v13 = "AC3_1_0_1";
                  goto LABEL_20;
                case 0x960003:
                  v13 = "AC3_3_0";
                  goto LABEL_20;
                case 0x970004:
                  v13 = "AC3_3_1";
                  goto LABEL_20;
              }
            }

            else
            {
              switch(this)
              {
                case 0x920015:
                  v13 = "TMH_10_2_full";
                  goto LABEL_20;
                case 0x930000:
                  v13 = "DiscreteInOrder";
                  goto LABEL_20;
                case 0x940007:
                  v13 = "AudioUnit_7_0_Front";
                  goto LABEL_20;
              }
            }
          }

          else if (this <= 10747911)
          {
            if (this > 10551303)
            {
              switch(this)
              {
                case 0xA10008:
                  v13 = "EAC3_7_1_B";
                  goto LABEL_20;
                case 0xA20008:
                  v13 = "EAC3_7_1_C";
                  goto LABEL_20;
                case 0xA30008:
                  v13 = "EAC3_7_1_D";
                  goto LABEL_20;
              }
            }

            else
            {
              switch(this)
              {
                case 0x9E0007:
                  v13 = "EAC3_6_1_B";
                  goto LABEL_20;
                case 0x9F0007:
                  v13 = "EAC3_6_1_C";
                  goto LABEL_20;
                case 0xA00008:
                  v13 = "EAC3_7_1_A";
                  goto LABEL_20;
              }
            }
          }

          else if (this <= 10944519)
          {
            switch(this)
            {
              case 0xA40008:
                v13 = "EAC3_7_1_E";
                goto LABEL_20;
              case 0xA50008:
                v13 = "EAC3_7_1_F";
                goto LABEL_20;
              case 0xA60008:
                v13 = "EAC3_7_1_G";
                goto LABEL_20;
            }
          }

          else if (this > 11075588)
          {
            if (this == 11075589)
            {
              v13 = "DTS_4_1";
              goto LABEL_20;
            }

            if (this == 11141126)
            {
              v13 = "DTS_6_0_A";
              goto LABEL_20;
            }
          }

          else
          {
            if (this == 10944520)
            {
              v13 = "EAC3_7_1_H";
              goto LABEL_20;
            }

            if (this == 11010052)
            {
              v13 = "DTS_3_1";
              goto LABEL_20;
            }
          }
        }

        else if (this > 12058631)
        {
          if (this < 12451840)
          {
            if (this > 12255237)
            {
              switch(this)
              {
                case 0xBB0006:
                  v13 = "WAVE_5_1_B";
                  goto LABEL_20;
                case 0xBC0007:
                  v13 = "WAVE_6_1";
                  goto LABEL_20;
                case 0xBD0008:
                  v13 = "WAVE_7_1";
                  goto LABEL_20;
              }
            }

            else
            {
              switch(this)
              {
                case 0xB80008:
                  v13 = "AAC_7_1_C";
                  goto LABEL_20;
                case 0xB90004:
                  v13 = "WAVE_4_0_B";
                  goto LABEL_20;
                case 0xBA0005:
                  v13 = "WAVE_5_0_B";
                  goto LABEL_20;
              }
            }
          }

          else if (this <= 12648463)
          {
            switch(this)
            {
              case 0xBE0000:
                v13 = "HOA_ACN_SN3D";
                goto LABEL_20;
              case 0xBF0000:
                v13 = "HOA_ACN_N3D";
                goto LABEL_20;
              case 0xC0000C:
                v13 = "Atmos_7_1_4";
                goto LABEL_20;
            }
          }

          else if (this > 12779529)
          {
            if (this == 12779530)
            {
              v13 = "Atmos_5_1_4";
              goto LABEL_20;
            }

            if (this == 12845066)
            {
              v13 = "Atmos_7_1_2";
              goto LABEL_20;
            }
          }

          else
          {
            if (this == 12648464)
            {
              v13 = "Atmos_9_1_6";
              goto LABEL_20;
            }

            if (this == 12713992)
            {
              v13 = "Atmos_5_1_2";
              goto LABEL_20;
            }
          }
        }

        else if (this <= 11599879)
        {
          if (this > 11403270)
          {
            switch(this)
            {
              case 0xAE0007:
                v13 = "DTS_6_1_B";
                goto LABEL_20;
              case 0xAF0007:
                v13 = "DTS_6_1_C";
                goto LABEL_20;
              case 0xB00007:
                v13 = "DTS_7_0";
                goto LABEL_20;
            }
          }

          else
          {
            switch(this)
            {
              case 0xAB0006:
                v13 = "DTS_6_0_B";
                goto LABEL_20;
              case 0xAC0006:
                v13 = "DTS_6_0_C";
                goto LABEL_20;
              case 0xAD0007:
                v13 = "DTS_6_1_A";
                goto LABEL_20;
            }
          }
        }

        else if (this <= 11796488)
        {
          switch(this)
          {
            case 0xB10008:
              v13 = "DTS_7_1";
              goto LABEL_20;
            case 0xB20008:
              v13 = "DTS_8_0_A";
              goto LABEL_20;
            case 0xB30008:
              v13 = "DTS_8_0_B";
              goto LABEL_20;
          }
        }

        else if (this > 11927558)
        {
          if (this == 11927559)
          {
            v13 = "DTS_6_1_D";
            goto LABEL_20;
          }

          if (this == 11993096)
          {
            v13 = "AAC_7_1_B";
            goto LABEL_20;
          }
        }

        else
        {
          if (this == 11796489)
          {
            v13 = "DTS_8_1_A";
            goto LABEL_20;
          }

          if (this == 11862025)
          {
            v13 = "DTS_8_1_B";
            goto LABEL_20;
          }
        }
      }

      else if (this <= 7864324)
      {
        if (this <= 7012355)
        {
          if (this > 6619137)
          {
            if (this > 6815745)
            {
              switch(this)
              {
                case 0x680002:
                  v13 = "MidSide";
                  goto LABEL_20;
                case 0x690002:
                  v13 = "XY";
                  goto LABEL_20;
                case 0x6A0002:
                  v13 = "Binaural";
                  goto LABEL_20;
              }
            }

            else
            {
              switch(this)
              {
                case 0x650002:
                  v13 = "Stereo";
                  goto LABEL_20;
                case 0x660002:
                  v13 = "StereoHeadphones";
                  goto LABEL_20;
                case 0x670002:
                  v13 = "MatrixStereo";
                  goto LABEL_20;
              }
            }
          }

          else if ((this & 0x80000000) != 0)
          {
            if (this == -268435456)
            {
              v13 = "BeginReserved";
              goto LABEL_20;
            }

            if (this == -65537)
            {
              v13 = "EndReserved";
              goto LABEL_20;
            }
          }

          else
          {
            switch(this)
            {
              case 0:
                v13 = "UseChannelDescriptions";
                goto LABEL_20;
              case 0x10000:
                v13 = "UseChannelBitmap";
                goto LABEL_20;
              case 0x640001:
                v13 = "Mono";
                goto LABEL_20;
            }
          }
        }

        else if (this <= 7405570)
        {
          if (this > 7208965)
          {
            switch(this)
            {
              case 0x6E0006:
                v13 = "Hexagonal";
                goto LABEL_20;
              case 0x6F0008:
                v13 = "Octagonal";
                goto LABEL_20;
              case 0x700008:
                v13 = "Cube";
                goto LABEL_20;
            }
          }

          else
          {
            switch(this)
            {
              case 0x6B0004:
                v13 = "Ambisonic_B_Format";
                goto LABEL_20;
              case 0x6C0004:
                v13 = "Quadraphonic";
                goto LABEL_20;
              case 0x6D0005:
                v13 = "Pentagonal";
                goto LABEL_20;
            }
          }
        }

        else if (this <= 7602179)
        {
          switch(this)
          {
            case 0x710003:
              v13 = "MPEG_3_0_A";
              goto LABEL_20;
            case 0x720003:
              v13 = "MPEG_3_0_B";
              goto LABEL_20;
            case 0x730004:
              v13 = "MPEG_4_0_A";
              goto LABEL_20;
          }
        }

        else if (this > 7733252)
        {
          if (this == 7733253)
          {
            v13 = "MPEG_5_0_B";
            goto LABEL_20;
          }

          if (this == 7798789)
          {
            v13 = "MPEG_5_0_C";
            goto LABEL_20;
          }
        }

        else
        {
          if (this == 7602180)
          {
            v13 = "MPEG_4_0_B";
            goto LABEL_20;
          }

          if (this == 7667717)
          {
            v13 = "MPEG_5_0_A";
            goto LABEL_20;
          }
        }
      }

      else if (this > 8716290)
      {
        if (this <= 9109509)
        {
          if (this > 8912899)
          {
            switch(this)
            {
              case 0x880004:
                v13 = "DVD_10";
                goto LABEL_20;
              case 0x890005:
                v13 = "DVD_11";
                goto LABEL_20;
              case 0x8A0005:
                v13 = "DVD_18";
                goto LABEL_20;
            }
          }

          else
          {
            switch(this)
            {
              case 0x850003:
                v13 = "DVD_4";
                goto LABEL_20;
              case 0x860004:
                v13 = "DVD_5";
                goto LABEL_20;
              case 0x870005:
                v13 = "DVD_6";
                goto LABEL_20;
            }
          }
        }

        else if (this <= 9306118)
        {
          switch(this)
          {
            case 0x8B0006:
              v13 = "AudioUnit_6_0";
              goto LABEL_20;
            case 0x8C0007:
              v13 = "AudioUnit_7_0";
              goto LABEL_20;
            case 0x8D0006:
              v13 = "AAC_6_0";
              goto LABEL_20;
          }
        }

        else if (this > 9437191)
        {
          if (this == 9437192)
          {
            v13 = "AAC_Octagonal";
            goto LABEL_20;
          }

          if (this == 9502736)
          {
            v13 = "TMH_10_2_std";
            goto LABEL_20;
          }
        }

        else
        {
          if (this == 9306119)
          {
            v13 = "AAC_6_1";
            goto LABEL_20;
          }

          if (this == 9371655)
          {
            v13 = "AAC_7_0";
            goto LABEL_20;
          }
        }
      }

      else if (this <= 8257543)
      {
        if (this > 8060933)
        {
          switch(this)
          {
            case 0x7B0006:
              v13 = "MPEG_5_1_C";
              goto LABEL_20;
            case 0x7C0006:
              v13 = "MPEG_5_1_D";
              goto LABEL_20;
            case 0x7D0007:
              v13 = "MPEG_6_1_A";
              goto LABEL_20;
          }
        }

        else
        {
          switch(this)
          {
            case 0x780005:
              v13 = "MPEG_5_0_D";
              goto LABEL_20;
            case 0x790006:
              v13 = "MPEG_5_1_A";
              goto LABEL_20;
            case 0x7A0006:
              v13 = "MPEG_5_1_B";
              goto LABEL_20;
          }
        }
      }

      else if (this <= 8454151)
      {
        switch(this)
        {
          case 0x7E0008:
            v13 = "MPEG_7_1_A";
            goto LABEL_20;
          case 0x7F0008:
            v13 = "MPEG_7_1_B";
            goto LABEL_20;
          case 0x800008:
            v13 = "MPEG_7_1_C";
            goto LABEL_20;
        }
      }

      else if (this > 8585218)
      {
        if (this == 8585219)
        {
          v13 = "ITU_2_1";
          goto LABEL_20;
        }

        if (this == 8650756)
        {
          v13 = "ITU_2_2";
          goto LABEL_20;
        }
      }

      else
      {
        if (this == 8454152)
        {
          v13 = "Emagic_Default_7_1";
          goto LABEL_20;
        }

        if (this == 8519688)
        {
          v13 = "SMPTE_DTV";
          goto LABEL_20;
        }
      }

LABEL_19:
      v13 = "Unknown";
LABEL_20:

      std::string::basic_string[abi:ne200100]<0>(a2, v13);
      return;
    }

    v5 = llroundf(sqrtf(this));
    if (v5)
    {
      v6 = v5 * v5 == this;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      goto LABEL_19;
    }

    std::string::basic_string[abi:ne200100]<0>(&v21, "HOA_ACN_SN3D");
    v7 = std::string::append(&v21, " ", 1uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v5 - 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }
  }

  v18 = std::string::append(&v22, p_p, size);
  v19 = *&v18->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v18->__r_.__value_.__l + 2);
  *a2 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_23A3360A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void Phase::ChannelLayout::GetChannelLayoutChannelDescriptions(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *a1;
  if (**a1)
  {
    operator new[]();
  }

  v5 = v4[2];
  if (v5 > (a1[1] - v4 - 12) / 0x14uLL)
  {
    __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
  }

  std::vector<AudioChannelDescription>::resize(a2, v5);
  v6 = *a1;
  v7 = *(*a1 + 8);
  if (v7 > (a1[1] - *a1 - 12) / 0x14uLL)
  {
LABEL_20:
    __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
  }

  v8 = -1;
  v9 = 4;
  v28 = vdupq_n_s64(0x404CA5DC1A63C1F8uLL);
  while (++v8 < v7)
  {
    v10 = *a2;
    v11 = (*a2 + v9 * 4);
    v12 = *&v6[v9 - 1];
    *v11 = v6[v9 + 3];
    *(v11 - 1) = v12;
    v6 = *a1;
    v13 = *(*a1 + v9 * 4);
    if (v13)
    {
      v15 = *&v6[v9 + 1];
      v16 = *&v6[v9 + 2];
      v17 = *&v6[v9 + 3];
      v18 = fabsf(v16);
      if (fabsf(v15) < 0.00000011921 && v18 < 0.00000011921)
      {
        v22 = (v10 + v9 * 4);
        *v22 = fabsf(v17);
        *(v22 - 2) = 0.0;
        if (v17 <= 0.0)
        {
          if (v17 < 0.0)
          {
            *(v22 - 1) = -90.0;
          }

          else
          {
            *(v22 - 1) = 0.0;
          }
        }

        else
        {
          *(v22 - 1) = 90.0;
        }
      }

      else
      {
        v20 = sqrtf(((v16 * v16) + (v15 * v15)) + (v17 * v17));
        v21 = v10 + v9 * 4;
        *(v10 + v9 * 4) = v20;
        v29 = atan2f(v15, v16);
        *(v21 - 8) = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(__PAIR64__(COERCE_UNSIGNED_INT(asinf(v17 / v20)), LODWORD(v29))), v28));
      }
    }

    else if ((v13 & 2) != 0)
    {
      v14 = (v10 + v9 * 4);
      *(v14 - 2) = v6[v9 + 1];
      *(v14 - 1) = v6[v9 + 2];
      *v14 = v6[v9 + 3];
    }

    v9 += 5;
    v7 = v6[2];
    if (v7 > (a1[1] - v6 - 12) / 0x14uLL)
    {
      goto LABEL_20;
    }
  }

  v23 = *a2;
  v24 = a2[1];
  if (*a2 != v24)
  {
    do
    {
      if ((*(v23 + 4) & 3) == 0)
      {
        *(v23 + 4) = 2;
        *(v23 + 12) = 0x3F80000000000000;
        v25 = *v23;
        if (*v23 <= 207)
        {
          switch(v25)
          {
            case 1:
              goto LABEL_35;
            case 2:
              goto LABEL_36;
            case 3:
              *(v23 + 8) = 0;
              goto LABEL_24;
            case 5:
            case 10:
              v26 = -1025769472;
              goto LABEL_59;
            case 6:
            case 11:
              v26 = 1121714176;
              goto LABEL_59;
            case 7:
              v26 = -1049624576;
              goto LABEL_59;
            case 8:
              v26 = 1097859072;
              goto LABEL_59;
            case 9:
            case 44:
              v26 = 1127481344;
              goto LABEL_59;
            case 12:
              v27 = 0x42B4000000000000;
              goto LABEL_57;
            case 13:
              v27 = 0x42340000C2340000;
              goto LABEL_57;
            case 14:
              v27 = 0x41F0000000000000;
              goto LABEL_57;
            case 15:
              v27 = vdup_n_s32(0x42340000u);
              goto LABEL_57;
            case 16:
              v27 = 0x41F00000C3160000;
              goto LABEL_57;
            case 17:
              v27 = 0x41F0000043340000;
              goto LABEL_57;
            case 18:
              v27 = 0x41F0000043160000;
              goto LABEL_57;
            case 33:
              v26 = -1021968384;
              goto LABEL_59;
            case 34:
              v26 = 1125515264;
              goto LABEL_59;
            case 35:
              v26 = -1032847360;
              goto LABEL_59;
            case 36:
              v26 = 1114636288;
LABEL_59:
              *(v23 + 8) = v26;
              goto LABEL_24;
            case 49:
              v27 = 0x42340000C2B40000;
              goto LABEL_57;
            case 51:
              v27 = 0x4234000042B40000;
              goto LABEL_57;
            case 52:
              v27 = 0x42340000C3070000;
              goto LABEL_57;
            case 53:
              v27 = 0x4234000043340000;
              goto LABEL_57;
            case 54:
              v27 = 0x4234000043070000;
LABEL_57:
              *(v23 + 8) = v27;
              break;
            default:
              goto LABEL_60;
          }

          goto LABEL_24;
        }

        if (v25 > 300)
        {
          if (v25 == 302)
          {
            goto LABEL_36;
          }

          if (v25 != 301)
          {
LABEL_60:
            *(v23 + 4) = 0;
            *(v23 + 16) = 0;
            goto LABEL_24;
          }
        }

        else if (v25 != 208)
        {
          if (v25 != 209)
          {
            goto LABEL_60;
          }

LABEL_36:
          *(v23 + 8) = 1106247680;
          goto LABEL_24;
        }

LABEL_35:
        *(v23 + 8) = -1041235968;
      }

LABEL_24:
      v23 += 20;
    }

    while (v23 != v24);
  }
}

void sub_23A336604(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AudioChannelDescription>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 20 * a2;
  }

  else
  {
    v7 = *(a1 + 16);
    if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 2) < v6)
    {
      if (a2 <= 0xCCCCCCCCCCCCCCCLL)
      {
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v3) >> 2);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x666666666666666)
        {
          v10 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<AudioChannelDescription>>(a1, v10);
      }

      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v12 = 20 * ((20 * v6 - 20) / 0x14) + 20;
    bzero(*(a1 + 8), v12);
    v11 = v4 + v12;
  }

  *(a1 + 8) = v11;
}

void Phase::ChannelLayout::GetStringDescription(Phase::ChannelLayout *this@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(this + 2);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  std::vector<char>::vector[abi:ne200100](__dst, 20 * v5 + 12);
  memcpy(__dst[0], this, 20 * *(this + 2) + 12);
  Phase::ChannelLayout::GetStringDescription(__dst, a2);
  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }
}

void sub_23A336854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::ChannelLayout::GetStringDescription@<X0>(int **a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v56);
  v4 = **a1;
  ioPropertyDataSize = 8;
  outPropertyData = 0;
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "Channel layout description:", 27);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "\tTag: ", 6);
  Phase::ChannelLayout::GetStringFromLayoutTag(v4, &v51);
  if ((v53 & 0x80u) == 0)
  {
    locale = &v51;
  }

  else
  {
    locale = v51.__locale_;
  }

  if ((v53 & 0x80u) == 0)
  {
    v9 = v53;
  }

  else
  {
    v9 = v52;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, locale, v9);
  if (v53 < 0)
  {
    operator delete(v51.__locale_);
  }

  if (!AudioFormatGetProperty(0x6C6F6E6Du, *(a1 + 2) - *a1, *a1, &ioPropertyDataSize, &outPropertyData))
  {
    v10 = outPropertyData;
    if (outPropertyData && (v11 = CFGetTypeID(outPropertyData), v11 != CFStringGetTypeID()))
    {
      __p[0] = 0;
      CFRelease(v10);
      v10 = 0;
    }

    else
    {
      __p[0] = v10;
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, " / Name: ", 9);
    if (v10)
    {
      applesauce::CF::convert_to<std::string,0>(v10, &v51);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v51, "?");
    }

    if ((v53 & 0x80u) == 0)
    {
      v13 = &v51;
    }

    else
    {
      v13 = v51.__locale_;
    }

    if ((v53 & 0x80u) == 0)
    {
      v14 = v53;
    }

    else
    {
      v14 = v52;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    if (v53 < 0)
    {
      operator delete(v51.__locale_);
      if (!v10)
      {
        goto LABEL_28;
      }
    }

    else if (!v10)
    {
      goto LABEL_28;
    }

    CFRelease(v10);
  }

LABEL_28:
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, " / ", 3);
  v16 = *a1;
  v17 = **a1;
  if (v17 == 0x10000)
  {
    v19 = vcnt_s8(v16[1]);
    v19.i16[0] = vaddlv_u8(v19);
    v18 = v19.u32[0];
  }

  else if (v17)
  {
    v18 = **a1;
  }

  else
  {
    v18 = v16[2];
  }

  v20 = MEMORY[0x23EE86140](v15, v18);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " channels", 9);
  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v22 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v22->__vftable[2].~facet_0)(v22, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  Phase::ChannelLayout::GetChannelLayoutChannelDescriptions(a1, &v51);
  v23 = v51.__locale_;
  if (v52 != v51.__locale_)
  {
    v24 = 0;
    v25 = 1;
    v26 = MEMORY[0x277D82680];
    while (1)
    {
      v27 = (v23 + 20 * v24);
      if (AudioFormatGetProperty(0x636E616Du, 0x14u, v27, &ioPropertyDataSize, &outPropertyData))
      {
        goto LABEL_54;
      }

      v28 = outPropertyData;
      if (outPropertyData && (v29 = CFGetTypeID(outPropertyData), v29 != CFStringGetTypeID()))
      {
        v50 = 0;
        CFRelease(v28);
        v28 = 0;
      }

      else
      {
        v50 = v28;
      }

      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "\t* ", 3);
      v31 = MEMORY[0x23EE86140](v30, v25 - 1);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ": ", 2);
      if (v28)
      {
        applesauce::CF::convert_to<std::string,0>(v28, __p);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "?");
      }

      v33 = (v49 & 0x80u) == 0 ? __p : __p[0];
      v34 = (v49 & 0x80u) == 0 ? v49 : __p[1];
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v33, v34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "\t*** ", 5);
      if (v49 < 0)
      {
        break;
      }

      if (v28)
      {
        goto LABEL_53;
      }

LABEL_54:
      v36 = v27[1];
      if (v36)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "x = ", 4);
        v37 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ", ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "y = ", 4);
        v38 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ", ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "z = ", 4);
LABEL_59:
        std::ostream::operator<<();
        goto LABEL_60;
      }

      if ((v36 & 2) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "azimuth = ", 10);
        v39 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "elevation = ", 12);
        v40 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ", ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "radius = ", 9);
        goto LABEL_59;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "No coordinates specified", 24);
LABEL_60:
      std::ios_base::getloc((&v56 + *(v56 - 24)));
      v41 = std::locale::use_facet(__p, v26);
      (v41->__vftable[2].~facet_0)(v41, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      std::ostream::flush();
      v24 = v25;
      v23 = v51.__locale_;
      if (0xCCCCCCCCCCCCCCCDLL * ((v52 - v51.__locale_) >> 2) <= v25++)
      {
        goto LABEL_61;
      }
    }

    operator delete(__p[0]);
    if (!v28)
    {
      goto LABEL_54;
    }

LABEL_53:
    CFRelease(v28);
    goto LABEL_54;
  }

LABEL_61:
  if ((v63 & 0x10) != 0)
  {
    v45 = v62;
    v43 = a2;
    if (v62 < v59)
    {
      v62 = v59;
      v45 = v59;
    }

    v46 = v58[4].__locale_;
  }

  else
  {
    v43 = a2;
    if ((v63 & 8) == 0)
    {
      v44 = 0;
      a2[23] = 0;
      goto LABEL_74;
    }

    v46 = v58[1].__locale_;
    v45 = v58[3].__locale_;
  }

  v44 = v45 - v46;
  if ((v45 - v46) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v44 >= 0x17)
  {
    operator new();
  }

  v43[23] = v44;
  if (v44)
  {
    memmove(v43, v46, v44);
  }

LABEL_74:
  v43[v44] = 0;
  if (v51.__locale_)
  {
    v52 = v51.__locale_;
    operator delete(v51.__locale_);
  }

  v56 = *MEMORY[0x277D82828];
  *(&v56 + *(v56 - 24)) = *(MEMORY[0x277D82828] + 24);
  v57 = MEMORY[0x277D82878] + 16;
  if (v61 < 0)
  {
    operator delete(v60);
  }

  v57 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v58);
  std::ostream::~ostream();
  return MEMORY[0x23EE863B0](&v64);
}

void sub_23A33703C(_Unwind_Exception *a1, uint64_t a2, std::locale a3, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a3.__locale_);
  std::ostringstream::~ostringstream(&a18, MEMORY[0x277D82828]);
  MEMORY[0x23EE863B0](va);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_23A33726C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x23EE863B0](v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

unsigned int *Phase::ChannelLayout::IsLayoutSupported(Phase::ChannelLayout *this, const AudioChannelLayout *a2)
{
  IsLayoutSupported = this;
  if (this)
  {
    v3 = *(this + 2);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    std::vector<char>::vector[abi:ne200100](__dst, 20 * v3 + 12);
    memcpy(__dst[0], IsLayoutSupported, 20 * IsLayoutSupported[2] + 12);
    IsLayoutSupported = Phase::ChannelLayout::IsLayoutSupported(__dst);
    if (__dst[0])
    {
      __dst[1] = __dst[0];
      operator delete(__dst[0]);
    }
  }

  return IsLayoutSupported;
}

BOOL Phase::ChannelLayout::IsLayoutSupported(unsigned int **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2 == 0x10000)
  {
    v3 = vcnt_s8(v1[1]);
    v3.i16[0] = vaddlv_u8(v3);
    if (!v3.i32[0])
    {
      return 0;
    }
  }

  else if (v2)
  {
    if (!**a1)
    {
      return 0;
    }
  }

  else if (!v1[2])
  {
    return 0;
  }

  if (v2 != 0x10000)
  {
    v4 = v2 ? **a1 : v1[2];
    if (v4 > 0x40)
    {
      return 0;
    }
  }

  return v2 < 0xFFFF0000 && (v2 & 0xFFFF0000) != 9633792;
}

BOOL Phase::ChannelLayout::IsChannelLFE(Phase::Logger *a1, unsigned __int32 a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = **a1;
  if (v5 == 0x10000)
  {
    v7 = vcnt_s8(v4[1]);
    v7.i16[0] = vaddlv_u8(v7);
    v6 = v7.i32[0];
  }

  else if (v5)
  {
    v6 = **a1;
  }

  else
  {
    v6 = v4[2];
  }

  if (v6 <= a2)
  {
    v11 = **(Phase::Logger::GetInstance(a1) + 400);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = **a1;
      *__p = 136315906;
      *&__p[4] = "ChannelLayout.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 797;
      v15 = 1024;
      v16 = a2;
      v17 = 1024;
      v18 = v12;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d ChannelLayout: querying invalid channel (%i) info for layout %i", __p, 0x1Eu);
    }

    return 0;
  }

  else
  {
    Phase::ChannelLayout::GetChannelLayoutChannelDescriptions(a1, __p);
    v8 = *(*__p + 20 * a2);
    v10 = v8 == 4 || v8 == 37;
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  return v10;
}

uint64_t Phase::ChannelLayout::GetNumNonLFEChannels(Phase::Logger *a1)
{
  v2 = *a1;
  v3 = **a1;
  if (v3 == 0x10000)
  {
    v5 = vcnt_s8(v2[1]);
    v5.i16[0] = vaddlv_u8(v5);
    v4 = v5.u32[0];
  }

  else if (v3)
  {
    v4 = **a1;
  }

  else
  {
    v4 = v2[2];
  }

  for (i = 0; ; ++i)
  {
    if (v3 == 0x10000)
    {
      v8 = vcnt_s8(v2[1]);
      v8.i16[0] = vaddlv_u8(v8);
      v7 = v8.i32[0];
    }

    else
    {
      v7 = v3 ? v3 : v2[2];
    }

    if (i >= v7)
    {
      break;
    }

    v4 = (v4 - Phase::ChannelLayout::IsChannelLFE(a1, i));
    v2 = *a1;
    v3 = **a1;
  }

  return v4;
}

BOOL Phase::ChannelLayout::AreLayoutsEqual(void *a1, uint64_t *a2)
{
  inSpecifier[2] = *MEMORY[0x277D85DE8];
  ioPropertyDataSize = 4;
  outPropertyData = 0;
  v2 = *a2;
  inSpecifier[0] = *a1;
  inSpecifier[1] = v2;
  Property = AudioFormatGetProperty(0x63686571u, 0x10u, inSpecifier, &ioPropertyDataSize, &outPropertyData);
  if (!Property)
  {
    return outPropertyData == 1;
  }

  v4 = Property;
  v5 = **(Phase::Logger::GetInstance(Property) + 512);
  result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136315650;
    v10 = "ChannelLayout.cpp";
    v11 = 1024;
    v12 = 832;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ChannelLayout: could not compare channel layouts, failed with error %i", buf, 0x18u);
    return 0;
  }

  return result;
}

void Phase::ChannelLayout::ReduceLayout(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 == -1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v20 = *a1;
    v21 = a1[1];
    v22 = v21 - *a1;

    std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a3, v20, v21, v22);
  }

  else
  {
    __p = 0;
    v29 = 0;
    v30 = 0;
    Phase::ChannelLayout::GetChannelLayoutChannelDescriptions(a1, &v26);
    v6 = v26;
    v5 = v27;
    if (v27 == v26)
    {
      v19 = 0;
      v8 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      do
      {
        if ((a2 >> v9))
        {
          v10 = &v6[v7];
          if (v8 >= v30)
          {
            v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - __p) >> 2);
            v13 = v12 + 1;
            if (v12 + 1 > 0xCCCCCCCCCCCCCCCLL)
            {
              std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
            }

            if (0x999999999999999ALL * ((v30 - __p) >> 2) > v13)
            {
              v13 = 0x999999999999999ALL * ((v30 - __p) >> 2);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v30 - __p) >> 2) >= 0x666666666666666)
            {
              v14 = 0xCCCCCCCCCCCCCCCLL;
            }

            else
            {
              v14 = v13;
            }

            if (v14)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<AudioChannelDescription>>(&__p, v14);
            }

            v15 = 20 * v12;
            v16 = *v10;
            *(v15 + 16) = *(v10 + 4);
            *v15 = v16;
            v8 = 20 * v12 + 20;
            v17 = (v15 - (v29 - __p));
            memcpy(v17, __p, v29 - __p);
            v18 = __p;
            __p = v17;
            v29 = v8;
            v30 = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            v11 = *v10;
            *(v8 + 16) = *(v10 + 4);
            *v8 = v11;
            v8 += 20;
          }

          v29 = v8;
          v6 = v26;
          v5 = v27;
        }

        ++v9;
        v7 += 20;
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 2) > v9);
      v19 = __p;
    }

    v23 = -858993459 * ((v8 - v19) >> 2);
    if (v23 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = -858993459 * ((v8 - v19) >> 2);
    }

    v31 = 0;
    std::vector<char>::vector[abi:ne200100](a3, 20 * v24 + 12);
    v25 = *a3;
    *v25 = 0;
    *(v25 + 8) = v23;
    if (v23)
    {
      memmove((v25 + 12), v19, 20 * v23);
    }

    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }

    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }
  }
}

void sub_23A33795C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::ChannelLayout::GetNumActiveChannels(int **a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != -1)
  {
    v5 = *a1;
    v6 = **a1;
    if (v6 == 0x10000)
    {
      LOBYTE(v5) = vaddlv_u8(vcnt_s8(v5[1]));
    }

    else if (v6)
    {
      LOBYTE(v5) = **a1;
    }

    else
    {
      LODWORD(v5) = v5[2];
    }

    v7 = a2 & ~(-1 << v5);
    goto LABEL_15;
  }

  v2 = *a1;
  v3 = **a1;
  if (v3 == 0x10000)
  {
    v7 = v2[1];
LABEL_15:
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    return v8.u32[0];
  }

  if (v3)
  {
    return **a1;
  }

  else
  {
    return v2[2];
  }
}

void Phase::ChannelLayout::GetCrossmixMatrix(int **a1@<X0>, int **a2@<X1>, void *a3@<X8>)
{
  inSpecifier[2] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  inSpecifier[0] = *a1;
  inSpecifier[1] = v4;
  outPropertyDataSize = 0;
  PropertyInfo = AudioFormatGetPropertyInfo(0x6D6D6170u, 0x10u, inSpecifier, &outPropertyDataSize);
  if (!PropertyInfo)
  {
    operator new[]();
  }

  v6 = **(Phase::Logger::GetInstance(PropertyInfo) + 512);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = **a1;
    v8 = **a2;
    buf[0] = 136315906;
    *&buf[1] = "ChannelLayout.cpp";
    v12 = 1024;
    *v13 = 932;
    *&v13[4] = 1024;
    *&v13[6] = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ChannelLayout: could not determine a crossmix matrix for layouts %i to %i", buf, 0x1Eu);
  }
}

void std::vector<std::vector<float>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<float>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

_BYTE *applesauce::CF::convert_to<std::string,0>@<X0>(const __CFString *a1@<X0>, UInt8 *a2@<X8>)
{
  if (!a1 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return applesauce::CF::details::CFString_get_value<true>(a1, a2);
}

_BYTE *applesauce::CF::details::CFString_get_value<true>@<X0>(const __CFString *a1@<X0>, UInt8 *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a1);
    maxBufLen = 0;
    v10.location = 0;
    v10.length = Length;
    CFStringGetBytes(a1, v10, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    std::string::basic_string[abi:ne200100](a2, maxBufLen, 0);
    if ((a2[23] & 0x80u) == 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v11.location = 0;
    v11.length = Length;
    return CFStringGetBytes(a1, v11, 0x8000100u, 0, 0, v7, maxBufLen, &maxBufLen);
  }
}

void sub_23A338334(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void std::vector<std::vector<float>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<float>>::~__split_buffer(v18);
  }
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void *std::map<std::string,unsigned int>::map[abi:ne200100](void *a1, void *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = 0;
    v7 = a1 + 1;
    v8 = &a2[4 * a3];
    while (1)
    {
      v9 = v4;
      if (v7 == v4)
      {
        goto LABEL_10;
      }

      v10 = v6;
      v11 = v4;
      if (v6)
      {
        do
        {
          v9 = v10;
          v10 = v10[1];
        }

        while (v10);
      }

      else
      {
        do
        {
          v9 = v11[2];
          v12 = *v9 == v11;
          v11 = v9;
        }

        while (v12);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v9 + 4, v5) & 0x80) != 0)
      {
LABEL_10:
        if (v6)
        {
          v15 = v9;
          v13 = v9 + 1;
        }

        else
        {
          v15 = v4;
          v13 = v4;
        }
      }

      else
      {
        v13 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(a1, &v15, v5);
      }

      if (!*v13)
      {
        operator new();
      }

      v5 += 4;
      if (v5 == v8)
      {
        break;
      }

      v7 = *a1;
      v6 = a1[1];
    }
  }

  return a1;
}

void sub_23A3388AC(_Unwind_Exception *a1)
{
  operator delete(v1);
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

Phase::DspLayer23::ChannelReserver *Phase::DspLayer23::ChannelReserver::ChannelReserver(Phase::DspLayer23::ChannelReserver *this, int a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = (a2 + 63) & 0xFFFFFFC0;
  *this = malloc_type_malloc(8 * ((a2 + 63) >> 6), 0x100004000313F17uLL);
  *(this + 1) = malloc_type_malloc(2 * *(this + 4), 0x1000040BDFB0063uLL);
  bzero(*this, 8 * (*(this + 4) / 64));
  bzero(*(this + 1), 2 * *(this + 4));
  return this;
}

uint64_t Phase::Controller::ClientTapRegistryProxy::ClientTapRegistryProxy(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1065353216;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 850045863;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  inited = objc_initWeak((a1 + 216), a2);
  *(a1 + 224) = a3;
  v7 = inited;
  if (!a2)
  {
    std::terminate();
  }

  return a1;
}

void Phase::Controller::ClientTapRegistryProxy::~ClientTapRegistryProxy(Phase::Controller::ClientTapRegistryProxy *this)
{
  Phase::Controller::ClientTapRegistryProxy::Reset(this);
  objc_destroyWeak(this + 27);
  caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::~guarded_lookup_hash_table(this + 104);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::~__hash_table(this + 64);

  std::mutex::~mutex(this);
}

void Phase::Controller::ClientTapRegistryProxy::Reset(std::mutex *this)
{
  std::mutex::lock(this);
  for (i = &this[1].__m_.__opaque[8]; ; caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::remove(&this[1].__m_.__opaque[32], *(i + 2), *(i + 3)))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::clear(&this[1]);

  std::mutex::unlock(this);
}

void caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::remove(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = (a1 + 48);
  v19 = 1;
  std::mutex::lock((a1 + 48));
  v6 = atomic_load((a1 + 8));
  if (v6)
  {
    SlotForKey = caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::findSlotForKey(v6, a2, a3);
    if (SlotForKey)
    {
      v9 = v8;
      atomic_store(0xFFFFFFFFFFFFFFFFLL, (v6 + 8 * HIDWORD(SlotForKey) + 16));
      if (v8)
      {
        v10 = atomic_load((a1 + 16));
        if (v10 >= 1)
        {
          do
          {
            __ns.__rep_ = 50000;
            std::this_thread::sleep_for (&__ns);
            v11 = atomic_load((a1 + 16));
          }

          while (v11 > 0);
        }

        if (atomic_load(v9))
        {
          std::mutex::unlock(v18);
          v19 = 0;
          while (atomic_load(v9))
          {
            __ns.__rep_ = 500000;
            std::this_thread::sleep_for (&__ns);
          }

          std::unique_lock<std::mutex>::lock[abi:ne200100](&v18);
          v6 = atomic_load((a1 + 8));
        }

        caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::element_t::release(v9);
        v15 = *a1 - 1;
        *a1 = v15;
        if (v6)
        {
          v16 = *(v6 + 8);
          if (v16 >= 9 && 16 * v15 / v16 <= 2)
          {
            caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::rehash(a1, v16 >> 1);
          }
        }
      }
    }
  }

  v17 = atomic_load((a1 + 16));
  if (v17 <= 0)
  {
    std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](a1 + 24, *(a1 + 24));
  }

  if (v19 == 1)
  {
    std::mutex::unlock(v18);
  }
}

void sub_23A338FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::ClientTapRegistryProxy::RegisterTapReceiver(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  std::mutex::lock(a1);
  WeakRetained = objc_loadWeakRetained((a1 + 216));
  if (WeakRetained)
  {
    StringHashId = Phase::GetStringHashId(v5, v7);
    if (!std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 64), &StringHashId))
    {
      operator new();
    }

    [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:{@"Already registered a receiver for tap id %@", v5}];
  }

  std::mutex::unlock(a1);
}

void sub_23A339630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v8 = va_arg(va1, id *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,void *>>>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<Phase::Controller::ClientTapReceiverObject>::~unique_ptr[abi:ne200100](va);

  std::mutex::unlock(v5);
  _Unwind_Resume(a1);
}

id **std::unique_ptr<Phase::Controller::ClientTapReceiverObject>::~unique_ptr[abi:ne200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x23EE864A0](v2, 0x1080C40C7FE9FEDLL);
  }

  return a1;
}

void Phase::Controller::ClientTapRegistryProxy::UnregisterTapReceiver(Phase::Controller::ClientTapRegistryProxy *this, NSString *a2)
{
  v3 = a2;
  std::mutex::lock(this);
  StringHashId = Phase::GetStringHashId(v3, v4);
  v9 = StringHashId;
  v10 = 0;
  WeakRetained = objc_loadWeakRetained(this + 27);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained implementation];
    (*(**(v8 + 424) + 72))(*(v8 + 424), StringHashId, 0);
  }

  caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::remove(this + 104, StringHashId, 0);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::__erase_unique<Phase::UniqueObjectId>(this + 8, &v9);

  std::mutex::unlock(this);
}

void sub_23A3397AC(_Unwind_Exception *a1)
{
  std::mutex::unlock(v2);

  _Unwind_Resume(a1);
}

id Phase::Controller::ClientTapRegistryProxy::GetTapReceiverFormat(std::mutex *this, NSString *a2)
{
  v3 = a2;
  std::mutex::lock(this);
  v8[0] = Phase::GetStringHashId(v3, v4);
  v8[1] = 0;
  v5 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(&this[1].__m_.__sig, v8);
  v6 = v5;
  if (v5)
  {
    if (*(v5[4] + 56) == 1)
    {
      v6 = [objc_alloc(MEMORY[0x277CB83A8]) initWithStreamDescription:v5[4] + 16];
    }

    else
    {
      v6 = 0;
    }
  }

  std::mutex::unlock(this);

  return v6;
}

void sub_23A33988C(_Unwind_Exception *a1)
{
  std::mutex::unlock(v2);

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::ClientTapRegistryProxy::IORender(Phase::Controller::ClientTapRegistryProxy *this, UniqueObjectId a2, const AudioTimeStamp *a3, uint64_t a4, const AudioStreamBasicDescription *a5, float *a6)
{
  v6 = (this + 120);
  atomic_fetch_add(this + 30, 1u);
  result = atomic_load(this + 14);
  if (result)
  {
    result = caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::findSlotForKey(result, a2.mStorage[0], a2.mStorage[1]);
    if (v9)
    {
      v10 = v9;
      atomic_fetch_add(v9, 1u);
      v11 = *(v9 + 24);
      atomic_fetch_add(v6, 0xFFFFFFFF);
      v12 = *&a5->mBitsPerChannel;
      v13 = *&a5->mBytesPerPacket;
      *(v11 + 16) = *&a5->mSampleRate;
      *(v11 + 32) = v13;
      *(v11 + 48) = v12;
      result = (*(*v11 + 16))();
      v6 = v10;
    }
  }

  atomic_fetch_add(v6, 0xFFFFFFFF);
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::__deallocate_node(uint64_t a1, id **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::unique_ptr<Phase::Controller::ClientTapReceiverObject>::~unique_ptr[abi:ne200100](v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::~guarded_lookup_hash_table(uint64_t a1)
{
  if (atomic_load((a1 + 16)))
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v3 = atomic_load((a1 + 8));
    if (v3)
    {
      v4 = caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::~table_impl(v3);
      MEMORY[0x23EE864A0](v4, 0x1060C402CF69088);
    }

    std::mutex::~mutex((a1 + 48));
    v5 = *(a1 + 24);
    if (v5)
    {
      std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](a1 + 24, v5);
      operator delete(*(a1 + 24));
    }

    return a1;
  }

  return result;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::~table_impl(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (a1 + 16);
    do
    {
      if (*v3 + 1 >= 2)
      {
        caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::element_t::release(*v3);
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  return a1;
}

uint64_t std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      v6 = caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::~table_impl(result);
      result = MEMORY[0x23EE864A0](v6, 0x1060C402CF69088);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

unint64_t caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::ClientTapReceiverObject *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::rehash(unint64_t *a1, unsigned int a2)
{
  v4 = atomic_load(a1 + 1);
  v5 = operator new(8 * (a2 - 1) + 24);
  v6 = v5;
  *v5 = a1;
  *(v5 + 2) = a2;
  *(v5 + 2) = 0;
  v7 = v5 + 16;
  if (a2)
  {
    v8 = a2 + 1;
    v9 = (v5 + 16);
    do
    {
      atomic_store(0, v9++);
      --v8;
    }

    while (v8 > 1);
  }

  if (v4)
  {
    v10 = *(v4 + 8);
    if (v10)
    {
      v11 = (v4 + 16);
      do
      {
        v12 = *v11;
        if (*v11 + 1 >= 2)
        {
          SlotForKey = caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::findSlotForKey(v6, *(v12 + 8), *(v12 + 16));
          if ((SlotForKey & 1) == 0)
          {
            atomic_fetch_add(v12, 0x10000u);
            atomic_store(v12, &v7[8 * HIDWORD(SlotForKey)]);
          }
        }

        ++v11;
        --v10;
      }

      while (v10);
    }

    atomic_store(v6, a1 + 1);
    v15 = a1[4];
    v14 = a1[5];
    if (v15 >= v14)
    {
      v17 = a1[3];
      v18 = v15 - v17;
      v19 = (v15 - v17) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
      }

      v21 = v14 - v17;
      if (v21 >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (!(v22 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v23 = (v15 - v17) >> 3;
      v24 = (8 * v19);
      v25 = (8 * v19 - 8 * v23);
      *v24 = v4;
      v16 = v24 + 1;
      memcpy(v25, v17, v18);
      a1[3] = v25;
      a1[4] = v16;
      a1[5] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v15 = v4;
      v16 = v15 + 1;
    }

    a1[4] = v16;
  }

  else
  {
    atomic_store(v5, a1 + 1);
  }

  return v6;
}

void std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<Phase::Controller::ClientTapReceiverObject>::~unique_ptr[abi:ne200100](v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::__erase_unique<Phase::UniqueObjectId>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t Phase::TapSourceRegistry::GetOrCreateTapSourceInfo(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7)
{
  v88 = *MEMORY[0x277D85DE8];
  v13 = a7;
  v14 = v13;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a4 <= 0)
        {
          v15 = **(Phase::Logger::GetInstance(v13) + 960);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            buf[0] = 136315650;
            *&buf[1] = "ClientTapSourceRegistry.mm";
            v80 = 1024;
            v81 = 86;
            v82 = 1024;
            v83 = a4;
            v16 = "%25s:%-5d Error: invalid process tap, client PID %d";
            goto LABEL_107;
          }

LABEL_108:
          v77 = 0;
          goto LABEL_111;
        }

        v19 = *(a1 + 96);
        if (!v19)
        {
          goto LABEL_43;
        }

        v20 = a1 + 96;
        do
        {
          v21 = *(v19 + 32);
          v22 = v21 == a2;
          if (v21 >= a2)
          {
            v23 = 1;
          }

          else
          {
            v23 = -1;
          }

          if (v22)
          {
            v24 = *(v19 + 40);
            v25 = v24 == a4;
            v23 = v24 >= a4 ? 1 : -1;
            if (v25)
            {
              v23 = 0;
            }
          }

          v26 = v23 & 0x80;
          v22 = v26 == 0;
          v27 = v26 >> 4;
          if (v22)
          {
            v20 = v19;
          }

          v19 = *(v19 + v27);
        }

        while (v19);
        if (a1 + 96 == v20)
        {
          goto LABEL_43;
        }

        v28 = *(v20 + 32);
        v29 = v28 == a2;
        if (v28 <= a2)
        {
          v30 = 1;
        }

        else
        {
          v30 = -1;
        }

        if (v29)
        {
          v31 = *(v20 + 40);
          v32 = v31 == a4;
          v33 = v31 <= a4;
          v30 = -1;
          if (v33)
          {
            v30 = 1;
          }

          if (v32)
          {
            v30 = 0;
          }
        }

        if (v30 < 0)
        {
LABEL_43:
          v34 = [[PHASETapDescription alloc] initWithProcessIdentifier:a4 tapType:a2];
          v35 = [PHASEPreSpatialTapSource alloc];
          WeakRetained = objc_loadWeakRetained(a1);
          [(PHASEPreSpatialTapSource *)v35 initWithEngine:WeakRetained description:v34];

          operator new();
        }

LABEL_110:
        v77 = *(v20 + 48);
        goto LABEL_111;
      }

      if (a3 == 2)
      {
        if ((a5 + 1) <= 1)
        {
          v15 = **(Phase::Logger::GetInstance(v13) + 960);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            buf[0] = 136315650;
            *&buf[1] = "ClientTapSourceRegistry.mm";
            v80 = 1024;
            v81 = 113;
            v82 = 1024;
            v83 = a5;
            v16 = "%25s:%-5d Error: invalid session tap, sessionID 0x%x";
LABEL_107:
            _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x18u);
            goto LABEL_108;
          }

          goto LABEL_108;
        }

        v58 = *(a1 + 120);
        if (!v58)
        {
          goto LABEL_101;
        }

        v20 = a1 + 120;
        do
        {
          v59 = *(v58 + 32);
          v60 = v59 == a2;
          if (v59 >= a2)
          {
            v61 = 1;
          }

          else
          {
            v61 = -1;
          }

          if (v60)
          {
            v62 = *(v58 + 40);
            v63 = v62 == a5;
            v61 = v62 >= a5 ? 1 : -1;
            if (v63)
            {
              v61 = 0;
            }
          }

          v64 = v61 & 0x80;
          v22 = v64 == 0;
          v65 = v64 >> 4;
          if (v22)
          {
            v20 = v58;
          }

          v58 = *(v58 + v65);
        }

        while (v58);
        if (a1 + 120 == v20)
        {
          goto LABEL_101;
        }

        v66 = *(v20 + 32);
        v67 = v66 == a2;
        if (v66 <= a2)
        {
          v68 = 1;
        }

        else
        {
          v68 = -1;
        }

        if (v67)
        {
          v69 = *(v20 + 40);
          v70 = v69 == a5;
          v33 = v69 > a5;
          v68 = -1;
          if (!v33)
          {
            v68 = 1;
          }

          if (v70)
          {
            v68 = 0;
          }
        }

        if (v68 < 0)
        {
LABEL_101:
          v71 = [[PHASETapDescription alloc] initWithAudioSessionToken:a5 tapType:a2];
          v72 = [PHASEPreSpatialTapSource alloc];
          v73 = objc_loadWeakRetained(a1);
          [(PHASEPreSpatialTapSource *)v72 initWithEngine:v73 description:v71];

          operator new();
        }

        goto LABEL_110;
      }

LABEL_112:
      std::terminate();
    }

    v54 = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>((a1 + 8), a2);
    if (!v54)
    {
      v55 = [[PHASETapDescription alloc] initSystemTapOfType:a2];
      v56 = [PHASEPreSpatialTapSource alloc];
      v57 = objc_loadWeakRetained(a1);
      [(PHASEPreSpatialTapSource *)v56 initWithEngine:v57 description:v55];

      operator new();
    }

    goto LABEL_104;
  }

  if (a3 == 3)
  {
    goto LABEL_108;
  }

  if (a3 != 4)
  {
    if (a3 != 5)
    {
      goto LABEL_112;
    }

    if (a6)
    {
      v17 = **(Phase::Logger::GetInstance(v13) + 960);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = GetTapTypeString(a2);
        buf[0] = 136316162;
        *&buf[1] = "ClientTapSourceRegistry.mm";
        v80 = 1024;
        v81 = 63;
        v82 = 1024;
        v83 = 1;
        v84 = 1024;
        v85 = 5;
        v86 = 2112;
        v87 = v18;
        _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Excluding PHASETapStreamType %d from PHASETapBinding %d, with TapType %@", buf, 0x28u);
      }

      goto LABEL_108;
    }

    v54 = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>((a1 + 48), a2);
    if (!v54)
    {
      v74 = [[PHASETapDescription alloc] initScreenSharingTapOfType:a2];
      v75 = [PHASEPreSpatialTapSource alloc];
      v76 = objc_loadWeakRetained(a1);
      [(PHASEPreSpatialTapSource *)v75 initWithEngine:v76 description:v74];

      operator new();
    }

LABEL_104:
    v77 = v54[3];
    goto LABEL_111;
  }

  if (!a6)
  {
    goto LABEL_108;
  }

  v37 = *(a1 + 168);
  if (!v37)
  {
    goto LABEL_72;
  }

  v38 = (a1 + 168);
  do
  {
    v39 = v37[4];
    v40 = v39 == a2;
    if (v39 >= a2)
    {
      v41 = 1;
    }

    else
    {
      v41 = -1;
    }

    if (v40)
    {
      v42 = v37[5];
      v43 = v42 == 1;
      v41 = v42 >= 1 ? 1 : -1;
      if (v43)
      {
        v41 = 0;
      }
    }

    v44 = v41 & 0x80;
    v22 = v44 == 0;
    v45 = v44 >> 4;
    if (v22)
    {
      v38 = v37;
    }

    v37 = *(v37 + v45);
  }

  while (v37);
  if ((a1 + 168) == v38)
  {
    goto LABEL_72;
  }

  v46 = v38[4];
  v47 = v46 == a2;
  if (v46 <= a2)
  {
    v48 = 1;
  }

  else
  {
    v48 = -1;
  }

  if (v47)
  {
    v49 = v38[5];
    v50 = v49 == 1;
    v33 = v49 <= 1;
    v48 = -1;
    if (v33)
    {
      v48 = 1;
    }

    if (v50)
    {
      v48 = 0;
    }
  }

  if (v48 < 0)
  {
LABEL_72:
    v51 = [[PHASETapDescription alloc] initWithStreamType:1 tapType:a2];
    v52 = [PHASEPreSpatialTapSource alloc];
    v53 = objc_loadWeakRetained(a1);
    [(PHASEPreSpatialTapSource *)v52 initWithEngine:v53 description:v51];

    operator new();
  }

  v77 = v38[6];
LABEL_111:

  return v77;
}

void sub_23A33A94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

id **std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>::~unique_ptr[abi:ne200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x23EE864A0](v2, 0x80C40803F642BLL);
  }

  return a1;
}

void Phase::TapSourceRegistry::CacheTapInfo(Phase::TapSourceRegistry *this, int a2, AVAudioSession *a3, CachedTapInfo *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(AVAudioSession *)v6 opaqueSessionID];
  v8 = v7;
  if (!v6)
  {
    v9 = **(Phase::Logger::GetInstance(v7) + 960);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "ClientTapSourceRegistry.mm";
      v16 = 1024;
      v17 = 225;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d unexpected nil audio session", &v14, 0x12u);
    }
  }

  v10 = [(AVAudioSession *)v6 iAmTheAssistant];
  v11 = v10;
  if (v10)
  {
    v12 = **(Phase::Logger::GetInstance(v10) + 960);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315906;
      v15 = "ClientTapSourceRegistry.mm";
      v16 = 1024;
      v17 = 235;
      v18 = 1024;
      v19 = v8;
      v20 = 1024;
      v21 = 1;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d sessionID 0x%x matches PHASETapStreamType %d", &v14, 0x1Eu);
    }
  }

  a4->clientPID = a2;
  a4->audioSessionToken = v8;
  a4->isSiri = v11;
  sceneIdentifier = a4->sceneIdentifier;
  a4->sceneIdentifier = 0;
}

void Phase::TapSourceRegistry::RegisterTapSource(Phase::Logger *a1, uint64_t a2, void *a3, void **a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*a3 != a3[1])
  {
    v8 = **(Phase::Logger::GetInstance(a1) + 960);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a3;
      v9 = a3[1];
      v12 = *a4;
      v11 = *(a4 + 1);
      v13 = GetTapTypeString(a2);
      v20 = 136316674;
      v21 = "ClientTapSourceRegistry.mm";
      v22 = 1024;
      v23 = 306;
      v24 = 2048;
      v25 = a1;
      v26 = 1024;
      v27 = (v9 - v10) >> 4;
      v28 = 1024;
      v29 = v12;
      v30 = 1024;
      v31 = v11;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d TapSourceRegistry@%p: registering %d submixId(s) for client PID %d, sessionID 0x%x with TapType %@", &v20, 0x38u);
    }

    for (i = 0; i != 6; ++i)
    {
      TapSourceInfo = Phase::TapSourceRegistry::GetOrCreateTapSourceInfo(a1, a2, Phase::sGetAllTapBindings(void)::sBindings[i], *a4, *(a4 + 1), *(a4 + 8), a4[2]);
      if (TapSourceInfo)
      {
        v16 = *(TapSourceInfo + 8);
        if (!v16)
        {
          std::terminate();
        }

        v17 = v16;
        v18 = *a3;
        v19 = a3[1];
        while (v18 != v19)
        {
          if (*v18 != 0)
          {
            [v17 addSubmixId:?];
          }

          ++v18;
        }
      }
    }
  }
}

void Phase::TapSourceRegistry::UnregisterTapSource(Phase::Logger *a1, uint64_t a2, void *a3, void **a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*a3 != a3[1])
  {
    v8 = **(Phase::Logger::GetInstance(a1) + 960);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a3;
      v9 = a3[1];
      v12 = *a4;
      v11 = *(a4 + 1);
      v13 = GetTapTypeString(a2);
      v20 = 136316674;
      v21 = "ClientTapSourceRegistry.mm";
      v22 = 1024;
      v23 = 343;
      v24 = 2048;
      v25 = a1;
      v26 = 1024;
      v27 = (v9 - v10) >> 4;
      v28 = 1024;
      v29 = v12;
      v30 = 1024;
      v31 = v11;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d TapSourceRegistry@%p: unregistering %d submixId(s) for client PID %d, sessionID 0x%x, with TapType %@", &v20, 0x38u);
    }

    for (i = 0; i != 6; ++i)
    {
      TapSourceInfo = Phase::TapSourceRegistry::GetOrCreateTapSourceInfo(a1, a2, Phase::sGetAllTapBindings(void)::sBindings[i], *a4, *(a4 + 1), *(a4 + 8), a4[2]);
      if (TapSourceInfo)
      {
        v16 = *(TapSourceInfo + 8);
        if (!v16)
        {
          std::terminate();
        }

        v17 = v16;
        v18 = *a3;
        v19 = a3[1];
        while (v18 != v19)
        {
          if (*v18 != 0)
          {
            [v17 removeSubmixId:?];
          }

          ++v18;
        }
      }
    }
  }
}

void *std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::__emplace_unique_key_args<PHASETapType,PHASETapType&,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_23A33B578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>::~unique_ptr[abi:ne200100](v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t Phase::Controller::GetSpatialCategoryFromStringId(Phase::Controller *this, const Phase::StringId *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *this;
  if (*this > 0x1FFAFEA98FCB6A46)
  {
    if (v3 == 0x1FFAFEA98FCB6A47)
    {
      return 1;
    }

    if (v3 == 0x6B49B1D64D1B41D9)
    {
      return 3;
    }
  }

  else
  {
    if (v3 == 0x94F19D1538263596)
    {
      return 2;
    }

    if (v3 == 0xAB79C315C5E5658BLL)
    {
      return 4;
    }
  }

  v5 = **(Phase::Logger::GetInstance(this) + 1088);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(this + 1);
    v7 = 136315906;
    v8 = "ControllerEnumConversions.mm";
    v9 = 1024;
    v10 = 89;
    v11 = 2080;
    v12 = v6;
    v13 = 2048;
    v14 = 0;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d GetSpatialCategoryFromStringId(%s) not handled! Returning '%ld'.", &v7, 0x26u);
  }

  return 0;
}

uint64_t Phase::Controller::GetSpatialModelerGraphFromStringId(Phase::Controller *this, const Phase::StringId *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*this == 0x94EB1EFFBBB6498BLL)
  {
    return 3;
  }

  if (v2 == 0x41431F2BBDC5FD3DLL)
  {
    return 1;
  }

  if (v2 == 0x303D316DF08A928ALL)
  {
    return 2;
  }

  v5 = **(Phase::Logger::GetInstance(this) + 1088);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(this + 1);
    v7 = 136315906;
    v8 = "ControllerEnumConversions.mm";
    v9 = 1024;
    v10 = 170;
    v11 = 2080;
    v12 = v6;
    v13 = 2048;
    v14 = 0;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d GetSpatialModelerGraphFromStringId(%s) not handled! Returning '%ld'.", &v7, 0x26u);
  }

  return 0;
}

uint64_t Phase::Controller::GetSpatialModelerStageFromStringId(Phase::Controller *this, const Phase::StringId *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*this == 0x7D179DD4BE0C7C0BLL)
  {
    return 3;
  }

  if (v2 == 0x76F46F9CAE2A8525)
  {
    return 1;
  }

  if (v2 == 0x9841528F05C205ADLL)
  {
    return 2;
  }

  v5 = **(Phase::Logger::GetInstance(this) + 1088);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(this + 1);
    v7 = 136315906;
    v8 = "ControllerEnumConversions.mm";
    v9 = 1024;
    v10 = 246;
    v11 = 2080;
    v12 = v6;
    v13 = 2048;
    v14 = 0;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d GetSpatialModelerStageFromStringId(%s) not handled! Returning '%ld'.", &v7, 0x26u);
  }

  return 0;
}

uint64_t Phase::Controller::GetSpatialModelerParameterFromStringId(Phase::Controller *this, const Phase::StringId *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *this;
  if (*this <= 0x3B97657A3F7890D7)
  {
    if (v3 == 0xBB61740109BBA304)
    {
      return 4;
    }

    if (v3 == 0x1DC46F42C8E3BA06)
    {
      return 1;
    }
  }

  else
  {
    switch(v3)
    {
      case 0x3B97657A3F7890D8:
        return 5;
      case 0x4A994AC0B3A35B97:
        return 3;
      case 0x3E6FF80416884765:
        return 2;
    }
  }

  v5 = **(Phase::Logger::GetInstance(this) + 1088);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(this + 1);
    v7 = 136315906;
    v8 = "ControllerEnumConversions.mm";
    v9 = 1024;
    v10 = 334;
    v11 = 2080;
    v12 = v6;
    v13 = 2048;
    v14 = 0;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d GetSpatialModelerParameterFromStringId(%s) not handled! Returning '%ld'.", &v7, 0x26u);
  }

  return 0;
}

uint64_t Phase::Controller::IsSteppedParameter(void *a1)
{
  if (*a1 == 0x3B97657A3F7890D8)
  {
    v1 = a1[1];
    if (v1 != "MaximumClusterCount")
    {
      v2 = "MaximumClusterCount";
      return strcmp(v1, v2) == 0;
    }
  }

  else
  {
    if (*a1 != 0x3E6FF80416884765)
    {
      return 0;
    }

    v1 = a1[1];
    if (v1 != "SubbandCount")
    {
      v2 = "SubbandCount";
      return strcmp(v1, v2) == 0;
    }
  }

  return 1;
}

uint64_t Phase::Controller::AmbientSubmix::AmbientSubmix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Phase::Logger *a6, uint64_t a7, uint64_t a8)
{
  v85 = *MEMORY[0x277D85DE8];
  v10 = Phase::Controller::Submix::Submix(a1, *(a2 + 8), *(a2 + 16), *(a2 + 64), *(a2 + 72), *(a2 + 80), a3, a4, a5, a6, a7, a8);
  *v10 = &unk_284D2FD50;
  *(v10 + 45) = *a2;
  *(v10 + 54) = 0;
  *(v10 + 25) = 0u;
  *(v10 + 26) = 0u;
  *(v10 + 23) = 0u;
  *(v10 + 24) = 0u;
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = v10 + 368;
  memset(__p, 0, 24);
  v14 = std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(__p, v11, v12, v12 - v11);
  ChannelMask = Phase::Controller::AmbientSubmix::GetChannelMask(v14, (a2 + 40));
  Phase::ChannelLayout::ReduceLayout(__p, ChannelMask, (a1 + 440));
  v16 = *__p;
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  *(a1 + 464) = xmmword_23A554920;
  if (!*(a1 + 360))
  {
    v58 = **(Phase::Logger::GetInstance(v16) + 400);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "CvmAmbientSubmix.mm";
      *&__p[12] = 1024;
      *&__p[14] = 56;
      *&__p[18] = 2048;
      *&__p[20] = a1;
      _os_log_impl(&dword_23A302000, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [Geometry::InvalidEntityHandle == mListenerEntityHandle is true]: Ambient Submix@%p: Error: invalid Listener Handle", __p, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Ambient Submix@%p: Error: invalid Listener Handle");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  v17 = *(a1 + 440);
  if (*v17 == 0x10000)
  {
    v19 = vcnt_s8(v17[1]);
    v19.i16[0] = vaddlv_u8(v19);
    v18 = v19.i32[0];
  }

  else if (*v17)
  {
    v18 = *v17;
  }

  else
  {
    v18 = v17[2];
  }

  if (!v18)
  {
    v60 = **(Phase::Logger::GetInstance(v16) + 400);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "CvmAmbientSubmix.mm";
      *&__p[12] = 1024;
      *&__p[14] = 61;
      *&__p[18] = 2048;
      *&__p[20] = a1;
      _os_log_impl(&dword_23A302000, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [channelCount == 0 is true]: Ambient Submix@%p: Error: Input Channel Layout has no channels", __p, 0x1Cu);
    }

    v61 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v61, "Ambient Submix@%p: Error: Input Channel Layout has no channels");
    v61->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  NumNonLFEChannels = Phase::ChannelLayout::GetNumNonLFEChannels((a1 + 440));
  if ((NumNonLFEChannels & 0x80000000) != 0)
  {
    std::terminate();
  }

  if (!NumNonLFEChannels)
  {
    v62 = **(Phase::Logger::GetInstance(NumNonLFEChannels) + 400);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "CvmAmbientSubmix.mm";
      *&__p[12] = 1024;
      *&__p[14] = 67;
      *&__p[18] = 2048;
      *&__p[20] = a1;
      _os_log_impl(&dword_23A302000, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [fullRangeChannelCount == 0 is true]: Ambient Submix@%p: Error: Input Channel Layout doesn't contain any fullrange channels", __p, 0x1Cu);
    }

    v63 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v63, "Ambient Submix@%p: Error: Input Channel Layout doesn't contain any fullrange channels");
LABEL_67:
    v63->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  if (v18 != NumNonLFEChannels)
  {
    v64 = **(Phase::Logger::GetInstance(NumNonLFEChannels) + 400);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "CvmAmbientSubmix.mm";
      *&__p[12] = 1024;
      *&__p[14] = 71;
      *&__p[18] = 2048;
      *&__p[20] = a1;
      _os_log_impl(&dword_23A302000, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [channelCount != fullRangeChannelCount is true]: Ambient Submix@%p: Error: Input Channel Layout contains LFE channels", __p, 0x1Cu);
    }

    v63 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v63, "Ambient Submix@%p: Error: Input Channel Layout contains LFE channels");
    goto LABEL_67;
  }

  Phase::ChannelLayout::GetChannelLayoutChannelDescriptions((a1 + 440), &v67);
  v22 = v67;
  v21 = v68;
  v23 = 0xCCCCCCCCCCCCCCCDLL * ((v68 - v67) >> 2);
  v24 = *(a1 + 392);
  v25 = *(a1 + 400);
  v26 = (v25 - v24) >> 3;
  if (v23 <= v26)
  {
    if (v23 >= v26)
    {
      goto LABEL_26;
    }

    v32 = v24 + 0x6666666666666668 * ((v68 - v67) >> 2);
  }

  else
  {
    v27 = v23 - v26;
    v28 = *(a1 + 408);
    if (v27 > (v28 - v25) >> 3)
    {
      if (!(v23 >> 61))
      {
        v29 = v28 - v24;
        v30 = v29 >> 2;
        if (v29 >> 2 <= v23)
        {
          v30 = 0xCCCCCCCCCCCCCCCDLL * ((v68 - v67) >> 2);
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1 + 392, v31);
      }

      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a1 + 400), 8 * v27);
    v32 = v25 + 8 * v27;
  }

  *(a1 + 400) = v32;
LABEL_26:
  v33 = *(a1 + 368);
  v34 = *(a1 + 376);
  v35 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 2);
  v36 = v23 - v35;
  if (v23 <= v35)
  {
    if (v23 >= v35)
    {
      goto LABEL_39;
    }

    v41 = v33 + 12 * v23;
  }

  else
  {
    v37 = *(a1 + 384);
    if (0xAAAAAAAAAAAAAAABLL * ((v37 - v34) >> 2) < v36)
    {
      if (v23 <= 0x1555555555555555)
      {
        v38 = 0xAAAAAAAAAAAAAAABLL * ((v37 - v33) >> 2);
        v39 = 2 * v38;
        if (2 * v38 <= v23)
        {
          v39 = v23;
        }

        if (v38 >= 0xAAAAAAAAAAAAAAALL)
        {
          v40 = 0x1555555555555555;
        }

        else
        {
          v40 = v39;
        }

        *&v71[2] = v13;
        std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Vector<float,3ul>>>(v13, v40);
      }

      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v42 = 12 * ((12 * v36 - 12) / 0xC) + 12;
    bzero(*(a1 + 376), v42);
    v41 = v34 + v42;
  }

  *(a1 + 376) = v41;
LABEL_39:
  if (v21 != v22)
  {
    Phase::Geometry::CreateEntity<Phase::Geometry::Source>();
  }

  v43 = Phase::Controller::AmbientSubmix::SetOrientation(a1, (a2 + 24), 1);
  Instance = Phase::Logger::GetInstance(v43);
  if (*(Instance + 1636) == 1)
  {
    v45 = **(Phase::Logger::GetInstance(Instance) + 400);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(a1 + 32);
      v47 = *(a1 + 16);
      v48 = *(a1 + 72);
      v49 = *(a1 + 8);
      Phase::ChannelLayout::GetStringDescription((a1 + 440), &v65);
      SubmixStateString = Phase::Controller::Submix::sGetSubmixStateString(v48);
      v51 = "true";
      if (v49)
      {
        v51 = "false";
      }

      if (v66 >= 0)
      {
        v52 = &v65;
      }

      else
      {
        v52 = v65;
      }

      v53 = *(a1 + 464);
      v54 = *(a1 + 468);
      v55 = *(a1 + 472);
      v56 = *(a1 + 476);
      *__p = 136317698;
      *&__p[4] = "CvmAmbientSubmix.mm";
      *&__p[12] = 1024;
      *&__p[14] = 130;
      *&__p[18] = 2048;
      *&__p[20] = v46;
      v70 = 2048;
      *v71 = v47;
      *&v71[8] = 2080;
      v72 = SubmixStateString;
      v73 = 2080;
      v74 = v51;
      v75 = 2080;
      v76 = v52;
      v77 = 2048;
      v78 = v53;
      v79 = 2048;
      v80 = v54;
      v81 = 2048;
      v82 = v55;
      v83 = 2048;
      v84 = v56;
      _os_log_impl(&dword_23A302000, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu, submix: %llu) - created (type: ambient, state: %s, sleep transitions enabled: %s, channel layout: %s, orientation: [%f, %f, %f, %f])", __p, 0x6Cu);
      if (v66 < 0)
      {
        operator delete(v65);
      }
    }
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  return a1;
}

void sub_23A33C7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23)
{
  v26 = v25;

  if (__p)
  {
    operator delete(__p);
  }

  v28 = *(v23 + 55);
  if (v28)
  {
    *(v23 + 56) = v28;
    operator delete(v28);
  }

  v29 = *(v23 + 52);
  if (v29)
  {
    *(v23 + 53) = v29;
    operator delete(v29);
  }

  v30 = *(v23 + 49);
  if (v30)
  {
    *(v23 + 50) = v30;
    operator delete(v30);
  }

  v31 = *v24;
  if (*v24)
  {
    *(v23 + 47) = v31;
    operator delete(v31);
  }

  Phase::Controller::Submix::~Submix(v23);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::AmbientSubmix::GetChannelMask(uint64_t a1, Phase::Logger *a2)
{
  v3 = 0;
  for (i = 0; ; ++i)
  {
    v5 = *a2;
    v6 = **a2;
    if (v6 == 0x10000)
    {
      v8 = vcnt_s8(v5[1]);
      v8.i16[0] = vaddlv_u8(v8);
      v7 = v8.i32[0];
    }

    else
    {
      v7 = v6 ? **a2 : v5[2];
    }

    if (i >= v7)
    {
      break;
    }

    IsChannelLFE = Phase::ChannelLayout::IsChannelLFE(a2, i);
    v10 = 1 << i;
    if (IsChannelLFE)
    {
      v10 = 0;
    }

    v3 |= v10;
  }

  return v3;
}

uint64_t Phase::Controller::AmbientSubmix::SetOrientation(uint64_t a1, float32x4_t *a2, int a3)
{
  _Q0 = *a2;
  _Q1 = vmulq_f32(_Q0, _Q0);
  v5 = 1.0 - sqrtf((vaddv_f32(*_Q1.f32) + _Q1.f32[2]) + _Q1.f32[3]);
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  if (v5 > 0.1)
  {
    std::terminate();
  }

  _S2 = a2->i64[1];
  __asm { FMLA            S1, S2, V0.S[2] }

  _S2 = HIDWORD(*a2);
  __asm { FMLA            S1, S2, V0.S[3] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v24 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  result = Phase::IsNearlyEqual<float>(v24.f32, (a1 + 464), 0.00000011921);
  if (!result || a3)
  {
    *(a1 + 464) = v24;
    v15 = *(a1 + 368);
    if (*(a1 + 376) != v15)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        Phase::operator*<float>((a1 + 464), (v15 + v16), &v22);
        v18 = xmmword_23A554920;
        v19 = v22;
        v20 = v23;
        v21 = 1065353216;
        result = Phase::Geometry::SystemScheduler::UpdateTransform(*(a1 + 240) + 2784, *(*(a1 + 392) + 8 * v17++), &v18);
        v15 = *(a1 + 368);
        v16 += 12;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 376) - v15) >> 2) > v17);
    }
  }

  return result;
}

void Phase::Controller::AmbientSubmix::~AmbientSubmix(Phase::Controller::AmbientSubmix *this)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(this + 30))
  {
    v2 = *(this + 49);
    v3 = *(this + 50);
    while (v2 != v3)
    {
      if (*v2)
      {
        Phase::Geometry::SystemScheduler::RemoveChild(*(this + 30) + 2784, *(*(this + 30) + 1888), *v2);
        Phase::Geometry::SystemScheduler::ReleaseEntity(*(this + 30) + 2784, *v2);
      }

      ++v2;
    }
  }

  else
  {
    v4 = **(Phase::Logger::GetInstance(this) + 400);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "CvmAmbientSubmix.mm";
      v11 = 1024;
      v12 = 162;
      v13 = 2048;
      v14 = this;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Ambient Submix@%p: Error: Could not get a pointer to the Geometry System", &v9, 0x1Cu);
    }
  }

  Phase::Controller::AmbientSubmix::Destroy(this);
  v5 = *(this + 55);
  if (v5)
  {
    *(this + 56) = v5;
    operator delete(v5);
  }

  v6 = *(this + 52);
  if (v6)
  {
    *(this + 53) = v6;
    operator delete(v6);
  }

  v7 = *(this + 49);
  if (v7)
  {
    *(this + 50) = v7;
    operator delete(v7);
  }

  v8 = *(this + 46);
  if (v8)
  {
    *(this + 47) = v8;
    operator delete(v8);
  }

  Phase::Controller::Submix::~Submix(this);
}

{
  Phase::Controller::AmbientSubmix::~AmbientSubmix(this);

  JUMPOUT(0x23EE864A0);
}

void sub_23A33CCA4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *Phase::Controller::AmbientSubmix::Destroy(void *this)
{
  v1 = this;
  v2 = this[52];
  v3 = this[53];
  while (v2 != v3)
  {
    v4 = v2[1];
    if (*v2 != 0)
    {
      v5 = *(v1 + 232);
      v6[0] = *v2;
      v6[1] = v4;
      this = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v5 + 40), v6);
      if (this)
      {
        this = Phase::Controller::SubmixSystem::Destroy(*(v1 + 232), *v2, v2[1]);
      }
    }

    v2 += 2;
  }

  *(v1 + 56) |= 0x28uLL;
  return this;
}

uint64_t Phase::Controller::AmbientSubmix::IsPrepared(Phase::Controller::AmbientSubmix *this)
{
  v1 = *(this + 53);
  v2 = *(this + 52);
  if (v2 != v1)
  {
    while (1)
    {
      v4 = v2[1];
      if (*v2 == 0)
      {
        break;
      }

      v5 = *(this + 29);
      v8[0] = *v2;
      v8[1] = v4;
      result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v5 + 40), v8);
      if (!result)
      {
        return result;
      }

      Submix = Phase::Controller::SubmixSystem::GetSubmix(*(this + 29), *v2, v2[1]);
      if (((*(*Submix + 104))(Submix) & 1) == 0)
      {
        break;
      }

      v2 += 2;
      if (v2 == v1)
      {
        return 1;
      }
    }
  }

  return 0;
}

void Phase::Controller::AmbientSubmix::Update(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 416) == *(a1 + 424))
  {
    v4 = *(a1 + 392);
    v5 = *(a1 + 400);
    if (v4 == v5)
    {
      goto LABEL_12;
    }

    v6 = v4 + 8;
    do
    {
      v7 = *(v6 - 8);
      if (!v7)
      {
        goto LABEL_13;
      }

      v10 = *(a1 + 240) + 1672;
      UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA = _ZN5Phase7details13SharedSlotMapINS_8Geometry6EntityENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_13EntityFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(v10, v7, &v10);
      if (!UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA)
      {
        goto LABEL_13;
      }

      if (*UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA)
      {
        v9 = v6 == v5;
      }

      else
      {
        v9 = 1;
      }

      v6 += 8;
    }

    while (!v9);
    if (*UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA)
    {
LABEL_12:
      v14 = 0u;
      v13 = 0u;
      v12 = 0u;
      v11 = 0u;
      v15 = 1065353216;
      v16 = 0;
      v17 = 0u;
      v18 = 0;
      v19 = xmmword_23A554910;
      v20 = 0x3FF0000000000000;
      v10 = *(a1 + 360);
      v22 = 0u;
      v23 = 0;
      v21 = *(a1 + 16);
      operator new();
    }
  }

LABEL_13:
  Phase::Controller::Submix::Update(a1, a2);
}

void sub_23A33D1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Phase::Controller::CreateSpatialSubmixParameters::~CreateSpatialSubmixParameters(va);
  _Unwind_Resume(a1);
}

Phase::Logger *Phase::Controller::AmbientSubmix::InternalPrepare(Phase::Controller::AmbientSubmix *this)
{
  v15 = *MEMORY[0x277D85DE8];
  Phase::Controller::Submix::InternalPrepare(this);
  if (*(this + 72) != 2)
  {
    std::terminate();
  }

  result = Phase::Controller::DVM23::DvmAdapter::ConfigureAmbientSubmix(*(this + 28), *(this + 2), *(this + 3), this + 52);
  if (result)
  {
    v6 = result;
    v3 = **(Phase::Logger::GetInstance(result) + 400);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(this + 2);
      *buf = 136315906;
      v8 = "CvmAmbientSubmix.mm";
      v9 = 1024;
      v10 = 296;
      v11 = 2048;
      v12 = v4;
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (IdAlreadyExists) [configureSubmixResult != DVM23::DvmAdapter::ErrorCode::Okay is true]: Ambient SubmixId %llu: DVM Configure failed with error code: %d", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller15IdAlreadyExistsCI1St11logic_errorEPKc(exception, "Ambient SubmixId %llu: DVM Configure failed with error code: %d");
  }

  return result;
}

uint64_t Phase::Controller::AmbientSubmix::GetInputChannelLayout@<X0>(Phase::Controller::AmbientSubmix *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a2, *(this + 55), *(this + 56), *(this + 56) - *(this + 55));
}

std::logic_error *_ZN5Phase10Controller15IdAlreadyExistsCI1St11logic_errorEPKc(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = &unk_284D2FF18;
  return result;
}

void Phase::Controller::AmbientSubmix::SetPlayState(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 416);
  v3 = *(a1 + 424);
  if (v2 != v3)
  {
    do
    {
      v6 = *v2;
      v7 = v2[1];
      v2 += 2;
      v8 = *Phase::Controller::SubmixSystem::GetSubmix(*(a1 + 232), v6, v7);
      (*(v8 + 280))();
    }

    while (v2 != v3);
    if (*(a1 + 424) != *(a1 + 416))
    {

      Phase::Controller::Submix::SetPlayState(a1, a2);
    }
  }
}

uint64_t Phase::Controller::AmbientSubmix::Fade(uint64_t this, float a2, float a3)
{
  v3 = *(this + 416);
  v4 = *(this + 424);
  if (v3 != v4)
  {
    v7 = this;
    do
    {
      v8 = *v3;
      v9 = v3[1];
      v3 += 2;
      Submix = Phase::Controller::SubmixSystem::GetSubmix(*(v7 + 232), v8, v9);
      this = (*(*Submix + 224))(Submix, a2, a3);
    }

    while (v3 != v4);
  }

  return this;
}

uint64_t Phase::Controller::AmbientSubmix::SetSessionLevel(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 416);
  v4 = *(result + 424);
  if (v3 != v4)
  {
    v7 = result;
    do
    {
      v8 = *v3;
      v9 = v3[1];
      v3 += 2;
      Submix = Phase::Controller::SubmixSystem::GetSubmix(*(v7 + 232), v8, v9);
      result = (*(*Submix + 232))(Submix, a2, a3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t Phase::Controller::AmbientSubmix::SetParameter(uint64_t this, uint64_t a2, double a3)
{
  v3 = *(this + 416);
  v4 = *(this + 424);
  if (v3 != v4)
  {
    v7 = this;
    do
    {
      v8 = *v3;
      v9 = v3[1];
      v3 += 2;
      Submix = Phase::Controller::SubmixSystem::GetSubmix(*(v7 + 232), v8, v9);
      this = (*(*Submix + 144))(Submix, a2, a3);
    }

    while (v3 != v4);
  }

  return this;
}

void Phase::Controller::AmbientSubmix::SetParameterData(Phase::Controller::AmbientSubmix *this, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(this);
  if (a2 == 0xB11F8D5B5762E28DLL)
  {
    if (*(Instance + 1640) == 1)
    {
      if (a4 != 16)
      {
        std::terminate();
      }

      *v10 = *a3;
      Phase::Controller::AmbientSubmix::SetOrientation(this, v10, 0);
    }
  }

  else
  {
    v9 = **(Instance + 400);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 136315650;
      *&v10[4] = "CvmAmbientSubmix.mm";
      *&v10[12] = 1024;
      *&v10[14] = 358;
      v11 = 2048;
      v12 = a2;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d AmbientSubmix:SetParameterData: was called with an invalid inParameterId %lld!", v10, 0x1Cu);
    }
  }
}

double Phase::Controller::AmbientSubmix::GetGain(Phase::Logger ***this)
{
  Phase::Geometry::System::GetCurrentState(this[30], &v8);
  v2 = 0.0;
  if (v8)
  {
    v3 = this[45];
    if (*(v8 + 184) > v3)
    {
      v4 = *(v8 + 168) + 24 * v3;
      if (*(v4 + 20) == HIDWORD(v3))
      {
        v5 = *v4;
        if (*v4)
        {
          if (*v5 == 2)
          {
            v2 = *(v5 + 176);
          }
        }
      }
    }
  }

  Gain = Phase::Controller::Submix::GetGain(this);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v2 * Gain;
}

void sub_23A33D7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::AmbientSubmix::GetNumChannels(Phase::Controller::AmbientSubmix *this)
{
  v1 = *(this + 55);
  if (*v1 == 0x10000)
  {
    v3 = vcnt_s8(v1[1]);
    v3.i16[0] = vaddlv_u8(v3);
    return v3.u32[0];
  }

  else if (*v1)
  {
    return *v1;
  }

  else
  {
    return v1[2];
  }
}

BOOL Phase::IsNearlyEqual<float>(float *a1, float *a2, float a3)
{
  v3 = *a1 - *a2;
  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  if (v3 > a3)
  {
    return 0;
  }

  v4 = a1[1] - a2[1];
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  if (v4 > a3)
  {
    return 0;
  }

  v5 = a1[2] - a2[2];
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  if (v5 > a3)
  {
    return 0;
  }

  v7 = a1[3] - a2[3];
  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  return v7 <= a3;
}

void Phase::Controller::Submix::SetSpatialCategoryIsActive(Phase::Logger *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 2);
    v5 = 136315650;
    v6 = "CvmSubmix.h";
    v7 = 1024;
    v8 = 184;
    v9 = 2048;
    v10 = v3;
    _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): SetSpatialCategoryIsActive called on submixId %llu which doesn't implement it.", &v5, 0x1Cu);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "SetSpatialCategoryIsActive called on submixId %llu which doesn't implement it.");
}

void Phase::Controller::Submix::SetSpatialCategorySendLevel(Phase::Logger *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 2);
    v5 = 136315650;
    v6 = "CvmSubmix.h";
    v7 = 1024;
    v8 = 190;
    v9 = 2048;
    v10 = v3;
    _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): SetSpatialCategorySendLevel called on submixId %llu which doesn't implement it.", &v5, 0x1Cu);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "SetSpatialCategorySendLevel called on submixId %llu which doesn't implement it.");
}

void Phase::Controller::Submix::SetSpatialCategoryParameter(Phase::Logger *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 2);
    v5 = 136315650;
    v6 = "CvmSubmix.h";
    v7 = 1024;
    v8 = 197;
    v9 = 2048;
    v10 = v3;
    _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): SetSpatialCategoryParameter called on submixId %llu which doesn't implement it.", &v5, 0x1Cu);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "SetSpatialCategoryParameter called on submixId %llu which doesn't implement it.");
}

void Phase::Controller::Submix::SetSpatialCategoryProperty(Phase::Logger *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 2);
    v5 = 136315650;
    v6 = "CvmSubmix.h";
    v7 = 1024;
    v8 = 206;
    v9 = 2048;
    v10 = v3;
    _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): SetSpatialCategoryParameter called on submixId %llu which doesn't implement it.", &v5, 0x1Cu);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "SetSpatialCategoryParameter called on submixId %llu which doesn't implement it.");
}

void *std::vector<Phase::Vector<float,3ul>>::__swap_out_circular_buffer(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v6[2] = v5[2];
      v5 += 3;
      v6 += 3;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Vector<float,3ul>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void Phase::Controller::IdAlreadyExists::~IdAlreadyExists(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t _ZN5Phase7details13SharedSlotMapINS_8Geometry6EntityENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_13EntityFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Entity,Phase::Handle64>::GetUniqueSlot(a1, a2);
  v5 = UniqueSlot;
  if (UniqueSlot)
  {
    v6 = *(UniqueSlot + 8);
    if (v6)
    {
      if (*(v6 + 8) >= 1)
      {
        if (!*(*a3 + 200))
        {
          std::terminate();
        }

        Phase::Geometry::EntityFactory::Create(*UniqueSlot, &v10);
        v7 = v10;
        v10 = 0uLL;
        v8 = *(v5 + 8);
        *v5 = v7;
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          if (*(&v10 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
          }
        }
      }
    }
  }

  return v5;
}

uint64_t Phase::details::SharedSlotMap<Phase::Geometry::Entity,Phase::Handle64>::GetUniqueSlot(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    return 0;
  }

  v3 = a2;
  result = *a1 + 24 * a2;
  if (*(result + 20) != HIDWORD(a2))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    if (*(v5 + 8) >= 1)
    {
      Phase::details::SharedSlotMap<Phase::Geometry::Entity,Phase::Handle64>::Realloc(a1);
      return *a1 + 24 * v3;
    }
  }

  return result;
}

void Phase::details::SharedSlotMap<Phase::Geometry::Entity,Phase::Handle64>::Realloc(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    Phase::details::SharedSlotMap<Phase::Geometry::Entity,Phase::Handle64>::AllocSlots(v1, &v13);
    if (*(a1 + 4))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *a1;
        v6 = (*a1 + v3);
        v7 = v13;
        v9 = *v6;
        v8 = v6[1];
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        v10 = (v7 + v3);
        v11 = *(v7 + v3 + 8);
        *v10 = v9;
        v10[1] = v8;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v10[2] = *(v5 + v3 + 16);
        ++v4;
        v3 += 24;
      }

      while (v4 < *(a1 + 4));
    }

    std::__shared_mutex_base::lock((a1 + 4));
    v12 = *a1;
    *a1 = v13;
    v13 = v12;
    std::__shared_mutex_base::unlock((a1 + 4));
    if (*(&v13 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
    }
  }
}

void sub_23A33DF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void Phase::details::SharedSlotMap<Phase::Geometry::Entity,Phase::Handle64>::AllocSlots(unint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    is_mul_ok(a1, 0x18uLL);
    operator new[]();
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_23A33E0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::Slot>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::Slot *,std::shared_ptr<Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::Slot[]>::__shared_ptr_default_delete<Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::Slot[],Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::Slot>,std::allocator<Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::Slot>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::default_delete<Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::Slot []>::operator()[abi:ne200100]<Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::Slot>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2 - 16;
    v3 = *(a2 - 8);
    if (v3)
    {
      v4 = 24 * v3;
      do
      {
        v5 = *(v2 + v4);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }

        v4 -= 24;
      }

      while (v4);
    }

    JUMPOUT(0x23EE86470);
  }
}

void std::default_delete<Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::Slot>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x23EE864A0);
  }
}

void Phase::Controller::ChannelSubmix::ChannelSubmix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Phase::Logger *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = *MEMORY[0x277D85DE8];
  v11 = Phase::Controller::Submix::Submix(a1, *a2, *(a2 + 8), *(a2 + 40), *(a2 + 48), *(a2 + 56), a3, a4, a5, a6, a7, a8);
  *v11 = &unk_284D2FF40;
  *(v11 + 46) = 0;
  *(v11 + 47) = 0;
  *(v11 + 45) = 0;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(v11 + 360, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = a9;
  IsLayoutSupported = Phase::ChannelLayout::IsLayoutSupported((a1 + 360));
  if (IsLayoutSupported)
  {
    v16 = 0;
    v17 = 0;
    __p = 0;
    std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&__p, *(a1 + 360), *(a1 + 368), *(a1 + 368) - *(a1 + 360));
    v19 = 1;
    v18 = &unk_284D300B8;
    memset(v20, 0, sizeof(v20));
    std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(v20, __p, v16, v16 - __p);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    Phase::Controller::RendererSystem::CreateRenderer(a9, &v18, buf);
  }

  v13 = **(Phase::Logger::GetInstance(IsLayoutSupported) + 400);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "CvmChannelSubmix.mm";
    *&buf[12] = 1024;
    *&buf[14] = 44;
    _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: ChannelLayout::IsLayoutSupported(mInputChannelLayout) is false.", buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "PRECONDITION: ChannelLayout::IsLayoutSupported(mInputChannelLayout) is false.");
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
}

void sub_23A33E5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  v25 = v24;

  if (__p)
  {
    operator delete(__p);
  }

  v27 = *(v23 + 49);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(v23 + 45);
  if (v28)
  {
    *(v23 + 46) = v28;
    operator delete(v28);
  }

  Phase::Controller::Submix::~Submix(v23);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::ChannelSubmix::InternalPrepare(Phase::Controller::ChannelSubmix *this)
{
  Phase::Controller::Submix::InternalPrepare(this);
  v2 = *(**(this + 48) + 32);
  v3.n128_u64[0] = 1.0;

  return v2(v3);
}

void Phase::Controller::MatrixRendererConfig::~MatrixRendererConfig(Phase::Controller::MatrixRendererConfig *this)
{
  *this = &unk_284D300B8;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_284D300B8;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::ChannelSubmix::~ChannelSubmix(Phase::Controller::ChannelSubmix *this)
{
  v2 = *(this + 49);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 45);
  if (v3)
  {
    *(this + 46) = v3;
    operator delete(v3);
  }

  Phase::Controller::Submix::~Submix(this);
}

{
  Phase::Controller::ChannelSubmix::~ChannelSubmix(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Controller::ChannelSubmix::IsStopped(Phase::Controller::ChannelSubmix *this)
{
  if (*(this + 72) || *(this + 288) != 1)
  {
    return 0;
  }

  else
  {
    return (*(**(this + 48) + 96))();
  }
}

_BYTE *Phase::Controller::ChannelSubmix::InternalSleep(_BYTE *this)
{
  if (this[72] != 7)
  {
    v1 = this;
    Phase::Controller::Submix::InternalSleep(this);
    (*(**(v1 + 48) + 40))(*(v1 + 48), *(v1 + 2), *(v1 + 3));
    v4 = 0;
    v5 = 0;
    __p = 0;
    std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&__p, *(v1 + 45), *(v1 + 46), *(v1 + 46) - *(v1 + 45));
    v7 = 1;
    v6 = &unk_284D300B8;
    memset(v8, 0, sizeof(v8));
    std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(v8, __p, v4, v4 - __p);
    if (__p)
    {
      v4 = __p;
      operator delete(__p);
    }

    Phase::Controller::RendererSystem::CreateRenderer(*(v1 + 51), &v6, &v2);
  }

  return this;
}

void sub_23A33E918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::ChannelSubmix::InternalStop(Phase::Controller::ChannelSubmix *this)
{
  Phase::Controller::Submix::SetPlayState(this, 0);
  (*(**(this + 48) + 112))(*(this + 48), 0, 0);

  return Phase::Controller::Submix::InternalStop(this);
}

uint64_t Phase::Controller::ChannelSubmix::SetPlayState(uint64_t a1, unsigned int a2)
{
  Phase::Controller::Submix::SetPlayState(a1, a2);
  v3 = *(**(a1 + 384) + 112);

  return v3();
}

uint64_t Phase::Controller::ChannelSubmix::GetNumChannels(Phase::Controller::ChannelSubmix *this)
{
  v1 = *(this + 45);
  if (*v1 == 0x10000)
  {
    v3 = vcnt_s8(v1[1]);
    v3.i16[0] = vaddlv_u8(v3);
    return v3.u32[0];
  }

  else if (*v1)
  {
    return *v1;
  }

  else
  {
    return v1[2];
  }
}

uint64_t Phase::Controller::ChannelSubmix::GetInputChannelLayout@<X0>(Phase::Controller::ChannelSubmix *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a2, *(this + 45), *(this + 46), *(this + 46) - *(this + 45));
}

void Phase::Controller::BufferManager::BufferManager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *MEMORY[0x277D85DE8];
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = a3;
  operator new();
}

void sub_23A33ED98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>::reset[abi:ne200100](va, 0);
  std::__function::__value_func<void ()(Phase::DspLayer::VoiceBuffer *)>::~__value_func[abi:ne200100](v8 + 8);
  std::__function::__value_func<void ()(Phase::DspLayer::VoiceBuffer *)>::~__value_func[abi:ne200100](va1);
  std::__hash_table<std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>>>::~__hash_table(v7 + 8);
  _Unwind_Resume(a1);
}

void Phase::Controller::BufferManager::DeleteVoiceBuffer(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    (*(**a3 + 8))(*a3);
  }

  JUMPOUT(0x23EE864A0);
}

uint64_t *std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = a2 + 1;
  std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>::reset[abi:ne200100](a1, v4);
  v7 = (a1 + 4);
  v6 = a1[4];
  a1[4] = 0;
  if (v6 == a1 + 1)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v10 = a2[4];
  v9 = a2 + 4;
  v8 = v10;
  if (v10)
  {
    if (v8 == v5)
    {
      *v7 = a1 + 1;
      (*(**v9 + 24))(*v9, a1 + 1);
      return a1;
    }

    *v7 = v8;
  }

  else
  {
    v9 = a1 + 4;
  }

  *v9 = 0;
  return a1;
}

void Phase::Controller::BufferManager::SetBuffer(Phase::Controller::BufferManager *this, Phase::DspLayer::IConvolver *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(this + 3);
  operator new();
}

void sub_23A33F278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>::reset[abi:ne200100](va, 0);
  std::__function::__value_func<void ()(Phase::DspLayer::VoiceBuffer *)>::~__value_func[abi:ne200100](v3 + 8);
  std::__function::__value_func<void ()(Phase::DspLayer::VoiceBuffer *)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void *Phase::Controller::BufferManager::SetNopFilter(void *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = this[9];
  if (!v1)
  {
    v4 = this;
    v5 = **(Phase::Logger::GetInstance(this) + 512);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v4[6];
      v8 = 136315650;
      v9 = "CvmConvolutionBufferManager.mm";
      v10 = 1024;
      v11 = 115;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [nullptr == mpNopBuffer is true]: Uninitialized nop filter in ConvolutionRenderer %llu", &v8, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Uninitialized nop filter in ConvolutionRenderer %llu");
  }

  v2 = atomic_exchange(this, v1);
  v3 = this[8];
  if (v3)
  {
    atomic_exchange(v3, this[9]);
  }

  if (v2)
  {
    if (this[9] != v2)
    {
      atomic_store(0, (v2 + 12));
    }
  }

  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>::reset[abi:ne200100](v2 + 3, 0);
      std::__function::__value_func<void ()(Phase::DspLayer::VoiceBuffer *)>::~__value_func[abi:ne200100]((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

__n128 std::__function::__func<std::__bind<void (*)(Phase::UniqueObjectId,Phase::DspLayer::VoiceBuffer *),Phase::UniqueObjectId&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (*)(Phase::UniqueObjectId,Phase::DspLayer::VoiceBuffer *),Phase::UniqueObjectId&,std::placeholders::__ph<1> const&>>,void ()(Phase::DspLayer::VoiceBuffer *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D300F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(Phase::DspLayer::VoiceBuffer *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(Phase::DspLayer::VoiceBuffer *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t *std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(Phase::DspLayer::VoiceBuffer *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t std::function<void ()(Phase::DspLayer::VoiceBuffer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *std::__hash_table<std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,void *>>>::operator()[abi:ne200100](char a1, uint64_t *__p)
{
  if (a1)
  {
    std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>::reset[abi:ne200100](__p + 3, 0);
    std::__function::__value_func<void ()(Phase::DspLayer::VoiceBuffer *)>::~__value_func[abi:ne200100]((__p + 4));
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,void *>>>::operator()[abi:ne200100](1, a2);
  return v4;
}

void sub_23A340138(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A33FF80);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::Renderer::Renderer(Phase::Logger *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  Phase::Logger::GetInstance(a1);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::Commandable(a1);
}

void Phase::Controller::ConvolutionRenderer::Setup(uint64_t a1, atomic_ullong *a2, int a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 220);
  Phase::Controller::Spatializer::AcquireFilters(*(*(a1 + 168) + 96), v55);
  v8 = v57;
  if (!v57)
  {
    v36 = **(Phase::Logger::GetInstance(v7) + 512);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 144))(&v49, a1);
      v37 = SHIBYTE(v51) >= 0 ? &v49 : v49;
      *buf = 136315650;
      *&buf[4] = "CvmConvolutionRenderer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 88;
      *&buf[18] = 2080;
      *&buf[20] = v37;
      _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [!encoder is true]: %s: Couldn't find the encoder!", buf, 0x1Cu);
      if (SHIBYTE(v51) < 0)
      {
        operator delete(v49);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "%s: Couldn't find the encoder!");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  v9 = **(Phase::Logger::GetInstance(v7) + 512);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = &v49;
    (*(*a1 + 144))(&v49, a1);
    if (SHIBYTE(v51) < 0)
    {
      v10 = v49;
    }

    if ((v6 + 2) > 0x25)
    {
      v11 = "Unknown KernelType";
    }

    else
    {
      v11 = off_278B4ED28[(v6 + 2)];
    }

    (*(*v8 + 40))(__p, v8);
    if (v54 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136316162;
    *&buf[4] = "CvmConvolutionRenderer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 91;
    *&buf[18] = 2080;
    *&buf[20] = v10;
    *&buf[28] = 2080;
    *&buf[30] = v11;
    *&buf[38] = 2080;
    *&buf[40] = v12;
    _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Setting up using %s voice pool. Encoder Details: %s\n", buf, 0x30u);
    if (v54 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v51) < 0)
    {
      operator delete(v49);
    }
  }

  v13 = *(a1 + 176);
  *buf = v6 + 2;
  v14 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(v13, buf);
  if (!v14 || (v15 = *(v14 + 3)) == 0)
  {
    v33 = **(Phase::Logger::GetInstance(v14) + 512);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 144))(&v49, a1);
      v34 = SHIBYTE(v51) >= 0 ? &v49 : v49;
      *buf = 136315650;
      *&buf[4] = "CvmConvolutionRenderer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 96;
      *&buf[18] = 2080;
      *&buf[20] = v34;
      _os_log_impl(&dword_23A302000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [!pConvolverVoicePoolEntry is true]: %s: Couldn't find a Voice Pool!", buf, 0x1Cu);
      if (SHIBYTE(v51) < 0)
      {
        operator delete(v49);
      }
    }

    v35 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v35, "%s: Couldn't find a Voice Pool!");
    v35->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  Phase::Controller::CvmVoiceData::CvmVoiceData(buf, v15, atomic_fetch_add(a2, 1uLL));
  *(a1 + 64) = *buf;
  std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear((a1 + 80));
  v16 = *&buf[16];
  *&buf[16] = 0;
  v17 = *(a1 + 80);
  *(a1 + 80) = v16;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *&buf[24];
  v19 = *&buf[32];
  *(a1 + 96) = *&buf[32];
  *(a1 + 88) = v18;
  *&buf[24] = 0;
  v20 = *&buf[40];
  *(a1 + 104) = *&buf[40];
  *(a1 + 112) = v61;
  if (v20)
  {
    v21 = *(v19 + 8);
    if ((v18 & (v18 - 1)) != 0)
    {
      if (v21 >= v18)
      {
        v21 %= v18;
      }
    }

    else
    {
      v21 &= v18 - 1;
    }

    *(*(a1 + 80) + 8 * v21) = a1 + 96;
    *&buf[32] = 0;
    *&buf[40] = 0;
  }

  v22 = (a1 + 120);
  if (*(a1 + 120))
  {
    std::vector<Phase::VoiceBufferParameter>::clear[abi:ne200100]((a1 + 120));
    operator delete(*v22);
    *v22 = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  *(a1 + 120) = v62;
  *(a1 + 136) = v63;
  v63 = 0;
  v62 = 0uLL;
  *(a1 + 144) = v64;
  v49 = &v62;
  std::vector<Phase::VoiceBufferParameter>::__destroy_vector::operator()[abi:ne200100](&v49);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&buf[16]);
  v51 = 0;
  v52 = 0;
  v49 = (v6 + 2);
  v50 = 0;
  Phase::Controller::CvmVoiceData::CreateDspNodeVoice((a1 + 64), buf);
  v23 = v51;
  if (v51 >= v52)
  {
    v51 = std::vector<Phase::Controller::DspNodeVoice>::__emplace_back_slow_path<Phase::Controller::DspNodeVoice>(&v50, buf);
    if (*&buf[32])
    {
      *&buf[40] = *&buf[32];
      operator delete(*&buf[32]);
    }
  }

  else
  {
    *v51 = *buf;
    v23[1] = 0;
    v23[3] = 0;
    v23[4] = 0;
    v23[2] = 0;
    *(v23 + 1) = *&buf[8];
    v23[3] = *&buf[24];
    *&buf[8] = 0;
    *&buf[16] = 0;
    v23[5] = 0;
    v23[6] = 0;
    *(v23 + 2) = *&buf[32];
    v23[6] = v61;
    memset(&buf[24], 0, 24);
    v61 = 0;
    v51 = v23 + 7;
  }

  __p[0] = &buf[8];
  std::vector<Phase::VoiceBufferParameter>::__destroy_vector::operator()[abi:ne200100](__p);
  v24 = Phase::Controller::DVM23::DvmAdapter::AddRenderer(*(a1 + 160), *(a1 + 40), *(a1 + 48));
  if (v24)
  {
    v39 = **(Phase::Logger::GetInstance(v24) + 512);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 144))(__p, a1);
      v40 = v54 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "CvmConvolutionRenderer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 110;
      *&buf[18] = 2080;
      *&buf[20] = v40;
      _os_log_impl(&dword_23A302000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [result != DVM23::DvmAdapter::ErrorCode::Okay is true]: %s: Couldn't not add convolution renderer in the DVM!", buf, 0x1Cu);
      if (v54 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v41 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v41, "%s: Couldn't not add convolution renderer in the DVM!");
LABEL_75:
    v41->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  if (a3)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  *(a1 + 184) = v25;
  v26 = *(a1 + 160);
  v27 = *(a1 + 40);
  v28 = *(a1 + 48);
  memset(buf, 0, 24);
  v29 = Phase::Controller::DVM23::DvmAdapter::ConfigureRenderer(v26, v27, v28, v25, &v49, buf);
  __p[0] = buf;
  std::vector<Phase::Controller::DspNode>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v29)
  {
    v42 = **(Phase::Logger::GetInstance(v30) + 512);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 144))(__p, a1);
      v43 = v54 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "CvmConvolutionRenderer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 117;
      *&buf[18] = 2080;
      *&buf[20] = v43;
      _os_log_impl(&dword_23A302000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [result != DVM23::DvmAdapter::ErrorCode::Okay is true]: %s: Failed to configure DVM renderer!", buf, 0x1Cu);
      if (v54 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v41 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v41, "%s: Failed to configure DVM renderer!");
    goto LABEL_75;
  }

  v31 = Phase::Controller::DVM23::DvmAdapter::SetVoiceData(*(a1 + 160), *(a1 + 72), 0, *(a1 + 152), 1);
  if (v31)
  {
    v44 = **(Phase::Logger::GetInstance(v31) + 512);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 144))(__p, a1);
      v45 = v54 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "CvmConvolutionRenderer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 125;
      *&buf[18] = 2080;
      *&buf[20] = v45;
      _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [result != DVM23::DvmAdapter::ErrorCode::Okay is true]: %s: Failed to set buffer data in the DVM!", buf, 0x1Cu);
      if (v54 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v46 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v46, "%s: Failed to set buffer data in the DVM!");
LABEL_90:
    v46->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  if (*(a1 + 184) == 1)
  {
    Phase::Controller::BufferManager::SetNopFilter(*(a1 + 152));
    atomic_store(1u, (a1 + 190));
  }

  v32 = Phase::Controller::DVM23::DvmAdapter::ConnectToMaster(*(a1 + 160), *(a1 + 40), *(a1 + 48));
  if (v32)
  {
    v47 = **(Phase::Logger::GetInstance(v32) + 512);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 144))(__p, a1);
      v48 = v54 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "CvmConvolutionRenderer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 139;
      *&buf[18] = 2080;
      *&buf[20] = v48;
      _os_log_impl(&dword_23A302000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [result != DVM23::DvmAdapter::ErrorCode::Okay is true]: %s: Couldn't not connect convolution renderer to master!", buf, 0x1Cu);
      if (v54 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v46 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v46, "%s: Couldn't not connect convolution renderer to master!");
    goto LABEL_90;
  }

  *(a1 + 192) = 1;
  *buf = &v50;
  std::vector<Phase::Controller::DspNodeVoice>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }
}

void sub_23A340EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  __cxa_free_exception(v26);
  std::vector<Phase::Controller::DspNodeVoice>::__destroy_vector::operator()[abi:ne200100](&a26);
  Phase::Controller::SpatializerFilterHandle::~SpatializerFilterHandle(&a20);
  _Unwind_Resume(a1);
}

void Phase::Controller::ConvolutionRendererConfig::~ConvolutionRendererConfig(Phase::Controller::ConvolutionRendererConfig *this)
{
  *this = &unk_284D30200;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_284D30200;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::CvmVoiceData::~CvmVoiceData(Phase::Controller::CvmVoiceData *this)
{
  v2 = (this + 56);
  std::vector<Phase::VoiceBufferParameter>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 16);
}

void Phase::Controller::ConvolutionRenderer::~ConvolutionRenderer(Phase::Controller::ConvolutionRenderer *this)
{
  v13 = *MEMORY[0x277D85DE8];
  *this = &unk_284D30140;
  if (*(this + 46))
  {
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(this);
  }

  Phase::Controller::DVM23::DvmAdapter::RemoveRenderer(*(this + 20), *(this + 5), *(this + 6));
  std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear(this + 10);
  std::vector<Phase::VoiceBufferParameter>::clear[abi:ne200100](this + 15);
  v2 = *(this + 32);
  if (v2)
  {
    free(v2);
    *(this + 32) = 0;
    *(this + 33) = 0;
  }

  else if (*(this + 33))
  {
    std::terminate();
  }

  v3 = **(Phase::Logger::GetInstance(v2) + 512);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 144))(__p, this);
    v4 = v7 >= 0 ? __p : __p[0];
    *buf = 136315650;
    *&buf[4] = "CvmConvolutionRenderer.mm";
    v9 = 1024;
    v10 = 171;
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: destroyed.", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 25) = &unk_284D30200;
  v5 = *(this + 28);
  if (v5)
  {
    *(this + 29) = v5;
    operator delete(v5);
  }

  std::unique_ptr<Phase::Controller::BufferManager>::reset[abi:ne200100](this + 19, 0);
  *buf = this + 120;
  std::vector<Phase::VoiceBufferParameter>::__destroy_vector::operator()[abi:ne200100](buf);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 80);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);
}

{
  Phase::Controller::ConvolutionRenderer::~ConvolutionRenderer(this);

  JUMPOUT(0x23EE864A0);
}

void sub_23A341254(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void Phase::Controller::ConvolutionRenderer::AddSubmix(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!(a2 | a3))
  {
    v16 = **(Phase::Logger::GetInstance(a1) + 512);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 144))(__p, a1);
      v17 = v20 >= 0 ? __p : __p[0];
      *buf = 136315906;
      v22 = "CvmConvolutionRenderer.mm";
      v23 = 1024;
      v24 = 179;
      v25 = 2080;
      v26 = v17;
      v27 = 2048;
      v28 = 0.0;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [inSubmixId == kInvalidSubmixId is true]: %s: Invalid SubmixId %llu!", buf, 0x26u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "%s: Invalid SubmixId %llu!");
  }

  if (*(a1 + 184))
  {
    v5 = a4;
    if (a4 < 0.0 || a4 > 1.0)
    {
      v9 = **(Phase::Logger::GetInstance(a1) + 512);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 40);
        *buf = 136316418;
        v22 = "CvmConvolutionRenderer.mm";
        v23 = 1024;
        v24 = 188;
        v25 = 2048;
        v26 = v10;
        v27 = 2048;
        v28 = v5;
        v29 = 2048;
        v30 = 0;
        v31 = 2048;
        v32 = 0x3FF0000000000000;
        _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d (renderer: %llu) send level %f is out of range [%f, %f]. Clamping...", buf, 0x3Au);
      }

      v5 = fmin(fmax(v5, 0.0), 1.0);
    }

    v11 = Phase::Controller::DVM23::DvmAdapter::ConnectSubmixToRenderer(*(a1 + 160), a2, a3, *(a1 + 40), *(a1 + 48), v5);
    if (v11)
    {
      v12 = **(Phase::Logger::GetInstance(v11) + 512);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 248);
        if (v13 > 3)
        {
          v14 = "None";
        }

        else
        {
          v14 = off_278B4EE58[v13];
        }

        v15 = *(a1 + 40);
        *buf = 136316162;
        v22 = "CvmConvolutionRenderer.mm";
        v23 = 1024;
        v24 = 195;
        v25 = 2080;
        v26 = v14;
        v27 = 2048;
        v28 = *&a2;
        v29 = 2048;
        v30 = v15;
        _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d %s Connecting submixId %llu to rendererId %llu failed! \n", buf, 0x30u);
      }
    }
  }
}

std::logic_error *_ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = &unk_284D30220;
  return result;
}

uint64_t Phase::Controller::ConvolutionRenderer::RemoveConnectionFromSubmix(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!(a2 | a3))
  {
    v9 = **(Phase::Logger::GetInstance(a1) + 512);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 144))(__p, a1);
      v10 = v13 >= 0 ? __p : __p[0];
      *buf = 136315906;
      v15 = "CvmConvolutionRenderer.mm";
      v16 = 1024;
      v17 = 203;
      v18 = 2080;
      v19 = v10;
      v20 = 2048;
      v21 = 0;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [inSubmixId == kInvalidSubmixId is true]: %s: Invalid SubmixId %llu!", buf, 0x26u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "%s: Invalid SubmixId %llu!");
  }

  v4 = *(a1 + 20);
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);

  return Phase::Controller::DVM23::DvmAdapter::DisconnectSubmixFromRenderer(v4, a2, a3, v5, v6);
}

Phase::Controller::DVM23::DvmAdapter **Phase::Controller::ConvolutionRenderer::SetSubmixSendLevel(Phase::Controller::DVM23::DvmAdapter **result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = result;
  v27 = *MEMORY[0x277D85DE8];
  v14[0] = a2;
  v14[1] = a3;
  if (!(a2 | a3))
  {
    v9 = **(Phase::Logger::GetInstance(result) + 512);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      (*(*v4 + 18))(__p, v4);
      v10 = v13 >= 0 ? __p : __p[0];
      *buf = 136315906;
      v16 = "CvmConvolutionRenderer.mm";
      v17 = 1024;
      v18 = 212;
      v19 = 2080;
      v20 = v10;
      v21 = 2048;
      v22 = 0.0;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [inSubmixId == kInvalidSubmixId is true]: %s: Invalid SubmixId %llu!", buf, 0x26u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "%s: Invalid SubmixId %llu!");
  }

  if (*(result + 46))
  {
    v5 = a4;
    if (a4 < 0.0 || a4 > 1.0)
    {
      v7 = **(Phase::Logger::GetInstance(result) + 512);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = v4[5];
        *buf = 136316418;
        v16 = "CvmConvolutionRenderer.mm";
        v17 = 1024;
        v18 = 221;
        v19 = 2048;
        v20 = v8;
        v21 = 2048;
        v22 = v5;
        v23 = 2048;
        v24 = 0;
        v25 = 2048;
        v26 = 0x3FF0000000000000;
        _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d (renderer: %llu) send level %f is out of range [%f, %f]. Clamping...", buf, 0x3Au);
      }

      v5 = fmin(fmax(v5, 0.0), 1.0);
    }

    return Phase::Controller::DVM23::DvmAdapter::SetSubmixSendLevel(v4[20], v14, (v4 + 5), v5, 0.0025);
  }

  return result;
}

void Phase::Controller::ConvolutionRenderer::SetParameters(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  if (*a2 != 2)
  {
    v44 = **(Phase::Logger::GetInstance(a1) + 512);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 144))(buf, a1);
      v45 = buf[23] >= 0 ? buf : *buf;
      *v51 = 136315650;
      *v52 = "CvmConvolutionRenderer.mm";
      *&v52[8] = 1024;
      *&v52[10] = 234;
      v53 = 2080;
      v54 = v45;
      _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [pInRendererParameters->mRendererType != RendererType::NUPConvolution is true]: %s: Render parameters mismatch.", v51, 0x1Cu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "%s: Render parameters mismatch.");
  }

  v3 = *(a1 + 168);
  v4 = *v3;
  Phase::Controller::IR::Metadata::Metadata(v51, *(*(a2 + 8) + 120), *(v3 + 96), v4);
  WorkBufferSizeInBytes = Phase::Controller::ConvolutionRenderer::GetWorkBufferSizeInBytes(a1, v51);
  v6 = WorkBufferSizeInBytes;
  if (!WorkBufferSizeInBytes)
  {
    v8 = **(Phase::Logger::GetInstance(0) + 512);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 144))(v56, a1);
      v9 = v57 >= 0 ? v56 : v56[0];
      v10 = *(a1 + 40);
      *buf = 136315906;
      *&buf[4] = "CvmConvolutionRenderer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 244;
      *&buf[18] = 2080;
      *&buf[20] = v9;
      *&buf[28] = 2048;
      *&buf[30] = v10;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Invalid work buffer size in Build IR node for instance %llu", buf, 0x26u);
      if (v57 < 0)
      {
        operator delete(v56[0]);
      }
    }

    goto LABEL_12;
  }

  v7 = *(a1 + 256);
  if (WorkBufferSizeInBytes > *(a1 + 264))
  {
    if (v7)
    {
      WorkBufferSizeInBytes = malloc_type_realloc(*(a1 + 256), WorkBufferSizeInBytes, 0x3B08014EuLL);
    }

    else
    {
      WorkBufferSizeInBytes = malloc_type_malloc(WorkBufferSizeInBytes, 0x9D49F339uLL);
    }

    v7 = WorkBufferSizeInBytes;
    *(a1 + 256) = WorkBufferSizeInBytes;
    *(a1 + 264) = v6;
  }

  if (!v7)
  {
    std::terminate();
  }

  Instance = Phase::Logger::GetInstance(WorkBufferSizeInBytes);
  spid = os_signpost_id_generate(**(Instance + 512));
  v12 = Phase::Logger::GetInstance(spid);
  if (*(v12 + 520) == 1)
  {
    v13 = **(Phase::Logger::GetInstance(v12) + 512);
    v14 = v13;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      (*(*a1 + 144))(v56, a1);
      if (*&v52[4] && **&v52[4] == 3)
      {
        v15 = *(*&v52[4] + 104);
        if (v15)
        {
          v15 = *v15;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = v56[0];
      if (v57 >= 0)
      {
        v16 = v56;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      *&buf[12] = 2048;
      *&buf[14] = *&v52[4];
      *&buf[22] = 2048;
      *&buf[24] = v15;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Phase_ConvolutionRenderer_PrepareIR", "%s: IR Build Begin for Metadata %p: %zu reflections", buf, 0x20u);
      if (v57 < 0)
      {
        operator delete(v56[0]);
      }
    }
  }

  OutputBufferSizeInSamples = Phase::Controller::IR::IRBuilder::GetOutputBufferSizeInSamples(*(a1 + 168), v51);
  v18 = *(a1 + 220);
  v19 = Phase::Controller::IR::IRBuilder::GetWorkBufferSizeInBytes(*(a1 + 168), v51, 0, *(a1 + 212));
  v20 = (v7 + 39) & 0xFFFFFFFFFFFFFFF0;
  v21 = (v20 + 4 * OutputBufferSizeInSamples + 15) & 0xFFFFFFFFFFFFFFF0;
  *v7 = v20;
  *(v7 + 1) = v21;
  v22 = v21 + 8 * v18;
  v23 = OutputBufferSizeInSamples / v18;
  if (v18 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
      *(*(v7 + 1) + v24) = v25;
      v22 = v25 + 4 * v23;
      v24 += 8;
    }

    while (8 * v18 != v24);
  }

  v26 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  *(v7 + 2) = v26;
  v27 = Phase::Controller::ConvolutionRenderer::GetWorkBufferSizeInBytes(a1, v51);
  if (v27 != (v26 + v19 - v7))
  {
    v47 = **(Phase::Logger::GetInstance(v27) + 512);
    v48 = v47;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CvmConvolutionRenderer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 366;
      _os_log_impl(&dword_23A302000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [GetWorkBufferSizeInBytes(inMetadata) != PointerDiff(pMemory, pInWorkBuffer) is true]: Memory Allocation Error", buf, 0x12u);
    }

    v49 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v49, "Memory Allocation Error");
  }

  vDSP_vclr(*v7, 1, OutputBufferSizeInSamples);
  if (*&v52[4] && **&v52[4] == 3 && (v29 = *(*&v52[4] + 104)) != 0 && *v29)
  {
    Phase::Controller::IR::IRBuilder::Build(*(a1 + 168), v51, 0, *(a1 + 212), *(v7 + 2), *v7);
  }

  else
  {
    v30 = Phase::Logger::GetInstance(v28);
    if (*(v30 + 1639) == 1)
    {
      v31 = **(Phase::Logger::GetInstance(v30) + 512);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        (*(*a1 + 144))(v56, a1);
        v32 = v57 >= 0 ? v56 : v56[0];
        *buf = 136315906;
        *&buf[4] = "CvmConvolutionRenderer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 398;
        *&buf[18] = 2080;
        *&buf[20] = v32;
        *&buf[28] = 2048;
        *&buf[30] = v51;
        _os_log_impl(&dword_23A302000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: metadata %p is empty", buf, 0x26u);
        if (v57 < 0)
        {
          operator delete(v56[0]);
        }
      }
    }
  }

  if (*(a1 + 208) == 2)
  {
    if (v23 <= 128)
    {
      operator new();
    }

    memset(buf, 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(buf, *(a1 + 224), *(a1 + 232), (*(a1 + 232) - *(a1 + 224)) >> 2);
    v39 = *buf;
    v40 = *&buf[8];
    if (*buf == *&buf[8])
    {
      v41 = *&buf[16];
      if (*&buf[16] - *buf < 5uLL)
      {
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
          v41 = 0;
          memset(buf, 0, 24);
        }

        v42 = v41 >> 1;
        if ((v41 >> 1) <= 2)
        {
          v42 = 2;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v43 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v42;
        }

        std::vector<int>::__vallocate[abi:ne200100](buf, v43);
      }

      **&buf[8] = 0x40000000080;
      *&buf[8] = v40 - v39 + v40 + 8;
    }

    operator new();
  }

  v33 = Phase::Logger::GetInstance(v30);
  if (*(v33 + 1639) == 1)
  {
    v34 = **(Phase::Logger::GetInstance(v33) + 512);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 144))(v56, a1);
      v35 = v57 >= 0 ? v56 : v56[0];
      v36 = *(a1 + 208);
      *buf = 136315906;
      *&buf[4] = "CvmConvolutionRenderer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 466;
      *&buf[18] = 2080;
      *&buf[20] = v35;
      *&buf[28] = 1024;
      *&buf[30] = v36;
      _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Convolver type %d not supported!", buf, 0x22u);
      if (v57 < 0)
      {
        operator delete(v56[0]);
      }
    }
  }

  v37 = Phase::Logger::GetInstance(v33);
  if (*(v37 + 1639) == 1)
  {
    v8 = **(Phase::Logger::GetInstance(v37) + 512);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 144))(v56, a1);
      v38 = v57 >= 0 ? v56 : v56[0];
      *buf = 136315650;
      *&buf[4] = "CvmConvolutionRenderer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 476;
      *&buf[18] = 2080;
      *&buf[20] = v38;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Convolver pointer is null!", buf, 0x1Cu);
      if (v57 < 0)
      {
        operator delete(v56[0]);
      }
    }

LABEL_12:
  }

  Phase::Controller::IR::Metadata::~Metadata(v51);
}

void sub_23A342AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_signpost_id_t spid, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, __int16 a25, __int16 a26, uint64_t a27, __int16 a28, uint64_t a29)
{
  (*(*v29 + 8))(v29);
  Phase::Controller::IR::Metadata::~Metadata(&a15);
  _Unwind_Resume(a1);
}

unint64_t Phase::Controller::ConvolutionRenderer::GetWorkBufferSizeInBytes(Phase::Controller::ConvolutionRenderer *this, const Phase::Controller::IR::Metadata *a2)
{
  OutputBufferSizeInSamples = Phase::Controller::IR::IRBuilder::GetOutputBufferSizeInSamples(*(this + 21), a2);
  v5 = *(this + 55);
  WorkBufferSizeInBytes = Phase::Controller::IR::IRBuilder::GetWorkBufferSizeInBytes(*(this + 21), a2, 0, *(this + 53));
  v7 = ((4 * OutputBufferSizeInSamples + 47) & 0xFFFFFFFFFFFFFFF0) + 8 * v5;
  if (v5 >= 1)
  {
    v8 = 4 * (OutputBufferSizeInSamples / v5);
    do
    {
      v7 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + v8;
      LODWORD(v5) = v5 - 1;
    }

    while (v5);
  }

  return ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + WorkBufferSizeInBytes;
}

uint64_t Phase::Controller::ConvolutionRenderer::SetPlayState(uint64_t result, unsigned int a2, int a3)
{
  v3 = *(result + 184);
  if (v3 != a2 && v3 != 0)
  {
    v5 = a2;
    v6 = result;
    if (!a2)
    {
      atomic_store(1u, (result + 188));
      if (a3)
      {
        Phase::Controller::BufferManager::SetNopFilter(*(result + 152));
        atomic_store(1u, (v6 + 190));
      }

      else
      {
        *(result + 189) = 1;
      }
    }

    result = Phase::Controller::DVM23::DvmAdapter::SetRendererPlayState(*(v6 + 160), *(v6 + 40), *(v6 + 48), v5);
    if (result)
    {
      v5 = *(v6 + 184);
    }

    *(v6 + 184) = v5;
  }

  return result;
}

uint64_t Phase::Controller::ConvolutionRenderer::IsPrepared(Phase::Controller::ConvolutionRenderer *this)
{
  v1 = atomic_load(this + 190);
  if (v1)
  {
    v2 = *(this + 192);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t Phase::Controller::ConvolutionRenderer::IsStopped(Phase::Controller::ConvolutionRenderer *this)
{
  if (*(this + 46))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 189) ^ 1;
  }

  return v1 & 1;
}

uint64_t Phase::Controller::ConvolutionRenderer::SubmitRendererStoppedResult(uint64_t this, std::error_code a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = a2;
  if (a2.__val_ == 1)
  {
    v3 = **(Phase::Logger::GetInstance(this) + 512);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "CvmConvolutionRenderer.mm";
      v13 = 1024;
      v14 = 586;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inErrorCode.value() == true is true]: inErrorCode.message()", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::error_code::message(buf, &v10);
    MEMORY[0x23EE85EE0](exception, buf);
  }

  v2 = this;
  if (*(this + 184))
  {
    v5 = **(Phase::Logger::GetInstance(this) + 512);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      (*(*v2 + 144))(__p, v2);
      if (v9 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136315650;
      v12 = "CvmConvolutionRenderer.mm";
      v13 = 1024;
      v14 = 589;
      v15 = 2080;
      v16 = v6;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [mPlayState != PlayState::kStopped is true]: %s: [SubmitRendererStoppedResult] Received stopped result for renderer which is not in stopped state!", buf, 0x1Cu);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v7, "%s: [SubmitRendererStoppedResult] Received stopped result for renderer which is not in stopped state!");
  }

  *(this + 189) = 0;
  return this;
}

unsigned __int8 *Phase::Controller::ConvolutionRenderer::Rebuild(unsigned __int8 *this, int a2)
{
  v2 = this;
  if (a2)
  {
    this = Phase::Controller::BufferManager::SetNopFilter(*(this + 19));
    atomic_store(1u, v2 + 190);
  }

  v2[191] = 1;
  return this;
}

uint64_t Phase::Controller::ConvolutionRenderer::GetDescription@<X0>(Phase::Controller::ConvolutionRenderer *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Renderer (convolution, ", 23);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "id ", 3);
  MEMORY[0x23EE86170](v4, *(this + 5));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", ", 2);
  v5 = *(this + 62);
  if (v5 > 3)
  {
    v6 = "None";
  }

  else
  {
    v6 = off_278B4EE58[v5];
  }

  v7 = strlen(v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ", 2);
  MethodString = Phase::Controller::IR::IRBuilder::GetMethodString((this + 212), v9);
  v11 = strlen(MethodString);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, MethodString, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", ", 2);
  v13 = MEMORY[0x23EE86130](&v20, *(this + 55));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " channels) ", 11);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "impl@", 5);
  v15 = MEMORY[0x23EE86100](v14, this);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ")", 1);
  if ((v27 & 0x10) != 0)
  {
    v17 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v17 = v23;
    }

    locale = v22[4].__locale_;
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v16 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    locale = v22[1].__locale_;
    v17 = v22[3].__locale_;
  }

  v16 = v17 - locale;
  if ((v17 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 >= 0x17)
  {
    operator new();
  }

  a2[23] = v16;
  if (v16)
  {
    memmove(a2, locale, v16);
  }

LABEL_17:
  a2[v16] = 0;
  v20 = *MEMORY[0x277D82828];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x277D82828] + 24);
  v21 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  return MEMORY[0x23EE863B0](&v28);
}

void sub_23A343630(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x23EE863B0](v2 + 112);
  _Unwind_Resume(a1);
}

void std::vector<Phase::VoiceBufferParameter>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::VoiceBufferParameter>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Phase::VoiceBufferParameter>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void *std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t std::vector<Phase::Controller::DspNodeVoice>::__emplace_back_slow_path<Phase::Controller::DspNodeVoice>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DspNodeVoice>>(a1, v6);
  }

  v7 = 56 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *&v16 = 56 * v2 + 56;
  v8 = a1[1];
  v9 = (56 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Controller::DspNodeVoice>,Phase::Controller::DspNodeVoice*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<Phase::Controller::DspNodeVoice>::~__split_buffer(&v14);
  return v13;
}

void sub_23A343938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Phase::Controller::DspNodeVoice>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DspNodeVoice>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Controller::DspNodeVoice>,Phase::Controller::DspNodeVoice*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *(a4 + 1) = *(v6 + 8);
      a4[3] = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      a4[4] = 0;
      a4[5] = 0;
      a4[6] = 0;
      *(a4 + 2) = *(v6 + 32);
      a4[6] = *(v6 + 48);
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      v6 += 56;
      a4 += 7;
    }

    while (v6 != a3);
    do
    {
      std::__destroy_at[abi:ne200100]<Phase::Controller::DspNodeVoice,0>(v5);
      v5 += 56;
    }

    while (v5 != a3);
  }
}

void std::__destroy_at[abi:ne200100]<Phase::Controller::DspNodeVoice,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 8);
  std::vector<Phase::VoiceBufferParameter>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t std::__split_buffer<Phase::Controller::DspNodeVoice>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    std::__destroy_at[abi:ne200100]<Phase::Controller::DspNodeVoice,0>(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void Phase::Controller::DspNodeVoice::~DspNodeVoice(Phase::Controller::DspNodeVoice *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = (this + 8);
  std::vector<Phase::VoiceBufferParameter>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<Phase::Controller::DspNode>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 32;
        v7 = (v4 - 24);
        std::vector<Phase::Controller::DspNodeVoice>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<Phase::Controller::DspNodeVoice>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        std::__destroy_at[abi:ne200100]<Phase::Controller::DspNodeVoice,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void Phase::Controller::InvalidId::~InvalidId(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A343CC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::unique_ptr<Phase::Controller::BufferManager>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::unique_ptr<Phase::DspLayer::VoiceBuffer,std::function<void ()(Phase::DspLayer::VoiceBuffer*)>>>>>::~__hash_table(v2 + 8);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  atomic_store(1u, (a1 + 32));
  p_p = &__p;
  Phase::GetBacktraceFrame<1ul>(&__p);
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size >= 9)
  {
    v4 = p_p + size;
    v5 = p_p;
    do
    {
      v6 = memchr(v5, 67, size - 8);
      if (!v6)
      {
        break;
      }

      if (*v6 == 0x6E7973416C6C6143 && v6[8] == 99)
      {
        if (v6 != v4 && v6 - p_p != -1)
        {
          Phase::GetBacktraceFrame<2ul>(buf);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = *buf;
        }

        break;
      }

      v5 = (v6 + 1);
      size = v4 - v5;
    }

    while (v4 - v5 >= 9);
  }

  v8 = **(a1 + 24);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "Commandable.hpp";
    *&buf[12] = 1024;
    *&buf[14] = 356;
    *&buf[18] = 2080;
    *&buf[20] = v9;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to push command into the queue from:\n%s", buf, 0x1Cu);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23A343F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::LambdaFunction<BOOL Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::Controller::ConvolutionRenderer,void,Phase::SerialNumberAllocator<long long> *,BOOL>(int,void (Phase::Controller::ConvolutionRenderer::*)(Phase::SerialNumberAllocator<long long> *,BOOL),Phase::SerialNumberAllocator<long long> *,BOOL)::{lambda(void)#1},void>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = (*(a1 + 8) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3, *(a1 + 32), *(a1 + 40));
}

void Phase::GetBacktraceFrame<2ul>(std::string *a1@<X8>)
{
  std::vector<void *>::vector[abi:ne200100](&v16, 4uLL);
  v2 = backtrace(v16, (v17 - v16) >> 3);
  std::vector<void *>::resize(&v16, v2);
  applesauce::backtrace::detail::symbolicate_snapshot(&v16, 4, &__p);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11, &__p, 24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  memset(&__p, 0, sizeof(__p));
  memset(v9, 0, sizeof(v9));
  v3 = MEMORY[0x277D82680];
  while (1)
  {
    std::ios_base::getloc((v11 + *(v11[0] - 24)));
    v4 = std::locale::use_facet(&v18, v3);
    v5 = (v4->__vftable[2].~facet_0)(v4, 10);
    std::locale::~locale(&v18);
    v6 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11, &__p, v5);
    if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
    {
      break;
    }

    std::vector<std::string>::push_back[abi:ne200100](v9, &__p);
  }

  if (*(v9[0] + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a1, *(v9[0] + 72), *(v9[0] + 80));
  }

  else
  {
    v7 = *(v9[0] + 72);
    a1->__r_.__value_.__r.__words[2] = *(v9[0] + 88);
    *&a1->__r_.__value_.__l.__data_ = v7;
  }

  v19 = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11[2] = v8;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  MEMORY[0x23EE863B0](&v15);
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_23A3442A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  *(v18 - 56) = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v18 - 56));
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  v20 = *(v18 - 88);
  if (v20)
  {
    *(v18 - 80) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x23EE863B0](a1 + 128);
  return a1;
}

void Phase::Controller::ExternalOutputPullStreamSampler::ResumeStream(__n128 *this)
{
  this[41].n128_u8[8] = 0;
  v2 = this[28].n128_u32[0];
  if (v2 == 2)
  {
    if ((this[41].n128_u8[9] & 1) == 0 && this[36].n128_u8[8] == 1)
    {
      v4 = this[28].n128_u32[1];
      if (v4 == 2)
      {
        memset(&v6, 0, sizeof(v6));
        Phase::Controller::Generator::Resume(this, &v6);
      }

      else if (!v4)
      {
        memset(&v6, 0, sizeof(v6));
        Phase::Controller::Generator::Play(this, &v6);
      }
    }

    if (this[41].n128_u8[9])
    {
      v5 = 1;
    }

    else
    {
      v5 = this[41].n128_i8[8];
    }

    v3 = v5 & 1;
  }

  else
  {
    if (v2 != 1)
    {
      return;
    }

    v3 = this[41].n128_u8[9];
  }

  this[36].n128_u8[8] = v3;
}

void Phase::Controller::ExternalOutputPullStreamSampler::PauseStream(Phase::Controller::ExternalOutputPullStreamSampler *this)
{
  *(this + 664) = 1;
  if ((*(this + 112) - 1) <= 1)
  {
    if ((*(this + 584) & 1) == 0 && *(this + 113) == 2)
    {
      Phase::Controller::Generator::Pause(this);
    }

    *(this + 584) = 1;
  }
}

void Phase::Controller::ExternalOutputPullStreamSampler::StartVoices(Phase::Controller::ExternalOutputPullStreamSampler *this, double a2)
{
  *(this + 55) = a2;
  Phase::Controller::Generator::SetVoiceState(this, 1u);
  v3 = *(this + 84);
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:this + 680];
  [v3 updateController:? pauseState:?];
}

void Phase::Controller::ExternalOutputPullStreamSampler::StopVoices(Phase::Controller::ExternalOutputPullStreamSampler *this)
{
  Phase::Controller::Generator::StopVoices(this);
  v2 = *(this + 84);
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:this + 680];
  [v2 updateController:? pauseState:?];
}

void Phase::Controller::ExternalOutputPullStreamSampler::Play(__n128 *this, const AudioTimeStamp *a2)
{
  v3 = this[28].n128_u32[0];
  if (v3 == 2)
  {
    this[41].n128_u8[9] = 0;
    v4 = this[41].n128_u8[8];
    if ((v4 & 1) == 0 && this[36].n128_u8[8] == 1)
    {
      Phase::Controller::Generator::Play(this, a2);
    }
  }

  else
  {
    if (v3 != 1)
    {
      return;
    }

    this[41].n128_u8[9] = 0;
    v4 = this[41].n128_u8[8];
  }

  this[36].n128_u8[8] = v4;
}

void Phase::Controller::ExternalOutputPullStreamSampler::Pause(Phase::Controller::ExternalOutputPullStreamSampler *this)
{
  if ((*(this + 112) - 1) <= 1)
  {
    *(this + 665) = 1;
    if ((*(this + 584) & 1) == 0 && *(this + 113) == 2)
    {
      Phase::Controller::Generator::Pause(this);
      v2 = *(this + 84);
      v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:this + 680];
      [v2 updateController:v3 pauseState:1];
    }

    *(this + 584) = 1;
  }
}

void Phase::Controller::ExternalOutputPullStreamSampler::Resume(Phase::Controller::ExternalOutputPullStreamSampler *this, const AudioTimeStamp *a2)
{
  if ((*(this + 112) - 1) <= 1)
  {
    *(this + 665) = 0;
    v3 = *(this + 664);
    if ((v3 & 1) == 0 && *(this + 584) == 1 && *(this + 113) == 2)
    {
      Phase::Controller::Generator::Resume(this, a2);
      v4 = *(this + 84);
      v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:this + 680];
      [v4 updateController:v5 pauseState:0];
    }

    *(this + 584) = v3;
  }
}

void Phase::Controller::ExternalOutputPullStreamSampler::~ExternalOutputPullStreamSampler(id *this)
{

  Phase::Controller::StreamSamplerBase::~StreamSamplerBase(this);
}

{

  Phase::Controller::StreamSamplerBase::~StreamSamplerBase(this);

  JUMPOUT(0x23EE864A0);
}

void sub_23A344CF0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  Phase::Controller::SamplerBase::~SamplerBase(v1);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::TaskManager::GetService<Phase::Controller::VoicePoolRegistry>(Phase::Logger *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 6);
  if (a2 >= ((*(a1 + 7) - v3) >> 5))
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 112;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  v4 = (v3 + 32 * a2);
  if (!*v4)
  {
    v9 = **(Phase::Logger::GetInstance(v4) + 464);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 121;
      v17 = 1024;
      v18 = a2;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v11, "No service registered for Id %i, in call \n%s");
  }

  v5 = std::any_cast[abi:ne200100]<Phase::Controller::VoicePoolRegistry * const>(v4);
  if (!v5)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v5;
}

void sub_23A34508C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::FileSampler::~FileSampler(Phase::Controller::FileSampler *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = **(Phase::Logger::GetInstance(this) + 400);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 37);
    v4 = *(this + 59);
    v5 = *(this + 79);
    v6 = 136316418;
    v7 = "CvmFileSampler.mm";
    v8 = 1024;
    v9 = 71;
    v10 = 2048;
    v11 = this;
    v12 = 2048;
    v13 = v3;
    v14 = 2048;
    v15 = v4;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: destroyed file sampler with generatorId %llu on submixId %llu with audio file assetId: (%llu)", &v6, 0x3Au);
  }

  Phase::Controller::SamplerBase::~SamplerBase(this);
}

{
  Phase::Controller::FileSampler::~FileSampler(this);

  JUMPOUT(0x23EE864A0);
}

void sub_23A3451A4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t Phase::Controller::FileSampler::InternalPrepare(Phase::Controller::FileSampler *this, double a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = (*(**(this + 5) + 40))(&v22, a2);
  if (v26)
  {
    v4 = 1;
  }

  else
  {
    v4 = (v24 & 0x20) == 0;
  }

  if (v4 && v22 > 0.0)
  {
    v5 = *v27;
    if (v5 != (v28 - v27 - 8) >> 4)
    {
      CAAssertRtn();
    }

    if (v5 && v29)
    {
      v6 = v27 + 16;
      while (*v6 && *(v6 - 1) >= (v25 * v29))
      {
        v6 += 2;
        if (!--v5)
        {
          v8 = (v24 & 1) == 0 || v23 != 1819304813;
          if ((v24 & 0x20) != 0 || v8)
          {
            if (v8)
            {
              break;
            }
          }

          else if (v26 != 1)
          {
            break;
          }

          Phase::Controller::SamplerBase::AssignVoiceBuffers(this, v27);
          v18 = v29;
          *(this + 80) = v29;
          v19 = v22;
          *(this + 81) = v22;
          *(this + 82) = v18 / v19;
          v16 = 1;
          goto LABEL_30;
        }
      }
    }
  }

  v9 = **(Phase::Logger::GetInstance(v3) + 400);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = *(this + 61);
    v12 = *(this + 59);
    v13 = *(this + 37);
    v14 = *(this + 79);
    CA::StreamDescription::AsString(&v22, __p, v10);
    v15 = v21 >= 0 ? __p : __p[0];
    *buf = 136316674;
    v31 = "CvmFileSampler.mm";
    v32 = 1024;
    v33 = 93;
    v34 = 2048;
    v35 = v11;
    v36 = 2048;
    v37 = v12;
    v38 = 2048;
    v39 = v13;
    v40 = 2048;
    v41 = v14;
    v42 = 2080;
    v43 = v15;
    _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d (sound event: %llu, submix: %llu, generator: %llu) - prepare failed (info for asset: %llx was either not found, or has an invalid format: %s", buf, 0x44u);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v16 = 0;
LABEL_30:
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  return v16;
}

void sub_23A34546C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::FileSampler::InternalConfigureDspGenerator(Phase::Controller::FileSampler *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(this + 4);
  v3 = *(this + 37);
  v4 = *(this + 38);
  memset(buf, 0, 24);
  v5 = Phase::Controller::DVM23::DvmAdapter::ConfigureGeneratorWithRenderCallback(v2, v3, v4, 1u);
  v18 = buf;
  std::vector<Phase::Controller::DspNode>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (v5 >= 2)
  {
    v11 = **(Phase::Logger::GetInstance(v6) + 400);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(this + 37);
      *buf = 136315650;
      *&buf[4] = "CvmFileSampler.mm";
      *&buf[12] = 1024;
      *&buf[14] = 121;
      *&buf[18] = 2048;
      *&buf[20] = v12;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(error != DVM23::DvmAdapter::ErrorCode::Okay && error != DVM23::DvmAdapter::ErrorCode::NoOp) is true]: Unable to configure generatorId %llu", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unable to configure generatorId %llu");
  }

  if (v5 == 1)
  {
    v7 = **(Phase::Logger::GetInstance(v6) + 400);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(this + 37);
      v9 = *(this + 59);
      *buf = 136315906;
      *&buf[4] = "CvmFileSampler.mm";
      *&buf[12] = 1024;
      *&buf[14] = 126;
      *&buf[18] = 2048;
      *&buf[20] = v8;
      v20 = 2048;
      v21 = v9;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d GeneratorId %llu already connected to submixId %llu", buf, 0x26u);
    }
  }

  else
  {
    v10 = Phase::Controller::DVM23::DvmAdapter::ConnectGeneratorToSubmix(*(this + 4), *(this + 37), *(this + 38), *(this + 59), *(this + 60));
    if (v10)
    {
      v14 = **(Phase::Logger::GetInstance(v10) + 400);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(this + 37);
        v16 = *(this + 59);
        *buf = 136315906;
        *&buf[4] = "CvmFileSampler.mm";
        *&buf[12] = 1024;
        *&buf[14] = 133;
        *&buf[18] = 2048;
        *&buf[20] = v15;
        v20 = 2048;
        v21 = v16;
        _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [error != DVM23::DvmAdapter::ErrorCode::Okay is true]: Unable to connect generatorId %llu to submixId %llu ", buf, 0x26u);
      }

      v17 = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](v17, "Unable to connect generatorId %llu to submixId %llu ");
    }
  }
}

double Phase::Controller::FileSampler::GetAnchorTimeForWakeFromSleepInSeconds(Phase::Controller::FileSampler *this, PHASECullOption a2, double a3)
{
  if (a2 != PHASECullOptionSleepWakeAtRandomOffset)
  {
    return 0.0;
  }

  v3 = *(this + 82);
  v4 = *(this + 83);
  v5 = *(this + 84);
  *(this + 83) = v5;
  v6 = (v5 >> 26) ^ ((v4 ^ (v4 << 23)) >> 17) ^ v5 ^ v4 ^ (v4 << 23);
  *(this + 84) = v6;
  return v3 * vcvtd_n_f64_u64(v6 + v5, 0x40uLL) + 0.0;
}

void Phase::Controller::FileSampler::SeekTime(Phase::Controller::FileSampler *this, double a2, const AudioTimeStamp *a3)
{
  if (*(this + 78) || *(this + 82) > a2)
  {
    v5 = *(this + 112);
    if (v5 >= 2)
    {
      if (v5 - 3 < 2)
      {
        v6 = *(**(this + 5) + 32);

        v6();
        return;
      }

      if (v5 != 2)
      {
        return;
      }

      v7 = *(this + 145);
      if ((v7 - 1) >= 2)
      {
        if (v7)
        {
LABEL_13:
          *(this + 54) = a2;
          return;
        }

        Phase::Controller::Generator::SetParameter(this, 0x5FB837590D112C13uLL, a2 - *(this + 82) * floor(a2 / *(this + 82)), 1);
      }
    }

    (*(**(this + 5) + 32))(*(this + 5), *(this + 37), *(this + 38), 0);
    goto LABEL_13;
  }

  (*(**(this + 5) + 32))(*(this + 5), *(this + 37), *(this + 38), 0);

  Phase::Controller::Generator::Stop(this);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t (**std::any_cast[abi:ne200100]<Phase::Controller::VoicePoolRegistry * const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<Phase::Controller::VoicePoolRegistry *>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void Phase::Controller::FileStreamSampler::SeekTime(Phase::Controller::FileStreamSampler *this, double a2, const AudioTimeStamp *a3)
{
  v5 = (*(**(this + 5) + 48))(*(this + 5), *(this + 37), *(this + 38), *(this + 78));
  if (v5)
  {
    (*(**(this + 5) + 32))(*(this + 5), *(this + 37), *(this + 38), v5);

    Phase::Controller::Generator::Stop(this);
  }

  else
  {
    v6 = *(**(this + 5) + 32);
    if ((*(this + 112) - 3) > 1)
    {
      v6();
      *(this + 54) = a2;
    }

    else
    {

      v6();
    }
  }
}

void Phase::Controller::FileStreamSampler::~FileStreamSampler(Phase::Controller::FileStreamSampler *this)
{
  Phase::Controller::StreamSamplerBase::~StreamSamplerBase(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Controller::Generator::Generator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v85 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284D30420;
  *(a1 + 8) = a9;
  *(a1 + 16) = a11;
  *(a1 + 24) = a12;
  *(a1 + 32) = a13;
  *(a1 + 40) = a14;
  v22 = *(a8 + 48);
  std::vector<char>::vector[abi:ne200100](__p, 32);
  v23 = *__p;
  *(*__p + 4) = 0;
  v23[2] = 0;
  *v23 = v22;
  Phase::ChannelLayout::ReduceLayout(__p, *(a8 + 56), (a1 + 48));
  v24 = *__p;
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  v25 = *(a8 + 56);
  *(a1 + 160) = 0u;
  *(a1 + 72) = v25;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = xmmword_23A554D00;
  *(a1 + 216) = 0;
  *(a1 + 288) = a10;
  *(a1 + 296) = a2;
  *(a1 + 304) = a3;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 1065353216;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0x3FF0000000000000;
  __asm { FMOV            V1.2D, #1.0 }

  *(a1 + 368) = _Q1;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0x3FF0000000000000;
  v68 = _Q1;
  *(a1 + 400) = _Q1;
  *(a1 + 416) = 0x3FF0000000000000;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 1;
  *(a1 + 460) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = a4;
  *(a1 + 480) = a5;
  *(a1 + 488) = a6;
  *(a1 + 496) = a7;
  *(a1 + 504) = 0xFFFF00000000;
  *(a1 + 512) = 0;
  *(a1 + 576) = 0;
  *(a1 + 580) = 0;
  *(a1 + 584) = 0;
  *(a1 + 588) = 0;
  *(a1 + 592) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0;
  v31 = *(a1 + 48);
  if (*v31 == 0x10000)
  {
    v33 = vcnt_s8(v31[1]);
    v33.i16[0] = vaddlv_u8(v33);
    v32 = v33.i32[0];
  }

  else if (*v31)
  {
    v32 = *v31;
  }

  else
  {
    v32 = v31[2];
  }

  if (!v32)
  {
    v61 = **(Phase::Logger::GetInstance(v24) + 400);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "CvmGenerator.mm";
      *&__p[12] = 1024;
      *&__p[14] = 242;
      _os_log_impl(&dword_23A302000, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: mChannelLayout.GetNumberChannels() > 0 is false.", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: mChannelLayout.GetNumberChannels() > 0 is false.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  Phase::BitBlockAllocator<Phase::SystemAllocator>::Initialize(a1 + 504, 16, 80, *(a1 + 8), "Effect Allocator");
  *__p = xmmword_23A554D10;
  *&__p[16] = v68;
  __p[32] = 0;
  v34 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,Phase::Controller::Parameter<double>>((a1 + 312), qword_278B4EE88);
  if ((v35 & 1) == 0)
  {
    v63 = **(Phase::Logger::GetInstance(v34) + 400);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "CvmGenerator.mm";
      *&__p[12] = 1024;
      *&__p[14] = 250;
      *&__p[18] = 2048;
      *&__p[20] = 0x981F232BD33EC927;
      _os_log_impl(&dword_23A302000, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!pair.second is true]: Failed to insert %llu parameter", __p, 0x1Cu);
    }

LABEL_45:
    v67 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v67, "Failed to insert %llu parameter");
  }

  *__p = 0;
  *&__p[8] = v68;
  *&__p[24] = 0x3FF0000000000000;
  __p[32] = 0;
  v36 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,Phase::Controller::Parameter<double>>((a1 + 312), qword_278B4EEB8);
  if ((v37 & 1) == 0)
  {
    v64 = **(Phase::Logger::GetInstance(v36) + 400);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "CvmGenerator.mm";
      *&__p[12] = 1024;
      *&__p[14] = 253;
      *&__p[18] = 2048;
      *&__p[20] = 0xB5767F7E05AD941ELL;
      _os_log_impl(&dword_23A302000, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!pair.second is true]: Failed to insert %llu parameter", __p, 0x1Cu);
    }

    goto LABEL_45;
  }

  *__p = 0;
  *&__p[8] = v68;
  *&__p[24] = 0x3FF0000000000000;
  __p[32] = 0;
  v38 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,Phase::Controller::Parameter<double>>((a1 + 312), qword_278B4EEE8);
  if ((v39 & 1) == 0)
  {
    v65 = **(Phase::Logger::GetInstance(v38) + 400);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "CvmGenerator.mm";
      *&__p[12] = 1024;
      *&__p[14] = 257;
      *&__p[18] = 2048;
      *&__p[20] = 0x81FBB92FC0173ECLL;
      _os_log_impl(&dword_23A302000, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!pair.second is true]: Failed to insert %llu parameter", __p, 0x1Cu);
    }

    goto LABEL_45;
  }

  *__p = 0;
  *&__p[8] = v68;
  *&__p[24] = 0x3FF0000000000000;
  __p[32] = 0;
  v40 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,Phase::Controller::Parameter<double>>((a1 + 312), qword_278B4EF18);
  if ((v41 & 1) == 0)
  {
    v66 = **(Phase::Logger::GetInstance(v40) + 400);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "CvmGenerator.mm";
      *&__p[12] = 1024;
      *&__p[14] = 261;
      *&__p[18] = 2048;
      *&__p[20] = 0x8119B92FBF50030;
      _os_log_impl(&dword_23A302000, v66, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!pair.second is true]: Failed to insert %llu parameter", __p, 0x1Cu);
    }

    goto LABEL_45;
  }

  *(a1 + 192) = *(a8 + 16);
  *(a1 + 200) = *(a8 + 24);
  *(a1 + 216) = *(a8 + 40);
  Instance = Phase::Logger::GetInstance(v40);
  if (*(Instance + 1636) == 1)
  {
    v43 = **(Phase::Logger::GetInstance(Instance) + 400);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = *(a1 + 448);
      if (v44 > 4)
      {
        v45 = "<not found>";
      }

      else
      {
        v45 = off_278B4EF88[v44];
      }

      v69 = v45;
      v46 = *(a1 + 452);
      if (v46 > 3)
      {
        v47 = "<not found>";
      }

      else
      {
        v47 = off_278B4EFC8[v46];
      }

      v48 = *(a1 + 580);
      v49 = "<not found>";
      v50 = "<not found>";
      if (v48 <= 2)
      {
        v50 = off_278B4EFB0[v48];
      }

      v51 = *(a1 + 488);
      v52 = *(a1 + 472);
      v53 = *(a1 + 296);
      v54 = *(a1 + 460);
      if (v54 == 1)
      {
        v49 = "interrupted";
      }

      if (v54)
      {
        v55 = v49;
      }

      else
      {
        v55 = "active";
      }

      v56 = GetCalibrationModeString(*(a1 + 192));
      v57 = v56;
      v58 = [v56 UTF8String];
      v59 = *(a1 + 200);
      *__p = 136317698;
      *&__p[4] = "CvmGenerator.mm";
      *&__p[12] = 1024;
      *&__p[14] = 276;
      *&__p[18] = 2048;
      *&__p[20] = v51;
      *&__p[28] = 2048;
      *&__p[30] = v52;
      v71 = 2048;
      v72 = v53;
      v73 = 2080;
      v74 = v69;
      v75 = 2080;
      v76 = v47;
      v77 = 2080;
      v78 = v50;
      v79 = 2080;
      v80 = v55;
      v81 = 2080;
      v82 = v58;
      v83 = 2048;
      v84 = v59;
      _os_log_impl(&dword_23A302000, v43, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu, submix: %llu, generator: %llu) - created (state: %s, voice state: %s, sleep state: %s, session state: %s, calibration mode: %s, level: %f", __p, 0x6Cu);
    }
  }

  return a1;
}

void sub_23A346410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  Phase::BitBlockAllocator<Phase::SystemAllocator>::Destroy((v15 + 43));
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table((v15 + 19));
  v20 = v16[23];
  v16[23] = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  a15 = v15;
  std::vector<Phase::Controller::CvmVoiceData>::__destroy_vector::operator()[abi:ne200100](&a15);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(a9);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(a10);
  v21 = v16[6];
  if (v21)
  {
    v16[7] = v21;
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::Generator::~Generator(Phase::Controller::Generator *this)
{
  v19 = *MEMORY[0x277D85DE8];
  *this = &unk_284D30420;
  if (*(this + 112) != 4)
  {
    v2 = **(Phase::Logger::GetInstance(this) + 400);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 136315394;
      *&v10[4] = "CvmGenerator.mm";
      v11 = 1024;
      v12 = 285;
      _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Generator was destroyed prematurely, cleaning up", v10, 0x12u);
    }

    Phase::Controller::Generator::Finish(this);
  }

  Instance = Phase::Logger::GetInstance(this);
  if (*(Instance + 1636) == 1)
  {
    v4 = **(Phase::Logger::GetInstance(Instance) + 400);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 61);
      v6 = *(this + 59);
      v7 = *(this + 37);
      *v10 = 136316162;
      *&v10[4] = "CvmGenerator.mm";
      v11 = 1024;
      v12 = 292;
      v13 = 2048;
      v14 = v5;
      v15 = 2048;
      v16 = v6;
      v17 = 2048;
      v18 = v7;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu, submix: %llu, generator: %llu) - destroyed", v10, 0x30u);
    }
  }

  Phase::BitBlockAllocator<Phase::SystemAllocator>::Destroy(this + 504);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 312);
  v8 = *(this + 23);
  *(this + 23) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *v10 = this + 160;
  std::vector<Phase::Controller::CvmVoiceData>::__destroy_vector::operator()[abi:ne200100](v10);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 120);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 80);
  v9 = *(this + 6);
  if (v9)
  {
    *(this + 7) = v9;
    operator delete(v9);
  }
}

void sub_23A346724(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::Generator::Finish(Phase::Controller::Generator *this)
{
  if (*(this + 112) != 4)
  {
    Phase::Controller::DVM23::DvmAdapter::RemoveGenerator(*(this + 4), *(this + 37), *(this + 38));
    v3 = *(this + 20);
    v4 = *(this + 21);
    while (v3 != v4)
    {
      std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear((v3 + 16));
      std::vector<Phase::VoiceBufferParameter>::clear[abi:ne200100]((v3 + 56));
      v3 += 88;
    }

    (*(**(this + 5) + 24))(*(this + 5), *(this + 37), *(this + 38), this + 592);

    Phase::Controller::Generator::SetState(this, 4u);
  }
}

void Phase::Controller::Generator::Prepare(Phase::Controller::Generator *this, double a2)
{
  if ((*(*this + 80))(this, a2))
  {
    *(this + 54) = 0;
    *(this + 584) = 1;
    Phase::Controller::Generator::SetPauseState(this, 1);
    Phase::Controller::Generator::SetState(this, 1u);
    for (i = *(this + 20); i != *(this + 21); i += 88)
    {
      if (*(i + 64) != *(i + 56))
      {
        v4 = *(this + 23);
        v5 = *(v4 + 16);
        v6 = *(v4 + 24);
        while (v5 != v6)
        {
          v7 = *(v5 + 8);
          if (v7 == *(v5 + 16) || (v8 = *(v7 + 8)) == 0 || !*v8)
          {
            std::terminate();
          }

          v5 += 56;
        }
      }
    }
  }

  else
  {

    Phase::Controller::Generator::Finish(this);
  }
}

void Phase::Controller::Generator::SetPauseState(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 588) != a2)
  {
    Instance = Phase::Logger::GetInstance(a1);
    if (*(Instance + 1636) == 1)
    {
      v5 = **(Phase::Logger::GetInstance(Instance) + 400);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 588) - 1;
        if (v6 > 3)
        {
          v7 = "not paused";
        }

        else
        {
          v7 = off_278B4EF68[v6];
        }

        v8 = *(a1 + 488);
        v9 = *(a1 + 472);
        v10 = *(a1 + 296);
        if ((a2 - 1) > 3)
        {
          v11 = "not paused";
        }

        else
        {
          v11 = off_278B4EF68[a2 - 1];
        }

        v12 = 136316674;
        v13 = "CvmGenerator.mm";
        v14 = 1024;
        v15 = 1477;
        v16 = 2048;
        v17 = v8;
        v18 = 2048;
        v19 = v9;
        v20 = 2048;
        v21 = v10;
        v22 = 2080;
        v23 = v7;
        v24 = 2080;
        v25 = v11;
        _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu, submix: %llu, generator: %llu) - pause state changed from '%s' to '%s'", &v12, 0x44u);
      }
    }

    *(a1 + 588) = a2;
  }
}

void Phase::Controller::Generator::SetState(uint64_t a1, unsigned int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  if (*(Instance + 1636) == 1)
  {
    v5 = **(Phase::Logger::GetInstance(Instance) + 400);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 448);
      if (v6 > 4)
      {
        v7 = "<not found>";
      }

      else
      {
        v7 = off_278B4EF88[v6];
      }

      v8 = *(a1 + 488);
      v9 = *(a1 + 472);
      v10 = *(a1 + 296);
      if (a2 > 4)
      {
        v11 = "<not found>";
      }

      else
      {
        v11 = off_278B4EF88[a2];
      }

      v12 = 136316674;
      v13 = "CvmGenerator.mm";
      v14 = 1024;
      v15 = 1414;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      v22 = 2080;
      v23 = v7;
      v24 = 2080;
      v25 = v11;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu, submix: %llu, generator: %llu) - state changed from '%s' to '%s'", &v12, 0x44u);
    }
  }

  *(a1 + 448) = a2;
}

void Phase::Controller::Generator::Play(__n128 *this, const AudioTimeStamp *a2)
{
  v4 = this[28].n128_u32[0];
  if (v4 == 2)
  {
    this[36].n128_u8[8] = 0;
    Phase::Controller::Generator::SetPauseState(this, 0);
    this[28].n128_u8[8] = 1;
    v10 = *&a2->mSampleTime;
    v8 = *&a2->mRateScalar;
    v9 = *&a2->mSMPTETime.mHours;
    this[16] = *&a2->mSMPTETime.mSubframes;
    this[17] = v9;
    this[14] = v10;
    this[15] = v8;
    v10.n128_u64[0] = this[27].n128_u64[0];
    v11 = *(this->n128_u64[0] + 104);

    v11(this, v10);
  }

  else if (v4 == 1)
  {
    this[36].n128_u8[8] = 0;
    Phase::Controller::Generator::SetPauseState(this, 0);
    this[28].n128_u8[8] = 1;
    v5 = *&a2->mSampleTime;
    v6 = *&a2->mRateScalar;
    v7 = *&a2->mSMPTETime.mHours;
    this[16] = *&a2->mSMPTETime.mSubframes;
    this[17] = v7;
    this[14] = v5;
    this[15] = v6;
  }
}

void Phase::Controller::Generator::Pause(Phase::Controller::Generator *this)
{
  if ((*(this + 112) - 1) <= 1)
  {
    *(this + 584) = 1;
    if ((*(this + 113) - 1) <= 1)
    {
      v1 = *(this + 147);
      if (v1)
      {
        v2 = v1 == 4;
      }

      else
      {
        v2 = 1;
      }

      if (v2)
      {
        v3 = 2;
LABEL_9:
        Phase::Controller::Generator::SetPauseState(this, v3);
        return;
      }

      if (v1 == 3)
      {
        v3 = 1;
        goto LABEL_9;
      }
    }
  }
}

void Phase::Controller::Generator::Resume(Phase::Controller::Generator *this, const AudioTimeStamp *a2)
{
  if ((*(this + 112) - 1) <= 1)
  {
    Phase::Controller::Generator::SetSessionState(this, 0);
    *(this + 584) = 0;
    v4 = *&a2->mSampleTime;
    v5 = *&a2->mRateScalar;
    v6 = *&a2->mSMPTETime.mHours;
    *(this + 16) = *&a2->mSMPTETime.mSubframes;
    *(this + 17) = v6;
    *(this + 14) = v4;
    *(this + 15) = v5;
    if ((*(this + 113) - 1) <= 1 && (*(this + 585) & 1) == 0)
    {
      v7 = *(this + 147);
      if (v7 == 1)
      {
        v8 = 3;
        goto LABEL_9;
      }

      if (v7 == 2 && (a2->mFlags & 3) != 0)
      {
        v8 = 4;
LABEL_9:
        Phase::Controller::Generator::SetPauseState(this, v8);
        *(this + 456) = 1;
      }
    }
  }
}

void Phase::Controller::Generator::SetSessionState(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 460) != a2)
  {
    Instance = Phase::Logger::GetInstance(a1);
    if (*(Instance + 1636) == 1)
    {
      v5 = **(Phase::Logger::GetInstance(Instance) + 400);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 488);
        v7 = *(a1 + 472);
        v8 = *(a1 + 296);
        v9 = *(a1 + 460);
        v10 = "<not found>";
        if (v9 == 1)
        {
          v11 = "interrupted";
        }

        else
        {
          v11 = "<not found>";
        }

        if (v9)
        {
          v12 = v11;
        }

        else
        {
          v12 = "active";
        }

        v13 = 136316674;
        v14 = "CvmGenerator.mm";
        v15 = 1024;
        if (a2 == 1)
        {
          v10 = "interrupted";
        }

        v16 = 1459;
        v17 = 2048;
        if (!a2)
        {
          v10 = "active";
        }

        v18 = v6;
        v19 = 2048;
        v20 = v7;
        v21 = 2048;
        v22 = v8;
        v23 = 2080;
        v24 = v12;
        v25 = 2080;
        v26 = v10;
        _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu, submix: %llu, generator: %llu) - session state changed from '%s' to '%s'", &v13, 0x44u);
      }
    }

    *(a1 + 460) = a2;
  }
}

void Phase::Controller::Generator::SessionPause(Phase::Controller::Generator *this)
{
  if ((*(this + 584) & 1) == 0)
  {
    (*(*this + 24))(this);

    Phase::Controller::Generator::SetSessionState(this, 1);
  }
}

void Phase::Controller::Generator::ClientEnginePause(Phase::Controller::Generator *this)
{
  if ((*(this + 112) - 1) <= 1 && (*(this + 113) - 1) <= 1)
  {
    *(this + 585) = 1;
    v1 = *(this + 147);
    if (v1)
    {
      v2 = v1 == 4;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      v3 = 2;
LABEL_9:
      Phase::Controller::Generator::SetPauseState(this, v3);
      return;
    }

    if (v1 == 3)
    {
      v3 = 1;
      goto LABEL_9;
    }
  }
}

void Phase::Controller::Generator::ClientEngineStart(Phase::Controller::Generator *this)
{
  if ((*(this + 112) - 1) <= 1)
  {
    *(this + 585) = 0;
    if ((*(this + 113) - 1) <= 1 && (*(this + 584) & 1) == 0 && (*(this + 147) - 1) <= 1)
    {
      Phase::Controller::Generator::SetPauseState(this, 3);
    }
  }
}

void Phase::Controller::Generator::Stop(Phase::Controller::Generator *this)
{
  v2 = *(this + 112);
  if (v2 == 2)
  {
    (*(*this + 112))(this, 0);
  }

  else
  {
    if (v2 != 1)
    {
      if (!v2)
      {

        Phase::Controller::Generator::Finish(this);
      }

      return;
    }

    (*(*this + 112))(this, 0);
    (*(**(this + 5) + 16))(*(this + 5), *(this + 37), *(this + 38));
  }

  Phase::Controller::Generator::SetState(this, 3u);
}

void Phase::Controller::Generator::SetSleepState(uint64_t a1, unsigned int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  if (*(Instance + 1636) == 1)
  {
    v5 = **(Phase::Logger::GetInstance(Instance) + 400);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 580);
      if (v6 > 2)
      {
        v7 = "<not found>";
      }

      else
      {
        v7 = off_278B4EFB0[v6];
      }

      v8 = *(a1 + 488);
      v9 = *(a1 + 472);
      v10 = *(a1 + 296);
      if (a2 > 2)
      {
        v11 = "<not found>";
      }

      else
      {
        v11 = off_278B4EFB0[a2];
      }

      v12 = 136316674;
      v13 = "CvmGenerator.mm";
      v14 = 1024;
      v15 = 1440;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      v22 = 2080;
      v23 = v7;
      v24 = 2080;
      v25 = v11;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu, submix: %llu, generator: %llu) - sleep state changed from '%s' to '%s'", &v12, 0x44u);
    }
  }

  *(a1 + 580) = a2;
}

void Phase::Controller::Generator::SetParameter(Phase::Controller::Generator *this, unint64_t a2, double a3, int a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 39, &v18);
  if (v7)
  {
    v8 = v7;
    v9 = Phase::Controller::sClamp<double>(v7, a3, v7[3], v7[4]);
    if (v9 != v8[6])
    {
      v8[6] = v9;
      *(v8 + 56) = 1;
    }

    if (a4)
    {
      *(v8 + 56) = 1;
    }

    return;
  }

  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 10, &v18);
  if (!v10)
  {
    v13 = **(Phase::Logger::GetInstance(0) + 400);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 136315650;
    v20 = "CvmGenerator.mm";
    v21 = 1024;
    v22 = 722;
    v23 = 2048;
    v24 = v18;
    v14 = "%25s:%-5d Generator:SetParameter: was called with an invalid inParameterId %lld!";
    goto LABEL_12;
  }

  v11 = v10;
  v12 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 15, &v18);
  if (v12)
  {
    v13 = **(Phase::Logger::GetInstance(v12) + 400);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 136315650;
    v20 = "CvmGenerator.mm";
    v21 = 1024;
    v22 = 716;
    v23 = 2048;
    v24 = v18;
    v14 = "%25s:%-5d Generator:SetParameter: was called with an illegal temporal inParameterId %lld!";
LABEL_12:
    _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_DEBUG, v14, buf, 0x1Cu);
    return;
  }

  v15 = *(this + 20);
  v16 = *(this + 21);
  if (v15 != v16)
  {
    v17 = *(v11 + 6);
    do
    {
      Phase::Controller::CvmVoiceData::SetParameter(v15, v17, a3, a4);
      v15 = (v15 + 88);
    }

    while (v15 != v16);
  }
}

double Phase::Controller::Generator::GetGain(Phase::Controller::Generator *this)
{
  CorrectionGain = Phase::Controller::Generator::GetCorrectionGain(this);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(this + 39, qword_278B4EEB8);
  if (!v3)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return CorrectionGain * v3[6] * *(this + 47);
}

double Phase::Controller::Generator::GetCorrectionGain(Phase::Controller::Generator *this)
{
  v1 = *(this + 24);
  if (!v1)
  {
    return *(this + 25);
  }

  v2 = *(this + 2);
  if (v1 == 2)
  {
    v4 = *(this + 25);
    return exp((v4 - (*(v2 + 24) + *(this + 26))) * 10.0 / 10.0 * 0.115129255);
  }

  result = 1.0;
  if (v1 == 1)
  {
    v4 = *(v2 + 64) + *(this + 25);
    return exp((v4 - (*(v2 + 24) + *(this + 26))) * 10.0 / 10.0 * 0.115129255);
  }

  return result;
}

void Phase::Controller::Generator::Update(Phase::Controller::Generator *this, uint64_t a2, int a3)
{
  v6 = *(this + 464);
  *(this + 464) = 0;
  if (v6 == 1)
  {
    Phase::Controller::Generator::SetVoiceState(this, 0);
  }

  v7 = *(this + 112);
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1 || a3 == 0)
      {
        return;
      }

      (*(**(this + 5) + 16))(*(this + 5), *(this + 37), *(this + 38));
      if (!v6)
      {
        Phase::Controller::Generator::DistanceCull(this);
        v10 = *(this + 145);
        if (!v10)
        {
          if (!*(this + 147))
          {
            (*(*this + 104))(this, *(this + 54));
            if (!Phase::Controller::ShouldWaitForTimestamp(*(a2 + 16), this + 224, *(a2 + 8)))
            {
              Phase::Controller::Generator::StartWaitingVoice(this);
            }
          }

          goto LABEL_71;
        }

        if (v10 > 2 || *(this + 147))
        {
LABEL_71:

          Phase::Controller::Generator::SetState(this, 2u);
          return;
        }

        v11 = *(this + 53);
        if (v11 == 1)
        {
          *(this + 54) = 0;
          v9.n128_u64[0] = 0;
          (*(*this + 104))(this, v9);
        }

        else
        {
          if (v11 == 3)
          {
            v9.n128_u64[0] = *(this + 54);
          }

          else
          {
            if (v11 != 2)
            {
LABEL_70:
              Phase::Controller::Generator::SetSleepState(this, 0);
              goto LABEL_71;
            }

            v9.n128_f64[0] = (*(*this + 96))(this, 2, *(this + 54));
            *(this + 54) = v9.n128_u64[0];
          }

          (*(*this + 104))(this, v9);
        }

        if (!Phase::Controller::ShouldWaitForTimestamp(*(a2 + 16), this + 224, *(a2 + 8)))
        {
          Phase::Controller::Generator::StartWaitingVoice(this);
        }

        goto LABEL_70;
      }

      goto LABEL_32;
    }

    goto LABEL_19;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
      return;
    }

LABEL_19:
    if ((v6 & 1) == 0 && *(this + 113))
    {
      return;
    }

    goto LABEL_32;
  }

  if (*(this + 113) == 1)
  {
    v12 = *(this + 70);
    if (v12)
    {
      if (*(this + 28) >= *(a2 + 8) + 1536.0)
      {
        goto LABEL_29;
      }
    }

    else if ((v12 & 2) != 0)
    {
      v13 = *(a2 + 16);
      v14 = *(this + 29);
      if (v14 >= [MEMORY[0x277CB8428] hostTimeForSeconds:0.032] + v13)
      {
        goto LABEL_29;
      }
    }

    Phase::Controller::Generator::StartWaitingVoice(this);
  }

LABEL_29:
  if (v6)
  {
    v15 = *(this + 145);
    if (v15 == 2)
    {
      Phase::Controller::Generator::SetSleepState(this, 0);
    }

    else if (!v15)
    {
LABEL_32:

      Phase::Controller::Generator::Finish(this);
      return;
    }
  }

  v16 = *(this + 147);
  switch(v16)
  {
    case 4:
      Phase::Controller::DVM23::DvmAdapter::SetGeneratorPlayState(*(this + 4), *(this + 37), *(this + 38), 2u);
      Phase::Controller::Generator::SetPauseState(this, 3);
      v22 = *(this + 70);
      if (v22)
      {
        if (*(this + 28) >= *(a2 + 8) + 1536.0)
        {
          break;
        }
      }

      else if ((v22 & 2) != 0)
      {
        v23 = *(a2 + 16);
        v24 = *(this + 29);
        if (v24 >= [MEMORY[0x277CB8428] hostTimeForSeconds:0.032] + v23)
        {
          break;
        }
      }

      Phase::Controller::DVM23::DvmAdapter::SetGeneratorPlayState(*(this + 4), *(this + 37), *(this + 38), 3u);
      v17 = this;
      v18 = 0;
      goto LABEL_52;
    case 3:
      v19 = *(this + 70);
      if (v19)
      {
        if (*(this + 28) >= *(a2 + 8) + 1536.0)
        {
          break;
        }
      }

      else if ((v19 & 2) != 0)
      {
        v20 = *(a2 + 16);
        v21 = *(this + 29);
        if (v21 >= [MEMORY[0x277CB8428] hostTimeForSeconds:0.032] + v20)
        {
          break;
        }
      }

      Phase::Controller::DVM23::DvmAdapter::SetGeneratorPlayState(*(this + 4), *(this + 37), *(this + 38), 3u);
      Phase::Controller::Generator::SetPauseState(this, 0);
      *(this + 456) = 1;
      break;
    case 2:
      Phase::Controller::DVM23::DvmAdapter::SetGeneratorPlayState(*(this + 4), *(this + 37), *(this + 38), 2u);
      v17 = this;
      v18 = 1;
LABEL_52:
      Phase::Controller::Generator::SetPauseState(v17, v18);
      break;
  }

  if (*(this + 113) != 1 && !*(this + 147))
  {
    Phase::Controller::Generator::DistanceCull(this);
    if (!*(this + 145))
    {
      v25 = *(this + 113);
      if (v25 == 2)
      {
        Phase::Controller::Generator::UpdateParameters(this, *a2, *(this + 456));
        *(this + 456) = 0;
      }

      else if (!v25)
      {
        Phase::Controller::Generator::SetState(this, 1u);
      }
    }

    *(this + 54) = *a2 + *(this + 54);
  }
}