BOOL sub_2418FE8C8(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = *(a1 + 8);
  v3 = *a1;
  if (v1 + v2 > *a1 || v2 > *(a1 + 12))
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 20);
  if (v6 != -1 && v6 > v5)
  {
    return 0;
  }

  if (v5 != -1 && v3 <= v5)
  {
    return 0;
  }

  result = 0;
  if (v1 <= v2 && v2 <= v3 && ((v1 == 0) & (*(a1 + 24) ^ 1)) == 0)
  {
    return (v3 < 2 || v1 <= v3 >> 1) && (v6 == -1 || v3 - v6 > v1 && vcvtd_n_f64_u32(v1, 1uLL) <= v6) && (v5 == -1 || v3 - v5 > v1 && vcvtd_n_f64_u32(v1, 1uLL) <= v5);
  }

  return result;
}

float sub_2418FE9A0(_DWORD *a1)
{
  result = 1.0;
  if (*a1 >= a1[3])
  {
    return a1[2];
  }

  return result;
}

uint64_t sub_2418FE9C0(unsigned int *a1, unsigned int a2, unsigned int a3, unsigned int a4, char a5)
{
  v5 = a3 + a2;
  if (a1[4] >= a2)
  {
    v7 = a1[5];
    v6 = v7 != -1 && v7 >= v5;
  }

  else
  {
    v6 = 1;
  }

  v9 = v5 + a4;
  v10 = *a1;
  v11 = (a5 & 1) == 0 && a1[1] != a4;
  v14 = a1[2] > a3 || a4 > a3 || a1[3] < a3;
  v15 = v9 > v10;
  v16 = v9 > v10 || v14;
  v17 = v16 | v6;
  if (v15)
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  if (v14)
  {
    v18 = 1;
  }

  v19 = v17 & 1;
  if (v17)
  {
    v20 = v18;
  }

  else
  {
    v20 = 5;
  }

  if (!v19 && !v11)
  {
    if ((a4 != 0) | a5 & 1)
    {
      v21 = 5;
    }

    else
    {
      v21 = 4;
    }

    if (a1[6] & 1 | ((a4 != 0) | a5) & (a1[1] != 0))
    {
      return 0;
    }

    else
    {
      return v21;
    }
  }

  return v20;
}

void sub_2418FED04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2418FEEF4(unsigned int *a1, unsigned int a2, unsigned int a3, unsigned int a4, char a5)
{
  v5 = a3 + a2;
  if (a1[4] >= a2)
  {
    v7 = a1[5];
    v6 = v7 != -1 && v7 >= v5;
  }

  else
  {
    v6 = 1;
  }

  v9 = *a1;
  v10 = v5 + (a4 >> 1);
  v11 = (a5 & 1) == 0 && a1[1] != a4;
  v14 = a1[2] > a3 || a4 >> 1 > a3 || a1[3] < a3;
  v15 = v10 > v9 || v14;
  v16 = v15 | v6;
  if (v10 > v9)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  if (v14)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v19 = v16 & 1;
  if (v16)
  {
    v20 = v18;
  }

  else
  {
    v20 = 5;
  }

  if (!v19 && !v11)
  {
    if ((a4 > 1) | a5 & 1)
    {
      v21 = 5;
    }

    else
    {
      v21 = 4;
    }

    if (a1[6] & 1 | ((a4 > 1) | a5) & (a1[1] > 1))
    {
      return 0;
    }

    else
    {
      return v21;
    }
  }

  return v20;
}

void sub_2418FF458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2418FF4A0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2418DB6C0(result, a2);
  }

  return result;
}

void sub_2418FF4FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2418FF518(uint64_t a1)
{
  v4 = a1 + 64;
  v2 = *(a1 + 64);
  v3 = *(v4 + 8);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        v6 = sub_241900578(v2[v5]);
        MEMORY[0x245CF24E0](v6, 0x10A0C40CEA0335CLL);
        *(*(a1 + 64) + 8 * v5) = 0;
        v2 = *(a1 + 64);
        v3 = *(a1 + 72);
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  return a1;
}

float sub_2418FF5A8(uint64_t *a1, uint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    result = *(a2 + v2);
    *(v3 + v2) = result;
    v2 += 4;
  }

  while (v2 != 36);
  return result;
}

uint64_t sub_2418FF5C8(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = a3;
  v8 = v7;
  *(a1 + 56) = a4;
  if (!v7)
  {
    NSLog(&cfstr_Preparenormali.isa);
LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  if (!a2)
  {
    NSLog(&cfstr_Preparenormali_0.isa);
    goto LABEL_8;
  }

  [v7 cropRect];
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  v13 = *(a2 + 60);
  *(a1 + 16) = *(a2 + 76);
  *a1 = v13;
  v14 = (*(*a2 + 24))(a2);
  sub_2418FF7EC((a1 + 64), v14);
  if ((*(*a2 + 24))(a2))
  {
    [v8 getFrameInfo:(*(*a2 + 16))(a2 frameInfo:{0), v17}];
    operator new();
  }

  sub_2418FF81C(a1, a2);
  v15 = 1;
LABEL_9:

  return v15;
}

void sub_2418FF7EC(void *a1, unint64_t a2)
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
    sub_2419005C8(a1, a2 - v2);
  }
}

void *sub_2418FF81C(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 56))(a2, 0, (*(a1 + 72) - *(a1 + 64)) >> 3);
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v6 != v5)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 2) <= v8)
        {
          sub_2418DD5E8();
        }

        if (*(*result + v7))
        {
          operator new();
        }

        ++v8;
        v7 += 12;
      }

      while (v8 < (v6 - v5) >> 3);
    }

    v9 = *result;
    if (*v4)
    {
      v4[1] = v9;
      operator delete(v9);
    }

    JUMPOUT(0x245CF24E0);
  }

  return result;
}

id sub_2418FF9D4(CMTime *a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v13 = *a1;
  v3 = CMTimeCopyAsDictionary(&v13, *MEMORY[0x277CBECE8]);
  [v2 setObject:v3 forKeyedSubscript:@"rawTime"];

  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:9];
  for (i = 0; i != 36; i += 4)
  {
    LODWORD(v5) = *(a1[1].value + i);
    v7 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    [v4 addObject:v7];
  }

  [v2 setObject:v4 forKeyedSubscript:@"homography"];
  value = a1[2].value;
  if (value)
  {
    v14[0] = @"gapStart";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(value + 4)];
    v14[1] = @"gapLength";
    v15[0] = v9;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1[2].value + 8)];
    v15[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    [v2 setObject:v11 forKeyedSubscript:@"gapBridge"];
  }

  return v2;
}

void sub_2418FFB9C(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

BOOL sub_2418FFD4C(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_2418DD410(&v18, 9uLL);
  v5 = (a1 + 24);
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
    *v5 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = v18;
  v6 = [v3 objectForKeyedSubscript:@"rawTime"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  memset(&v18, 0, sizeof(v18));
  CMTimeMakeFromDictionary(&v18, v6);
  *a1 = v18;
  v8 = [v3 objectForKeyedSubscript:@"homography"];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();
  v10 = 0;
  v11 = ([v8 count] != 9) | v9 & isKindOfClass ^ 1;
  do
  {
    v12 = [v8 objectAtIndexedSubscript:v10];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();
    [v12 doubleValue];
    v11 |= v13 ^ 1;
    *&v14 = v14;
    *(*v5 + 4 * v10) = LODWORD(v14);

    ++v10;
  }

  while (v10 != 9);
  v15 = [v3 objectForKeyedSubscript:@"gapBridge"];

  if (v15)
  {
    v16 = [v3 objectForKeyedSubscript:@"gapBridge"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_2418FFC08(v16);
    }

    v11 = 1;
  }

  else
  {
    v16 = v6;
  }

  return (v11 & 1) == 0;
}

id sub_2418FFFC0(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  [v2 setObject:v3 forKeyedSubscript:@"stabilizeResult"];

  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(a1 + 24));
  [v2 setObject:DictionaryRepresentation forKeyedSubscript:@"stabCropRect"];

  v11 = *a1;
  v5 = CMTimeCopyAsDictionary(&v11, *MEMORY[0x277CBECE8]);
  [v2 setObject:v5 forKeyedSubscript:@"outputFrameDur"];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = *(a1 + 64);
  if (*(a1 + 72) != v7)
  {
    v8 = 0;
    do
    {
      v9 = sub_2418FF9D4(*(v7 + 8 * v8));
      [v6 addObject:v9];

      ++v8;
      v7 = *(a1 + 64);
    }

    while (v8 < (*(a1 + 72) - v7) >> 3);
  }

  [v2 setObject:v6 forKeyedSubscript:@"frameInstructions"];

  return v2;
}

uint64_t sub_241900160(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"stabilizeResult"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a1 + 56) = [v4 intValue];
    v5 = [v3 objectForKeyedSubscript:@"stabCropRect"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      CGRectMakeWithDictionaryRepresentation(v5, (a1 + 24));
      v6 = [v3 objectForKeyedSubscript:@"outputFrameDur"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        CMTimeMakeFromDictionary(&v15, v6);
        *a1 = v15;
        v8 = (a1 + 64);
        v7 = *(a1 + 64);
        if (v7)
        {
          *(a1 + 72) = v7;
          operator delete(v7);
          *v8 = 0;
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
        }

        *v8 = 0;
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        v9 = [v3 objectForKeyedSubscript:@"frameInstructions"];
        v12 = v9;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          memset(v14, 0, sizeof(v14));
          obj = v9;
          if ([obj countByEnumeratingWithState:v14 objects:v16 count:{16, v9}])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              operator new();
            }

            v10 = 0;
          }

          else
          {
            v10 = 1;
          }
        }

        else
        {
          v10 = 0;
        }

        v5 = v6;
      }

      else
      {
        v10 = 0;
        v5 = v6;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void *sub_241900578(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    MEMORY[0x245CF24E0](v2, 0x1000C408195852FLL);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_2419005C8(uint64_t a1, unint64_t a2)
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
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_2418D3940();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2418DB744(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t sub_2419006DC(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4, void *a5)
{
  if ((*a2 & 1) == 0 && *(a2 + 8))
  {
    operator new();
  }

  sub_241900874(a3, a2, a4, a5);
  return 0;
}

uint64_t sub_241900874(uint64_t *a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v8 = sub_2418FCC80(a1, a3 + 1, a3);
  v9 = *(a2 + 8);
  a3[2] = v9;
  a3[3] = v9;
  a3[4] = -1082130432;
  if (!v8)
  {
    v10 = *(a2 + 4) - v9;
    *a3 = 0;
    a3[1] = v10;
    printf("Warning: no-opt minimize_autoloop_energy had no valid candidates");
  }

  if (a4)
  {
    v11 = sub_2418FC7A4(a1);
    v12 = sub_2418FC7C0(a1);
    v15 = -1082130432;
    sub_2418E45C4(a4, (v12 * v11), &v15, v13);
  }

  return 1;
}

uint64_t sub_241900918(float (***a1)(void), uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = sub_2418FC7A4(a2);
  v16 = a2;
  v11 = sub_2418FC7C0(a2);
  if (a5)
  {
    v19 = -1082130432;
    sub_2418E45C4(a5, v11 * v10, &v19, v12);
  }

  v13 = *(a3 + 8);
  v18 = 0;
  v17 = 0;
  if (sub_2418FCC80(v16, &v17 + 1, &v17))
  {
    v14 = sub_2419014E8(a1, v17, HIDWORD(v17), v13, a3);
    if (a5)
    {
      *(*a5 + 4 * HIDWORD(v17) * v11 + 4 * v17) = v14;
    }

    sub_2418FC7DC();
  }

  *a4 = 0;
  a4[1] = 0;
  return 0;
}

uint64_t sub_241900B7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  if ((*a2 & 1) == 0 && *(a2 + 8))
  {
    operator new();
  }

  sub_241900D38(a3, a2, a4, a5);
  return 0;
}

uint64_t sub_241900D38(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_2418FCC80(a1, (a3 + 4), a3);
  *(a3 + 8) = 0;
  *(a3 + 16) = -1082130432;
  if (!v8)
  {
    v9 = *(a2 + 4);
    *a3 = 0;
    *(a3 + 4) = v9;
    printf("Warning: no-opt minimize_bounce_energy had no valid candidates");
  }

  if (a4)
  {
    v10 = sub_2418FC7A4(a1);
    v11 = sub_2418FC7C0(a1);
    v14 = -1082130432;
    sub_2418E45C4(a4, (v11 * v10), &v14, v12);
  }

  return 1;
}

void *sub_241900DD4(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245CF2470](v13, a1);
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

    if (!sub_241900F7C(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x245CF2480](v13);
  return a1;
}

void sub_241900F14(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x245CF2480](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x241900EF4);
}

uint64_t sub_241900F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
        sub_241901164();
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

void sub_241901148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24190117C(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 24);
  *(a1 + 4) = *a2;
  *(a1 + 12) = sub_2418FE9A0(a2);
}

void sub_2419011B8(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = *(a2 + 24);
  *(a1 + 4) = *a2;
  v5 = sub_2418FE9A0(a2);
  if (!a3)
  {
    v5 = -1.0;
  }

  *(a1 + 12) = v5;
}

uint64_t sub_241901204(uint64_t result, void *a2)
{
  *result = &unk_28537D2F8;
  *(result + 16) = a2;
  *(result + 8) = -1431655765 * ((a2[1] - *a2) >> 3);
  return result;
}

BOOL sub_241901244(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (v4 > a3)
  {
    return 0;
  }

  v6 = v4 == 0;
  v7 = a3 + a2 + v4;
  return !v6 && v7 <= *(a4 + 4);
}

BOOL sub_241901274(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (v4 >> 1 > a3)
  {
    return 0;
  }

  return v4 > 1 && a3 + a2 + (v4 >> 1) <= *(a4 + 4);
}

double sub_2419012A8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v4 = MEMORY[0x28223BE20](a4);
    v8 = (v13 - v7);
    v9 = 0;
    v11 = **(v10 + 16);
    do
    {
      v8[v9] = *(*(v11 + 24 * (v6 + v9)) + 4 * (v5 + v6 + v9));
      ++v9;
    }

    while (v4 != v9);
    return sub_2418EEDEC(v4, v8);
  }

  else
  {
    puts("rawLoopEnergy warning: fadeLength = 0 is invalid.");
    return 0.0;
  }
}

void sub_24190138C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a4 > 1)
  {
    v4 = a4 >> 1;
    v5 = MEMORY[0x28223BE20](a1);
    v6 = MEMORY[0x28223BE20](v5);
    v11 = (v15 - v10);
    v12 = 0;
    v13 = 0;
    v14 = **(v6 + 16);
    do
    {
      v7[v13] = *(*(v14 + 24 * (v9 + v12)) + 4 * (v9 + v13));
      v11[v13] = *(*(v14 + 24 * (v9 + v8 - 1 + v12)) + 4 * (v9 + v8 - 1 + v13));
      ++v13;
      --v12;
    }

    while (v4 != v13);
    sub_2418EEDEC(v4, v7);
    sub_2418EEDEC(v4, v11);
  }

  else
  {
    puts("frameBoomerangLoopEnergy warning: bufLen = 0 is invalid.");
  }
}

float sub_2419014E8(float (***a1)(void), uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v7 = (**a1)(a1);
  v8 = 1.0;
  if (*(a5 + 12) >= 0.0)
  {
    v8 = sub_2418EEE1C(a3, *(a5 + 12));
  }

  return v7 * v8;
}

char *sub_241901F28(int a1)
{
  v1 = &off_278CF7E50;
  v2 = 15;
  while (*(v1 - 2) != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      v3 = byte_27E54E9F8;
      snprintf(byte_27E54E9F8, 0x64uLL, "<Unknown> (%d)", a1);
      return v3;
    }
  }

  return *v1;
}

