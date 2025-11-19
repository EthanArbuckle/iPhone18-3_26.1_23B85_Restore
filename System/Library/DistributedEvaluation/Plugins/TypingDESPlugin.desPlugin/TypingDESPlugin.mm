uint64_t sub_D38(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

TI::CP::ContinuousPathTestResult *TI::CP::ContinuousPathTestResult::ContinuousPathTestResult(TI::CP::ContinuousPathTestResult *this, int a2, const KB::String *a3, const KB::CandidateCollection *a4, int a5, char a6)
{
  *this = a2;
  KB::String::String((this + 8), a3);
  sub_3434(this + 5, a4);
  *(this + 36) = a5;
  *(this + 24) = 0;
  *(this + 23) = 0;
  *(this + 22) = this + 184;
  *(this + 200) = vdupq_n_s64(0xFFF0000000000000);
  *(this + 216) = a6;
  *(this + 217) = 0;
  return this;
}

{
  *this = a2;
  KB::String::String((this + 8), a3);
  sub_3434(this + 5, a4);
  *(this + 36) = a5;
  *(this + 24) = 0;
  *(this + 23) = 0;
  *(this + 22) = this + 184;
  *(this + 200) = vdupq_n_s64(0xFFF0000000000000);
  *(this + 216) = a6;
  *(this + 217) = 0;
  return this;
}

void TI::CP::TestCaseConverter::create_testcase_converter(TI::CP::TestCaseConverter *this, NSString *a2)
{
  v2 = this;
  KB::String::String(v10);
  KB::String::String(&v11);
  KB::String::String(&v12);
  KB::String::String(&v13);
  KB::String::String(v14);
  v3 = UIKeyboardStaticUnigramsFile();
  KB::utf8_string(__p, v3, v4);
  KB::String::operator=();
  KB::String::~String(__p);

  v5 = [TIInputMode inputModeWithIdentifier:v2];
  v6 = UIKeyboardDeltaLexiconPathForInputMode();
  KB::utf8_string(__p, v6, v7);
  KB::String::operator=();
  KB::String::~String(__p);

  [(TI::CP::TestCaseConverter *)v2 UTF8String];
  v14[8] = TILexiconIDForLocaleIdentifier();
  v14[10] = 1065353216;
  __createAndLoadLanguageModel(&v8, v2, 0, 0);
  operator new();
}

_BYTE *sub_1040(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2FE8();
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

char *TI::CP::TestCaseConverter::TestCaseConverter(char *__dst, __int128 *a2, void *a3, int a4)
{
  v8 = a2 + 23;
  if (*(a2 + 23) < 0)
  {
    sub_3CDC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v9;
  }

  v10 = a3[1];
  *(__dst + 3) = *a3;
  *(__dst + 4) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(__dst + 40) = 0u;
  *(__dst + 9) = 0;
  *(__dst + 56) = 0u;
  *(__dst + 20) = 1065353216;
  if (!a4)
  {
    sub_A4A4(v8, a2);
  }

  sub_A514(v8, a2, __dst + 5);
  return __dst;
}

void TI::CP::createAndLoadStaticDictionaryContainer(TI::CP *this, NSString *a2)
{
  v2 = this;
  KB::String::String(v11);
  KB::String::String(v12);
  KB::String::String(v13);
  KB::String::String(v14);
  KB::String::String(v15);
  v3 = UIKeyboardStaticUnigramsFile();
  KB::utf8_string(v5, v3, v4);
  KB::String::operator=();
  KB::String::~String(v5);

  [(TI::CP *)v2 UTF8String];
  LODWORD(v16) = TILexiconIDForLocaleIdentifier();
  KB::String::String(v5, v11);
  KB::String::String(&v6, v12);
  KB::String::String(&v7, v13);
  KB::String::String(&v8, v14);
  KB::String::String(v9, v15);
  v9[4] = v16;
  v10 = v17;
  operator new();
}

id TI::CP::TestCaseConverter::set_layouts(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_9CBC;
  v3[3] = &unk_10508;
  v3[4] = a1;
  return [a2 enumerateObjectsUsingBlock:v3];
}

void TI::CP::TestCaseConverter::compute_linguistic_context_and_stem(TI::CP::TestCaseConverter *this@<X0>, NSString *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v26 = 0;
  v27 = &v26;
  v28 = 0x4012000000;
  v29 = sub_3D80;
  v30 = nullsub_1;
  v31 = "";
  v32 = xmmword_D460;
  v6 = v5;
  v7 = [(NSString *)v6 length];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_3D90;
  v39[3] = &unk_10590;
  v39[4] = &v26;
  [(NSString *)v6 enumerateSubstringsInRange:0 options:v7 usingBlock:771, v39];

  v9 = v27[6];
  v8 = v27[7];
  _Block_object_dispose(&v26, 8);
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || v8 + v9 != [(NSString *)v6 length])
  {
    v13 = 0;
  }

  else
  {
    v10 = [(NSString *)v6 substringWithRange:v9, v8];
    v11 = [v10 lowercaseString];
    v12 = [&off_10B98 containsObject:v11];

    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10;
      v14 = [(NSString *)v6 substringToIndex:v9];

      v6 = v14;
    }
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x9812000000;
  v29 = sub_1890;
  v30 = sub_189C;
  v31 = "";
  v32 = 0u;
  __p = 0u;
  v34 = 0u;
  v35 = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext(&v36);
  language_modeling::v1::LinguisticContext::LinguisticContext(&v37);
  memset(v38, 0, sizeof(v38));
  if (*(this + 3))
  {
    v16 = [(NSString *)v6 UTF8String];
    v17 = this;
    if (*(this + 23) < 0)
    {
      v17 = *this;
    }

    v18 = [NSString stringWithUTF8String:v17];
    v19 = [NSLocale localeWithLocaleIdentifier:v18];

    if (*(this + 23) < 0)
    {
      v20 = *this;
    }

    TILexiconIDForLocaleIdentifier();
    if ([(NSString *)v6 length])
    {
      LMStreamTokenizerCreate();
      strlen(v16);
      v24 = v19;
      v25 = v6;
      LMStreamTokenizerPushBytes();
      LMStreamTokenizerRelease();
    }

    else
    {
      KB::String::String(v39, &unk_D5DE);
      KB::LanguageModelContext::append();
      KB::String::~String(v39);
    }

    v23 = v27;
    KB::utf8_string(v39, v13, v21);
    sub_313C(a3, (v23 + 6));
    KB::String::String();
    KB::String::~String(v39);
  }

  else
  {
    v22 = v27;
    KB::utf8_string(v39, v13, v15);
    sub_313C(a3, (v22 + 6));
    KB::String::String();
    KB::String::~String(v39);
  }

  _Block_object_dispose(&v26, 8);
  v39[0] = v38;
  sub_3E44(v39);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v37);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v36);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (*(&v32 + 1))
  {
    sub_3EE8(*(&v32 + 1));
  }
}

void sub_189C(uint64_t a1)
{
  v4 = (a1 + 128);
  sub_3E44(&v4);
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 120));
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 112));
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_3EE8(v3);
  }
}

void sub_1900(uint64_t a1, NSString *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    LODWORD(v5) = a4;
    v6 = *(a1 + 64);
  }

  else
  {
    v7 = *(a1 + 56);
    v8 = [[NSString alloc] initWithBytes:a2 length:a3 encoding:4];
    KB::String::String(v14);
    v9 = *(v7 + 24);
    v10 = *(*(a1 + 48) + 8);
    v11 = *(a1 + 32);
    v5 = KB::LanguageModel::find_token_id_for_word() >> 32;
    KB::String::~String(v14);
  }

  if (v5 != 2)
  {
    v12 = *(a1 + 40);
    v13 = *(*(a1 + 48) + 8);
    KB::utf8_string(v14, v12, a2);
    KB::LanguageModelContext::append();
    KB::String::~String(v14);
  }
}

double TI::CP::TestResultsSummarizer::TestResultsSummarizer(TI::CP::TestResultsSummarizer *this, char a2, char a3, char a4)
{
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = 0;
  *(this + 48) = 1065353216;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 33) = 0;
  *(this + 35) = 0xC010000000000000;
  *(this + 36) = 0x4008000000000000;
  *(this + 37) = 0;
  *(this + 76) = 0;
  *(this + 96) = a2;
  *(this + 128) = a3;
  *(this + 97) = a4;
  return result;
}

{
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = 0;
  *(this + 48) = 1065353216;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 33) = 0;
  *(this + 35) = 0xC010000000000000;
  *(this + 36) = 0x4008000000000000;
  *(this + 37) = 0;
  *(this + 76) = 0;
  *(this + 96) = a2;
  *(this + 128) = a3;
  *(this + 97) = a4;
  return result;
}

