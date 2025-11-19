double sub_1005B6AAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_10020BCA8(a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = 0.0;
  while (v4 != v5)
  {
    v7 = sub_10026ECB4(v4);
    StringRange = CTLineGetStringRange(v7);
    if (StringRange.location <= a2 && StringRange.location + StringRange.length >= a2)
    {
      v10 = *(v4 + 8);
      v11 = sub_10026ECB4(v4);
      return v10 + CTLineGetOffsetForStringIndex(v11, a2, 0);
    }

    v4 += 104;
  }

  return v6;
}

void sub_1005B6B34(id *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  *a5 = 0;
  *a4 = 0;
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  v13 = v9;
  if ([v9 baseTextScript] == 6)
  {
    v12 = *(a3 + 24);
    if (v12)
    {
      CTLineGetStringRange(v12);
    }

    [*a1 charRangeMappedToStorage:{v10, v11}];
    *a4 = 0;
    *a5 = 0;
  }
}

double sub_1005B6BF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  v2 = *(a1 + 88);
  v4 = v2 - v3;
  if (v2 != v3)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v5 = sub_10020BD14(a2);
    v6 = [v5 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v6)
    {
      v7 = *v41;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v41 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v40 + 1) + 8 * i);
          if ([v10 adornmentLocation] == 1)
          {
            [v10 underlineAdjustment];
            if (v8 < v11)
            {
              v8 = v11;
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v6);
    }

    if (*(a2 + 24) < 0)
    {
      v13 = &xmmword_101464828;
    }

    else
    {
      v13 = a2;
    }

    v35 = [*a1 charRangeMappedFromStorage:{*v13, *(v13 + 1)}];
    v15 = v14;
    v16 = 0;
    v17 = 0;
    v18 = 0x8E38E38E38E38E39 * (v4 >> 3);
    do
    {
      v19 = *(a1 + 80) + 72 * v16;
      v20 = *(v19 + 8);
      if (v20 >= v35 && v20 - v35 < v15)
      {
        v22 = *(v19 + 16);
        v23 = [*v19 rubyText];
        if ([v23 length])
        {
          v24 = *(v19 + 64) == 0;

          if (v24)
          {
            v25 = *(v19 + 24);
            if (v25)
            {
              v26 = *(v19 + 32);
              if (v26 > 0.0)
              {
                v27 = sub_1005B6AAC(a2, v20);
                v29 = sub_1005B6AAC(a2, v22 + v20) - v27;
                if (v26 + 1.0 < v29)
                {
                  GlyphCount = CTLineGetGlyphCount(v25);
                  if (GlyphCount < 2 || !CTLineCreateJustifiedLine(v25, 1.0, v29 + (v29 - v26) / GlyphCount * 0.5 * -2.0))
                  {
                    CFRetain(v25);
                  }

                  operator new();
                }

                if (v29 + 1.0 < v26)
                {
                  v37.a = 0.0;
                  v39 = 0.0;
                  sub_1005B6B34(a1, v28, v19, &v37, &v39);
                  v31 = v29 + v37.a + v39;
                  if (v26 + 1.0 >= v31 && v31 + 1.0 < v26)
                  {
                    if (qword_101AD5A20 != -1)
                    {
                      sub_10139C920();
                    }

                    v33 = off_1019EDA78;
                    if (os_log_type_enabled(off_1019EDA78, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "could not properly position ruby text. fall back to centering over base text.", buf, 2u);
                    }
                  }
                }

                operator new();
              }
            }

            *(a2 + 24) |= 0x400uLL;
          }
        }

        else
        {
        }
      }

      v16 = ++v17;
    }

    while (v18 > v17);
  }

  return 0.0;
}

void sub_1005B721C(id a1)
{
  v1 = sub_1004BD804("CRLWarningCat");
  v2 = off_1019EDA78;
  off_1019EDA78 = v1;
}

void *sub_1005B7260(void *result, __int128 *a2)
{
  if (result[13] != result[14])
  {
    v3 = result;
    v4 = *result;
    v5 = *(a2 + 3) < 0 ? &xmmword_101464828 : a2;
    result = [v4 charRangeMappedFromStorage:{*v5, *(v5 + 1)}];
    v8 = v3[13];
    v7 = v3[14];
    if (v7 != v8)
    {
      v9 = result + v6;
      v10 = (v7 - v8) >> 6;
      do
      {
        v11 = v10 >> 1;
        v12 = &v8[64 * (v10 >> 1)];
        v14 = *v12;
        v13 = (v12 + 8);
        v10 += ~(v10 >> 1);
        if (v14 < result)
        {
          v8 = v13;
        }

        else
        {
          v10 = v11;
        }
      }

      while (v10);
      for (; v8 != v7; v8 += 64)
      {
        if (*v8 >= v9)
        {
          break;
        }

        v15 = sub_1005B6AAC(a2, *v8);
        sub_10026EB3C(v17, *(v8 + 2), 0x7FFFFFFFFFFFFFFFLL, 0, 0, v15 + *(v8 + 4), *(v8 + 3) * 0.5);
        CGAffineTransformMakeScale(&v16, *(v8 + 7), 1.0);
        v20 = v16;
        v18 = *v8;
        location = CTLineGetStringRange(*(v8 + 2)).location;
        sub_10020BCEC(a2, v17);
        result = sub_10026EC38(v17);
      }
    }
  }

  return result;
}

void sub_1005B73AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10026EC38(va);
  _Unwind_Resume(a1);
}

char *sub_1005B73C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  v2 = *(a1 + 112);
  if (v3 == v2)
  {
    return 0;
  }

  v4 = (v2 - v3) >> 6;
  do
  {
    v5 = v4 >> 1;
    v6 = &v3[64 * (v4 >> 1)];
    v8 = *v6;
    v7 = (v6 + 8);
    v4 += ~(v4 >> 1);
    if (v8 < a2)
    {
      v3 = v7;
    }

    else
    {
      v4 = v5;
    }
  }

  while (v4);
  if (v3 == v2 || *v3 != a2)
  {
    return 0;
  }

  v9 = v3 + 64;
  do
  {
    v10 = v9;
    if (v9 == v2)
    {
      break;
    }

    v9 += 64;
  }

  while (*v10 == a2);
  return v10 - 64;
}

int64_t sub_1005B7448(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88) - v2;
  if (v3)
  {
    v3 = 0x8E38E38E38E38E39 * (v3 >> 3);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    for (i = (v2 + 64); *(i - 8) != a2; i += 72)
    {
      if (!--v3)
      {
        return v3 & 1;
      }
    }

    LOBYTE(v3) = *i;
  }

  return v3 & 1;
}

uint64_t sub_1005B74A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  v2 = *(a1 + 88);
  v4 = v2 - v3;
  if (v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0x8E38E38E38E38E39 * (v4 >> 3);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = (v3 + 64);
    do
    {
      if (*(v7 - 8) == a2)
      {
        v5 = 1;
        *v7 = 1;
      }

      v7 += 72;
      --v6;
    }

    while (v6);
  }

  return v5 & 1;
}

uint64_t sub_1005B7504(uint64_t result, uint64_t a2)
{
  v2 = *(result + 80);
  v3 = *(result + 88) - v2;
  if (v3)
  {
    v4 = 0x8E38E38E38E38E39 * (v3 >> 3);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v5 = (v2 + 64);
    do
    {
      if (*(v5 - 8) == a2)
      {
        *v5 = 0;
      }

      v5 += 72;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1005B7554(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88) - v2;
  if (v3)
  {
    v4 = 0x8E38E38E38E38E39 * (v3 >> 3);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v5 = (v2 + 56);
    do
    {
      v6 = *(v5 - 5) + *(v5 - 6);
      if (v6 <= a2)
      {
        break;
      }

      if (v6 - 1 == a2 && *v5 == 0.0)
      {
        return 1;
      }

      v5 += 9;
      --v4;
    }

    while (v4);
  }

  return 0;
}

id sub_1005B75D8(uint64_t a1)
{
  if (*(a1 + 64))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139C948();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139C95C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139CA08();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v3 = [NSString stringWithUTF8String:"NSMutableAttributedString *CRLWPParagraphTypesetter::mutableAttributedString() const"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPParagraphTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:382 isFatal:0 description:"expected nil value for '%{public}s'", "_ctTypesetter"];
  }

  v5 = *(a1 + 56);

  return v5;
}

void sub_1005B778C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005B77D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005B7814(uint64_t a1, void *a2)
{
  v19 = a2;
  objc_storeStrong(a1, a2);
  sub_1005B63BC(a1);
  v4 = *(a1 + 112);
  for (i = *(a1 + 104); i != v4; i += 8)
  {
    v6 = *i;
    v7 = *(a1 + 32);
    v8 = (*(a1 + 40) - v7) >> 1;
    v9 = i[1] + *i;
    if (*i >= v8 || v9 > v8)
    {
      v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10139CA30();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        v21 = v11;
        v22 = 2082;
        v23 = "void CRLWPParagraphTypesetter::updateSource(__strong id<CRLWPTextSource>)";
        v24 = 2082;
        v25 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPParagraphTypesetter.mm";
        v26 = 1024;
        v27 = 394;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tate-chu-yoko run's range is not within the text buffer.", buf, 0x22u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10139CA58();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v18 = +[CRLAssertionHandler packedBacktraceString];
        *buf = 67109378;
        v21 = v11;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
      }

      v14 = [NSString stringWithUTF8String:"void CRLWPParagraphTypesetter::updateSource(__strong id<CRLWPTextSource>)"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPParagraphTypesetter.mm"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:394 isFatal:0 description:"Tate-chu-yoko run's range is not within the text buffer."];
    }

    else
    {
      *(v7 + 2 * v6) = -4;
      v16 = 2 * v6 + 2;
      v17 = 2 * v9;
      if (v17 != v16)
      {
        memset_pattern16((v16 + v7), "\v \v \v \v \v \v \v \v ", v17 - v16);
      }
    }
  }
}

void sub_1005B7B18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005B7B5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005B7BA0(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    sub_1005B8118(a1, a2 - v2);
  }
}

uint64_t sub_1005B7C88(uint64_t result)
{
  if (result)
  {
    operator delete();
  }

  return result;
}

double sub_1005B7CA4(uint64_t a1)
{
  result = 0.0;
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if ((*(v2 + 64) & 1) == 0)
      {
        return *(v2 + 56) * 0.5;
      }
    }
  }

  return result;
}

void sub_1005B7CCC(const __CFAttributedString *a1, NSUInteger a2, NSUInteger a3)
{
  v21 = +[CRLWPFontMetricsCache sharedCache];
  if (a2 < a2 + a3)
  {
    v19 = kCTFontFeatureTypeIdentifierKey;
    v20 = kCTFontFeatureSettingsAttribute;
    v18 = kCTFontFeatureSelectorIdentifierKey;
    v3 = a2;
    do
    {
      Attribute = CFAttributedStringGetAttribute(a1, v3, kCTFontAttributeName, &effectiveRange);
      location = effectiveRange.location;
      length = effectiveRange.length;
      v31.length = a3;
      v31.location = a2;
      v7 = NSIntersectionRange(effectiveRange, v31);
      v8 = [v21 supportedFractionalWidthsForFont:Attribute];
      v9 = 4;
      if (v7.length < 4)
      {
        v9 = v7.length;
      }

      if (v9 != 2)
      {
        if (v9 != 3)
        {
          if (v9 != 4)
          {
            goto LABEL_19;
          }

          if ((v8 & 0x10) != 0)
          {
            v10 = 4;
            goto LABEL_14;
          }
        }

        if ((v8 & 8) != 0)
        {
          v10 = 3;
          goto LABEL_14;
        }
      }

      if ((v8 & 4) != 0)
      {
        v10 = 2;
LABEL_14:
        v29 = v20;
        v26[0] = v19;
        v26[1] = v18;
        v27[0] = &off_1018E2EF8;
        v11 = [NSNumber numberWithUnsignedInteger:v10, v18, v19, v20];
        v27[1] = v11;
        v12 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
        v28 = v12;
        v13 = [NSArray arrayWithObjects:&v28 count:1];
        v30 = v13;
        v14 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];

        v15 = CTFontDescriptorCreateWithAttributes(v14);
        if (v15)
        {
          Size = CTFontGetSize(Attribute);
          CopyWithAttributes = CTFontCreateCopyWithAttributes(Attribute, Size, 0, v15);
          if (CopyWithAttributes)
          {
            CFAttributedStringSetAttribute(a1, v7, kCTFontAttributeName, CopyWithAttributes);
            CFRelease(CopyWithAttributes);
          }

          CFRelease(v15);
        }
      }

LABEL_19:
      if (v3 + 1 > length + location)
      {
        ++v3;
      }

      else
      {
        v3 = length + location;
      }
    }

    while (v3 < a2 + a3);
  }
}

uint64_t sub_1005B7FA8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1005B7FDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1005B8010(void ***a1)
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
        v4 = sub_1005B7FA8(v4 - 72);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1005B8094(void ***a1)
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
        v4 = sub_1005B7FDC(v4 - 64);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1005B8118(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      sub_1000C1D48();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_100200D24(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_1005B8394(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005B83D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005B853C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005B8580(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005B86E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005B8728(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005B888C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005B88D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005B8914(void *a1, void *a2)
{
  v7 = @"CRLBoardItemInsertionEditorBoardItemsKey";
  v8 = a2;
  v3 = a2;
  v4 = a1;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v6 = +[NSNotificationCenter defaultCenter];

  [v6 postNotificationName:@"CRLBoardItemInsertionEditorDidInsertBoardItemsNotification" object:v4 userInfo:v5];
}

id variable initialization expression of iCloudStatusFooter.iCloudStatusLabel()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id variable initialization expression of CRLAnalyticsDataStore.userDefaults()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

uint64_t variable initialization expression of AASApplicationManager.userSamplingManager()
{
  type metadata accessor for AASUserSamplingManager();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 20) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtC8Freeform22AASUserSamplingManager_userId;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

void variable initialization expression of CRLMiniFormatterStateManager.observedObjects()
{
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1005BF9C0(_swiftEmptyArrayStorage, &qword_1019F37D8, &unk_1014C5ED0, type metadata accessor for CRLBoardItem);
    }
  }
}

id variable initialization expression of CRLWPLayout._columns()
{
  v0 = objc_allocWithZone(NSMutableArray);

  return [v0 init];
}

double variable initialization expression of TSContentLanguage.Models.Textbox.layoutStyle@<D0>(_OWORD *a1@<X8>)
{
  sub_1005BC604(v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 142) = *(v8 + 14);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

id variable initialization expression of CRLAnalyticsOSSignpostManager.signpostsEnabled()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 BOOLForKey:@"enableOSSignpost"];

  return v1;
}

uint64_t variable initialization expression of CRLAnalyticsOSSignpostManager.contextAccessLock()
{
  type metadata accessor for CRLUnfairLock();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *v1 = 0;
  *(v0 + 16) = v1;
  atomic_thread_fence(memory_order_acq_rel);
  return v0;
}

uint64_t variable initialization expression of CRLScenesNavigatorState.objectDidChange()
{
  type metadata accessor for ObservableObjectPublisher();
  swift_allocObject();
  return ObservableObjectPublisher.init()();
}

double variable initialization expression of TSContentLanguage.Models.Image.mask@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return result;
}

double variable initialization expression of TSContentLanguage.Models.Image.Mask.path@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double variable initialization expression of TSContentLanguage.Models.Shape.fill@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = -256;
  return result;
}

uint64_t sub_1005B9330@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

void *variable initialization expression of CRLiOSPencilHoverGestureHandler.previewImageProvider()
{
  type metadata accessor for CRLiOSPencilHoverPreviewImageProvider();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

id variable initialization expression of CRLiOSPencilHoverGestureHandler.pencilHoverStates()
{
  v0 = type metadata accessor for CRLiOSPencilHoverStates();
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR____TtC8Freeform23CRLiOSPencilHoverStates_currentHoverToolType] = 3;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

id variable initialization expression of CRLiOSPageTitleButton.selectedTitleColor()
{
  v0 = objc_allocWithZone(UIColor);
  v4[4] = sub_100F795BC;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = *"";
  v4[2] = sub_1005B9BD8;
  v4[3] = &unk_10187A428;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  return v2;
}

uint64_t sub_1005B95F4@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = sub_1005B981C(a2);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_1005B96B4(uint64_t (*a1)(void *), uint64_t *a2)
{
  v3 = a1(_swiftEmptyArrayStorage);
  sub_1005B981C(a2);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v3;
  return result;
}

double variable initialization expression of TSContentLanguage.Models.ConnectionLine.geometry@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 42) = 0;
  *(a1 + 40) = 2;
  return result;
}

double variable initialization expression of TSContentLanguage.Models.ConnectionLine.shadow@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0xFFFFFFFF00;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return result;
}

double variable initialization expression of TSContentLanguage.Models.ConnectionLine.End.anchor@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1005B978C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100FE4048(*a1);
  *a2 = result & 1;
  return result;
}

BOOL sub_1005B97BC@<W0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100FE4660(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1005B97EC@<W0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100FE50D8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005B981C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id variable initialization expression of CRLStatusHUDManager.delayedControllers()
{
  v0 = [objc_opt_self() weakObjectsHashTable];

  return v0;
}

double variable initialization expression of TSContentLanguage.Models.LayoutProperties.margins@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

double variable initialization expression of TSContentLanguage.Models.CharacterProperties.stroke@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 0xFFFFFFFE00;
  *(a1 + 32) = xmmword_1014669B0;
  *(a1 + 48) = 0;
  return result;
}

__n128 variable initialization expression of TSContentLanguage.Models.Paragraph.listStyle@<Q0>(uint64_t a1@<X8>)
{
  sub_1005BC6F0(v9);
  v2 = v9[13];
  *(a1 + 192) = v9[12];
  *(a1 + 208) = v2;
  *(a1 + 224) = v10;
  v3 = v9[9];
  *(a1 + 128) = v9[8];
  *(a1 + 144) = v3;
  v4 = v9[11];
  *(a1 + 160) = v9[10];
  *(a1 + 176) = v4;
  v5 = v9[5];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v5;
  v6 = v9[7];
  *(a1 + 96) = v9[6];
  *(a1 + 112) = v6;
  v7 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v7;
  result = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = result;
  return result;
}

double variable initialization expression of TSContentLanguage.Models.DropShadow.color@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

double variable initialization expression of TSContentLanguage.Models.ScaffoldColumnStyle.properties@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 768;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 93) = 0u;
  return result;
}

double variable initialization expression of TSContentLanguage.Models.ListProperties.shadow@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 4;
  return result;
}

__n128 variable initialization expression of TSContentLanguage.Models.ScaffoldListStyle.properties@<Q0>(uint64_t a1@<X8>)
{
  sub_1005BC764(v7);
  v2 = v7[9];
  *(a1 + 128) = v7[8];
  *(a1 + 144) = v2;
  *(a1 + 160) = v7[10];
  v3 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v3;
  v4 = v7[7];
  *(a1 + 96) = v7[6];
  *(a1 + 112) = v4;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

double variable initialization expression of TSContentLanguage.Models.ParagraphProperties.borders@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0xFFFFFFFD00;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  return result;
}