char *sub_241901F9C(int a1)
{
  v1 = &off_278CF7F40;
  v2 = 6;
  while (*(v1 - 2) != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      v3 = byte_27E54EA5C;
      snprintf(byte_27E54EA5C, 0x64uLL, "<Unknown> (%d)", a1);
      return v3;
    }
  }

  return *v1;
}

uint64_t sub_241902010(uint64_t a1, CFTypeRef cf)
{
  *(a1 + 40) = 0;
  v3 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *a1 = cf;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 64) = 13;
  *(a1 + 68) = 0;
  CFRetain(cf);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48) - v4;
  if (v5 > 0xFE)
  {
    if (v5 != 255)
    {
      *(a1 + 48) = v4 + 255;
    }
  }

  else
  {
    sub_2418DD2D8(v3, 255 - v5);
  }

  return a1;
}

void sub_24190209C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2419020BC(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    *(a1 + 48) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_241902128(uint64_t a1)
{
  v2 = 6;
  v3 = buffer;
  do
  {
    v4 = CFReadStreamRead(*a1, v3, v2);
    if (v4 < 0)
    {
      return 3;
    }

    if (!v4)
    {
      return 1;
    }

    v3 += v4;
    v2 -= v4;
  }

  while (v2);
  v5 = *buffer == 18759 && v21 == 70;
  if (v5 && (v22 == 14648 ? (v10 = v23 == 97) : (v10 = 0), v10 || (v22 == 14136 ? (v11 = v23 == 97) : (v11 = 0), v11)))
  {
    *(a1 + 8) = CFDataCreate(0, buffer, 6);
    v12 = 7;
    v13 = bytes;
    while (1)
    {
      v14 = CFReadStreamRead(*a1, v13, v12);
      if (v14 < 1)
      {
        break;
      }

      v13 += v14;
      v12 -= v14;
      if (!v12)
      {
        *(a1 + 24) = *bytes;
        v15 = v18;
        *(a1 + 28) = v18 >> 7;
        *(a1 + 29) = (v15 >> 4) & 7;
        *(a1 + 30) = (v15 & 8) != 0;
        *(a1 + 31) = v15 & 7;
        *(a1 + 32) = v19;
        v16 = CFDataCreate(0, bytes, 7);
        result = 0;
        *(a1 + 16) = v16;
        *(a1 + 64) = 0;
        return result;
      }
    }

    v6 = *MEMORY[0x277D85DF8];
    v7 = "GIFParser::init: short Logical Screen Descriptor\n";
    v8 = 49;
  }

  else
  {
    v6 = *MEMORY[0x277D85DF8];
    v7 = "GIFParser::init: bad signature\n";
    v8 = 31;
  }

  fwrite(v7, v8, 1uLL, v6);
  return 2;
}

uint64_t sub_2419022BC(uint64_t a1, __CFData *a2)
{
LABEL_1:
  buffer = 0;
  v4 = 1;
  p_buffer = &buffer;
  do
  {
    v6 = CFReadStreamRead(*a1, p_buffer, v4);
    if (v6 < 0)
    {
      v10 = 3;
LABEL_13:
      v11 = *MEMORY[0x277D85DF8];
      v12 = "GIFParser::appendSubBlocks: error reading subblock length\n";
      v13 = 58;
LABEL_17:
      fwrite(v12, v13, 1uLL, v11);
      return v10;
    }

    if (!v6)
    {
      v10 = 1;
      goto LABEL_13;
    }

    p_buffer += v6;
    v4 -= v6;
  }

  while (v4);
  CFDataAppendBytes(a2, &buffer, 1);
  v7 = buffer;
  if (buffer)
  {
    v8 = *(a1 + 40);
    while (1)
    {
      v9 = CFReadStreamRead(*a1, v8, v7);
      if (v9 < 0)
      {
        v10 = 3;
        goto LABEL_16;
      }

      if (!v9)
      {
        break;
      }

      v8 += v9;
      v7 -= v9;
      if (!v7)
      {
        CFDataAppendBytes(a2, *(a1 + 40), buffer);
        goto LABEL_1;
      }
    }

    v10 = 1;
LABEL_16:
    v11 = *MEMORY[0x277D85DF8];
    v12 = "GIFParser::appendSubBlocks: error reading subblock data\n";
    v13 = 56;
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_2419023D4(uint64_t a1, int *a2, __CFData **a3)
{
  strcpy(bytes, "!");
  v6 = &bytes[1];
  v7 = 1;
  do
  {
    v8 = CFReadStreamRead(*a1, v6, v7);
    if (v8 < 0)
    {
      v11 = 3;
LABEL_9:
      fwrite("GIFParser::parseExtension: error reading extension label\n", 0x39uLL, 1uLL, *MEMORY[0x277D85DF8]);
      return v11;
    }

    if (!v8)
    {
      v11 = 1;
      goto LABEL_9;
    }

    v6 += v8;
    v7 -= v8;
  }

  while (v7);
  Mutable = CFDataCreateMutable(0, 0);
  CFDataAppendBytes(Mutable, bytes, 2);
  v10 = sub_2419022BC(a1, Mutable);
  if (v10)
  {
    v11 = v10;
    CFRelease(Mutable);
  }

  else
  {
    if ((bytes[1] + 7) > 8u)
    {
      v13 = 8;
    }

    else
    {
      v13 = dword_2419119B8[(bytes[1] + 7)];
    }

    v11 = 0;
    *a2 = v13;
    *a3 = Mutable;
    *(a1 + 64) = 12;
  }

  return v11;
}

uint64_t sub_2419024FC(uint64_t a1, _DWORD *a2, CFDataRef *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  bytes = 44;
  v6 = &v12;
  v7 = 9;
  do
  {
    v8 = CFReadStreamRead(*a1, v6, v7);
    if (v8 < 1)
    {
      fwrite("GIFParser::init: error reaching image Descriptor\n", 0x31uLL, 1uLL, *MEMORY[0x277D85DF8]);
      return 2;
    }

    v6 += v8;
    v7 -= v8;
  }

  while (v7);
  v9 = 10;
  *a3 = CFDataCreate(0, &bytes, 10);
  if (v13 < 0)
  {
    *(a1 + 68) = v13 & 7;
    v9 = 3;
  }

  result = 0;
  *(a1 + 64) = v9;
  *a2 = 9;
  return result;
}

__CFData *sub_241902604(const __CFData *a1)
{
  Mutable = CFDataCreateMutable(0, 0);
  *bytes = -479;
  CFDataAppendBytes(Mutable, bytes, 2);
  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  do
  {
    if (Length >= 255)
    {
      v5 = 255;
    }

    else
    {
      v5 = Length;
    }

    v8 = v5;
    CFDataAppendBytes(Mutable, &v8, 1);
    CFDataAppendBytes(Mutable, BytePtr, v5);
    BytePtr += v5;
    Length -= v5;
  }

  while (Length);
  v7 = 0;
  CFDataAppendBytes(Mutable, &v7, 1);
  return Mutable;
}

uint64_t sub_2419026CC(uint64_t a1, int *a2, CFDataRef *a3)
{
  *a2 = 12;
  *a3 = 0;
  if (!*a1)
  {
    goto LABEL_23;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_23;
  }

  v8 = *(a1 + 64);
  if (v8 <= 9)
  {
    if ((v8 - 2) < 2)
    {
      v14 = (6 << *(a1 + 68));
      sub_2418DD198(buffer, v14);
      v15 = *buffer;
      v16 = v14;
      while (1)
      {
        v17 = CFReadStreamRead(*a1, v15, v16);
        if (v17 < 0)
        {
          break;
        }

        if (!v17)
        {
          v12 = 1;
          goto LABEL_44;
        }

        v15 += v17;
        v16 -= v17;
        if (!v16)
        {
          v18 = CFDataCreate(0, *buffer, v14);
          v12 = 0;
          *a3 = v18;
          v19 = *(a1 + 64);
          *a2 = v19;
          if (v19 == 2)
          {
            v20 = 12;
          }

          else
          {
            v20 = 10;
          }

          *(a1 + 64) = v20;
          v21 = 1;
LABEL_45:
          if (*buffer)
          {
            v34 = *buffer;
            operator delete(*buffer);
          }

          if (v21)
          {
            return 0;
          }

          return v12;
        }
      }

      v12 = 3;
LABEL_44:
      fwrite("GIFParser::nextBlock: error reading color table\n", 0x30uLL, 1uLL, *MEMORY[0x277D85DF8]);
      v21 = 0;
      goto LABEL_45;
    }

    if (!v8)
    {
      *a2 = 0;
      *a3 = v4;
      CFRetain(v4);
      v27 = 1;
      goto LABEL_58;
    }

    if (v8 == 1)
    {
      *a2 = 1;
      *a3 = v5;
      CFRetain(*(a1 + 16));
      if (*(a1 + 28) == 1)
      {
        *(a1 + 64) = 2;
        *(a1 + 68) = *(a1 + 31);
        return 0;
      }

      goto LABEL_57;
    }

LABEL_41:
    v28 = *MEMORY[0x277D85DF8];
    v29 = sub_241901F28(v8);
    fprintf(v28, "GIFParser::nextBlock: internal error (mNextBlockType = %s)\n", v29);
    return 5;
  }

  if (v8 > 12)
  {
    if (v8 == 14)
    {
      return 1;
    }

    if (v8 != 13)
    {
      goto LABEL_41;
    }

LABEL_23:
    fwrite("GIFParser::nextBlock: init was unsuccessful\n", 0x2CuLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 4;
  }

  if (v8 == 10)
  {
    buffer[0] = 0;
    v22 = 1;
    v23 = buffer;
    while (1)
    {
      v24 = CFReadStreamRead(*a1, v23, v22);
      if (v24 < 0)
      {
        v12 = 3;
        goto LABEL_52;
      }

      if (!v24)
      {
        break;
      }

      v23 += v24;
      v22 -= v24;
      if (!v22)
      {
        Mutable = CFDataCreateMutable(0, 0);
        CFDataAppendBytes(Mutable, buffer, 1);
        v26 = sub_2419022BC(a1, Mutable);
        if (v26)
        {
          v12 = v26;
          CFRelease(Mutable);
          return v12;
        }

        *a2 = 10;
        *a3 = Mutable;
LABEL_57:
        v27 = 12;
LABEL_58:
        *(a1 + 64) = v27;
        return 0;
      }
    }

    v12 = 1;
LABEL_52:
    v30 = *MEMORY[0x277D85DF8];
    v31 = "GIFParser::nextBlock: error reading LZW minimum code size\n";
    v32 = 58;
LABEL_55:
    fwrite(v31, v32, 1uLL, v30);
    return v12;
  }

  if (v8 != 12)
  {
    goto LABEL_41;
  }

  buffer[0] = 0;
  v9 = 1;
  v10 = buffer;
  do
  {
    v11 = CFReadStreamRead(*a1, v10, v9);
    if (v11 < 0)
    {
      v12 = 3;
LABEL_54:
      v30 = *MEMORY[0x277D85DF8];
      v31 = "GIFParser::nextBlock: error reading block descriptor\n";
      v32 = 53;
      goto LABEL_55;
    }

    if (!v11)
    {
      v12 = 1;
      goto LABEL_54;
    }

    v10 += v11;
    v9 -= v11;
  }

  while (v9);
  switch(buffer[0])
  {
    case ';':
      *a3 = CFDataCreate(0, buffer, 1);
      *a2 = 11;
      v27 = 14;
      goto LABEL_58;
    case ',':
      sub_2419024FC(a1, a2, a3);
      return 0;
    case '!':
      sub_2419023D4(a1, a2, a3);
      return 0;
  }

  fprintf(*MEMORY[0x277D85DF8], "GIFParser::nextBlock: unknown block descriptor (0x%x)\n", buffer[0]);
  return 2;
}

void sub_241902A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFData *sub_241902AA8(const __CFData *a1, const __CFString *a2)
{
  Length = CFDataGetLength(a1);
  ExternalRepresentation = CFStringCreateExternalRepresentation(0, a2, 0x8000100u, 0);
  v6 = CFDataGetLength(ExternalRepresentation);
  v7 = Length + v6 + (v6 + 254) / 0xFFuLL;
  Mutable = CFDataCreateMutable(0, v7 + 3);
  CFDataSetLength(Mutable, v7 + 3);
  BytePtr = CFDataGetBytePtr(a1);
  v10 = CFReadStreamCreateWithBytesNoCopy(0, BytePtr, Length, *MEMORY[0x277CBED00]);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v12 = CFWriteStreamCreateWithBuffer(0, MutableBytePtr, v7 + 3);
  LODWORD(v7) = sub_241902BB8(v10, ExternalRepresentation, v12);
  CFRelease(ExternalRepresentation);
  CFRelease(v10);
  CFRelease(v12);
  if (v7)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t sub_241902BB8(void *a1, const __CFData *a2, __CFWriteStream *a3)
{
  if (CFReadStreamOpen(a1))
  {
    if (CFWriteStreamOpen(a3))
    {
      sub_2419020B8(v21, a1);
      v6 = sub_241902128(v21);
      if (v6 == 2)
      {
        v14 = *MEMORY[0x277D85DF8];
        v15 = "***addGIFCommentStream: not a GIF file\n";
        v16 = 39;
LABEL_16:
        fwrite(v15, v16, 1uLL, v14);
      }

      else
      {
        if (!v6)
        {
          while (1)
          {
            cf = 0;
            v19 = 12;
            v7 = sub_2419026CC(v21, &v19, &cf);
            if (v7)
            {
              v17 = *MEMORY[0x277D85DF8];
              sub_241901F9C(v7);
              fprintf(v17, "***addGIFCommentStream: nextBlock returned %s\n");
              goto LABEL_19;
            }

            if (v19 == 11)
            {
              v8 = sub_241902604(a2);
              if (!v8)
              {
                v14 = *MEMORY[0x277D85DF8];
                v15 = "***addGIFCommentStream: error creating comment block\n";
                v16 = 53;
                goto LABEL_16;
              }

              v9 = sub_241902E08(a3, v8);
              CFRelease(v8);
              if (v9)
              {
                break;
              }
            }

            v10 = sub_241902E08(a3, cf);
            if (v10)
            {
              fwrite("***addGIFCommentStream: error writing normal block\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
              goto LABEL_23;
            }

            CFRelease(cf);
            if (v19 == 11)
            {
              goto LABEL_23;
            }
          }

          fwrite("***addGIFCommentStream: error writing comment block\n", 0x34uLL, 1uLL, *MEMORY[0x277D85DF8]);
          v10 = 0xFFFFFFFFLL;
LABEL_23:
          CFWriteStreamClose(a3);
          CFReadStreamClose(a1);
          goto LABEL_24;
        }

        fprintf(*MEMORY[0x277D85DF8], "***addGIFCommentStream: GIFParser.init returned %d\n");
      }

LABEL_19:
      v10 = 0xFFFFFFFFLL;
LABEL_24:
      sub_241902124(v21);
      return v10;
    }

    v11 = *MEMORY[0x277D85DF8];
    v12 = "***addGIFCommentStream: open(outFile) failed\n";
    v13 = 45;
  }

  else
  {
    v11 = *MEMORY[0x277D85DF8];
    v12 = "***addGIFCommentStream: open(inFile) failed\n";
    v13 = 44;
  }

  fwrite(v12, v13, 1uLL, v11);
  return 0xFFFFFFFFLL;
}

void sub_241902DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_241902124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_241902E08(__CFWriteStream *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  while (1)
  {
    v6 = CFWriteStreamWrite(a1, BytePtr, Length);
    if (v6 < 0)
    {
      fprintf(*MEMORY[0x277D85DF8], "CFWriteStreamWrite returned %d\n", v6);
      return 0xFFFFFFFFLL;
    }

    if (!v6)
    {
      break;
    }

    BytePtr += v6;
    Length -= v6;
    if (!Length)
    {
      return 0;
    }
  }

  fwrite("CFWriteStreamWrite returned 0\n", 0x1EuLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0xFFFFFFFFLL;
}

uint64_t sub_241902EC8(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  if (!v10)
  {
    NSLog(&cfstr_Vpcreatefromfi_0.isa);
    goto LABEL_11;
  }

  v13 = sub_241908E0C(v10, 1538, 384);
  v14 = v13;
  if (v13 <= 0)
  {
    v17 = __error();
    v18 = strerror(*v17);
    if ((*(a4 + 4) & 2) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (lseek(v13, 0, 0) < 0)
  {
    v19 = __error();
    v18 = strerror(*v19);
    if ((*(a4 + 4) & 2) != 0)
    {
LABEL_10:
      v20 = v18;
      v21 = [v10 path];
      NSLog(&cfstr_ErrorCreatingS.isa, v21, v20);
    }

LABEL_11:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_35;
  }

  v32 = v9;
  sub_24190A588(v36, 1988465669);
  context = objc_autoreleasePoolPush();
  __p = 0;
  v34 = 0;
  v35 = 0;
  v15 = sub_24190D654(v9, v14, 0, &__p, v11, a4, v36, v12);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    if (v34 == __p)
    {
      goto LABEL_22;
    }

    v15 = 0;
    v22 = (v34 - __p) >> 3;
    v23 = 0xAAAAAAAAAAAAAAABLL * v22;
    v24 = 0xAAAAAAAAAAAAAAABLL * v22 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * v22;
    v25 = 1;
    v26 = 1;
    while (1)
    {
      v27 = *(__p + v15 + 8);
      __buf = bswap64(*(__p + v15));
      v39 = bswap32(v27);
      if (write(v14, &__buf, 0xCuLL) != 12)
      {
        break;
      }

      v26 = v25++ < v23;
      v15 += 24;
      if (!--v24)
      {
        goto LABEL_21;
      }
    }

    NSLog(&cfstr_Vpcreatefromfi_2.isa);
LABEL_21:
    if (!v26)
    {
LABEL_22:
      if (!sub_24190ADA8(v36, v14))
      {
        if (v12)
        {
          [v12 vpcCallback:100];
        }

        v16 = 1;
        goto LABEL_28;
      }

      NSLog(&cfstr_Vpcreatefromfi_1.isa);
    }

    v16 = 0;
    v15 = 0xFFFFFFFFLL;
  }

LABEL_28:
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  v9 = v32;
  objc_autoreleasePoolPop(context);
  if (v16)
  {
    if ((*(a4 + 4) & 2) != 0)
    {
      v28 = v37;
      v29 = [v10 path];
      NSLog(&cfstr_WroteUFramesTo.isa, v28, v29);
    }

    v15 = 0;
  }

  sub_24190A644(v36);
LABEL_35:

  return v15;
}

void sub_2419031C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  sub_24190A644(&a17);

  _Unwind_Resume(a1);
}

uint64_t sub_241903254(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a7;
  sub_24190D5A8(v20, a5);
  v16 = objc_autoreleasePoolPush();
  v17 = sub_24190D654(v13, -1, v20, a6, v14, a3, a4, v15);
  v18 = v17;
  if (v15 && !v17)
  {
    [v15 vpcCallback:100];
  }

  objc_autoreleasePoolPop(v16);
  if (!v18 && (*(a3 + 4) & 2) != 0)
  {
    NSLog(&cfstr_WroteUFramesTo_0.isa, *(a4 + 8));
  }

  return v18;
}

unint64_t sub_241903374(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = a1;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 numFrames];
    v10 = 0;
    if (a2 && v9 && a3 != 0.0 && a4 != 0.0)
    {
      v11 = [v8 numFrames];
      v12 = 1.5;
      if ((*(a2 + 4) & 4) == 0)
      {
        v12 = 3.0;
      }

      v10 = (a3 * a4 * v11 / (*a2 * *a2) * v12);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_241903CF4(__int16 a1, int a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  if ((a1 & 4) != 0 && a2)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:875704422];
    v15[0] = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:875704438];
    v15[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

    [v4 setObject:v7 forKey:*MEMORY[0x277CC4E30]];
  }

  else
  {
    if ((a1 & 2) != 0)
    {
      v8 = 1111970369;
    }

    else
    {
      v8 = 32;
    }

    if ((8 * a1) & 0x20 | a1 & 0x20)
    {
      v9 = 875704438;
    }

    else
    {
      v9 = 875704422;
    }

    if ((8 * a1) & 0x20 | a1 & 0x30)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
    [v4 setObject:v11 forKey:*MEMORY[0x277CC4E30]];
  }

  v12 = MEMORY[0x277CBED28];
  if ((a1 & 0x40) != 0)
  {
    [v4 setObject:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CC4D70]];
    if ((a1 & 0x80) == 0)
    {
LABEL_16:
      if ((a1 & 0x100) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 0x80) == 0)
  {
    goto LABEL_16;
  }

  [v4 setObject:*v12 forKey:*MEMORY[0x277CC4D68]];
  if ((a1 & 0x100) == 0)
  {
LABEL_17:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v4 setObject:*v12 forKey:*MEMORY[0x277CC4E10]];
  if ((a1 & 0x200) == 0)
  {
LABEL_18:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = [MEMORY[0x277CBEAC0] dictionary];
  [v4 setObject:v14 forKey:*MEMORY[0x277CC4DE8]];

  if ((a1 & 0x400) == 0)
  {
LABEL_19:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_28:
  [v4 setObject:*v12 forKey:*MEMORY[0x277CC4E18]];
  if ((a1 & 0x800) != 0)
  {
LABEL_20:
    [v4 setObject:*v12 forKey:*MEMORY[0x277CC4E08]];
  }

LABEL_21:

  return v4;
}

void sub_24190440C(uint64_t a1)
{
  v2 = [*(a1 + 32) trackOutput];
  v3 = [v2 copyNextSampleBuffer];

  v4 = [*(a1 + 32) readaheadLock];
  [v4 lock];

  [*(a1 + 32) setReadaheadBuf:v3];
  [*(a1 + 32) setReadaheadState:2];
  v5 = [*(a1 + 32) readaheadLock];
  [v5 broadcast];

  v6 = [*(a1 + 32) readaheadLock];
  [v6 unlock];
}

char *sub_241904AC0(unsigned int a1)
{
  if (a1 < 6)
  {
    return off_278CF7FC0[a1];
  }

  v1 = byte_27E54EAC0;
  snprintf(byte_27E54EAC0, 0x64uLL, "<<<Unknown (%d)>>>", a1);
  return v1;
}

uint64_t sub_241904B20(char a1)
{
  if ((a1 & 2) != 0)
  {
    v1 = 1111970369;
  }

  else
  {
    v1 = 32;
  }

  if ((8 * a1) & 0x20 | a1 & 0x20)
  {
    v2 = 875704438;
  }

  else
  {
    v2 = 875704422;
  }

  if ((8 * a1) & 0x20 | a1 & 0x30)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_241904B60(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);

  return sub_241904B88(PixelFormatType);
}

uint64_t sub_241904B88(uint64_t a1)
{
  if (a1 > 875704437)
  {
    if (a1 != 1111970369)
    {
      if (a1 == 875704438)
      {
        return 32;
      }

      goto LABEL_8;
    }

    return 2;
  }

  else
  {
    if (a1 != 32)
    {
      if (a1 == 875704422)
      {
        return 16;
      }

LABEL_8:
      NSLog(&cfstr_WarningUnknown.isa, a1);
      return 0;
    }

    return 1;
  }
}

uint64_t sub_241904C24(int a1, unsigned int a2, unsigned int *a3, int *a4)
{
  if (a1 == 875704438)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return 0xFFFFFFFFLL;
      }

      v4 = 240;
    }

    else
    {
      v4 = 235;
    }

    a2 = 16;
    goto LABEL_11;
  }

  if (a1 != 875704422 || a2 >= 2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 255;
LABEL_11:
  result = 0;
  *a3 = a2;
  *a4 = v4;
  return result;
}

uint64_t sub_241904C88(uint64_t a1, char *a2)
{
  *a1 = &unk_28537D298;
  v4 = a1 + 8;
  sub_24190A588(a1 + 8, 1988465669);
  *(a1 + 200) = 0;
  *(a1 + 120) = -1;
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28537D318;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  v5 = (a1 + 160);
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  v6 = sub_241908C90(a2, 0, 0);
  *(a1 + 120) = v6;
  if (v6 <= 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "VideoParser: error opening %s\n", a2);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CF2430](exception, "File open error");
    goto LABEL_25;
  }

  if (sub_24190A680(v4, v6))
  {
    fprintf(*MEMORY[0x277D85DF8], "VideoParser: error reading header from %s\n", a2);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CF2430](exception, "VPHeader error");
LABEL_25:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = lseek(*(a1 + 120), 0, 1);
  sub_24190507C(a1);
  v8 = *(a1 + 16);
  v9 = v7 + v8 * *(a1 + 192);
  v10 = v9 + 12 * v8;
  *(a1 + 200) = v10;
  v11 = mmap(0, v10, 1, 2, *(a1 + 120), 0);
  v12 = v11;
  *(a1 + 128) = v11;
  if (!v11)
  {
    fprintf(*MEMORY[0x277D85DF8], "VideoParser: mmap(%s, %llu) failed\n", a2, *(a1 + 200));
    v32 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CF2430](v32, "mmap error");
    __cxa_throw(v32, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(a1 + 184) = &v11[v7];
  v13 = *(a1 + 160);
  if (v13)
  {
    *(a1 + 168) = v13;
    operator delete(v13);
    *v5 = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *v5 = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  if (*(a1 + 16))
  {
    v14 = 0;
    v15 = &v12[v9];
    do
    {
      CMTimeMake(&v33, bswap64(*v15), bswap32(*(v15 + 2)));
      v17 = *(a1 + 168);
      v16 = *(a1 + 176);
      if (v17 >= v16)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v5) >> 3);
        v21 = v20 + 1;
        if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_2418D3940();
        }

        v22 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *v5) >> 3);
        if (2 * v22 > v21)
        {
          v21 = 2 * v22;
        }

        if (v22 >= 0x555555555555555)
        {
          v23 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          sub_2418D39E8(a1 + 160, v23);
        }

        v24 = 24 * v20;
        v25 = *&v33.value;
        *(v24 + 16) = v33.epoch;
        *v24 = v25;
        v19 = 24 * v20 + 24;
        v26 = *(a1 + 160);
        v27 = *(a1 + 168) - v26;
        v28 = 24 * v20 - v27;
        memcpy((v24 - v27), v26, v27);
        v29 = *(a1 + 160);
        *(a1 + 160) = v28;
        *(a1 + 168) = v19;
        *(a1 + 176) = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        v18 = *&v33.value;
        *(v17 + 16) = v33.epoch;
        *v17 = v18;
        v19 = v17 + 24;
      }

      *(a1 + 168) = v19;
      ++v14;
      v15 += 12;
    }

    while (v14 < *(a1 + 16));
  }

  return a1;
}

