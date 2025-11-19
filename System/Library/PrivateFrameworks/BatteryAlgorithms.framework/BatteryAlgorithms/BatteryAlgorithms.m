id OnDeviceACAMUtility::createRuntimeOptions(OnDeviceACAMUtility *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OnDeviceACAMUtility::createRuntimeOptions();
  }

  v2 = [v1 objectForKey:@"batteryalgorithm"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"OnDeviceACAM"];
    if (v4)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = [&unk_2853A81F8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        v6 = *v16;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v16 != v6)
            {
              objc_enumerationMutation(&unk_2853A81F8);
            }

            v8 = *(*(&v15 + 1) + 8 * i);
            v9 = [v4 objectForKey:v8];
            v10 = v9 == 0;

            if (v10)
            {
              v11 = [&unk_2853A81F8 objectForKeyedSubscript:v8];
              [v4 setObject:v11 forKeyedSubscript:v8];
            }
          }

          v5 = [&unk_2853A81F8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v5);
      }

      v12 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];
    }

    else
    {
      v12 = &unk_2853A81F8;
    }
  }

  else
  {
    v12 = &unk_2853A81F8;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void sub_241A73EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_241A746B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, char a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, ACAMPerformanceModelParameter *a59)
{
  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly(&a11);
  std::tuple<unsigned int,AugmentedBatteryHealthLib::ABHWeekly>::~tuple(&a21);
  a21 = &a35;
  std::vector<AugmentedBatteryHealthLib::BDCWeekly>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = &a38;
  std::vector<AugmentedBatteryHealthLib::BDCWeekly>::__destroy_vector::operator()[abi:ne200100](&a21);
  if (__p)
  {
    a42 = __p;
    operator delete(__p);
  }

  if (a44)
  {
    a45 = a44;
    operator delete(a44);
  }

  ACAMUtility::ACAMParameterPack::~ACAMParameterPack(&a59);

  _Unwind_Resume(a1);
}

void AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly(AugmentedBatteryHealthLib::ABHWeekly *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void sub_241A749E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly(&a9);

  _Unwind_Resume(a1);
}

void sub_241A74E04(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void ACAMUtility::ACAMParameterPack::ACAMParameterPack(uint64_t a1, ACAMUtility *this, int a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = xmmword_241AB0FB0;
  *(a1 + 88) = unk_241AB1400;
  *(a1 + 104) = xmmword_241AB1410;
  *(a1 + 120) = unk_241AB1420;
  *(a1 + 136) = xmmword_241AB1430;
  *(a1 + 72) = xmmword_241AB13F0;
  *(a1 + 2848) = xmmword_241AB0FC0;
  *(a1 + 2864) = xmmword_241AB0FD0;
  *(a1 + 2896) = xmmword_241AB0FE0;
  *(a1 + 2928) = xmmword_241AB0FF0;
  *(a1 + 2944) = xmmword_241AB1000;
  *(a1 + 2992) = xmmword_241AB1010;
  *(a1 + 3008) = xmmword_241AB1020;
  *(a1 + 3024) = xmmword_241AB1440;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0x3FF4CCCCCCCCCCCDLL;
  *(a1 + 2840) = 0x3FF0000000000000;
  *(a1 + 2880) = 0x3F9999999999999ALL;
  *(a1 + 2888) = 6;
  *(a1 + 2912) = 10;
  *(a1 + 2920) = 0x3F76872B020C49BALL;
  *(a1 + 2960) = 0x405E000000000000;
  *(a1 + 2968) = 5;
  *(a1 + 2976) = 20000;
  *(a1 + 2984) = 0x3FDD70A3D70A3D71;
  *(a1 + 3040) = unk_241AB1450;
  *(a1 + 3056) = xmmword_241AB1460;
  *(a1 + 3072) = xmmword_241AB1030;
  *(a1 + 3088) = xmmword_241AB1040;
  *(a1 + 3104) = xmmword_241AB1050;
  *(a1 + 3120) = 0x3EE4F8B588E368F1;
  *(a1 + 3128) = 1000;
  *(a1 + 3136) = 10000;
  *(a1 + 3144) = 0x3F50624DD2F1A9FCLL;
  *(a1 + 3152) = xmmword_241AB1060;
  *(a1 + 3168) = xmmword_241AB1070;
  *(a1 + 3184) = xmmword_241AB1080;
  *(a1 + 3200) = xmmword_241AB1090;
  v3 = vdupq_n_s64(1uLL);
  *(a1 + 3216) = v3;
  *(a1 + 3232) = v3;
  *(a1 + 3248) = v3;
  *(a1 + 3264) = 1;
  *(a1 + 3272) = 0u;
  *(a1 + 3288) = 0x3EC77CF44765195FLL;
  *(a1 + 3296) = xmmword_241AB10A0;
  *(a1 + 3312) = xmmword_241AB10B0;
  *(a1 + 3328) = vdupq_n_s64(0x3EFD5C31593E5FB7uLL);
  *(a1 + 3344) = xmmword_241AB10C0;
  *(a1 + 3360) = vdupq_n_s64(0x3F1A36E2EB1C432DuLL);
  *(a1 + 3376) = xmmword_241AB10D0;
  *(a1 + 3392) = 1;
  *(a1 + 3394) = 0;
  *(a1 + 3400) = 0x3FBEB851EB851EB8;
  *(a1 + 3408) = xmmword_241AB10E0;
  *(a1 + 3424) = 1;
  *(a1 + 3432) = 0x4082C00000000000;
  *(a1 + 3440) = xmmword_241AB10F0;
  *(a1 + 3456) = xmmword_241AB1100;
  *(a1 + 3472) = xmmword_241AB1110;
  *(a1 + 3488) = vdupq_n_s64(0x3FE999999999999AuLL);
  *(a1 + 3504) = xmmword_241AB1120;
  *(a1 + 3520) = xmmword_241AB1130;
  *(a1 + 3536) = xmmword_241AB1130;
  *(a1 + 3552) = xmmword_241AB1130;
  *(a1 + 3568) = 0x4034000000000000;
  if (*(this + 23) < 0)
  {
    this = *this;
  }

  v4 = ACAMUtility::string_hash(this, 0, a3);
  if (v4 <= -1404472590)
  {
    if (v4 <= -1404482317)
    {
      if (v4 <= -1546433661)
      {
        switch(v4)
        {
          case -1546437851:
            operator new();
          case -1546437566:
            operator new();
          case -1546436649:
            operator new();
        }
      }

      else if (v4 > -1546430196)
      {
        if (v4 == -1546430195)
        {
          operator new();
        }

        if (v4 == -1404483386)
        {
          operator new();
        }
      }

      else
      {
        if (v4 == -1546433660)
        {
          operator new();
        }

        if (v4 == -1546433627)
        {
          operator new();
        }
      }
    }

    else if (v4 > -1404476901)
    {
      if (v4 > -1404476550)
      {
        if (v4 == -1404476549)
        {
          operator new();
        }

        if (v4 == -1404472622)
        {
          operator new();
        }
      }

      else
      {
        if (v4 == -1404476900)
        {
          operator new();
        }

        if (v4 == -1404476600)
        {
          operator new();
        }
      }
    }

    else if (v4 > -1404478188)
    {
      if (v4 == -1404478187)
      {
        operator new();
      }

      if (v4 == -1404478092)
      {
        operator new();
      }
    }

    else
    {
      if (v4 == -1404482316)
      {
        operator new();
      }

      if (v4 == -1404482093)
      {
        operator new();
      }
    }
  }

  else if (v4 > 465871699)
  {
    if (v4 > 899317115)
    {
      if (v4 > 899679629)
      {
        if (v4 == 899679630)
        {
          operator new();
        }

        if (v4 == 2072405230)
        {
          operator new();
        }
      }

      else
      {
        if (v4 == 899317116)
        {
          operator new();
        }

        if (v4 == 899678921)
        {
          operator new();
        }
      }
    }

    else if (v4 > 505147593)
    {
      if (v4 == 505147594)
      {
        operator new();
      }

      if (v4 == 899307579)
      {
        operator new();
      }
    }

    else
    {
      if (v4 == 465871700)
      {
        operator new();
      }

      if (v4 == 504504959)
      {
        operator new();
      }
    }
  }

  else if (v4 > -911129380)
  {
    if (v4 > -376359)
    {
      if (v4 == -376358)
      {
        operator new();
      }

      if (v4 == 411695)
      {
        operator new();
      }
    }

    else
    {
      if (v4 == -911129379)
      {
        operator new();
      }

      if (v4 == -367356857)
      {
        operator new();
      }
    }
  }

  else if (v4 > -911133868)
  {
    if (v4 == -911133867)
    {
      operator new();
    }

    if (v4 == -911129554)
    {
      operator new();
    }
  }

  else
  {
    if (v4 == -1404472589)
    {
      operator new();
    }

    if (v4 == -1404472519)
    {
      operator new();
    }
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Unrecognized Program. Using default parameters.\n", 48);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(v7, MEMORY[0x277D82680]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(v7);
  std::ostream::put();
  std::ostream::flush();
  operator new();
}

uint64_t ACAMUtility::string_hash(ACAMUtility *this, const char *a2, int a3)
{
  if (*(this + a2))
  {
    return (33 * ACAMUtility::string_hash(this, (a2 + 1), a3)) ^ *(this + a2);
  }

  else
  {
    return 5381;
  }
}

void ACAMPerformanceModelParameter::ACAMPerformanceModelParameter<190,149,3,16,2,103,3>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 336) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 16) = xmmword_241AB1140;
  *(a1 + 32) = xmmword_241AB1150;
  *(a1 + 48) = xmmword_241AB1160;
  *(a1 + 64) = xmmword_241AB1170;
  *(a1 + 80) = xmmword_241AB1180;
  *(a1 + 96) = xmmword_241AB1190;
  v6 = *a2 > a2[189];
  *(a1 + 112) = a2;
  *(a1 + 120) = 190;
  *(a1 + 128) = v6;
  v7 = *a3 > a3[148];
  *(a1 + 136) = a2 + 190;
  *(a1 + 144) = a3;
  *(a1 + 152) = 149;
  *(a1 + 160) = v7;
  v8 = *a4 > a4[2];
  *(a1 + 168) = a3 + 149;
  *(a1 + 176) = a4;
  *(a1 + 184) = 3;
  *(a1 + 192) = v8;
  v9 = *a5 > a5[15];
  *(a1 + 200) = a5;
  *(a1 + 208) = 16;
  *(a1 + 216) = v9;
  v10 = *a6 > a6[1];
  *(a1 + 224) = a6;
  *(a1 + 232) = 2;
  *(a1 + 240) = v10;
  operator new[]();
}

void ACAMPerformanceModelParameter::ACAMPerformanceModelParameter<192,149,3,16,2,103,3>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 336) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 16) = xmmword_241AB11C0;
  *(a1 + 32) = xmmword_241AB11D0;
  *(a1 + 48) = xmmword_241AB11E0;
  *(a1 + 64) = xmmword_241AB11F0;
  *(a1 + 80) = xmmword_241AB1200;
  *(a1 + 96) = xmmword_241AB1210;
  v6 = *a2 > a2[191];
  *(a1 + 112) = a2;
  *(a1 + 120) = 192;
  *(a1 + 128) = v6;
  v7 = *a3 > a3[148];
  *(a1 + 136) = a2 + 192;
  *(a1 + 144) = a3;
  *(a1 + 152) = 149;
  *(a1 + 160) = v7;
  v8 = *a4 > a4[2];
  *(a1 + 168) = a3 + 149;
  *(a1 + 176) = a4;
  *(a1 + 184) = 3;
  *(a1 + 192) = v8;
  v9 = *a5 > a5[15];
  *(a1 + 200) = a5;
  *(a1 + 208) = 16;
  *(a1 + 216) = v9;
  v10 = *a6 > a6[1];
  *(a1 + 224) = a6;
  *(a1 + 232) = 2;
  *(a1 + 240) = v10;
  operator new[]();
}

void ACAMPerformanceModelParameter::ACAMPerformanceModelParameter<190,149,3,25,2,103,3>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 336) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 16) = xmmword_241AB1140;
  *(a1 + 32) = xmmword_241AB1220;
  *(a1 + 48) = xmmword_241AB1230;
  *(a1 + 64) = xmmword_241AB1240;
  *(a1 + 80) = xmmword_241AB1250;
  *(a1 + 96) = xmmword_241AB1260;
  v6 = *a2 > a2[189];
  *(a1 + 112) = a2;
  *(a1 + 120) = 190;
  *(a1 + 128) = v6;
  v7 = *a3 > a3[148];
  *(a1 + 136) = a2 + 190;
  *(a1 + 144) = a3;
  *(a1 + 152) = 149;
  *(a1 + 160) = v7;
  v8 = *a4 > a4[2];
  *(a1 + 168) = a3 + 149;
  *(a1 + 176) = a4;
  *(a1 + 184) = 3;
  *(a1 + 192) = v8;
  v9 = *a5 > a5[24];
  *(a1 + 200) = a5;
  *(a1 + 208) = 25;
  *(a1 + 216) = v9;
  v10 = *a6 > a6[1];
  *(a1 + 224) = a6;
  *(a1 + 232) = 2;
  *(a1 + 240) = v10;
  operator new[]();
}

void ACAMPerformanceModelParameter::ACAMPerformanceModelParameter<234,148,3,25,2,103,3>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 336) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 16) = xmmword_241AB1280;
  *(a1 + 32) = xmmword_241AB1290;
  *(a1 + 48) = xmmword_241AB12A0;
  *(a1 + 64) = xmmword_241AB12B0;
  *(a1 + 80) = xmmword_241AB12C0;
  *(a1 + 96) = xmmword_241AB12D0;
  v6 = *a2 > a2[233];
  *(a1 + 112) = a2;
  *(a1 + 120) = 234;
  *(a1 + 128) = v6;
  v7 = *a3 > a3[147];
  *(a1 + 136) = a2 + 234;
  *(a1 + 144) = a3;
  *(a1 + 152) = 148;
  *(a1 + 160) = v7;
  v8 = *a4 > a4[2];
  *(a1 + 168) = a3 + 148;
  *(a1 + 176) = a4;
  *(a1 + 184) = 3;
  *(a1 + 192) = v8;
  v9 = *a5 > a5[24];
  *(a1 + 200) = a5;
  *(a1 + 208) = 25;
  *(a1 + 216) = v9;
  v10 = *a6 > a6[1];
  *(a1 + 224) = a6;
  *(a1 + 232) = 2;
  *(a1 + 240) = v10;
  operator new[]();
}

void ACAMPerformanceModelParameter::ACAMPerformanceModelParameter<198,149,3,19,2,103,3>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 336) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 16) = xmmword_241AB12E0;
  *(a1 + 32) = xmmword_241AB12F0;
  *(a1 + 48) = xmmword_241AB1300;
  *(a1 + 64) = xmmword_241AB1310;
  *(a1 + 80) = xmmword_241AB1320;
  *(a1 + 96) = xmmword_241AB1330;
  v6 = *a2 > a2[197];
  *(a1 + 112) = a2;
  *(a1 + 120) = 198;
  *(a1 + 128) = v6;
  v7 = *a3 > a3[148];
  *(a1 + 136) = a2 + 198;
  *(a1 + 144) = a3;
  *(a1 + 152) = 149;
  *(a1 + 160) = v7;
  v8 = *a4 > a4[2];
  *(a1 + 168) = a3 + 149;
  *(a1 + 176) = a4;
  *(a1 + 184) = 3;
  *(a1 + 192) = v8;
  v9 = *a5 > a5[18];
  *(a1 + 200) = a5;
  *(a1 + 208) = 19;
  *(a1 + 216) = v9;
  v10 = *a6 > a6[1];
  *(a1 + 224) = a6;
  *(a1 + 232) = 2;
  *(a1 + 240) = v10;
  operator new[]();
}

void ACAMPerformanceModelParameter::ACAMPerformanceModelParameter<190,149,3,19,2,103,3>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 336) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 16) = xmmword_241AB1140;
  *(a1 + 32) = xmmword_241AB1350;
  *(a1 + 48) = xmmword_241AB1360;
  *(a1 + 64) = xmmword_241AB1370;
  *(a1 + 80) = xmmword_241AB1380;
  *(a1 + 96) = xmmword_241AB1390;
  v6 = *a2 > a2[189];
  *(a1 + 112) = a2;
  *(a1 + 120) = 190;
  *(a1 + 128) = v6;
  v7 = *a3 > a3[148];
  *(a1 + 136) = a2 + 190;
  *(a1 + 144) = a3;
  *(a1 + 152) = 149;
  *(a1 + 160) = v7;
  v8 = *a4 > a4[2];
  *(a1 + 168) = a3 + 149;
  *(a1 + 176) = a4;
  *(a1 + 184) = 3;
  *(a1 + 192) = v8;
  v9 = *a5 > a5[18];
  *(a1 + 200) = a5;
  *(a1 + 208) = 19;
  *(a1 + 216) = v9;
  v10 = *a6 > a6[1];
  *(a1 + 224) = a6;
  *(a1 + 232) = 2;
  *(a1 + 240) = v10;
  operator new[]();
}

void ACAMPerformanceModelParameter::ACAMPerformanceModelParameter<198,149,3,16,2,103,3>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 336) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 16) = xmmword_241AB12E0;
  *(a1 + 32) = xmmword_241AB13A0;
  *(a1 + 48) = xmmword_241AB13B0;
  *(a1 + 64) = xmmword_241AB13C0;
  *(a1 + 80) = xmmword_241AB13D0;
  *(a1 + 96) = xmmword_241AB13E0;
  v6 = *a2 > a2[197];
  *(a1 + 112) = a2;
  *(a1 + 120) = 198;
  *(a1 + 128) = v6;
  v7 = *a3 > a3[148];
  *(a1 + 136) = a2 + 198;
  *(a1 + 144) = a3;
  *(a1 + 152) = 149;
  *(a1 + 160) = v7;
  v8 = *a4 > a4[2];
  *(a1 + 168) = a3 + 149;
  *(a1 + 176) = a4;
  *(a1 + 184) = 3;
  *(a1 + 192) = v8;
  v9 = *a5 > a5[15];
  *(a1 + 200) = a5;
  *(a1 + 208) = 16;
  *(a1 + 216) = v9;
  v10 = *a6 > a6[1];
  *(a1 + 224) = a6;
  *(a1 + 232) = 2;
  *(a1 + 240) = v10;
  operator new[]();
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245CF6670](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x245CF6680](v13);
  return a1;
}

void sub_241A7A3D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x245CF6680](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x241A7A3B8);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_241A7A60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278D050C0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241A7A778(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::tuple<unsigned int,AugmentedBatteryHealthLib::ABHWeekly>::~tuple(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void ACAMUtility::ACAMParameterPack::~ACAMParameterPack(ACAMPerformanceModelParameter **this)
{
  v2 = *this;
  if (v2)
  {
    ACAMPerformanceModelParameter::~ACAMPerformanceModelParameter(v2);
    MEMORY[0x245CF6740]();
  }

  v3 = this[1];
  if (v3)
  {
    MEMORY[0x245CF6740](v3, 0x1000C406AC1123ELL);
  }

  v4 = this[2];
  if (v4)
  {
    MEMORY[0x245CF6740](v4, 0x1000C4003173957);
  }

  v5 = this[3];
  if (v5)
  {
    MEMORY[0x245CF6740](v5, 0x1000C400A747E1ELL);
  }

  v6 = this[4];
  if (v6)
  {
    MEMORY[0x245CF6740](v6, 0x1000C402D6961C2);
  }
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::vector<AugmentedBatteryHealthLib::BDCWeekly>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<AugmentedBatteryHealthLib::BDCWeekly>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<AugmentedBatteryHealthLib::BDCWeekly>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void *std::vector<AugmentedBatteryHealthLib::DailyData>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::DailyData>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::DailyData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<AugmentedBatteryHealthLib::BDCWeekly>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::BDCWeekly>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_241A7AD5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<AugmentedBatteryHealthLib::BDCWeekly>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<AugmentedBatteryHealthLib::BDCWeekly>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<AugmentedBatteryHealthLib::BDCWeekly>::__emplace_back_slow_path<AugmentedBatteryHealthLib::BDCWeekly const&>(a1, a2);
  }

  else
  {
    std::vector<AugmentedBatteryHealthLib::BDCWeekly>::__construct_one_at_end[abi:ne200100]<AugmentedBatteryHealthLib::BDCWeekly const&>(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::BDCWeekly>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::BDCWeekly>,AugmentedBatteryHealthLib::BDCWeekly*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AugmentedBatteryHealthLib::BDCWeekly>,AugmentedBatteryHealthLib::BDCWeekly*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AugmentedBatteryHealthLib::BDCWeekly>,AugmentedBatteryHealthLib::BDCWeekly*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<AugmentedBatteryHealthLib::BDCWeekly>,AugmentedBatteryHealthLib::BDCWeekly*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<AugmentedBatteryHealthLib::BDCWeekly>,AugmentedBatteryHealthLib::BDCWeekly*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 32;
  }
}

uint64_t std::__split_buffer<AugmentedBatteryHealthLib::BDCWeekly>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<AugmentedBatteryHealthLib::BDCWeekly>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<AugmentedBatteryHealthLib::BDCWeekly>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<AugmentedBatteryHealthLib::BDCWeekly>::__construct_one_at_end[abi:ne200100]<AugmentedBatteryHealthLib::BDCWeekly const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  v4 = (v3 + 1);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v3[3] = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  *(a1 + 8) = v3 + 4;
}

uint64_t std::vector<AugmentedBatteryHealthLib::BDCWeekly>::__emplace_back_slow_path<AugmentedBatteryHealthLib::BDCWeekly const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::BDCWeekly>>(a1, v7);
  }

  v8 = 32 * v2;
  v17 = 0;
  v18 = 32 * v2;
  v19 = (32 * v2);
  *(32 * v2) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((32 * v2 + 8), *(a2 + 8), *(a2 + 16));
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v9 = *(a2 + 8);
    *(32 * v2 + 0x18) = *(a2 + 24);
    *(32 * v2 + 8) = v9;
    v10 = 32 * v2;
  }

  *&v19 = v10 + 32;
  v11 = a1[1];
  v12 = v8 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::BDCWeekly>,AugmentedBatteryHealthLib::BDCWeekly*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<AugmentedBatteryHealthLib::BDCWeekly>::~__split_buffer(&v17);
  return v16;
}