void TI::CP::TestResultsSummarizer::add_result(TI::CP::TestResultsSummarizer *this, const TI::CP::ContinuousPathTestResult *a2)
{
  ++*(this + 23);
  v4 = *(a2 + 36);
  if (v4 == -1)
  {
    ++*(this + 21);
  }

  else if (v4)
  {
    if (v4 > 3)
    {
      if (v4 > 0x27)
      {
        ++*(this + 22);
      }

      else
      {
        ++*(this + 20);
      }
    }

    else
    {
      ++*(this + 19);
    }
  }

  else
  {
    ++*(this + 18);
  }

  v5 = *(a2 + 19);
  v6 = *(a2 + 20);
  *(this + 15) = v5 + *(this + 15);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    *(this + 13) = v5 - v6 + *(this + 13);
  }

  if ((*(a2 + 21) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    *(this + 14) = v5 - *(a2 + 21) + *(this + 14);
  }

  if (*(this + 128) == 1 && *(a2 + 36))
  {
    sub_1E1C(this + 136, a2);
  }

  if (*(a2 + 217) == 1)
  {
    ++*(this + 76);
  }

  if (*(a2 + 219) == 1)
  {
    ++*(this + 75);
  }

  if (*(a2 + 218) == 1)
  {
    ++*(this + 74);
  }

  if (v4 == -1)
  {
    v7 = *(this + 35);
  }

  else
  {
    v7 = *(this + 35) * (v4 / (*(this + 36) + v4));
  }

  *(this + 34) = v7 + *(this + 34);
  v8 = *(a2 + 36);
  v10 = *(this + 32);
  v9 = *(this + 33);
  if (v10 >= v9)
  {
    v12 = *(this + 31);
    v13 = v10 - v12;
    v14 = (v10 - v12) >> 2;
    v15 = v14 + 1;
    if ((v14 + 1) >> 62)
    {
      sub_2FE8();
    }

    v16 = v9 - v12;
    if (v16 >> 1 > v15)
    {
      v15 = v16 >> 1;
    }

    v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
    v18 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v17)
    {
      v18 = v15;
    }

    if (v18)
    {
      sub_30F4(this + 248, v18);
    }

    v19 = (v10 - v12) >> 2;
    v20 = (4 * v14);
    v21 = (4 * v14 - 4 * v19);
    *v20 = v8;
    v11 = v20 + 1;
    memcpy(v21, v12, v13);
    v22 = *(this + 31);
    *(this + 31) = v21;
    *(this + 32) = v11;
    *(this + 33) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v10 = v8;
    v11 = v10 + 4;
  }

  *(this + 32) = v11;
  if (*(this + 97) == 1)
  {
    v23 = *(a2 + 36);
    if (v23 <= 3)
    {
      v24 = *(*(a2 + 5) + 1000 * v23 + 984);
      v25 = [v24 allKeys];
      if ([v25 count] == &dword_0 + 1)
      {
        if (!*(a2 + 36))
        {
          sub_1E1C(this + 200, a2);
          v26 = [v25 firstObject];
          sub_1040(__p, [v26 UTF8String]);
          v30 = __p;
          v27 = sub_58F0(this + 20, __p);
          sub_1E1C((v27 + 5), a2);
          if (v29 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_1E1C(this + 224, a2);
      }
    }
  }
}

uint64_t sub_1E1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = sub_407C(a1, a2);
  }

  else
  {
    *v4 = *a2;
    KB::String::String((v4 + 8), (a2 + 8));
    sub_3434((v4 + 40), (a2 + 40));
    v5 = *(a2 + 144);
    v6 = *(a2 + 160);
    *(v4 + 184) = 0;
    *(v4 + 176) = v4 + 184;
    v7 = v4 + 176;
    *(v7 - 32) = v5;
    *(v7 - 16) = v6;
    *(v7 + 16) = 0;
    sub_41E0(v7, *(a2 + 176), (a2 + 184));
    v8 = *(a2 + 200);
    *(v7 + 36) = *(a2 + 212);
    *(v7 + 24) = v8;
    result = v7 + 56;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t TI::CP::TestResultsSummarizer::summarize_results(uint64_t a1, const char *a2, const char *a3)
{
  v3 = a3;
  v4 = a2;
  v6 = *(a1 + 72);
  v7 = *(a1 + 92);
  v8 = v7;
  v9 = *(a1 + 76) + v6;
  v10 = *(a1 + 80) + v9;
  *(a1 + 76) = v9;
  *(a1 + 80) = v10;
  v11 = a3;
  if (a3[23] < 0)
  {
    v11 = *a3;
  }

  v12 = v9;
  v13 = a2;
  if (a2[23] < 0)
  {
    v13 = *a2;
  }

  v14 = v12 * 100.0;
  printf("%s %s top candidate hit rate: %f%%, %g%% (%d/%d)\n", v11, v13, v6 * 100.0 / v8, 100.0 - v6 * 100.0 / v8, v6, v7);
  v15 = v3;
  if (v3[23] < 0)
  {
    v15 = *v3;
  }

  v16 = v4;
  if (v4[23] < 0)
  {
    v16 = *v4;
  }

  printf("%s %s top-4 candidate hit rate: %f%%, %g%% (%d/%d)\n", v15, v16, v14 / v8, 100.0 - v14 / v8, *(a1 + 76), *(a1 + 92));
  v17 = v3;
  if (v3[23] < 0)
  {
    v17 = *v3;
  }

  v18 = v4;
  if (v4[23] < 0)
  {
    v18 = *v4;
  }

  printf("%s %s top-40 candidate hit rate: %f%%, %g%% (%d/%d)\n", v17, v18, v10 * 100.0 / v8, 100.0 - v10 * 100.0 / v8, *(a1 + 80), *(a1 + 92));
  if (*(a1 + 96) == 1)
  {
    printf("top1 path saved: %g/%g (%g%% of total)\n", *(a1 + 104), *(a1 + 120), *(a1 + 104) * 100.0 / *(a1 + 120));
    printf("top3 path saved: %g/%g (%g%% of total)\n", *(a1 + 112), *(a1 + 120), *(a1 + 112) * 100.0 / *(a1 + 120));
  }

  if (*(a1 + 128) == 1)
  {
    puts("Failing cases:");
    v20 = *(a1 + 136);
    for (i = *(a1 + 144); v20 != i; v20 += 58)
    {
      v22 = *(v20 + 5);
      if (v22 == *(v20 + 6))
      {
        KB::String::String(&v36, "(null)");
      }

      else
      {
        KB::Candidate::capitalized_string(&v36, v22);
      }

      v23 = *v20;
      if (*(v20 + 4))
      {
        v24 = *(v20 + 2);
        if (!v24)
        {
          v24 = (v20 + 6);
        }
      }

      else
      {
        v24 = &unk_D5DE;
      }

      v25 = v37;
      if (!v37)
      {
        v25 = &v38;
      }

      if (v36)
      {
        v26 = v25;
      }

      else
      {
        v26 = &unk_D5DE;
      }

      printf("[%d] expected='%s' observed='%s'\n", *v20, v24, v26);
      KB::String::~String(&v36);
    }

    putchar(10);
  }

  v27 = *(a1 + 304);
  LODWORD(v19) = *(a1 + 92);
  v28 = v19;
  v29 = *(a1 + 296);
  if (v3[23] < 0)
  {
    v3 = *v3;
  }

  v30 = v27 * 100.0 / v28;
  v31 = v29 * 100.0 / v28;
  v32 = *(a1 + 300) * 100.0 / v28;
  if (v4[23] < 0)
  {
    v4 = *v4;
  }

  result = printf("%s %s Confidence hit rate: %f%% (%d), false-low-conf: %f%% (%d), false-high-conf: %f%% (%d))\n", v3, v4, v30, v27, v31, v29, v32, *(a1 + 300));
  if (*(a1 + 97) == 1)
  {
    for (j = *(a1 + 176); j; j = *j)
    {
      v35 = (j + 2);
      if (*(j + 39) < 0)
      {
        v35 = *v35;
      }

      printf("algo: %s, helped: %lu\n", v35, 0x34F72C234F72C235 * ((j[6] - j[5]) >> 3));
    }

    printf("base recognizer index matches top1: %lu\n", 0x34F72C234F72C235 * ((*(a1 + 56) - *(a1 + 48)) >> 3));
    printf("base recognizer index is higher than top1: %lu\n", 0x34F72C234F72C235 * ((*(a1 + 8) - *a1) >> 3));
    return printf("top1 not in base recognizer: %lu\n", 0x34F72C234F72C235 * ((*(a1 + 32) - *(a1 + 24)) >> 3));
  }

  return result;
}

uint64_t TI::CP::TestResultsSummarizer::dump_match_indices(TI::CP::TestResultsSummarizer *this)
{
  v1 = *(this + 31);
  v2 = *(this + 32);
  while (v1 != v2)
  {
    v4 = *v1++;
    v3 = v4;
    v5 = v4 + 48;
    if (v4 >= 0xA)
    {
      v5 = 62;
    }

    if (v3 == -1)
    {
      v6 = 109;
    }

    else
    {
      v6 = v5;
    }

    putchar(v6);
  }

  return putchar(10);
}

uint64_t TI::CP::get_touch_stage(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (TI::CP::operator==())
  {
    return 0;
  }

  v5 = a2[1];
  if (TI::CP::operator==())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

__n128 sub_23C8(void *a1, uint64_t a2)
{
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = *(a2 + 48);
  *(a2 + 48) = 0;
  result = *(a1 + 7);
  *(a1 + 7) = *(a2 + 56);
  *(a2 + 56) = result;
  return result;
}

void TI::CP::createAndLoadDictionaryContainerMultiLexicon(TI::CP *this@<X0>, NSString *a2@<X1>, NSString *a3@<X2>, float a4@<S0>, uint64_t a5@<X8>)
{
  v13 = a5;
  v9 = this;
  v10 = a2;
  if (a3)
  {
    v11 = UIKeyboardDynamicDictionaryFile();
    v12 = UIKeyboardDynamicDictionaryFile();
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v14 = v11;
  TI::CP::getLexiconInfo(v9, v11, 1.0 - a4, v33);
  TI::CP::getLexiconInfo(v10, v12, a4, v27);
  KB::String::String(v15, v33);
  KB::String::String(&v16, &v34);
  KB::String::String(&v17, &v35);
  KB::String::String(&v18, &v36);
  KB::String::String(v19, v37);
  v19[4] = v37[4];
  v20 = v38;
  KB::String::String(&v21, v27);
  KB::String::String(&v22, &v28);
  KB::String::String(&v23, &v29);
  KB::String::String(&v24, &v30);
  KB::String::String(v25, v31);
  v25[4] = v31[4];
  v26 = v32;
  operator new();
}

void TI::CP::getLexiconInfo(TI::CP *this@<X0>, NSString *a2@<X1>, float a3@<S0>, uint64_t a4@<X8>)
{
  v8 = a2;
  v9 = this;
  v18 = unigramsFilePathForInputMode();
  v10 = deltaUnigramsFilePathForInputMode();
  v11 = phrasesFilePathForInputMode();
  v12 = dynamicFilePathForInputMode();

  [(TI::CP *)v9 UTF8String];
  LODWORD(v8) = TILexiconIDForLocaleIdentifier();
  KB::utf8_string(v9, v13);

  KB::utf8_string(v18, v14);
  KB::utf8_string(v10, v15);
  KB::utf8_string(v11, v16);
  KB::utf8_string(v12, v17);
  *(a4 + 160) = v8;
  *(a4 + 164) = 0;
  *(a4 + 168) = a3;
}

void TI::CP::createAndLoadLanguageModelContainer(TI::CP *this, NSString *a2, NSString *a3, float a4, NSString *a5)
{
  v7 = this;
  v8 = a2;
  TI::CP::createAndLoadLanguageModel(v7, a3, (&dword_0 + 1));
}

void TI::CP::createAndLoadLanguageModel(TI::CP *this, NSString *a2, NSString *a3)
{
  v4 = a2;
  v5 = this;
  v6 = [NSLocale localeWithLocaleIdentifier:v5];
  v7 = [TIInputMode inputModeWithIdentifier:v5];
  v8 = v6;
  [NSArray arrayWithObjects:&v8 count:1];
  objc_claimAutoreleasedReturnValue();
  [v7 doesSupportInlineCompletion];
  KB::LanguageModelConfig::LanguageModelConfig();
  operator new();
}

void TI::CP::createAndLoadDictionaryContainer(TI::CP *this, NSString *a2, NSString *a3)
{
  v4 = this;
  if (a2)
  {
    a2 = UIKeyboardDynamicDictionaryFile();
  }

  TI::CP::getLexiconInfo(v4, a2, 1.0, v11);
  KB::String::String(v5, v11);
  KB::String::String(&v6, &v12);
  KB::String::String(&v7, &v13);
  KB::String::String(&v8, &v14);
  KB::String::String(v9, v15);
  v9[4] = v15[4];
  v10 = v16;
  operator new();
}

void *sub_2F28(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_2F9C(result, 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4));
  }

  return result;
}

void sub_2F9C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_2FF8(a1, a2);
  }

  sub_2FE8();
}