void sub_241905018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, void *a14, uint64_t a15)
{
  __cxa_free_exception(v17);
  v19 = *v16;
  if (*v16)
  {
    *(v15 + 168) = v19;
    operator delete(v19);
  }

  *a14 = a13;
  if (*a12)
  {
    free(*a12);
  }

  sub_24190A644(a15);
  _Unwind_Resume(a1);
}

_DWORD *sub_24190507C(_DWORD *result)
{
  result[48] = 0;
  if (result[17])
  {
    v1 = result;
    v2 = 0;
    do
    {
      result = sub_24190AE24((v1 + 2), v2);
      v1[48] += result[1] * result[2];
      ++v2;
    }

    while (v2 < v1[17]);
  }

  return result;
}

void *sub_2419050DC(void *a1)
{
  *a1 = &unk_28537D318;
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

uint64_t sub_24190512C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  *a1 = &unk_28537D298;
  sub_24190A588(a1 + 8, 1988465669);
  *(a1 + 144) = 0u;
  *(a1 + 120) = -1;
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28537D318;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  __p = 0;
  v15 = 0;
  v16 = 0;
  if (sub_241903254(v9, v10, a4, a1 + 8, a1 + 136, &__p, v11))
  {
    fwrite("VideoParser: error instantiating from asset,\n", 0x2DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CF2430](exception, "VideoParser error");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(a1 + 184) = *(a1 + 144);
  if ((a1 + 160) != &__p)
  {
    sub_2418DF350((a1 + 160), __p, v15, 0xAAAAAAAAAAAAAAABLL * ((v15 - __p) >> 3));
  }

  sub_24190507C(a1);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_2419052F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11)
{
  __cxa_free_exception(a9);
  if (__p)
  {
    operator delete(__p);
  }

  v21 = *v19;
  if (*v19)
  {
    *(v14 + 168) = v21;
    operator delete(v21);
  }

  *v16 = v17;
  if (*v18)
  {
    free(*v18);
  }

  sub_24190A644(v15);

  _Unwind_Resume(a1);
}

uint64_t sub_241905364(uint64_t a1)
{
  *a1 = &unk_28537D298;
  v2 = *(a1 + 128);
  if (v2)
  {
    munmap(v2, *(a1 + 200));
  }

  v3 = *(a1 + 120);
  if (v3 >= 1)
  {
    close(v3);
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    *(a1 + 168) = v4;
    operator delete(v4);
  }

  *(a1 + 136) = &unk_28537D318;
  v5 = *(a1 + 144);
  if (v5)
  {
    free(v5);
  }

  sub_24190A644(a1 + 8);
  return a1;
}

void sub_241905410(uint64_t a1)
{
  sub_241905364(a1);

  JUMPOUT(0x245CF24E0);
}

void sub_241905450(void *a1)
{
  *a1 = &unk_28537D318;
  v1 = a1[1];
  if (v1)
  {
    free(v1);
  }

  JUMPOUT(0x245CF24E0);
}

id sub_2419054BC(void *a1, uint64_t a2, int a3, __int128 *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10)
{
  v19 = a1;
  v20 = v19;
  v21 = v19;
  if (a2)
  {
    v21 = sub_2419055CC(v19, a2);
  }

  v22 = sub_24190574C(v21, a5, a6, a7, a8);

  v23 = sub_241905870(v22, a3, a9, a10);

  if (a4)
  {
    v24 = sub_241905ACC(v23, a4);

    v23 = v24;
  }

  return v23;
}

id sub_2419055CC(void *a1, uint64_t a2)
{
  v16[9] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  for (i = 0; i != 9; ++i)
  {
    v16[i] = *(a2 + 4 * i);
  }

  [v3 extent];
  v7 = v6;
  [v4 extent];
  v15[1] = v8;
  v15[2] = 1.0;
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = 1.0;
  v15[0] = 0.0;
  v12 = v7;
  v13 = xmmword_241911A00;
  v9 = [MEMORY[0x277CBF750] filterWithName:@"CIPerspectiveTransform"];
  [v9 setValue:v4 forKey:@"inputImage"];
  sub_241905C50(v15, v16, v9, @"inputTopLeft");
  sub_241905C50(v14, v16, v9, @"inputTopRight");
  sub_241905C50(dbl_241911A10, v16, v9, @"inputBottomLeft");
  sub_241905C50(&v12, v16, v9, @"inputBottomRight");
  v10 = [v9 outputImage];

  return v10;
}

id sub_24190574C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  [v9 extent];
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  if (CGRectEqualToRect(v19, v20) || a4 == 0.0 || a5 == 0.0)
  {
    v10 = v9;
  }

  else
  {
    v12 = trunc(a5);
    v13 = trunc(a2);
    v14 = trunc(a3);
    v10 = [v9 imageByCroppingToRect:{v13, v14, trunc(a4), v12}];
    if (v13 != 0.0 || v14 != 0.0)
    {
      memset(&v17, 0, sizeof(v17));
      CGAffineTransformMakeTranslation(&v17, -v13, -v14);
      v16 = v17;
      v15 = [v10 imageByApplyingTransform:&v16];

      v10 = v15;
    }
  }

  return v10;
}