void sub_241A7B154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<AugmentedBatteryHealthLib::BDCWeekly>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<AugmentedBatteryHealthLib::ACAMDailyData>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::ACAMDailyData>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::ACAMDailyData>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<AugmentedBatteryHealthLib::ACAMWeeklyData>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::BDCWeekly>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_241A7B2F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<AugmentedBatteryHealthLib::BDCWeekly>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<AugmentedBatteryHealthLib::ACAMWeeklyData>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<AugmentedBatteryHealthLib::ACAMWeeklyData>::__emplace_back_slow_path<AugmentedBatteryHealthLib::ACAMWeeklyData const&>(a1, a2);
  }

  else
  {
    std::vector<AugmentedBatteryHealthLib::ACAMWeeklyData>::__construct_one_at_end[abi:ne200100]<AugmentedBatteryHealthLib::ACAMWeeklyData const&>(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::ACAMWeeklyData>,AugmentedBatteryHealthLib::ACAMWeeklyData*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AugmentedBatteryHealthLib::ACAMWeeklyData>,AugmentedBatteryHealthLib::ACAMWeeklyData*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AugmentedBatteryHealthLib::ACAMWeeklyData>,AugmentedBatteryHealthLib::ACAMWeeklyData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<AugmentedBatteryHealthLib::BDCWeekly>,AugmentedBatteryHealthLib::BDCWeekly*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::vector<AugmentedBatteryHealthLib::ACAMWeeklyData>::__construct_one_at_end[abi:ne200100]<AugmentedBatteryHealthLib::ACAMWeeklyData const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  v4 = (v3 + 1);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v3[3] = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  *(a1 + 8) = v3 + 4;
}

uint64_t std::vector<AugmentedBatteryHealthLib::ACAMWeeklyData>::__emplace_back_slow_path<AugmentedBatteryHealthLib::ACAMWeeklyData const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::BDCWeekly>>(a1, v7);
  }

  v8 = 32 * v2;
  v17 = 0;
  v18 = 32 * v2;
  v19 = (32 * v2);
  *(32 * v2) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((32 * v2 + 8), *(a2 + 8), *(a2 + 16));
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v9 = *(a2 + 8);
    *(32 * v2 + 0x18) = *(a2 + 24);
    *(32 * v2 + 8) = v9;
    v10 = 32 * v2;
  }

  *&v19 = v10 + 32;
  v11 = a1[1];
  v12 = v8 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::ACAMWeeklyData>,AugmentedBatteryHealthLib::ACAMWeeklyData*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<AugmentedBatteryHealthLib::BDCWeekly>::~__split_buffer(&v17);
  return v16;
}

void sub_241A7B5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<AugmentedBatteryHealthLib::BDCWeekly>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

id AugmentedBatteryHealthLib::Serialization::createBDCWeekly(uint64_t a1)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = @"augmentedNCC";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
  v12[0] = v2;
  v11[1] = @"augmentedRdc";
  v3 = BACore::CommonSerialization::convertVectorToNSArray<double>((a1 + 48));
  v12[1] = v3;
  v11[2] = @"augmentedQmax";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v12[2] = v4;
  v11[3] = @"deltaNCC";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v12[3] = v5;
  v11[4] = @"deltaRdc";
  v6 = BACore::CommonSerialization::convertVectorToNSArray<double>((a1 + 8));
  v12[4] = v6;
  v11[5] = @"deltaQmax";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*a1];
  v12[5] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:6];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id BACore::CommonSerialization::convertVectorToNSArray<double>(double **a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:a1[1] - *a1];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = [MEMORY[0x277CCABB0] numberWithDouble:*v3];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 != v4);
  }

  v6 = [v2 copy];

  return v6;
}

{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:a1[1] - *a1];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = [MEMORY[0x277CCABB0] numberWithDouble:*v3];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 != v4);
  }

  v6 = [v2 copy];

  return v6;
}

uint64_t AugmentedBatteryHealthLib::Deserialization::setSMCKeyDataFromDictionary(uint64_t a1, void *a2)
{
  v3 = a2;
  if (BACore::CommonSerialization::validateDataFromDictionary(v3, &unk_2853AFB90, &unk_2853AFBA8, &unk_2853AFB78, v4))
  {
    v5 = [v3 objectForKeyedSubscript:@"AlgoCycleCountDbgData"];
    if (v5)
    {
      v6 = [MEMORY[0x277CBEB68] null];
      if ([v5 isEqual:v6])
      {
      }

      else
      {
        v8 = [v5 length];

        if (v8 == 32)
        {
          v9 = [v5 bytes];
          v10 = *(v9 + 16);
          v11 = *(v9 + 26);
          v12 = *(v9 + 28);

          v13 = [v3 objectForKeyedSubscript:@"CycleCount"];
          [v13 doubleValue];
          *a1 = v14;

          v15 = [v3 objectForKeyedSubscript:@"CycleCountLastQmax"];
          [v15 doubleValue];
          *(a1 + 16) = v16;

          *(a1 + 20) = v11;
          *(a1 + 24) = v12;
          v17.i64[0] = v10;
          v17.i64[1] = HIDWORD(v10);
          *(a1 + 32) = vmulq_f64(vcvtq_f64_u64(v17), vdupq_n_s64(0x3E20000000000000uLL));
          v5 = [MEMORY[0x277CBEAA8] date];
          [v5 timeIntervalSince1970];
          *(a1 + 8) = v18;
          v7 = 1;
LABEL_9:

          goto LABEL_10;
        }
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

uint64_t AugmentedBatteryHealthLib::Deserialization::setACAMDailyDataFromDictionary(void *a1, void *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14[0] = &unk_2853AFF90;
  v4 = BACore::CommonSerialization::getTimestampUpperBound(v3);
  v14[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v7 = BACore::CommonSerialization::validateDataFromDictionary(v3, &unk_2853AFBC0, &unk_2853AFBD8, v5, v6);
  if (v7)
  {
    v8 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"Qmax"];
    [v8 doubleValue];
    a1[1] = v9;

    v10 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"Timestamp"];
    [v10 doubleValue];
    *a1 = v11;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t AugmentedBatteryHealthLib::Deserialization::setACAMWeeklyDataFromDictionary(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = BACore::CommonSerialization::validateDataFromDictionary(v3, &unk_2853AFBF0, 0, 0, v4);
  if (v5)
  {
    v6 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"agedRa"];
    v7 = [v6 UTF8String];
    v8 = strlen(v7);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v14) = v8;
    if (v8)
    {
      memmove(&__dst, v7, v8);
    }

    *(&__dst + v9) = 0;
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = __dst;
    *(a1 + 24) = v14;

    v10 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"Timestamp"];
    [v10 doubleValue];
    *a1 = v11;
  }

  return v5;
}

BOOL AugmentedBatteryHealthLib::Deserialization::setDailyDataFromDictionary(uint64_t a1, void *a2, NSData *a3, double a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v22 = &unk_2853AFFA0;
  v23 = &unk_2853AFFB0;
  v24 = &unk_2853AFF90;
  v25 = &unk_2853AFF90;
  v8 = BACore::CommonSerialization::getTimestampUpperBound(v7);
  v26 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:5];

  v11 = BACore::CommonSerialization::validateDataFromDictionaryWithTeq(v7, &unk_2853AFC08, a3, dbl_2853AFC20, a4, v9, v10);
  if (v11 >= 0.0)
  {
    v12 = [(BACore::CommonSerialization *)v7 objectForKeyedSubscript:@"CycleCount", v22, v23, v24, v25];
    [v12 doubleValue];
    *(a1 + 8) = v13;

    *a1 = v11;
    v14 = [(BACore::CommonSerialization *)v7 objectForKeyedSubscript:@"Timestamp"];
    [v14 doubleValue];
    *(a1 + 16) = v15;

    v16 = [(BACore::CommonSerialization *)v7 objectForKeyedSubscript:@"Qmax0"];
    [v16 doubleValue];
    *(a1 + 24) = v17;

    v18 = [(BACore::CommonSerialization *)v7 objectForKeyedSubscript:@"NominalChargeCapacity"];
    [v18 doubleValue];
    *(a1 + 32) = v19;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11 >= 0.0;
}

uint64_t AugmentedBatteryHealthLib::Deserialization::setWeeklyDataFromDictionary(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = BACore::CommonSerialization::validateDataFromDictionary(v3, &unk_2853AFC38, 0, 0, v4);
  if (v5)
  {
    v6 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"RaTableRaw0"];
    BACore::CommonSerialization::getCppStringFromNSString(v6, &v10);
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = v10;
    *(a1 + 24) = v11;
    HIBYTE(v11) = 0;
    LOBYTE(v10) = 0;

    v7 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"Timestamp"];
    [v7 doubleValue];
    *a1 = v8;
  }

  return v5;
}

void sub_241A7E9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, void *a19, void *a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_241A7F6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  CafeSwellAlgo::BDCInput::~BDCInput(va);

  _Unwind_Resume(a1);
}

void CafeSwellAlgo::BDCInput::~BDCInput(CafeSwellAlgo::BDCInput *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

void *std::vector<CafeSwellAlgo::ACAMDailyData>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<CafeSwellAlgo::ACAMDailyData>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CafeSwellAlgo::ACAMDailyData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_241A81CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  operator delete(v26);

  _Unwind_Resume(a1);
}

void BACore::CommonSerialization::assignNSArrayToCArray<double,91ul>(void *a1, uint64_t a2)
{
  v11 = a1;
  if (v11)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    v4 = [v11 isEqual:v3];

    if ((v4 & 1) == 0)
    {
      v5 = [v11 count];
      v6 = 0;
      if (v5 <= 0x5B)
      {
        v7 = 91;
      }

      else
      {
        v7 = v5;
      }

      do
      {
        v8 = [v11 objectAtIndex:v6];
        [v8 doubleValue];
        v10 = v9;

        *(a2 + 8 * v6++) = v10;
      }

      while (v7 != v6);
    }
  }
}

void sub_241A8290C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  AdaptiveOcvAlgo::BDCOutput::~BDCOutput(&a10);

  AdaptiveOcvAlgo::PersistentState::~PersistentState(&a26);
  _Unwind_Resume(a1);
}

id BACore::CommonSerialization::convertCArrayToNSArray<double,91ul>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:91];
  for (i = 0; i != 728; i += 8)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + i)];
    [v2 addObject:v4];
  }

  v5 = [v2 copy];

  return v5;
}

void sub_241A82C78(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void *AdaptiveOcvAlgo::BDCOutput::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a1 + 3, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a1 + 6, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a1 + 9, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a1 + 12, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  }

  a1[15] = *(a2 + 120);
  return a1;
}

void AdaptiveOcvAlgo::ParameterPack::ParameterPack(void *a1, ACAMUtility *this, int a3)
{
  *a1 = 0;
  if (*(this + 23) < 0)
  {
    this = *this;
  }

  v3 = ACAMUtility::string_hash(this, 0, a3);
  if (v3 <= -911129380)
  {
    if (v3 <= -1404476601)
    {
      if (v3 > -1404482317)
      {
        if (v3 == -1404482316)
        {
          operator new();
        }

        if (v3 == -1404478187)
        {
          operator new();
        }
      }

      else
      {
        if (v3 == -1546437851)
        {
          operator new();
        }

        if (v3 == -1546433660)
        {
          operator new();
        }
      }
    }

    else if (v3 <= -1404472623)
    {
      if (v3 == -1404476600)
      {
        operator new();
      }

      if (v3 == -1404476549)
      {
        operator new();
      }
    }

    else
    {
      switch(v3)
      {
        case -1404472622:
          operator new();
        case -1404472519:
          operator new();
        case -911129554:
          operator new();
      }
    }
  }

  else if (v3 > 899307578)
  {
    if (v3 <= 899678920)
    {
      if (v3 == 899307579)
      {
        operator new();
      }

      if (v3 == 899317116)
      {
        operator new();
      }
    }

    else
    {
      switch(v3)
      {
        case 899678921:
          operator new();
        case 899679630:
          operator new();
        case 2072405230:
LABEL_49:
          operator new();
      }
    }
  }

  else if (v3 <= 411694)
  {
    if (v3 == -911129379)
    {
      operator new();
    }

    if (v3 == -376358)
    {
      operator new();
    }
  }

  else
  {
    switch(v3)
    {
      case 411695:
        operator new();
      case 504504959:
        operator new();
      case 505147594:
        operator new();
    }
  }

  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Unrecognized Program. Using default parameters.\n", 48);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(&v6, MEMORY[0x277D82680]);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v6);
  std::ostream::put();
  std::ostream::flush();
  goto LABEL_49;
}

void AdaptiveOcvAlgo::SystemLoadBuffer::~SystemLoadBuffer(AdaptiveOcvAlgo::SystemLoadBuffer *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }

  v7 = *this;
  if (*this)
  {
    *(this + 1) = v7;
    operator delete(v7);
  }
}

void AdaptiveOcvAlgo::BDCOutput::~BDCOutput(AdaptiveOcvAlgo::BDCOutput *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  v6 = *this;
  if (*this)
  {
    *(this + 1) = v6;
    operator delete(v6);
  }
}

AdaptiveOcvAlgo::BDCOutput *AdaptiveOcvAlgo::BDCOutput::BDCOutput(AdaptiveOcvAlgo::BDCOutput *this, const AdaptiveOcvAlgo::BDCOutput *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 72, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 3);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 96, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 3);
  *(this + 15) = *(a2 + 15);
  return this;
}

void sub_241A83730(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

void sub_241A842E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  simpleList<ACAMPersistentStates>::clear(&a27);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  _Unwind_Resume(a1);
}

id OnDeviceACAMUtility::createDebugLogItem(OnDeviceACAMUtility *this, NSString *a2, objc_object *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = this;
  v5 = a2;
  v6 = [MEMORY[0x277CBEB68] null];
  v7 = [(NSString *)v5 isEqual:v6];

  if (v7)
  {
    v16 = @"message";
    v17[0] = v4;
    v8 = &v16;
    v9 = v17;
    v10 = 1;
  }

  else
  {
    v14[0] = @"message";
    v14[1] = @"value";
    v15[0] = v4;
    v15[1] = v5;
    v8 = v14;
    v9 = v15;
    v10 = 2;
  }

  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void sub_241A84630(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void saveCurrentSnapshotIntoDebugBuffer(OnDeviceACAM *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  v13 = 0;
  v19 = 0;
  v21 = 0;
  v20 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v22 = 2;
  __p = 0u;
  v24 = 0u;
  v25 = 0u;
  ACAMPersistentStates::retrieve(v12, [(OnDeviceACAM *)v3 model]);
  v6 = ACAMSerialization::Serialization::createDiskStateFromPersistentState(v12, v5);
  v7 = [(OnDeviceACAM *)v3 debugLogBuffer];
  v9 = OnDeviceACAMUtility::createDebugLogItem(v4, v6, v8);
  [v7 addObject:v9];

  v10 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    do
    {
      v11 = *(v10 + 48);
      MEMORY[0x245CF6740]();
      v10 = v11;
    }

    while (v11);
  }

  *(&v24 + 1) = 0;
  v25 = 0uLL;
  if (SBYTE7(v24) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }
}

void sub_241A847B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v7 = v5;

  ACAMPersistentStates::~ACAMPersistentStates(va);
  _Unwind_Resume(a1);
}

void saveSnapshotIntoDebugBuffer(OnDeviceACAM *a1, ACAMPersistentStates *a2, NSString *a3)
{
  v11 = a1;
  v5 = a3;
  v7 = ACAMSerialization::Serialization::createDiskStateFromPersistentState(a2, v6);
  v8 = [(OnDeviceACAM *)v11 debugLogBuffer];
  v10 = OnDeviceACAMUtility::createDebugLogItem(v5, v7, v9);
  [v8 addObject:v10];
}

void sub_241A848A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_241A869F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26)
{
  if (SLOBYTE(STACK[0xF07]) < 0)
  {
    operator delete(*v26);
  }

  _Unwind_Resume(a1);
}

void ACAMPersistentStates::~ACAMPersistentStates(ACAMPersistentStates *this)
{
  v2 = (this + 816);
  v3 = *(this + 102);
  if (v3)
  {
    do
    {
      v4 = *(v3 + 48);
      MEMORY[0x245CF6740]();
      v3 = v4;
    }

    while (v4);
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  if (*(this + 815) < 0)
  {
    operator delete(*(this + 99));
  }

  if (*(this + 775) < 0)
  {
    operator delete(*(this + 94));
  }
}

void sub_241A87F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned long>>>>::~__hash_table(&a45);
  a58 = &a50;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&a58);

  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::set<unsigned long>>::~pair(uint64_t a1)
{
  std::__tree<unsigned long>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::vector<SmartBatteryData>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<SmartBatteryData>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<SmartBatteryData>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void sub_241A889E4(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  ACAMPersistentStates::~ACAMPersistentStates(va);
  _Unwind_Resume(a1);
}

id deep_copy_object(objc_object *a1)
{
  v1 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a1];
  v2 = [MEMORY[0x277CCAAC8] unarchiveObjectWithData:v1];

  return v2;
}

void ACAMStatus::SystemSignals::~SystemSignals(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

std::string *std::pair<std::string const,std::set<unsigned long>>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::set<unsigned long>::set[abi:ne200100](this[1].__r_.__value_.__r.__words, a3);
  return this;
}

void sub_241A89148(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::set<unsigned long>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<unsigned long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<unsigned long>::__find_equal<unsigned long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<unsigned long>::__find_equal<unsigned long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::__tree<unsigned long>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
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

void std::__tree<unsigned long>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned long>::destroy(a1, *a2);
    std::__tree<unsigned long>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t std::unordered_map<std::string,double>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,double> const&>(a1, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,double> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__construct_node_hash<std::pair<std::string const,double> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_241A89980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,double>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_241A89A48(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,double>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278D050C8, MEMORY[0x277D825F8]);
}

const void **std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void *std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *simpleList<ACAMPersistentStates>::clear(void *result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    do
    {
      v3 = *(v2 + 856);
      v4 = *(v2 + 816);
      if (v4)
      {
        do
        {
          v5 = *(v4 + 48);
          MEMORY[0x245CF6740]();
          v4 = v5;
        }

        while (v5);
      }

      *(v2 + 816) = 0;
      *(v2 + 824) = 0;
      *(v2 + 832) = 0;
      if (*(v2 + 815) < 0)
      {
        operator delete(*(v2 + 792));
      }

      if (*(v2 + 775) < 0)
      {
        operator delete(*(v2 + 752));
      }

      result = MEMORY[0x245CF6740](v2, 0x1032C40273FF423);
      v2 = v3;
    }

    while (v3);
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  return result;
}

void std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<SmartBatteryData>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<SmartBatteryData>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t std::unordered_map<std::string,std::set<unsigned long>>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned long>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::set<unsigned long>> const&>(a1, a2);
      a2 += 6;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned long>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::set<unsigned long>> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned long>>>>::__construct_node_hash<std::pair<std::string const,std::set<unsigned long>> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_241A8A950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::set<unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::set<unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::set<unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::set<unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<unsigned long>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::set<unsigned long>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::set<unsigned long>::set[abi:ne200100](this[1].__r_.__value_.__r.__words, a2 + 24);
  return this;
}