void sub_2FF8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_2FE8();
}

void *sub_3050(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_30B8(result, (v2 - *a2) >> 2);
  }

  return result;
}

void sub_30B8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_30F4(a1, a2);
  }

  sub_2FE8();
}

void sub_30F4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_2FE8();
}

uint64_t sub_313C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_31D8((a1 + 16), (a2 + 16));
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 64), (a2 + 64));
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 72), (a2 + 72));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  sub_32C4(a1 + 80, *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  return a1;
}

void *sub_31D8(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_3240(result, (v2 - *a2) >> 3);
  }

  return result;
}

void sub_3240(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_327C(a1, a2);
  }

  sub_2FE8();
}

void sub_327C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2FE8();
}

uint64_t sub_32C4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_331C(result, a4);
  }

  return result;
}

void sub_331C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_3368(a1, a2);
  }

  sub_2FE8();
}

void sub_3368(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2FE8();
}

char *sub_33C0(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_3CDC(__dst, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(__dst + 2) = *(v6 + 2);
        *__dst = v7;
      }

      v6 = (v6 + 24);
      __dst += 24;
    }

    while (v6 != a3);
  }

  return __dst;
}

void *sub_3434(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_34FC(a1, *a2, a2[1], 0x1CAC083126E978D5 * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_34FC((a1 + 3), a2[3], a2[4], 0x1CAC083126E978D5 * ((a2[4] - a2[3]) >> 3));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_34FC((a1 + 6), a2[6], a2[7], 0x1CAC083126E978D5 * ((a2[7] - a2[6]) >> 3));
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_34FC((a1 + 9), a2[9], a2[10], 0x1CAC083126E978D5 * ((a2[10] - a2[9]) >> 3));
  a1[12] = a2[12];
  return a1;
}

uint64_t sub_34FC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_3560(result, a4);
  }

  return result;
}

void sub_3560(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x4189374BC6A7F0)
  {
    sub_35B0(a1, a2);
  }

  sub_2FE8();
}

void sub_35B0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x4189374BC6A7F0)
  {
    operator new();
  }

  sub_2FE8();
}

uint64_t sub_360C(uint64_t a1, uint64_t a2)
{
  v4 = sub_36EC(a1, a2);
  v5 = *(a2 + 744);
  v6 = *(a2 + 760);
  v4[97] = *(a2 + 776);
  *(v4 + 93) = v5;
  *(v4 + 95) = v6;
  sub_313C((v4 + 98), a2 + 784);
  KB::String::String((a1 + 888), (a2 + 888));
  v7 = (a1 + 920);
  if (*(a2 + 943) < 0)
  {
    sub_3CDC(v7, *(a2 + 920), *(a2 + 928));
  }

  else
  {
    v8 = *(a2 + 920);
    *(a1 + 936) = *(a2 + 936);
    *v7 = v8;
  }

  KB::ByteString::copy();
  *(a1 + 960) = *(a2 + 960);
  v9 = *(a2 + 976);
  *(a1 + 976) = v9;
  if (v9)
  {
    CFRetain(v9);
    *(a1 + 976) = v9;
  }

  v10 = *(a2 + 984);
  *(a1 + 984) = v10;
  if (v10)
  {
    CFRetain(v10);
    *(a1 + 984) = v10;
  }

  *(a1 + 992) = *(a2 + 992);
  return a1;
}

uint64_t *sub_36EC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[2];
  v6 = a1 + 3;
  *a1 = *a2;
  a1[1] = v6;
  a1[2] = 3;
  if (v5 >= 4)
  {
    v6 = malloc_type_malloc(240 * v5, 0x10B2040DF775671uLL);
    a1[1] = v6;
    a1[2] = v5;
    if (!v6)
    {
      return a1;
    }

    v4 = *a2;
  }

  if (v4)
  {
    v7 = a2[1];
    v8 = 240 * v4;
    do
    {
      v6 = (sub_378C(v6, v7) + 240);
      v7 += 240;
      v8 -= 240;
    }

    while (v8);
  }

  return a1;
}

uint64_t sub_378C(uint64_t a1, uint64_t a2)
{
  KB::String::String(a1, a2);
  KB::ByteString::copy();
  v4 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v4;
  KB::String::String((a1 + 64), (a2 + 64));
  v5 = *(a2 + 96);
  v6 = *(a2 + 112);
  v7 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v7;
  *(a1 + 96) = v5;
  *(a1 + 112) = v6;
  KB::String::String((a1 + 160), (a2 + 160));
  *(a1 + 192) = *(a2 + 192);
  sub_3810(a1 + 200, a2 + 200);
  return a1;
}

uint64_t sub_3810(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_3870(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_3AC4(a1, i + 2);
  }

  return a1;
}

void sub_3870(uint64_t a1, size_t __n)
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

      sub_3960(a1, prime);
    }
  }
}