id sub_241905870(void *a1, int a2, double a3, double a4)
{
  v7 = a1;
  [v7 extent];
  v10 = a3 == v9 && a4 == v8;
  if (v10 || a3 == 0.0 || a4 == 0.0)
  {
    v16 = v7;
LABEL_12:
    v15 = v16;
    goto LABEL_13;
  }

  v11 = trunc(a3);
  switch(a2)
  {
    case 2:
      v20 = trunc(a4);
      [v7 extent];
      v22 = v11 / v21;
      [v7 extent];
      memset(&v25, 0, sizeof(v25));
      CGAffineTransformMakeScale(&v25, v22, v20 / v23);
      v24 = v25;
      v16 = [v7 imageByApplyingTransform:&v24 highQualityDownsample:1];
      goto LABEL_12;
    case 1:
      v12 = [MEMORY[0x277CBF750] filterWithName:@"CIBicubicScaleTransform"];
      [v12 setDefaults];
      [v12 setValue:&unk_285384EA8 forKey:@"inputB"];
      [v12 setValue:&unk_285384EB8 forKey:@"inputC"];
      [v12 setValue:v7 forKey:*MEMORY[0x277CBFAF0]];
      [v7 extent];
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v11 / v18];
      [v12 setValue:v19 forKey:*MEMORY[0x277CBFB18]];

      v15 = [v12 outputImage];
      goto LABEL_17;
    case 0:
      v12 = [MEMORY[0x277CBF750] filterWithName:@"CILanczosScaleTransform"];
      [v12 setDefaults];
      [v12 setValue:v7 forKey:*MEMORY[0x277CBFAF0]];
      [v7 extent];
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11 / v13];
      [v12 setValue:v14 forKey:*MEMORY[0x277CBFB18]];
      v15 = [v12 outputImage];

LABEL_17:
      goto LABEL_13;
  }

  NSLog(&cfstr_Alresizetransf.isa);
  v15 = 0;
LABEL_13:

  return v15;
}

id sub_241905ACC(void *a1, __int128 *a2)
{
  v3 = a1;
  if (a2 && (v4 = a2[1], *&v18.a = *a2, *&v18.c = v4, *&v18.tx = a2[2], !CGAffineTransformIsIdentity(&v18)))
  {
    v6 = a2[1];
    v16 = *a2;
    v17 = v6;
    [v3 extent];
    v7 = v20.size.width * 0.5;
    *&v18.a = v16;
    *&v18.c = v17;
    v8 = v20.size.height * 0.5;
    v18.tx = 0.0;
    v18.ty = 0.0;
    v21 = CGRectApplyAffineTransform(v20, &v18);
    v9 = v21.size.width * 0.5;
    v10 = v21.size.height * 0.5;
    CGAffineTransformMakeTranslation(&v18, -v7, -v8);
    v15 = v18;
    v11 = [v3 imageByApplyingTransform:&v15];
    CGAffineTransformMakeTranslation(&v15, v9, v10);
    v18 = v15;
    *&t1.a = v16;
    *&t1.c = v17;
    t1.tx = 0.0;
    t1.ty = 0.0;
    v13 = v15;
    CGAffineTransformConcat(&v15, &t1, &v13);
    v18 = v15;
    v5 = [v11 imageByApplyingTransform:&v15];
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

void sub_241905C50(double *a1, double *a2, void *a3, void *a4)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a2[1] * v5 + *a2 * *a1 + a2[2] * v6;
  v8 = v5 * a2[4] + a2[3] * *a1 + a2[5] * v6;
  v9 = 1.0 / (v5 * a2[7] + a2[6] * *a1 + a2[8] * v6);
  v10 = v7 * v9;
  v11 = v8 * v9;
  v12 = MEMORY[0x277CBF788];
  v13 = a4;
  v14 = a3;
  v15 = [v12 vectorWithX:v10 Y:v11];
  [v14 setValue:v15 forKey:v13];
}

double sub_241905D34(uint64_t a1)
{
  *(a1 + 32) = 1065353216;
  *&result = 1065353216;
  *a1 = xmmword_241911A28;
  *(a1 + 16) = unk_241911A38;
  return result;
}

uint64_t sub_241906280(CGImage *a1, int a2, int a3, CGColorSpace *ColorSpace, int a5, int a6, uint64_t a7, void **a8)
{
  *a7 = CGImageGetWidth(a1);
  *(a7 + 8) = CGImageGetHeight(a1);
  *(a7 + 16) = CGImageGetBitsPerComponent(a1);
  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  *(a7 + 17) = BitsPerPixel;
  v17 = *(a7 + 16);
  if (v17 == 8)
  {
    v32 = a8;
    v18 = 1;
    if (ColorSpace)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v17 != 16)
    {
      printf("***BIBitmapFromImage: %u bitsPerComponents not supported\n", *(a7 + 16));
      return 0xFFFFFFFFLL;
    }

    v32 = a8;
    v18 = 2;
    if (ColorSpace)
    {
      goto LABEL_7;
    }
  }

  ColorSpace = CGImageGetColorSpace(a1);
  if (!ColorSpace)
  {
    fwrite("***BIBitmapFromImage: erro obtaining color space from image\n", 0x3CuLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0xFFFFFFFFLL;
  }

LABEL_7:
  v19 = BitsPerPixel / v17;
  if (v19 != 1)
  {
    if (a6)
    {
      v23 = 6;
    }

    else
    {
      v23 = 5;
    }

    *(a7 + 24) = *a7 * 4 * v18;
    if (v19 == 4)
    {
      AlphaInfo = CGImageGetAlphaInfo(a1);
      if (AlphaInfo <= kCGImageAlphaNoneSkipFirst && ((1 << AlphaInfo) & 0x61) != 0)
      {
        *(a7 + 17) = 3 * *(a7 + 16);
      }

      else if (a6)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }
    }

    if (a5)
    {
      v27 = 0x4000;
    }

    else
    {
      v27 = 0x2000;
    }

    BitmapInfo = v23 | v27;
    v18 = 4;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_32:
    v22 = *(a7 + 24);
    goto LABEL_33;
  }

  *(a7 + 24) = *a7 * v18;
  BitmapInfo = CGImageGetBitmapInfo(a1);
  if (!a2)
  {
    goto LABEL_32;
  }

LABEL_9:
  if (!a3)
  {
    fwrite("***Pad size of 0 invalid\n", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
    v25 = v32;
    goto LABEL_36;
  }

  if (a2 == 1)
  {
    v21 = v18;
  }

  else
  {
    v21 = 1;
  }

  v22 = ((v21 * a3) + *(a7 + 24) - 1) / (v21 * a3) * (v21 * a3);
  *(a7 + 24) = v22;
LABEL_33:
  v28 = *(a7 + 8) * v22;
  v29 = malloc_type_malloc(v28, 0x100004077774924uLL);
  v25 = v32;
  *v32 = v29;
  bzero(v29, v28);
  v30 = CGBitmapContextCreate(*v32, *a7, *(a7 + 8), *(a7 + 16), *(a7 + 24), ColorSpace, BitmapInfo);
  if (v30)
  {
    v31 = v30;
    CGContextSetInterpolationQuality(v30, kCGInterpolationHigh);
    v33.size.width = *a7;
    v33.size.height = *(a7 + 8);
    v33.origin.x = 0.0;
    v33.origin.y = 0.0;
    CGContextDrawImage(v31, v33, a1);
    CFRelease(v31);
    return 0;
  }

  fwrite("***BIBitmapFromImage: Error creating CGBitmapContext\n", 0x35uLL, 1uLL, *MEMORY[0x277D85DF8]);
LABEL_36:
  if (*v25)
  {
    free(*v25);
    *v25 = 0;
  }

  return 1;
}

uint64_t sub_241906BC4(uint64_t a1, char **a2, __int128 *a3, CMTime *a4)
{
  *a1 = &unk_28537D078;
  *(a1 + 8) = 0u;
  v5 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  v6 = *(a3 + 2);
  *(a1 + 60) = *a3;
  *(a1 + 76) = v6;
  v7 = MEMORY[0x277CC08F0];
  *(a1 + 84) = *MEMORY[0x277CC08F0];
  *(a1 + 100) = v7->epoch;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CF2430](exception, "FrameTimeNormalizer constructor requires valid FramPresTimeArray.");
    goto LABEL_30;
  }

  if (v5 != a2)
  {
    sub_2418DF350((a1 + 8), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  if ((~*(a1 + 72) & 0x11) == 0)
  {
    sub_24190EC24(v5, 0, &time1);
    *(a1 + 60) = time1;
    goto LABEL_8;
  }

  time1 = *(a1 + 60);
  time2 = *v7;
  if (!CMTimeCompare(&time1, &time2))
  {
    fwrite("***FrameTimeNormalizer invalid zero normFrameTime\n", 0x32uLL, 1uLL, *MEMORY[0x277D85DF8]);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CF2430](exception, "Unsupported normFrameTime");
LABEL_30:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = *a3;
  *(a1 + 76) = *(a3 + 2);
  *(a1 + 60) = v10;
LABEL_8:
  v11 = *(a1 + 8);
  v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v11) >> 3);
  if (v12)
  {
    v13 = *v11;
    *(a1 + 100) = *(v11 + 2);
    *(a1 + 84) = v13;
  }

  else
  {
    *(a1 + 84) = *&v7->value;
    *(a1 + 100) = v7->epoch;
  }

  if (v12 != v12)
  {
    v29 = "mFramePresTimes.size() == numRawFrames()";
    v30 = 53;
    goto LABEL_26;
  }

  sub_2418DFBD4(&time1, v12);
  v14 = *(a1 + 32);
  if (v14)
  {
    *(a1 + 40) = v14;
    operator delete(v14);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 32) = time1;
  v15 = *(a1 + 8);
  if (-1431655765 * ((*(a1 + 16) - v15) >> 3) == 1)
  {
    LODWORD(v16) = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = (v15 + v17);
      v20 = *(v19 + 24);
      time2.epoch = *(v19 + 5);
      *&time2.value = v20;
      v21 = *v19;
      rhs.epoch = *(v19 + 2);
      *&rhs.value = v21;
      CMTimeSubtract(&time1, &time2, &rhs);
      ++v18;
      v22 = *(a1 + 32) + v17;
      v23 = *&time1.value;
      *(v22 + 16) = time1.epoch;
      *v22 = v23;
      v15 = *(a1 + 8);
      v16 = -1 - 1431655765 * ((*(a1 + 16) - v15) >> 3);
      v17 += 24;
    }

    while (v18 < v16);
  }

  if ((a4->flags & 0x1D) == 1)
  {
    memset(&time1, 0, sizeof(time1));
    v24 = *v15;
    time2.epoch = *(v15 + 2);
    *&time2.value = v24;
    rhs = *a4;
    CMTimeAdd(&time1, &time2, &rhs);
    time2 = *(*(a1 + 8) + 24 * (-1431655765 * ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1));
    rhs = time2;
    lhs = time1;
    if (CMTimeCompare(&rhs, &lhs) >= 1)
    {
      __assert_rtn("FrameTimeNormalizer", "FrameTimeNormalizer.mm", 67, "CMTIME_COMPARE_INLINE(rawLastFrameTime, <=, rawEndTime)");
    }

    memset(&rhs, 0, sizeof(rhs));
    lhs = time1;
    v32 = time2;
    CMTimeSubtract(&rhs, &lhs, &v32);
    v25 = *(a1 + 32) + 24 * (-1 - 1431655765 * ((*(a1 + 16) - *(a1 + 8)) >> 3));
    v26 = *&rhs.value;
    epoch = rhs.epoch;
  }

  else
  {
    v25 = *(a1 + 32) + 24 * v16;
    v26 = *(a1 + 60);
    epoch = *(a1 + 76);
  }

  *(v25 + 16) = epoch;
  *v25 = v26;
  if (*(a1 + 16) - *(a1 + 8) != *(a1 + 40) - *(a1 + 32))
  {
    v29 = "mFramePresTimes.size() == mFrameDurations.size()";
    v30 = 75;
LABEL_26:
    __assert_rtn("FrameTimeNormalizer", "FrameTimeNormalizer.mm", v30, v29);
  }

  return a1;
}

void sub_241907044(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  v5 = v1[4];
  if (v5)
  {
    v1[5] = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[2] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

__n128 sub_241907098@<Q0>(void *a1@<X0>, unsigned int a2@<W1>, CMTime *a3@<X8>)
{
  v4 = a1[1];
  v5 = -1431655765 * ((a1[2] - v4) >> 3);
  if (v5 <= a2)
  {
    v12 = MEMORY[0x277CC0898];
    result = *MEMORY[0x277CC0898];
    *&a3->value = *MEMORY[0x277CC0898];
    a3->epoch = *(v12 + 16);
  }

  else
  {
    v6 = (a1[4] + 24 * a2);
    result = *v6;
    *&a3->value = *v6;
    a3->epoch = v6[1].n128_i64[0];
    if (v5 - 1 > a2)
    {
      memset(&v15, 0, sizeof(v15));
      v8 = (v4 + 24 * (a2 + 1));
      v9 = *v8;
      lhs.epoch = *(v8 + 2);
      *&lhs.value = v9;
      v10 = (v4 + 24 * a2);
      v11 = *v10;
      v13.epoch = *(v10 + 2);
      *&v13.value = v11;
      CMTimeSubtract(&v15, &lhs, &v13);
      lhs = *a3;
      v13 = v15;
      if (CMTimeCompare(&lhs, &v13))
      {
        sub_241908BE0();
      }
    }
  }

  return result;
}

uint64_t sub_24190719C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2[1] - *a2 != v3 - v2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  LOBYTE(v8) = 1;
  do
  {
    v9 = *a2 + v6;
    v10 = *(v9 + 16);
    *&time1.value = *v9;
    time1.epoch = v10;
    v11 = (v2 + v6);
    v12 = *v11;
    v14.epoch = *(v11 + 2);
    *&v14.value = v12;
    v8 = (CMTimeCompare(&time1, &v14) == 0) & v8;
    ++v7;
    v2 = *(a1 + 8);
    v6 += 24;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v2) >> 3) > v7);
  return v8;
}

uint64_t sub_241907284(CMTime *a1, __int128 **a2)
{
  v2 = *a2;
  if (a2[1] == *a2)
  {
    return 0;
  }

  v5 = *v2;
  time1.epoch = *(v2 + 2);
  *&time1.value = v5;
  time2 = *a1;
  v6 = -1;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v7 = 24;
    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v6 + 2)
    {
      v8 = *a2 + v7;
      v9 = *v8;
      time1.epoch = *(v8 + 16);
      *&time1.value = v9;
      time2 = *a1;
      ++v6;
      v7 += 24;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    ++v6;
  }

  else
  {
LABEL_6:
    if (v6 == -1)
    {
      return 0;
    }
  }

  v10 = *a2;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  if (v6 == v11 - 1)
  {
    return v6;
  }

  if (v11 < 2)
  {
    return 0;
  }

  memset(&time1, 0, sizeof(time1));
  time2 = *a1;
  v12 = (v10 + 24 * v6);
  v13 = *v12;
  rhs.epoch = *(v12 + 2);
  *&rhs.value = v13;
  CMTimeSubtract(&time1, &time2, &rhs);
  memset(&time2, 0, sizeof(time2));
  v14 = *a2 + 24 * (v6 + 1);
  v15 = *(v14 + 16);
  *&rhs.value = *v14;
  rhs.epoch = v15;
  v17 = *a1;
  CMTimeSubtract(&time2, &rhs, &v17);
  rhs = time2;
  v17 = time1;
  if (CMTimeCompare(&rhs, &v17) < 0)
  {
    ++v6;
  }

  return v6;
}