void sub_241A8AA88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<unsigned long>>,0>(uint64_t a1)
{
  std::__tree<unsigned long>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned long>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<unsigned long>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<SmartBatteryData>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<SmartBatteryData>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<SmartBatteryData>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<SmartBatteryData>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned long>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::unordered_map<std::string,BOOL>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,BOOL> const&>(a1, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,BOOL> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__construct_node_hash<std::pair<std::string const,BOOL> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_241A8B018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,double>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_241A8B0E0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

id ACAMSerialization::Serialization::createCoreAnalyticsFromACAM(ACAMSerialization::Serialization *this, const ACAM *a2, uint64_t a3, double *a4)
{
  v45[14] = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  ACAMLogger::extractDaily(this, a4, &v35);
  v44[0] = @"Qmax";
  LODWORD(v5) = DWORD2(v37);
  v34 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v45[0] = v34;
  v44[1] = @"NCCp";
  LODWORD(v6) = HIDWORD(v36);
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v45[1] = v33;
  v44[2] = @"wRaChangeRatio";
  LODWORD(v7) = v37;
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v45[2] = v32;
  v44[3] = @"Qn";
  LODWORD(v8) = v35;
  v31 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v45[3] = v31;
  v44[4] = @"Qp";
  LODWORD(v9) = DWORD1(v35);
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v45[4] = v30;
  v44[5] = @"QLi";
  LODWORD(v10) = DWORD2(v35);
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v45[5] = v11;
  v44[6] = @"x0";
  LODWORD(v12) = HIDWORD(v35);
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v45[6] = v13;
  v44[7] = @"x100";
  LODWORD(v14) = v36;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v45[7] = v15;
  v44[8] = @"y0";
  LODWORD(v16) = DWORD1(v36);
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v45[8] = v17;
  v44[9] = @"y100";
  LODWORD(v18) = DWORD2(v36);
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v45[9] = v19;
  v44[10] = @"protectiveBuffer";
  LODWORD(v20) = DWORD1(v38);
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v45[10] = v21;
  v44[11] = @"hardSwell";
  LODWORD(v22) = HIDWORD(v37);
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  v45[11] = v23;
  v44[12] = @"gasSwell";
  LODWORD(v24) = v38;
  v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
  v45[12] = v25;
  v44[13] = @"initType";
  v26 = [MEMORY[0x277CCABB0] numberWithInt:*(this + 9486)];
  v45[13] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:14];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

id ACAMSerialization::Serialization::createBDCDailyFromACAM(ACAMSerialization::Serialization *this, const ACAM *a2, double a3, uint64_t a4, double *a5)
{
  v69[23] = *MEMORY[0x277D85DE8];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  ACAMLogger::extractDaily(this, a5, &v58);
  v68[0] = @"timeSinceLastDaily";
  v57 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v69[0] = v57;
  v68[1] = @"Qn";
  LODWORD(v6) = v58;
  v56 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v69[1] = v56;
  v68[2] = @"Qp";
  LODWORD(v7) = DWORD1(v58);
  v55 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v69[2] = v55;
  v68[3] = @"QLi";
  LODWORD(v8) = DWORD2(v58);
  v54 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v69[3] = v54;
  v68[4] = @"x0";
  LODWORD(v9) = HIDWORD(v58);
  v53 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v69[4] = v53;
  v68[5] = @"x100";
  LODWORD(v10) = v59;
  v52 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v69[5] = v52;
  v68[6] = @"y0";
  LODWORD(v11) = DWORD1(v59);
  v51 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v69[6] = v51;
  v68[7] = @"y100";
  LODWORD(v12) = DWORD2(v59);
  v50 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v69[7] = v50;
  v68[8] = @"NCCp";
  LODWORD(v13) = HIDWORD(v59);
  v49 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v69[8] = v49;
  v68[9] = @"wRaChangeRatio";
  LODWORD(v14) = v60;
  v48 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v69[9] = v48;
  v68[10] = @"wRcChangeRatio";
  LODWORD(v15) = DWORD1(v60);
  v47 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v69[10] = v47;
  v68[11] = @"Qmax";
  LODWORD(v16) = DWORD2(v60);
  v46 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v69[11] = v46;
  v68[12] = @"hardSwell";
  LODWORD(v17) = HIDWORD(v60);
  v45 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v69[12] = v45;
  v68[13] = @"gasSwell";
  LODWORD(v18) = v61;
  v44 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v69[13] = v44;
  v68[14] = @"protectiveBuffer";
  LODWORD(v19) = DWORD1(v61);
  v43 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v69[14] = v43;
  v68[15] = @"statusBuffer";
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v62];
  v69[15] = v42;
  v68[16] = @"sleepStatistics";
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(&v62 + 1)];
  v67[0] = v41;
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v63];
  v67[1] = v40;
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(&v63 + 1)];
  v67[2] = v39;
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v64];
  v67[3] = v38;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(&v64 + 1)];
  v67[4] = v20;
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v65];
  v67[5] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:6];
  v69[16] = v22;
  v68[17] = @"SOCBiasCorrection";
  LODWORD(v23) = DWORD2(v61);
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v69[17] = v24;
  v68[18] = @"apparentWRa";
  LODWORD(v25) = DWORD2(v66);
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  v69[18] = v26;
  v68[19] = @"apparentQmax";
  LODWORD(v27) = DWORD1(v66);
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  v69[19] = v28;
  v68[20] = @"avgRaGrowthRatio";
  LODWORD(v29) = DWORD2(v65);
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  v69[20] = v30;
  v68[21] = @"avgRcGrowthRatio";
  LODWORD(v31) = HIDWORD(v65);
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
  v69[21] = v32;
  v68[22] = @"yShrink";
  LODWORD(v33) = v66;
  v34 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
  v69[22] = v34;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:23];

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

id ACAMSerialization::Serialization::createBDCSBCFromACAM(ACAMSerialization::Serialization *this, const ACAM *a2, double a3)
{
  v16[3] = *MEMORY[0x277D85DE8];
  SBC = ACAMLogger::extractSBC(this, a2);
  v6 = v5;
  v15[0] = @"timeSinceLastSBC";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v16[0] = v7;
  v15[1] = @"potentialAnode";
  *&v8 = SBC;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v16[1] = v9;
  v15[2] = @"potentialCathode";
  LODWORD(v10) = v6;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v16[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void ACAMSerialization::Serialization::createBDCWeeklyFromACAM(ACAMSerialization::Serialization *this, const ACAM *a2, double a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  ACAMLogger::extractWeekly(this, a2);
}

id BACore::CommonSerialization::convertCArrayToNSArray<float,101ul>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:101];
  for (i = 0; i != 404; i += 4)
  {
    LODWORD(v3) = *(a1 + i);
    v5 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
    [v2 addObject:v5];
  }

  v6 = [v2 copy];

  return v6;
}

id ACAMSerialization::Serialization::createDiskStateFromPersistentState(ACAMSerialization::Serialization *this, const ACAMPersistentStates *a2)
{
  v175[2] = *MEMORY[0x277D85DE8];
  v122 = [MEMORY[0x277CBEB18] array];
  for (i = *(this + 102); i; i = *(i + 48))
  {
    v3 = *(i + 40);
    v174[0] = @"batteryState";
    v172[0] = @"V";
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:*i];
    v173[0] = v4;
    v172[1] = @"I";
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(i + 8)];
    v173[1] = v5;
    v172[2] = @"T";
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(i + 16)];
    v173[2] = v6;
    v172[3] = @"SOC";
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(i + 24)];
    v173[3] = v7;
    v172[4] = @"t";
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(i + 32)];
    v173[4] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:5];
    v174[1] = @"voltageChargeLimit";
    v175[0] = v9;
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
    v175[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v175 forKeys:v174 count:2];
    [v122 addObject:v11];
  }

  v123[0] = @"persistentState.BatteryStatePrevious.V";
  v118 = [MEMORY[0x277CCABB0] numberWithDouble:*this];
  v124[0] = v118;
  v123[1] = @"persistentState.BatteryStatePrevious.I";
  v117 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 1)];
  v124[1] = v117;
  v123[2] = @"persistentState.BatteryStatePrevious.T";
  v116 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 2)];
  v124[2] = v116;
  v123[3] = @"persistentState.BatteryStatePrevious.SOC";
  v115 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 3)];
  v124[3] = v115;
  v123[4] = @"persistentState.BatteryStatePrevious.t";
  v114 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 4)];
  v124[4] = v114;
  v123[5] = @"persistentState.BatteryStateCurrent.V";
  v113 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 5)];
  v124[5] = v113;
  v123[6] = @"persistentState.BatteryStateCurrent.I";
  v112 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 6)];
  v124[6] = v112;
  v123[7] = @"persistentState.BatteryStateCurrent.T";
  v111 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 7)];
  v124[7] = v111;
  v123[8] = @"persistentState.BatteryStateCurrent.SOC";
  v110 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 8)];
  v124[8] = v110;
  v123[9] = @"persistentState.BatteryStateCurrent.t";
  v109 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 9)];
  v124[9] = v109;
  v123[10] = @"persistentState.ElectrodeStatePrevious.x";
  v108 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 10)];
  v124[10] = v108;
  v123[11] = @"persistentState.ElectrodeStatePrevious.y";
  v107 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 11)];
  v124[11] = v107;
  v123[12] = @"persistentState.ElectrodeStatePrevious.xLastExtreme";
  v106 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 12)];
  v124[12] = v106;
  v123[13] = @"persistentState.ElectrodeStatePrevious.yLastExtreme";
  v105 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 13)];
  v124[13] = v105;
  v123[14] = @"persistentState.ElectrodeStatePrevious.potentialAnode";
  v104 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 14)];
  v124[14] = v104;
  v123[15] = @"persistentState.ElectrodeStatePrevious.potentialCathode";
  v103 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 15)];
  v124[15] = v103;
  v123[16] = @"persistentState.ElectrodeStatePrevious.wRcFreshAtCurrentTemp";
  v102 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 16)];
  v124[16] = v102;
  v123[17] = @"persistentState.ElectrodeStatePrevious.wRaFreshAtCurrentTemp";
  v101 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 17)];
  v124[17] = v101;
  v123[18] = @"persistentState.ElectrodeStatePrevious.deltaResistancePos";
  v100 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 18)];
  v124[18] = v100;
  v123[19] = @"persistentState.ElectrodeStatePrevious.deltaResistanceNeg";
  v99 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 19)];
  v124[19] = v99;
  v123[20] = @"persistentState.ElectrodeStatePrevious.resistancePos";
  v98 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 20)];
  v124[20] = v98;
  v123[21] = @"persistentState.ElectrodeStatePrevious.resistanceNeg";
  v97 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 21)];
  v124[21] = v97;
  v123[22] = @"persistentState.ElectrodeStateCurrent.x";
  v96 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 22)];
  v124[22] = v96;
  v123[23] = @"persistentState.ElectrodeStateCurrent.y";
  v95 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 23)];
  v124[23] = v95;
  v123[24] = @"persistentState.ElectrodeStateCurrent.xLastExtreme";
  v94 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 24)];
  v124[24] = v94;
  v123[25] = @"persistentState.ElectrodeStateCurrent.yLastExtreme";
  v93 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 25)];
  v124[25] = v93;
  v123[26] = @"persistentState.ElectrodeStateCurrent.potentialAnode";
  v92 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 26)];
  v124[26] = v92;
  v123[27] = @"persistentState.ElectrodeStateCurrent.potentialCathode";
  v91 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 27)];
  v124[27] = v91;
  v123[28] = @"persistentState.ElectrodeStateCurrent.wRcFreshAtCurrentTemp";
  v90 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 28)];
  v124[28] = v90;
  v123[29] = @"persistentState.ElectrodeStateCurrent.wRaFreshAtCurrentTemp";
  v89 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 29)];
  v124[29] = v89;
  v123[30] = @"persistentState.ElectrodeStateCurrent.deltaResistancePos";
  v88 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 30)];
  v124[30] = v88;
  v123[31] = @"persistentState.ElectrodeStateCurrent.deltaResistanceNeg";
  v87 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 31)];
  v124[31] = v87;
  v123[32] = @"persistentState.ElectrodeStateCurrent.resistancePos";
  v86 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 32)];
  v124[32] = v86;
  v123[33] = @"persistentState.ElectrodeStateCurrent.resistanceNeg";
  v85 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 33)];
  v124[33] = v85;
  v123[34] = @"persistentState.AgingState.gasSwell";
  v84 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 34)];
  v124[34] = v84;
  v123[35] = @"persistentState.AgingState.protectiveBuffer";
  v83 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 35)];
  v124[35] = v83;
  v123[36] = @"persistentState.AgingState.timePassedOnset";
  v82 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 36)];
  v124[36] = v82;
  v123[37] = @"persistentState.AgingState.hardSwell";
  v81 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 37)];
  v124[37] = v81;
  v123[38] = @"persistentState.AgingState.expGammaHardSwell";
  v80 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 38)];
  v124[38] = v80;
  v123[39] = @"persistentState.AgingState.wRaChangeRatio";
  v79 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 39)];
  v124[39] = v79;
  v123[40] = @"persistentState.AgingState.wRcChangeRatio";
  v78 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 40)];
  v124[40] = v78;
  v123[41] = @"persistentState.AgingState.Qp";
  v77 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 41)];
  v124[41] = v77;
  v123[42] = @"persistentState.AgingState.QpLoss";
  v76 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 42)];
  v124[42] = v76;
  v123[43] = @"persistentState.AgingState.QpPhaseLoss";
  v75 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 43)];
  v124[43] = v75;
  v123[44] = @"persistentState.AgingState.QpAcidLoss";
  v74 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 44)];
  v124[44] = v74;
  v123[45] = @"persistentState.AgingState.QpCrackLoss";
  v73 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 45)];
  v124[45] = v73;
  v123[46] = @"persistentState.AgingState.Qn";
  v72 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 46)];
  v124[46] = v72;
  v123[47] = @"persistentState.AgingState.QLi";
  v71 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 47)];
  v124[47] = v71;
  v123[48] = @"persistentState.AgingState.integralJSEIdt";
  v70 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 48)];
  v124[48] = v70;
  v123[49] = @"persistentState.AgingState.integralJWRadt";
  v69 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 49)];
  v124[49] = v69;
  v123[50] = @"persistentState.AgingState.integralJWRcdt";
  v68 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 50)];
  v124[50] = v68;
  v123[51] = @"persistentState.AgingState.integralJYShrinkdt";
  v67 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 51)];
  v124[51] = v67;
  v123[52] = @"persistentState.AgingState.integralJAvgRadt";
  v66 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 52)];
  v124[52] = v66;
  v123[53] = @"persistentState.AgingState.integralJAvgRcdt";
  v65 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 53)];
  v124[53] = v65;
  v123[54] = @"persistentState.UpdatorState.x0";
  v64 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 54)];
  v124[54] = v64;
  v123[55] = @"persistentState.UpdatorState.x100";
  v63 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 55)];
  v124[55] = v63;
  v123[56] = @"persistentState.UpdatorState.y0";
  v62 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 56)];
  v124[56] = v62;
  v123[57] = @"persistentState.UpdatorState.y100";
  v61 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 57)];
  v124[57] = v61;
  v123[58] = @"persistentState.UpdatorState.Qmax";
  v125 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 58)];
  v123[59] = @"persistentState.UpdatorState.Qn";
  v119 = v125;
  v126 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 59)];
  v123[60] = @"persistentState.UpdatorState.Qp";
  v60 = v126;
  v59 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 60)];
  v127 = v59;
  v123[61] = @"persistentState.UpdatorState.resistancePosChgRatio";
  v58 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 61)];
  v128 = v58;
  v123[62] = @"persistentState.UpdatorState.resistanceNegChgRatio";
  v57 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 62)];
  v129 = v57;
  v123[63] = @"persistentState.UpdatorState.resistancePosDcgRatio";
  v56 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 63)];
  v130 = v56;
  v123[64] = @"persistentState.UpdatorState.resistanceNegDcgRatio";
  v55 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 64)];
  v131 = v55;
  v123[65] = @"persistentState.UpdatorState.integralYShrinkdt";
  v54 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 65)];
  v132 = v54;
  v123[66] = @"persistentState.Derivative.dProtectiveBufferdt";
  v53 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 66)];
  v133 = v53;
  v123[67] = @"persistentState.Derivative.dGasSwelldt";
  v52 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 67)];
  v134 = v52;
  v123[68] = @"persistentState.Derivative.dExpGammaHardSwelldt";
  v51 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 68)];
  v135 = v51;
  v123[69] = @"persistentState.Derivative.dHardSwelldt";
  v50 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 69)];
  v136 = v50;
  v123[70] = @"persistentState.Derivative.dQpdt";
  v49 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 70)];
  v137 = v49;
  v123[71] = @"persistentState.Derivative.dQpPhasedt";
  v48 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 71)];
  v138 = v48;
  v123[72] = @"persistentState.Derivative.dQpAciddt";
  v47 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 72)];
  v139 = v47;
  v123[73] = @"persistentState.Derivative.dQpCrackdt";
  v46 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 73)];
  v140 = v46;
  v123[74] = @"persistentState.Derivative.dQndt";
  v45 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 74)];
  v141 = v45;
  v123[75] = @"persistentState.Derivative.dQLidt";
  v44 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 75)];
  v142 = v44;
  v123[76] = @"persistentState.Derivative.JSEI";
  v43 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 76)];
  v143 = v43;
  v123[77] = @"persistentState.Derivative.dWRadt";
  v42 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 77)];
  v144 = v42;
  v123[78] = @"persistentState.Derivative.dWRcdt";
  v41 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 78)];
  v145 = v41;
  v123[79] = @"persistentState.Derivative.dAvgRadt";
  v40 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 80)];
  v146 = v40;
  v123[80] = @"persistentState.Derivative.dAvgRcdt";
  v39 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 81)];
  v147 = v39;
  v123[81] = @"persistentState.Derivative.dYShrinkdt";
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 79)];
  v148 = v38;
  v123[82] = @"persistentState.DynamicConfiguration.SOCBiasCorrection";
  v37 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 82)];
  v149 = v37;
  v123[83] = @"persistentState.DynamicConfiguration.voltageChargeLimit";
  v36 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 83)];
  v150 = v36;
  v123[84] = @"persistentState.Statistics.sleepStatistics[0]";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + 84)];
  v151 = v35;
  v123[85] = @"persistentState.Statistics.sleepStatistics[1]";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + 85)];
  v152 = v34;
  v123[86] = @"persistentState.Statistics.sleepStatistics[2]";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + 86)];
  v153 = v33;
  v123[87] = @"persistentState.Statistics.sleepStatistics[3]";
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + 87)];
  v154 = v32;
  v123[88] = @"persistentState.Statistics.sleepStatistics[4]";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + 88)];
  v155 = v31;
  v123[89] = @"persistentState.Statistics.sleepStatistics[5]";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + 89)];
  v156 = v30;
  v123[90] = @"persistentState.Status.mPreviousAlgoStatus";
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:*(this + 180)];
  v157 = v29;
  v123[91] = @"persistentState.Status.mCurrentAlgoStatus";
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:*(this + 181)];
  v158 = v26;
  v123[92] = @"persistentState.Status.mCurrentDataError";
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:*(this + 182)];
  v159 = v25;
  v123[93] = @"persistentState.Status.mBuffer";
  v28 = [MEMORY[0x277CCABB0] numberWithInteger:*(this + 183)];
  v160 = v28;
  v123[94] = @"persistentState.Status.mInitType";
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:*(this + 184)];
  v161 = v27;
  v123[95] = @"persistentState.Status.mFreshInitReason";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:*(this + 185)];
  v162 = v12;
  v123[96] = @"persistentState.Status.mSystemSignal.batteryAuthentication";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:*(this + 744)];
  v163 = v13;
  v123[97] = @"persistentState.Status.mSystemSignal.batteryReplacement";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:*(this + 745)];
  v164 = v14;
  v123[98] = @"persistentState.Status.mSystemSignal.batteryReplacementDate";
  v15 = (this + 752);
  if (*(this + 775) < 0)
  {
    v15 = *v15;
  }

  v16 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v165 = v16;
  v123[99] = @"persistentState.Status.mSystemSignal.time";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + 97)];
  v166 = v17;
  v123[100] = @"persistentState.Status.mSystemSignal.version";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + 98)];
  v167 = v18;
  v123[101] = @"persistentState.Status.mSystemSignal.batteryInfo";
  v19 = (this + 792);
  if (*(this + 815) < 0)
  {
    v19 = *v19;
  }

  v20 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v168 = v20;
  v123[102] = @"persistentState.AlgorithmInitialized";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:*(this + 840)];
  v169 = v21;
  v123[103] = @"persistentState.ParameterVersion";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + 106)];
  v170 = v22;
  v123[104] = @"persistentState.History";
  v171 = v122;
  v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:105];

  v23 = *MEMORY[0x277D85DE8];

  return v121;
}

void sub_241A8D4A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, void *a32, void *a33, void *a34, void *a35, void *a36, void *a37, void *a38, void *a39, void *a40, void *a41, void *a42, void *a43, void *a44, void *a45, void *a46, void *a47, void *a48, void *a49, void *a50, void *a51, void *a52, void *a53, void *a54, void *a55, void *a56, void *a57, void *a58, void *a59, void *a60, void *a61, void *a62, void *a63)
{
  STACK[0x300] = a1;

  _Unwind_Resume(STACK[0x300]);
}