void sub_3960(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2FE8();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_3AC4(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_3CDC(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_2FE8();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

__n128 sub_3D80(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_3D90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *a7 = 1;
  return result;
}

uint64_t sub_3DA8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  language_modeling::v1::LinguisticContext::LinguisticContext();
  language_modeling::v1::LinguisticContext::LinguisticContext();
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return a1;
}

void sub_3E44(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_3E98(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_3E98(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_3EE8(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_3F54(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    sub_3EE8(v5);
  }

  sub_3FE8(a1 + 16, a2 + 1);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 40) = v6;
  language_modeling::v1::LinguisticContext::operator=();
  language_modeling::v1::LinguisticContext::operator=();
  sub_403C(a1 + 80);
  *(a1 + 80) = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  return a1;
}

__n128 sub_3FE8(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_403C(uint64_t a1)
{
  if (*a1)
  {
    sub_3E98(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t sub_407C(void **a1, uint64_t a2)
{
  v2 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_2FE8();
  }

  if (0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((a1[2] - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v6 = 0x11A7B9611A7B961;
  }

  else
  {
    v6 = v3;
  }

  v16[4] = a1;
  if (v6)
  {
    sub_47C8(a1, v6);
  }

  v7 = 232 * v2;
  *v7 = *a2;
  KB::String::String((v7 + 8), (a2 + 8));
  sub_3434((v7 + 40), (a2 + 40));
  v8 = *(a2 + 160);
  *(v7 + 144) = *(a2 + 144);
  *(v7 + 160) = v8;
  *(v7 + 192) = 0;
  *(v7 + 184) = 0;
  *(v7 + 176) = v7 + 184;
  sub_41E0(v7 + 176, *(a2 + 176), (a2 + 184));
  v9 = *(a2 + 200);
  *(v7 + 212) = *(a2 + 212);
  *(v7 + 200) = v9;
  v10 = v7 + 232;
  v11 = a1[1];
  v12 = *a1 + v7 - v11;
  sub_4824(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  a1[1] = v10;
  v14 = a1[2];
  a1[2] = 0;
  v16[2] = v13;
  v16[3] = v14;
  v16[0] = v13;
  v16[1] = v13;
  sub_4B2C(v16);
  return v10;
}

uint64_t sub_41E0(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_4268(v5, v5 + 1, (v4 + 4));
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

uint64_t sub_4268(void *a1, void *a2, uint64_t a3)
{
  v3 = *sub_4304(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_4304(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2 || (*(a5 + 8) ? (v11 = *(a5 + 8)) : (v11 = (a5 + 16)), a2[5] ? (v12 = a2[5]) : (v12 = (a2 + 6)), strcmp(v11, v12) < 0))
  {
    v13 = *a2;
    if (*a1 == a2)
    {
      v15 = a2;
LABEL_29:
      if (v13)
      {
        *a3 = v15;
        return v15 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v13)
    {
      v14 = *a2;
      do
      {
        v15 = v14;
        v14 = v14[1];
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v19 = *v15 == v18;
        v18 = v15;
      }

      while (v19);
    }

    if (v15[5])
    {
      v20 = v15[5];
    }

    else
    {
      v20 = (v15 + 6);
    }

    if (*(a5 + 8))
    {
      v21 = *(a5 + 8);
    }

    else
    {
      v21 = (a5 + 16);
    }

    if (strcmp(v20, v21) < 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if ((strcmp(v12, v11) & 0x80000000) == 0)
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    v16 = a2[1];
    if (v16)
    {
      v17 = a2[1];
      do
      {
        a4 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      v22 = a2;
      do
      {
        a4 = v22[2];
        v19 = *a4 == v22;
        v22 = a4;
      }

      while (!v19);
    }

    if (a4 == v9 || (a4[5] ? (v23 = a4[5]) : (v23 = (a4 + 6)), strcmp(v11, v23) < 0))
    {
      if (v16)
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
  }

  return sub_453C(a1, a3, a5);
}

uint64_t *sub_44E4(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_462C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void *sub_453C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(a3 + 8))
    {
      v6 = *(a3 + 8);
    }

    else
    {
      v6 = (a3 + 16);
    }

    do
    {
      while (1)
      {
        v7 = v4;
        v8 = v4[5];
        v9 = (v8 ? v8 : v7 + 6);
        if ((strcmp(v6, v9) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_15;
        }
      }

      if ((strcmp(v9, v6) & 0x80000000) == 0)
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

LABEL_15:
  *a2 = v7;
  return v5;
}

KB::String *sub_45E8(KB::String *a1, const KB::String *a2)
{
  v4 = KB::String::String(a1, a2);
  sub_2F28((v4 + 32), a2 + 4);
  sub_3050(a1 + 7, a2 + 7);
  return a1;
}

uint64_t *sub_462C(uint64_t *result, uint64_t *a2)
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

void sub_47C8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    operator new();
  }

  sub_2FE8();
}

void sub_4824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    do
    {
      v9 = v6 + v8;
      v10 = a4 + v8;
      *(a4 + v8) = *(v6 + v8);
      KB::String::String();
      sub_4924((a4 + v8 + 40), v6 + v8 + 40);
      v11 = *(v6 + v8 + 160);
      *(v10 + 144) = *(v6 + v8 + 144);
      *(v10 + 160) = v11;
      *(v10 + 176) = *(v6 + v8 + 176);
      v12 = (v6 + v8 + 184);
      v13 = *v12;
      *(v10 + 184) = *v12;
      v14 = a4 + v8 + 184;
      v15 = *(v6 + v8 + 192);
      *(v10 + 192) = v15;
      if (v15)
      {
        *(v13 + 16) = v14;
        *(v9 + 176) = v12;
        *v12 = 0;
        *(v9 + 192) = 0;
      }

      else
      {
        *(v10 + 176) = v14;
      }

      v16 = a4 + v8;
      v17 = *(v6 + v8 + 200);
      *(v16 + 212) = *(v6 + v8 + 212);
      *(v16 + 200) = v17;
      v8 += 232;
    }

    while (v6 + v8 != a3);
    while (v6 != a3)
    {
      sub_49B0(a1, v6);
      v6 += 232;
    }
  }
}

__n128 sub_4924(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  *(a1 + 3) = *(a2 + 48);
  a1[8] = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  result = *(a2 + 72);
  *(a1 + 9) = result;
  a1[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  a1[12] = *(a2 + 96);
  return result;
}

void sub_49B0(uint64_t a1, uint64_t a2)
{
  sub_4A2C(a2 + 176, *(a2 + 184));
  v3 = (a2 + 112);
  sub_4AA8(&v3);
  v3 = (a2 + 88);
  sub_4AA8(&v3);
  v3 = (a2 + 64);
  sub_4AA8(&v3);
  v3 = (a2 + 40);
  sub_4AA8(&v3);
  KB::String::~String((a2 + 8));
}

void sub_4A2C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_4A2C(a1, *a2);
    sub_4A2C(a1, a2[1]);
    v4 = a2[11];
    if (v4)
    {
      a2[12] = v4;
      operator delete(v4);
    }

    v5 = a2[8];
    if (v5)
    {
      a2[9] = v5;
      operator delete(v5);
    }

    KB::String::~String((a2 + 4));

    operator delete(a2);
  }
}

void sub_4AA8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        KB::Candidate::~Candidate((v4 - 1000));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void **sub_4B2C(void **a1)
{
  sub_4B60(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_4B60(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 232;
    sub_49B0(v4, i - 232);
  }
}

uint64_t sub_4BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      KB::String::String((a4 + v7), (a2 + v7));
      KB::String::String((a4 + v7 + 32), (a2 + v7 + 32));
      KB::String::String((a4 + v7 + 64), (a2 + v7 + 64));
      KB::String::String((a4 + v7 + 96), (a2 + v7 + 96));
      KB::String::String((a4 + v7 + 128), (a2 + v7 + 128));
      v9 = *(a2 + v7 + 160);
      *(v8 + 168) = *(a2 + v7 + 168);
      *(v8 + 160) = v9;
      v7 += 176;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_4C58(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_4CAC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_4CAC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      KB::String::~String((v3 - 48));
      KB::String::~String((v3 - 80));
      KB::String::~String((v3 - 112));
      KB::String::~String((v3 - 144));
      KB::String::~String((v3 - 176));
      v3 -= 176;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_4D1C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_3870(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_4D7C(a1, i + 4);
  }

  return a1;
}

uint64_t *sub_4D7C(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_4F98(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_5064(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_3EE8(v5);
      }
    }
  }
}

void sub_50F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_5128(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_515C(void ***a1)
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
        sub_51E0(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_51E0(uint64_t a1)
{
  sub_4F98(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_3EE8(v2);
  }
}

unsigned int *sub_522C(unsigned int *result)
{
  v1 = result;
  v2 = atomic_load(result);
  if (v2 == 1)
  {
    KB::String::~String((result + 52));
    sub_52C4((v1 + 44), *(v1 + 23));
    sub_52C4((v1 + 38), *(v1 + 20));
    sub_5318((v1 + 18));
    sub_542C((v1 + 8));
    v3 = (v1 + 2);
    sub_5490(&v3);
    operator delete();
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

void sub_52C4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_52C4(a1, *a2);
    sub_52C4(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_5318(uint64_t a1)
{
  sub_5354(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_5354(uint64_t a1, unsigned __int16 *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_A44C(v2 + 8);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_5398(uint64_t result)
{
  v1 = atomic_load(result);
  if (v1 == 1)
  {
    if (*(result + 40) >= 0xFu && *(result + 48))
    {
      operator delete[]();
    }

    KB::String::~String((result + 8));

    operator delete();
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

uint64_t sub_542C(uint64_t a1)
{
  sub_5468(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_5468(int a1, void **__p)
{
  if (__p)
  {
    sub_A588(__p);
  }
}

void sub_5490(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_54E4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_54E4(void *result)
{
  v1 = result;
  v2 = *result;
  for (i = result[1]; i != v2; i -= 8)
  {
    v4 = *(i - 8);
    result = v4;
    if (v4)
    {
      result = sub_5398(result);
    }
  }

  v1[1] = v2;
  return result;
}

unsigned int *sub_552C(unsigned int *result)
{
  v2 = atomic_load(result);
  if (v2 == 1)
  {
    KB::DictionaryContainer::~DictionaryContainer(result);

    operator delete();
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

void *sub_557C(void *a1, void *a2, unsigned int a3)
{
  if (a2[1])
  {
    v5 = a2[1];
  }

  else
  {
    v5 = (a2 + 2);
  }

  v6 = KB::String::hash(v5, *a2, a3);
  v7 = v6;
  v8 = a1[1];
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v8 <= v6)
    {
      v11 = v6 % v8;
    }
  }

  else
  {
    v11 = (v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= v8)
      {
        v14 %= v8;
      }
    }

    else
    {
      v14 &= v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_22;
    }

LABEL_21:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_22;
    }
  }

  if (v13 + 2 != a2 && (KB::String::equal((v13 + 2), a2) & 1) == 0)
  {
    goto LABEL_21;
  }

  return v13;
}

void *sub_57D8(void *a1, void *a2, unsigned int a3)
{
  if (a2[1])
  {
    v5 = a2[1];
  }

  else
  {
    v5 = (a2 + 2);
  }

  v6 = KB::String::hash(v5, *a2, a3);
  v7 = a1[1];
  if (!v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v7 <= v6)
    {
      v11 = v6 % v7;
    }
  }

  else
  {
    v11 = (v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    do
    {
      v14 = v13[1];
      if (v14 == v8)
      {
        if (v13 + 2 == a2 || (KB::String::equal((v13 + 2), a2) & 1) != 0)
        {
          return v13;
        }
      }

      else
      {
        if (v10 > 1)
        {
          if (v14 >= v7)
          {
            v14 %= v7;
          }
        }

        else
        {
          v14 &= v7 - 1;
        }

        if (v14 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

const void **sub_58F0(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_5C00(v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    sub_5B60();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!sub_606C(a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

unint64_t sub_5C00(uint64_t a1, uint64_t *a2, unint64_t a3)
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
      return sub_5FAC(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_5F00(a2, a3);
  }

  else
  {
    return sub_5E08(a2, a3);
  }
}

unint64_t sub_5E08(_DWORD *a1, unint64_t a2)
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

unint64_t sub_5F00(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_5FAC(void *a1, uint64_t a2)
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

BOOL sub_606C(uint64_t a1, const void **a2, const void **a3)
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

uint64_t *sub_60E4(uint64_t *a1)
{
  if (*a1)
  {
    sub_A5C8(a1, *a1);
  }

  v2 = a1[1];
  a1[1] = 0;
  a1[2] = 0;
  free(v2);
  return a1;
}

void sub_6128(void *a1, unint64_t a2)
{
  if (a1[2] < a2)
  {
    v6 = (a1 + 1);
    v5 = a1[1];
    v7 = *a1;
    v8 = malloc_type_malloc(8 * a2, 0x2004093837F09uLL);
    *v6 = v8;
    a1[2] = a2;
    if (v8)
    {
      memcpy(v8, v5, 8 * v7);
      v9 = *v6;
    }

    else
    {
      v9 = 0;
    }

    if (v9 == v5)
    {
      *v6 = 0;
      v6[1] = 0;
    }

    free(v5);
  }
}

void sub_6258(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_6290(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

atomic_uint **sub_62C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{

  return TI::CP::ContinuousPathTestCase::ContinuousPathTestCase(v62, &a10, &a33, &a62, &a11, &a58);
}

uint64_t sub_62EC@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 < 0)
  {
    v3 = *a2;
  }

  return a3;
}

void sub_6310()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(sub_D38, &unk_14580, &dword_0);

  objc_autoreleasePoolPop(v0);
}

void sub_7558(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_75AC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_75AC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 224;
    do
    {
      sub_4A2C(v4 + 168, *(v4 + 176));
      v6 = (v4 + 104);
      sub_4AA8(&v6);
      v6 = (v4 + 80);
      sub_4AA8(&v6);
      v6 = (v4 + 56);
      sub_4AA8(&v6);
      v6 = (v4 + 32);
      sub_4AA8(&v6);
      KB::String::~String(v4);
      v5 = v4 - 8;
      v4 -= 232;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_7654(uint64_t a1)
{
  *a1 = off_10648;
  *(a1 + 8) = 0;
  sub_76EC(a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = xmmword_D520;
  *(a1 + 144) = 1028443341;
  *(a1 + 148) = 0x300000000;
  *(a1 + 160) = 1;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0xF00000002;
  return a1;
}

const void **sub_76EC@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1050253722;
  CFRetain(@"shapestore.db");
  *(a1 + 16) = @"shapestore.db";
  v2 = (a1 + 16);
  v3 = TI_KB_USER_DIRECTORY();
  *(v2 - 1) = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v3, kCFURLPOSIXPathStyle, 1u);

  return sub_7774(v2, @"shapestore.db");
}

const void **sub_7774(const void **a1, CFTypeRef cf)
{
  v3 = *a1;
  if (v3 != cf)
  {
    if (cf)
    {
      CFRetain(cf);
      v3 = *a1;
    }

    if (v3)
    {
      CFRelease(v3);
    }

    *a1 = cf;
  }

  return a1;
}

void sub_77C4(uint64_t *a1)
{
  if (*a1)
  {
    sub_75AC(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_7804(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_A614(v4 - 240);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_7888(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    sub_2FE8();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) >= 0x88888888888888)
  {
    v6 = 0x111111111111111;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    sub_7A00(a1, v6);
  }

  v7 = 240 * v2;
  v18 = 0;
  v19 = v7;
  v8 = 0;
  v20 = v7;
  v21 = 0;
  v9 = *a2;
  *v7 = *a2;
  if (v9)
  {
    atomic_fetch_add(v9, 1u);
    v10 = v19;
    v11 = v20;
    v8 = v21;
  }

  else
  {
    v10 = v7;
    v11 = v7;
  }

  sub_2F28((v7 + 8), (a2 + 8));
  sub_3050((v7 + 32), (a2 + 32));
  KB::String::String((v7 + 56), (a2 + 56));
  sub_313C(v7 + 88, a2 + 88);
  KB::String::String((v7 + 192), (a2 + 192));
  v12 = *(a2 + 224);
  *(v7 + 232) = *(a2 + 232);
  *(v7 + 224) = v12;
  v13 = a1[1];
  v14 = v10 + *a1 - v13;
  sub_7A58(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  a1[1] = v11 + 240;
  v16 = a1[2];
  a1[2] = v8;
  v20 = v15;
  v21 = v16;
  v18 = v15;
  v19 = v15;
  sub_7B4C(&v18);
  return v11 + 240;
}

void sub_7A00(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x111111111111112)
  {
    operator new();
  }

  sub_2FE8();
}

uint64_t sub_7A58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = (v6 + v7);
      v9 = a4 + v7;
      v10 = *(v6 + v7);
      *v8 = 0;
      *v9 = v10;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 8) = *(v6 + v7 + 8);
      *(v9 + 24) = *(v6 + v7 + 24);
      v8[1] = 0;
      v8[2] = 0;
      v8[3] = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 32) = *(v6 + v7 + 32);
      *(v9 + 48) = *(v6 + v7 + 48);
      v8[4] = 0;
      v8[5] = 0;
      v8[6] = 0;
      KB::String::String();
      sub_3DA8(a4 + v7 + 88, v6 + v7 + 88);
      result = KB::String::String();
      v12 = *(v6 + v7 + 224);
      *(v9 + 232) = *(v6 + v7 + 232);
      *(v9 + 224) = v12;
      v7 += 240;
    }

    while (v8 + 30 != a3);
    while (v6 != a3)
    {
      result = sub_A614(v6);
      v6 += 240;
    }
  }

  return result;
}

uint64_t sub_7B4C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 240;
    sub_A614(i - 240);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_7B9C(uint64_t a1)
{
  sub_7BD8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_7BD8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_A7DC((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_7C1C()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(sub_D38, &unk_145A8, &dword_0);

  objc_autoreleasePoolPop(v0);
}

TI::CP::CPEval *TI::CP::CPEval::CPEval(TI::CP::CPEval *this, NSString *a2)
{
  *this = off_10648;
  *(this + 8) = 0;
  v3 = a2;
  sub_76EC(this + 16);
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = xmmword_D520;
  *(this + 36) = 1028443341;
  *(this + 148) = 0x300000000;
  *(this + 160) = 1;
  *(this + 21) = 0;
  *(this + 22) = 0xF00000002;
  (*(*this + 16))(this, v3, 0, 0.0);

  return this;
}

TI::CP::CPEval *TI::CP::CPEval::CPEval(TI::CP::CPEval *this, NSString *a2, NSString *a3, double a4)
{
  *this = off_10648;
  *(this + 8) = 0;
  v7 = a3;
  v8 = a2;
  sub_76EC(this + 16);
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = xmmword_D520;
  *(this + 36) = 1028443341;
  *(this + 148) = 0x300000000;
  *(this + 160) = 1;
  *(this + 21) = 0;
  *(this + 22) = 0xF00000002;
  (*(*this + 16))(this, v8, v7, a4);

  return this;
}

id TI::CP::CPEval::is_match(TI::CP::CPEval *this, const KB::Candidate *a2, const KB::String *a3)
{
  sub_360C(v22, a2);
  if (*(this + 39))
  {
    v6 = *(a2 + 1) + 240 * *a2;
    sub_9258(&v20);
    sub_8048(v22, &v20);
    KB::Candidate::~Candidate(&v20);
  }

  v7 = *(this + 44);
  if (!v7)
  {
    KB::Candidate::capitalized_string(&v20, v22);
    if (&v20 == a3)
    {
      v18 = &dword_0 + 1;
      goto LABEL_21;
    }

    v9 = KB::String::equal(a3, &v20);
LABEL_20:
    v18 = v9;
LABEL_21:
    KB::String::~String(&v20);
    goto LABEL_23;
  }

  if (v7 != 1)
  {
    if (v7 != 2)
    {
      v18 = 0;
      goto LABEL_23;
    }

    v8 = *(*(this + 9) + 8);
    KB::Candidate::capitalized_string(&v20, v22);
    v9 = KB::CollatorWrapper::sortkey_equal_strings((v8 + 72), &v20, a3);
    goto LABEL_20;
  }

  v10 = *(a3 + 1);
  if (!v10)
  {
    v10 = a3 + 16;
  }

  if (*a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = &unk_D5DE;
  }

  v12 = [NSString stringWithUTF8String:v11];
  v13 = [v12 lowercaseString];

  KB::Candidate::capitalized_string(&v20, v22);
  v14 = *(&v20 + 1);
  if (!*(&v20 + 1))
  {
    v14 = &v21;
  }

  if (v20)
  {
    v15 = v14;
  }

  else
  {
    v15 = &unk_D5DE;
  }

  v16 = [NSString stringWithUTF8String:v15];
  v17 = [v16 lowercaseString];

  KB::String::~String(&v20);
  v18 = [v13 isEqualToString:v17];

LABEL_23:
  KB::Candidate::~Candidate(v22);
  return v18;
}

uint64_t *sub_8048(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  sub_9314((a1 + 1), a2 + 1);
  v5 = *(a2 + 744);
  v6 = *(a2 + 760);
  a1[97] = *(a2 + 97);
  *(a1 + 93) = v5;
  *(a1 + 95) = v6;
  sub_3F54((a1 + 98), a2 + 49);
  KB::String::operator=();
  v7 = (a1 + 115);
  if (*(a1 + 943) < 0)
  {
    operator delete(*v7);
  }

  v8 = *(a2 + 920);
  a1[117] = *(a2 + 117);
  *v7 = v8;
  *(a2 + 943) = 0;
  *(a2 + 920) = 0;
  KB::ByteString::operator=();
  *(a1 + 60) = a2[60];
  v9 = a1[122];
  if (v9)
  {
    CFRelease(v9);
  }

  a1[122] = 0;
  v10 = *(a2 + 122);
  *(a2 + 122) = 0;
  a1[122] = v10;
  v11 = a1[123];
  if (v11)
  {
    CFRelease(v11);
  }

  a1[123] = 0;
  v12 = *(a2 + 123);
  *(a2 + 123) = 0;
  a1[123] = v12;
  *(a1 + 248) = *(a2 + 248);
  return a1;
}

uint64_t TI::CP::CPEval::match_index(TI::CP::CPEval *this, const KB::String *a2, const KB::Candidate **a3)
{
  v5 = *a3;
  v6 = a3[1];
  KB::String::String(v8, a2);
  v9 = this;
  if (v5 != v6)
  {
    while ((TI::CP::CPEval::is_match(v9, v5, v8) & 1) == 0)
    {
      v5 = (v5 + 1000);
      if (v5 == v6)
      {
        v5 = v6;
        break;
      }
    }
  }

  KB::String::~String(v8);
  if (v5 == a3[1])
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 652835029 * ((v5 - *a3) >> 3);
  }
}

const std::string *TI::CP::CPEval::create_recognizer_for_config@<X0>(const std::string *result@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  if (a2 <= 1)
  {
    if (!a2)
    {
      operator new();
    }

    if (a2 == 1)
    {
      sub_BE8C();
    }
  }

  else
  {
    if (a2 == 2)
    {
      operator new();
    }

    if (a2 == 3)
    {
      std::string::operator=((a3 + 104), result + 2);
      operator new();
    }
  }

  return result;
}

void TI::CP::CPEval::evaluate_records(const std::string *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = -1;
  context = objc_autoreleasePoolPush();
  v9 = *(a4 + 80);
  v40[4] = *(a4 + 64);
  v40[5] = v9;
  v41 = *(a4 + 96);
  v10 = *(a4 + 16);
  v40[0] = *a4;
  v40[1] = v10;
  v11 = *(a4 + 48);
  v40[2] = *(a4 + 32);
  v40[3] = v11;
  if (*(a4 + 127) < 0)
  {
    sub_3CDC(&v42, *(a4 + 104), *(a4 + 112));
  }

  else
  {
    v42 = *(a4 + 104);
    v43 = *(a4 + 120);
  }

  if (*(a4 + 151) < 0)
  {
    sub_3CDC(&__p, *(a4 + 128), *(a4 + 136));
  }

  else
  {
    __p = *(a4 + 128);
    v45 = *(a4 + 144);
  }

  v46 = *(a4 + 152);
  v47 = *(a4 + 154);
  KB::String::String(v48, (a4 + 160));
  v12 = *(a4 + 336);
  v48[10] = *(a4 + 320);
  v48[11] = v12;
  v49 = *(a4 + 352);
  v13 = *(a4 + 272);
  v48[6] = *(a4 + 256);
  v48[7] = v13;
  v14 = *(a4 + 304);
  v48[8] = *(a4 + 288);
  v48[9] = v14;
  v15 = *(a4 + 208);
  v48[2] = *(a4 + 192);
  v48[3] = v15;
  v16 = *(a4 + 240);
  v48[4] = *(a4 + 224);
  v48[5] = v16;
  TI::CP::CPEval::create_recognizer_for_config(a1, a3, v40, &v29);
  KB::String::~String(v48);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  v17 = v29;
  if (v29)
  {
    v18 = *a2;
    if (a2[1] != *a2)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        TI::CP::CPEval::evaluate_test_case(a1, v18 + v19, v17, v20, &v31);
        v21 = *(a5 + 8);
        if (v21 >= *(a5 + 16))
        {
          v26 = sub_407C(a5, &v31);
        }

        else
        {
          *v21 = v31;
          KB::String::String((v21 + 8), v32);
          sub_3434((v21 + 40), v33);
          v22 = v36[2];
          v23 = v36[3];
          *(v21 + 184) = 0;
          *(v21 + 176) = v21 + 184;
          v24 = v21 + 176;
          *(v24 - 32) = v22;
          *(v24 - 16) = v23;
          *(v24 + 16) = 0;
          sub_41E0(v24, v37, &v38);
          v25 = v39[0];
          *(v24 + 36) = *(v39 + 12);
          *(v24 + 24) = v25;
          v26 = v24 + 56;
        }

        *(a5 + 8) = v26;
        sub_4A2C(&v37, v38);
        v30 = v36;
        sub_4AA8(&v30);
        v30 = &v35;
        sub_4AA8(&v30);
        v30 = &v34;
        sub_4AA8(&v30);
        v30 = v33;
        sub_4AA8(&v30);
        KB::String::~String(v32);
        ++v20;
        v18 = *a2;
        v19 += 240;
      }

      while (0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 4) > v20);
    }

    if (a3 == 2)
    {
      *(a5 + 24) = TI::CP::ShapeStore::num_records((v17 + 208));
    }

    (*(*v17 + 8))(v17);
  }

  objc_autoreleasePoolPop(context);
}

atomic_uint *sub_8A84(uint64_t a1, atomic_uint **a2)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  result = *a2;
  if (v5 != *a2)
  {
    return sub_BF98(result, v4, v5, a1);
  }

  return result;
}

void TI::CP::CPEval::compose_result_from_candidates(KB::DictionaryContainer **this@<X0>, const KB::Candidate **a2@<X1>, const ContinuousPathTestCase *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  matched = TI::CP::CPEval::match_index(this, (a3 + 56), a2);
  v11 = this[9];
  if (v11)
  {
    KB::DictionaryContainer::lookup(v11, (a3 + 56));
    v12 = v26;
    v13 = v27;
    if (v26 == v27)
    {
      v15 = 0;
    }

    else
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v22 = sub_8CE4;
      v23 = &unk_10660;
      v24 = this;
      v25 = a3;
      v14 = v21;
      do
      {
        v15 = (v22)(v14, v12);
        if (v15)
        {
          break;
        }

        v12 += 240;
      }

      while (v12 != v13);
    }

    v28 = &v26;
    sub_94D4(&v28);
  }

  else
  {
    v15 = 1;
  }

  TI::CP::ContinuousPathTestResult::ContinuousPathTestResult(a5, a4, (a3 + 56), a2, matched, v15);
  if ((matched & 0x80000000) != 0)
  {
    if (*a2 != a2[1])
    {
      v19 = expf(*(*a2 + 186));
      *(a5 + 208) = logf(v19);
    }

    goto LABEL_16;
  }

  v16 = *a2;
  v17 = expf(*(*a2 + 250 * matched + 186));
  *(a5 + 200) = logf(v17);
  if (matched)
  {
    v18 = expf(*(v16 + 186));
    *(a5 + 208) = logf(v18);
    if (matched <= 3)
    {
      goto LABEL_20;
    }

LABEL_16:
    if (*(a2 + 24) != 2)
    {
      *(a5 + 219) = 1;
      return;
    }

    goto LABEL_22;
  }

  if ((0x1CAC083126E978D5 * ((a2[1] - v16) >> 3)) >= 2)
  {
    v20 = expf(*(v16 + 436));
    *(a5 + 208) = logf(v20);
  }

LABEL_20:
  if (*(a2 + 24) == 2)
  {
    *(a5 + 218) = 1;
    return;
  }

LABEL_22:
  *(a5 + 217) = 1;
}

id sub_8CE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_9258(v5);
  v3 = TI::CP::CPEval::is_match(v2, v5, (*(a1 + 40) + 56));
  KB::Candidate::~Candidate(v5);
  return v3;
}

void TI::CP::CPEval::evaluate_test_case_favonius(TI::CP::CPEval *this@<X0>, const ContinuousPathTestCase *a2@<X1>, TI::Favonius::FavoniusStrokeBuildManager *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  (*(*a3 + 352))(a3);
  (*(*a3 + 144))(a3, a2 + 88, a2 + 192, 0, 0);
  v23 = this;
  *(this + 39) = 1;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2) - v8;
  if (v9)
  {
    v10 = 0;
    v11 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 4);
    v12 = 1;
    do
    {
      v13 = (v8 + 48 * v10);
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[5];
      v17 = v13[2];
      TI::Favonius::Touch::create();
      v10 = v12;
      v18 = v35[0];
      if (v12 == 1 || v11 != v12)
      {
        v31 = v35[0];
        if (v35[0])
        {
          atomic_fetch_add(v35[0], 1u);
        }

        (*(*a3 + 24))(a3, &v31, 4294967294, 0);
        v19 = v31;
        if (!v31)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v30 = v35[0];
        if (v35[0])
        {
          atomic_fetch_add(v35[0], 1u);
        }

        (*(*a3 + 32))(a3, &v30, 4294967294, 0);
        v19 = v30;
        if (!v30)
        {
          goto LABEL_13;
        }
      }

      sub_9678(v19);
LABEL_13:
      if (v18)
      {
        sub_9678(v18);
      }

      v8 = *(a2 + 1);
      v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 2) - v8) >> 4);
      ++v12;
    }

    while (v11 > v10);
  }

  KB::String::String(v37);
  v20 = *(v23 + 45);
  v36[0] = off_10710;
  v36[3] = v36;
  (*(*a3 + 72))(v26, a3, a2 + 192, a2 + 88, v20, v37, 5, v36, 1);
  sub_99E4(v36);
  if (v26[1] != v26[0])
  {
    sub_360C(v35, v26[0]);
    KB::Candidate::capitalized_string(v34, v35);
    KB::String::String(v33);
    KB::String::String(v32);
    v21 = KB::Candidate::string(v35);
    (*(*a3 + 104))(__p, a3, v34, v33, v32, 0, v21, 1);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    KB::String::~String(v32);
    KB::String::~String(v33);
    KB::String::~String(v34);
    KB::Candidate::~Candidate(v35);
  }

  TI::CP::CPEval::compose_result_from_candidates(v23, v26, a2, a4, a5);
  v35[0] = &v29;
  sub_4AA8(v35);
  v35[0] = &v28;
  sub_4AA8(v35);
  v35[0] = &v27;
  sub_4AA8(v35);
  v35[0] = v26;
  sub_4AA8(v35);
  KB::String::~String(v37);
}

char *TI::CP::CPEval::recognizer_description(uint64_t a1, unsigned int a2)
{
  if (a2 > 3)
  {
    return &unk_D5DE;
  }

  else
  {
    return (&off_10748)[a2];
  }
}

void sub_9184(uint64_t a1)
{
  sub_A6B8(a1);

  operator delete();
}

void sub_91DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10690;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_9258(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = a1 + 24;
  *(a1 + 16) = 3;
  *(a1 + 744) = xmmword_D580;
  *(a1 + 760) = 0xFF8000003F800000;
  *(a1 + 840) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 848));
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 856));
  *(a1 + 880) = 0;
  *(a1 + 864) = 0u;
  KB::String::String((a1 + 888));
  *(a1 + 944) = 0;
  *(a1 + 936) = 0;
  *(a1 + 920) = 0u;
  *(a1 + 960) = 0;
  *(a1 + 964) = 0;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0;
  KB::Candidate::append();
  return a1;
}

__int128 *sub_9314(__int128 *result, void *a2)
{
  v2 = result + 1;
  v3 = a2 + 2;
  v4 = *a2;
  if (*result == result + 1)
  {
    if (v4 == v3)
    {
      for (i = 0; i != 3; ++i)
      {
        for (j = 0; j != 240; ++j)
        {
          v14 = *(v2 + j);
          *(v2 + j) = *(v3 + j);
          *(v3 + j) = v14;
        }

        v3 += 30;
        v2 += 15;
      }
    }

    else
    {
      v6 = 0;
      *result = *a2;
      *a2 = v3;
      a2[1] = 3;
      do
      {
        for (k = 0; k != 240; ++k)
        {
          v8 = *(v2 + k);
          *(v2 + k) = *(v3 + k);
          *(v3 + k) = v8;
        }

        ++v6;
        v3 += 30;
        v2 += 15;
      }

      while (v6 != 3);
    }
  }

  else if (v4 == v3)
  {
    v9 = 0;
    *a2 = *result;
    *result = v2;
    *(result + 1) = 3;
    do
    {
      for (m = 0; m != 240; ++m)
      {
        v11 = *(v2 + m);
        *(v2 + m) = *(v3 + m);
        *(v3 + m) = v11;
      }

      ++v9;
      v3 += 30;
      v2 += 15;
    }

    while (v9 != 3);
  }

  else
  {
    v5 = *result;
    *result = *a2;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_942C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 7;
  *(a1 + 120) = 0x4028000000000000;
  *(a1 + 128) = 8;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  TI::CP::ShapeStore::ShapeStore();
  *(a1 + 280) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 1065353216;
  *(a1 + 328) = 0;
  *(a1 + 280) = TI::CP::ShapeStore::num_records((a1 + 208));
  return a1;
}

void sub_94D4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        sub_9558(v4 - 240);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_9558(uint64_t a1)
{
  sub_4F98(a1 + 200);
  KB::String::~String((a1 + 160));
  KB::String::~String((a1 + 64));
  if (*(a1 + 32) >= 0xFu && *(a1 + 40))
  {
    operator delete[]();
  }

  KB::String::~String(a1);
}

uint64_t sub_95CC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = a1 + 24;
  *(a1 + 16) = 3;
  *(a1 + 744) = xmmword_D580;
  *(a1 + 760) = 0xFF8000003F800000;
  *(a1 + 840) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 848));
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 856));
  *(a1 + 880) = 0;
  *(a1 + 864) = 0u;
  KB::String::String((a1 + 888));
  *(a1 + 944) = 0;
  *(a1 + 936) = 0;
  *(a1 + 920) = 0u;
  *(a1 + 960) = 0;
  *(a1 + 964) = 0;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0;
  return a1;
}

unsigned int *sub_9678(unsigned int *result)
{
  v1 = atomic_load(result);
  if (v1 == 1)
  {
    sub_C00C(result);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

void sub_9734(int a1, KB::Candidate *this, float *a3)
{
  v4 = *a3;
  v5 = *(this + 187);
  v6 = *(this + 189);
  v7 = *(this + 190);
  v8 = this + 764;
  v16 = *(this + 764);
  v17 = *(this + 193);
  if ((KB::Candidate::has_from_named_entities(this) & 1) != 0 || KB::Candidate::has_from_supplemental_lexicon(this))
  {
    v4 = v4 * 0.8;
  }

  v9 = logf(v4);
  *(this + 186) = v5 + (v7 * (v6 + v9));
  *(this + 187) = v5;
  *(this + 188) = v9;
  *(this + 189) = v6;
  *(this + 190) = v7;
  *v8 = v16;
  *(v8 + 2) = v17;
  KB::cf_mutable_dictionary(&cf, v10);
  v11 = cf;
  v12 = expf(*(this + 186));
  KB::cf_number(&value, v13, v12);
  CFDictionarySetValue(v11, @"refinement_omega", value);
  if (value)
  {
    CFRelease(value);
  }

  KB::Candidate::add_sources_info(this, @"refinement", cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t sub_9858(uint64_t a1)
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

void sub_9960(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a3;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  sub_3434(v4, a2);
  if (v3)
  {
    operator delete(v3);
  }

  v8 = &v7;
  sub_4AA8(&v8);
  v8 = &v6;
  sub_4AA8(&v8);
  v8 = &v5;
  sub_4AA8(&v8);
  v8 = v4;
  sub_4AA8(&v8);
}

uint64_t sub_99E4(uint64_t a1)
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

uint64_t *sub_9A80()
{
  result = *(v0 + 224);
  v2 = *result;
  return result;
}

uint64_t sub_9AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  result = *(v15 + 120);
  *(v15 + 112) = a15;
  return result;
}

uint64_t sub_9AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result = *(v15 + 72);
  *(v15 + 72) = a15;
  return result;
}

void sub_9B18(void **a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = a1;

  sub_4AA8(&a19);
}

void sub_9B30()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(sub_D38, &unk_14690, &dword_0);

  objc_autoreleasePoolPop(v0);
}

atomic_uint **TI::CP::ContinuousPathTestCase::ContinuousPathTestCase(atomic_uint **a1, atomic_uint **a2, void *a3, const KB::String *a4, uint64_t a5, const KB::String *a6)
{
  v11 = *a2;
  *a1 = *a2;
  if (v11)
  {
    sub_6304(v11);
  }

  sub_2F28(a1 + 1, a3);
  sub_3050(a1 + 4, a3 + 3);
  KB::String::String((a1 + 7), a4);
  sub_313C((a1 + 11), a5);
  KB::String::String((a1 + 24), a6);
  return a1;
}

void *TI::CP::TestCaseConverter::TestCaseConverter(void *__dst, __int128 *a2, void *a3, atomic_uint **a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_3CDC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v7;
  }

  v8 = a3[1];
  __dst[3] = *a3;
  __dst[4] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *a4;
  __dst[5] = *a4;
  if (v9)
  {
    sub_6304(v9);
  }

  *(__dst + 3) = 0u;
  *(__dst + 4) = 0u;
  *(__dst + 20) = 1065353216;
  return __dst;
}

unsigned int *sub_9CBC(uint64_t a1, void *a2, unsigned int a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v11 = v5;
  if (v5)
  {
    sub_6304(v5);
  }

  v6 = a2;
  TI::CP::create_layout(v6, &v11);
  KB::String::String(v14, a3);
  v13 = v14;
  v7 = sub_557C((v4 + 48), v14, &std::piecewise_construct);
  v8 = v7[6];
  v9 = v12;
  v12 = 0;
  v7[6] = v9;

  if (v8)
  {
    sub_522C(v8);
  }

  KB::String::~String(v14);
  if (v12)
  {
    sub_522C(v12);
  }

  result = v11;
  if (v11)
  {
    return sub_552C(v11);
  }

  return result;
}

uint64_t *TI::CP::create_layout(void *a1, unsigned int **a2)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x4812000000;
  v6[3] = sub_23C8;
  v6[4] = sub_23F8;
  v6[5] = "";
  memset(v7, 0, sizeof(v7));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_A2C4;
  v4[3] = &unk_10558;
  v2 = *a2;
  v5 = v2;
  if (v2)
  {
    sub_6304(v2);
  }

  v4[4] = v6;
  [a1 enumerateKeysUsingBlock:v4];
  TI::Favonius::KeyboardLayout::create();
  if (v5)
  {
    sub_552C(v5);
  }

  _Block_object_dispose(v6, 8);
  return sub_60E4(v7);
}

void TI::CP::TestCaseConverter::convert(TI::CP::TestCaseConverter *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v6 = [v5 originalWord];
  KB::String::String(v82, [v6 layoutID]);

  v8 = sub_57D8(a1 + 6, v82, v7)[6];
  if (v8)
  {
    atomic_fetch_add(v8, 1u);
  }

  v56 = 0u;
  v57 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v9 = [v5 alignedTouches];
  v10 = [v9 countByEnumeratingWithState:&v51 objects:v81 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v52;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v51 + 1) + 8 * i);
        [v14 location];
        v16 = v15;
        v18 = v17;
        [v14 timestamp];
        v20 = v19;
        v83.x = v16;
        v83.y = v18;
        TI::CP::Path::append(&v55, v83, v20, 0.0, -1.0, 0.0);
      }

      v11 = [v9 countByEnumeratingWithState:&v51 objects:v81 count:16];
    }

    while (v11);
  }

  v21 = [v5 expectedString];
  KB::utf8_string(v80, v21, v22);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  *v42 = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext(&v45);
  language_modeling::v1::LinguisticContext::LinguisticContext(&v46);
  v47 = 0;
  v48 = 0;
  v49 = 0;
  KB::String::String(v76);
  v23 = [v5 originalWord];
  v24 = [v23 inputStem];

  if (v24)
  {
    v33 = [v5 originalWord];
    v34 = [v33 inputStem];
    TI::CP::TestCaseConverter::compute_linguistic_context_and_stem(a1, v34, &v60);
    sub_3F54(&v41, &v60);
    KB::String::operator=();
    KB::String::~String(&v72);
    v59 = &v69;
    sub_3E44(&v59);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v68);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v67);
    if (__p)
    {
      v62 = __p;
      operator delete(__p);
    }

    if (*(&v60 + 1))
    {
      sub_3EE8(*(&v60 + 1));
    }
  }

  if (v8)
  {
    atomic_fetch_add(v8, 1u);
    sub_62C4(v25, v26, v27, v28, v29, v30, v31, v32, v40, v8, v41, *(&v41 + 1), v42[0], v42[1], v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46, v47, v48, v49, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1), v54, *(&v54 + 1), v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58, v59, v60, *(&v60 + 1), __p, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76[0], v77, v78, v79, v80[0]);
    sub_522C(v8);
  }

  else
  {
    sub_62C4(v25, v26, v27, v28, v29, v30, v31, v32, v40, 0, v41, *(&v41 + 1), v42[0], v42[1], v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46, v47, v48, v49, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1), v54, *(&v54 + 1), v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58, v59, v60, *(&v60 + 1), __p, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76[0], v77, v78, v79, v80[0]);
  }

  v35 = [v5 alignedTouches];
  v36 = [v35 count];

  if (v36)
  {
    v37 = [v5 alignedTouches];
    v38 = [v37 objectAtIndexedSubscript:0];
    [v38 timestamp];
    *(a3 + 224) = v39;
  }

  KB::String::~String(v76);
  *&v60 = &v47;
  sub_3E44(&v60);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v46);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v45);
  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }

  if (*(&v41 + 1))
  {
    sub_3EE8(*(&v41 + 1));
  }

  KB::String::~String(v80);
  if (*(&v56 + 1))
  {
    *&v57 = *(&v56 + 1);
    operator delete(*(&v56 + 1));
  }

  if (v55)
  {
    *(&v55 + 1) = v55;
    operator delete(v55);
  }

  if (v8)
  {
    sub_522C(v8);
  }

  KB::String::~String(v82);
}