uint64_t sub_241907470(CMTime *a1, __int128 **a2, int *a3)
{
  v5 = *a2;
  v6 = -1431655765 * ((a2[1] - *a2) >> 3);
  if (a3)
  {
    v7 = *a3;
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v7 = 0;
    if (!v6)
    {
      return 0;
    }
  }

  time1 = *a1;
  v8 = *v5;
  time2.epoch = *(v5 + 2);
  *&time2.value = v8;
  if (CMTimeCompare(&time1, &time2) < 1)
  {
    return 0;
  }

  v9 = (v6 - 1);
  time1 = *a1;
  v10 = *a2 + 24 * v9;
  v11 = *(v10 + 16);
  *&time2.value = *v10;
  time2.epoch = v11;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v9 = v7 - (v7 == v9);
    v12 = (v6 - 2);
    while (1)
    {
      time1 = *(*a2 + v9);
      time2 = *a1;
      v17 = time1;
      if (!CMTimeCompare(&time2, &v17))
      {
        break;
      }

      time2 = *a1;
      v17 = time1;
      if (CMTimeCompare(&time2, &v17) < 1)
      {
        if (!v9)
        {
          return v9;
        }

        v13 = (v9 - 1);
      }

      else
      {
        if (v9 == v12)
        {
          return v12;
        }

        time2 = *a1;
        v13 = (v9 + 1);
        v14 = *a2 + 24 * v13;
        v15 = *(v14 + 16);
        *&v17.value = *v14;
        v17.epoch = v15;
        if (CMTimeCompare(&time2, &v17) < 0)
        {
          return v9;
        }
      }

      v9 = v13;
    }
  }

  return v9;
}

CMTime *sub_241907738@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  result = (*(*a1 + 24))(a1);
  if (result >= a2)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    time = *(a1 + 60);
    CMTimeMultiply(a3, &time, a2);
    lhs = *a3;
    v9 = *(a1 + 84);
    result = CMTimeAdd(&time, &lhs, &v9);
    *a3 = *&time.value;
    epoch = time.epoch;
  }

  else
  {
    v7 = MEMORY[0x277CC0898];
    *a3 = *MEMORY[0x277CC0898];
    epoch = *(v7 + 16);
  }

  *(a3 + 16) = epoch;
  return result;
}

uint64_t sub_24190783C(void *a1, unsigned int a2)
{
  if ((*(*a1 + 24))(a1) <= a2)
  {
    (*(*a1 + 24))(a1);
    return -1431655765 * ((a1[2] - a1[1]) >> 3) - 1;
  }

  else
  {
    v7 = 0uLL;
    v8 = 0;
    sub_241907738(a1, a2, &v7);
    v5 = v7;
    v6 = v8;
    return (*(*a1 + 32))(a1, &v5);
  }
}

CMTimeValue sub_241907930(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = -1431655765 * ((*(a1 + 16) - v1) >> 3);
  if (!v2)
  {
    return 0;
  }

  v4 = (v1 + 24 * (v2 - 1));
  v5 = *v4;
  v10.epoch = *(v4 + 2);
  *&v10.value = v5;
  *&lhs.value = v5;
  lhs.epoch = v10.epoch;
  sub_241907098(a1, v2 - 1, &rhs);
  CMTimeAdd(&v10, &lhs, &rhs);
  memset(&lhs, 0, sizeof(lhs));
  rhs = v10;
  v7 = *(a1 + 84);
  CMTimeSubtract(&lhs, &rhs, &v7);
  return (*(a1 + 60) * lhs.timescale + lhs.value * *(a1 + 68) - 1) / (*(a1 + 60) * lhs.timescale);
}

uint64_t sub_241907A14(uint64_t a1, CMTime *a2)
{
  time1 = *a2;
  time = *(a1 + 60);
  v4 = (*(*a1 + 24))(a1);
  CMTimeMultiply(&lhs, &time, v4);
  v6 = *(a1 + 84);
  CMTimeAdd(&time, &lhs, &v6);
  if (CMTimeCompare(&time1, &time) > 0)
  {
    return 0;
  }

  time = *a2;
  return (*(*a1 + 48))(a1, &time);
}

uint64_t sub_241907B0C(uint64_t a1)
{
  lhs = *(a1 + 60);
  result = sub_24190F1A8(&lhs, &v9);
  *(a1 + 108) = v9;
  v3 = *(a1 + 8);
  if (-1431655765 * ((*(a1 + 16) - v3) >> 3))
  {
    v4 = *v3;
    lhs.epoch = *(v3 + 2);
    *&lhs.value = v4;
    v7 = *(a1 + 108);
    result = CMTimeAdd(&v9, &lhs, &v7);
    *(a1 + 84) = *&v9.value;
    epoch = v9.epoch;
  }

  else
  {
    v6 = MEMORY[0x277CC08F0];
    *(a1 + 84) = *MEMORY[0x277CC08F0];
    epoch = *(v6 + 16);
  }

  *(a1 + 100) = epoch;
  return result;
}

CMTimeValue sub_241907BD4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = -1431655765 * ((*(a1 + 16) - v1) >> 3);
  if (!v2)
  {
    return 0;
  }

  v4 = (v1 + 24 * (v2 - 1));
  v5 = *v4;
  v10.epoch = *(v4 + 2);
  *&v10.value = v5;
  *&lhs.value = v5;
  lhs.epoch = v10.epoch;
  sub_241907098(a1, v2 - 1, &rhs);
  CMTimeAdd(&v10, &lhs, &rhs);
  memset(&lhs, 0, sizeof(lhs));
  rhs = v10;
  v7 = *(a1 + 84);
  CMTimeSubtract(&lhs, &rhs, &v7);
  return (*(a1 + 60) * lhs.timescale + lhs.value * *(a1 + 68) - 1) / (*(a1 + 60) * lhs.timescale);
}

uint64_t sub_241907CB8(uint64_t a1, CMTime *a2)
{
  time1 = *a2;
  time = *(a1 + 60);
  v4 = (*(*a1 + 24))(a1);
  CMTimeMultiply(&lhs, &time, v4);
  v6 = *(a1 + 84);
  CMTimeAdd(&time, &lhs, &v6);
  if (CMTimeCompare(&time1, &time) > 0)
  {
    return 0;
  }

  time = *a2;
  return (*(*a1 + 48))(a1, &time);
}

uint64_t sub_241907DB0(uint64_t *a1, int a2, uint64_t a3)
{
  v6 = (a3 + 8);
  sub_2418DB78C(a3, *(a3 + 8));
  *a3 = v6;
  *(a3 + 16) = 0;
  *v6 = 0;
  v7 = *a1;
  v8 = ((a1[1] - *a1) >> 2) - 1;
  if ((a1[1] - *a1) >> 2 != 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 1;
    v13 = 1;
    do
    {
      v14 = *(v7 + 4 * v9);
      v15 = *(v7 + 4 * v12);
      if (v15 < v14)
      {
        sub_241908C0C();
      }

      v9 = v12;
      v16 = v15 == v14;
      if (v15 == v14)
      {
        if (v11)
        {
          ++v13;
        }

        else
        {
          v10 = v12 - 1;
          v13 = 2;
        }

        if (v8 == v12)
        {
          v18 = v10 + a2;
          v19 = &v18;
          *(sub_2419087E4(a3, &v18) + 8) = v13;
        }
      }

      else
      {
        if (v11)
        {
          v18 = v10 + a2;
          v19 = &v18;
          *(sub_2419087E4(a3, &v18) + 8) = v13;
        }

        v13 = 1;
        v10 = v12;
      }

      v7 = *a1;
      v8 = ((a1[1] - *a1) >> 2) - 1;
      ++v12;
      v11 = v16;
    }

    while (v8 > v9);
  }

  return 1;
}

uint64_t sub_241907F10(uint64_t a1, int a2, unsigned int a3)
{
  if (a3 >= 2 && a3 + a2 <= (*(*a1 + 24))(a1))
  {
    v7 = a3;
    sub_2418FF4A0(&v16, a3);
    for (i = 0; i != v7; ++i)
    {
      v9 = (*(*a1 + 16))(a1, (a2 + i));
      v10 = v16;
      *(v16 + i) = v9;
    }

    v15[0] = 0;
    v15[1] = 0;
    v13 = 0;
    v14 = v15;
    __p = 0;
    v12 = 0;
    sub_2418FD304(&__p, v10, v17, (v17 - v10) >> 2);
    sub_241907DB0(&__p, a2, &v14);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    operator new();
  }

  return 0;
}

void sub_2419082A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, void *__p, uint64_t a19)
{
  MEMORY[0x245CF24E0](v19, 0x20C40960023A9);
  sub_2418DB78C(&a15, a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_241908318(int a1)
{
  if (a1)
  {
    if (a1 != 2)
    {
      if (a1 == 1)
      {
        operator new();
      }

      sub_241908C38();
    }

    operator new();
  }

  operator new();
}

void sub_2419084E8(void *a1)
{
  sub_2418FAF38(a1);

  JUMPOUT(0x245CF24E0);
}

CMTimeValue sub_241908520(uint64_t a1, CMTime *a2)
{
  lhs = *a2;
  memset(&v6, 0, sizeof(v6));
  v4 = *(a1 + 84);
  CMTimeSubtract(&v6, &lhs, &v4);
  return v6.value * *(a1 + 68) / (*(a1 + 60) * v6.timescale);
}

void sub_2419085A0(void *a1)
{
  sub_2418FAF38(a1);

  JUMPOUT(0x245CF24E0);
}

uint64_t sub_2419085D8(void *a1, uint64_t a2)
{
  if (sub_24190783C(a1, a2) != a2 && (*(*a1 + 24))(a1) > a2)
  {
    sub_241908C64();
  }

  return a2;
}

CMTimeValue sub_24190865C(uint64_t a1, CMTime *a2)
{
  lhs = *a2;
  memset(&v6, 0, sizeof(v6));
  v4 = *(a1 + 84);
  CMTimeSubtract(&v6, &lhs, &v4);
  return v6.value * *(a1 + 68) / (*(a1 + 60) * v6.timescale);
}

uint64_t sub_2419086D8(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  return (*(*a1 + 48))(a1, &v3);
}

void sub_241908730(void *a1)
{
  sub_2418FAF38(a1);

  JUMPOUT(0x245CF24E0);
}

CMTimeValue sub_241908768(uint64_t a1, CMTime *a2)
{
  lhs = *a2;
  memset(&v6, 0, sizeof(v6));
  v4 = *(a1 + 84);
  CMTimeSubtract(&v6, &lhs, &v4);
  return v6.value * *(a1 + 68) / (*(a1 + 60) * v6.timescale);
}

uint64_t *sub_2419087E4(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

void *sub_2419088B4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_241908B3C(result, a2);
  }

  return result;
}

void sub_241908B20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_241908B3C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    sub_241908B88(a1, a2);
  }

  sub_2418D3940();
}

void sub_241908B88(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_2418D3A40();
}

uint64_t sub_241908C90(char *a1, int a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = sub_241908D28(a1);
  v8 = open([v7 UTF8String], a2, a3);
  if (v8 <= 0)
  {
    sub_241908EAC(a1);
    v8 = 0xFFFFFFFFLL;
  }

  objc_autoreleasePoolPop(v6);
  return v8;
}

id sub_241908D28(_BYTE *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v4 = v3;
  if (*a1 == 47)
  {
    v5 = v3;
  }

  else
  {
    v6 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
    v7 = [v6 objectAtIndex:0];
    v8 = v7;
    if (v7)
    {
      v5 = [v7 stringByAppendingPathComponent:v4];
    }

    else
    {
      NSLog(&cfstr_ErrorObtaining_0.isa);
      v5 = 0;
    }
  }

  objc_autoreleasePoolPop(v2);

  return v5;
}

uint64_t sub_241908E0C(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 path];
  v8 = open([v7 UTF8String], a2, a3);

  if (v8 <= 0)
  {
    sub_241908EF4(v5);
    v8 = 0xFFFFFFFFLL;
  }

  objc_autoreleasePoolPop(v6);

  return v8;
}

void sub_241908EF4(void *a1)
{
  v2 = [a1 path];
  perror([v2 UTF8String]);

  v3 = *MEMORY[0x277D85DF8];
  v5 = [a1 path];
  v4 = v5;
  fprintf(v3, "***Error opening %s\n", [v5 UTF8String]);
}

uint64_t sub_241909858(void *a1, uint64_t a2, unsigned int a3, void *a4, float a5)
{
  v9 = a4;
  v10 = v9;
  if (!a3 || !a1 || !a2 || a5 == 0.0)
  {
    NSLog(&cfstr_Creategiffromv_1.isa);
LABEL_33:
    v32 = 0;
    goto LABEL_34;
  }

  v9[2](v9, 0.0);
  v11 = objc_autoreleasePoolPush();
  v12 = [[VideoContext alloc] initWithWriter:0 pixelFormatFlags:3588];
  if (!v12)
  {
    NSLog(&cfstr_Creategiffromv_2.isa);
LABEL_22:
    objc_autoreleasePoolPop(v11);
    goto LABEL_33;
  }

  v13 = v12;
  v14 = [(VideoContext *)v12 ciCtx];
  *&v15 = a5;
  v16 = [GIFBuilder builderWithContext:v14 forURL:a2 maxRes:a3 fps:v15];

  if (!v16)
  {

    goto LABEL_22;
  }

  v17 = a1;
  v18 = [[VideoReader alloc] initFromFile:v17];
  if (v18)
  {
    v38 = v17;
    v19 = 0;
    v20 = a5;
    while (1)
    {
      v21 = objc_autoreleasePoolPush();
      v42[0] = 0;
      v22 = [v18 getFrameAsSampleBuf:v42];
      if (v22)
      {
        break;
      }

      ImageBuffer = CMSampleBufferGetImageBuffer(v42[0]);
      v24 = sub_24190A150(ImageBuffer, 0);
      if (!v24)
      {
        NSLog(&cfstr_ErrorConvertin.isa);
        goto LABEL_29;
      }

      v25 = v24;
      memset(&v41, 0, sizeof(v41));
      [v18 preferredTransform];
      CGAffineTransformInvert(&v41, &v40);
      if (fabs(v41.a) <= 0.001)
      {
        [v18 preferredTransform];
        if (v39 <= 0.0)
        {
          [v25 extent];
          v41.tx = v27;
          v26 = 0.0;
        }

        else
        {
          v41.tx = 0.0;
          [v25 extent];
        }

        v41.ty = v26;
      }

      v40 = v41;
      v28 = [v25 imageByApplyingTransform:&v40];

      v29 = [v16 addImage:v28];
      CFRelease(v42[0]);
      if (!v29 || ([v18 trackLengthT], v30 = v19 / v20 / CMTimeGetSeconds(&v40), (v10[2](v10, v30) & 1) == 0))
      {

LABEL_29:
        objc_autoreleasePoolPop(v21);
        v32 = 0;
        v31 = 0;
        goto LABEL_30;
      }

      ++v19;

      objc_autoreleasePoolPop(v21);
    }

    v33 = v22;
    if (v22 != 1)
    {
      v34 = [v38 path];
      v35 = v33;
      v17 = v38;
      v36 = sub_241904AC0(v35);
      NSLog(&cfstr_ErrorReadingFr.isa, v34, v36);

      objc_autoreleasePoolPop(v21);
      v32 = 0;
      v31 = 0;
      goto LABEL_31;
    }

    objc_autoreleasePoolPop(v21);
    v32 = [v16 finish];
    v31 = 1;
LABEL_30:
    v17 = v38;
  }

  else
  {
    v31 = 0;
    v32 = 1;
  }

LABEL_31:

  objc_autoreleasePoolPop(v11);
  if (!v31)
  {
    goto LABEL_33;
  }

  v10[2](v10, 1.0);
LABEL_34:

  return v32;
}