void ACAMSerialization::Deserialization::setPersistentStatesFromDictionary(ACAMSerialization::Deserialization *this, ACAMPersistentStates *a2, const NSDictionary *a3)
{
  v229 = *MEMORY[0x277D85DE8];
  v216 = a2;
  v3 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.BatteryStatePrevious.V"];
  [v3 doubleValue];
  *this = v4;

  v5 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.BatteryStatePrevious.I"];
  [v5 doubleValue];
  *(this + 1) = v6;

  v7 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.BatteryStatePrevious.T"];
  [v7 doubleValue];
  *(this + 2) = v8;

  v9 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.BatteryStatePrevious.SOC"];
  [v9 doubleValue];
  *(this + 3) = v10;

  v11 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.BatteryStatePrevious.t"];
  [v11 doubleValue];
  *(this + 4) = v12;

  v13 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.BatteryStateCurrent.V"];
  [v13 doubleValue];
  *(this + 5) = v14;

  v15 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.BatteryStateCurrent.I"];
  [v15 doubleValue];
  *(this + 6) = v16;

  v17 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.BatteryStateCurrent.T"];
  [v17 doubleValue];
  *(this + 7) = v18;

  v19 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.BatteryStateCurrent.SOC"];
  [v19 doubleValue];
  *(this + 8) = v20;

  v21 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.BatteryStateCurrent.t"];
  [v21 doubleValue];
  *(this + 9) = v22;

  v23 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStatePrevious.x"];
  [v23 doubleValue];
  *(this + 10) = v24;

  v25 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStatePrevious.y"];
  [v25 doubleValue];
  *(this + 11) = v26;

  v27 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStatePrevious.xLastExtreme"];
  [v27 doubleValue];
  *(this + 12) = v28;

  v29 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStatePrevious.yLastExtreme"];
  [v29 doubleValue];
  *(this + 13) = v30;

  v31 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStatePrevious.potentialAnode"];
  [v31 doubleValue];
  *(this + 14) = v32;

  v33 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStatePrevious.potentialCathode"];
  [v33 doubleValue];
  *(this + 15) = v34;

  v35 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStatePrevious.wRcFreshAtCurrentTemp"];
  [v35 doubleValue];
  *(this + 16) = v36;

  v37 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStatePrevious.wRaFreshAtCurrentTemp"];
  [v37 doubleValue];
  *(this + 17) = v38;

  v39 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStatePrevious.deltaResistancePos"];
  [v39 doubleValue];
  *(this + 18) = v40;

  v41 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStatePrevious.deltaResistanceNeg"];
  [v41 doubleValue];
  *(this + 19) = v42;

  v43 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStatePrevious.resistancePos"];
  [v43 doubleValue];
  *(this + 20) = v44;

  v45 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStatePrevious.resistanceNeg"];
  [v45 doubleValue];
  *(this + 21) = v46;

  v47 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStateCurrent.x"];
  [v47 doubleValue];
  *(this + 22) = v48;

  v49 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStateCurrent.y"];
  [v49 doubleValue];
  *(this + 23) = v50;

  v51 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStateCurrent.xLastExtreme"];
  [v51 doubleValue];
  *(this + 24) = v52;

  v53 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStateCurrent.yLastExtreme"];
  [v53 doubleValue];
  *(this + 25) = v54;

  v55 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStateCurrent.potentialAnode"];
  [v55 doubleValue];
  *(this + 26) = v56;

  v57 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStateCurrent.potentialCathode"];
  [v57 doubleValue];
  *(this + 27) = v58;

  v59 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStateCurrent.wRcFreshAtCurrentTemp"];
  [v59 doubleValue];
  *(this + 28) = v60;

  v61 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStateCurrent.wRaFreshAtCurrentTemp"];
  [v61 doubleValue];
  *(this + 29) = v62;

  v63 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStateCurrent.deltaResistancePos"];
  [v63 doubleValue];
  *(this + 30) = v64;

  v65 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStateCurrent.deltaResistanceNeg"];
  [v65 doubleValue];
  *(this + 31) = v66;

  v67 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStateCurrent.resistancePos"];
  [v67 doubleValue];
  *(this + 32) = v68;

  v69 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ElectrodeStateCurrent.resistanceNeg"];
  [v69 doubleValue];
  *(this + 33) = v70;

  v71 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.gasSwell"];
  [v71 doubleValue];
  *(this + 34) = v72;

  v73 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.protectiveBuffer"];
  [v73 doubleValue];
  *(this + 35) = v74;

  v75 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.timePassedOnset"];
  [v75 doubleValue];
  *(this + 36) = v76;

  v77 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.hardSwell"];
  [v77 doubleValue];
  *(this + 37) = v78;

  v79 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.expGammaHardSwell"];
  [v79 doubleValue];
  *(this + 38) = v80;

  v81 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.wRaChangeRatio"];
  [v81 doubleValue];
  *(this + 39) = v82;

  v83 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.wRcChangeRatio"];
  [v83 doubleValue];
  *(this + 40) = v84;

  v85 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.Qp"];
  [v85 doubleValue];
  *(this + 41) = v86;

  v87 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.QpLoss"];
  [v87 doubleValue];
  *(this + 42) = v88;

  v89 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.QpPhaseLoss"];
  [v89 doubleValue];
  *(this + 43) = v90;

  v91 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.QpAcidLoss"];
  [v91 doubleValue];
  *(this + 44) = v92;

  v93 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.QpCrackLoss"];
  [v93 doubleValue];
  *(this + 45) = v94;

  v95 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.Qn"];
  [v95 doubleValue];
  *(this + 46) = v96;

  v97 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.QLi"];
  [v97 doubleValue];
  *(this + 47) = v98;

  v99 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.integralJSEIdt"];
  [v99 doubleValue];
  *(this + 48) = v100;

  v101 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.integralJWRadt"];
  [v101 doubleValue];
  *(this + 49) = v102;

  v103 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.integralJWRcdt"];
  [v103 doubleValue];
  *(this + 50) = v104;

  v105 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.integralJAvgRadt"];
  [v105 doubleValue];
  *(this + 52) = v106;

  v107 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.integralJAvgRcdt"];
  [v107 doubleValue];
  *(this + 53) = v108;

  v109 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AgingState.integralJYShrinkdt"];
  [v109 doubleValue];
  *(this + 51) = v110;

  v111 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.UpdatorState.x0"];
  [v111 doubleValue];
  *(this + 54) = v112;

  v113 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.UpdatorState.x100"];
  [v113 doubleValue];
  *(this + 55) = v114;

  v115 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.UpdatorState.y0"];
  [v115 doubleValue];
  *(this + 56) = v116;

  v117 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.UpdatorState.y100"];
  [v117 doubleValue];
  *(this + 57) = v118;

  v119 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.UpdatorState.Qmax"];
  [v119 doubleValue];
  *(this + 58) = v120;

  v121 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.UpdatorState.Qn"];
  [v121 doubleValue];
  *(this + 59) = v122;

  v123 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.UpdatorState.Qp"];
  [v123 doubleValue];
  *(this + 60) = v124;

  v125 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.UpdatorState.resistancePosChgRatio"];
  [v125 doubleValue];
  *(this + 61) = v126;

  v127 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.UpdatorState.resistanceNegChgRatio"];
  [v127 doubleValue];
  *(this + 62) = v128;

  v129 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.UpdatorState.resistancePosDcgRatio"];
  [v129 doubleValue];
  *(this + 63) = v130;

  v131 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.UpdatorState.resistanceNegDcgRatio"];
  [v131 doubleValue];
  *(this + 64) = v132;

  v133 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.UpdatorState.integralYShrinkdt"];
  [v133 doubleValue];
  *(this + 65) = v134;

  v135 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Derivative.dProtectiveBufferdt"];
  [v135 doubleValue];
  *(this + 66) = v136;

  v137 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Derivative.dGasSwelldt"];
  [v137 doubleValue];
  *(this + 67) = v138;

  v139 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Derivative.dExpGammaHardSwelldt"];
  [v139 doubleValue];
  *(this + 68) = v140;

  v141 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Derivative.dHardSwelldt"];
  [v141 doubleValue];
  *(this + 69) = v142;

  v143 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Derivative.dQpdt"];
  [v143 doubleValue];
  *(this + 70) = v144;

  v145 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Derivative.dQpPhasedt"];
  [v145 doubleValue];
  *(this + 71) = v146;

  v147 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Derivative.dQpAciddt"];
  [v147 doubleValue];
  *(this + 72) = v148;

  v149 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Derivative.dQpCrackdt"];
  [v149 doubleValue];
  *(this + 73) = v150;

  v151 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Derivative.dQndt"];
  [v151 doubleValue];
  *(this + 74) = v152;

  v153 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Derivative.dQLidt"];
  [v153 doubleValue];
  *(this + 75) = v154;

  v155 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Derivative.JSEI"];
  [v155 doubleValue];
  *(this + 76) = v156;

  v157 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Derivative.dWRadt"];
  [v157 doubleValue];
  *(this + 77) = v158;

  v159 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Derivative.dWRcdt"];
  [v159 doubleValue];
  *(this + 78) = v160;

  v161 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Derivative.dAvgRadt"];
  [v161 doubleValue];
  *(this + 80) = v162;

  v163 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Derivative.dAvgRcdt"];
  [v163 doubleValue];
  *(this + 81) = v164;

  v165 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Derivative.dYShrinkdt"];
  [v165 doubleValue];
  *(this + 79) = v166;

  v167 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.DynamicConfiguration.SOCBiasCorrection"];
  [v167 doubleValue];
  *(this + 82) = v168;

  v169 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.DynamicConfiguration.voltageChargeLimit"];
  [v169 doubleValue];
  *(this + 83) = v170;

  v171 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Statistics.sleepStatistics[0]"];
  *(this + 84) = [v171 unsignedLongValue];

  v172 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Statistics.sleepStatistics[1]"];
  *(this + 85) = [v172 unsignedLongValue];

  v173 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Statistics.sleepStatistics[2]"];
  *(this + 86) = [v173 unsignedLongValue];

  v174 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Statistics.sleepStatistics[3]"];
  *(this + 87) = [v174 unsignedLongValue];

  v175 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Statistics.sleepStatistics[4]"];
  *(this + 88) = [v175 unsignedLongValue];

  v176 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Statistics.sleepStatistics[5]"];
  *(this + 89) = [v176 unsignedLongValue];

  v177 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Status.mPreviousAlgoStatus"];
  *(this + 180) = [v177 intValue];

  v178 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Status.mCurrentAlgoStatus"];
  *(this + 181) = [v178 intValue];

  v179 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Status.mCurrentDataError"];
  *(this + 182) = [v179 intValue];

  v180 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Status.mBuffer"];
  *(this + 183) = [v180 intValue];

  v181 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Status.mInitType"];
  ACAMStatus::setInitType(this + 720, [v181 intValue]);

  v182 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Status.mFreshInitReason"];
  ACAMStatus::setFreshInitReason(this + 720, [v182 intValue]);

  v183 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Status.mSystemSignal.batteryAuthentication"];
  *(this + 744) = [v183 BOOLValue];

  v184 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Status.mSystemSignal.batteryReplacement"];
  *(this + 745) = [v184 BOOLValue];

  v185 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Status.mSystemSignal.batteryReplacementDate"];
  BACore::CommonSerialization::getCppStringFromNSString(v185, &v219);
  v186 = (this + 752);
  if (*(this + 775) < 0)
  {
    operator delete(*v186);
  }

  *v186 = v219;
  *(this + 96) = v220;
  HIBYTE(v220) = 0;
  LOBYTE(v219) = 0;

  v187 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Status.mSystemSignal.time"];
  *(this + 97) = [v187 unsignedLongValue];

  v188 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Status.mSystemSignal.version"];
  [v188 doubleValue];
  *(this + 98) = v189;

  v190 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.Status.mSystemSignal.batteryInfo"];
  BACore::CommonSerialization::getCppStringFromNSString(v190, &v219);
  v191 = (this + 792);
  if (*(this + 815) < 0)
  {
    operator delete(*v191);
  }

  *v191 = v219;
  *(this + 101) = v220;
  HIBYTE(v220) = 0;
  LOBYTE(v219) = 0;

  v192 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.AlgorithmInitialized"];
  *(this + 840) = [v192 BOOLValue];

  v193 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.ParameterVersion"];
  *(this + 106) = [v193 unsignedLongValue];

  v194 = [(ACAMPersistentStates *)v216 objectForKeyedSubscript:@"persistentState.History"];
  v226 = 0u;
  v227 = 0u;
  v224 = 0u;
  v225 = 0u;
  obj = v194;
  if ([obj countByEnumeratingWithState:&v224 objects:v228 count:16])
  {
    *v225;
    *v225;
    v195 = **(&v224 + 1);
    v196 = [**(&v224 + 1) objectForKeyedSubscript:@"batteryState"];
    v197 = [v196 objectForKeyedSubscript:@"V"];
    [v197 doubleValue];
    v199 = v198;
    v200 = [v196 objectForKeyedSubscript:@"I"];
    [v200 doubleValue];
    v202 = v201;
    v203 = [v196 objectForKeyedSubscript:@"T"];
    [v203 doubleValue];
    v205 = v204;
    v206 = [v196 objectForKeyedSubscript:@"SOC"];
    [v206 doubleValue];
    v208 = v207;
    v209 = [v196 objectForKeyedSubscript:@"t"];
    [v209 doubleValue];
    v211 = v210;

    v212 = [v195 objectForKeyedSubscript:@"voltageChargeLimit"];
    [v212 doubleValue];
    v214 = v213;

    *&v219 = v199;
    *(&v219 + 1) = v202;
    v220 = v205;
    v221 = v208;
    v222 = v211;
    v223 = v214;
    simpleList<ACAMHistory>::append(this + 102);
  }

  v215 = *MEMORY[0x277D85DE8];
}

void simpleList<ACAMHistory>::append(uint64_t *a1)
{
  ++a1[2];
  v1 = *a1;
  operator new();
}

uint64_t ACAMSerialization::Deserialization::setSystemSignalsFromDictionaries(ACAMSerialization::Deserialization *this, ACAMStatus::SystemSignals *a2, NSDictionary *a3, const NSDictionary *a4)
{
  v6 = a2;
  v7 = a3;
  if ((BACore::CommonSerialization::validateDataFromDictionary(v6, &unk_2853AFCE0, 0, 0, v8) & 1) != 0 && BACore::CommonSerialization::validateDataFromDictionary(v7, &unk_2853AFCF8, 0, 0, v9))
  {
    v10 = [(NSDictionary *)v7 objectForKeyedSubscript:@"BatteryAuthPass"];
    *this = [v10 BOOLValue];

    *(this + 1) = 0;
    MEMORY[0x245CF65F0](this + 8, "");
    v11 = [MEMORY[0x277CBEAA8] date];
    [v11 timeIntervalSince1970];
    *(this + 4) = v12;

    [&unk_2853AF980 doubleValue];
    *(this + 5) = v13;
    v14 = [(ACAMStatus::SystemSignals *)v6 objectForKeyedSubscript:@"Serial"];
    BACore::CommonSerialization::getCppStringFromNSString(v14, &v17);
    if (*(this + 71) < 0)
    {
      operator delete(*(this + 6));
    }

    *(this + 3) = v17;
    *(this + 8) = v18;
    HIBYTE(v18) = 0;
    LOBYTE(v17) = 0;

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

BOOL ACAMSerialization::Deserialization::setSMCKeyDataFromDictionary(uint64_t a1, NSData *a2, void *a3, double a4)
{
  v7 = a3;
  v9 = BACore::CommonSerialization::validateDataFromDictionaryWithTeq(v7, &unk_2853AFD10, a2, dbl_2853AFD28, a4, &unk_2853AFD40, v8);
  v10 = v9;
  if (v9 >= 0.0)
  {
    *a1 = v9;
    v11 = [(BACore::CommonSerialization *)v7 objectForKeyedSubscript:@"CycleCount"];
    [v11 doubleValue];
    *(a1 + 8) = v12;

    v13 = [(BACore::CommonSerialization *)v7 objectForKeyedSubscript:@"TotalOperatingTime"];
    [v13 doubleValue];
    *(a1 + 16) = v14 * 3600.0;

    v15 = [MEMORY[0x277CBEAA8] date];
    [v15 timeIntervalSince1970];
    *(a1 + 24) = v16;

    v17 = [(BACore::CommonSerialization *)v7 objectForKeyedSubscript:@"VacVoltageLimit"];
    [v17 doubleValue];
    *(a1 + 32) = v18 / 1000.0;
  }

  return v10 >= 0.0;
}

BOOL ACAMSerialization::Deserialization::setDailyDataFromDictionary(uint64_t a1, NSData *a2, void *a3, double a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v19 = &unk_2853AFFF0;
  v20 = &unk_2853B0000;
  v8 = BACore::CommonSerialization::getTimestampUpperBound(v7);
  v21 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:3];

  v11 = BACore::CommonSerialization::validateDataFromDictionaryWithTeq(v7, &unk_2853AFD58, a2, dbl_2853AFD70, a4, v9, v10);
  v12 = v11;
  if (v11 >= 0.0)
  {
    *a1 = v11;
    v13 = [(BACore::CommonSerialization *)v7 objectForKeyedSubscript:@"CycleCount", v19, v20];
    [v13 doubleValue];
    *(a1 + 8) = v14;

    v15 = [(BACore::CommonSerialization *)v7 objectForKeyedSubscript:@"Timestamp"];
    [v15 doubleValue];
    *(a1 + 16) = v16;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12 >= 0.0;
}

uint64_t ACAMSerialization::Deserialization::setOBCDataFromDictionary(uint64_t a1, void *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14[0] = &unk_2853B0020;
  v4 = BACore::CommonSerialization::getTimestampUpperBound(v3);
  v14[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v7 = BACore::CommonSerialization::validateDataFromDictionary(v3, &unk_2853AFD88, &unk_2853AFDA0, v5, v6);
  if (v7)
  {
    v8 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"VacVoltageLimit"];
    [v8 doubleValue];
    *a1 = v9 / 1000.0;

    v10 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"Timestamp"];
    [v10 doubleValue];
    *(a1 + 8) = v11;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ACAMSerialization::Deserialization::setSBCDataFromDictionary(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = &unk_2853B0010;
  v21 = &unk_2853B0010;
  v22 = &unk_2853B0010;
  v23 = &unk_2853B0040;
  v4 = BACore::CommonSerialization::getTimestampUpperBound(v3);
  v24 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:5];

  v7 = BACore::CommonSerialization::validateDataFromDictionary(v3, &unk_2853AFDB8, &unk_2853AFDD0, v5, v6);
  if (v7)
  {
    v8 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"Voltage", v20, v21, v22, v23];
    [v8 doubleValue];
    *a1 = v9 / 1000.0;

    v10 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"Amperage"];
    [v10 doubleValue];
    *(a1 + 8) = v11 / 1000.0;

    v12 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"VirtualTemperature"];
    [v12 doubleValue];
    *(a1 + 16) = v13 / 100.0;

    v14 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"PresentDOD0"];
    [v14 doubleValue];
    *(a1 + 24) = v15 * -0.0000610351562 + 1.0;

    v16 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"Timestamp"];
    [v16 doubleValue];
    *(a1 + 32) = v17;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ACAMSerialization::Deserialization::setSmartBatteryDataFromDictionary(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = &unk_2853B0050;
  v21 = &unk_2853B0010;
  v22 = &unk_2853B0010;
  v23 = &unk_2853B0040;
  v4 = BACore::CommonSerialization::getTimestampUpperBound(v3);
  v24 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:5];

  v7 = BACore::CommonSerialization::validateDataFromDictionary(v3, &unk_2853AFDE8, &unk_2853AFE00, v5, v6);
  if (v7)
  {
    v8 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"Voltage", v20, v21, v22, v23];
    [v8 doubleValue];
    *a1 = v9 / 1000.0;

    v10 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"InstantAmperage"];
    [v10 doubleValue];
    *(a1 + 8) = v11 / 1000.0;

    v12 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"VirtualTemperature"];
    [v12 doubleValue];
    *(a1 + 16) = v13 / 100.0;

    v14 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"PresentDOD"];
    [v14 doubleValue];
    *(a1 + 24) = v15 * -0.0000610351562 + 1.0;

    v16 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"Timestamp"];
    [v16 doubleValue];
    *(a1 + 32) = v17;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

double BACore::CommonSerialization::convertTeqIntoScalar(BACore::CommonSerialization *this, NSData *a2, const double *a3, double a4)
{
  v6 = this;
  v7 = [(BACore::CommonSerialization *)v6 bytes];
  v8 = [(BACore::CommonSerialization *)v6 length];
  v9 = 0.0;
  if (v8 >= 4)
  {
    v10 = v8 >> 2;
    do
    {
      v11 = *v7++;
      v12 = v11;
      isa = a2->super.isa;
      ++a2;
      v9 = v9 + v12 * *&isa;
      --v10;
    }

    while (v10);
  }

  v14 = v9 / a4;

  return v14;
}