unsigned int *TI::CP::make_candidate_refinery(atomic_uint **a1, uint64_t *a2)
{
  v6 = *a1;
  if (*a1)
  {
    atomic_fetch_add(v6, 1u);
  }

  v2 = a2[1];
  v4 = *a2;
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  KB::NgramCandidateRefinery::create();
  if (v5)
  {
    sub_3EE8(v5);
  }

  result = v6;
  if (v6)
  {
    return sub_552C(v6);
  }

  return result;
}

void sub_A2C4(uint64_t a1, const char *a2)
{
  KB::String::String(v11, a2);
  KB::CollatorWrapper::sortkey_for_string(v10, (*(*(a1 + 40) + 8) + 72), v11);
  v3 = *(*(a1 + 32) + 8);
  TI::Favonius::LayoutKey::create();
  v5 = v3 + 6;
  v4 = v3[6];
  if (v4 != v3[8])
  {
    v8 = v3[7];
    goto LABEL_10;
  }

  v6 = v4 + (v4 >> 1);
  if (v4 < 0x100)
  {
    v6 = 2 * v4;
  }

  if (v6 <= v4 + 1)
  {
    v7 = v4 + 1;
  }

  else
  {
    v7 = v6;
  }

  sub_6128(v3 + 6, v7);
  v8 = v3[7];
  if (v8)
  {
    v4 = *v5;
LABEL_10:
    *(v8 + 8 * v4) = v9;
    *v5 = v4 + 1;
    goto LABEL_11;
  }

  if (v9)
  {
    sub_5398(v9);
  }

LABEL_11:
  if (LOWORD(v10[0]) >= 0xFu && v10[1])
  {
    operator delete[]();
  }

  KB::String::~String(v11);
}