id sub_24190A150(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  v4 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
  v5 = v4;
  if (v3)
  {
    Value = CFDictionaryGetValue(v4, *MEMORY[0x277CC4C88]);
    if (Value && (v7 = Value, CFDataGetLength(Value)))
    {
      v8 = CFDictionaryGetValue(v3, v7);
    }

    else
    {
      theDict = v3;
      v9 = *MEMORY[0x277CC4C50];
      v49 = CFDictionaryGetValue(v5, *MEMORY[0x277CC4C50]);
      v10 = *MEMORY[0x277CC4C00];
      v11 = CFDictionaryGetValue(v5, *MEMORY[0x277CC4C00]);
      v12 = *MEMORY[0x277CC4CC0];
      v13 = CFDictionaryGetValue(v5, *MEMORY[0x277CC4CC0]);
      v14 = *MEMORY[0x277CC4D10];
      v15 = CFDictionaryGetValue(v5, *MEMORY[0x277CC4D10]);
      if (v11)
      {
        v16 = v13 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        v8 = 0;
        v3 = theDict;
      }

      else
      {
        v17 = v15;
        v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
        v19 = v18;
        if (v49)
        {
          [v18 setObject:v49 forKeyedSubscript:v9];
        }

        [v19 setObject:v11 forKeyedSubscript:v10];
        [v19 setObject:v13 forKeyedSubscript:v12];
        if (v17)
        {
          [v19 setObject:v17 forKeyedSubscript:v14];
        }

        v3 = theDict;
        v8 = CFDictionaryGetValue(theDict, v19);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v20 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
  v21 = v20;
  if (v8)
  {
    [v20 setObject:v8 forKeyedSubscript:*MEMORY[0x277CBFA40]];
  }

  v22 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:a1 options:v21];
  if (v22)
  {
    CleanRect = CVImageBufferGetCleanRect(a1);
    x = CleanRect.origin.x;
    y = CleanRect.origin.y;
    width = CleanRect.size.width;
    height = CleanRect.size.height;
    [v22 extent];
    v58.origin.x = v27;
    v58.origin.y = v28;
    v58.size.width = v29;
    v58.size.height = v30;
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    if (!CGRectEqualToRect(v57, v58))
    {
      v31 = [v22 imageByCroppingToRect:{x, y, width, height}];
      v32 = *(MEMORY[0x277CBF2C0] + 16);
      *&v53.a = *MEMORY[0x277CBF2C0];
      *&v53.c = v32;
      *&v53.tx = *(MEMORY[0x277CBF2C0] + 32);
      CGAffineTransformTranslate(&v54, &v53, -x, -y);
      v33 = [v31 imageByApplyingTransform:&v54];

      v22 = v33;
    }

    if (!v8)
    {
      v34 = [v22 colorSpace];
      if (v3)
      {
        if (v34)
        {
          v35 = [v22 colorSpace];
          if (v5)
          {
            v36 = v35;
            if (v35)
            {
              theDicta = v3;
              v37 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
              v38 = CFDictionaryGetValue(v5, *MEMORY[0x277CC4C88]);
              if (v38)
              {
                v39 = v38;
                if (CFDataGetLength(v38))
                {
                  goto LABEL_36;
                }
              }

              v48 = *MEMORY[0x277CC4C50];
              v50 = CFDictionaryGetValue(v5, *MEMORY[0x277CC4C50]);
              v40 = *MEMORY[0x277CC4C00];
              v41 = CFDictionaryGetValue(v5, *MEMORY[0x277CC4C00]);
              v42 = *MEMORY[0x277CC4CC0];
              v43 = CFDictionaryGetValue(v5, *MEMORY[0x277CC4CC0]);
              v44 = *MEMORY[0x277CC4D10];
              v45 = CFDictionaryGetValue(v5, *MEMORY[0x277CC4D10]);
              if (v41)
              {
                if (v43)
                {
                  v47 = v45;
                  [v37 setObject:v41 forKeyedSubscript:v40];
                  [v37 setObject:v43 forKeyedSubscript:v42];
                  if (v50)
                  {
                    [v37 setObject:v50 forKeyedSubscript:v48];
                  }

                  if (v47)
                  {
                    [v37 setObject:v47 forKeyedSubscript:v44];
                  }

                  v39 = v37;
                  if (v37)
                  {
LABEL_36:
                    CFDictionaryAddValue(theDicta, v39, v36);
                  }
                }
              }

              v3 = theDicta;
            }
          }
        }
      }
    }
  }

  else
  {
    NSLog(&cfstr_CiimageImagewi.isa);
  }

  CFRelease(v5);

  return v22;
}

double sub_24190A588(uint64_t a1, int a2)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_28537CF18;
  *(a1 + 8) = 0;
  v2 = MEMORY[0x277CC08F0];
  *(a1 + 32) = *MEMORY[0x277CC08F0];
  *(a1 + 48) = *(v2 + 16);
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 8;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  return result;
}

void *sub_24190A5E0(void *a1)
{
  *a1 = &unk_28537CF18;
  v2 = a1[12];
  if (v2)
  {
    CFRelease(v2);
    a1[12] = 0;
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_24190A648(void *a1)
{
  sub_24190A5E0(a1);

  JUMPOUT(0x245CF24E0);
}

uint64_t sub_24190A680(uint64_t a1, int a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v40 = a2;
  if (read(a2, v43, 0xCuLL) != 12)
  {
    v32 = *MEMORY[0x277D85DF8];
    v33 = "***VPHeader::read: error reading preheader\n";
    v34 = 43;
LABEL_31:
    fwrite(v33, v34, 1uLL, v32);
    return 0xFFFFFFFFLL;
  }

  v3 = v43[1];
  v4 = v43[2];
  *(a1 + 104) = bswap32(v43[0]);
  if (v3 != 150994944)
  {
    v32 = *MEMORY[0x277D85DF8];
    v33 = "***VPHeader::read: bad version\n";
    v34 = 31;
    goto LABEL_31;
  }

  v39 = &v39;
  v5 = bswap32(v4);
  MEMORY[0x28223BE20](12);
  v6 = &v39 - ((v5 + 15) & 0x1FFFFFFF0);
  if (read(v40, v6, v5) == v5)
  {
    v7 = *(v6 + 4);
    v8 = *(v6 + 5);
    v9 = bswap32(v8);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 6000;
    }

    *(a1 + 8) = vrev32q_s8(*v6);
    *(a1 + 24) = bswap32(v7);
    *(a1 + 28) = v10;
    CMTimeMake(&v42, bswap64(*(v6 + 3)), bswap32(*(v6 + 8)));
    *(a1 + 32) = v42;
    v11 = *(v6 + 36);
    *(a1 + 56) = vrev32_s8(v11);
    if (v11.i32[1])
    {
      v12 = 0;
      v13 = *(a1 + 72);
      v14 = 44;
      do
      {
        v15 = vrev32q_s8(*&v6[v14]);
        v16 = vrev32_s8(*&v6[v14 + 16]);
        v17 = bswap32(*&v6[v14 + 24]);
        v18 = *(a1 + 80);
        if (v13 >= v18)
        {
          v41 = v15;
          v19 = *(a1 + 64);
          v20 = v13 - v19;
          v21 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v19) >> 2);
          v22 = v21 + 1;
          if ((v21 + 1) > 0x924924924924924)
          {
            sub_2418D3940();
          }

          v23 = 0x6DB6DB6DB6DB6DB7 * ((v18 - v19) >> 2);
          if (2 * v23 > v22)
          {
            v22 = 2 * v23;
          }

          if (v23 >= 0x492492492492492)
          {
            v24 = 0x924924924924924;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            sub_2418FDE04(a1 + 64, v24);
          }

          v25 = 28 * v21;
          *v25 = v41;
          *(v25 + 16) = v16;
          *(v25 + 24) = v17;
          v13 = 28 * v21 + 28;
          v26 = v25 - v20;
          memcpy((v25 - v20), v19, v20);
          v27 = *(a1 + 64);
          *(a1 + 64) = v26;
          *(a1 + 72) = v13;
          *(a1 + 80) = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *v13 = v15;
          *(v13 + 16) = v16;
          *(v13 + 24) = v17;
          v13 += 28;
        }

        *(a1 + 72) = v13;
        ++v12;
        v14 += 28;
      }

      while (v12 < *(a1 + 60));
      v28 = *&v6[v14];
      *(a1 + 88) = bswap32(v28);
      if (v28 != 117440512)
      {
        return 0;
      }

      if (read(v40, v6, 4uLL) == 4)
      {
        v29 = bswap32(*v6);
        sub_2418DD198(&v42, v29);
        if (read(v40, v42.value, v29) == v29)
        {
          v30 = CFDataCreate(0, v42.value, v29);
          *(a1 + 96) = v30;
          if (v30)
          {
            if (v42.value)
            {
              *&v42.timescale = v42.value;
              operator delete(v42.value);
            }

            return 0;
          }

          v38 = "***VPHeader::read: error reading ICC profile (3)\n";
        }

        else
        {
          v38 = "***VPHeader::read: error reading ICC profile (2)\n";
        }

        fwrite(v38, 0x31uLL, 1uLL, *MEMORY[0x277D85DF8]);
        if (v42.value)
        {
          *&v42.timescale = v42.value;
          operator delete(v42.value);
        }

        return 0xFFFFFFFFLL;
      }

      v35 = *MEMORY[0x277D85DF8];
      v36 = "***VPHeader::read: error reading ICC profile (1)\n";
      v37 = 49;
    }

    else
    {
      v35 = *MEMORY[0x277D85DF8];
      v36 = "***VPHeader::read: invalid numFrames (0)\n";
      v37 = 41;
    }
  }

  else
  {
    v35 = *MEMORY[0x277D85DF8];
    v36 = "***VPHeader::read: error reading header\n";
    v37 = 40;
  }

  fwrite(v36, v37, 1uLL, v35);
  return 0xFFFFFFFFLL;
}

void sub_24190AA98(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 144);
  if (v3)
  {
    *(v1 - 136) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24190AABC(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 88) == 7 && !*(a1 + 96))
  {
    fwrite("***VPHeader::write: no ICC profile data\n", 0x28uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 24))
  {
    v4 = 28 * *(a1 + 60) + 112;
  }

  else
  {
    v4 = 112;
  }

  sub_2418DD198(__p, v4);
  v5 = __p[0];
  *__p[0] = vrev32_s8(*(a1 + 8));
  v5[2] = bswap32(*(a1 + 16));
  v5[3] = bswap32(*(a1 + 20));
  v5[4] = bswap32(*(a1 + 24));
  v5[5] = bswap32(*(a1 + 28));
  *(v5 + 3) = bswap64(*(a1 + 32));
  v5[8] = bswap32(*(a1 + 40));
  v5[9] = bswap32(*(a1 + 56));
  v6 = *(a1 + 60);
  v7 = *(a1 + 64);
  if (v6 == -1227133513 * ((*(a1 + 72) - v7) >> 2))
  {
    v5[10] = bswap32(v6);
    v8 = (v5 + 11);
    if (*(a1 + 60))
    {
      v9 = 0;
      v10 = (v7 + 24);
      do
      {
        v11 = *v10;
        v12 = *(v10 - 2);
        *v8->i8 = vrev32q_s8(*(v10 - 6));
        v8[2] = vrev32_s8(v12);
        v8[3].i32[0] = bswap32(v11);
        v8 = (v8 + 28);
        ++v9;
        v10 += 7;
      }

      while (v9 < *(a1 + 60));
    }

    v8->i32[0] = bswap32(*(a1 + 88));
    v13 = v8 - v5 + 4;
    __buf[0] = bswap32(*(a1 + 104));
    __buf[1] = 150994944;
    __buf[2] = bswap32(v13);
    if (write(a2, __buf, 0xCuLL) == 12)
    {
      if (write(a2, __p[0], v13) == v13)
      {
        if (*(a1 + 88) != 7)
        {
LABEL_15:
          v17 = 0;
          goto LABEL_21;
        }

        v14 = __p[0];
        Length = CFDataGetLength(*(a1 + 96));
        *v14 = bswap32(Length);
        if (write(a2, __p[0], 4uLL) == 4)
        {
          BytePtr = CFDataGetBytePtr(*(a1 + 96));
          if (write(a2, BytePtr, Length) == Length)
          {
            goto LABEL_15;
          }

          sub_24190AF40();
        }

        else
        {
          sub_24190AF00();
        }
      }

      else
      {
        sub_24190AEC0();
      }
    }

    else
    {
      sub_24190AE80();
    }
  }

  else
  {
    fwrite("***VPHeader::write: numPlanes/planeInfo mismatch\n", 0x31uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  v17 = 0xFFFFFFFFLL;
LABEL_21:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v17;
}

void sub_24190AD80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24190ADA8(uint64_t a1, int a2)
{
  if (lseek(a2, 12, 0) < 0)
  {
    sub_24190AFC0();
    return 0xFFFFFFFFLL;
  }

  __buf = bswap32(*(a1 + 8));
  if (write(a2, &__buf, 4uLL) != 4)
  {
    sub_24190AF80();
    return 0xFFFFFFFFLL;
  }

  return 0;
}

float sub_24190AE34(unsigned int *a1, unsigned int *a2, float a3)
{
  *a1 = vcvtps_u32_f32(*a1 / a3);
  result = *a2 / a3;
  *a2 = vcvtps_u32_f32(result);
  *a1 = (*a1 + 1) & 0xFFFFFFFE;
  *a2 = (*a2 + 1) & 0xFFFFFFFE;
  return result;
}

size_t sub_24190AFC0()
{
  perror("lseek");
  v0 = *MEMORY[0x277D85DF8];

  return fwrite("***VPHeader::finalize: Error seeking to header.\n", 0x30uLL, 1uLL, v0);
}

CVPixelBufferRef sub_24190B00C(CGImage *a1)
{
  v7 = 0;
  v5 = 0u;
  *bytesPerRow = 0u;
  v1 = sub_241906280(a1, 2, 16, 0, 1, 1, &v5, &v7);
  result = 0;
  if (!v1)
  {
    v4 = 0;
    v3 = CVPixelBufferCreateWithBytes(0, v5, *(&v5 + 1), 0x20u, v7, bytesPerRow[1], sub_24190B0C0, 0, 0, &v4);
    if (v3)
    {
      printf("***CVPixelBufferCreateWithBytes returned %d\n", v3);
      free(v7);
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

void sub_24190BF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24190BF70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_24190BF88(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) lockWhenCondition:0];
  v2 = *(*(*(a1 + 32) + 8) + 40);

  return [v2 unlockWithCondition:1];
}

uint64_t sub_24190CEA4(void *a1, void *a2, CMTime *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5 && v6)
  {
    CMTimeMake(&v10, [v5 longLongValue], objc_msgSend(v6, "intValue"));
    v8 = 0;
    *a3 = v10;
  }

  else
  {
    NSLog(&cfstr_Stabilizeparam_11.isa);
    v8 = 0xFFFFFFFFLL;
  }

  return v8;
}

void sub_24190CF60(void *a1, unint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_24190D2B0(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 60 * a2;
  }
}

void sub_24190D038(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_24190D434(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_24190D258(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x444444444444445)
  {
    operator new();
  }

  sub_2418D3A40();
}

void sub_24190D2B0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xEEEEEEEEEEEEEEEFLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 60 * ((60 * a2 - 60) / 0x3C) + 60;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xEEEEEEEEEEEEEEEFLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x444444444444444)
    {
      sub_2418D3940();
    }

    v8 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x222222222222222)
    {
      v9 = 0x444444444444444;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_24190D258(a1, v9);
    }

    v11 = 60 * v6;
    v12 = 60 * ((60 * a2 - 60) / 0x3C) + 60;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_24190D434(uint64_t a1, unint64_t a2)
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
      sub_2418D3940();
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

    if (v9)
    {
      sub_2418D39E8(a1, v9);
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
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void *sub_24190D5A8(void *result, uint64_t a2)
{
  *result = &unk_28537D2D8;
  result[1] = a2;
  result[2] = 0;
  return result;
}

void *sub_24190D5CC(uint64_t a1, void *__src, size_t __len)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = v6 + __len;
  if (v6 + __len > *(v7 + 16))
  {
    *(v7 + 8) = malloc_type_realloc(*(v7 + 8), v6 + __len, 0xD24E9298uLL);
    *(v7 + 16) = v8;
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
  }

  result = memmove((*(v7 + 8) + v6), __src, __len);
  *(a1 + 16) += __len;
  return result;
}