{
  v6 = this;
  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v8 = 0;
  __str[2] = 0;
  v9 = 1;
  while (v8 < [(BACore::CommonSerialization *)v6 length]>> 1)
  {
    __str[0] = [(BACore::CommonSerialization *)v6 characterAtIndex:v9 - 1];
    __str[1] = [(BACore::CommonSerialization *)v6 characterAtIndex:v9];
    v13 = strtol(__str, 0, 16);
    [v7 appendBytes:&v13 length:1];
    ++v8;
    v9 += 2;
  }

  v11 = BACore::CommonSerialization::convertTeqIntoScalar(v7, a2, v10, a4);

  return v11;
}

uint64_t BACore::CommonSerialization::getTimestampUpperBound(BACore::CommonSerialization *this)
{
  v1 = [MEMORY[0x277CBEAA8] date];
  [v1 timeIntervalSince1970];
  v3 = v2 + 90000.0;

  v4 = MEMORY[0x277CCABB0];

  return [v4 numberWithDouble:v3];
}

BOOL BACore::CommonSerialization::isBetween(BACore::CommonSerialization *this, NSNumber *a2, NSNumber *a3, NSNumber *a4)
{
  v6 = this;
  v7 = a2;
  v8 = a3;
  v9 = [MEMORY[0x277CBEB68] null];
  v10 = [(BACore::CommonSerialization *)v6 isEqual:v9];

  v12 = (v10 & 1) == 0 && ([(BACore::CommonSerialization *)v6 doubleValue], (v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && ([(BACore::CommonSerialization *)v6 doubleValue], [(BACore::CommonSerialization *)v6 compare:v7]!= -1) && [(BACore::CommonSerialization *)v6 compare:v8]!= 1;
  return v12;
}

void sub_241A8FEFC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t BACore::CommonSerialization::validateDataFromDictionary(BACore::CommonSerialization *this, NSDictionary *a2, NSArray *a3, NSArray *a4, const NSArray *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = this;
  v9 = a2;
  v29 = a3;
  v30 = a4;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v9;
  v10 = [(NSDictionary *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v34;
    if (v29)
    {
      v13 = v30 == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = !v13;
    v32 = v14;
LABEL_9:
    v15 = 0;
    while (1)
    {
      if (*v34 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v33 + 1) + 8 * v15);
      v17 = [(BACore::CommonSerialization *)v8 objectForKeyedSubscript:v16, v29];
      if (!v17)
      {
        break;
      }

      v18 = [(BACore::CommonSerialization *)v8 objectForKeyedSubscript:v16];
      v19 = [MEMORY[0x277CBEB68] null];
      v20 = [v18 isEqual:v19];

      if (v20)
      {
        goto LABEL_23;
      }

      if (v32)
      {
        v21 = [(BACore::CommonSerialization *)v8 objectForKeyedSubscript:v16];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [(BACore::CommonSerialization *)v8 objectForKeyedSubscript:v16];
          v23 = [(NSArray *)v29 objectAtIndex:v11];
          v24 = [(NSArray *)v30 objectAtIndex:v11];
          isBetween = BACore::CommonSerialization::isBetween(v22, v23, v24, v25);

          if (!isBetween)
          {
LABEL_23:
            v17 = 0;
            break;
          }
        }

        else
        {
        }
      }

      ++v11;
      if (v10 == ++v15)
      {
        v10 = [(NSDictionary *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        v17 = 1;
        if (v10)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v17;
}

double BACore::CommonSerialization::validateDataFromDictionaryWithTeq(BACore::CommonSerialization *this, NSDictionary *a2, NSData *a3, double *a4, double a5, NSArray *a6, const NSArray *a7)
{
  v33 = a3;
  v42 = *MEMORY[0x277D85DE8];
  v11 = this;
  v12 = a2;
  v34 = a4;
  v35 = a6;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v12;
  v13 = [(NSDictionary *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v13)
  {
    v14 = 0;
    v15 = *v38;
    if (v34)
    {
      v16 = v35 == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = !v16;
    v18 = 0.0;
LABEL_9:
    v19 = 0;
    while (1)
    {
      if (*v38 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v37 + 1) + 8 * v19);
      v21 = [(BACore::CommonSerialization *)v11 objectForKeyedSubscript:v20, v33];
      v22 = v21 == 0;

      if (v22)
      {
        break;
      }

      if ([v20 isEqual:@"TimeAtHighSoc"])
      {
        v23 = [(BACore::CommonSerialization *)v11 objectForKeyedSubscript:v20];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = BACore::CommonSerialization::convertTeqIntoScalar(v23, v33, v24, a5);
        }

        else
        {
          v25 = BACore::CommonSerialization::convertTeqIntoScalar(v23, v33, v24, a5);
        }

        v18 = v25;
        v26 = [MEMORY[0x277CCABB0] numberWithDouble:?];

        if (v18 < 0.0)
        {
LABEL_24:

          break;
        }
      }

      else
      {
        v26 = [(BACore::CommonSerialization *)v11 objectForKeyedSubscript:v20];
      }

      if (v17)
      {
        v27 = [v34 objectAtIndex:v14];
        v28 = [(NSArray *)v35 objectAtIndex:v14];
        isBetween = BACore::CommonSerialization::isBetween(v26, v27, v28, v29);

        if (!isBetween)
        {
          goto LABEL_24;
        }
      }

      ++v14;
      if (v13 == ++v19)
      {
        v13 = [(NSDictionary *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v13)
        {
          goto LABEL_9;
        }

        goto LABEL_26;
      }
    }
  }

  v18 = 0.0;
LABEL_26:

  v31 = *MEMORY[0x277D85DE8];
  return v18;
}

void BACore::CommonSerialization::getCppStringFromNSString(BACore::CommonSerialization *this@<X0>, _BYTE *a2@<X8>)
{
  v7 = this;
  v4 = [(BACore::CommonSerialization *)v7 UTF8String];
  v5 = [(BACore::CommonSerialization *)v7 lengthOfBytesUsingEncoding:4];
  v6 = v5;
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v4, v5);
  }

  a2[v6] = 0;
}

id CafeSwellAlgo::Serialization::createDiskStateFromPersistentState(CafeSwellAlgo::Serialization *this, const State *a2)
{
  v14[7] = *MEMORY[0x277D85DE8];
  v13[0] = @"VCafe";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*this];
  v14[0] = v3;
  v13[1] = @"lastBVVL";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 6)];
  v14[1] = v4;
  v13[2] = @"lastCafeFast";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 4)];
  v14[2] = v5;
  v13[3] = @"lastCafeSlow";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 5)];
  v14[3] = v6;
  v13[4] = @"lastUpdateTime";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 7)];
  v14[4] = v7;
  v13[5] = @"longevityPredict";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 2)];
  v14[5] = v8;
  v13[6] = @"mCafe";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 1)];
  v14[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:7];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void CafeSwellAlgo::Deserialization::setPersistentStateFromDictionary(CafeSwellAlgo::Deserialization *this, State *a2, const NSDictionary *a3)
{
  v18 = a2;
  v4 = [(State *)v18 objectForKeyedSubscript:@"VCafe"];
  [v4 doubleValue];
  *this = v5;

  v6 = [(State *)v18 objectForKeyedSubscript:@"lastBVVL"];
  [v6 doubleValue];
  *(this + 6) = v7;

  v8 = [(State *)v18 objectForKeyedSubscript:@"lastCafeFast"];
  [v8 doubleValue];
  *(this + 4) = v9;

  v10 = [(State *)v18 objectForKeyedSubscript:@"lastCafeSlow"];
  [v10 doubleValue];
  *(this + 5) = v11;

  v12 = [(State *)v18 objectForKeyedSubscript:@"lastUpdateTime"];
  [v12 doubleValue];
  *(this + 7) = v13;

  v14 = [(State *)v18 objectForKeyedSubscript:@"longevityPredict"];
  [v14 doubleValue];
  *(this + 2) = v15;

  v16 = [(State *)v18 objectForKeyedSubscript:@"mCafe"];
  [v16 doubleValue];
  *(this + 1) = v17;
}

uint64_t CafeSwellAlgo::Deserialization::setSMCKeyDataFromDictionary(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = BACore::CommonSerialization::validateDataFromDictionary(v3, &unk_2853AFE48, &unk_2853AFE60, &unk_2853AFE30, v4);
  if (v5)
  {
    v6 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"VacVoltageLimit"];
    [v6 doubleValue];
    *(a1 + 24) = v7 / 1000.0;

    v8 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"DateOfFirstUse"];
    [v8 doubleValue];
    *(a1 + 16) = v9 + 978307200.0;

    v10 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"CycleCount"];
    [v10 doubleValue];
    *a1 = v11;

    v12 = [MEMORY[0x277CBEAA8] date];
    [v12 timeIntervalSince1970];
    *(a1 + 8) = v13;
  }

  return v5;
}

uint64_t CafeSwellAlgo::Deserialization::setOBCDataFromDictionary(uint64_t a1, void *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14[0] = &unk_2853AF9F8;
  v4 = BACore::CommonSerialization::getTimestampUpperBound(v3);
  v14[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v7 = BACore::CommonSerialization::validateDataFromDictionary(v3, &unk_2853AFE78, &unk_2853AFE90, v5, v6);
  if (v7)
  {
    v8 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"VacVoltageLimit"];
    [v8 doubleValue];
    *a1 = v9 / 1000.0;

    v10 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"Timestamp"];
    [v10 doubleValue];
    *(a1 + 8) = v11;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t CafeSwellAlgo::Deserialization::setSBCDataFromDictionary(uint64_t a1, void *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14[0] = &unk_2853AFA10;
  v4 = BACore::CommonSerialization::getTimestampUpperBound(v3);
  v14[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v7 = BACore::CommonSerialization::validateDataFromDictionary(v3, &unk_2853AFEA8, &unk_2853AFEC0, v5, v6);
  if (v7)
  {
    v8 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"VirtualTemperature"];
    [v8 doubleValue];
    *a1 = v9 / 100.0;

    v10 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"Timestamp"];
    [v10 doubleValue];
    *(a1 + 8) = v11;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t CafeSwellAlgo::Deserialization::setACAMDailyDataFromDictionary(uint64_t a1, void *a2)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v21[0] = &unk_2853B00B0;
  v21[1] = &unk_2853B00B0;
  v21[2] = &unk_2853B00B0;
  v21[3] = &unk_2853B00B0;
  v21[4] = &unk_2853B00C0;
  v4 = BACore::CommonSerialization::getTimestampUpperBound(v3);
  v21[5] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:6];

  v7 = BACore::CommonSerialization::validateDataFromDictionary(v3, &unk_2853AFED8, &unk_2853AFEF0, v5, v6);
  if (v7)
  {
    v8 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"Qp"];
    [v8 doubleValue];
    *(a1 + 8) = v9;

    v10 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"Qn"];
    [v10 doubleValue];
    *(a1 + 16) = v11;

    v12 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"QLi"];
    [v12 doubleValue];
    *(a1 + 24) = v13;

    v14 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"protectiveBuffer"];
    [v14 doubleValue];
    *(a1 + 32) = v15;

    v16 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"Timestamp"];
    [v16 doubleValue];
    *a1 = v17;

    v18 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"statusBuffer"];
    *(a1 + 40) = [v18 intValue];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t CafeSwellAlgo::Deserialization::setACAMSBCDataFromDictionary(void *a1, void *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14[0] = &unk_2853B00E0;
  v4 = BACore::CommonSerialization::getTimestampUpperBound(v3);
  v14[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v7 = BACore::CommonSerialization::validateDataFromDictionary(v3, &unk_2853AFF08, &unk_2853AFF20, v5, v6);
  if (v7)
  {
    v8 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"potentialCathode"];
    [v8 doubleValue];
    a1[1] = v9;

    v10 = [(BACore::CommonSerialization *)v3 objectForKeyedSubscript:@"Timestamp"];
    [v10 doubleValue];
    *a1 = v11;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

id CafeSwellUtility::createRuntimeOptions(CafeSwellUtility *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    CafeSwellUtility::createRuntimeOptions();
  }

  v2 = [v1 objectForKey:@"batteryalgorithm"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"CafeSwell"];
    if (v4)
    {
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];
    }

    else
    {
      v5 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

char *createLogger(char *category)
{
  if (category)
  {
    category = os_log_create("com.apple.batteryalgorithms", category);
    v1 = vars8;
  }

  return category;
}

id AdaptiveOcvAlgo::Serialization::createDiskStateFromPersistentState(AdaptiveOcvAlgo::Serialization *this, const AdaptiveOcvAlgo::PersistentState *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v31[0] = @"state";
  v33 = @"table_dist";
  v30 = BACore::CommonSerialization::convertCArrayToNSArray<int const,100ul>(this);
  v49 = v30;
  v34 = @"table_dist_temp";
  v50 = BACore::CommonSerialization::convertCArrayToNSArray<int const,50ul>(this + 400);
  v35 = @"table_dist_day";
  v28 = v50;
  v51 = BACore::CommonSerialization::convertCArrayToNSArray<int const,15ul>(this + 600);
  v36 = @"table_pntr";
  v27 = v51;
  v26 = BACore::CommonSerialization::convertCArrayToNSArray<int const,100ul>(this + 660);
  v52 = v26;
  v37 = @"table_data";
  v25 = BACore::CommonSerialization::convertCArrayToNSArray<double const,5ul,500ul>(this + 1064);
  v53 = v25;
  v38 = @"f_mid_h";
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 2633)];
  v54 = v24;
  v39 = @"OCVcurvehysteresis_now";
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 2634)];
  v55 = v23;
  v40 = @"Vprev_mV";
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 2635)];
  v56 = v22;
  v41 = @"data_number";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(this + 5272)];
  v57 = v3;
  v42 = @"i3";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 2637)];
  v58 = v4;
  v43 = @"CtC3x3";
  v5 = BACore::CommonSerialization::convertCArrayToNSArray<double const,6ul>(this + 21104);
  v59 = v5;
  v44 = @"Cy3x1";
  v6 = BACore::CommonSerialization::convertCArrayToNSArray<double const,3ul>(this + 21152);
  v60 = v6;
  v45 = @"t_last";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:*(this + 5294)];
  v61 = v7;
  v46 = @"ChargeAccum_last";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:*(this + 5295)];
  v62 = v8;
  v47 = @"Thp_last";
  v9 = [MEMORY[0x277CCABB0] numberWithInt:*(this + 5296)];
  v63 = v9;
  v48 = @"idx_selected_OCV";
  v10 = [MEMORY[0x277CCABB0] numberWithInt:*(this + 5297)];
  v64 = v10;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v33 count:16];

  v31[1] = @"config_selected";
  v32[0] = v29;
  v33 = @"ChgOCV";
  v11 = BACore::CommonSerialization::convertCArrayToNSArray<double const,103ul>(this + 22840);
  v49 = v11;
  v34 = @"ChgOCV_temp_co";
  v12 = BACore::CommonSerialization::convertCArrayToNSArray<double const,103ul>(this + 23664);
  v50 = v12;
  v35 = @"OCV";
  v13 = BACore::CommonSerialization::convertCArrayToNSArray<double const,103ul>(this + 21192);
  v51 = v13;
  v36 = @"OCV_temp_co";
  v14 = BACore::CommonSerialization::convertCArrayToNSArray<double const,103ul>(this + 22016);
  v52 = v14;
  v37 = @"RefTemp";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 3164)];
  v53 = v15;
  v38 = @"SOC";
  v16 = BACore::CommonSerialization::convertCArrayToNSArray<double const,103ul>(this + 24488);
  v54 = v16;
  v39 = @"ready";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:*(this + 25320)];
  v55 = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v33 count:7];

  v32[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id AdaptiveOcvAlgo::Serialization::createBDCOutputFromPersistentState(double **this, const AdaptiveOcvAlgo::BDCOutput *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18 = @"Weekly";
  v15[0] = @"OCV_selected";
  v3 = BACore::CommonSerialization::convertVectorToNSArray<double>(this);
  v16[0] = v3;
  v15[1] = @"RMSE_ocv_candidates";
  v4 = BACore::CommonSerialization::convertVectorToNSArray<double>(this + 9);
  v16[1] = v4;
  v15[2] = @"V_captured";
  v5 = BACore::CommonSerialization::convertVectorToNSArray<double>(this + 3);
  v16[2] = v5;
  v15[3] = @"ccdrift_model_parameter";
  v6 = BACore::CommonSerialization::convertVectorToNSArray<double>(this + 12);
  v16[3] = v6;
  v15[4] = @"cover_scores";
  v7 = BACore::CommonSerialization::convertVectorToNSArray<double>(this + 6);
  v16[4] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{*(this + 31), @"OCV_selected", @"RMSE_ocv_candidates", @"V_captured", @"ccdrift_model_parameter", @"cover_scores", @"data_number"}];
  v16[5] = v8;
  v15[6] = @"idx_min_rmse";
  v9 = [MEMORY[0x277CCABB0] numberWithInt:*(this + 30)];
  v16[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:7];
  v17 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v19[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void AdaptiveOcvAlgo::Deserialization::setPersistentStatesFromDictionary(AdaptiveOcvAlgo::Deserialization *this, const NSDictionary *a2, AdaptiveOcvAlgo::PersistentState *a3)
{
  v34 = this;
  v4 = [(AdaptiveOcvAlgo::Deserialization *)v34 objectForKeyedSubscript:@"state"];
  v5 = [v4 objectForKeyedSubscript:@"table_dist"];
  BACore::CommonSerialization::assignNSArrayToCArray<int,100ul>(v5, a2);

  v6 = [v4 objectForKeyedSubscript:@"table_dist_temp"];
  BACore::CommonSerialization::assignNSArrayToCArray<int,50ul>(v6, &a2[50]);

  v7 = [v4 objectForKeyedSubscript:@"table_dist_day"];
  BACore::CommonSerialization::assignNSArrayToCArray<int,15ul>(v7, &a2[75]);

  v8 = [v4 objectForKeyedSubscript:@"table_pntr"];
  BACore::CommonSerialization::assignNSArrayToCArray<int,100ul>(v8, &a2[82].super.isa + 4);

  v9 = [v4 objectForKeyedSubscript:@"table_data"];
  BACore::CommonSerialization::assignNSArrayToCArray<double,5ul,500ul>(v9, &a2[133]);

  v10 = [v4 objectForKeyedSubscript:@"f_mid_h"];
  [v10 doubleValue];
  a2[2633].super.isa = v11;

  v12 = [v4 objectForKeyedSubscript:@"OCVcurvehysteresis_now"];
  [v12 doubleValue];
  a2[2634].super.isa = v13;

  v14 = [v4 objectForKeyedSubscript:@"Vprev_mV"];
  [v14 doubleValue];
  a2[2635].super.isa = v15;

  v16 = [v4 objectForKeyedSubscript:@"data_number"];
  LODWORD(a2[2636].super.isa) = [v16 intValue];

  v17 = [v4 objectForKeyedSubscript:@"i3"];
  [v17 doubleValue];
  a2[2637].super.isa = v18;

  v19 = [v4 objectForKeyedSubscript:@"CtC3x3"];
  BACore::CommonSerialization::assignNSArrayToCArray<double,6ul>(v19, &a2[2638]);

  v20 = [v4 objectForKeyedSubscript:@"Cy3x1"];
  BACore::CommonSerialization::assignNSArrayToCArray<double,3ul>(v20, &a2[2644]);

  v21 = [v4 objectForKeyedSubscript:@"t_last"];
  LODWORD(a2[2647].super.isa) = [v21 intValue];

  v22 = [v4 objectForKeyedSubscript:@"ChargeAccum_last"];
  HIDWORD(a2[2647].super.isa) = [v22 intValue];

  v23 = [v4 objectForKeyedSubscript:@"Thp_last"];
  LODWORD(a2[2648].super.isa) = [v23 intValue];

  v24 = [v4 objectForKeyedSubscript:@"idx_selected_OCV"];
  HIDWORD(a2[2648].super.isa) = [v24 intValue];

  v25 = [(AdaptiveOcvAlgo::Deserialization *)v34 objectForKeyedSubscript:@"config_selected"];
  v26 = [v25 objectForKeyedSubscript:@"ChgOCV"];
  BACore::CommonSerialization::assignNSArrayToCArray<double,103ul>(v26, &a2[2855]);

  v27 = [v25 objectForKeyedSubscript:@"ChgOCV_temp_co"];
  BACore::CommonSerialization::assignNSArrayToCArray<double,103ul>(v27, &a2[2958]);

  v28 = [v25 objectForKeyedSubscript:@"OCV"];
  BACore::CommonSerialization::assignNSArrayToCArray<double,103ul>(v28, &a2[2649]);

  v29 = [v25 objectForKeyedSubscript:@"OCV_temp_co"];
  BACore::CommonSerialization::assignNSArrayToCArray<double,103ul>(v29, &a2[2752]);

  v30 = [v25 objectForKeyedSubscript:@"RefTemp"];
  [v30 doubleValue];
  a2[3164].super.isa = v31;

  v32 = [v25 objectForKeyedSubscript:@"SOC"];
  BACore::CommonSerialization::assignNSArrayToCArray<double,103ul>(v32, &a2[3061]);

  v33 = [v25 objectForKeyedSubscript:@"ready"];
  LOBYTE(a2[3165].super.isa) = [v33 BOOLValue];
}

uint64_t AdaptiveOcvAlgo::Deserialization::setSystemLoadBufferFromArray(AdaptiveOcvAlgo::Deserialization *this, AdaptiveOcvAlgo::SystemLoadBuffer *a2, const NSArray *a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v22[0] = &unk_2853B0110;
  v22[1] = &unk_2853B0110;
  v22[2] = &unk_2853B0110;
  v22[3] = &unk_2853B0110;
  v22[4] = &unk_2853B0110;
  v4 = BACore::CommonSerialization::getTimestampUpperBound(v3);
  v22[5] = v4;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:6];

  for (i = 0; i < [(AdaptiveOcvAlgo::SystemLoadBuffer *)v3 count]; ++i)
  {
    v6 = [(AdaptiveOcvAlgo::SystemLoadBuffer *)v3 objectAtIndex:i];
    if (BACore::CommonSerialization::validateDataFromDictionary(v6, &unk_2853AFF50, &unk_2853AFF68, v21, v7))
    {
      v8 = [v6 objectForKeyedSubscript:@"Timestamp"];
      v9 = [v8 intValue];

      v10 = [v6 objectForKeyedSubscript:@"Voltage"];
      v11 = [v10 intValue];

      v12 = [v6 objectForKeyedSubscript:@"InstantAmperage"];
      v13 = [v12 intValue];

      v14 = [v6 objectForKeyedSubscript:@"AlgoTemperature"];
      v15 = [v14 intValue];

      v16 = [v6 objectForKeyedSubscript:@"ChargeAccum"];
      LODWORD(v14) = [v16 intValue];

      v17 = [v6 objectForKeyedSubscript:@"PresentDOD"];
      LODWORD(v16) = [v17 intValue];

      AdaptiveOcvAlgo::SystemLoadBuffer::populate(this, v9, v11, v13, v15, v14, v16);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t AdaptiveOcvAlgo::Deserialization::setMlOcvFromDictionary(AdaptiveOcvAlgo::Deserialization *this, const NSDictionary *a2, ConfigurationMLOCV *a3)
{
  v4 = this;
  v5 = [(AdaptiveOcvAlgo::Deserialization *)v4 objectForKeyedSubscript:@"model_prediction"];
  v6 = [(AdaptiveOcvAlgo::Deserialization *)v4 objectForKeyedSubscript:@"model_prediction"];
  if (!v6)
  {
    goto LABEL_3;
  }

  v7 = [(AdaptiveOcvAlgo::Deserialization *)v4 objectForKeyedSubscript:@"model_prediction"];
  v8 = [MEMORY[0x277CBEB68] null];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    BACore::CommonSerialization::assignNSArrayToCArray<double,91ul>(v5, a2);
    v10 = 1;
  }

  else
  {
LABEL_3:
    v10 = 0;
  }

  return v10;
}

id BACore::CommonSerialization::convertCArrayToNSArray<int const,100ul>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
  for (i = 0; i != 400; i += 4)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + i)];
    [v2 addObject:v4];
  }

  v5 = [v2 copy];

  return v5;
}