uint64_t sub_A424(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  return result;
}

unsigned int *sub_A43C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return sub_552C(result);
  }

  return result;
}

unsigned __int16 *sub_A44C(unsigned __int16 *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    sub_5398(v2);
  }

  if (*a1 >= 0xFu && *(a1 + 1))
  {
    operator delete[]();
  }

  return a1;
}

void sub_A4A4(char *a1, uint64_t *a2)
{
  v3 = [sub_62EC(a1 a2];
  TI::CP::createAndLoadStaticDictionaryContainer(v3, v2);
}

void sub_A514(char *a1, uint64_t *a2, unsigned int **a3)
{
  v4 = [sub_62EC(a1 a2];
  __createAndLoadDictionaryContainer(&v7, v4, 0);
  v5 = v7;
  v7 = 0;
  v6 = *a3;
  *a3 = v5;
  if (v6)
  {
    sub_552C(v6);
    if (v7)
    {
      sub_552C(v7);
    }
  }
}

void sub_A588(void **__p)
{
  do
  {
    v2 = *__p;
    v3 = __p[3];
    if (v3)
    {
      sub_5398(v3);
    }

    operator delete(__p);
    __p = v2;
  }

  while (v2);
}

uint64_t sub_A5C8(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = 8 * a2;
  do
  {
    result = *v3;
    if (*v3)
    {
      result = sub_5398(result);
    }

    ++v3;
    v4 -= 8;
  }

  while (v4);
  *a1 = 0;
  return result;
}

uint64_t sub_A614(uint64_t a1)
{
  KB::String::~String((a1 + 192));
  v7 = (a1 + 168);
  sub_3E44(&v7);
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 160));
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 152));
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    sub_3EE8(v3);
  }

  KB::String::~String((a1 + 56));
  v4 = *(a1 + 32);
  if (v4)
  {
    *(a1 + 40) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *(a1 + 16) = v5;
    operator delete(v5);
  }

  if (*a1)
  {
    sub_522C(*a1);
  }

  return a1;
}

