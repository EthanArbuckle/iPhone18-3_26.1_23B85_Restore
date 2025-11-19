uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C7457D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak(&location);
  objc_destroyWeak((v34 + 40));
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a34);
  objc_destroyWeak((v35 - 136));
  objc_destroyWeak((v35 - 128));
  _Unwind_Resume(a1);
}

void sub_29C745A78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_29C745BC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_29C745D20(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1 + 6);
  objc_destroyWeak(v1 + 5);
  objc_destroyWeak(v1 + 4);
  _Unwind_Resume(a1);
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_2A23A0858 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id accessibilityExpandTVEpisodeNumber(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x29EDB8DE0] currentLocale];
  v3 = [v2 localeIdentifier];

  v4 = v1;
  if ([v3 hasPrefix:@"en"])
  {
    v4 = v1;
    if ([v1 length])
    {
      v5 = [MEMORY[0x29EDBA0D0] regularExpressionWithPattern:@"S(\\d+) options:E(\\d+)" error:{0, 0}];
      v6 = [v1 length];
      v7 = accessibilityLocalizedString(@"tv.show.season.and.episode");
      v4 = [v5 stringByReplacingMatchesInString:v1 options:0 range:0 withTemplate:{v6, v7}];
    }
  }

  return v4;
}

id accessibilityMLBScores(void *a1)
{
  v1 = a1;
  if (![v1 length])
  {
    v5 = 0;
    goto LABEL_10;
  }

  v2 = v1;
  v3 = @"▲ ";
  if ([v2 containsString:@"▲ "])
  {
    v4 = @"mlb.inning.position.top";
  }

  else
  {
    v3 = @"▼ ";
    if (![v2 containsString:@"▼ "])
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = @"mlb.inning.position.bottom";
  }

  v6 = accessibilityLocalizedString(v4);
  v7 = [v2 stringByReplacingOccurrencesOfString:v3 withString:v6];

  v5 = v7;
  v2 = v5;
LABEL_9:

LABEL_10:

  return v5;
}

id accessibilityLivePronunciation(void *a1)
{
  v1 = a1;
  if (v1 && ([MEMORY[0x29EDB8DE0] preferredLanguages], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "firstObject"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "hasPrefix:", @"en"), v3, v2, v4))
  {
    v5 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithCFAttributedString:v1];
    [v5 setAttribute:&unk_2A23AB128 forKey:*MEMORY[0x29EDBD7E0]];
    v6 = [v5 attributedString];
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

void sub_29C747400(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_29C749740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C74AB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C74B724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C74CED8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_29C74E204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C74F1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C74F2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C74F5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C752D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C753B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C757448(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_29C758F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}