id BACore::CommonSerialization::convertCArrayToNSArray<int const,50ul>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:50];
  for (i = 0; i != 200; i += 4)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + i)];
    [v2 addObject:v4];
  }

  v5 = [v2 copy];

  return v5;
}

id BACore::CommonSerialization::convertCArrayToNSArray<int const,15ul>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:15];
  for (i = 0; i != 60; i += 4)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + i)];
    [v2 addObject:v4];
  }

  v5 = [v2 copy];

  return v5;
}

id BACore::CommonSerialization::convertCArrayToNSArray<double const,5ul,500ul>(uint64_t a1)
{
  v2 = 5;
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  do
  {
    v4 = BACore::CommonSerialization::convertCArrayToNSArray<double const,500ul>(a1);
    [v3 addObject:v4];

    a1 += 4000;
    --v2;
  }

  while (v2);
  v5 = [v3 copy];

  return v5;
}

id BACore::CommonSerialization::convertCArrayToNSArray<double const,6ul>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:6];
  for (i = 0; i != 48; i += 8)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + i)];
    [v2 addObject:v4];
  }

  v5 = [v2 copy];

  return v5;
}

id BACore::CommonSerialization::convertCArrayToNSArray<double const,3ul>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  for (i = 0; i != 24; i += 8)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + i)];
    [v2 addObject:v4];
  }

  v5 = [v2 copy];

  return v5;
}

id BACore::CommonSerialization::convertCArrayToNSArray<double const,500ul>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:500];
  for (i = 0; i != 4000; i += 8)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + i)];
    [v2 addObject:v4];
  }

  v5 = [v2 copy];

  return v5;
}

id BACore::CommonSerialization::convertCArrayToNSArray<double const,103ul>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:103];
  for (i = 0; i != 824; i += 8)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + i)];
    [v2 addObject:v4];
  }

  v5 = [v2 copy];

  return v5;
}

void BACore::CommonSerialization::assignNSArrayToCArray<int,100ul>(void *a1, uint64_t a2)
{
  v11 = a1;
  if (v11)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    v4 = [v11 isEqual:v3];

    if ((v4 & 1) == 0)
    {
      v5 = [v11 count];
      v6 = 0;
      if (v5 <= 0x64)
      {
        v7 = 100;
      }

      else
      {
        v7 = v5;
      }

      do
      {
        v8 = [v11 objectAtIndex:v6];
        [v8 doubleValue];
        v10 = v9;

        *(a2 + 4 * v6++) = v10;
      }

      while (v7 != v6);
    }
  }
}

void BACore::CommonSerialization::assignNSArrayToCArray<int,50ul>(void *a1, uint64_t a2)
{
  v11 = a1;
  if (v11)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    v4 = [v11 isEqual:v3];

    if ((v4 & 1) == 0)
    {
      v5 = [v11 count];
      v6 = 0;
      if (v5 <= 0x32)
      {
        v7 = 50;
      }

      else
      {
        v7 = v5;
      }

      do
      {
        v8 = [v11 objectAtIndex:v6];
        [v8 doubleValue];
        v10 = v9;

        *(a2 + 4 * v6++) = v10;
      }

      while (v7 != v6);
    }
  }
}

void BACore::CommonSerialization::assignNSArrayToCArray<int,15ul>(void *a1, uint64_t a2)
{
  v11 = a1;
  if (v11)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    v4 = [v11 isEqual:v3];

    if ((v4 & 1) == 0)
    {
      v5 = [v11 count];
      v6 = 0;
      if (v5 <= 0xF)
      {
        v7 = 15;
      }

      else
      {
        v7 = v5;
      }

      do
      {
        v8 = [v11 objectAtIndex:v6];
        [v8 doubleValue];
        v10 = v9;

        *(a2 + 4 * v6++) = v10;
      }

      while (v7 != v6);
    }
  }
}

void BACore::CommonSerialization::assignNSArrayToCArray<double,5ul,500ul>(void *a1, uint64_t a2)
{
  v9 = a1;
  if (v9)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    v4 = [v9 isEqual:v3];

    if ((v4 & 1) == 0)
    {
      v5 = [v9 count];
      v6 = 0;
      if (v5 <= 5)
      {
        v7 = 5;
      }

      else
      {
        v7 = v5;
      }

      do
      {
        v8 = [v9 objectAtIndex:v6];
        BACore::CommonSerialization::assignNSArrayToCArray<double,500ul>(v8, a2);

        ++v6;
        a2 += 4000;
      }

      while (v7 != v6);
    }
  }
}

void BACore::CommonSerialization::assignNSArrayToCArray<double,6ul>(void *a1, uint64_t a2)
{
  v11 = a1;
  if (v11)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    v4 = [v11 isEqual:v3];

    if ((v4 & 1) == 0)
    {
      v5 = [v11 count];
      v6 = 0;
      if (v5 <= 6)
      {
        v7 = 6;
      }

      else
      {
        v7 = v5;
      }

      do
      {
        v8 = [v11 objectAtIndex:v6];
        [v8 doubleValue];
        v10 = v9;

        *(a2 + 8 * v6++) = v10;
      }

      while (v7 != v6);
    }
  }
}

void BACore::CommonSerialization::assignNSArrayToCArray<double,3ul>(void *a1, uint64_t a2)
{
  v11 = a1;
  if (v11)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    v4 = [v11 isEqual:v3];

    if ((v4 & 1) == 0)
    {
      v5 = [v11 count];
      v6 = 0;
      if (v5 <= 3)
      {
        v7 = 3;
      }

      else
      {
        v7 = v5;
      }

      do
      {
        v8 = [v11 objectAtIndex:v6];
        [v8 doubleValue];
        v10 = v9;

        *(a2 + 8 * v6++) = v10;
      }

      while (v7 != v6);
    }
  }
}

void BACore::CommonSerialization::assignNSArrayToCArray<double,500ul>(void *a1, uint64_t a2)
{
  v11 = a1;
  if (v11)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    v4 = [v11 isEqual:v3];

    if ((v4 & 1) == 0)
    {
      v5 = [v11 count];
      v6 = 0;
      if (v5 <= 0x1F4)
      {
        v7 = 500;
      }

      else
      {
        v7 = v5;
      }

      do
      {
        v8 = [v11 objectAtIndex:v6];
        [v8 doubleValue];
        v10 = v9;

        *(a2 + 8 * v6++) = v10;
      }

      while (v7 != v6);
    }
  }
}

void BACore::CommonSerialization::assignNSArrayToCArray<double,103ul>(void *a1, uint64_t a2)
{
  v11 = a1;
  if (v11)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    v4 = [v11 isEqual:v3];

    if ((v4 & 1) == 0)
    {
      v5 = [v11 count];
      v6 = 0;
      if (v5 <= 0x67)
      {
        v7 = 103;
      }

      else
      {
        v7 = v5;
      }

      do
      {
        v8 = [v11 objectAtIndex:v6];
        [v8 doubleValue];
        v10 = v9;

        *(a2 + 8 * v6++) = v10;
      }

      while (v7 != v6);
    }
  }
}

AdaptiveOcvAlgo::PersistentState *AdaptiveOcvAlgo::PersistentState::PersistentState(AdaptiveOcvAlgo::PersistentState *this)
{
  *(this + 21064) = 0u;
  *(this + 2635) = 0x40A7700000000000;
  *(this + 5272) = 0;
  v2 = (this + 21096);
  bzero(this + 1064, 0x4E20uLL);
  bzero(this, 0x424uLL);
  *(v2 + 76) = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  *v2 = 0u;
  *(this + 25320) = 0;
  bzero(this + 21192, 0x1018uLL);
  *(this + 3164) = 0x4072A28F5C28F5C3;
  return this;
}

{
  *(this + 21064) = 0u;
  *(this + 2635) = 0x40A7700000000000;
  *(this + 5272) = 0;
  v2 = (this + 21096);
  bzero(this + 1064, 0x4E20uLL);
  bzero(this, 0x424uLL);
  *(v2 + 76) = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  *v2 = 0u;
  *(this + 25320) = 0;
  bzero(this + 21192, 0x1018uLL);
  *(this + 3164) = 0x4072A28F5C28F5C3;
  return this;
}

AdaptiveOcvAlgo::SystemLoadBuffer *AdaptiveOcvAlgo::SystemLoadBuffer::SystemLoadBuffer(AdaptiveOcvAlgo::SystemLoadBuffer *this, std::vector<int>::size_type a2)
{
  *(this + 3) = 0u;
  v4 = (this + 48);
  *(this + 6) = 0u;
  v5 = (this + 96);
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  std::vector<int>::reserve(this, a2);
  std::vector<int>::reserve(this + 1, a2);
  std::vector<int>::reserve(v4, a2);
  std::vector<int>::reserve(this + 3, a2);
  std::vector<int>::reserve(v5, a2);
  std::vector<int>::reserve(this + 5, a2);
  return this;
}

void sub_241A938B8(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 120);
  if (v5)
  {
    *(v1 + 128) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 104) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 72);
  if (v7)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v8;
    operator delete(v8);
  }

  v9 = *(v1 + 24);
  if (v9)
  {
    *(v1 + 32) = v9;
    operator delete(v9);
  }

  v10 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, __n);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }
}

void *AdaptiveOcvAlgo::SystemLoadBuffer::clear(void *this)
{
  this[1] = *this;
  this[4] = this[3];
  this[7] = this[6];
  this[10] = this[9];
  this[13] = this[12];
  this[16] = this[15];
  return this;
}

void AdaptiveOcvAlgo::SystemLoadBuffer::populate(AdaptiveOcvAlgo::SystemLoadBuffer *this, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v15 = *(this + 1);
  v14 = *(this + 2);
  if (v15 >= v14)
  {
    v17 = *this;
    v18 = v15 - *this;
    v19 = v18 >> 2;
    v20 = (v18 >> 2) + 1;
    if (v20 >> 62)
    {
      goto LABEL_68;
    }

    v21 = v14 - v17;
    if (v21 >> 1 > v20)
    {
      v20 = v21 >> 1;
    }

    v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
    v23 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v22)
    {
      v23 = v20;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v23);
    }

    *(4 * v19) = a2;
    v16 = 4 * v19 + 4;
    memcpy(0, v17, v18);
    v24 = *this;
    *this = 0;
    *(this + 1) = v16;
    *(this + 2) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v15 = a2;
    v16 = (v15 + 1);
  }

  *(this + 1) = v16;
  v26 = *(this + 4);
  v25 = *(this + 5);
  if (v26 >= v25)
  {
    v28 = *(this + 3);
    v29 = v26 - v28;
    v30 = (v26 - v28) >> 2;
    v31 = v30 + 1;
    if ((v30 + 1) >> 62)
    {
      goto LABEL_68;
    }

    v32 = v25 - v28;
    if (v32 >> 1 > v31)
    {
      v31 = v32 >> 1;
    }

    v22 = v32 >= 0x7FFFFFFFFFFFFFFCLL;
    v33 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v22)
    {
      v33 = v31;
    }

    if (v33)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this + 24, v33);
    }

    v34 = (v26 - v28) >> 2;
    v35 = (4 * v30);
    v36 = (4 * v30 - 4 * v34);
    *v35 = a3;
    v27 = v35 + 1;
    memcpy(v36, v28, v29);
    v37 = *(this + 3);
    *(this + 3) = v36;
    *(this + 4) = v27;
    *(this + 5) = 0;
    if (v37)
    {
      operator delete(v37);
    }
  }

  else
  {
    *v26 = a3;
    v27 = v26 + 4;
  }

  *(this + 4) = v27;
  v39 = *(this + 7);
  v38 = *(this + 8);
  if (v39 >= v38)
  {
    v41 = *(this + 6);
    v42 = v39 - v41;
    v43 = (v39 - v41) >> 2;
    v44 = v43 + 1;
    if ((v43 + 1) >> 62)
    {
      goto LABEL_68;
    }

    v45 = v38 - v41;
    if (v45 >> 1 > v44)
    {
      v44 = v45 >> 1;
    }

    v22 = v45 >= 0x7FFFFFFFFFFFFFFCLL;
    v46 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v22)
    {
      v46 = v44;
    }

    if (v46)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this + 48, v46);
    }

    v47 = (v39 - v41) >> 2;
    v48 = (4 * v43);
    v49 = (4 * v43 - 4 * v47);
    *v48 = a4;
    v40 = v48 + 1;
    memcpy(v49, v41, v42);
    v50 = *(this + 6);
    *(this + 6) = v49;
    *(this + 7) = v40;
    *(this + 8) = 0;
    if (v50)
    {
      operator delete(v50);
    }
  }

  else
  {
    *v39 = a4;
    v40 = v39 + 4;
  }

  *(this + 7) = v40;
  v52 = *(this + 10);
  v51 = *(this + 11);
  if (v52 >= v51)
  {
    v54 = *(this + 9);
    v55 = v52 - v54;
    v56 = (v52 - v54) >> 2;
    v57 = v56 + 1;
    if ((v56 + 1) >> 62)
    {
      goto LABEL_68;
    }

    v58 = v51 - v54;
    if (v58 >> 1 > v57)
    {
      v57 = v58 >> 1;
    }

    v22 = v58 >= 0x7FFFFFFFFFFFFFFCLL;
    v59 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v22)
    {
      v59 = v57;
    }

    if (v59)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this + 72, v59);
    }

    v60 = (v52 - v54) >> 2;
    v61 = (4 * v56);
    v62 = (4 * v56 - 4 * v60);
    *v61 = a5;
    v53 = v61 + 1;
    memcpy(v62, v54, v55);
    v63 = *(this + 9);
    *(this + 9) = v62;
    *(this + 10) = v53;
    *(this + 11) = 0;
    if (v63)
    {
      operator delete(v63);
    }
  }

  else
  {
    *v52 = a5;
    v53 = v52 + 4;
  }

  *(this + 10) = v53;
  v65 = *(this + 13);
  v64 = *(this + 14);
  if (v65 >= v64)
  {
    v67 = *(this + 12);
    v68 = v65 - v67;
    v69 = (v65 - v67) >> 2;
    v70 = v69 + 1;
    if ((v69 + 1) >> 62)
    {
      goto LABEL_68;
    }

    v71 = v64 - v67;
    if (v71 >> 1 > v70)
    {
      v70 = v71 >> 1;
    }

    v22 = v71 >= 0x7FFFFFFFFFFFFFFCLL;
    v72 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v22)
    {
      v72 = v70;
    }

    if (v72)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this + 96, v72);
    }

    v73 = (v65 - v67) >> 2;
    v74 = (4 * v69);
    v75 = (4 * v69 - 4 * v73);
    *v74 = a6;
    v66 = v74 + 1;
    memcpy(v75, v67, v68);
    v76 = *(this + 12);
    *(this + 12) = v75;
    *(this + 13) = v66;
    *(this + 14) = 0;
    if (v76)
    {
      operator delete(v76);
    }
  }

  else
  {
    *v65 = a6;
    v66 = v65 + 4;
  }

  *(this + 13) = v66;
  v78 = *(this + 16);
  v77 = *(this + 17);
  if (v78 < v77)
  {
    *v78 = a7;
    v79 = v78 + 4;
    goto LABEL_67;
  }

  v80 = *(this + 15);
  v81 = v78 - v80;
  v82 = (v78 - v80) >> 2;
  v83 = v82 + 1;
  if ((v82 + 1) >> 62)
  {
LABEL_68:
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v84 = v77 - v80;
  if (v84 >> 1 > v83)
  {
    v83 = v84 >> 1;
  }

  v22 = v84 >= 0x7FFFFFFFFFFFFFFCLL;
  v85 = 0x3FFFFFFFFFFFFFFFLL;
  if (!v22)
  {
    v85 = v83;
  }

  if (v85)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this + 120, v85);
  }

  v86 = (v78 - v80) >> 2;
  v87 = (4 * v82);
  v88 = (4 * v82 - 4 * v86);
  *v87 = a7;
  v79 = v87 + 1;
  memcpy(v88, v80, v81);
  v89 = *(this + 15);
  *(this + 15) = v88;
  *(this + 16) = v79;
  *(this + 17) = 0;
  if (v89)
  {
    operator delete(v89);
  }

LABEL_67:
  *(this + 16) = v79;
}

uint64_t *AdaptiveOcvAlgo::SystemLoadBuffer::view@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  *(a2 + 88) = (this[1] - *this) >> 2;
  v3 = this[3];
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  v4 = this[9];
  *(a2 + 24) = this[6];
  *(a2 + 32) = v4;
  v5 = this[15];
  *(a2 + 40) = this[12];
  *(a2 + 48) = v5;
  *(a2 + 104) = 257;
  return this;
}

uint64_t AdaptiveOcvAlgo::CoreEngine::CoreEngine(uint64_t a1, const void *a2)
{
  v3 = a1 + 59616;
  memcpy(a1, a2, 0x10B0uLL);
  *(a1 + 25336) = 0u;
  *(a1 + 25352) = 0x40A7700000000000;
  *(a1 + 25360) = 0;
  bzero((a1 + 5336), 0x4E20uLL);
  bzero((a1 + 4272), 0x424uLL);
  *(a1 + 25444) = 0u;
  *(a1 + 25416) = 0u;
  *(a1 + 25432) = 0u;
  *(a1 + 25384) = 0u;
  *(a1 + 25400) = 0u;
  *(a1 + 25368) = 0u;
  *(a1 + 25464) = 0u;
  *(a1 + 25480) = 0u;
  *(a1 + 25496) = 0;
  AdaptiveOcvAlgo::CCdriftModel::CCdriftModel((a1 + 25504));
  *(a1 + 51344) = 0;
  *(a1 + 55480) = 0;
  *v3 = 0;
  *(a1 + 59624) = 0u;
  *(a1 + 59640) = 0u;
  *(a1 + 59656) = 0u;
  *(a1 + 59672) = 0u;
  *(a1 + 59688) = 0;
  *(v3 + 112) = 0;
  return a1;
}