uint64_t sub_A6B8(uint64_t a1)
{
  *a1 = off_10648;
  v2 = *(a1 + 120);
  if (v2)
  {
    sub_3EE8(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    v4 = atomic_load(v3 + 2);
    if (v4 == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      atomic_fetch_add(v3 + 2, 0xFFFFFFFF);
    }
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    v6 = atomic_load(v5 + 2);
    if (v6 == 1)
    {
      (*(*v5 + 40))(v5);
    }

    else
    {
      atomic_fetch_add(v5 + 2, 0xFFFFFFFF);
    }
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    sub_3EE8(v7);
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    sub_552C(v8);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 32) = 0;
  v10 = *(a1 + 24);
  if (v10)
  {
    CFRelease(v10);
  }

  *(a1 + 24) = 0;
  return a1;
}

void sub_A7DC(KB::String *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    sub_522C(v2);
  }

  KB::String::~String(this);
}

void sub_A81C(uint64_t a1)
{
  sub_7B9C(a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_552C(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    sub_3EE8(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  operator delete();
}

void TI::CP::CPEval::load_language_resources(void **this, NSString *a2, NSString *a3, double a4)
{
  v6 = a2;
  v7 = a3;
  sub_1040(&v28, [(NSString *)v6 UTF8String]);
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  *(this + 3) = v28;
  this[8] = v29;
  if (v7)
  {
    v8 = sub_9B00();
    TI::CP::createAndLoadDictionaryContainerMultiLexicon(v9, v10, v11, v8, v12);
  }

  DictionaryContainer = __createAndLoadDictionaryContainer(&v28, v6, 0);
  v21 = sub_9AE8(DictionaryContainer, v14, v15, v16, v17, v18, v19, v20, v22, v23, v24, v25, v26, v27, v28);
  if (v21)
  {
    sub_552C(v21);
    if (v28)
    {
      sub_552C(v28);
    }
  }

  if (*(this + 160) == 1)
  {
    TI::CP::createAndLoadLanguageModel(v6, 0, 0);
  }

  sub_BDFC();
}

void TI::CP::CPEval::evaluate_test_case(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  HIDWORD(v44) = a4;
  (*(*a3 + 56))(a3);
  *(a1 + 156) = 0;
  if (*(a1 + 160) == 1)
  {
    sub_9AB8();
    (*(v9 + 120))(a3, a2 + 88);
  }

  else
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    *v51 = 0u;
    *__p = 0u;
    language_modeling::v1::LinguisticContext::LinguisticContext(&v55);
    language_modeling::v1::LinguisticContext::LinguisticContext((&v55 + 8));
    v56 = 0uLL;
    v57 = 0;
    sub_9AB8();
    (*(v10 + 120))(a3, v51);
    v58 = &v56;
    sub_3E44(&v58);
    language_modeling::v1::LinguisticContext::~LinguisticContext((&v55 + 8));
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v55);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v51[1])
    {
      sub_3EE8(v51[1]);
    }
  }

  v11 = *a2;
  v50 = v11;
  if (v11)
  {
    sub_6304(v11);
  }

  sub_8A84(a3, &v50);
  if (v50)
  {
    sub_522C(v50);
  }

  sub_9AB8();
  v47 = a5;
  if ((*(v12 + 16))(a3) == 2)
  {
    v13 = *(a2 + 64);
    if (!v13)
    {
      v13 = (a2 + 72);
    }

    if (*(a2 + 56))
    {
      v14 = v13;
    }

    else
    {
      v14 = &unk_D5DE;
    }

    sub_1040(v51, v14);
    v15 = TI::CP::ShapeStore::shape_count_for_word();
    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v51[0]);
    }

    LODWORD(v44) = v15 > 0;
  }

  else
  {
    LODWORD(v44) = 0;
  }

  v16 = *(a2 + 8);
  if (*(a2 + 16) != v16)
  {
    v17 = 0;
    v18 = 1;
    v19 = INFINITY;
    v20 = INFINITY;
    while (1)
    {
      v21 = (v16 + 48 * v17);
      v22 = *v21;
      v23 = *(v21 + 1);
      v24 = *(v21 + 2);
      v25 = *(v21 + 3);
      sub_9AB8();
      (*(v26 + 32))(a3);
      if (*(a1 + 8) == 1)
      {
        break;
      }

LABEL_32:
      v17 = v18;
      v16 = *(a2 + 8);
      ++v18;
      if ((*(a2 + 16) - v16) / 48 <= v17)
      {
        goto LABEL_35;
      }
    }

    HIDWORD(v57) = 0;
    *v51 = 0u;
    *__p = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v27 = *(a1 + 40);
    sub_9AB8();
    (*(v28 + 80))(a3, v51);
    matched = TI::CP::CPEval::match_index(a1, (a2 + 56), v51);
    if (matched != -1)
    {
      if (!matched)
      {
        if (fabs(v19) == INFINITY)
        {
          v19 = v21[4];
        }

        goto LABEL_29;
      }

      if (matched <= 2)
      {
LABEL_29:
        if (fabs(v20) == INFINITY)
        {
          v20 = v21[4];
        }
      }
    }

    v58 = &v55 + 1;
    sub_4AA8(&v58);
    v58 = &v54;
    sub_4AA8(&v58);
    v58 = &__p[1];
    sub_4AA8(&v58);
    sub_9B18(v51, v41, v44, v47, v50, v51[0], v51[1], __p[0], __p[1], v53, *(&v53 + 1), v54, *(&v54 + 1), v55, *(&v55 + 1), v56, *(&v56 + 1), v57, v58);
    goto LABEL_32;
  }

  v20 = INFINITY;
  v19 = INFINITY;