uint64_t sub_24190D654(void *a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = a1;
  v15 = a5;
  v16 = a8;
  if (a2 != -1 || a3)
  {
    v167 = a3;
    if (a2 == -1 || !a3)
    {
      v17 = @"vpCreateFromFile: NULL input argument";
      if (!v14 || !v15 || !a6)
      {
        goto LABEL_6;
      }

      v163 = *(a6 + 4);
      v164 = [v15 sparseFrames];
      v20 = [[VideoReader alloc] initWithAsset:v14];
      if (!v20)
      {
        v18 = 0xFFFFFFFFLL;
LABEL_182:

        goto LABEL_7;
      }

      __fd = a2;
      if ((v163 & 4) != 0)
      {
        v21 = 3588;
      }

      else
      {
        v21 = 0;
      }

      v171 = v20;
      [(VideoReader *)v20 setPixelFormatOptions:v21];
      [v15 roiStart];
      *v183 = *&v183[11];
      v183[2] = v183[13];
      [(VideoReader *)v171 setReadStartT:v183];
      memset(v183, 0, 80);
      HIDWORD(v183[0]) = [(VideoReader *)v171 imageHeight];
      v22 = [(VideoReader *)v171 imageWidth];
      LODWORD(v183[0]) = v22;
      LODWORD(v183[2]) = *a6;
      if ((*(a6 + 4) & 2) != 0)
      {
        NSLog(&cfstr_ImageSizeUwXUh.isa, v22, HIDWORD(v183[0]));
      }

      [(VideoReader *)v171 preferredTransform];
      *&v183[3] = time1;
      [v15 roiLength];
      v23 = MEMORY[0x277CC08F0];
      *&time2.a = *MEMORY[0x277CC08F0];
      time2.c = *(MEMORY[0x277CC08F0] + 16);
      if (CMTimeCompare(&time1, &time2))
      {
        [v15 roiLength];
        v181 = *&time1.a;
        c = time1.c;
        [v15 roiLength];
        Seconds = CMTimeGetSeconds(&time1);
      }

      else
      {
        [(VideoReader *)v171 trackLengthT];
        [v15 roiStart];
        CMTimeSubtract(&time1, &time2, &rhs);
        v181 = *&time1.a;
        c = time1.c;
        [(VideoReader *)v171 trackLength];
        v26 = v25;
        [v15 roiStart];
        Seconds = v26 - CMTimeGetSeconds(&time1);
      }

      [v15 cropRect];
      LODWORD(v183[1]) = v27;
      [v15 cropRect];
      HIDWORD(v183[1]) = v28;
      if (!LODWORD(v183[1]) || !v28)
      {
        v183[1] = v183[0];
      }

      if (*a6 != 1.0)
      {
        sub_24190AE34(&v183[1], (v183 | 0xC), *a6);
      }

      time1 = *&v183[3];
      if (CGAffineTransformIsIdentity(&time1))
      {
        LOBYTE(v183[9]) = 0;
      }

      else
      {
        v183[7] = 0;
        v183[8] = 0;
        LODWORD(v30) = HIDWORD(v183[1]);
        LODWORD(v29) = v183[1];
        v188.size.width = v29;
        v188.size.height = v30;
        *&time1.a = *&v183[3];
        *&time1.c = *&v183[5];
        *&time1.tx = 0u;
        v188.origin.x = 0.0;
        v188.origin.y = 0.0;
        v189 = CGRectApplyAffineTransform(v188, &time1);
        width = v189.size.width;
        height = v189.size.height;
        LODWORD(v183[1]) = v189.size.width;
        HIDWORD(v183[1]) = v189.size.height;
        time2 = *&v183[3];
        CGAffineTransformInvert(&time1, &time2);
        *&v183[3] = time1;
        v23 = MEMORY[0x277CC08F0];
        LOBYTE(v183[9]) = 1;
        if ((*(a6 + 4) & 2) != 0)
        {
          NSLog(&cfstr_XformSizeUwXUh.isa, width, height);
        }
      }

      *(a7 + 16) = vrev64_s32(v183[1]);
      *(a7 + 24) = (v163 & 4) >> 2;
      [(VideoReader *)v171 fps];
      *(a7 + 12) = v33;
      v34 = [(VideoReader *)v171 timeScale];
      if (v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = 6000;
      }

      *(a7 + 28) = v35;
      *(a7 + 32) = v181;
      *(a7 + 48) = c;
      memset(&time2, 0, 24);
      v36 = [[VideoContext alloc] initWithWriter:0 pixelFormatFlags:v21];
      if (!v36)
      {
        NSLog(&cfstr_Vpcreatefromfi_5.isa);
        v18 = 0xFFFFFFFFLL;
LABEL_179:

        if (*&time2.a)
        {
          time2.b = time2.a;
          operator delete(*&time2.a);
        }

        v20 = v171;
        goto LABEL_182;
      }

      rhs = *v23;
      v168 = v15;
      v166 = v16;
      [v15 roiLength];
      lhs = *v23;
      v37 = CMTimeCompare(&time1, &lhs);
      if (v37)
      {
        [v15 roiStart];
        [v15 roiLength];
        CMTimeAdd(&time1, &lhs, &v177);
        *&rhs.value = *&time1.a;
        rhs.epoch = *&time1.c;
        *&lhs.value = *&time1.a;
        lhs.epoch = *&time1.c;
        CMTimeConvertScale(&time1, &lhs, *(a7 + 28), kCMTimeRoundingMethod_RoundTowardZero);
        *&rhs.value = *&time1.a;
        rhs.epoch = *&time1.c;
      }

      memset(&lhs, 0, sizeof(lhs));
      v161 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
      v169 = 0;
      v176 = 0;
      v38 = 0.0;
      v165 = v37;
      while (1)
      {
        cf = 0;
        memset(&v177, 0, sizeof(v177));
        [v15 timeForFrame:v169];
        v39 = objc_autoreleasePoolPush();
        v40 = [(VideoReader *)v171 getFrameAsSampleBuf:&cf];
        memset(&v174, 0, sizeof(v174));
        [(VideoReader *)v171 lastPresentationTime];
        context = v39;
        if (!v40)
        {
          break;
        }

        if (v40 != 1)
        {
          v41 = 0;
          NSLog(&cfstr_Vpcreatefromfi_11.isa);
          goto LABEL_45;
        }

        v41 = 0;
LABEL_43:
        v42 = 2;
LABEL_46:

        objc_autoreleasePoolPop(context);
        v37 = v165;
        v15 = v168;
        v16 = v166;
        if (v42)
        {
          if (v42 == 2)
          {
            if (*(a7 + 8) == v169)
            {
              if (![v168 numFrames] || objc_msgSend(v168, "numFrames") == v169)
              {
                v18 = 0;
LABEL_178:
                sub_24190E9D0(&v176);

                goto LABEL_179;
              }

              NSLog(&cfstr_Vpcreatefromfi_13.isa);
              NSLog(&cfstr_StabparamsNumf.isa, [v168 numFrames], v169);
            }

            else
            {
              NSLog(&cfstr_Vpcreatefromfi_12.isa);
            }
          }

          v18 = 0xFFFFFFFFLL;
          goto LABEL_178;
        }
      }

      if (v37)
      {
        *&time1.a = *&v174.value;
        *&time1.c = v174.epoch;
        v173 = rhs;
        if ((CMTimeCompare(&time1, &v173) & 0x80000000) == 0)
        {
          v41 = 0;
          CFRelease(cf);
          goto LABEL_43;
        }
      }

      if (v164)
      {
        *&time1.a = *&v177.value;
        *&time1.c = v177.epoch;
        v173 = v174;
        v43 = CMTimeCompare(&time1, &v173);
        if (v43 < 0)
        {
          NSLog(&cfstr_Vpcreatefromfi_6.isa, v177.value, v177.timescale, v174.value, v174.timescale);
          CFRelease(cf);
          v41 = 0;
          goto LABEL_45;
        }

        if (v43)
        {
          CFRelease(cf);
          v41 = 0;
LABEL_52:
          if (v169 < [v168 numFrames])
          {
            goto LABEL_53;
          }

          goto LABEL_43;
        }
      }

      ImageBuffer = CMSampleBufferGetImageBuffer(cf);
      if (!ImageBuffer)
      {
        NSLog(&cfstr_Vpcreatefromfi_7.isa);
        v41 = 0;
        CFRelease(cf);
        goto LABEL_45;
      }

      v45 = v168;
      v46 = v161;
      v47 = ImageBuffer;
      v162 = v45;
      CleanRect = CVImageBufferGetCleanRect(ImageBuffer);
      v48 = CleanRect.size.width;
      v49 = CleanRect.size.height;
      if (([v45 passThrough] & 1) != 0 && (LODWORD(v50) = v183[1], v51 = v50, v48 == v51) && (LODWORD(v51) = HIDWORD(v183[1]), v49 == *&v51))
      {
        time1 = *&v183[3];
        v52 = !CGAffineTransformIsIdentity(&time1);
      }

      else
      {
        v52 = 1;
      }

      [v45 cropRect];
      if (CGRectIsEmpty(v191))
      {
        LODWORD(v54) = HIDWORD(v183[0]);
        LODWORD(v53) = v183[0];
        [v45 setCropRect:{0.0, 0.0, v53, v54}];
      }

      else
      {
        v52 = 1;
      }

      [v45 cropRect];
      LODWORD(time1.a) = v55;
      [v45 cropRect];
      LODWORD(v173.value) = v56;
      *&v57 = sub_24190AE34(&time1, &v173, *&v183[2]);
      LODWORD(v49) = v173.value;
      a_low = LODWORD(time1.a);
      [v162 cropRect];
      v59 = a_low;
      v60 = *&v49;
      v62 = v61 != a_low;
      if (v63 != v60)
      {
        v62 = 1;
      }

      if (v62 || v52)
      {
        v64 = v162;
        v65 = sub_24190A150(v47, v46);
        if ([v162 passThrough])
        {
          p_time1 = 0;
        }

        else
        {
          p_time1 = &time1;
          [v162 getFrameInfo:v169 frameInfo:&time1];
        }

        [v162 cropRect];
        v73 = sub_2419054BC(v65, p_time1, 2, &v183[3], v69, v70, v71, v72, v59, v60);
        v67 = v73;
        v68 = v73 != 0;
        if (v73)
        {
          v74 = v73;
        }

        else
        {
          NSLog(&cfstr_ErrorPeforming.isa);
        }
      }

      else
      {
        v67 = 0;
        v68 = 1;
        v64 = v162;
      }

      v41 = v67;
      v75 = @"vpCreateFromFile: Error tranforming pixel buffer for frame %u";
      if (!v68)
      {
        goto LABEL_128;
      }

      v76 = v47;
      if (v41)
      {
        if (v176)
        {
          v77 = [(VideoContext *)v36 pixelBuffer:v176 conformsToImage:v41];
          v76 = v176;
          if (!v77)
          {
            CFRelease(v176);
            [v41 extent];
            v79 = v78;
            [v41 extent];
            v81 = [(VideoContext *)v36 createPixelBuffer:v79 height:v80];
            goto LABEL_81;
          }
        }

        else
        {
          [v41 extent];
          v83 = v82;
          [v41 extent];
          v81 = [(VideoContext *)v36 createPixelBuffer:v83 height:v84];
LABEL_81:
          v76 = v81;
          v176 = v81;
        }

        if (!v76)
        {
          NSLog(&cfstr_ErrorExtractin.isa);
          goto LABEL_129;
        }

        v85 = [(VideoContext *)v36 ciCtx];
        [v85 render:v41 toCVPixelBuffer:v76];
      }

      v86 = *(a7 + 24);
      pixelBuffer = v76;
      if (*&time2.b == *&time2.a)
      {
        v193 = CVImageBufferGetCleanRect(v76);
        *(a7 + 16) = v193.size.height;
        *(a7 + 20) = v193.size.width;
        PixelFormatType = CVPixelBufferGetPixelFormatType(v76);
        *(a7 + 56) = PixelFormatType;
        if (v86)
        {
          if ((PixelFormatType | 0x10) != 0x34323076)
          {
            NSLog(&cfstr_InitheaderyuvP.isa);
            NSLog(&cfstr_Pixelformat0xX.isa, *(a7 + 56), HIBYTE(*(a7 + 56)), HIWORD(*(a7 + 56)), *(a7 + 56) >> 8, *(a7 + 56));
            goto LABEL_127;
          }

          v186 = 1;
          LODWORD(v173.value) = 1;
          v185 = 2;
          v187 = 2;
          v112 = *(a7 + 60);
          if (v112)
          {
            NSLog(&cfstr_InitheaderyuvV.isa, v112);
            goto LABEL_127;
          }

          v134 = *(a7 + 72) - *(a7 + 64);
          if (v134)
          {
            NSLog(&cfstr_InitheaderyuvV_0.isa, -1227133513 * (v134 >> 2));
            goto LABEL_127;
          }

          PlaneCount = CVPixelBufferGetPlaneCount(v76);
          if (PlaneCount != 2)
          {
            NSLog(&cfstr_InitheaderyuvE.isa, 2, PlaneCount);
LABEL_127:
            v75 = @"vpCreateFromFile: Error adding pixel buffer for frame %u";
LABEL_128:
            NSLog(&v75->isa, v169);
LABEL_129:
            CFRelease(cf);
LABEL_45:
            v42 = 1;
            goto LABEL_46;
          }

          v194 = CVImageBufferGetCleanRect(v76);
          v148 = v194.size.width;
          v149 = v194.size.height;
          v146 = 0;
          v150 = 1;
          v151 = &v173;
          v152 = &v186;
          v153 = 1;
          do
          {
            value = v151->value;
            *&time1.c = __PAIR64__(value, v153);
            LODWORD(time1.d) = *v152;
            v155 = v150;
            LODWORD(time1.a) = (v148 / value);
            HIDWORD(time1.a) = (v149 / LODWORD(time1.d));
            LODWORD(time1.b) = v153 * LODWORD(time1.a);
            HIDWORD(time1.b) = 1;
            sub_24190E9FC(a7 + 64, &time1);
            v150 = 0;
            v146 += HIDWORD(time1.a) * LODWORD(time1.b);
            v153 = 2;
            v151 = &v187;
            v152 = &v185;
          }

          while ((v155 & 1) != 0);
          *(a7 + 60) = 2;
          *(a7 + 88) = 3;
          v76 = pixelBuffer;
        }

        else
        {
          if (PixelFormatType != 1111970369 && PixelFormatType != 32)
          {
            NSLog(&cfstr_InitheaderrgbP.isa);
            NSLog(&cfstr_Pixelformat0xX.isa, *(a7 + 56), HIBYTE(*(a7 + 56)), HIWORD(*(a7 + 56)), *(a7 + 56) >> 8, *(a7 + 56));
            goto LABEL_127;
          }

          v111 = *(a7 + 60);
          if (v111)
          {
            NSLog(&cfstr_InitheaderrgbV.isa, v111);
            goto LABEL_127;
          }

          v133 = *(a7 + 72) - *(a7 + 64);
          if (v133)
          {
            NSLog(&cfstr_InitheaderrgbV_0.isa, -1227133513 * (v133 >> 2));
            goto LABEL_127;
          }

          v145 = *(a7 + 16);
          LODWORD(time1.a) = *(a7 + 20);
          HIDWORD(time1.a) = v145;
          *(&time1.b + 4) = xmmword_241911AF0;
          LODWORD(time1.b) = 3 * LODWORD(time1.a);
          sub_24190E9FC(a7 + 64, &time1);
          v146 = HIDWORD(time1.a) * LODWORD(time1.b);
          *(a7 + 60) = 1;
          *(a7 + 88) = 1;
        }

        if (v146 <= *&time2.b - *&time2.a)
        {
          if (v146 < *&time2.b - *&time2.a)
          {
            *&time2.b = *&time2.a + v146;
          }
        }

        else
        {
          sub_2418DD2D8(&time2, v146 - (*&time2.b - *&time2.a));
        }

        if (!v167)
        {
          v156 = sub_24190AABC(a7, __fd);
          v89 = @"***vpAppendFramePixBuf: error writing VPHeader";
          if (v156)
          {
LABEL_126:
            NSLog(&v89->isa);
            goto LABEL_127;
          }
        }
      }

      a = time2.a;
      v88 = CVPixelBufferLockBaseAddress(v76, 1uLL);
      v89 = @"**vpAppendFramePixBuf: error on CVPixelBufferLockBaseAddress";
      if (v88)
      {
        goto LABEL_126;
      }

      v192 = CVImageBufferGetCleanRect(v76);
      x = v192.origin.x;
      y = v192.origin.y;
      v92 = v192.size.width;
      v93 = v192.size.height;
      v157 = v36;
      if (v86)
      {
        EncodedSize = CVImageBufferGetEncodedSize(v76);
        if (*(a7 + 60))
        {
          v114 = a7;
          v115 = 0;
          v158 = v14;
          do
          {
            v116 = sub_24190AE24(v114, v115);
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, v115);
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v115);
            if (v116[1])
            {
              v119 = BytesPerRowOfPlane;
              v120 = 0;
              v121 = v116[4];
              v122 = v116[5];
              v124 = v116[2];
              v123 = v116[3];
              v125 = (v92 * v121 * v123 / v122);
              v126 = &BaseAddressOfPlane[BytesPerRowOfPlane * (EncodedSize.height - (y + v93)) / v116[6] + v121 * x * v123 / v122];
              do
              {
                memmove(*&a, v126, v125);
                *&a += v124;
                v126 += v119;
                ++v120;
              }

              while (v120 < v116[1]);
            }

            ++v115;
            v114 = a7;
            v14 = v158;
          }

          while (v115 < *(a7 + 60));
        }
      }

      else
      {
        v94 = CVImageBufferGetEncodedSize(v76).height;
        BaseAddress = CVPixelBufferGetBaseAddress(v76);
        BytesPerRow = CVPixelBufferGetBytesPerRow(v76);
        v97 = sub_24190AE24(a7, 0);
        v98 = BytesPerRow * (v94 - (y + v93));
        v99 = &BaseAddress[4 * x + v98];
        if (*(v97 + 16) == 3)
        {
          if (*(a7 + 16))
          {
            v100 = a7;
            v101 = 0;
            v102 = &BaseAddress[4 * x + 3 + v98];
            do
            {
              v103 = v100[14];
              if (v103 == 1111970369)
              {
                if (v100[5])
                {
                  v108 = 0;
                  v109 = 0;
                  v100 = a7;
                  do
                  {
                    **&a = v99[v108];
                    *(*&a + 1) = v99[v108 + 1];
                    *&v107 = *&a + 3;
                    *(*&a + 2) = v99[v108 + 2];
                    ++v109;
                    v108 += 4;
                    *&a += 3;
                  }

                  while (v109 < *(a7 + 20));
                  goto LABEL_101;
                }
              }

              else
              {
                if (v103 != 32)
                {
                  NSLog(&cfstr_InternalErrorI_1.isa);
                  goto LABEL_127;
                }

                if (*(a7 + 20))
                {
                  v104 = 0;
                  v105 = v102;
                  v100 = a7;
                  do
                  {
                    **&a = *(v105 - 2);
                    *(*&a + 1) = *(v105 - 1);
                    v106 = *v105;
                    v105 += 4;
                    *&v107 = *&a + 3;
                    *(*&a + 2) = v106;
                    ++v104;
                    *&a += 3;
                  }

                  while (v104 < *(a7 + 20));
                  goto LABEL_101;
                }
              }

              v107 = a;
              v100 = a7;
LABEL_101:
              v99 += BytesPerRow;
              ++v101;
              v102 += BytesPerRow;
              a = v107;
            }

            while (v101 < v100[4]);
          }
        }

        else if (*(a7 + 16))
        {
          v127 = 0;
          v128 = *(v97 + 8);
          v129 = vcvtd_n_u64_f64(v92, 2uLL);
          do
          {
            memmove(*&a, v99, v129);
            *&a += v128;
            v99 += BytesPerRow;
            ++v127;
          }

          while (v127 < *(a7 + 16));
        }
      }

      v36 = v157;
      v130 = v162;
      v131 = CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
      v89 = @"**vpAppendFramePixBuf: error on CVPixelBufferUnlockBaseAddress";
      if (v131)
      {
        goto LABEL_126;
      }

      v132 = *&time2.b - *&time2.a;
      if (v167)
      {
        sub_24190D5CC(v167, *&time2.a, v132);
      }

      else
      {
        v135 = write(__fd, *&time2.a, v132);
        if (v135 != *&time2.b - *&time2.a)
        {
          perror("write");
          NSLog(&cfstr_Vpappendframep_2.isa);
          goto LABEL_127;
        }
      }

      ++*(a7 + 8);
      CFRelease(cf);
      if (!v169)
      {
        v136 = [v162 numFrames];
        if (v167)
        {
          if (v136)
          {
            v138 = time2.a;
            b = time2.b;
            v139 = (*&b - *&v138) * [v162 numFrames];
            v140 = *(v167 + 8);
            *(v140 + 8) = malloc_type_realloc(*(v140 + 8), v139, 0xD24E9298uLL);
            *(v140 + 16) = v139;
            v130 = v162;
          }
        }
      }

      if ((v163 & 0x10) != 0)
      {
        [v130 timeForFrame:v169];
        *&lhs.value = *&time1.a;
        v141 = time1.c;
      }

      else
      {
        *&lhs.value = *&v174.value;
        v141 = *&v174.epoch;
      }

      *&lhs.epoch = v141;
      sub_24190EB1C(a4, &lhs.value);
      if (v166)
      {
        *&time1.a = *&lhs.value;
        *&time1.c = lhs.epoch;
        v142 = CMTimeGetSeconds(&time1);
        if (v38 == 0.0)
        {
          v143 = 0;
          v38 = v142;
        }

        else
        {
          v144 = ((v142 - v38) / Seconds * 100.0);
          v143 = v144 >= 0x64 ? 100 : v144;
        }

        if ([v166 vpcCallback:v143])
        {
          NSLog(&cfstr_Vpcreatefromfi_10.isa);
          goto LABEL_45;
        }
      }

      v169 = (v169 + 1);
      if (!v164)
      {
LABEL_53:
        v42 = 0;
        goto LABEL_46;
      }

      goto LABEL_52;
    }
  }

  v17 = @"vpCreateFromFileCommon: multiple destinations, internal error";