{
  v3 = a1 + 59616;
  memcpy(a1, a2, 0x10B0uLL);
  *(a1 + 25336) = 0u;
  *(a1 + 25352) = 0x40A7700000000000;
  *(a1 + 25360) = 0;
  bzero((a1 + 5336), 0x4E20uLL);
  bzero((a1 + 4272), 0x424uLL);
  *(a1 + 25444) = 0u;
  *(a1 + 25416) = 0u;
  *(a1 + 25432) = 0u;
  *(a1 + 25384) = 0u;
  *(a1 + 25400) = 0u;
  *(a1 + 25368) = 0u;
  *(a1 + 25464) = 0u;
  *(a1 + 25480) = 0u;
  *(a1 + 25496) = 0;
  AdaptiveOcvAlgo::CCdriftModel::CCdriftModel((a1 + 25504));
  *(a1 + 51344) = 0;
  *(a1 + 55480) = 0;
  *v3 = 0;
  *(a1 + 59624) = 0u;
  *(a1 + 59640) = 0u;
  *(a1 + 59656) = 0u;
  *(a1 + 59672) = 0u;
  *(a1 + 59688) = 0;
  *(v3 + 112) = 0;
  return a1;
}

void AdaptiveOcvAlgo::CoreEngine::~CoreEngine(AdaptiveOcvAlgo::CoreEngine *this)
{
  v1 = this + 59624;
  v2 = this + 47112;
  v3 = *(this + 7453);
  if (v3)
  {
    *(v1 + 1) = v3;
    operator delete(v3);
  }

  v4 = *v2;
  if (*v2)
  {
    *(v2 + 1) = v4;
    operator delete(v4);
  }
}

uint64_t AdaptiveOcvAlgo::CoreEngine::freeData4SympOCV(AdaptiveOcvAlgo::CoreEngine *this)
{
  result = *(this + 7466);
  if (result)
  {
    result = MEMORY[0x245CF6720](result, 0x1000C8052888210);
  }

  *(this + 7466) = 0;
  return result;
}

void AdaptiveOcvAlgo::CoreEngine::runAlgorithm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v5 = *(v4 + 88);
  v7 = v3[6363];
  v6 = v3[6364];
  AdaptiveOcvAlgo::CoreEngine::prepData4SympOCV(v3, *(v4 + 40));
}

__n128 AdaptiveOcvAlgo::CoreEngine::getDriftState(uint64_t a1, char *__dst)
{
  v4 = (a1 + 25504);
  memcpy(__dst, (a1 + 25504), 0x5464uLL);
  if (v4 != __dst)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(__dst + 2701, *(a1 + 47112), *(a1 + 47120), (*(a1 + 47120) - *(a1 + 47112)) >> 3);
  }

  *(__dst + 1352) = *(a1 + 47136);
  result = *(a1 + 47193);
  v6 = *(a1 + 47152);
  v7 = *(a1 + 47168);
  v8 = *(a1 + 47184);
  *(__dst + 21689) = result;
  *(__dst + 1355) = v8;
  *(__dst + 1354) = v7;
  *(__dst + 1353) = v6;
  return result;
}

__n128 AdaptiveOcvAlgo::CoreEngine::setDriftState(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 25504;
  memcpy((a1 + 25504), a2, 0x5464uLL);
  if (v4 != a2)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 47112), *(a2 + 21608), *(a2 + 21616), (*(a2 + 21616) - *(a2 + 21608)) >> 3);
  }

  *(a1 + 47136) = *(a2 + 21632);
  result = *(a2 + 21689);
  v6 = *(a2 + 21648);
  v7 = *(a2 + 21664);
  v8 = *(a2 + 21680);
  *(a1 + 47193) = result;
  *(a1 + 47184) = v8;
  *(a1 + 47168) = v7;
  *(a1 + 47152) = v6;
  return result;
}

void AdaptiveOcvAlgo::CoreEngine::getSelectedOCV(const void *a1, uint64_t a2, double *a3, char *a4, double a5, double a6)
{
  v12 = std::vector<double>::vector[abi:ne200100](__p, 0x67uLL);
  AdaptiveOcvAlgo::CoreEngine::getOCVminRMSE(a5, a6, v12, a2, a2 + 4136, a2 + 8272, a3, __p);
  memcpy(a4, a1, 0x1021uLL);
  v13 = 0;
  v14 = __p[0];
  do
  {
    *&a4[v13] = *&v14[v13];
    v13 += 8;
  }

  while (v13 != 824);
  __p[1] = v14;
  operator delete(v14);
}

double AdaptiveOcvAlgo::CoreEngine::getOCVminRMSE(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, uint64_t *a8)
{
  v8 = *a7 <= a1;
  if (*a7 <= a1)
  {
    a1 = *a7;
  }

  v9 = 2 * v8;
  if (a1 > a2)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = *a8;
  if (v10)
  {
    if (v10 == 1)
    {
      for (i = 0; i != 824; i += 8)
      {
        result = *(a5 + i);
        *(v11 + i) = result;
      }
    }

    else
    {
      for (j = 0; j != 824; j += 8)
      {
        result = *(a6 + j);
        *(v11 + j) = result;
      }
    }
  }

  else
  {
    for (k = 0; k != 824; k += 8)
    {
      result = *(a4 + k);
      *(v11 + k) = result;
    }
  }

  return result;
}

void AdaptiveOcvAlgo::CoreEngine::getTelemetry(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, AdaptiveOcvAlgo::CoverageScoreParam *a6, uint64_t a7, double *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, double **a12, void *a13, int *a14, _DWORD *a15)
{
  std::vector<double>::resize(a10, 0x64uLL);
  AdaptiveOcvAlgo::CoreEngine::getCapturedV(v24, a4 + 1064, a10);
  std::vector<double>::resize(a9, 0x67uLL);
  AdaptiveOcvAlgo::CoreEngine::getOCVminRMSE(a1, a2, v25, a5, a5 + 4136, a5 + 8272, a8, a9);
  std::vector<double>::resize(a11, 5uLL);
  CoverageScore = AdaptiveOcvAlgo::CoverageScoreParam::getCoverageScore(a6);
  v27 = *a11;
  *v27 = CoverageScore;
  *(v27 + 8) = *(a6 + 1);
  *(v27 + 16) = *(a6 + 2);
  *(v27 + 24) = *(a6 + 4);
  *(v27 + 32) = *(a6 + 3);
  std::vector<double>::resize(a12, 3uLL);
  v28 = *a12;
  *v28 = a1;
  v28[1] = a2;
  v28[2] = *a8;
  std::vector<double>::resize(a13, 3uLL);
  if ((a7 + 21608) != a13)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a13, *(a7 + 21608), *(a7 + 21616), (*(a7 + 21616) - *(a7 + 21608)) >> 3);
  }

  v29 = *a8;
  if (*a8 > a1)
  {
    v29 = a1;
  }

  v30 = 2 * (*a8 <= a1);
  if (v29 > a2)
  {
    v30 = 1;
  }

  *a14 = v30;
  *a15 = *(a4 + 21088);
}

void std::vector<double>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v2);
  }
}

void AdaptiveOcvAlgo::CoreEngine::getCapturedV(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = 0;
  v4 = a2 + 8000;
  v5 = *a3;
  do
  {
    v6 = 0;
    v7 = 0;
    v8 = 0.0;
    do
    {
      v9 = *(v4 + v6);
      v10 = v9 > 0.0;
      v11 = v9 < 100000.0;
      v12 = v8 + v9;
      v13 = v10 && v11;
      if (v13)
      {
        v8 = v12;
      }

      v7 += v13;
      v6 += 8;
    }

    while (v6 != 40);
    if (v7)
    {
      v14 = v8 / v7;
    }

    else
    {
      v14 = 0.0;
    }

    *(v5 + 8 * v3++) = v14;
    v4 += 40;
  }

  while (v3 != 100);
}

uint64_t AdaptiveOcvAlgo::CoreEngine::getIdxMinRMSE(AdaptiveOcvAlgo::CoreEngine *this, double a2, double a3, double *a4)
{
  v4 = *a4 <= a2;
  if (*a4 <= a2)
  {
    a2 = *a4;
  }

  v5 = 2 * v4;
  if (a2 > a3)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

void *AdaptiveOcvAlgo::CoreEngine::init(AdaptiveOcvAlgo::CoreEngine *this, const ConfigurationOCV *a2, const ConfigurationOCV *a3, const AdaptiveOcvAlgo::MLOCVModel *a4)
{
  AdaptiveOcvAlgo::CCSOCLinearModel::pushOCVPOR((this + 47216), a2);
  result = AdaptiveOcvAlgo::CCSOCLinearModel::pushOCVSelected((this + 47216), a3);
  if (*a4 >= 0.001)
  {
    result = memcpy(this + 55488, this + 47216, 0x1028uLL);
    for (i = 0; i != 728; i += 8)
    {
      *(this + i + 55576) = *(a4 + i);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  *(this + 59616) = v8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

AdaptiveOcvAlgo::CCdriftModel *AdaptiveOcvAlgo::CCdriftModel::CCdriftModel(AdaptiveOcvAlgo::CCdriftModel *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = this + 20480;
  *(this + 5400) = 0;
  memset(v7, 0, sizeof(v7));
  *(this + 2701) = 0;
  *(this + 2703) = 0;
  *(this + 2702) = 0;
  v3 = 3;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(this + 21608, v7, &v8, 3uLL);
  v2[1224] = 0;
  bzero(this, 0x5460uLL);
  v4 = this;
  do
  {
    memset_pattern16(v4, &unk_241AB1510, 0x1C20uLL);
    v4 = (v4 + 7200);
    --v3;
  }

  while (v3);
  *(this + 2712) = 0;
  *(this + 1355) = 0u;
  *(this + 1354) = 0u;
  *(this + 1353) = 0u;
  *(this + 1352) = 0u;
  v5 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241A94AE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_241A94BB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *AdaptiveOcvAlgo::Matrix::print(void *result, double ***a2, __n128 a3)
{
  v4 = *(result + 23);
  if (v4 < 0)
  {
    v5 = result[1];
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!*(result + 23))
    {
      goto LABEL_12;
    }

    v5 = result[1];
  }

  if (v4 >= 0)
  {
    v6 = result;
  }

  else
  {
    v6 = *result;
  }

  if (v4 >= 0)
  {
    v7 = *(result + 23);
  }

  else
  {
    v7 = v5;
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], v6, v7);
  v15 = 10;
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v15, 1);
LABEL_12:
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v11 = MEMORY[0x277D82678];
    do
    {
      v12 = *v9;
      v13 = v9[1];
      while (v12 != v13)
      {
        v14 = *v12++;
        a3.n128_f64[0] = v14;
        *(v11 + *(*v11 - 24) + 24) = 15;
        if (fabs(v14) < 1.0e-10)
        {
          a3.n128_f64[0] = 0.0;
        }

        MEMORY[0x245CF6690](v11, a3);
      }

      v16 = 10;
      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v16, 1);
      v9 += 3;
    }

    while (v9 != v10);
  }

  return result;
}

void AdaptiveOcvAlgo::Matrix::matmul(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v6 = **a1;
  v5 = (*a1)[1];
  v7 = *a2;
  if ((v5 - v6) >> 3 != 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3))
  {
    AdaptiveOcvAlgo::Matrix::matmul();
  }

  v30 = a1[1];
  v11 = *v7;
  v10 = v7[1];
  v12 = (v10 - *v7) >> 3;
  std::vector<double>::vector[abi:ne200100](__p, v12);
  v29 = 0xAAAAAAAAAAAAAAABLL * (v30 - v4);
  std::vector<std::vector<double>>::vector[abi:ne200100](a3, v29);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30 != v4)
  {
    v13 = 0;
    v15 = 0xAAAAAAAAAAAAAAABLL * (v30 - v4);
    v14 = (v5 - v6) >> 3;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    if (v12 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v12;
    }

    if (v29 <= 1)
    {
      v15 = 1;
    }

    do
    {
      if (v10 != v11)
      {
        v17 = 0;
        v18 = *a1;
        v19 = *a2;
        v20 = *a3;
        do
        {
          if (v5 != v6)
          {
            v21 = v18[3 * v13];
            v22 = *(v20 + 24 * v13);
            v23 = *(v22 + 8 * v17);
            v24 = v14;
            v25 = v19;
            do
            {
              v26 = *v21++;
              v27 = v26;
              v28 = *v25;
              v25 += 3;
              v23 = v23 + v27 * *(v28 + 8 * v17);
              *(v22 + 8 * v17) = v23;
              --v24;
            }

            while (v24);
          }

          ++v17;
        }

        while (v17 != v16);
      }

      ++v13;
    }

    while (v13 != v15);
  }
}

void sub_241A94F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AdaptiveOcvAlgo::Matrix::subtract(uint64_t **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 - *a1;
  if (v6 != a2[1] - *a2 || (v8 = *v5, v7 = v5[1], v9 = v7 - *v5, v9 != *(*a2 + 8) - **a2))
  {
    AdaptiveOcvAlgo::Matrix::subtract();
  }

  v12 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  v13 = v9 >> 3;
  std::vector<double>::vector[abi:ne200100](__p, v9 >> 3);
  std::vector<std::vector<double>>::vector[abi:ne200100](a3, v12);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v4 != v5)
  {
    v14 = 0;
    v15 = *a1;
    v16 = *a2;
    v17 = *a3;
    if (v13 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v13;
    }

    if (v12 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v12;
    }

    do
    {
      if (v7 != v8)
      {
        v20 = v15[3 * v14];
        v21 = *(v16 + 24 * v14);
        v22 = *(v17 + 24 * v14);
        v23 = v18;
        do
        {
          v24 = *v20++;
          v25 = v24;
          v26 = *v21++;
          *v22++ = v25 - v26;
          --v23;
        }

        while (v23);
      }

      ++v14;
    }

    while (v14 != v19);
  }
}

void sub_241A950E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double ***AdaptiveOcvAlgo::Matrix::oppsign@<X0>(double ***result@<X0>, double ***a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    v4 = *result;
    do
    {
      v5 = *v4;
      v6 = v4[1];
      while (v5 != v6)
      {
        *v5 = -*v5;
        ++v5;
      }

      v4 += 3;
    }

    while (v4 != v3);
  }

  *a2 = v2;
  a2[1] = v3;
  a2[2] = result[2];
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void AdaptiveOcvAlgo::Matrix::subMatrix(void *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = a2;
  v12 = a3 - a2;
  std::vector<double>::vector[abi:ne200100](__p, a5 - a4 + 1);
  std::vector<std::vector<double>>::vector[abi:ne200100](a6, v12 + 1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (a3 >= v9)
  {
    v13 = 0;
    v14 = 8 * a4;
    v15 = 8 * a5 + 8;
    v16 = *a6;
    v17 = 24 * v9;
    v18 = v15 - 8 * a4;
    do
    {
      if (v15 != v14)
      {
        memmove(*(v16 + v13), (v14 + *(*a1 + v17)), v18);
        v16 = *a6;
      }

      ++v9;
      v17 += 24;
      v13 += 24;
    }

    while (v9 <= a3);
  }
}

void sub_241A9523C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AdaptiveOcvAlgo::Matrix::assembly(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a1) >> 3);
  v13 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
  v14 = v13 - 0x5555555555555555 * ((v10 - *a1) >> 3);
  std::vector<double>::vector[abi:ne200100](__p, v14);
  std::vector<std::vector<double>>::vector[abi:ne200100](a5, v14);
  v36 = v14;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v15 = 8 * v12;
  if (v10 != v11)
  {
    v16 = 0;
    if (v12 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v12;
    }

    v18 = *a5;
    do
    {
      v19 = *a1 + v16;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v18 + v16);
      if (v21 != v20)
      {
        memmove(v22, v20, v21 - v20);
        v18 = *a5;
        v22 = *(*a5 + v16);
      }

      v23 = *a2 + v16;
      v24 = *v23;
      v25 = *(v23 + 8);
      if (v25 != v24)
      {
        memmove(&v22[v15], v24, v25 - v24);
        v18 = *a5;
      }

      v16 += 24;
      --v17;
    }

    while (v17);
  }

  if (v12 < v36)
  {
    v26 = 0;
    v27 = *a5;
    v28 = 24 * v12;
    do
    {
      v29 = *a3 + v26;
      v30 = *v29;
      v31 = *(v29 + 8);
      v32 = *(v27 + v28 + v26);
      if (v31 != v30)
      {
        memmove(v32, v30, v31 - v30);
        v27 = *a5;
        v32 = *(*a5 + v28 + v26);
      }

      v33 = *a4 + v26;
      v34 = *v33;
      v35 = *(v33 + 8);
      if (v35 != v34)
      {
        memmove(&v32[v15], v34, v35 - v34);
        v27 = *a5;
      }

      v26 += 24;
      --v13;
    }

    while (v13);
  }
}

void sub_241A953EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AdaptiveOcvAlgo::Matrix::inverse(double ***a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1] - *a1;
  if (v3 == 24)
  {
    v4 = ***a1;
    if (fabs(v4) < 1.0e-30)
    {
      std::operator<<[abi:ne200100]<std::char_traits<char>>(MEMORY[0x277D82670], "Non-invertible. Giving up.\n");
      exit(0);
    }

    *v30 = 1.0 / v4;
    std::vector<double>::vector[abi:ne200100](v31, 1uLL);
    std::vector<std::vector<double>>::vector[abi:ne200100](a2, 1uLL);
    if (v31[0])
    {
      v31[1] = v31[0];
      operator delete(v31[0]);
    }
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    v7 = v6 >> 1;
    AdaptiveOcvAlgo::Matrix::subMatrix(a1, 0, (v6 >> 1) - 1, 0, (v6 >> 1) - 1, v31);
    AdaptiveOcvAlgo::Matrix::subMatrix(a1, 0, v7 - 1, v7, --v6, v30);
    AdaptiveOcvAlgo::Matrix::subMatrix(a1, v7, v6, 0, v7 - 1, v29);
    AdaptiveOcvAlgo::Matrix::subMatrix(a1, v7, v6, v7, v6, v28);
    AdaptiveOcvAlgo::Matrix::inverse(v27, v31);
    AdaptiveOcvAlgo::Matrix::matmul(v29, v27, v26);
    AdaptiveOcvAlgo::Matrix::matmul(v27, v30, v25);
    AdaptiveOcvAlgo::Matrix::matmul(v29, v25, v24);
    AdaptiveOcvAlgo::Matrix::subtract(v24, v28, v23);
    AdaptiveOcvAlgo::Matrix::inverse(&v21, v23);
    AdaptiveOcvAlgo::Matrix::matmul(v25, &v21, v20);
    AdaptiveOcvAlgo::Matrix::matmul(&v21, v26, v19);
    AdaptiveOcvAlgo::Matrix::matmul(v25, v19, v18);
    AdaptiveOcvAlgo::Matrix::subtract(v27, v18, v17);
    v14 = 0;
    v15 = 0;
    v13 = 0;
    std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(&v13, v21, v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
    v8 = v13;
    v9 = v14;
    if (v13 != v14)
    {
      v10 = v13;
      do
      {
        v11 = *v10;
        v12 = v10[1];
        while (v11 != v12)
        {
          *v11 = -*v11;
          ++v11;
        }

        v10 += 3;
      }

      while (v10 != v9);
    }

    v16[0] = v8;
    v16[1] = v9;
    v16[2] = v15;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    v32 = &v13;
    std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v32);
    AdaptiveOcvAlgo::Matrix::assembly(v17, v20, v19, v16, a2);
    v32 = v16;
    std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v32);
    v16[0] = v17;
    std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](v16);
    v17[0] = v18;
    std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](v17);
    v18[0] = v19;
    std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](v18);
    v19[0] = v20;
    std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](v19);
    v20[0] = &v21;
    std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](v20);
    v21 = v23;
    std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v21);
    v23[0] = v24;
    std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](v23);
    v24[0] = v25;
    std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](v24);
    v25[0] = v26;
    std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](v25);
    v26[0] = v27;
    std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](v26);
    v27[0] = v28;
    std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](v27);
    v28[0] = v29;
    std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](v28);
    v29[0] = v30;
    std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](v29);
    v30[0] = v31;
    std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](v30);
  }
}