LABEL_35:
  HIDWORD(v57) = 0;
  *v51 = 0u;
  *__p = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v30 = *(a1 + 40);
  sub_9AB8();
  (*(v31 + 80))(a3, v51);
  v32 = *(a1 + 112);
  if (v32)
  {
    v33 = sub_9A74(v32);
    (*(v34 + 64))(v33, v51, 0);
    v35 = *(a1 + 112);
    v59[0] = off_106C8;
    v59[3] = v59;
    v36 = sub_9A74(v35);
    (*(v37 + 56))(v36, v51, v59);
    sub_9858(v59);
    KB::CandidateCollection::normalize_scores(v51);
  }

  TI::ConfidenceModel::update_confidence_for_candidates((a1 + 128), v51);
  TI::CP::CPEval::compose_result_from_candidates(a1, v51, a2, SHIDWORD(v44), v47);
  v38 = *(a2 + 16);
  if (*(a2 + 8) == v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = *(v38 - 16);
  }

  *(v47 + 152) = v39;
  *(v47 + 160) = v19;
  *(v47 + 168) = v20;
  *(v47 + 220) = v44;
  sub_9AB8();
  *(v47 + 224) = (*(v40 + 24))(a3);
  sub_9B18(&v55 + 1, v41, v44, v47, v50, v51[0], v51[1], __p[0], __p[1], v53, *(&v53 + 1), v54, *(&v54 + 1), v55, *(&v55 + 1), v56, *(&v56 + 1), v57, v58);
  sub_9B18(&v54, v42, v45, v48, v50, v51[0], v51[1], __p[0], __p[1], v53, *(&v53 + 1), v54, *(&v54 + 1), v55, *(&v55 + 1), v56, *(&v56 + 1), v57, v58);
  sub_9B18(&__p[1], v43, v46, v49, v50, v51[0], v51[1], __p[0], __p[1], v53, *(&v53 + 1), v54, *(&v54 + 1), v55, *(&v55 + 1), v56, *(&v56 + 1), v57, v58);
  v58 = v51;
  sub_4AA8(&v58);
}

void TI::CP::CPEval::evaluate_test_case_input_manager(TI::CP::CPEval *this@<X0>, const ContinuousPathTestCase *a2@<X1>, TIInputManager *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *(this + 39) = 2;
  TIInputManager::clear_continuous_path(a3);
  v24 = *a2;
  if (*a2)
  {
    sub_6304(*a2);
  }

  TIInputManager::set_key_layout();
  if (v24)
  {
    sub_522C(v24);
  }

  KB::String::String(v25);
  TIInputManager::set_input_context();
  KB::String::~String(v25);
  KB::String::String(v25, (a2 + 192));
  TIInputManager::set_input(a3, v25);
  KB::String::~String(v25);
  v8 = *(a2 + 1);
  v9 = *(a2 + 2) - v8;
  if (v9)
  {
    v10 = 0;
    v11 = 1;
    v12 = 5;
    v13 = v9 / 48;
    do
    {
      v14 = (v8 + 48 * v10);
      v10 = v11;
      if (v13 == v11)
      {
        v15 = 5;
      }

      else
      {
        v15 = v12;
      }

      if (v11 == 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v15;
      }

      v16 = *v14;
      v17 = v14[1];
      v18 = v14[2];
      v19 = v14[5];
      TIInputManager::add_touch();
      v8 = *(a2 + 1);
      v13 = (*(a2 + 2) - v8) / 48;
    }

    while (v13 > v11++);
  }

  v21 = *(this + 45);
  TIInputManager::lookup();
  sub_95CC(v25);
  TI::CP::CPEval::compose_result_from_candidates(this, v26, a2, a4, a5);
  KB::Candidate::~Candidate(v25);
  KB::String::~String(&v30);
  v25[0] = &v29;
  sub_4AA8(v25);
  v25[0] = &v28;
  sub_4AA8(v25);
  v25[0] = &v27;
  sub_4AA8(v25);
  v25[0] = v26;
  sub_4AA8(v25);
}

uint64_t sub_BF98(atomic_uint *a1, unsigned int **a2, unsigned int *a3, uint64_t a4)
{
  if (a1)
  {
    atomic_fetch_add(a1, 1u);
    a3 = *a2;
  }

  *a2 = a1;
  if (a3)
  {
    sub_522C(a3);
  }

  v5 = *(*a4 + 152);

  return v5(a4);
}

void sub_C00C(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_522C(v1);
  }

  operator delete();
}

void operator delete[]()
{
    ;
  }
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