id sub_1005B9BD8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_1005B9C78@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_1005B9CBC(uint64_t a1, uint64_t a2)
{
  result = static Float._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_1005B9D10(uint64_t a1, uint64_t a2)
{
  v3 = static Float._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_1005B9D68@<X0>(_DWORD *a1@<X8>)
{
  result = static Float._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_1005B9DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_1005B9E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return v6 & 1;
}

uint64_t sub_1005B9E7C@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_1005B9EA4(uint64_t a1)
{
  v2 = sub_100016770(&qword_1019F3310, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1005B9F10(uint64_t a1)
{
  v2 = sub_100016770(&qword_1019F3310, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1005B9F7C(uint64_t a1)
{
  v2 = sub_100016770(&qword_1019F3348, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1005BA0B8()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_1005BA124()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int sub_1005BA190()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1005BA204()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1005BA250()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t sub_1005BA360(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1005BA3D8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1005BA458@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

Swift::Int sub_1005BA49C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1005BA4E4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1005BA528@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100BE7D4C();

  *a1 = v2;
  return result;
}

uint64_t sub_1005BA578()
{
  sub_100016770(&qword_1019F3348, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_1005BA5E4(uint64_t a1)
{
  v2 = sub_100016770(&qword_1019F3348, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1005BA650(void *a1, uint64_t a2)
{
  v4 = sub_100016770(&qword_1019F3348, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1005BA6E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100016770(&qword_1019F3348, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1005BA75C()
{
  sub_100016770(&qword_1019F3D00, type metadata accessor for PDFDocumentWriteOption);
  sub_100016770(&qword_1019F3D08, type metadata accessor for PDFDocumentWriteOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BA818()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

float sub_1005BA884@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1005BA94C()
{
  sub_100016770(&qword_1019F3C98, type metadata accessor for Weight);
  sub_100016770(&qword_1019F3CA0, type metadata accessor for Weight);
  sub_1005C3D70();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BAA14()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_1005BAA90()
{
  sub_100016770(&qword_1019F3B88, type metadata accessor for AVError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_1005BAAFC(uint64_t a1)
{
  v2 = sub_100016770(&qword_1019F3B88, type metadata accessor for AVError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1005BAB68(void *a1, uint64_t a2)
{
  v4 = sub_100016770(&qword_1019F3B88, type metadata accessor for AVError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1005BABF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100016770(&qword_1019F3B88, type metadata accessor for AVError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1005BAC74()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1005BACD4()
{
  sub_100016770(&qword_1019F34A0, type metadata accessor for Key);
  sub_100016770(&qword_1019F34A8, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BAD90()
{
  sub_100016770(&qword_1019F3490, type metadata accessor for Name);
  sub_100016770(&qword_1019F3498, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BAE4C()
{
  sub_100016770(&qword_1019F3CD0, type metadata accessor for UILayoutPriority);
  sub_100016770(&qword_1019F3CD8, type metadata accessor for UILayoutPriority);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BAF08()
{
  sub_100016770(&qword_1019F3D20, type metadata accessor for CAMediaTimingFillMode);
  sub_100016770(&qword_1019F3D28, type metadata accessor for CAMediaTimingFillMode);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BAFC4()
{
  sub_100016770(&qword_1019F34C0, type metadata accessor for Identifier);
  sub_100016770(&qword_1019F34C8, type metadata accessor for Identifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BB080()
{
  sub_100016770(&qword_1019F6EC0, type metadata accessor for InfoKey);
  sub_100016770(&qword_1019F3C80, type metadata accessor for InfoKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BB13C()
{
  sub_100016770(&qword_1019F3C08, type metadata accessor for DocumentReadingOptionKey);
  sub_100016770(&qword_1019F3C10, type metadata accessor for DocumentReadingOptionKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BB1F8()
{
  sub_100016770(&qword_1019F3C28, type metadata accessor for DocumentType);
  sub_100016770(&qword_1019F3C30, type metadata accessor for DocumentType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BB2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100016770(&qword_1019F3348, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1005BB338()
{
  sub_100016770(&qword_1019F3C18, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_100016770(&qword_1019F3C20, type metadata accessor for UIBackgroundTaskIdentifier);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BB3F4()
{
  sub_100016770(&qword_1019F3CC0, type metadata accessor for UIActivityItemsConfigurationMetadataKey);
  sub_100016770(&qword_1019F3CC8, type metadata accessor for UIActivityItemsConfigurationMetadataKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BB4B0()
{
  sub_100016770(&qword_1019F3D10, type metadata accessor for ActivityType);
  sub_100016770(&qword_1019F3D18, type metadata accessor for ActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BB56C()
{
  sub_100016770(&qword_1019F3C38, type metadata accessor for DocumentAttributeKey);
  sub_100016770(&unk_1019F3C40, type metadata accessor for DocumentAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BB628()
{
  sub_100016770(&unk_1019FF3F0, type metadata accessor for LaunchOptionsKey);
  sub_100016770(&unk_1019F3C50, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BB6E4()
{
  sub_100016770(&qword_1019F3CE0, type metadata accessor for URLResourceKey);
  sub_100016770(&qword_1019F3CE8, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BB7A0()
{
  sub_100016770(&qword_1019F34B0, type metadata accessor for Mode);
  sub_100016770(&qword_1019F34B8, type metadata accessor for Mode);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BB85C()
{
  sub_100016770(&qword_1019F34D0, type metadata accessor for NSKeyValueChangeKey);
  sub_100016770(&qword_1019F34D8, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BB918()
{
  sub_100016770(&qword_1019F3C88, type metadata accessor for FileAttributeKey);
  sub_100016770(&qword_1019F3C90, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BB9D4()
{
  sub_100016770(&qword_1019F3CF0, type metadata accessor for OpenExternalURLOptionsKey);
  sub_100016770(&qword_1019F3CF8, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BBA90()
{
  sub_100016770(&qword_1019F3C68, type metadata accessor for CalculateKey);
  sub_100016770(&unk_1019F3C70, type metadata accessor for CalculateKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BBB4C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1005C3DC4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1005BBB8C()
{
  sub_100016770(&qword_101A0C020, type metadata accessor for CIContextOption);
  sub_100016770(&qword_1019F3C60, type metadata accessor for CIContextOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

Swift::Int sub_1005BBD04()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1005BBD68@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_100BE7D50();

  *a1 = v2;
  return result;
}

uint64_t sub_1005BBDA8()
{
  sub_100016770(&qword_1019F3BF8, type metadata accessor for AttributeName);
  sub_100016770(&qword_1019F3C00, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BBE64()
{
  sub_100016770(&qword_1019F3BE8, type metadata accessor for TraitKey);
  sub_100016770(&qword_1019F3BF0, type metadata accessor for TraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1005BBF20(uint64_t a1)
{
  v2 = sub_100016770(&qword_1019F3B90, type metadata accessor for AVError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1005BBF8C(uint64_t a1)
{
  v2 = sub_100016770(&qword_1019F3B90, type metadata accessor for AVError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1005BBFF8(uint64_t a1)
{
  v2 = sub_100016770(&qword_1019F3B88, type metadata accessor for AVError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1005BC064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100016770(&qword_1019F3B88, type metadata accessor for AVError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1005BC0E8@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1005BC130()
{
  sub_100016770(&qword_1019F3CB0, type metadata accessor for UIActivityItemsConfigurationInteraction);
  sub_100016770(&qword_1019F3CB8, type metadata accessor for UIActivityItemsConfigurationInteraction);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void sub_1005BC1F4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

uint64_t sub_1005BC25C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1005BC298()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1005BC2EC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_1005BC360()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

void *sub_1005BC3E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_1019F3618);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

double sub_1005BC604(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 152) = 0;
  *(a1 + 156) = -256;
  return result;
}

void sub_1005BC630(uint64_t a1)
{
  bzero(a1, 0x5C0uLL);
  *(a1 + 1476) = -1;
  *(a1 + 1472) = 0;
}

void sub_1005BC664(uint64_t a1)
{
  bzero(a1, 0x3A8uLL);
  *(a1 + 940) = -1;
  *(a1 + 936) = 0;
}

_OWORD *sub_1005BC698(uint64_t a1)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0x1FFFFFFFELL;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 120) = 0u;
  result = (a1 + 120);
  result[9] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[14] = 0u;
  result[15] = 0u;
  result[16] = 0u;
  return result;
}

double sub_1005BC6F0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 224) = -1;
  return result;
}

void sub_1005BC71C(uint64_t a1)
{
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x1FFFFFFFCLL;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  bzero((a1 + 176), 0x2CCuLL);
}

void sub_1005BC74C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 1;
  bzero(a1 + 3, 0x57CuLL);
}

double sub_1005BC764(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

__n128 sub_1005BC874(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1005BC888(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1005BC8E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_1005BCADC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_1005BCB24(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1005BCB38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005BCB58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 sub_1005BCBA4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1005BCBC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005BCBE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

uint64_t sub_1005BCC90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005BCCB0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1005BD95C()
{
  result = qword_1019F3338;
  if (!qword_1019F3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F3338);
  }

  return result;
}

Swift::Int sub_1005BD9F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_1019F3488);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptySetSingleton;
  }

  return result;
}

void *sub_1005BDB60(uint64_t a1)
{
  v167 = sub_1005B981C(&qword_1019F3460);
  __chkstk_darwin(v167);
  v3 = &v154 - v2;
  v182 = sub_1005B981C(&qword_1019F3468);
  __chkstk_darwin(v182);
  v5 = &v154 - v4;
  v6 = type metadata accessor for UUID();
  v183 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v154 - v11;
  __chkstk_darwin(v10);
  v159 = &v154 - v13;
  v14 = type metadata accessor for CRLBoardIdentifier(0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v174 = &v154 - v19;
  __chkstk_darwin(v18);
  v162 = &v154 - v20;
  v21 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v22 = __chkstk_darwin(v21 - 8);
  v156 = &v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v155 = &v154 - v24;
  v25 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v26 = __chkstk_darwin(v25 - 8);
  v158 = &v154 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v173 = &v154 - v29;
  v30 = __chkstk_darwin(v28);
  v160 = &v154 - v31;
  __chkstk_darwin(v30);
  v161 = &v154 - v32;
  v33 = type metadata accessor for CRLPreviewImages.Item(0);
  v34 = __chkstk_darwin(v33);
  v177 = &v154 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = &v154 - v37;
  v39 = __chkstk_darwin(v36);
  v40 = __chkstk_darwin(v39);
  v181 = &v154 - v41;
  v42 = __chkstk_darwin(v40);
  v169 = &v154 - v43;
  __chkstk_darwin(v42);
  v187 = &v154 - v46;
  v47 = *(a1 + 16);
  if (!v47)
  {
    return _swiftEmptySetSingleton;
  }

  v166 = v3;
  v172 = v9;
  v48 = v47;
  v49 = v44;
  v179 = v45;
  sub_1005B981C(&unk_1019F3470);
  v163 = v48;
  v50 = static _SetStorage.allocate(capacity:)();
  v51 = 0;
  v186 = v50;
  v184 = v50 + 56;
  v164 = a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
  v185 = *(v49 + 72);
  v170 = (v183 + 32);
  v178 = (v183 + 8);
  v180 = v6;
  v171 = v12;
  v52 = v174;
  v176 = v5;
  v175 = v38;
  v165 = v17;
  while (2)
  {
    v168 = v51;
    v55 = v187;
    sub_10000C42C(v164 + v185 * v51, v187, type metadata accessor for CRLPreviewImages.Item);
    Hasher.init(_seed:)();
    sub_10000C42C(v55, v169, type metadata accessor for CRLPreviewImages.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v59 = v161;
      sub_1000251F0(v169, v161, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v60 = v59;
      v61 = v160;
      sub_10000C42C(v60, v160, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v62 = sub_1005B981C(&qword_1019F3480);
      v63 = (*(*(v62 - 8) + 48))(v61, 5, v62);
      if (v63 > 2)
      {
        v64 = v181;
        if (v63 == 3)
        {
          v65 = 2;
        }

        else if (v63 == 4)
        {
          v65 = 3;
        }

        else
        {
          v65 = 4;
        }
      }

      else
      {
        v64 = v181;
        if (!v63)
        {
          v72 = v155;
          sub_1000251F0(v160, v155, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          Hasher._combine(_:)(5uLL);
          sub_100F8ED58();
          v73 = v72;
          v64 = v181;
          sub_100025A88(v73, type metadata accessor for CRLBoardLibraryViewModel.Folder);
LABEL_23:
          sub_100025A88(v161, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          goto LABEL_24;
        }

        v65 = v63 != 1;
      }

      Hasher._combine(_:)(v65);
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v57 = v162;
      sub_1000251F0(v169, v162, type metadata accessor for CRLBoardIdentifier);
      sub_100016770(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v58 = v57;
    }

    else
    {
      v66 = *(sub_1005B981C(&unk_1019FB780) + 48);
      v67 = v169;
      v68 = v162;
      sub_1000251F0(v169, v162, type metadata accessor for CRLBoardIdentifier);
      v69 = v67 + v66;
      v70 = v159;
      (*v170)(v159, v69, v6);
      sub_100016770(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      dispatch thunk of Hashable.hash(into:)();
      v71 = v70;
      v52 = v174;
      (*v178)(v71, v6);
      v58 = v68;
    }

    sub_100025A88(v58, type metadata accessor for CRLBoardIdentifier);
    v64 = v181;
LABEL_24:
    v74 = Hasher._finalize()();
    v75 = v186;
    v183 = ~(-1 << *(v186 + 32));
    v76 = v74 & v183;
    v77 = (v74 & v183) >> 6;
    v78 = *(v184 + 8 * v77);
    v79 = 1 << (v74 & v183);
    if ((v79 & v78) != 0)
    {
      while (1)
      {
        sub_10000C42C(*(v75 + 48) + v76 * v185, v64, type metadata accessor for CRLPreviewImages.Item);
        v86 = &v5[*(v182 + 48)];
        sub_10000C42C(v64, v5, type metadata accessor for CRLPreviewImages.Item);
        sub_10000C42C(v187, v86, type metadata accessor for CRLPreviewImages.Item);
        v87 = swift_getEnumCaseMultiPayload();
        if (!v87)
        {
          break;
        }

        if (v87 == 1)
        {
          sub_10000C42C(v5, v38, type metadata accessor for CRLPreviewImages.Item);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1000251F0(v86, v52, type metadata accessor for CRLBoardIdentifier);
            if (static UUID.== infix(_:_:)())
            {
              v88 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
              v89 = *&v38[v88];
              v90 = *&v38[v88 + 8];
              v91 = (v52 + v88);
              if (v89 == *v91 && v90 == v91[1])
              {
                sub_100025A88(v64, type metadata accessor for CRLPreviewImages.Item);
                sub_100025A88(v52, type metadata accessor for CRLBoardIdentifier);
                v53 = v38;
                v54 = type metadata accessor for CRLBoardIdentifier;
                goto LABEL_4;
              }

              v93 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_100025A88(v64, type metadata accessor for CRLPreviewImages.Item);
              sub_100025A88(v52, type metadata accessor for CRLBoardIdentifier);
              sub_100025A88(v38, type metadata accessor for CRLBoardIdentifier);
              if (v93)
              {
                goto LABEL_5;
              }

              goto LABEL_73;
            }

            sub_100025A88(v64, type metadata accessor for CRLPreviewImages.Item);
            sub_100025A88(v52, type metadata accessor for CRLBoardIdentifier);
            v53 = v38;
            v130 = type metadata accessor for CRLBoardIdentifier;
            goto LABEL_72;
          }

          sub_100025A88(v64, type metadata accessor for CRLPreviewImages.Item);
          v84 = type metadata accessor for CRLBoardIdentifier;
          v85 = v38;
LABEL_28:
          sub_100025A88(v85, v84);
LABEL_29:
          sub_10000CAAC(v5, &qword_1019F3468);
          goto LABEL_30;
        }

        v95 = v177;
        sub_10000C42C(v5, v177, type metadata accessor for CRLPreviewImages.Item);
        v96 = sub_1005B981C(&unk_1019FB780);
        v97 = *(v96 + 48);
        v98 = *(v96 + 64);
        v99 = *(v95 + v98);
        v100 = *(v95 + v98 + 8);
        v101 = *(v95 + v98 + 16);
        v102 = *(v95 + v98 + 24);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          v117 = v181;
          sub_100025A88(v181, type metadata accessor for CRLPreviewImages.Item);
          v118 = (v95 + v97);
          v64 = v117;
          (*v178)(v118, v180);
          sub_100025A88(v95, type metadata accessor for CRLBoardIdentifier);
          v5 = v176;
          v38 = v175;
          goto LABEL_29;
        }

        v103 = *(v86 + v98);
        v104 = *(v86 + v98 + 8);
        v105 = *(v86 + v98 + 16);
        v106 = *(v86 + v98 + 24);
        sub_1000251F0(v86, v17, type metadata accessor for CRLBoardIdentifier);
        v107 = *v170;
        v108 = v12;
        v109 = v12;
        v110 = v180;
        (*v170)(v108, v95 + v97, v180);
        v111 = v86 + v97;
        v112 = v172;
        v107(v172, v111, v110);
        if ((static UUID.== infix(_:_:)() & 1) == 0)
        {
          v131 = v112;
          v132 = *v178;
          (*v178)(v131, v110);
          v132(v109, v110);
          v64 = v181;
          sub_100025A88(v181, type metadata accessor for CRLPreviewImages.Item);
          sub_100025A88(v95, type metadata accessor for CRLBoardIdentifier);
          v12 = v109;
          v52 = v174;
          v38 = v175;
          goto LABEL_55;
        }

        v113 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
        v114 = *(v95 + v113);
        v115 = *(v95 + v113 + 8);
        v116 = &v17[v113];
        if (v114 == *v116 && v115 == *(v116 + 1))
        {
          sub_100025A88(v95, type metadata accessor for CRLBoardIdentifier);
          v12 = v171;
          v52 = v174;
          v38 = v175;
        }

        else
        {
          v135 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_100025A88(v95, type metadata accessor for CRLBoardIdentifier);
          v12 = v171;
          v52 = v174;
          v38 = v175;
          if ((v135 & 1) == 0)
          {
            v151 = *v178;
            v152 = v180;
            (*v178)(v172, v180);
            v151(v12, v152);
            v64 = v181;
            sub_100025A88(v181, type metadata accessor for CRLPreviewImages.Item);
LABEL_55:
            sub_100025A88(v17, type metadata accessor for CRLBoardIdentifier);
            v5 = v176;
LABEL_73:
            v143 = v5;
            goto LABEL_74;
          }
        }

        v136 = v172;
        if ((static UUID.== infix(_:_:)() & 1) == 0)
        {
          v141 = *v178;
          v142 = v180;
          (*v178)(v136, v180);
          v141(v12, v142);
          v64 = v181;
          sub_100025A88(v181, type metadata accessor for CRLPreviewImages.Item);
          sub_100025A88(v17, type metadata accessor for CRLBoardIdentifier);
          v5 = v176;
          v143 = v176;
LABEL_74:
          sub_100025A88(v143, type metadata accessor for CRLPreviewImages.Item);
          goto LABEL_30;
        }

        v188.origin.x = v99;
        v188.origin.y = v100;
        v188.size.width = v101;
        v188.size.height = v102;
        v189.origin.x = v103;
        v189.origin.y = v104;
        v189.size.width = v105;
        v189.size.height = v106;
        v137 = CGRectEqualToRect(v188, v189);
        v138 = *v178;
        v139 = v136;
        v140 = v180;
        (*v178)(v139, v180);
        v138(v12, v140);
        v64 = v181;
        sub_100025A88(v181, type metadata accessor for CRLPreviewImages.Item);
        sub_100025A88(v17, type metadata accessor for CRLBoardIdentifier);
        v5 = v176;
        sub_100025A88(v176, type metadata accessor for CRLPreviewImages.Item);
        if (v137)
        {
          goto LABEL_6;
        }

LABEL_30:
        v76 = (v76 + 1) & v183;
        v77 = v76 >> 6;
        v78 = *(v184 + 8 * (v76 >> 6));
        v79 = 1 << v76;
        v75 = v186;
        if ((v78 & (1 << v76)) == 0)
        {
          goto LABEL_25;
        }
      }

      v94 = v179;
      sub_10000C42C(v5, v179, type metadata accessor for CRLPreviewImages.Item);
      if (!swift_getEnumCaseMultiPayload())
      {
        v119 = v173;
        sub_1000251F0(v86, v173, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v120 = v94;
        v121 = *(v167 + 48);
        v122 = v166;
        sub_10000C42C(v120, v166, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        sub_10000C42C(v119, v122 + v121, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v123 = sub_1005B981C(&qword_1019F3480);
        v124 = *(*(v123 - 8) + 48);
        v125 = v122;
        v126 = v124(v122, 5, v123);
        if (v126 > 2)
        {
          if (v126 == 3)
          {
            sub_100025A88(v173, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v145 = v181;
            sub_100025A88(v181, type metadata accessor for CRLPreviewImages.Item);
            v146 = v124(v125 + v121, 5, v123);
            v64 = v145;
            v122 = v125;
            v129 = v146 == 3;
          }

          else if (v126 == 4)
          {
            sub_100025A88(v173, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v133 = v181;
            sub_100025A88(v181, type metadata accessor for CRLPreviewImages.Item);
            v134 = v124(v125 + v121, 5, v123);
            v64 = v133;
            v122 = v125;
            v129 = v134 == 4;
          }

          else
          {
            sub_100025A88(v173, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v149 = v181;
            sub_100025A88(v181, type metadata accessor for CRLPreviewImages.Item);
            v150 = v124(v125 + v121, 5, v123);
            v64 = v149;
            v122 = v125;
            v129 = v150 == 5;
          }

          goto LABEL_69;
        }

        if (v126)
        {
          if (v126 == 1)
          {
            sub_100025A88(v173, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v127 = v181;
            sub_100025A88(v181, type metadata accessor for CRLPreviewImages.Item);
            v128 = v124(v125 + v121, 5, v123);
            v64 = v127;
            v122 = v125;
            v129 = v128 == 1;
          }

          else
          {
            sub_100025A88(v173, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v147 = v181;
            sub_100025A88(v181, type metadata accessor for CRLPreviewImages.Item);
            v148 = v124(v125 + v121, 5, v123);
            v64 = v147;
            v122 = v125;
            v129 = v148 == 2;
          }

LABEL_69:
          v12 = v171;
          v17 = v165;
          if (v129)
          {
            sub_100025A88(v122, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v52 = v174;
            v53 = v179;
LABEL_79:
            v54 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
LABEL_4:
            sub_100025A88(v53, v54);
LABEL_5:
            sub_100025A88(v5, type metadata accessor for CRLPreviewImages.Item);
LABEL_6:
            sub_100025A88(v187, type metadata accessor for CRLPreviewImages.Item);
LABEL_7:
            v51 = v168 + 1;
            v6 = v180;
            if (v168 + 1 == v163)
            {
              return v186;
            }

            continue;
          }

LABEL_70:
          sub_10000CAAC(v122, &qword_1019F3460);
          v52 = v174;
          v53 = v179;
        }

        else
        {
          v144 = v158;
          sub_10000C42C(v122, v158, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          if (v124(v122 + v121, 5, v123))
          {
            sub_100025A88(v173, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v64 = v181;
            sub_100025A88(v181, type metadata accessor for CRLPreviewImages.Item);
            sub_100025A88(v144, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v12 = v171;
            v17 = v165;
            goto LABEL_70;
          }

          v153 = v156;
          sub_1000251F0(v122 + v121, v156, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v157 = sub_100F92694(v144, v153);
          sub_100025A88(v153, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          sub_100025A88(v173, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v64 = v181;
          sub_100025A88(v181, type metadata accessor for CRLPreviewImages.Item);
          sub_100025A88(v144, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          sub_100025A88(v122, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v12 = v171;
          v17 = v165;
          v52 = v174;
          v53 = v179;
          if (v157)
          {
            goto LABEL_79;
          }
        }

        v130 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
LABEL_72:
        sub_100025A88(v53, v130);
        goto LABEL_73;
      }

      sub_100025A88(v64, type metadata accessor for CRLPreviewImages.Item);
      v84 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v85 = v94;
      goto LABEL_28;
    }

    break;
  }

LABEL_25:
  *(v184 + 8 * v77) = v78 | v79;
  result = sub_1000251F0(v187, *(v75 + 48) + v76 * v185, type metadata accessor for CRLPreviewImages.Item);
  v81 = *(v75 + 16);
  v82 = __OFADD__(v81, 1);
  v83 = v81 + 1;
  if (!v82)
  {
    *(v75 + 16) = v83;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void *sub_1005BF2F8(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1005B981C(&unk_1019F3350);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v36 = v10 + 56;
    v12 = *(v3 + 80);
    v33 = v9;
    v34 = a1 + ((v12 + 32) & ~v12);
    v13 = *(v3 + 72);
    while (1)
    {
      v35 = v11;
      sub_10000C42C(v34 + v13 * v11, v8, type metadata accessor for CRLBoardIdentifier);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_100016770(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v14 = type metadata accessor for CRLBoardIdentifierStorage(0);
      v15 = &v8[*(v14 + 20)];
      v16 = *v15;
      v17 = *(v15 + 1);
      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = -1 << *(v10 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v36 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        do
        {
          sub_10000C42C(*(v10 + 48) + v20 * v13, v6, type metadata accessor for CRLBoardIdentifier);
          if (static UUID.== infix(_:_:)())
          {
            v25 = &v6[*(v14 + 20)];
            if (*v25 == v16 && *(v25 + 1) == v17)
            {
              sub_100025A88(v6, type metadata accessor for CRLBoardIdentifier);
LABEL_4:
              sub_100025A88(v8, type metadata accessor for CRLBoardIdentifier);
              v9 = v33;
              goto LABEL_5;
            }

            v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_100025A88(v6, type metadata accessor for CRLBoardIdentifier);
            if (v27)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_100025A88(v6, type metadata accessor for CRLBoardIdentifier);
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v36 + 8 * (v20 >> 6));
          v23 = 1 << v20;
        }

        while ((v22 & (1 << v20)) != 0);
        v9 = v33;
      }

      *(v36 + 8 * v21) = v22 | v23;
      result = sub_1000251F0(v8, *(v10 + 48) + v20 * v13, type metadata accessor for CRLBoardIdentifier);
      v29 = *(v10 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v10 + 16) = v31;
LABEL_5:
      v11 = v35 + 1;
      if (v35 + 1 == v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptySetSingleton;
  }

  return result;
}

void *sub_1005BF678(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1005B981C(&qword_1019F37B8);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100016770(&qword_1019FB870, &type metadata accessor for UUID);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100016770(&qword_1019F37C0, &type metadata accessor for UUID);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

void sub_1005BF9C0(unint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      sub_1005B981C(a2);
      v6 = static _SetStorage.allocate(capacity:)();
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = _swiftEmptySetSingleton;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 7;
  v43 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    while (1)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = NSObject._rawHashValue(seed:)(v6[5]);
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = v11[v18 >> 6];
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        a4(0);
        while (1)
        {
          v23 = *(v6[6] + 8 * v18);
          v24 = static NSObject.== infix(_:_:)();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = v11[v18 >> 6];
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        v11[v19] = v21 | v20;
        *(v6[6] + 8 * v18) = v15;
        v25 = v6[2];
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        v6[2] = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = v6[5];
      v29 = *(a1 + 32 + 8 * v27);
      v30 = NSObject._rawHashValue(seed:)(v28);
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = v11[v32 >> 6];
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        v36 = ~v31;
        a4(0);
        while (1)
        {
          v37 = *(v6[6] + 8 * v32);
          v38 = static NSObject.== infix(_:_:)();

          if (v38)
          {
            break;
          }

          v32 = (v32 + 1) & v36;
          v33 = v32 >> 6;
          v34 = v11[v32 >> 6];
          v35 = 1 << v32;
          if (((1 << v32) & v34) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        v11[v33] = v35 | v34;
        *(v6[6] + 8 * v32) = v29;
        v39 = v6[2];
        v14 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        v6[2] = v40;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1005BFCD8(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      sub_1005B981C(a2);
      v6 = static _SetStorage.allocate(capacity:)();
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = _swiftEmptySetSingleton;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 7;
  v43 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    while (1)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = NSObject._rawHashValue(seed:)(v6[5]);
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = v11[v18 >> 6];
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_100006370(0, a4);
        while (1)
        {
          v23 = *(v6[6] + 8 * v18);
          v24 = static NSObject.== infix(_:_:)();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = v11[v18 >> 6];
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        v11[v19] = v21 | v20;
        *(v6[6] + 8 * v18) = v15;
        v25 = v6[2];
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        v6[2] = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = v6[5];
      v29 = *(a1 + 32 + 8 * v27);
      v30 = NSObject._rawHashValue(seed:)(v28);
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = v11[v32 >> 6];
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        v36 = ~v31;
        sub_100006370(0, a4);
        while (1)
        {
          v37 = *(v6[6] + 8 * v32);
          v38 = static NSObject.== infix(_:_:)();

          if (v38)
          {
            break;
          }

          v32 = (v32 + 1) & v36;
          v33 = v32 >> 6;
          v34 = v11[v32 >> 6];
          v35 = 1 << v32;
          if (((1 << v32) & v34) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        v11[v33] = v35 | v34;
        *(v6[6] + 8 * v32) = v29;
        v39 = v6[2];
        v14 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        v6[2] = v40;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_1005BFFE8(uint64_t a1)
{
  v35 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1005B981C(&qword_1019F3680);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v11 = v9 + 56;
    v31 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v32 = v8;
    v12 = *(v2 + 72);
    while (1)
    {
      v33 = v10;
      sub_10000C42C(v31 + v12 * v10, v7, type metadata accessor for CRLBoardIdentifierAndValue);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_100016770(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v14 = type metadata accessor for CRLBoardIdentifierStorage(0);
      v15 = &v7[*(v14 + 20)];
      v16 = *v15;
      v17 = *(v15 + 1);
      String.hash(into:)();
      v34 = v7[*(v35 + 20)];
      Hasher._combine(_:)(v34);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v9 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v11 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        while (1)
        {
          sub_10000C42C(*(v9 + 48) + v20 * v12, v4, type metadata accessor for CRLBoardIdentifierAndValue);
          if (static UUID.== infix(_:_:)())
          {
            v25 = &v4[*(v14 + 20)];
            v26 = *v25 == v16 && *(v25 + 1) == v17;
            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v34 == v4[*(v35 + 20)])
            {
              break;
            }
          }

          sub_100025A88(v4, type metadata accessor for CRLBoardIdentifierAndValue);
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v11 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if ((v22 & (1 << v20)) == 0)
          {
            goto LABEL_16;
          }
        }

        sub_100025A88(v4, type metadata accessor for CRLBoardIdentifierAndValue);
        sub_100025A88(v7, type metadata accessor for CRLBoardIdentifierAndValue);
        v13 = v32;
      }

      else
      {
LABEL_16:
        *(v11 + 8 * v21) = v22 | v23;
        result = sub_1000251F0(v7, *(v9 + 48) + v20 * v12, type metadata accessor for CRLBoardIdentifierAndValue);
        v28 = *(v9 + 16);
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        v13 = v32;
        if (v29)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v30;
      }

      v10 = v33 + 1;
      if (v33 + 1 == v13)
      {
        return v9;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

Swift::Int sub_1005C0360(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_1019F3610);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_100064110(v6 + 40 * v4, v19);
      result = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_100064110(*(v3 + 48) + 40 * i, v18);
        v11 = static AnyHashable.== infix(_:_:)();
        result = sub_100064234(v18);
        if (v11)
        {
          sub_100064234(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_1005C04C0(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_1005B981C(&qword_1019F3798);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = _swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 7;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for CalculateExpression();
    sub_100016770(&qword_1019F37A0, &type metadata accessor for CalculateExpression);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = v7[v11 >> 6];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_100016770(&qword_1019F37A8, &type metadata accessor for CalculateExpression);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = v7[v11 >> 6];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      v7[v12] = v14 | v13;
      *(v3[6] + 8 * v11) = v8;
      v16 = v3[2];
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1005C0754(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v160 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v123 - v6;
  v8 = sub_1005B981C(&unk_101A0B780);
  __chkstk_darwin(v8);
  v10 = &v123 - v9;
  v140 = _s5BoardV13ShareMetadataVMa(0);
  v151 = *(v140 - 8);
  __chkstk_darwin(v140);
  v137 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_1019F33D0);
  __chkstk_darwin(v12 - 8);
  v138 = &v123 - v13;
  v139 = sub_1005B981C(&qword_1019F33D8);
  __chkstk_darwin(v139);
  v141 = &v123 - v14;
  v148 = type metadata accessor for CRLDisjointPosition.Element();
  v152 = *(v148 - 8);
  v15 = __chkstk_darwin(v148);
  v149 = (&v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v150 = (&v123 - v17);
  v156 = type metadata accessor for CRLFolderIdentifier(0);
  v153 = *(v156 - 8);
  __chkstk_darwin(v156);
  v145 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&qword_1019F33E0);
  __chkstk_darwin(v19 - 8);
  v147 = &v123 - v20;
  v155 = sub_1005B981C(&qword_1019F33E8);
  __chkstk_darwin(v155);
  v22 = &v123 - v21;
  v158 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v23 = *(v158 - 1);
  v24 = __chkstk_darwin(v158);
  v26 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v157 = &v123 - v27;
  v28 = *(a1 + 16);
  if (!v28)
  {
    return _swiftEmptySetSingleton;
  }

  v133 = v10;
  v134 = v8;
  v130 = v7;
  v129 = v4;
  v135 = v2;
  sub_1005B981C(&unk_1019F33F0);
  v29 = static _SetStorage.allocate(capacity:)();
  v30 = 0;
  v161 = v29 + 56;
  v143 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v162 = *(v23 + 72);
  v153 += 6;
  v136 = (v151 + 48);
  v132 = (v160 + 48);
  v128 = (v160 + 32);
  v131 = (v160 + 8);
  v31 = v157;
  v154 = v22;
  v142 = v28;
  v159 = v29;
  v146 = v26;
  while (1)
  {
    sub_10000C42C(v143 + v162 * v30, v31, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    Hasher.init(_seed:)();
    sub_100F8ED58();
    v32 = Hasher._finalize()();
    v160 = ~(-1 << *(v29 + 32));
    v33 = v32 & v160;
    v34 = (v32 & v160) >> 6;
    v35 = *(v161 + 8 * v34);
    v36 = 1 << (v32 & v160);
    if ((v36 & v35) != 0)
    {
      break;
    }

LABEL_87:
    *(v161 + 8 * v34) = v35 | v36;
    result = sub_1000251F0(v31, *(v29 + 48) + v33 * v162, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v120 = *(v29 + 16);
    v121 = __OFADD__(v120, 1);
    v122 = v120 + 1;
    if (v121)
    {
      goto LABEL_96;
    }

    *(v29 + 16) = v122;
LABEL_89:
    if (++v30 == v28)
    {
      return v29;
    }
  }

  v144 = v30;
  while (1)
  {
    sub_10000C42C(*(v29 + 48) + v33 * v162, v26, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_7;
    }

    v37 = type metadata accessor for CRLFolderIdentifierStorage(0);
    v38 = *(v37 + 20);
    v39 = *&v26[v38];
    v40 = *&v26[v38 + 8];
    v41 = (v31 + v38);
    v42 = v39 == *v41 && v40 == v41[1];
    if (!v42 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_7;
    }

    v43 = v31;
    v44 = v158[5];
    v45 = v154;
    v46 = *(v155 + 48);
    sub_10000BE14(&v26[v44], v154, &qword_1019F33E0);
    sub_10000BE14(v43 + v44, v45 + v46, &qword_1019F33E0);
    v47 = *v153;
    v48 = v156;
    if ((*v153)(v45, 1, v156) == 1)
    {
      v49 = v47(v45 + v46, 1, v48);
      v31 = v157;
      if (v49 != 1)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

    v71 = v147;
    sub_10000BE14(v45, v147, &qword_1019F33E0);
    if (v47(v45 + v46, 1, v48) == 1)
    {
      sub_100025A88(v71, type metadata accessor for CRLFolderIdentifier);
      v31 = v157;
      v26 = v146;
LABEL_6:
      sub_10000CAAC(v45, &qword_1019F33E8);
      goto LABEL_7;
    }

    v72 = v45 + v46;
    v73 = v145;
    sub_1000251F0(v72, v145, type metadata accessor for CRLFolderIdentifier);
    v74 = static UUID.== infix(_:_:)();
    v31 = v157;
    if ((v74 & 1) == 0)
    {
      sub_100025A88(v73, type metadata accessor for CRLFolderIdentifier);
      sub_100025A88(v71, type metadata accessor for CRLFolderIdentifier);
      sub_10000CAAC(v45, &qword_1019F33E0);
      v26 = v146;
      goto LABEL_7;
    }

    v75 = *(v37 + 20);
    v76 = *(v71 + v75);
    v77 = *(v71 + v75 + 8);
    v78 = (v73 + v75);
    if (v76 == *v78 && v77 == v78[1])
    {
      sub_100025A88(v73, type metadata accessor for CRLFolderIdentifier);
      sub_100025A88(v71, type metadata accessor for CRLFolderIdentifier);
      v26 = v146;
LABEL_16:
      sub_10000CAAC(v45, &qword_1019F33E0);
      goto LABEL_17;
    }

    v79 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100025A88(v73, type metadata accessor for CRLFolderIdentifier);
    sub_100025A88(v71, type metadata accessor for CRLFolderIdentifier);
    sub_10000CAAC(v45, &qword_1019F33E0);
    v26 = v146;
    if ((v79 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_17:
    v50 = v158[6];
    result = *&v26[v50];
    v52 = *&v26[v50 + 8];
    v53 = (v31 + v50);
    if (result != *v53 || v52 != v53[1])
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v54 = v158[7];
    v55 = *&v26[v54];
    v56 = *(v31 + v54);
    v57 = *(v55 + 16);
    if (v57 != *(v56 + 16))
    {
      goto LABEL_7;
    }

    if (v57 && v55 != v56)
    {
      break;
    }

LABEL_29:
    if ((static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0 || v26[v158[10]] != *(v31 + v158[10]) || v26[v158[11]] != *(v31 + v158[11]) || v26[v158[12]] != *(v31 + v158[12]) || v26[v158[13]] != *(v31 + v158[13]))
    {
      goto LABEL_7;
    }

    v65 = v158[14];
    v66 = *(v139 + 48);
    v67 = v31;
    v68 = v141;
    sub_10000BE14(&v26[v65], v141, &qword_1019F33D0);
    sub_10000BE14(v67 + v65, v68 + v66, &qword_1019F33D0);
    v69 = *v136;
    v70 = v140;
    if ((*v136)(v68, 1, v140) == 1)
    {
      if (v69(v68 + v66, 1, v70) == 1)
      {
        sub_10000CAAC(v68, &qword_1019F33D0);
        v31 = v157;
LABEL_91:
        sub_100025A88(v26, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_100025A88(v31, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v28 = v142;
        v29 = v159;
        v30 = v144;
        goto LABEL_89;
      }

LABEL_50:
      sub_10000CAAC(v68, &qword_1019F33D8);
LABEL_47:
      v31 = v157;
      goto LABEL_7;
    }

    v80 = v138;
    sub_10000BE14(v68, v138, &qword_1019F33D0);
    if (v69(v68 + v66, 1, v70) == 1)
    {
      sub_100025A88(v80, _s5BoardV13ShareMetadataVMa);
      goto LABEL_50;
    }

    v81 = v68 + v66;
    v82 = v137;
    sub_1000251F0(v81, v137, _s5BoardV13ShareMetadataVMa);
    if (*v80 != *v82)
    {
      goto LABEL_85;
    }

    v83 = v70[5];
    v84 = *(v134 + 48);
    v85 = v133;
    sub_10000BE14(&v80[v83], v133, &unk_1019F33C0);
    sub_10000BE14(&v82[v83], v85 + v84, &unk_1019F33C0);
    v86 = *v132;
    v87 = v135;
    if ((*v132)(v85, 1, v135) == 1)
    {
      if (v86(v85 + v84, 1, v87) != 1)
      {
        goto LABEL_57;
      }

      sub_10000CAAC(v85, &unk_1019F33C0);
      v82 = v137;
      v80 = v138;
    }

    else
    {
      v88 = v130;
      sub_10000BE14(v85, v130, &unk_1019F33C0);
      if (v86(v85 + v84, 1, v87) == 1)
      {
        (*v131)(v88, v87);
LABEL_57:
        sub_10000CAAC(v85, &unk_101A0B780);
        v82 = v137;
        v80 = v138;
LABEL_85:
        sub_100025A88(v82, _s5BoardV13ShareMetadataVMa);
        sub_100025A88(v80, _s5BoardV13ShareMetadataVMa);
        sub_10000CAAC(v141, &qword_1019F33D0);
        goto LABEL_47;
      }

      v89 = v129;
      (*v128)(v129, v85 + v84, v87);
      sub_100016770(&qword_101A00190, &type metadata accessor for URL);
      v90 = dispatch thunk of static Equatable.== infix(_:_:)();
      v91 = *v131;
      v92 = v89;
      v70 = v140;
      (*v131)(v92, v87);
      v91(v88, v87);
      sub_10000CAAC(v85, &unk_1019F33C0);
      v82 = v137;
      v80 = v138;
      if ((v90 & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    v93 = v70[6];
    v94 = *&v80[v93];
    v95 = *&v80[v93 + 8];
    v96 = &v82[v93];
    if ((v94 != *v96 || v95 != *(v96 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v80[v70[7]] != *&v82[v70[7]])
    {
      goto LABEL_85;
    }

    v97 = v70[8];
    v98 = &v80[v97];
    v99 = *&v80[v97 + 8];
    v100 = *&v80[v97 + 16];
    v101 = *&v80[v97 + 24];
    v102 = *&v80[v97 + 32];
    v103 = *&v80[v97 + 40];
    v104 = v80[v97 + 48];
    v105 = &v82[v97];
    v106 = *(v105 + 1);
    v107 = *(v105 + 2);
    v109 = *(v105 + 3);
    v108 = *(v105 + 4);
    v110 = *(v105 + 5);
    v111 = v105[48];
    if (v99)
    {
      v80 = v138;
      if (!v106)
      {
        goto LABEL_85;
      }

      if (*v98 != *v105 || v99 != v106)
      {
        v127 = v103;
        v126 = v102;
        v125 = v111;
        LODWORD(v151) = v104;
        v112 = v110;
        v113 = v108;
        v114 = v101;
        v115 = v100;
        v124 = v107;
        v116 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v107 = v124;
        v100 = v115;
        v101 = v114;
        v108 = v113;
        v110 = v112;
        v104 = v151;
        v111 = v125;
        v102 = v126;
        v103 = v127;
        if ((v116 & 1) == 0)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      v80 = v138;
      if (v106)
      {
        goto LABEL_85;
      }
    }

    if (v101)
    {
      v80 = v138;
      if (!v109)
      {
        goto LABEL_85;
      }

      if (v100 != v107 || v101 != v109)
      {
        LODWORD(v151) = v104;
        v117 = v110;
        v118 = v108;
        v119 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v108 = v118;
        v110 = v117;
        v104 = v151;
        if ((v119 & 1) == 0)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      v80 = v138;
      if (v109)
      {
        goto LABEL_85;
      }
    }

    if (v103)
    {
      v80 = v138;
      if (!v110 || (v102 != v108 || v103 != v110) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v80 = v138;
      if (v110)
      {
        goto LABEL_85;
      }
    }

    sub_100025A88(v82, _s5BoardV13ShareMetadataVMa);
    sub_100025A88(v80, _s5BoardV13ShareMetadataVMa);
    sub_10000CAAC(v141, &qword_1019F33D0);
    v31 = v157;
    if (v104 == v111)
    {
      goto LABEL_91;
    }

LABEL_7:
    sub_100025A88(v26, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v33 = (v33 + 1) & v160;
    v34 = v33 >> 6;
    v35 = *(v161 + 8 * (v33 >> 6));
    v36 = 1 << v33;
    v29 = v159;
    if ((v35 & (1 << v33)) == 0)
    {
      v28 = v142;
      v30 = v144;
      goto LABEL_87;
    }
  }

  v58 = 0;
  v59 = (*(v152 + 80) + 32) & ~*(v152 + 80);
  v151 = v55 + v59;
  v60 = v56 + v59;
  while (v58 < *(v55 + 16))
  {
    v61 = *(v152 + 72) * v58;
    v62 = v150;
    result = sub_10000C42C(v151 + v61, v150, type metadata accessor for CRLDisjointPosition.Element);
    if (v58 >= *(v56 + 16))
    {
      goto LABEL_95;
    }

    v63 = v149;
    sub_10000C42C(v60 + v61, v149, type metadata accessor for CRLDisjointPosition.Element);
    if (*v62 != *v63)
    {
      sub_100025A88(v63, type metadata accessor for CRLDisjointPosition.Element);
      sub_100025A88(v62, type metadata accessor for CRLDisjointPosition.Element);
      goto LABEL_47;
    }

    v64 = static UUID.== infix(_:_:)();
    sub_100025A88(v63, type metadata accessor for CRLDisjointPosition.Element);
    result = sub_100025A88(v62, type metadata accessor for CRLDisjointPosition.Element);
    v31 = v157;
    if ((v64 & 1) == 0)
    {
      goto LABEL_7;
    }

    if (v57 == ++v58)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

void *sub_1005C19E0(uint64_t a1)
{
  v2 = type metadata accessor for CRLFolderIdentifier(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1005B981C(&qword_1019F3790);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v12 = v10 + 56;
    v13 = *(v3 + 80);
    v32 = v9;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v3 + 72);
    while (1)
    {
      v34 = v11;
      sub_10000C42C(v33 + v14 * v11, v8, type metadata accessor for CRLFolderIdentifier);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_100016770(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v15 = type metadata accessor for CRLFolderIdentifierStorage(0);
      v16 = &v8[*(v15 + 20)];
      v17 = *v16;
      v18 = *(v16 + 1);
      String.hash(into:)();
      v19 = Hasher._finalize()();
      v20 = -1 << *(v10 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = *(v12 + 8 * (v21 >> 6));
      v24 = 1 << v21;
      if (((1 << v21) & v23) != 0)
      {
        v25 = ~v20;
        do
        {
          sub_10000C42C(*(v10 + 48) + v21 * v14, v6, type metadata accessor for CRLFolderIdentifier);
          if (static UUID.== infix(_:_:)())
          {
            v26 = &v6[*(v15 + 20)];
            v27 = *v26 == v17 && *(v26 + 1) == v18;
            if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              sub_100025A88(v6, type metadata accessor for CRLFolderIdentifier);
              sub_100025A88(v8, type metadata accessor for CRLFolderIdentifier);
              v9 = v32;
              goto LABEL_4;
            }
          }

          sub_100025A88(v6, type metadata accessor for CRLFolderIdentifier);
          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = *(v12 + 8 * (v21 >> 6));
          v24 = 1 << v21;
        }

        while ((v23 & (1 << v21)) != 0);
        v9 = v32;
      }

      *(v12 + 8 * v22) = v23 | v24;
      result = sub_1000251F0(v8, *(v10 + 48) + v21 * v14, type metadata accessor for CRLFolderIdentifier);
      v29 = *(v10 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v10 + 16) = v31;
LABEL_4:
      v11 = v34 + 1;
      if (v34 + 1 == v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_1005C1D4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_1019F37D0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 4 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 4 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

Swift::Int sub_1005C1E88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_1019F37C8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

unint64_t sub_1005C1FC4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_1005B981C(&unk_1019F3690);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = _swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 7;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_100016770(&qword_1019FB8C0, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = v7[v11 >> 6];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_100016770(&qword_1019F36A0, &type metadata accessor for AnyCancellable);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = v7[v11 >> 6];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      v7[v12] = v14 | v13;
      *(v3[6] + 8 * v11) = v8;
      v16 = v3[2];
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

__n128 sub_1005C25A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1005C25B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005C25D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

unint64_t sub_1005C3D70()
{
  result = qword_1019F3CA8;
  if (!qword_1019F3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F3CA8);
  }

  return result;
}

uint64_t sub_1005C3DC4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

void *sub_1005C3FB8()
{
  v1 = _swiftEmptyArrayStorage;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = *(v0 + 16);
      v47 = v6;
      v48 = v4;
      if (v6)
      {
        v7 = [v3 containerRenderablesForRep:v4];
        if (v7)
        {
          v8 = v7;
          sub_100006370(0, &qword_101A00020);
          v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v9 = _swiftEmptyArrayStorage;
        }

        v49 = _swiftEmptyArrayStorage;
        v10 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v9 >> 62)
        {
LABEL_85:
          v11 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12 = 0;
        v44 = _swiftEmptyArrayStorage;
        while (v11 != v12)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *(v10 + 16))
            {
              goto LABEL_78;
            }

            v13 = *(v9 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          v16 = [v13 layer];

          ++v12;
          if (v16)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v44 = v49;
            v12 = v15;
          }
        }

        sub_100798D18(v44);
        LOBYTE(v6) = v47;
        v5 = v48;
      }

      if ((v6 & 2) != 0)
      {
        v17 = [v5 overlayRenderables];
        sub_100006370(0, &qword_101A00020);
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = v1;
        v10 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v9 >> 62)
        {
          v18 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v19 = 0;
        v45 = _swiftEmptyArrayStorage;
        while (v18 != v19)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_80;
            }

            v20 = *(v9 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_79;
          }

          v23 = [v20 layer];

          ++v19;
          if (v23)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v45 = v1;
            v19 = v22;
          }
        }

        sub_100798D18(v45);
        LOBYTE(v6) = v47;
        v5 = v48;
      }

      if ((v6 & 4) != 0)
      {
        v24 = [v5 contentPlatformView];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 layer];

          if (v26)
          {
            v27 = v26;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }
        }
      }

      if ((v6 & 8) != 0)
      {
        v28 = [v5 additionalRenderablesOverRenderable];
        sub_100006370(0, &qword_101A00020);
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = v1;
        v10 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v9 >> 62)
        {
          v29 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v29 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v30 = 0;
        v46 = _swiftEmptyArrayStorage;
        while (v29 != v30)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v30 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_82;
            }

            v31 = *(v9 + 8 * v30 + 32);
          }

          v32 = v31;
          v33 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_81;
          }

          v34 = [v31 layer];

          ++v30;
          if (v34)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v46 = v1;
            v30 = v33;
          }
        }

        sub_100798D18(v46);
        LOBYTE(v6) = v47;
        v5 = v48;
      }

      if ((v6 & 0x10) != 0)
      {
        v35 = [v5 additionalRenderablesUnderRenderable];
        sub_100006370(0, &qword_101A00020);
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = v1;
        v10 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v9 >> 62)
        {
          v1 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v1 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v36 = 0;
        v37 = _swiftEmptyArrayStorage;
        while (v1 != v36)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v36 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_84;
            }

            v38 = *(v9 + 8 * v36 + 32);
          }

          v39 = v38;
          v40 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_83;
          }

          v41 = [v38 layer];

          ++v36;
          if (v41)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v37 = v49;
            v36 = v40;
          }
        }

        sub_100798D18(v37);
        LOBYTE(v6) = v47;
        v5 = v48;
      }

      if ((v6 & 0x20) != 0)
      {
        v42 = sub_1005C46D4();
        sub_100798D18(v42);
      }
    }

    else
    {
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1005C46D4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v0 = swift_unknownObjectWeakLoadStrong();
  if (!v0 || (v1 = v0, v2 = [v0 info], v1, !v2))
  {

    return _swiftEmptyArrayStorage;
  }

  type metadata accessor for CRLGroupItem();
  if (!swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_1005F3D0C();
  v4 = v3;
  v58[0] = _swiftEmptyArrayStorage;
  v5 = (v3 & 0xFFFFFFFFFFFFFF8);
  if (v3 >> 62)
  {
LABEL_40:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= v5[2])
      {
        goto LABEL_37;
      }

      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v12 = [Strong repForInfo:v9];

    ++v7;
    if (v12)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v58[0];
      v7 = v11;
    }
  }

  if (v8 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_23:
      v15 = 0;
      v4 = v8 & 0xFFFFFFFFFFFFFF8;
      v5 = v58;
      v16 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v17 = v16;
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v17 = v16;
          v18 = *(v8 + 8 * v15 + 32);
        }

        v19 = v18;
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_38;
        }

        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        swift_unknownObjectWeakAssign();
        v21 = qword_1019F4290;

        v58[2] = v21 & 0xFFFFFFFFFFFFFFE7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100B356F8(0, v17[2] + 1, 1, v17);
        }

        v23 = v17[2];
        v22 = v17[3];
        v24 = v17;
        if (v23 >= v22 >> 1)
        {
          v24 = sub_100B356F8((v22 > 1), v23 + 1, 1, v17);
        }

        v24[2] = v23 + 1;
        v16 = v24;
        sub_1005C4D58(v58, &v24[3 * v23 + 4]);
        ++v15;
        if (v20 == v14)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_43:

  v26 = v16[2];
  if (!v26)
  {

    v13 = _swiftEmptyArrayStorage;
LABEL_79:
    swift_unknownObjectRelease();

    return v13;
  }

  v27 = 0;
  v28 = v16 + 4;
  v13 = _swiftEmptyArrayStorage;
  v53 = v16;
  v51 = v16 + 4;
  v52 = v16[2];
  while (1)
  {
    v57 = v13;
    if (v27 >= v16[2])
    {
      break;
    }

    v29 = sub_1005C4D90(&v28[3 * v27], v59);
    v30 = sub_1005C3FB8(v29);
    v31 = v30;
    v32 = v30 >> 62;
    if (v30 >> 62)
    {
      v33 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 >>= 62;
    if (v57 >> 62)
    {
      v50 = _CocoaArrayWrapper.endIndex.getter();
      v35 = v50 + v33;
      if (__OFADD__(v50, v33))
      {
LABEL_76:
        __break(1u);
LABEL_77:

        goto LABEL_79;
      }
    }

    else
    {
      v34 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v35 = v34 + v33;
      if (__OFADD__(v34, v33))
      {
        goto LABEL_76;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v13)
      {
        v13 = v57;
        v36 = v57 & 0xFFFFFFFFFFFFFF8;
        if (v35 <= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

LABEL_57:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_58;
    }

    if (v13)
    {
      goto LABEL_57;
    }

LABEL_58:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v13 = result;
    v36 = result & 0xFFFFFFFFFFFFFF8;
LABEL_59:
    v55 = v33;
    v37 = *(v36 + 16);
    v38 = *(v36 + 24);
    if (v32)
    {
      v40 = v36;
      result = _CocoaArrayWrapper.endIndex.getter();
      v36 = v40;
      v39 = result;
      if (!result)
      {
LABEL_45:

        result = sub_1005C4DC8(v59);
        v16 = v53;
        if (v55 > 0)
        {
          goto LABEL_82;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v39 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
        goto LABEL_45;
      }
    }

    if (((v38 >> 1) - v37) < v55)
    {
      goto LABEL_83;
    }

    v41 = v36 + 8 * v37 + 32;
    v54 = v36;
    if (v32)
    {
      if (v39 < 1)
      {
        goto LABEL_85;
      }

      sub_1005C4DF8();
      for (i = 0; i != v39; ++i)
      {
        sub_1005B981C(&qword_1019F4298);
        v44 = sub_100777974(v58, i, v31);
        v46 = *v45;
        (v44)(v58, 0);
        *(v41 + 8 * i) = v46;
      }

      result = sub_1005C4DC8(v59);
      v28 = v51;
      v26 = v52;
      v42 = v55;
    }

    else
    {
      sub_100006370(0, &qword_1019FFFF0);
      v42 = v55;
      swift_arrayInitWithCopy();

      sub_1005C4DC8(v59);
    }

    v16 = v53;
    if (v42 > 0)
    {
      v47 = *(v54 + 16);
      v48 = __OFADD__(v47, v42);
      v49 = v47 + v42;
      if (v48)
      {
        goto LABEL_84;
      }

      *(v54 + 16) = v49;
    }

LABEL_46:
    if (++v27 == v26)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

unint64_t sub_1005C4DF8()
{
  result = qword_101A00000;
  if (!qword_101A00000)
  {
    sub_1005C4E5C(&qword_1019F4298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00000);
  }

  return result;
}

uint64_t sub_1005C4E5C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLAssetDownloadManager.CRLAssetDownloadManagerThrottlingConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRLAssetDownloadManager.CRLAssetDownloadManagerThrottlingConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

unint64_t sub_1005C4F14()
{
  result = qword_1019F42A0;
  if (!qword_1019F42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F42A0);
  }

  return result;
}

unint64_t sub_1005C4F6C()
{
  result = qword_1019F42A8;
  if (!qword_1019F42A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F42A8);
  }

  return result;
}

unint64_t sub_1005C4FC4()
{
  result = qword_1019F42B0;
  if (!qword_1019F42B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F42B0);
  }

  return result;
}

unint64_t sub_1005C501C()
{
  result = qword_1019F42B8;
  if (!qword_1019F42B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F42B8);
  }

  return result;
}

Swift::Int sub_1005C5070()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1005C50B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1005C50FC()
{
  if (*v0)
  {
    return 0x6574496472616F62;
  }

  else
  {
    return 0x6564496472616F62;
  }
}

uint64_t sub_1005C5150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6564496472616F62 && a2 == 0xEF7265696669746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574496472616F62 && a2 == 0xED0000444955556DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1005C523C(uint64_t a1)
{
  v2 = sub_1005C5B28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005C5278(uint64_t a1)
{
  v2 = sub_1005C5B28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005C52B4()
{
  sub_1005C5BE0(v0 + OBJC_IVAR____TtC8Freeform41CRLTombstoneBoardItemRealTimeChangeRecord_boardIdentifier);
  v1 = OBJC_IVAR____TtC8Freeform41CRLTombstoneBoardItemRealTimeChangeRecord_boardItemUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLTombstoneBoardItemRealTimeChangeRecord()
{
  result = qword_1019F42E8;
  if (!qword_1019F42E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005C53B4()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1005C5480(void *a1)
{
  v3 = sub_1005B981C(&qword_1019F43B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100020E58(a1, a1[3]);
  sub_1005C5B28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  sub_1005C5C3C(&qword_1019F43B8, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    type metadata accessor for UUID();
    sub_1005C5C3C(&qword_1019F43C0, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t *sub_1005C5684(void *a1)
{
  v4 = *v1;
  v23 = v2;
  v24 = v4;
  v5 = type metadata accessor for UUID();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v8);
  v21 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1005B981C(&qword_1019F4390);
  v10 = *(v22 - 8);
  __chkstk_darwin(v22);
  v12 = &v19 - v11;
  sub_100020E58(a1, a1[3]);
  sub_1005C5B28();
  v13 = v23;
  v14 = a1;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v10;
    v16 = v20;
    v26 = 0;
    sub_1005C5C3C(&qword_1019F43A0, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = OBJC_IVAR____TtC8Freeform41CRLTombstoneBoardItemRealTimeChangeRecord_boardIdentifier;
    sub_1005C5B7C(v21, v1 + OBJC_IVAR____TtC8Freeform41CRLTombstoneBoardItemRealTimeChangeRecord_boardIdentifier);
    v25 = 1;
    sub_1005C5C3C(&qword_1019F43A8, &type metadata accessor for UUID);
    v17 = v22;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v15 + 8))(v12, v17);
    (*(v19 + 32))(v1 + OBJC_IVAR____TtC8Freeform41CRLTombstoneBoardItemRealTimeChangeRecord_boardItemUUID, v7, v16);
  }

  sub_100005070(v14);
  return v1;
}

uint64_t *sub_1005C5A28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1005C5684(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1005C5AA4(uint64_t a1)
{
  *(a1 + 8) = sub_1005C5C3C(&qword_1019F4380, type metadata accessor for CRLTombstoneBoardItemRealTimeChangeRecord);
  result = sub_1005C5C3C(&qword_1019F4388, type metadata accessor for CRLTombstoneBoardItemRealTimeChangeRecord);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1005C5B28()
{
  result = qword_1019F4398;
  if (!qword_1019F4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4398);
  }

  return result;
}

uint64_t sub_1005C5B7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005C5BE0(uint64_t a1)
{
  v2 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005C5C3C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005C5C98()
{
  result = qword_1019F43C8;
  if (!qword_1019F43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F43C8);
  }

  return result;
}

unint64_t sub_1005C5CF0()
{
  result = qword_1019F43D0;
  if (!qword_1019F43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F43D0);
  }

  return result;
}

unint64_t sub_1005C5D48()
{
  result = qword_1019F43D8;
  if (!qword_1019F43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F43D8);
  }

  return result;
}

uint64_t sub_1005C5D9C()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform32CRLCommandHistoryItemDatabaseRow_boardIdentifier);
  v1 = OBJC_IVAR____TtC8Freeform32CRLCommandHistoryItemDatabaseRow_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10002640C(*(v0 + OBJC_IVAR____TtC8Freeform32CRLCommandHistoryItemDatabaseRow_commandHistoryItemData), *(v0 + OBJC_IVAR____TtC8Freeform32CRLCommandHistoryItemDatabaseRow_commandHistoryItemData + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLCommandHistoryItemDatabaseRow()
{
  result = qword_1019F4408;
  if (!qword_1019F4408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005C5EB0()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1005C5F90()
{
  sub_1005C5FFC(v0 + OBJC_IVAR____TtC8Freeform22AASUserSamplingManager_userId);

  return swift_deallocClassInstance();
}

uint64_t sub_1005C5FFC(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019F6990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005C6064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a3;
  v5 = type metadata accessor for UUID();
  v103 = *(v5 - 8);
  v104 = v5;
  v6 = __chkstk_darwin(v5);
  v105 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v106 = &v92 - v9;
  __chkstk_darwin(v8);
  v107 = &v92 - v10;
  v102 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v11 = __chkstk_darwin(v102);
  v96 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v95 = &v92 - v14;
  v15 = __chkstk_darwin(v13);
  v100 = &v92 - v16;
  __chkstk_darwin(v15);
  v99 = &v92 - v17;
  v18 = type metadata accessor for CRLBoardIdentifier(0);
  v19 = __chkstk_darwin(v18 - 8);
  v93 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v94 = &v92 - v22;
  v23 = __chkstk_darwin(v21);
  v98 = &v92 - v24;
  __chkstk_darwin(v23);
  v97 = &v92 - v25;
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = (&v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  v109 = *(v30 - 8);
  v110 = v30;
  __chkstk_darwin(v30);
  v101 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(*(a1 + 16) + 32);
  *v29 = v32;
  v33 = enum case for DispatchPredicate.onQueue(_:);
  v34 = *(v27 + 104);
  v34(v29, enum case for DispatchPredicate.onQueue(_:), v26);
  v35 = v32;
  v36 = _dispatchPreconditionTest(_:)();
  v37 = *(v27 + 8);
  v37(v29, v26);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v38 = sub_10002C280(a2, a1);
  if (!v38)
  {

    goto LABEL_7;
  }

  v36 = sub_100024DD4(v38, v39);
  v108 = v40;
  if (__OFADD__(a2, 4))
  {
LABEL_20:
    __break(1u);
    swift_once();
    v59 = static OS_os_log.crlDefault;
    v60 = static os_log_type_t.error.getter();
    sub_100005404(v59, &_mh_execute_header, v60, "Error deserializing CRLAssetReferrerIdentifier data.", 52, 2, _swiftEmptyArrayStorage);

    sub_10002640C(v36, v108);
    v43 = 1;
    v45 = v110;
    v44 = v111;
    return (*(v33 + 56))(v44, v43, 1, v45);
  }

  v41 = sub_10001E378(a2 + 4, a1);
  if ((v42 & 1) == 0)
  {
    if (v41 == 1)
    {
      v107 = *(*(a1 + 16) + 32);
      *v29 = v107;
      v34(v29, v33, v26);
      v49 = v107;
      v50 = _dispatchPreconditionTest(_:)();
      v37(v29, v26);
      if (v50)
      {
        v51 = sub_10002C280(a2 + 1, a1);
        v53 = v105;
        v54 = v106;
        if (!v51)
        {
          goto LABEL_5;
        }

        v55 = sub_100024DD4(v51, v52);
        v57 = v56;
        v58 = v108;
        sub_100024E98(v36, v108);
        UUID.init(crl_data:)(v36, v58);
        sub_100024EEC(v53, v55, v57);
        v79 = v78;
        v81 = v80;

        sub_10002640C(v36, v108);
        sub_10002640C(v55, v57);
        v82 = *(v103 + 32);
        v83 = v96;
        v84 = v53;
        v85 = v104;
        v82(v96, v84, v104);
        v86 = (v83 + *(v102 + 20));
        *v86 = v79;
        v86[1] = v81;
        v87 = v95;
        sub_100025258(v83, v95, type metadata accessor for CRLBoardIdentifierStorage);
        v88 = v87;
        v89 = v93;
        sub_100025258(v88, v93, type metadata accessor for CRLBoardIdentifierStorage);
        v90 = v94;
        sub_100025258(v89, v94, type metadata accessor for CRLBoardIdentifier);
        v91 = *(sub_1005B981C(&qword_1019F4720) + 48);
        v75 = v101;
        v82(v101, v54, v85);
        sub_100025258(v90, v75 + v91, type metadata accessor for CRLBoardIdentifier);
LABEL_18:
        v76 = v110;
        swift_storeEnumTagMultiPayload();
        v77 = v111;
        sub_100025258(v75, v111, type metadata accessor for CRLAssetReferrerIdentifier);
        v45 = v76;
        v44 = v77;
        v43 = 0;
        goto LABEL_8;
      }

      __break(1u);
    }

    else
    {
      if (!v41)
      {
        v47 = v108;
        sub_100024E98(v36, v108);
        v48 = v107;
        sub_100024EEC(v107, v36, v47);
        v64 = v63;
        v66 = v65;
        v67 = v108;
        sub_10002640C(v36, v108);

        sub_10002640C(v36, v67);
        v68 = v100;
        (*(v103 + 32))(v100, v48, v104);
        v69 = (v68 + *(v102 + 20));
        *v69 = v64;
        v69[1] = v66;
        v70 = v99;
        sub_100025258(v68, v99, type metadata accessor for CRLBoardIdentifierStorage);
        v71 = v70;
        v72 = v98;
        sub_100025258(v71, v98, type metadata accessor for CRLBoardIdentifierStorage);
        v73 = v72;
        v74 = v97;
        sub_100025258(v73, v97, type metadata accessor for CRLBoardIdentifier);
        v75 = v101;
        sub_100025258(v74, v101, type metadata accessor for CRLBoardIdentifier);
        goto LABEL_18;
      }

      v50 = v110;
      if (qword_1019F2098 == -1)
      {
LABEL_17:
        v61 = static OS_os_log.crlDefault;
        v62 = static os_log_type_t.error.getter();
        sub_100005404(v61, &_mh_execute_header, v62, "Invalid CRLAssetReferrerIdentifier type.", 40, 2, _swiftEmptyArrayStorage);

        sub_10002640C(v36, v108);
        v43 = 1;
        v44 = v111;
        v45 = v50;
        goto LABEL_8;
      }
    }

    swift_once();
    goto LABEL_17;
  }

LABEL_5:

  sub_10002640C(v36, v108);
LABEL_7:
  v43 = 1;
  v45 = v110;
  v44 = v111;
LABEL_8:
  v33 = v109;
  return (*(v33 + 56))(v44, v43, 1, v45);
}

uint64_t sub_1005C6934()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005C8688(v1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(sub_1005B981C(&qword_1019F4720) + 48);
    (*(v3 + 32))(v5, v11, v2);
    v13 = UUID.crl_data()();
    (*(v3 + 8))(v5, v2);
    sub_100025AE8(&v11[v12], type metadata accessor for CRLBoardIdentifier);
  }

  else
  {
    sub_100025258(v11, v8, type metadata accessor for CRLBoardIdentifier);
    type metadata accessor for CRLBoardIdentifierStorage(0);
    v13 = sub_10084DAE4();
    sub_100025AE8(v8, type metadata accessor for CRLBoardIdentifier);
  }

  return v13;
}

uint64_t sub_1005C6B90(void *a1)
{
  v40 = sub_1005B981C(&qword_1019F4768);
  v33 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v27 - v2;
  v3 = type metadata accessor for UUID();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019F4770);
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v34 = type metadata accessor for CRLBoardIdentifier(0);
  v8 = __chkstk_darwin(v34);
  v38 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1005B981C(&qword_1019F4778);
  v15 = *(v36 - 8);
  __chkstk_darwin(v36);
  v17 = &v27 - v16;
  sub_100020E58(a1, a1[3]);
  sub_1005C8D58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1005C8688(v35, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(sub_1005B981C(&qword_1019F4720) + 48);
    v20 = v30;
    v19 = v31;
    v21 = v32;
    (*(v31 + 32))(v30, v14, v32);
    sub_100025258(&v14[v18], v38, type metadata accessor for CRLBoardIdentifier);
    v44 = 1;
    sub_1005C8DAC();
    v22 = v36;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v43 = 0;
    sub_1005C86EC(&qword_1019F43C0, &type metadata accessor for UUID);
    v23 = v37;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v23)
    {
      v42 = 1;
      sub_1005C86EC(&qword_1019F4780, type metadata accessor for CRLBoardIdentifier);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v33 + 8))(v39, v40);
    sub_100025AE8(v38, type metadata accessor for CRLBoardIdentifier);
    (*(v19 + 8))(v20, v21);
    return (*(v15 + 8))(v17, v22);
  }

  else
  {
    sub_100025258(v14, v11, type metadata accessor for CRLBoardIdentifier);
    v41 = 0;
    sub_1000562EC();
    v25 = v36;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_1005C86EC(&qword_1019F4780, type metadata accessor for CRLBoardIdentifier);
    v26 = v29;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v28 + 8))(v7, v26);
    sub_100025AE8(v11, type metadata accessor for CRLBoardIdentifier);
    return (*(v15 + 8))(v17, v25);
  }
}

uint64_t sub_1005C7194()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005C8688(v0, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(sub_1005B981C(&qword_1019F4720) + 48);
    (*(v2 + 32))(v4, v10, v1);
    sub_100025258(&v10[v11], v7, type metadata accessor for CRLBoardIdentifier);
    Hasher._combine(_:)(1uLL);
    sub_1005C86EC(&qword_1019FB870, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    type metadata accessor for CRLBoardIdentifierStorage(0);
    String.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_100025258(v10, v7, type metadata accessor for CRLBoardIdentifier);
    Hasher._combine(_:)(0);
    sub_1005C86EC(&qword_1019FB870, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    type metadata accessor for CRLBoardIdentifierStorage(0);
    String.hash(into:)();
  }

  return sub_100025AE8(v7, type metadata accessor for CRLBoardIdentifier);
}

uint64_t sub_1005C74A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v48 = sub_1005B981C(&qword_1019F4730);
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v39 - v3;
  v4 = sub_1005B981C(&qword_1019F4738);
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v46 = &v39 - v5;
  v6 = sub_1005B981C(&qword_1019F4740);
  v49 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v39 - v14;
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v18 = a1[3];
  v52 = a1;
  sub_100020E58(a1, v18);
  sub_1005C8D58();
  v19 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v41 = v15;
    v42 = v12;
    v20 = v46;
    v21 = v47;
    v22 = v48;
    v51 = v9;
    v23 = v50;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = (2 * *(v24 + 16)) | 1;
    v53 = v24;
    v54 = v24 + 32;
    v55 = 0;
    v56 = v25;
    v26 = sub_10074DC24();
    if (v26 == 2 || v55 != v56 >> 1)
    {
      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      sub_1005B981C(&qword_101A0AEE0);
      *v30 = v51;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v28);
      swift_willThrow();
      (*(v49 + 8))(v8, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v26)
      {
        v57 = 1;
        sub_1005C8DAC();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v27 = v49;
        v40 = v17;
        type metadata accessor for UUID();
        v57 = 0;
        sub_1005C86EC(&qword_1019F43A8, &type metadata accessor for UUID);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v46 = *(sub_1005B981C(&qword_1019F4720) + 48);
        type metadata accessor for CRLBoardIdentifier(0);
        v57 = 1;
        sub_1005C86EC(&qword_1019F4758, type metadata accessor for CRLBoardIdentifier);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v45 + 8))(v21, v22);
        (*(v27 + 8))(v8, v6);
        swift_unknownObjectRelease();
        v36 = v42;
        swift_storeEnumTagMultiPayload();
        v37 = v36;
        v38 = v40;
      }

      else
      {
        v57 = 0;
        sub_1000562EC();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v49;
        v40 = v17;
        type metadata accessor for CRLBoardIdentifier(0);
        sub_1005C86EC(&qword_1019F4758, type metadata accessor for CRLBoardIdentifier);
        v33 = v41;
        v34 = v20;
        v35 = v44;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v43 + 8))(v34, v35);
        (*(v32 + 8))(v8, v6);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v38 = v40;
        v37 = v33;
        v23 = v50;
      }

      sub_100025258(v37, v38, type metadata accessor for CRLAssetReferrerIdentifier);
      sub_100025258(v38, v23, type metadata accessor for CRLAssetReferrerIdentifier);
    }
  }

  return sub_100005070(v52);
}

Swift::Int UUID.UUIDCodingError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1005C7D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1005C7D80(uint64_t a1)
{
  v2 = sub_1000562EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005C7DBC(uint64_t a1)
{
  v2 = sub_1000562EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005C7DF8()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1005C7E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1005C7EE0(uint64_t a1)
{
  v2 = sub_1005C8DAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005C7F1C(uint64_t a1)
{
  v2 = sub_1005C8DAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005C7F58()
{
  if (*v0)
  {
    return 0x6574496472616F62;
  }

  else
  {
    return 0x6472616F62;
  }
}

uint64_t sub_1005C7F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6472616F62 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574496472616F62 && a2 == 0xE90000000000006DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1005C8074(uint64_t a1)
{
  v2 = sub_1005C8D58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005C80B0(uint64_t a1)
{
  v2 = sub_1005C8D58();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1005C811C()
{
  Hasher.init(_seed:)();
  sub_1005C7194();
  return Hasher._finalize()();
}

Swift::Int sub_1005C8160()
{
  Hasher.init(_seed:)();
  sub_1005C7194();
  return Hasher._finalize()();
}

uint64_t sub_1005C81A0()
{
  sub_100025AE8(v0 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_referrerIdentifier, type metadata accessor for CRLAssetReferrerIdentifier);

  v1 = OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_assetUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1005C829C()
{
  result = type metadata accessor for CRLAssetReferrerIdentifier(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1005C83FC()
{
  type metadata accessor for CRLBoardIdentifier(319);
  if (v0 <= 0x3F)
  {
    sub_1005C8470();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1005C8470()
{
  if (!qword_1019F46C8)
  {
    type metadata accessor for UUID();
    type metadata accessor for CRLBoardIdentifier(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1019F46C8);
    }
  }
}

unint64_t sub_1005C852C()
{
  result = qword_1019F4700;
  if (!qword_1019F4700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4700);
  }

  return result;
}

unint64_t sub_1005C8584()
{
  result = qword_1019F4708;
  if (!qword_1019F4708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4708);
  }

  return result;
}

unint64_t sub_1005C85DC()
{
  result = qword_1019F4710;
  if (!qword_1019F4710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4710);
  }

  return result;
}

unint64_t sub_1005C8634()
{
  result = qword_1019F4718;
  if (!qword_1019F4718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4718);
  }

  return result;
}

uint64_t sub_1005C8688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005C86EC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005C8734(uint64_t a1, uint64_t a2)
{
  v49 = type metadata accessor for UUID();
  v4 = *(v49 - 8);
  __chkstk_darwin(v49);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v48 = &v46 - v10;
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v20 = sub_1005B981C(&qword_1019F4728);
  __chkstk_darwin(v20 - 8);
  v22 = &v46 - v21;
  v24 = &v46 + *(v23 + 56) - v21;
  sub_1005C8688(a1, &v46 - v21);
  sub_1005C8688(a2, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1005C8688(v22, v16);
    v25 = *(sub_1005B981C(&qword_1019F4720) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v49;
      (*(v4 + 32))(v6, v24, v49);
      v27 = v48;
      sub_100025258(&v16[v25], v48, type metadata accessor for CRLBoardIdentifier);
      v28 = &v24[v25];
      v29 = v47;
      sub_100025258(v28, v47, type metadata accessor for CRLBoardIdentifier);
      v30 = static UUID.== infix(_:_:)();
      v31 = *(v4 + 8);
      v31(v16, v26);
      if (v30 & 1) != 0 && (static UUID.== infix(_:_:)())
      {
        v32 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
        v33 = *(v27 + v32);
        v34 = *(v27 + v32 + 8);
        v35 = (v29 + v32);
        if (v33 == *v35 && v34 == v35[1])
        {
          v31(v6, v26);
          sub_100025AE8(v29, type metadata accessor for CRLBoardIdentifier);
          v36 = v27;
LABEL_26:
          sub_100025AE8(v36, type metadata accessor for CRLBoardIdentifier);
LABEL_27:
          sub_100025AE8(v22, type metadata accessor for CRLAssetReferrerIdentifier);
          return 1;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v31(v6, v26);
        sub_100025AE8(v29, type metadata accessor for CRLBoardIdentifier);
        sub_100025AE8(v27, type metadata accessor for CRLBoardIdentifier);
        if (v45)
        {
          goto LABEL_27;
        }

        goto LABEL_22;
      }

      v31(v6, v26);
      sub_100025AE8(v29, type metadata accessor for CRLBoardIdentifier);
      v43 = v27;
LABEL_21:
      sub_100025AE8(v43, type metadata accessor for CRLBoardIdentifier);
LABEL_22:
      sub_100025AE8(v22, type metadata accessor for CRLAssetReferrerIdentifier);
      return 0;
    }

    sub_100025AE8(&v16[v25], type metadata accessor for CRLBoardIdentifier);
    (*(v4 + 8))(v16, v49);
  }

  else
  {
    sub_1005C8688(v22, v19);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100025258(v24, v13, type metadata accessor for CRLBoardIdentifier);
      if (static UUID.== infix(_:_:)())
      {
        v37 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
        v38 = *&v19[v37];
        v39 = *&v19[v37 + 8];
        v40 = &v13[v37];
        if (v38 == *v40 && v39 == *(v40 + 1))
        {
          sub_100025AE8(v13, type metadata accessor for CRLBoardIdentifier);
          v36 = v19;
          goto LABEL_26;
        }

        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100025AE8(v13, type metadata accessor for CRLBoardIdentifier);
        sub_100025AE8(v19, type metadata accessor for CRLBoardIdentifier);
        if (v42)
        {
          goto LABEL_27;
        }

        goto LABEL_22;
      }

      sub_100025AE8(v13, type metadata accessor for CRLBoardIdentifier);
      v43 = v19;
      goto LABEL_21;
    }

    sub_100025AE8(v19, type metadata accessor for CRLBoardIdentifier);
  }

  sub_1005C8CF0(v22);
  return 0;
}

uint64_t sub_1005C8CF0(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019F4728);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005C8D58()
{
  result = qword_1019F4748;
  if (!qword_1019F4748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4748);
  }

  return result;
}

unint64_t sub_1005C8DAC()
{
  result = qword_1019F4750;
  if (!qword_1019F4750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4750);
  }

  return result;
}

unint64_t sub_1005C8E34()
{
  result = qword_1019F4788;
  if (!qword_1019F4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4788);
  }

  return result;
}

unint64_t sub_1005C8E8C()
{
  result = qword_1019F4790;
  if (!qword_1019F4790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4790);
  }

  return result;
}

unint64_t sub_1005C8EE4()
{
  result = qword_1019F4798;
  if (!qword_1019F4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4798);
  }

  return result;
}

unint64_t sub_1005C8F3C()
{
  result = qword_1019F47A0;
  if (!qword_1019F47A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F47A0);
  }

  return result;
}

unint64_t sub_1005C8F94()
{
  result = qword_1019F47A8;
  if (!qword_1019F47A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F47A8);
  }

  return result;
}

unint64_t sub_1005C8FEC()
{
  result = qword_1019F47B0;
  if (!qword_1019F47B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F47B0);
  }

  return result;
}

unint64_t sub_1005C9044()
{
  result = qword_1019F47B8;
  if (!qword_1019F47B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F47B8);
  }

  return result;
}

unint64_t sub_1005C909C()
{
  result = qword_1019F47C0;
  if (!qword_1019F47C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F47C0);
  }

  return result;
}

unint64_t sub_1005C90F4()
{
  result = qword_1019F47C8;
  if (!qword_1019F47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F47C8);
  }

  return result;
}

UIFontWeight sub_1005C9164()
{
  result = UIFontWeightBold;
  qword_1019F47D0 = *&UIFontWeightBold;
  return result;
}

UIFontWeight sub_1005C91A8()
{
  result = UIFontWeightRegular;
  qword_1019F47E8 = *&UIFontWeightRegular;
  return result;
}

id sub_1005C91EC(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void sub_1005C9230(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v12 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v12);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v6 movieItem];
  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = v15;
  if (**&v15[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] != &off_1019F58C8)
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();

  sub_1005B981C(&qword_101A28680);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  v17 = &v14[*(v12 + 40)];
  v5 = *v17;
  v18 = *(v17 + 1);

  sub_1005CAA84(v14);
  if (!v18)
  {
    return;
  }

  if (qword_1019F1260 != -1)
  {
    goto LABEL_24;
  }

LABEL_5:
  v19 = *&qword_1019F47D0;
  if (qword_1019F1268 != -1)
  {
    swift_once();
  }

  v20 = qword_1019F47D8;
  if (qword_1019F1270 != -1)
  {
    swift_once();
  }

  v21 = qword_1019F47E0;
  CGContextSaveGState(a1);
  v22 = [objc_allocWithZone(CATextLayer) init];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 preferredFontForTextStyle:v20];
  v56 = a1;
  v55[1] = v5;
  if (v19 != UIFontWeightRegular)
  {
    v26 = sub_100C9CC5C(v19);

    v25 = v26;
  }

  sub_1005B981C(&unk_101A11100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  *(inited + 32) = NSFontAttributeName;
  v28 = sub_1005CAAE0();
  *(inited + 40) = v25;
  *(inited + 64) = v28;
  *(inited + 72) = NSForegroundColorAttributeName;
  v29 = NSFontAttributeName;
  v30 = v25;
  v31 = NSForegroundColorAttributeName;
  v32 = v21;
  v33 = [v21 CGColor];
  type metadata accessor for CGColor(0);
  v35 = v34;
  *(inited + 80) = v33;
  *(inited + 104) = v34;
  *(inited + 112) = NSBackgroundColorAttributeName;
  v36 = objc_opt_self();
  v37 = NSBackgroundColorAttributeName;
  v38 = [v36 clearColor];
  v39 = [v38 CGColor];

  *(inited + 144) = v35;
  *(inited + 120) = v39;
  sub_10006E310(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_101A0DE70);
  swift_arrayDestroy();
  v40 = objc_allocWithZone(NSAttributedString);
  v41 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1005CAB2C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v43 = [v40 initWithString:v41 attributes:isa];

  [v24 setFont:v30];
  [v30 pointSize];
  [v24 setFontSize:?];
  v44 = [v32 CGColor];
  [v24 setForegroundColor:v44];

  v45 = v43;
  [v24 setString:v45];

  v57.origin.x = a2;
  v57.origin.y = a3;
  v57.size.width = a4;
  v57.size.height = a5;
  v46 = CGRectGetWidth(v57) + -24.0;
  v58.origin.x = a2;
  v58.origin.y = a3;
  v58.size.width = a4;
  v58.size.height = a5;
  Height = CGRectGetHeight(v58);
  v48 = 0;
  v49 = 0.0;
  if (v46 <= 0.0)
  {
    v51 = v56;
  }

  else
  {
    v50 = Height;
    v51 = v56;
    if (Height > 0.0)
    {
      v52 = CTLineCreateWithAttributedString(v45);
      BoundsWithOptions = CTLineGetBoundsWithOptions(v52, 0);
      width = BoundsWithOptions.size.width;
      v54 = BoundsWithOptions.size.height;

      if (v54 >= v50)
      {
        v48 = 0;
      }

      else if (width <= v46)
      {
        v48 = 0;
        v49 = v54;
      }

      else
      {
        v48 = v54 + v54 < v50;
        if (v54 + v54 >= v50)
        {
          v49 = v54;
        }

        else
        {
          v49 = v54 + v54;
        }
      }
    }
  }

  CGContextTranslateCTM(v51, 12.0, 12.0);
  [v24 setWrapped:v48];
  [v24 setTruncationMode:kCATruncationEnd];
  [v24 setAlignmentMode:kCAAlignmentCenter];
  [v24 setBounds:{a2, a3, v46, v49}];
  [v24 drawInContext:v51];
  CGContextRestoreGState(v51);
}

void sub_1005C9948(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v14 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v14);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v7 movieItem];
  if (!v17)
  {
    __break(1u);
    return;
  }

  v18 = v17;
  if (**&v17[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] != &off_1019F58C8)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();

  sub_1005B981C(&qword_101A28680);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  v19 = &v16[*(v14 + 44)];
  v6 = *v19;
  v20 = *(v19 + 1);

  sub_1005CAA84(v16);
  if (!v20)
  {
    return;
  }

  if (qword_1019F1278 != -1)
  {
    goto LABEL_20;
  }

LABEL_5:
  v21 = *&qword_1019F47E8;
  if (qword_1019F1280 != -1)
  {
    swift_once();
  }

  v22 = qword_1019F47F0;
  if (qword_1019F1288 != -1)
  {
    swift_once();
  }

  v23 = qword_1019F47F8;
  CGContextSaveGState(a1);
  v24 = [objc_allocWithZone(CATextLayer) init];
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 preferredFontForTextStyle:v22];
  v56 = a1;
  v55[1] = v6;
  if (v21 != UIFontWeightRegular)
  {
    v28 = sub_100C9CC5C(v21);

    v27 = v28;
  }

  v29 = a6 + 0.0;
  sub_1005B981C(&unk_101A11100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  *(inited + 32) = NSFontAttributeName;
  v31 = sub_1005CAAE0();
  *(inited + 40) = v27;
  *(inited + 64) = v31;
  *(inited + 72) = NSForegroundColorAttributeName;
  v32 = NSFontAttributeName;
  v33 = v27;
  v34 = NSForegroundColorAttributeName;
  v35 = v23;
  v36 = [v23 CGColor];
  type metadata accessor for CGColor(0);
  v38 = v37;
  *(inited + 80) = v36;
  *(inited + 104) = v37;
  *(inited + 112) = NSBackgroundColorAttributeName;
  v39 = objc_opt_self();
  v40 = NSBackgroundColorAttributeName;
  v41 = [v39 clearColor];
  v42 = [v41 CGColor];

  *(inited + 144) = v38;
  *(inited + 120) = v42;
  sub_10006E310(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_101A0DE70);
  swift_arrayDestroy();
  v43 = objc_allocWithZone(NSAttributedString);
  v44 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1005CAB2C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v46 = [v43 initWithString:v44 attributes:isa];

  [v26 setFont:v33];
  [v33 pointSize];
  [v26 setFontSize:?];
  v47 = [v35 CGColor];
  [v26 setForegroundColor:v47];

  v48 = v46;
  [v26 setString:v48];

  v57.origin.x = a2;
  v57.origin.y = a3;
  v57.size.width = a4;
  v57.size.height = a5;
  v49 = CGRectGetWidth(v57) + -24.0;
  v58.origin.x = a2;
  v58.origin.y = a3;
  v58.size.width = a4;
  v58.size.height = a5;
  Height = CGRectGetHeight(v58);
  v51 = 0.0;
  if (v49 <= 0.0)
  {
    v53 = v56;
  }

  else
  {
    v52 = Height;
    v53 = v56;
    if (Height > 0.0)
    {
      v54 = CTLineCreateWithAttributedString(v48);
      BoundsWithOptions = CTLineGetBoundsWithOptions(v54, 0);
      v51 = BoundsWithOptions.size.height;

      if (v51 >= v52)
      {
        v51 = 0.0;
      }
    }
  }

  CGContextTranslateCTM(v53, 12.0, v29);
  [v26 setWrapped:0];
  [v26 setTruncationMode:kCATruncationEnd];
  [v26 setAlignmentMode:kCAAlignmentCenter];
  [v26 setBounds:{a2, a3, v49, v51}];
  [v26 drawInContext:v53];
  CGContextRestoreGState(v53);
}

void sub_1005CA040(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v9);
  v11 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [v4 movieItem];
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  if (**&v12[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] != &off_1019F58C8)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();

  sub_1005B981C(&qword_101A28680);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  v14 = *&v11[*(v9 + 44) + 8];

  sub_1005CAA84(v11);
  if (!v14)
  {
    return;
  }

  if (qword_1019F1278 != -1)
  {
    goto LABEL_17;
  }

LABEL_5:
  v15 = *&qword_1019F47E8;
  if (qword_1019F1280 != -1)
  {
    swift_once();
  }

  v16 = qword_1019F47F0;
  if (qword_1019F1288 != -1)
  {
    swift_once();
  }

  v17 = qword_1019F47F8;
  v18 = [objc_opt_self() preferredFontForTextStyle:v16];
  if (v15 != UIFontWeightRegular)
  {
    v19 = sub_100C9CC5C(v15);

    v18 = v19;
  }

  sub_1005B981C(&unk_101A11100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  *(inited + 32) = NSFontAttributeName;
  v21 = sub_1005CAAE0();
  *(inited + 40) = v18;
  *(inited + 64) = v21;
  *(inited + 72) = NSForegroundColorAttributeName;
  v22 = NSFontAttributeName;
  v23 = v18;
  v24 = NSForegroundColorAttributeName;
  v25 = [v17 CGColor];
  type metadata accessor for CGColor(0);
  v27 = v26;
  *(inited + 80) = v25;
  *(inited + 104) = v26;
  *(inited + 112) = NSBackgroundColorAttributeName;
  v28 = objc_opt_self();
  v29 = NSBackgroundColorAttributeName;
  v30 = [v28 clearColor];
  v31 = [v30 CGColor];

  *(inited + 144) = v27;
  *(inited + 120) = v31;
  sub_10006E310(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_101A0DE70);
  swift_arrayDestroy();
  v32 = objc_allocWithZone(NSAttributedString);
  v33 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1005CAB2C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v35 = [v32 initWithString:v33 attributes:isa];

  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  v36 = CGRectGetWidth(v40) + -24.0;
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v41.size.height = a4;
  Height = CGRectGetHeight(v41);
  if (v36 <= 0.0 || Height <= 0.0)
  {
  }

  else
  {
    v38 = CTLineCreateWithAttributedString(v35);
    CTLineGetBoundsWithOptions(v38, 0);
  }
}

void sub_1005CA574(double a1, double a2)
{
  v5 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v5);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [v2 movieItem];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  if (**&v8[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] != &off_1019F58C8)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();

  sub_1005B981C(&qword_101A28680);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  v10 = *&v7[*(v5 + 40) + 8];

  sub_1005CAA84(v7);
  if (!v10)
  {
    return;
  }

  if (qword_1019F1260 != -1)
  {
    goto LABEL_17;
  }

LABEL_5:
  v11 = *&qword_1019F47D0;
  if (qword_1019F1268 != -1)
  {
    swift_once();
  }

  v12 = qword_1019F47D8;
  if (qword_1019F1270 != -1)
  {
    swift_once();
  }

  v13 = qword_1019F47E0;
  v14 = [objc_opt_self() preferredFontForTextStyle:v12];
  if (v11 != UIFontWeightRegular)
  {
    v15 = sub_100C9CC5C(v11);

    v14 = v15;
  }

  sub_1005B981C(&unk_101A11100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  *(inited + 32) = NSFontAttributeName;
  v17 = sub_1005CAAE0();
  *(inited + 40) = v14;
  *(inited + 64) = v17;
  *(inited + 72) = NSForegroundColorAttributeName;
  v18 = NSFontAttributeName;
  v19 = v14;
  v20 = NSForegroundColorAttributeName;
  v21 = [v13 CGColor];
  type metadata accessor for CGColor(0);
  v23 = v22;
  *(inited + 80) = v21;
  *(inited + 104) = v22;
  *(inited + 112) = NSBackgroundColorAttributeName;
  v24 = objc_opt_self();
  v25 = NSBackgroundColorAttributeName;
  v26 = [v24 clearColor];
  v27 = [v26 CGColor];

  *(inited + 144) = v23;
  *(inited + 120) = v27;
  sub_10006E310(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_101A0DE70);
  swift_arrayDestroy();
  v28 = objc_allocWithZone(NSAttributedString);
  v29 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1005CAB2C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v31 = [v28 initWithString:v29 attributes:isa];

  if (a1 + -24.0 <= 0.0 || a2 + -12.0 <= 0.0)
  {
  }

  else
  {
    v32 = CTLineCreateWithAttributedString(v31);
    CTLineGetBoundsWithOptions(v32, 0);
  }
}

uint64_t sub_1005CAA84(uint64_t a1)
{
  v2 = type metadata accessor for CRLMovieItemAssetData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005CAAE0()
{
  result = qword_101A0DE60;
  if (!qword_101A0DE60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A0DE60);
  }

  return result;
}

unint64_t sub_1005CAB2C()
{
  result = qword_1019F34A0;
  if (!qword_1019F34A0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F34A0);
  }

  return result;
}

id sub_1005CAC70(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for HUDView();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_1005CACBC(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HUDView();
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_1005CAD04(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7)
{
  v15.receiver = a1;
  v15.super_class = type metadata accessor for HUDView();
  v12 = *a7;
  v13 = v15.receiver;
  objc_msgSendSuper2(&v15, v12, a2, a3, a4, a5);
  if (*(v13 + OBJC_IVAR____TtC8Freeform7HUDView_clipToCapsule) == 1)
  {
    [v13 bounds];
    Height = CGRectGetHeight(v16);
    sub_1005CAE64(Height * 0.5);
  }
}

void sub_1005CADC4(SEL *a1, double a2, double a3, double a4, double a5)
{
  v12.receiver = v5;
  v12.super_class = type metadata accessor for HUDView();
  objc_msgSendSuper2(&v12, *a1, a2, a3, a4, a5);
  if (*(v5 + OBJC_IVAR____TtC8Freeform7HUDView_clipToCapsule) == 1)
  {
    [v5 bounds];
    Height = CGRectGetHeight(v13);
    sub_1005CAE64(Height * 0.5);
  }
}

void sub_1005CAE64(CGFloat a1)
{
  v3 = [v1 layer];
  if (v1[OBJC_IVAR____TtC8Freeform7HUDView_clipToCapsule] == 1)
  {
    [v1 bounds];
    a1 = CGRectGetHeight(v11) * 0.5;
  }

  [v3 setCornerRadius:a1];

  v4 = *&v1[OBJC_IVAR____TtC8Freeform7HUDView_contentView];
  if (v4)
  {
    v5 = [v4 layer];
    if (v5)
    {
      v9 = v5;
      v6 = [v1 layer];
      [v6 cornerRadius];
      v8 = v7;

      [v9 setCornerRadius:v8];
      [v9 setCornerCurve:kCACornerCurveContinuous];
      [v9 setMasksToBounds:1];
    }
  }
}

void sub_1005CAFC0(void *a1)
{
  v2 = OBJC_IVAR____TtC8Freeform7HUDView_contentView;
  v6 = *&v1[OBJC_IVAR____TtC8Freeform7HUDView_contentView];
  *&v1[OBJC_IVAR____TtC8Freeform7HUDView_contentView] = a1;
  v3 = a1;
  [v6 removeFromSuperview];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSubview:v5];
    sub_100B480BC(v5, v1);
  }
}

id HUDView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HUDView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005CB0A8(unint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  [v2 userInterfaceLayoutDirection];

  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() animationWithKeyPath:v3];

  if (a1 > 1)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v4 setFromValue:isa];

    v6 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v4 setToValue:v6];

    [v4 setDuration:0.35];
    if ([objc_opt_self() shouldRemoveMovementAnimations])
    {
      v7 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_1005B981C(&unk_1019F4D60);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_101465920;
      *(v7 + 32) = v4;
      v8 = v4;
    }

    v9 = [objc_allocWithZone(CAAnimationGroup) init];
    if (v7 >> 62)
    {
      sub_1005CC7B0();

      _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1005CC7B0();
    }

    sub_1005CC7B0();
    v10 = Array._bridgeToObjectiveC()().super.isa;

    [v9 setAnimations:v10];

    v11 = v9;
    [v11 setDuration:0.35];
    v12 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseOut];
    [v11 setTimingFunction:v12];

    return v11;
  }

  return result;
}

uint64_t sub_1005CB3DC(unint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() animationWithKeyPath:v2];

  if (a1 > 1)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v3 setFromValue:isa];

    v5 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v3 setToValue:v5];

    [v3 setDuration:0.35];
    return v3;
  }

  return result;
}

uint64_t *sub_1005CB504@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_1005CB53C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1005CC618(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1005CB570(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = aBlock - v12;
  v14 = [v3 manager];
  if (v14)
  {
    v15 = v14;
    v16 = [v3 hideTimer];
    [v16 invalidate];

    [v3 setHideTimer:0];
    if (([v3 hiding] & 1) == 0)
    {
      if ((a1 & 1) == 0)
      {
        v17 = [v3 timeStartedShowing];
        if (v17)
        {
          v18 = v17;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v7 + 32))(v13, v9, v6);
          Date.timeIntervalSinceNow.getter();
          v20 = fabs(v19);
          [v3 minimumShowDuration];
          if (v20 >= v21 || ([v3 minimumShowDuration], v22 <= v20))
          {
            [v15 hideWithHudController:v3];
            [v3 setHiding:1];
            swift_unknownObjectRelease();
          }

          else
          {
            v23 = objc_opt_self();
            [v3 timeLeftToShow];
            v25 = v24;
            v26 = swift_allocObject();
            v26[2] = a2;
            v26[3] = v15;
            v26[4] = v3;
            aBlock[4] = sub_1005CC808;
            aBlock[5] = v26;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = *"";
            aBlock[2] = sub_10068B39C;
            aBlock[3] = &unk_10187BD30;
            v27 = _Block_copy(aBlock);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();

            v28 = [v23 scheduledTimerWithTimeInterval:0 repeats:v27 block:v25];
            _Block_release(v27);
            [v3 setHideTimer:v28];
            swift_unknownObjectRelease();
          }

          return (*(v7 + 8))(v13, v6);
        }
      }

      [v15 hideWithHudController:v3];
      [v3 setHiding:1];
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    result = [v3 showing];
    if (result)
    {
      if (qword_1019F20C8 != -1)
      {
        swift_once();
      }

      v30 = static OS_os_log.crlStatusHUD;
      v31 = static os_log_type_t.error.getter();

      return sub_100005404(v30, &_mh_execute_header, v31, "Trying to hide while showing without a manager", 46, 2, _swiftEmptyArrayStorage);
    }
  }

  return result;
}

id sub_1005CB9C0(int a1, id a2, void *a3)
{
  [a2 hideWithHudController:?];
  [a3 setHiding:1];
  v4 = [a3 hideTimer];
  [v4 invalidate];

  return [a3 setHideTimer:0];
}

uint64_t sub_1005CBA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a1 != 1)
    {
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    sub_1005CBBE8(1.0);
    [v4 setAnimating:1];
    v10 = swift_allocObject();
    v10[2] = a4;
    v10[3] = v4;
    v10[4] = 1;
    v10[5] = a2;
    v10[6] = a3;
    swift_unknownObjectRetain();
    sub_10002E7A8(a2);
    sub_1005CBDA0(1uLL, sub_1005CC690, v10, a4);
  }

  else
  {
    sub_1005CBBE8(0.0);
    [v4 setAnimating:1];
    [v4 updateForAppearance];
    v8 = swift_allocObject();
    v8[2] = a4;
    v8[3] = v4;
    v8[4] = 0;
    v8[5] = a2;
    v8[6] = a3;
    swift_unknownObjectRetain();
    sub_10002E7A8(a2);
    sub_1005CBFEC(0, sub_1005CC6A8, v8, a4);
  }
}

void sub_1005CBBE8(double a1)
{
  v3 = [v1 containerView];
  v5 = [v3 layer];

  *&v4 = a1;
  [v5 setOpacity:v4];
}

uint64_t sub_1005CBC78(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a6;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a2;
  sub_10002E7A8(a4);
  swift_unknownObjectRetain();
  sub_1005CBDA0(a3, sub_1005CC794, v11, a6);
}

id sub_1005CBD28(uint64_t a1, void (*a2)(uint64_t), int a3, id a4)
{
  if (a2)
  {

    a2(a1);
    sub_1000C1014(a2);
  }

  return [a4 setAnimating:0];
}

void sub_1005CBDA0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = [v4 hudView];
  v11 = [v10 layer];

  v12 = [v5 containerView];
  v13 = [v12 layer];

  v14 = objc_opt_self();
  [v14 begin];
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = v5;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v20[4] = sub_1005CC7A0;
  v20[5] = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = *"";
  v20[2] = sub_100007638;
  v20[3] = &unk_10187BCB8;
  v16 = _Block_copy(v20);
  swift_unknownObjectRetain();
  sub_10002E7A8(a2);

  [v14 setCompletionBlock:v16];
  _Block_release(v16);
  v17 = sub_1005CB0A8(a1);
  [v11 addAnimation:v17 forKey:0];

  v18 = sub_1005CB3DC(a1);
  [v13 addAnimation:v18 forKey:0];

  [v14 commit];
  LODWORD(v19) = 1.0;
  if (!a1)
  {
    goto LABEL_4;
  }

  if (a1 == 1)
  {
    v19 = 0.0;
LABEL_4:
    [v13 setOpacity:v19];

    return;
  }

  v20[0] = a1;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

void sub_1005CBFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = [v5 containerView];
  v11 = [v10 superview];

  [v11 layoutIfNeeded];
  v12 = [v5 heightConstraint];
  if (!v12)
  {
    goto LABEL_7;
  }

  if (!a1)
  {
    v13 = 56.0;
LABEL_6:
    v14 = v12;
    [v12 setConstant:v13];

LABEL_7:
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = v5;
    v24 = sub_1005CC6D8;
    v25 = v16;
    v20 = _NSConcreteStackBlock;
    v21 = *"";
    v22 = sub_100007638;
    v23 = &unk_10187BBF0;
    v17 = _Block_copy(&v20);
    swift_unknownObjectRetain();

    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a2;
    v18[4] = a3;
    v18[5] = v5;
    v24 = sub_1005CC6E0;
    v25 = v18;
    v20 = _NSConcreteStackBlock;
    v21 = *"";
    v22 = sub_1005CC4AC;
    v23 = &unk_10187BC40;
    v19 = _Block_copy(&v20);
    swift_unknownObjectRetain();
    sub_10002E7A8(a2);

    [v15 animateWithDuration:0x20000 delay:v17 options:v19 animations:0.15 completion:0.0];
    _Block_release(v19);
    _Block_release(v17);
    return;
  }

  if (a1 == 1)
  {
    v13 = 0.0;
    goto LABEL_6;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

uint64_t sub_1005CC274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a6;
  v11[3] = a2;
  v11[4] = a4;
  v11[5] = a5;
  swift_unknownObjectRetain();
  sub_10002E7A8(a4);
  sub_1005CBFEC(a3, sub_1005CC7FC, v11, a6);
}

id sub_1005CC324(int a1, id a2, void (*a3)(id))
{
  [a2 setHiding:0];
  if (a3)
  {

    a3(a2);
    sub_1000C1014(a3);
  }

  return [a2 setAnimating:0];
}

id sub_1005CC3AC(void *a1, uint64_t a2, void (*a3)(void *))
{
  result = [a1 setShowing:a2 == 0];
  if (a3)
  {

    a3(a1);

    return sub_1000C1014(a3);
  }

  return result;
}

void sub_1005CC430(void *a1)
{
  v1 = [a1 containerView];
  v2 = [v1 superview];

  [v2 layoutIfNeeded];
}

uint64_t sub_1005CC4AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_1005CC500()
{
  v1 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v1 - 8);
  *&v0[OBJC_IVAR____TtC8Freeform7HUDView_contentView] = 0;
  v0[OBJC_IVAR____TtC8Freeform7HUDView_clipToCapsule] = 1;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for HUDView();
  v2 = objc_msgSendSuper2(&v6, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (_UISolariumEnabled())
  {
    static _Glass._GlassVariant.regular.getter();
    v5[3] = type metadata accessor for _Glass();
    v5[4] = &protocol witness table for _Glass;
    sub_10002C58C(v5);
    _Glass.init(_:smoothness:)();
    UIView._background.setter();
    [v2 bounds];
    Height = CGRectGetHeight(v7);
    sub_1005CAE64(Height * 0.5);
  }

  return v2;
}

unint64_t sub_1005CC618(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1005CC62C()
{
  result = qword_1019F4808;
  if (!qword_1019F4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4808);
  }

  return result;
}

void sub_1005CC6E0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 40);

    v1(v2);

    sub_1000C1014(v1);
  }
}

uint64_t sub_1005CC74C()
{
  if (*(v0 + 24))
  {
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1005CC7B0()
{
  result = qword_1019F4840;
  if (!qword_1019F4840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F4840);
  }

  return result;
}

unint64_t sub_1005CC828()
{
  result = qword_1019F4848;
  if (!qword_1019F4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4848);
  }

  return result;
}

uint64_t sub_1005CC8B8()
{
  qword_101AD5D80 = 97;
  *algn_101AD5D88 = 0xE100000000000000;
  qword_101AD5D90 = swift_getKeyPath();
  unk_101AD5D98 = 98;
  qword_101AD5DA0 = 0xE100000000000000;
  qword_101AD5DA8 = swift_getKeyPath();
  qword_101AD5DB0 = 99;
  qword_101AD5DB8 = 0xE100000000000000;
  qword_101AD5DC0 = swift_getKeyPath();
  unk_101AD5DC8 = 100;
  qword_101AD5DD0 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD5DD8 = result;
  return result;
}

uint64_t sub_1005CC940@<X0>(uint64_t a1@<X8>)
{
  sub_1005B981C(&qword_1019F49A0);
  v2 = *(type metadata accessor for CRLDisjointPosition.Element() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C6B0;
  v5 = sub_10000C3A0(0xC7uLL) - 99;
  UUID.init()();
  *(v4 + v3) = v5;
  *(a1 + *(type metadata accessor for CRLFolderCRDTData() + 32)) = _swiftEmptyDictionarySingleton;
  CRRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  CRMaxRegister.init(wrappedValue:)();
  sub_100039E08();
  return CRRegister.init(wrappedValue:)();
}

uint64_t sub_1005CCAF4@<X0>(void *a1@<X8>)
{
  if (qword_1019F1290 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = *algn_101AD5D88;
  v3 = qword_101AD5D90;
  v2 = unk_101AD5D98;
  v4 = qword_101AD5DA0;
  v5 = qword_101AD5DA8;
  v6 = qword_101AD5DB0;
  v7 = qword_101AD5DB8;
  v9 = qword_101AD5DC0;
  v8 = unk_101AD5DC8;
  v10 = qword_101AD5DD0;
  v11 = qword_101AD5DD8;
  *a1 = qword_101AD5D80;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v9;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v11;
}

uint64_t sub_1005CCBE0(uint64_t a1)
{
  v2 = sub_1005CD9D0(&qword_1019F49A8);

  return static CRStruct_4.fieldKeys.getter(a1, v2);
}

uint64_t sub_1005CCC44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1005CCCA4(uint64_t a1)
{
  v2 = sub_1005CD9D0(&qword_1019F4948);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1005CCCFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005CD9D0(&qword_1019F49A8);

  return CRStruct_4.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1005CCD64()
{
  sub_1005CD9D0(&qword_1019F49A8);

  return CRStruct_4.actionUndoingDifference(from:)();
}

uint64_t sub_1005CCDD4()
{
  sub_1005CD9D0(&qword_1019F49A8);

  return CRStruct_4.apply(_:)();
}

uint64_t sub_1005CCE3C()
{
  sub_1005CD9D0(&qword_1019F49A8);

  return CRStruct_4.hasDelta(from:)();
}

uint64_t sub_1005CCEA4()
{
  sub_1005CD9D0(&qword_1019F49A8);

  return CRStruct_4.delta(_:from:)();
}

uint64_t sub_1005CCF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005CD9D0(&qword_1019F49A8);

  return CRStruct_4.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1005CCF8C()
{
  sub_1005CD9D0(&qword_1019F49A8);

  return CRStruct_4.merge(delta:)();
}

uint64_t sub_1005CCFF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005CD9D0(&qword_1019F49A8);

  return CRStruct_4.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1005CD064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005CD9D0(&qword_1019F49A8);

  return CRStruct_4.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1005CD0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005CD9D0(&qword_1019F49A8);

  return CRStruct_4.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1005CD154(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005CD9D0(&qword_1019F49A8);

  return CRStruct_4.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1005CD1BC()
{
  sub_1005CD9D0(&qword_1019F49A8);

  return CRStruct_4.needToFinalizeTimestamps()();
}

uint64_t sub_1005CD214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005CD9D0(&qword_1019F49A8);

  return CRStruct_4.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1005CD27C()
{
  sub_1005CD9D0(&qword_1019F49A8);

  return CRStruct_4.merge(_:)();
}

uint64_t sub_1005CD2EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005CD9D0(&qword_1019F49A8);

  return CRStruct_4.merge(_:)(a1, a2, v4);
}

uint64_t sub_1005CD50C(uint64_t a1)
{
  v2 = sub_1005CD9D0(&qword_1019F49A8);

  return CRStruct_4.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1005CD7F0()
{
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();

  type metadata accessor for CRLFolderCRDTData();
  sub_1005B981C(&qword_1019F4850);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  sub_1005B981C(&qword_1019F4858);
  CRMaxRegister.wrappedValue.getter();
  CRMaxRegister.wrappedValue.getter();
  sub_1005B981C(&qword_1019F4860);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v0 = sub_1006707A4(v2, v2);

  return v0 & 1;
}

uint64_t sub_1005CD9D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CRLFolderCRDTData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1005CDA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData_strokePathCompactData;
  *&v7[OBJC_IVAR____TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData_strokePathCompactData] = 0;
  v9 = OBJC_IVAR____TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData_maskPath;
  *&v7[OBJC_IVAR____TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData_maskPath] = 0;
  v10 = OBJC_IVAR____TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData_id;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v7[v10], a1, v11);
  *&v7[v8] = a2;
  *&v7[v9] = a3;
  v15.receiver = v7;
  v15.super_class = v3;
  v13 = objc_msgSendSuper2(&v15, "init");
  (*(v12 + 8))(a1, v11);
  return v13;
}

void sub_1005CDDFC(void *a1, uint64_t a2, int a3)
{
  v5 = v3;
  v122 = a2;
  v118 = type metadata accessor for CRLFreehandDrawingCRDTData(0);
  __chkstk_darwin(v118);
  v9 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v10 - 8);
  v117 = &v111 - v11;
  v119 = type metadata accessor for UUID();
  v121 = *(v119 - 8);
  __chkstk_darwin(v119);
  v120 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v14 = [a1 getBoardItemForUUID:isa];

  if (!v14)
  {
    goto LABEL_20;
  }

  v125 = a3;
  type metadata accessor for CRLFreehandDrawingShapeItem();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {

LABEL_20:
    v49 = objc_opt_self();
    v50 = [v49 _atomicIncrementAssertCount];
    v124[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v124);
    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    v53 = [v52 lastPathComponent];

    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v57 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v50;
    v59 = sub_1005CF000();
    *(inited + 96) = v59;
    v60 = sub_1005CF04C();
    *(inited + 104) = v60;
    *(inited + 72) = v51;
    *(inited + 136) = &type metadata for String;
    v61 = sub_1000053B0();
    *(inited + 112) = v54;
    *(inited + 120) = v56;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v61;
    *(inited + 152) = 31;
    v62 = v124[0];
    *(inited + 216) = v59;
    *(inited + 224) = v60;
    *(inited + 192) = v62;
    v63 = v51;
    v64 = v62;
    v65 = static os_log_type_t.error.getter();
    sub_100005404(v57, &_mh_execute_header, v65, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v66 = static os_log_type_t.error.getter();
    sub_100005404(v57, &_mh_execute_header, v66, "Unable to retrieve freehand drawing shape item.", 47, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve freehand drawing shape item.");
    type metadata accessor for __VaListBuilder();
    v67 = swift_allocObject();
    v67[2] = 8;
    v67[3] = 0;
    v67[4] = 0;
    v67[5] = 0;
    v32 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v68 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v69 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v70 = String._bridgeToObjectiveC()();

    [v49 handleFailureInFunction:v68 file:v69 lineNumber:31 isFatal:1 format:v70 args:v32];
    while (1)
    {
LABEL_23:

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v71, v72);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_24:
      sub_1005C5FFC(v32);
      v73 = objc_opt_self();
      v74 = [v73 _atomicIncrementAssertCount];
      v124[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v124);
      StaticString.description.getter();
      v75 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v76 = String._bridgeToObjectiveC()();

      v77 = [v76 lastPathComponent];

      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v81 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v82 = swift_initStackObject();
      *(v82 + 16) = xmmword_10146CA70;
      *(v82 + 56) = &type metadata for Int32;
      *(v82 + 64) = &protocol witness table for Int32;
      *(v82 + 32) = v74;
      v83 = sub_1005CF000();
      *(v82 + 96) = v83;
      v84 = sub_1005CF04C();
      *(v82 + 104) = v84;
      *(v82 + 72) = v75;
      *(v82 + 136) = &type metadata for String;
      v85 = sub_1000053B0();
      *(v82 + 112) = v78;
      *(v82 + 120) = v80;
      *(v82 + 176) = &type metadata for UInt;
      *(v82 + 184) = &protocol witness table for UInt;
      *(v82 + 144) = v85;
      *(v82 + 152) = 40;
      v86 = v124[0];
      *(v82 + 216) = v83;
      *(v82 + 224) = v84;
      *(v82 + 192) = v86;
      v87 = v75;
      v88 = v86;
      v89 = static os_log_type_t.error.getter();
      sub_100005404(v81, &_mh_execute_header, v89, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v82);

      v90 = static os_log_type_t.error.getter();
      sub_100005404(v81, &_mh_execute_header, v90, "Unable to retrieve parent UUID of freehand drawing shape item.", 62, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve parent UUID of freehand drawing shape item.");
      type metadata accessor for __VaListBuilder();
      v91 = swift_allocObject();
      v91[2] = 8;
      v91[3] = 0;
      v91[4] = 0;
      v91[5] = 0;
      v32 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v68 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v69 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v70 = String._bridgeToObjectiveC()();

      [v73 handleFailureInFunction:v68 file:v69 lineNumber:40 isFatal:1 format:v70 args:v32];
    }
  }

  v16 = v15;
  v17 = v14;
  sub_1012E0400(v16, &off_10188FE10);

  if (v4)
  {

    return;
  }

  v115 = v9;
  v116 = a1;
  v18 = OBJC_IVAR____TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData_strokePathCompactData;
  v19 = *(v5 + OBJC_IVAR____TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData_strokePathCompactData);
  v20 = v19;
  sub_100EAEE34(v19);
  v21 = OBJC_IVAR____TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData_maskPath;
  v22 = *(v5 + OBJC_IVAR____TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData_maskPath);
  v23 = v22;
  sub_100EAF710(v22);
  v24 = v17;
  sub_1012CF6CC(v16, &off_10188FE10, v125);

  v112 = v21;
  v113 = v5;
  v25 = *(v5 + v18);
  v26 = v18;
  v27 = v116;
  v114 = 0;
  if (!v25)
  {
    goto LABEL_14;
  }

  v28 = v25;
  if (([v28 shouldSolveMath] & 1) == 0)
  {

LABEL_14:
    goto LABEL_15;
  }

  v111 = v26;
  v29 = *(**(v16 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 272);
  v30 = v24;

  v32 = v117;
  v29(v31);

  v33 = v121;
  v34 = v119;
  if ((*(v121 + 48))(v32, 1, v119) == 1)
  {
    goto LABEL_24;
  }

  (*(v33 + 32))(v120, v32, v34);
  v35 = UUID._bridgeToObjectiveC()().super.isa;
  v36 = [v27 getBoardItemForUUID:v35];

  if (!v36)
  {
    goto LABEL_28;
  }

  v117 = v30;
  type metadata accessor for CRLFreehandDrawingItem();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {

LABEL_28:
    v92 = objc_opt_self();
    v93 = [v92 _atomicIncrementAssertCount];
    v124[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v124);
    StaticString.description.getter();
    v94 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v95 = String._bridgeToObjectiveC()();

    v96 = [v95 lastPathComponent];

    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v100 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v101 = swift_initStackObject();
    *(v101 + 16) = xmmword_10146CA70;
    *(v101 + 56) = &type metadata for Int32;
    *(v101 + 64) = &protocol witness table for Int32;
    *(v101 + 32) = v93;
    v102 = sub_1005CF000();
    *(v101 + 96) = v102;
    v103 = sub_1005CF04C();
    *(v101 + 104) = v103;
    *(v101 + 72) = v94;
    *(v101 + 136) = &type metadata for String;
    v104 = sub_1000053B0();
    *(v101 + 112) = v97;
    *(v101 + 120) = v99;
    *(v101 + 176) = &type metadata for UInt;
    *(v101 + 184) = &protocol witness table for UInt;
    *(v101 + 144) = v104;
    *(v101 + 152) = 44;
    v105 = v124[0];
    *(v101 + 216) = v102;
    *(v101 + 224) = v103;
    *(v101 + 192) = v105;
    v106 = v94;
    v107 = v105;
    v108 = static os_log_type_t.error.getter();
    sub_100005404(v100, &_mh_execute_header, v108, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v101);

    v109 = static os_log_type_t.error.getter();
    sub_100005404(v100, &_mh_execute_header, v109, "Unable to retrieve freehand drawing item.", 41, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve freehand drawing item.");
    type metadata accessor for __VaListBuilder();
    v110 = swift_allocObject();
    v110[2] = 8;
    v110[3] = 0;
    v110[4] = 0;
    v110[5] = 0;
    v32 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v68 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v69 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v70 = String._bridgeToObjectiveC()();

    [v92 handleFailureInFunction:v68 file:v69 lineNumber:44 isFatal:1 format:v70 args:v32];
    goto LABEL_23;
  }

  v38 = v37;
  v116 = type metadata accessor for CRLFreehandItemData(0);
  v39 = swift_dynamicCastClassUnconditional();
  v40 = qword_101AD9588;
  swift_beginAccess();
  v41 = v115;
  sub_1005CF0A4(v39 + v40, v115);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  sub_1005CF108(v41);
  if (v123)
  {
    (*(v121 + 8))(v120, v34);

    v26 = v111;
LABEL_15:
    v43 = v112;
    v42 = v113;
    v44 = *(v113 + v26);
    *(v113 + v26) = 0;

    v45 = *(v42 + v43);
    *(v42 + v43) = 0;

    return;
  }

  v46 = v36;
  v47 = v114;
  sub_1012E0400(v38, &off_10188FE10);
  if (!v47)
  {

    swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v126 = 1;

    CRRegister.wrappedValue.setter();
    swift_endAccess();

    v48 = v46;
    sub_1012CF6CC(v38, &off_10188FE10, v125);
    v114 = 0;
    (*(v121 + 8))(v120, v119);

    v26 = v111;
    goto LABEL_15;
  }

  (*(v121 + 8))(v120, v119);
}

void sub_1005CEDC4()
{
  v1 = OBJC_IVAR____TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData_maskPath);
}

id sub_1005CEE4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetFreehandDrawingShapeItemPKData();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetFreehandDrawingShapeItemPKData()
{
  result = qword_1019F49F0;
  if (!qword_1019F49F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005CEF64()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1005CF000()
{
  result = qword_1019F4D30;
  if (!qword_1019F4D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F4D30);
  }

  return result;
}

unint64_t sub_1005CF04C()
{
  result = qword_1019F52E0;
  if (!qword_1019F52E0)
  {
    sub_1005CF000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F52E0);
  }

  return result;
}

uint64_t sub_1005CF0A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLFreehandDrawingCRDTData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005CF108(uint64_t a1)
{
  v2 = type metadata accessor for CRLFreehandDrawingCRDTData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005CF178()
{
  result = qword_1019F4A00;
  if (!qword_1019F4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4A00);
  }

  return result;
}

uint64_t *sub_1005CF1CC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1005CF314(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1012E0400(a1, &off_1018A75D0);
  if (!v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultShapeInsertionPreset_shapeType);
    if (v8 == 2 || v8 == 1)
    {
      memcpy(__dst, (v3 + OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultShapeInsertionPreset_shapeStyle), sizeof(__dst));
      swift_beginAccess();
      type metadata accessor for CRLBoardCRDTData(0);
      memcpy(v10, __dst, sizeof(v10));
      type metadata accessor for CRLBoardInsertStyleData(0);
    }

    else
    {
      if (v8)
      {
        result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return result;
      }

      memcpy(__dst, (v3 + OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultShapeInsertionPreset_shapeStyle), sizeof(__dst));
      swift_beginAccess();
      type metadata accessor for CRLBoardCRDTData(0);
      memcpy(v10, __dst, sizeof(v10));
    }

    sub_10000BE14(__dst, v9, &qword_1019F4B88);
    sub_1005B981C(&unk_1019F4B90);
    CRRegister.wrappedValue.setter();
    swift_endAccess();

    return sub_1012CF6CC(a1, &off_1018A75D0, a3);
  }

  return result;
}

uint64_t sub_1005CF5C4()
{
  memcpy(v2, (v0 + OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultShapeInsertionPreset_shapeStyle), sizeof(v2));
  sub_10000CAAC(v2, &qword_1019F4B88);
}

uint64_t sub_1005CF6D4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultShapeInsertionPreset_actionString);

  return v1;
}

id sub_1005CF714(void *a1)
{
  v1 = a1;
  sub_1010A07F0(v1, 0, __src);
  __src[110] = _swiftEmptyDictionarySingleton;
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__src, v2);
  v3 = type metadata accessor for CRLCommandSetDefaultStickyNoteInsertionPreset();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC8Freeform45CRLCommandSetDefaultStickyNoteInsertionPreset_actionString;
  if (qword_1019F1298 != -1)
  {
    swift_once();
  }

  v6 = &v4[v5];
  v7 = unk_1019F4A10;
  *v6 = qword_1019F4A08;
  *(v6 + 1) = v7;
  memcpy(&v4[OBJC_IVAR____TtC8Freeform45CRLCommandSetDefaultStickyNoteInsertionPreset_stickyStyle], __src, 0x378uLL);
  v10.receiver = v4;
  v10.super_class = v3;

  v8 = objc_msgSendSuper2(&v10, "init");

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

uint64_t sub_1005CF854(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1012E0400(a1, &off_1018A75D0);
  if (!v4)
  {
    memcpy(__dst, (v3 + OBJC_IVAR____TtC8Freeform45CRLCommandSetDefaultStickyNoteInsertionPreset_stickyStyle), sizeof(__dst));
    swift_beginAccess();
    type metadata accessor for CRLBoardCRDTData(0);
    memcpy(v9, __dst, sizeof(v9));
    type metadata accessor for CRLBoardInsertStyleData(0);

    sub_10000BE14(__dst, &v8, &qword_1019F4B78);
    sub_1005B981C(&qword_1019F4B80);
    CRRegister.wrappedValue.setter();
    swift_endAccess();

    return sub_1012CF6CC(a1, &off_1018A75D0, a3);
  }

  return result;
}

uint64_t sub_1005CF9D4()
{
  memcpy(__dst, (v0 + OBJC_IVAR____TtC8Freeform45CRLCommandSetDefaultStickyNoteInsertionPreset_stickyStyle), sizeof(__dst));
  sub_10000CAAC(__dst, &qword_1019F4B78);
}

uint64_t sub_1005CFAE4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform45CRLCommandSetDefaultStickyNoteInsertionPreset_actionString);

  return v1;
}

id sub_1005CFB24(void *a1)
{
  v1 = a1;
  v2 = sub_100D652D4();

  if (v2)
  {
    sub_100B965E4(v2, __dst);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, v3);
    __src[12] = __dst[12];
    __src[13] = __dst[13];
    *&__src[14] = *&__dst[14];
    __src[8] = __dst[8];
    __src[9] = __dst[9];
    __src[10] = __dst[10];
    __src[11] = __dst[11];
    __src[4] = __dst[4];
    __src[5] = __dst[5];
    __src[6] = __dst[6];
    __src[7] = __dst[7];
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    __src[2] = __dst[2];
    __src[3] = __dst[3];
  }

  else
  {
    sub_1005D0BD8(__src);
  }

  v4 = *(**&v1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);
  v5 = v1;

  v7 = v4(v6);

  if (v7)
  {
    sub_100A72CD4(v7, __dst);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, v8);
  }

  else
  {
    sub_1005D0C00(__dst);
  }

  *(&__src[18] + 8) = __dst[4];
  *(&__src[19] + 8) = __dst[5];
  *(&__src[20] + 8) = __dst[6];
  *(&__src[21] + 8) = __dst[7];
  *(&__src[16] + 8) = __dst[2];
  *(&__src[17] + 8) = __dst[3];
  *(&__src[14] + 8) = __dst[0];
  *(&__src[15] + 8) = __dst[1];
  v9 = sub_100BB96E0();
  memcpy(__dst, __src, 0x168uLL);
  *(&__dst[22] + 2) = v9;
  *&__dst[23] = _swiftEmptyDictionarySingleton;
  *(&__dst[23] + 1) = _swiftEmptyDictionarySingleton;
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, v10);
  v11 = type metadata accessor for CRLCommandSetDefaultImageInsertionPreset();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultImageInsertionPreset_actionString;
  if (qword_1019F1298 != -1)
  {
    swift_once();
  }

  v14 = &v12[v13];
  v15 = unk_1019F4A10;
  *v14 = qword_1019F4A08;
  *(v14 + 1) = v15;
  memcpy(&v12[OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultImageInsertionPreset_imageStyle], __dst, 0x180uLL);
  v18.receiver = v12;
  v18.super_class = v11;

  v16 = objc_msgSendSuper2(&v18, "init");

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v16;
}

uint64_t sub_1005CFDB0(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1012E0400(a1, &off_1018A75D0);
  if (!v4)
  {
    memcpy(__dst, (v3 + OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultImageInsertionPreset_imageStyle), sizeof(__dst));
    swift_beginAccess();
    type metadata accessor for CRLBoardCRDTData(0);
    memcpy(v9, __dst, sizeof(v9));
    type metadata accessor for CRLBoardInsertStyleData(0);

    sub_10000BE14(__dst, v8, &qword_1019F4B68);
    sub_1005B981C(&qword_1019F4B70);
    CRRegister.wrappedValue.setter();
    swift_endAccess();

    return sub_1012CF6CC(a1, &off_1018A75D0, a3);
  }

  return result;
}

uint64_t sub_1005CFFB4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultImageInsertionPreset_actionString);

  return v1;
}

id sub_1005CFFF4(void *a1)
{
  v1 = a1;
  v2 = sub_100D652D4();

  if (v2)
  {
    sub_100B965E4(v2, __dst);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, v3);
    __src[12] = __dst[12];
    __src[13] = __dst[13];
    *&__src[14] = *&__dst[14];
    __src[8] = __dst[8];
    __src[9] = __dst[9];
    __src[10] = __dst[10];
    __src[11] = __dst[11];
    __src[4] = __dst[4];
    __src[5] = __dst[5];
    __src[6] = __dst[6];
    __src[7] = __dst[7];
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    __src[2] = __dst[2];
    __src[3] = __dst[3];
  }

  else
  {
    sub_1005D0BD8(__src);
  }

  v4 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v5 = *&v1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  v6 = *(*v5 + 440);
  v7 = v1;

  v9 = v6(v8);

  if (v9)
  {
    sub_100A72CD4(v9, __dst);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, v10);
  }

  else
  {
    sub_1005D0C00(__dst);
  }

  *(&__src[18] + 8) = __dst[4];
  *(&__src[19] + 8) = __dst[5];
  *(&__src[20] + 8) = __dst[6];
  *(&__src[21] + 8) = __dst[7];
  *(&__src[16] + 8) = __dst[2];
  *(&__src[17] + 8) = __dst[3];
  *(&__src[14] + 8) = __dst[0];
  *(&__src[15] + 8) = __dst[1];
  v11 = *&v1[v4];
  if (*v11 != &off_1019F58C8)
  {
    __break(1u);
    goto LABEL_11;
  }

  swift_beginAccess();
  type metadata accessor for CRLMovieItemCRDTData(0);

  sub_1005B981C(&qword_1019F4B60);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  memcpy(__dst, __src, 0x168uLL);
  DWORD2(__dst[22]) = v18;
  *&__dst[23] = _swiftEmptyDictionarySingleton;
  *(&__dst[23] + 1) = _swiftEmptyDictionarySingleton;
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, v12);
  v5 = type metadata accessor for CRLCommandSetDefaultMovieInsertionPreset();
  v11 = objc_allocWithZone(v5);
  v9 = OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultMovieInsertionPreset_actionString;
  if (qword_1019F1298 != -1)
  {
LABEL_11:
    swift_once();
  }

  v13 = &v9[v11];
  v14 = unk_1019F4A10;
  *v13 = qword_1019F4A08;
  *(v13 + 1) = v14;
  memcpy(v11 + OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultMovieInsertionPreset_movieStyle, __dst, 0x180uLL);
  v17.receiver = v11;
  v17.super_class = v5;

  v15 = objc_msgSendSuper2(&v17, "init");

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

uint64_t sub_1005D0330(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1012E0400(a1, &off_1018A75D0);
  if (!v4)
  {
    memcpy(__dst, (v3 + OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultMovieInsertionPreset_movieStyle), sizeof(__dst));
    swift_beginAccess();
    type metadata accessor for CRLBoardCRDTData(0);
    memcpy(v9, __dst, sizeof(v9));
    type metadata accessor for CRLBoardInsertStyleData(0);

    sub_10000BE14(__dst, v8, &qword_1019F4B50);
    sub_1005B981C(&qword_1019F4B58);
    CRRegister.wrappedValue.setter();
    swift_endAccess();

    return sub_1012CF6CC(a1, &off_1018A75D0, a3);
  }

  return result;
}

uint64_t sub_1005D04D4(void *a1, uint64_t *a2)
{
  memcpy(__dst, (v2 + *a1), 0x180uLL);
  sub_10000CAAC(__dst, a2);
}

uint64_t sub_1005D057C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  memcpy(v6, (a1 + *a3), sizeof(v6));
  sub_10000CAAC(v6, a4);
}

uint64_t sub_1005D0618()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultMovieInsertionPreset_actionString);

  return v1;
}

uint64_t sub_1005D0768(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1012E0400(a1, &off_1018A75D0);
  if (!v4)
  {
    memcpy(__dst, (v3 + OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultTableInsertionPreset_tableStyle), sizeof(__dst));
    swift_beginAccess();
    type metadata accessor for CRLBoardCRDTData(0);
    memcpy(v9, __dst, sizeof(v9));
    type metadata accessor for CRLBoardInsertStyleData(0);

    sub_10000BE14(__dst, &v8, &qword_1019F4B40);
    sub_1005B981C(&qword_1019F4B48);
    CRRegister.wrappedValue.setter();
    swift_endAccess();

    return sub_1012CF6CC(a1, &off_1018A75D0, a3);
  }

  return result;
}

uint64_t sub_1005D08E8()
{
  memcpy(__dst, (v0 + OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultTableInsertionPreset_tableStyle), sizeof(__dst));
  sub_10000CAAC(__dst, &qword_1019F4B40);
}

id sub_1005D0968(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1005D0A44()
{
  result = qword_1019F4B38;
  if (!qword_1019F4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4B38);
  }

  return result;
}

uint64_t sub_1005D0A98()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultTableInsertionPreset_actionString);

  return v1;
}

void sub_1005D0AD8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1019F4A08 = v5;
  unk_1019F4A10 = v7;
}

double sub_1005D0BD8(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1005D0C00(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_1005D0C18()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() colorNamed:v0];

  qword_101AD5DE0 = v1;
}

uint64_t sub_1005D0CF0()
{
  result = _UISolariumEnabled();
  v1 = 6.0;
  if (result)
  {
    v1 = 17.0;
  }

  qword_101AD5E10 = *&v1;
  return result;
}

id sub_1005D0D38()
{
  v1 = v0;
  if ((*((swift_isaMask & *v0) + 0x108))())
  {
    sub_100006370(0, &qword_1019F6190);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v3 = sub_1005D10E8(v2, 0, 0, 0);

    return v3;
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element);
    v6 = [v5 tintColor];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 UIColor];
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_1005D10E8(0, v8, 0, 0);

    v10 = [v5 action];
    if (v10)
    {
      [v9 addTarget:*(v1 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController) action:v10 forControlEvents:64];
    }

    return v9;
  }
}

void sub_1005D0EFC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 16);
      if ([a1 sender])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0u;
        v11 = 0u;
      }

      v12[0] = v10;
      v12[1] = v11;
      if (*(&v11 + 1))
      {
        type metadata accessor for CRLiOSMiniFormatterBaseLayerButton();
        if (swift_dynamicCast())
        {
          v6 = (*((swift_isaMask & *v3) + 0x100))();
          if (v6)
          {
            v7 = v6;
            ObjectType = swift_getObjectType();
            (*(v5 + 16))(v7, v9, v3, ObjectType, v5);
            sub_1005D6500(1, 0);

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();

        sub_10000CAAC(v12, &unk_1019F4D00);
      }
    }

    else
    {
    }
  }
}

id sub_1005D10E8(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_1005B981C(&unk_1019F4D90);
  __chkstk_darwin(v10 - 8);
  v65 = &v63 - v11;
  v12 = sub_1005B981C(&unk_1019F4CD0);
  v13 = __chkstk_darwin(v12 - 8);
  v66 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v63 - v15;
  v17 = type metadata accessor for UIButton.Configuration();
  v67 = *(v17 - 8);
  v68 = v17;
  v18 = __chkstk_darwin(v17);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v63 - v21;
  static UIButton.Configuration.plain()();
  if (!a2)
  {
    v23 = [objc_opt_self() labelColor];
  }

  v63 = a2;
  UIButton.Configuration.baseForegroundColor.setter();
  v24 = [objc_opt_self() mainScreen];
  v25 = [v24 traitCollection];

  LODWORD(v24) = [v25 crl_isUserInterfaceStyleDark];
  if (v24)
  {
    if (qword_1019F12B0 != -1)
    {
      swift_once();
    }

    v26 = &qword_101AD5DF0;
  }

  else
  {
    if (qword_1019F12A8 != -1)
    {
      swift_once();
    }

    v26 = &qword_101AD5DE8;
  }

  v27 = *v26;
  UIButton.Configuration.baseBackgroundColor.setter();
  v28 = a3;
  if (!a3)
  {
    v29 = [*(v5 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element) image];
    if (v29)
    {
      v30 = v29;
      v28 = [v29 UIImage];
    }

    else
    {
      v28 = 0;
    }
  }

  v31 = a3;
  v32 = v28;
  v33 = UIButton.Configuration.image.setter();
  (*((swift_isaMask & *v5) + 0xF8))(v33);
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  type metadata accessor for CRLiOSMiniFormatterBaseLayerButton();
  (*(v67 + 16))(v20, v22, v68);
  v34 = a1;
  v35 = UIButton.init(configuration:primaryAction:)();
  swift_unknownObjectWeakAssign();
  v36 = v5 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel;
  if (*(v5 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel + 8))
  {
    v37 = v35;

    v38 = String._bridgeToObjectiveC()();
  }

  else
  {
    v39 = v35;
    v38 = 0;
  }

  [v35 setAccessibilityLabel:v38];

  v40 = v35;
  [v40 setShowsLargeContentViewer:1];
  if (*(v36 + 1))
  {

    v41 = String._bridgeToObjectiveC()();
  }

  else
  {
    v41 = 0;
  }

  [v40 setLargeContentTitle:v41];

  [v40 setLargeContentImage:v32];
  if (a4)
  {
    v42 = swift_allocObject();
    *(v42 + 16) = a4;
    *(v42 + 24) = v28;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1005D924C;
    *(v43 + 24) = v42;
    aBlock[4] = sub_1005D9254;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10068B39C;
    aBlock[3] = &unk_10187C168;
    v44 = _Block_copy(aBlock);
    v45 = a4;
    v46 = v32;
    v47 = v40;

    [v47 setConfigurationUpdateHandler:v44];
    _Block_release(v44);
  }

  else
  {
    v48 = v40;
    UIButton.configuration.getter();
    if ((*(v67 + 48))(v16, 1, v68))
    {
      sub_10000BE14(v16, v66, &unk_1019F4CD0);
      UIButton.configuration.setter();

      sub_10000CAAC(v16, &unk_1019F4CD0);
    }

    else
    {
      v49 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v50 = swift_allocObject();
      v50[2] = v49;
      v50[3] = a2;
      v51 = v63;
      v50[4] = ObjectType;
      v52 = v51;
      v53 = v65;
      UIConfigurationColorTransformer.init(_:)();
      v54 = type metadata accessor for UIConfigurationColorTransformer();
      (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
      UIButton.Configuration.imageColorTransformer.setter();
      UIButton.configuration.setter();
    }
  }

  v55 = objc_opt_self();
  sub_1005B981C(&unk_1019F4D60);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_10146CE00;
  v57 = [v40 widthAnchor];
  v58 = [v57 constraintEqualToConstant:34.0];

  *(v56 + 32) = v58;
  v59 = [v40 heightAnchor];

  v60 = [v59 constraintEqualToConstant:34.0];
  *(v56 + 40) = v60;
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v55 activateConstraints:isa];

  (*(v67 + 8))(v22, v68);
  return v40;
}