LABEL_6:
  NSLog(&v17->isa);
  v18 = 0xFFFFFFFFLL;
LABEL_7:

  return v18;
}

void sub_24190E834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, const void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50)
{
  __cxa_end_catch();

  sub_24190E9D0(&a41);
  if (__p)
  {
    a50 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24190E9D0(const void **a1)
{
  if (a1)
  {
    v1 = *a1;
    if (v1)
    {
      CFRelease(v1);
    }
  }
}

void sub_24190E9FC(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if ((v8 + 1) > 0x924924924924924)
    {
      sub_2418D3940();
    }

    v10 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x492492492492492)
    {
      v11 = 0x924924924924924;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2418FDE04(a1, v11);
    }

    v12 = 28 * v8;
    v13 = *a2;
    *(v12 + 12) = *(a2 + 12);
    *v12 = v13;
    v7 = 28 * v8 + 28;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 12) = *(a2 + 12);
    *v5 = v6;
    v7 = v5 + 28;
  }

  *(a1 + 8) = v7;
}

void sub_24190EB1C(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2418D3940();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2418D39E8(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void sub_24190EC24(__int128 **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2 & 0x1F) != 0)
  {

    sub_24190F0EC(a2, a3);
    return;
  }

  if (!a1 || (v5 = *a1, (v6 = a1[1] - *a1) == 0) || (v7 = -1431655765 * (v6 >> 3), v7 <= 2))
  {
LABEL_8:
    *(a3 + 16) = 0;
    *a3 = xmmword_241911B58;
    return;
  }

  memset(&v38, 0, sizeof(v38));
  lhs = *(v5 + 1);
  v8 = *v5;
  rhs.epoch = *(v5 + 2);
  *&rhs.value = v8;
  CMTimeSubtract(&v38, &lhs, &rhs);
  v9 = 0;
  v10 = v7 - 2;
  do
  {
    memset(&lhs, 0, sizeof(lhs));
    v11 = *a1 + v9;
    v12 = *(v11 + 64);
    *&rhs.value = *(v11 + 48);
    rhs.epoch = v12;
    v13 = *(v11 + 24);
    time2.epoch = *(v11 + 40);
    *&time2.value = v13;
    CMTimeSubtract(&lhs, &rhs, &time2);
    rhs = lhs;
    time2 = v38;
    if (CMTimeCompare(&rhs, &time2))
    {
      v14 = v7 - 1;
      v15 = MEMORY[0x277CC0888];
      sub_2418DF154(&lhs, v14);
      value = lhs.value;
      v17 = *&lhs.timescale;
      if (*&lhs.timescale == lhs.value)
      {
        v28 = 0xAAAAAAAAAAAAAAABLL * ((*&lhs.timescale - lhs.value) >> 3);
      }

      else
      {
        v18 = 0;
        v19 = 1;
        do
        {
          memset(&rhs, 0, sizeof(rhs));
          v20 = *a1;
          v21 = *a1 + 24 * v19;
          v22 = *(v21 + 16);
          *&time2.value = *v21;
          time2.epoch = v22;
          v23 = (v20 + 24 * v18);
          v24 = *v23;
          v34.epoch = *(v23 + 2);
          *&v34.value = v24;
          CMTimeSubtract(&rhs, &time2, &v34);
          v25 = lhs.value + 24 * v18;
          v26 = v19;
          v27 = *&rhs.value;
          *(v25 + 16) = rhs.epoch;
          *v25 = v27;
          value = lhs.value;
          v17 = *&lhs.timescale;
          v28 = 0xAAAAAAAAAAAAAAABLL * ((*&lhs.timescale - lhs.value) >> 3);
          ++v19;
          v18 = v26;
        }

        while (v28 > v26);
      }

      v29 = 126 - 2 * __clz(v28);
      if (v17 == value)
      {
        v30 = 0;
      }

      else
      {
        v30 = v29;
      }

      sub_2418FB29C(value, v17, v30, 1);
      rhs = *(lhs.value + 24 * ((0xAAAAAAAAAAAAAAABLL * ((*&lhs.timescale - lhs.value) >> 3)) >> 1));
      time2 = rhs;
      v31 = 1.0 / CMTimeGetSeconds(&time2);
      *a3 = *v15;
      *(a3 + 16) = *(v15 + 16);
      if (v31 >= 20.0)
      {
        if (v31 < 23.5 || v31 > 24.5)
        {
          if (v31 <= 24.5 || v31 > 25.5)
          {
            if (v31 >= 29.5 && v31 < 30.0)
            {
              *(a3 + 16) = 0;
              v32 = &xmmword_241911B58;
            }

            else if (v31 < 30.0 || v31 >= 30.2)
            {
              if (v31 < 119.0 || v31 >= 121.0)
              {
                if (v31 < 238.0 || v31 >= 242.0)
                {
                  if ((~*(a3 + 12) & 0x11) == 0)
                  {
                    CMTimeMakeWithSeconds(&time2, 1.0 / v31, 2400);
                    *a3 = time2;
                  }

                  goto LABEL_42;
                }

                *(a3 + 16) = 0;
                v32 = &xmmword_241911C00;
              }

              else
              {
                *(a3 + 16) = 0;
                v32 = &xmmword_241911BE8;
              }
            }

            else
            {
              *(a3 + 16) = 0;
              v32 = &xmmword_241911BD0;
            }
          }

          else
          {
            *(a3 + 16) = 0;
            v32 = &xmmword_241911BB8;
          }
        }

        else
        {
          *(a3 + 16) = 0;
          v32 = &xmmword_241911BA0;
        }
      }

      else
      {
        *(a3 + 16) = 0;
        v32 = &xmmword_241911B88;
      }

      *a3 = *v32;
LABEL_42:
      if (lhs.value)
      {
        *&lhs.timescale = lhs.value;
        operator delete(lhs.value);
      }

      return;
    }

    v9 += 24;
    --v10;
  }

  while (v10);
  lhs = v38;
  *&rhs.value = xmmword_241911B70;
  rhs.epoch = 0;
  if (!CMTimeCompare(&lhs, &rhs))
  {
    goto LABEL_8;
  }

  if (!v38.value)
  {
    fwrite("***nftInferNormFrameTime: constant zero duration\n", 0x31uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  *a3 = v38;
}

void sub_24190F0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_24190F0EC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 4) != 0)
  {
    *(a2 + 16) = 0;
    v5 = &xmmword_241911B58;
  }

  else if ((a1 & 2) != 0)
  {
    *(a2 + 16) = 0;
    v5 = &xmmword_241911BD0;
  }

  else if (a1)
  {
    *(a2 + 16) = 0;
    v5 = &xmmword_241911B88;
  }

  else if ((a1 & 8) != 0)
  {
    *(a2 + 16) = 0;
    v5 = &xmmword_241911BB8;
  }

  else
  {
    if ((a1 & 0x10) == 0)
    {
      NSLog(&cfstr_Nftframetimefr.isa, a1);
      v3 = MEMORY[0x277CC08F0];
      result = *MEMORY[0x277CC08F0];
      *a2 = *MEMORY[0x277CC08F0];
      *(a2 + 16) = *(v3 + 16);
      return result;
    }

    *(a2 + 16) = 0;
    v5 = &xmmword_241911BA0;
  }

  result = *v5;
  *a2 = *v5;
  return result;
}

uint64_t sub_24190F1A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 16) = *(result + 16);
  *a2 /= 4;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CMVideoFormatDescriptionGetCleanAperture(CMVideoFormatDescriptionRef videoDesc, Boolean originIsAtTopLeft)
{
  MEMORY[0x2821123D0](videoDesc, originIsAtTopLeft);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CMVideoFormatDescriptionGetPresentationDimensions(CMVideoFormatDescriptionRef videoDesc, Boolean usePixelAspectRatio, Boolean useCleanAperture)
{
  MEMORY[0x282112400](videoDesc, usePixelAspectRatio, useCleanAperture);
  result.height = v4;
  result.width = v3;
  return result;
}

CGRect CVImageBufferGetCleanRect(CVImageBufferRef imageBuffer)
{
  MEMORY[0x282114C00](imageBuffer);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGSize CVImageBufferGetEncodedSize(CVImageBufferRef imageBuffer)
{
  MEMORY[0x282114C10](imageBuffer);
  result.height = v2;
  result.width = v1;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}