void sub_241A95778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **********a13, uint64_t a14, uint64_t a15, void *********a16, uint64_t a17, uint64_t a18, void ********a19, uint64_t a20, uint64_t a21, void *******a22, uint64_t a23, uint64_t a24, void ******a25, uint64_t a26, uint64_t a27, void *****a28, uint64_t a29, uint64_t a30, void ****a31, uint64_t a32, uint64_t a33, void ***a34, uint64_t a35, uint64_t a36, void **a37)
{
  *(v38 - 56) = v37;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100]((v38 - 56));
  a13 = &a16;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&a13);
  a16 = &a19;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&a16);
  a19 = &a22;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&a19);
  a22 = &a25;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&a22);
  a25 = &a28;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a28 = &a31;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a31 = &a34;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&a31);
  a34 = &a37;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&a34);
  a37 = (v38 - 200);
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&a37);
  *(v38 - 200) = v38 - 176;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100]((v38 - 200));
  *(v38 - 176) = v38 - 152;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100]((v38 - 176));
  *(v38 - 152) = v38 - 128;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100]((v38 - 152));
  *(v38 - 128) = v38 - 104;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100]((v38 - 128));
  *(v38 - 104) = v38 - 80;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100]((v38 - 104));
  _Unwind_Resume(a1);
}

void sub_241A958D8()
{
  v1 = *(v0 - 80);
  if (v1)
  {
    *(v0 - 72) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x241A95888);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
}

void *std::vector<std::vector<double>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<double>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<double>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<double>>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<double>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_241A95AFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241A95B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<double>>,std::vector<double>*,std::vector<double>*,std::vector<double>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void AdaptiveOcvAlgo::getSOC(AdaptiveOcvAlgo *this, ConfigurationOCV *a2, double a3, double a4)
{
  v11 = *MEMORY[0x277D85DE8];
  bzero(v10, 0x338uLL);
  v7 = 0;
  v8 = a4 - *(this + 515);
  do
  {
    *&v10[v7] = *(this + v7) + v8 * *(this + v7 + 824);
    v7 += 8;
  }

  while (v7 != 824);
  AdaptiveOcvAlgo::interp(v10, this + 412, 0x67, a3);
  v9 = *MEMORY[0x277D85DE8];
}

double AdaptiveOcvAlgo::interp(AdaptiveOcvAlgo *this, double *a2, double *a3, double a4)
{
  v4 = *(this + a3 - 1);
  if (*this < v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (*this < v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3 - 2;
  }

  if (a3 >= 3)
  {
    v7 = 0;
    do
    {
      v8 = *(this + v6);
      if (v8 >= a4)
      {
        v9 = 0;
      }

      else
      {
        ++v7;
        v9 = v5;
      }

      v6 += v9;
    }

    while (v8 < a4 && v7 < a3 - 2);
  }

  v11 = *(this + v6);
  v12 = v6 - v5;
  v13 = *(this + v12);
  v14 = a2[v6];
  v15 = a2[v12];
  if (v13 == v11)
  {
    return (v14 + v15) * 0.5;
  }

  else
  {
    return v15 + (v15 - v14) / (v13 - v11) * (a4 - v13);
  }
}

void AdaptiveOcvAlgo::getChrSOC(AdaptiveOcvAlgo *this, ConfigurationOCV *a2, double a3, double a4)
{
  v12 = *MEMORY[0x277D85DE8];
  bzero(v11, 0x338uLL);
  v7 = (this + 1648);
  v8 = a4 - *(this + 515);
  for (i = 1648; i != 2472; i += 8)
  {
    *&v11[i - 1648] = *v7 + v8 * v7[103];
    ++v7;
  }

  AdaptiveOcvAlgo::interp(v11, this + 412, 0x67, a3);
  v10 = *MEMORY[0x277D85DE8];
}

void AdaptiveOcvAlgo::fitCCdriftModel(AdaptiveOcvAlgo *this, int *a2, AdaptiveOcvAlgo::CCdriftModel *a3, const int *a4, int *a5, const int *a6, AdaptiveOcvAlgo *a7, State *a8, AdaptiveOcvAlgo::CCdriftModel *a9)
{
  if (a6)
  {
    v9 = &a8->table_data[3][167];
    v10 = a8[1].table_dist_temp[2];
    do
    {
      v11 = *a3;
      a3 = (a3 + 4);
      if (v11 <= 0)
      {
        v12 = fmax(fmin(*this * -0.0000610351562 + 1.0, 0.99999), 0.0);
        v13 = *a2;
        v14 = *a5;
        v15 = vcvtmd_s64_f64(v12 * 30.0) + 30 * vcvtmd_s64_f64(fmax(fmin(*a4 / 3600.0 / 24.0 / 30.0, 0.99999), 0.0) * 30.0);
        if (v9[v15] == -1.0)
        {
          a8[1].table_dist_temp[2] = ++v10;
        }

        *&a8->table_dist[2 * v15] = v13 / -3600.0;
        v9[v15] = v12;
        a8->table_data[1][v15 + 267] = v14 / 3600.0;
      }

      ++a5;
      ++a2;
      ++a4;
      this = (this + 4);
      a6 = (a6 - 1);
    }

    while (a6);
  }

  AdaptiveOcvAlgo::fitCCdriftModelLSiterative(a7, a8, a3);
}

void AdaptiveOcvAlgo::fitCCdriftModelLSiterative(AdaptiveOcvAlgo *this, State *a2, AdaptiveOcvAlgo::CCdriftModel *a3)
{
  v5 = *(this + 2638);
  v6 = *(this + 2639);
  v7 = *(this + 2640);
  v8 = *(this + 2641);
  v9 = *(this + 2642);
  v10 = *(this + 2643);
  v32 = *(this + 2644);
  v11 = 900;
  v12 = *(this + 2645);
  v13 = a2;
  v14 = *(this + 2646);
  do
  {
    v15 = v13[1800];
    if (v15 != -1.0)
    {
      v16 = v13[900];
      v5 = v5 + v15 * v15;
      v6 = v6 + v15;
      v7 = v7 + v15 * v16;
      v8 = v8 + 1.0;
      v9 = v9 + v16;
      v10 = v10 + v16 * v16;
      v32 = v32 + v15 * *v13;
      v12 = v12 + *v13;
      v14 = v14 + v16 * *v13;
    }

    ++v13;
    --v11;
  }

  while (v11);
  v30 = v6 * v9 - v8 * v7;
  v17 = v5 * (v8 * v10 - v9 * v9) - v6 * (v6 * v10 - v9 * v7) + v7 * v30;
  v18 = fmax(v17, 0.00001);
  v19 = fmin(v17, -0.00001);
  v37[0] = 0;
  v37[1] = 0;
  if (v17 >= 0.0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v31 = v20;
  v37[2] = 0;
  v33[0] = 0;
  std::vector<double>::vector[abi:ne200100](&__p, 3uLL);
  std::vector<std::vector<double>>::resize(v37, 3uLL, &__p);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  __p = 0;
  v35 = 0;
  v36 = 0;
  v38 = 0;
  std::vector<double>::vector[abi:ne200100](v33, 1uLL);
  std::vector<std::vector<double>>::resize(&__p, 3uLL, v33);
  v21 = -v6;
  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
    v21 = -v6;
  }

  v22 = v37[0];
  v23 = *v37[0];
  v24 = (v10 * v21 + v7 * v9) / v31;
  *v23 = (v8 * v10 - v9 * v9) / v31;
  v23[1] = v24;
  v23[2] = v30 / v31;
  v25 = v22[3];
  *v25 = v24;
  v25[1] = (v5 * v10 - v7 * v7) / v31;
  v25[2] = (v7 * v6 - v5 * v9) / v31;
  v26 = v22[6];
  *v26 = v23[2];
  v26[1] = v25[2];
  v26[2] = (v6 * v21 + v5 * v8) / v31;
  v27 = __p;
  **__p = v32;
  *v27[3] = v12;
  *v27[6] = v14;
  AdaptiveOcvAlgo::Matrix::matmul(v37, &__p, v33);
  v28 = v33[0];
  v29 = *&a2[1].table_dist_temp[4];
  *v29 = **v33[0];
  v29[1] = *v28[3];
  v29[2] = *v28[6];
  LOBYTE(a2[1].table_dist_temp[28]) = 1;
  *(this + 2638) = v5;
  *(this + 2639) = v6;
  *(this + 2640) = v7;
  *(this + 2641) = v8;
  *(this + 2642) = v9;
  *(this + 2643) = v10;
  *(this + 2644) = v32;
  *(this + 2645) = v12;
  *(this + 2646) = v14;
  v38 = v33;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v38);
  v33[0] = &__p;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](v33);
  __p = v37;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_241A963B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char **__p, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, char a21)
{
  __p = &a18;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a18 = &a21;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<double>>::resize(size_t *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    std::vector<std::vector<double>>::__append(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 24 * a2;
    if (v4 != v8)
    {
      v9 = a1[1];
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v4 - 16) = v10;
          operator delete(v10);
        }

        v4 = v9;
      }

      while (v9 != v8);
    }

    a1[1] = v8;
  }
}

void AdaptiveOcvAlgo::fitSOCCCModel(double *a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    v3 = *(a2 + 12128);
    if (v3)
    {
      v4 = a1[1554];
      v5 = a1[1555];
      v6 = a1[1556];
      v7 = a1[1557];
      v8 = a1[1558];
      if (v3 >= 1)
      {
        v9 = a2;
        do
        {
          v10 = *(v9 + 8);
          v9 += 8;
          v4 = v4 + v10 * v10;
          v5 = v5 + v10;
          v6 = v6 + 1.0;
          v11 = *(v9 + 4040);
          v7 = v7 + v10 * v11;
          v8 = v8 + v11;
          --v3;
        }

        while (v3);
      }

      v12 = v4 * v6 - v5 * v5;
      v13 = fmax(v12, 0.00001);
      v14 = fmin(v12, -0.00001);
      v27[0] = 0;
      v27[1] = 0;
      if (v12 >= 0.0)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      v27[2] = 0;
      v23[0] = 0;
      std::vector<double>::vector[abi:ne200100](&__p, 2uLL);
      std::vector<std::vector<double>>::resize(v27, 2uLL, &__p);
      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }

      __p = 0;
      v25 = 0;
      v26 = 0;
      v28 = 0;
      std::vector<double>::vector[abi:ne200100](v23, 1uLL);
      std::vector<std::vector<double>>::resize(&__p, 2uLL, v23);
      v16 = -v5;
      if (v23[0])
      {
        v23[1] = v23[0];
        operator delete(v23[0]);
      }

      v17 = v27[0];
      v18 = *v27[0];
      *v18 = v6 / v15;
      v18[1] = v16 / v15;
      v19 = v17[3];
      *v19 = v16 / v15;
      v19[1] = v4 / v15;
      v20 = __p;
      **__p = v7;
      *v20[3] = v8;
      AdaptiveOcvAlgo::Matrix::matmul(v27, &__p, v23);
      v21 = v23[0];
      v22 = *(a2 + 12136);
      *v22 = **v23[0];
      v22[1] = *v21[3];
      AdaptiveOcvAlgo::calculateCCSOCRMSE(a2);
      v28 = v23;
      std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v28);
      v23[0] = &__p;
      std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](v23);
      __p = v27;
      std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&__p);
    }
  }
}

void sub_241A966A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **__p, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, char a15)
{
  __p = &a12;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a12 = &a15;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

double AdaptiveOcvAlgo::calculateCCSOCRMSE(uint64_t a1)
{
  v1 = *(a1 + 12128);
  if (v1 < 1)
  {
    v5 = 0.0;
  }

  else
  {
    v2 = *(a1 + 12136);
    v3 = *v2;
    v4 = v2[1];
    v5 = 0.0;
    v6 = *(a1 + 12128);
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
      v9 = v7[505] - (v4 + v3 * v8);
      v5 = v5 + v7[1010] * v9 * v9;
      --v6;
    }

    while (v6);
  }

  result = sqrt(v5 / fmax(v1, 1.0));
  *(a1 + 12160) = result;
  *(a1 + 12168) = 1;
  return result;
}

void AdaptiveOcvAlgo::fitSOCCCModelByOCVpool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v15 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v3;
  *v27 = *MEMORY[0x277D85DE8];
  v20 = 0;
  __src = xmmword_241AB15A0;
  __p = 0;
  v23 = 0;
  v22 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&__p, &__src, v27, 2uLL);
  v16[0] = 0;
  v25 = 0;
  bzero(v17, 0x2F5CuLL);
  v24 = 0x4059000000000000;
  __src = xmmword_241AB15A0;
  std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(&__p, &__src, v27, 2uLL);
  bzero(v17, 0xFA0uLL);
  bzero(v18, 0xFA0uLL);
  bzero(v19, 0xFA0uLL);
  AdaptiveOcvAlgo::createSOCCCtable(v13, v12, v10);
  AdaptiveOcvAlgo::fitSOCCCModel(v10, v16);
  *v8 = v24;
  v25 = 0;
  v16[0] = 0;
  v20 = 0;
  v24 = 0x4059000000000000;
  __src = xmmword_241AB15A0;
  std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(&__p, &__src, v27, 2uLL);
  bzero(v17, 0xFA0uLL);
  bzero(v18, 0xFA0uLL);
  bzero(v19, 0xFA0uLL);
  AdaptiveOcvAlgo::createSOCCCtable(v13, v12, (v10 + 517));
  AdaptiveOcvAlgo::fitSOCCCModel(v10, v16);
  *v6 = v24;
  v25 = 0;
  v16[0] = 0;
  v20 = 0;
  v24 = 0x4059000000000000;
  __src = xmmword_241AB15A0;
  std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(&__p, &__src, v27, 2uLL);
  bzero(v17, 0xFA0uLL);
  bzero(v18, 0xFA0uLL);
  bzero(v19, 0xFA0uLL);
  AdaptiveOcvAlgo::createSOCCCtable(v13, v12, (v10 + 1034));
  AdaptiveOcvAlgo::fitSOCCCModel(v10, v16);
  *v15 = v24;
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void AdaptiveOcvAlgo::createSOCCCtable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  __src = v6;
  v27 = v3;
  if (v6[4128] == 1)
  {
    v7 = v5;
    if ((*v5 & 1) == 0)
    {
      v8 = 0;
      v22 = v3 + 660;
      v25 = v3 + 5064;
      v24 = v3 + 17064;
      v9 = *v4;
      v10 = *(v5 + 12128);
      v23 = v3 + 9064;
      v11 = v3 + 13064;
      do
      {
        v12 = *(v27 + 4 * v8);
        if (v12 >= 1)
        {
          v13 = *(v22 + 4 * v8);
          v14 = 5 * v8;
          v15 = 1;
          v16 = v7 + 8 * v10;
          do
          {
            v13 = (v13 + 4) % 5;
            v17 = *(v23 + 8 * (v13 + v14));
            v18 = *(v11 + 8 * (v13 + v14));
            *(v16 + 8) = *(v25 + 8 * (v13 + v14)) - *(v24 + 8 * (v13 + v14)) * *(v9 + 16) - *(v9 + 8);
            memcpy(__dst, __src, 0x1028uLL);
            if (v17 <= 100000.0)
            {
              AdaptiveOcvAlgo::getSOC(__dst, v19, v17 / 1000.0, v18 + 273.15);
            }

            else
            {
              AdaptiveOcvAlgo::getChrSOC(__dst, v19, (v17 + -100000.0) / 1000.0, v18 + 273.15);
            }

            *(v16 + 4048) = v20;
            *(v16 + 8088) = 1.0 / fmax(v12, 1.0);
            *(v7 + 12128) = ++v10;
            v12 = *(v27 + 4 * v8);
            v16 += 8;
          }

          while (v15++ < v12);
        }

        ++v8;
      }

      while (v8 != 100);
      *v7 = 1;
    }
  }
}

void AdaptiveOcvAlgo::selectUsefulData(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, double *a10, uint64_t a11, uint64_t a12)
{
  v12 = a11;
  if (a8)
  {
    v13 = a8;
    v15 = 0;
    v16 = a10;
    v69 = *(a11 + 21176);
    v66 = a10[520];
    v17 = *(a11 + 21072);
    v67 = a11 + 660;
    v18 = a6 - 4;
    v68 = a6 - 4;
    do
    {
      v19 = a1[v15 / 4];
      if (v15)
      {
        v20 = (v19 - a1[v15 / 4 - 1]);
      }

      else
      {
        v20 = *a1 - v69;
      }

      v21 = *(a2 + v15);
      v22 = *(a3 + v15);
      v23 = *(a7 + v15);
      v24 = *(a5 + v15);
      v25 = *(a4 + v15);
      v26 = v25;
      v27 = *(v18 + v15 + 4);
      v28 = v25 / 1000.0;
      if (v28 != 0.0)
      {
        if (v17 == 0.0 && v28 < 0.0 || v17 == 1.0 && v28 > 0.0)
        {
          v29 = 0.5;
          if (v28 < 0.0)
          {
            v29 = -0.5;
          }

          v12[2633] = v29;
        }

        else
        {
          v30 = v12[2633];
          if (v30 <= 0.0)
          {
            v31 = 0.0;
          }

          else
          {
            v31 = 1.0;
          }

          if (v30 < 0.0)
          {
            v31 = -1.0;
          }

          v32 = fmin(fabs(v30), 0.5) * v31;
          v70 = *(v18 + v15 + 4);
          v72 = *(a7 + v15);
          v33 = exp(fabs(v28 / 3.0) * -(v20 * v66));
          v27 = v70;
          v23 = v72;
          v18 = v68;
          v34 = 0.0;
          if (v28 > 0.0)
          {
            v34 = 1.0;
          }

          if (v28 < 0.0)
          {
            v34 = -1.0;
          }

          v35 = v34 * (1.0 - v33) * 0.5 + v32 * v33;
          v12[2633] = v35;
          v36 = v35 + 0.5;
          v37 = fabs(v36);
          if (fabs(v36 + -1.0) <= 0.01)
          {
            v38 = 1.0;
          }

          else
          {
            v38 = 0.5;
          }

          if (v37 <= 0.01)
          {
            v17 = 0.0;
          }

          else
          {
            v17 = v38;
          }
        }
      }

      v39 = v12[2637];
      if (fabs(v39) >= fabs(v28))
      {
        v40 = -(v20 * v16[522]);
        v71 = v25;
        v73 = v21;
        v41 = v13;
        v42 = v24;
        v43 = v12;
        v44 = v19;
        v45 = v16;
        v46 = a1;
        v47 = v22;
        v48 = v23;
        v49 = v27;
        v50 = exp(v40);
        v27 = v49;
        v23 = v48;
        v22 = v47;
        a1 = v46;
        v16 = v45;
        v19 = v44;
        v12 = v43;
        v24 = v42;
        v13 = v41;
        v25 = v71;
        v21 = v73;
        v18 = v68;
        v28 = v28 * (1.0 - v50) + v39 * v50;
      }

      v51 = v27;
      v12[2637] = v28;
      if (v15)
      {
        v52 = v51 - *(v18 + v15);
        v53 = (v19 - a1[v15 / 4 - 1]);
      }

      else
      {
        v52 = v51 - v12[2635];
        v53 = *a1 - v69;
      }

      v54 = v52 / v53;
      v55 = fmax(fmin(v21 * -0.0000610351562 + 1.0, 0.99), 0.0);
      if (v17 == 0.0)
      {
        v56 = 1;
      }

      else
      {
        v56 = v17 == 1.0;
        if (v55 <= 0.8)
        {
          v56 = 0;
        }

        if (v25 >= 1)
        {
          v56 = 0;
        }
      }

      if (fabs(v26) <= fabs(v16[517]) && fabs(v54) < v16[518])
      {
        if (fabs(v28) * 1000.0 > fabs(v16[519]))
        {
          v56 = 0;
        }

        if (v56)
        {
          v57 = fmax(fmin(fmax(fmin(v19, 2591999.0), 0.0) / 2592000.0, 1.0), 0.0);
          v58 = v24 / 100.0;
          v59 = vcvtmd_s64_f64(v55 * 100.0);
          v60 = *(v12 + v59);
          v61 = v60 + 1;
          *(v12 + v59) = v60 + 1;
          if (v60 <= 4)
          {
            v62 = vcvtmd_s64_f64(fmax(fmin(v58, 49.99), 0.0));
            v63 = vcvtmd_s64_f64(v57 * 15.0);
            ++*(a11 + 400 + 4 * v62);
            ++*(a11 + 600 + 4 * v63);
            ++*(a11 + 21088);
            v61 = *(v12 + v59);
          }

          *(v12 + v59) = fmin(v61, 5.0);
          v64 = *(v67 + 4 * v59) % 5;
          v65 = v64 + 5 * v59;
          *(a11 + 1064 + 8 * v65) = v57;
          *(a11 + 5064 + 8 * v65) = v22 / -3600.0;
          if (v17 == 1.0)
          {
            v51 = v51 + 100000.0;
          }

          *(a11 + 9064 + 8 * v65) = v51;
          *(a11 + 13064 + 8 * v65) = v58;
          *(a11 + 17064 + 8 * v65) = v23 / 3600.0;
          *(v67 + 4 * v59) = v64 + 1;
        }
      }

      v15 += 4;
      --v13;
    }

    while (v13);
  }

  if (*(a11 + 21088) > 0)
  {
    *(a12 + 12472) = 1;
  }
}