void sub_10035239C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003523E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100352424(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100352468(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003524AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003524F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100352534(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100352578(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003525BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100352600(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100352644(void *a1, void *a2, unint64_t a3, unsigned int a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = sub_100361E00(v9, a4);
  v12 = sub_100362478(v11, v9, v10, a5, a3);
  CFRelease(v11);

  return v12;
}

void sub_100352704(uint64_t a1, void *a2, NSRange *a3, void *a4)
{
  v20 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v26.location = [v11 range];
        v12 = NSIntersectionRange(v26, *(a1 + 32));
        if (v12.length)
        {
          v13 = [*(a1 + 56) charRangeMappedFromStorage:{v12.location, v12.length}];
          v15 = v14;
          v27.location = v13;
          v27.length = v14;
          v16 = NSIntersectionRange(*a3, v27);
          if (v16.length)
          {
            if (v16.location <= a3->location)
            {
              v17 = [v11 key];
              v18 = [v17 isEqualToString:@"CRLWPRenderingOverrideAttributeHiddenText"];

              if (v18)
              {
                sub_1003546CC(v19, v20, a3, v13, v15);
              }
            }

            else
            {
              a3->length = v16.location - a3->location;
            }
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }
}

void sub_100352900(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100352944(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100352988(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (![*(a1 + 112) count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101358DF0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101358E04();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101358E8C();
    }

    v59 = off_1019EDA68;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Must have at least one style run", v46, v47, v48, v49, v50, v51, v52, "void CRLWPCoreTextTypesetter::pChangeToSmallCapsForRange(const NSRange)");
    v60 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pChangeToSmallCapsForRange(const NSRange)"];
    v53 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v60 file:v53 lineNumber:4119 isFatal:1 description:"Must have at least one style run"];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v54, v55);
    abort();
  }

  if (!a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101358C04();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101358C18();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101358CA0();
    }

    v56 = off_1019EDA68;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v57 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pChangeToSmallCapsForRange(const NSRange)"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v57 file:v6 lineNumber:4120 isFatal:0 description:"localRange.length must be >= 1"];
  }

  v7 = [*(a1 + 112) count] - 1;
  v58 = [*(a1 + 112) objectAtIndexedSubscript:v7];
  v8 = [v58 range];
  v10 = a2 + a3;
  if (v8 > a2 || v8 + v9 < v10)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101358CC8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101358CF0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101358D78();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v13 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pChangeToSmallCapsForRange(const NSRange)"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:4125 isFatal:0 description:"Incorrect initial range"];

    v10 = a2 + a3;
  }

  v15 = +[NSCharacterSet lowercaseLetterCharacterSet];
  if (a2 < v10)
  {
    cf = 0;
    do
    {
      v16 = [v15 characterIsMember:*(*(a1 + 64) + 2 * a2)];
      v17 = a2 + 1;
      do
      {
        v18 = v17;
        if (v17 >= v10)
        {
          break;
        }

        v19 = [v15 characterIsMember:*(*(a1 + 64) + 2 * v17)];
        v17 = (v18 + 1);
      }

      while (v16 == v19);
      if (a2 <= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = a2;
      }

      if (a2 >= v18)
      {
        v21 = v18;
      }

      else
      {
        v21 = a2;
      }

      v62 = v21;
      v22 = v58;
      v23 = v22;
      if (v7 + 1 == [*(a1 + 112) count])
      {
        v23 = [*(a1 + 112) objectAtIndexedSubscript:v7];
      }

      v63 = v23;
      v24 = v20 - v62;
      if (v7 == [*(a1 + 112) count] || v62 != objc_msgSend(v63, "range") || v24 != v34)
      {
        v25 = *(a1 + 104);
        if (!v25)
        {
          v26 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101358DA0();
          }

          v27 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            *&buf[4] = v26;
            *&buf[8] = 2082;
            *&buf[10] = "void CRLWPCoreTextTypesetter::pChangeToSmallCapsForRange(const NSRange)";
            *&buf[18] = 2082;
            *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
            *&buf[28] = 1024;
            *&buf[30] = 4150;
            *&buf[34] = 2082;
            *&buf[36] = "_mutableStyleRunArray";
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101358DC8();
          }

          v28 = off_1019EDA68;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v45 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            *&buf[4] = v26;
            *&buf[8] = 2114;
            *&buf[10] = v45;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v29 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pChangeToSmallCapsForRange(const NSRange)"];
          v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
          [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:4150 isFatal:0 description:"invalid nil value for '%{public}s'", "_mutableStyleRunArray"];

          v25 = *(a1 + 104);
        }

        v31 = [v63 copy];
        [v25 addObject:v31];

        v7 = [*(a1 + 112) count] - 1;
        if (v63)
        {
          v32 = [v63 range];
          if (v62 < &v32[v33])
          {
            [v63 setRunLength:v62 - v32];
          }
        }
      }

      v35 = [*(a1 + 112) objectAtIndexedSubscript:v7];
      [v35 setRunLength:v24];
      [v35 setCharIndex:v62];
      v36 = [v22 characterStyle];
      [v35 setCharacterStyle:v36];

      v37 = [v35 flags];
      v38 = 2;
      if (!v16)
      {
        v38 = 0;
      }

      [v35 setFlags:v37 | v38];
      if (v16)
      {
        sub_100353450(a1, v62, v24);
        if (cf || (Size = CTFontGetSize([v22 ctFont]), v43 = CTFontCopyFontDescriptor(objc_msgSend(v22, "ctFont")), (v44 = v43) != 0) && (cf = CTFontCreateWithFontDescriptor(v43, Size * 0.800000012, 0), CFRelease(v44), cf))
        {
          v39 = [v22 attributes];
          v40 = [v39 mutableCopy];

          [v40 setObject:cf forKeyedSubscript:kCTFontAttributeName];
          [v35 setAttributes:v40];
          [v35 setCtFont:cf];
          sub_10028234C(cf, v64);
          *&buf[32] = v64[2];
          v72 = v64[3];
          v73 = v64[4];
          v74 = v64[5];
          *buf = v64[0];
          *&buf[16] = v64[1];
          [v35 setFontHeightInfo:buf];
        }

        else
        {
          cf = 0;
        }
      }

      else
      {
        v41 = [v22 attributes];
        [v35 setAttributes:v41];

        [v35 setCtFont:{objc_msgSend(v22, "ctFont")}];
        if (v58)
        {
          [v22 fontHeightInfo];
        }

        else
        {
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
        }

        *&buf[32] = v67;
        v72 = v68;
        v73 = v69;
        v74 = v70;
        *buf = v65;
        *&buf[16] = v66;
        [v35 setFontHeightInfo:buf];
      }

      ++v7;
      a2 = v18;
    }

    while (v18 < v10);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_100353450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 + a3) > *(a1 + 48))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101358EB4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101358EC8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101358F50();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pChangeTextToUppercaseForRange(NSRange)"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:3959 isFatal:0 description:"Invalid local range"];
  }

  v9 = +[CRLLocale currentLocale];
  if (!v9)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101358F78();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101358FA0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135903C();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v11 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pChangeTextToUppercaseForRange(NSRange)"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:3962 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];
  }

  if (a3 >= 1)
  {
    v13 = (*(a1 + 64) + 2 * a2);
    v14 = a3 + 1;
    do
    {
      v15 = *v13;
      MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, v13, 1, 1, kCFAllocatorNull);
      if (MutableWithExternalCharactersNoCopy)
      {
        v17 = [v9 locale];
        CFStringUppercase(MutableWithExternalCharactersNoCopy, v17);

        if (CFStringGetLength(MutableWithExternalCharactersNoCopy) != 1)
        {
          *v13 = v15;
        }

        CFRelease(MutableWithExternalCharactersNoCopy);
      }

      else
      {
        v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101359064();
        }

        v19 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109890;
          v25 = v18;
          v26 = 2082;
          v27 = "void CRLWPCoreTextTypesetter::pChangeTextToUppercaseForRange(NSRange)";
          v28 = 2082;
          v29 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
          v30 = 1024;
          v31 = 3973;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to create temporary string for _textBuffer", buf, 0x22u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10135908C();
        }

        v20 = off_1019EDA68;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v23 = +[CRLAssertionHandler packedBacktraceString];
          *buf = 67109378;
          v25 = v18;
          v26 = 2114;
          v27 = v23;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v21 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pChangeTextToUppercaseForRange(NSRange)"];
        v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
        [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:3973 isFatal:0 description:"Failed to create temporary string for _textBuffer"];
      }

      ++v13;
      --v14;
    }

    while (v14 > 1);
  }
}

void sub_100353A20(uint64_t a1, uint64_t a2, CFIndex numChars)
{
  if ((a2 + numChars) > *(a1 + 48))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013590B4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013590C8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101359150();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pChangeTextToStartCaseForRange(NSRange)"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:4100 isFatal:0 description:"Invalid local range"];
  }

  MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, (*(a1 + 64) + 2 * a2), numChars, numChars, kCFAllocatorNull);
  if (MutableWithExternalCharactersNoCopy)
  {
    v10 = +[CRLLocale currentLocale];
    if (!v10)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101359178();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013591A0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135923C();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v12 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pChangeTextToStartCaseForRange(NSRange)"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:4109 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];
    }

    v14 = [v10 locale];
    CFStringCapitalize(MutableWithExternalCharactersNoCopy, v14);

    CFRelease(MutableWithExternalCharactersNoCopy);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101359264();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135928C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101359314();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v10 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pChangeTextToStartCaseForRange(NSRange)"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v16 lineNumber:4105 isFatal:0 description:"Failed to create temporary string for _textBuffer"];
  }
}

void sub_100353E94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100353ED8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100353F24(uint64_t a1, uint64_t a2, CFIndex a3)
{
  if ((a2 + a3) > *(a1 + 48))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135933C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101359350();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013593D8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pChangeTextToTitleCaseForRange(NSRange)"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:4002 isFatal:0 description:"Invalid localRange parameter"];
  }

  v9 = sub_100361064(a1);
  if (v9)
  {
    MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, (*(a1 + 64) + 2 * a2), a3, a3, kCFAllocatorNull);
    if (MutableWithExternalCharactersNoCopy)
    {
      v11 = +[NSCharacterSet alphanumericCharacterSet];
      v12 = +[NSCharacterSet crlwp_sentenceDelimiterCharacterSet];
      *&v18[4] = +[CRLLocale currentLocale];
      if (!*&v18[4])
      {
        *v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101359400();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101359428();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013594C4();
        }

        v13 = off_1019EDA68;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v14 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pChangeTextToTitleCaseForRange(NSRange)"];
        v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
        [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:4015 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];
      }

      [v9 setString:MutableWithExternalCharactersNoCopy];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100361370;
      v19[3] = &unk_101858BB8;
      v19[8] = a2;
      v19[9] = a3;
      v19[4] = v12;
      v19[5] = v11;
      v19[7] = a1;
      v19[6] = *&v18[4];
      [v9 enumerateTagsInRange:0 scheme:a3 options:NSLinguisticTagSchemeNameTypeOrLexicalClass usingBlock:{22, v19}];
      CFRelease(MutableWithExternalCharactersNoCopy);
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013594EC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101359514();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013595B0();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v11 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pChangeTextToTitleCaseForRange(NSRange)"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:4010 isFatal:0 description:"invalid nil value for '%{public}s'", "text"];
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013595D8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101359600();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135969C();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v11 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pChangeTextToTitleCaseForRange(NSRange)"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:4004 isFatal:0 description:"invalid nil value for '%{public}s'", "tagger"];
  }
}

void sub_1003545CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = xmmword_101464828;
  if (*(a1 + 48))
  {
    v4 = 0;
    do
    {
      v5 = [*(a1 + 56) hyperlinkFieldAtCharIndex:v4 effectiveRange:&v8];
      v6 = v8;
      if (v5)
      {
        v7 = v8 == 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        [v3 addAttribute:@"CRLWPUnderline" value:&off_1018E2BC8 range:?];
        v6 = v8;
      }

      if (v4 + 1 > *(&v8 + 1) + v6)
      {
        ++v4;
      }

      else
      {
        v4 = *(&v8 + 1) + v6;
      }
    }

    while (v4 < *(a1 + 48));
  }
}

void sub_1003546CC(uint64_t a1, void *a2, NSRange *a3, NSUInteger a4, NSUInteger a5)
{
  v8 = a2;
  v14.location = a4;
  v14.length = a5;
  v9 = NSIntersectionRange(*a3, v14);
  if (!v9.length)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013596C4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013596D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101359760();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v11 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pHandleInvisibleTextOverride(NSMutableDictionary<NSString *, id> *const __strong, NSRange &, const NSRange, CRLWPRenderingAttributeOverride *const __strong)"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:954 isFatal:0 description:"Shouldn't be called if no intersection"];
  }

  v13 = +[CRLColor clearColor];
  [v8 setObject:objc_msgSend(v13 forKeyedSubscript:{"CGColor"), kCTForegroundColorAttributeName}];

  [v8 setObject:0 forKeyedSubscript:kCTForegroundColorFromContextAttributeName];
  [v8 setObject:0 forKeyedSubscript:@"CRLWPCharacterFillAttribute"];
  [v8 setObject:0 forKeyedSubscript:@"CRLWPCharacterStrokeAttribute"];
  [v8 setObject:0 forKeyedSubscript:@"CRLWPStrikethrough"];
  [v8 setObject:0 forKeyedSubscript:@"CRLWPUnderline"];
  [v8 setObject:0 forKeyedSubscript:@"CRLWPTextHighlightsAttribute"];
  *a3 = v9;
}

void sub_100354984(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003549C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100354A0C(uint64_t a1, uint64_t a2)
{
  v258 = *a2;
  if (*(a1 + 31) != 1 || ((v4 = *(a1 + 32), **&v258 >= v4) ? (v5 = **&v258 > *(a1 + 40) + v4) : (v5 = 1), v5))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101359788();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10135979C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101359824();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v8);
    }

    v9 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1084 isFatal:0 description:"layoutLine called without paragraph being set up correctly"];
  }

  if ((*(a2 + 66) & 1) != 0 && *(*(a1 + 232) + 80) != *(*(a1 + 232) + 88))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135984C();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_101359874();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013598FC();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v13);
    }

    v14 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:1085 isFatal:0 description:"Can't skip glyph vectors with ruby"];
  }

  v16 = *(a2 + 224);
  v17 = [*(a1 + 56) charIndexMappedFromStorage:**&v258];
  v18 = v17;
  if (v17 == 0x7FFFFFFFFFFFFFFFLL || v17 > *(a1 + 48))
  {
    if (**&v258 != *(a1 + 40) + *(a1 + 32))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101359924();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10135994C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013599D4();
      }

      v20 = off_1019EDA68;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = +[CRLAssertionHandler packedBacktraceString];
        sub_101330248(v21);
      }

      v22 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)"];
      v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
      [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:1094 isFatal:0 description:"bad start char index"];
    }

    v18 = *(a1 + 48);
  }

  v265 = v18;
  *v16 = **&v258;
  *(v16 + 16) = *(a1 + 32);
  v24 = *(*&v258 + 480);
  *(v16 + 40) = *(*&v258 + 464);
  *(v16 + 56) = v24;
  if (*(a1 + 27) == 1)
  {
    *(v16 + 24) |= 0x2000uLL;
  }

  if (*(a1 + 72) == 1)
  {
    *(v16 + 24) |= 0x20000uLL;
  }

  sub_10020B5E8(v16, *(a1 + 56));
  v25 = *(a2 + 72);
  *(a1 + 136) = *(a2 + 88);
  *(a1 + 120) = v25;
  v26 = *(a2 + 104);
  v27 = *(a2 + 120);
  v28 = *(a2 + 136);
  *(a1 + 200) = *(a2 + 152);
  *(a1 + 184) = v28;
  *(a1 + 168) = v27;
  *(a1 + 152) = v26;
  *&v27 = *(*&v258 + 216);
  v263 = *(a2 + 24) - *(*&v258 + 224);
  v264 = *&v27;
  sub_100357614(v29, a2, &v264, &v263);
  v262 = 1;
  if (*(*&v258 + 456) != 1)
  {
    goto LABEL_50;
  }

  v30 = sub_10011C2D4(*&v258);
  if (!v30 || (*(*&v258 + 348) & 1) == 0)
  {

LABEL_50:
    if (*(a2 + 208) == 1)
    {
      *(v16 + 24) |= 0x10000000uLL;
    }

    goto LABEL_52;
  }

  v31 = *(a2 + 208);

  if (v31)
  {
    goto LABEL_50;
  }

  sub_100357850(a1, a2, v18, &v262, &v264, &v263);
LABEL_52:
  v32 = v263;
  v33 = v264;
  if (v264 >= v263)
  {
    v32 = v264;
  }

  v263 = v32;
  width = fmin(v32 - v264, 32000.0);
  v34 = *(a1 + 48);
  if ((*(a2 + 40) & 4) != 0)
  {
    goto LABEL_61;
  }

  v35 = *(*&v258 + 400);
  if (v35 == 1)
  {
    goto LABEL_60;
  }

  if (v35 == 2)
  {
    v33 = v264 + width * 0.5;
    goto LABEL_61;
  }

  if (v35 == 3 && (*(*&v258 + 349) & 1) != 0)
  {
LABEL_60:
    v33 = v32;
  }

LABEL_61:
  if (v262 != 1 || width <= 1.0 && *(a2 + 169) != 1 || (v34 - 1) < v18)
  {
    v265 = v18;
    sub_10035891C(v33, a1, *&v258, v16, 0);
    v34 = v18;
    goto LABEL_322;
  }

  if (v18 >= &v34[-(*(*(a1 + 232) + 72) != 0)])
  {
    v265 = *(a1 + 48);
    *(v16 + 8) = [*(a1 + 56) charIndexMappedToStorage:{v34, 1.0, width}] - *v16;
    sub_10035891C(v33, a1, *&v258, v16, *(*(a1 + 232) + 72));
    goto LABEL_322;
  }

  v36 = objc_opt_class();
  v37 = [*(a1 + 56) smartFieldAtCharIndex:v18 attributeKind:7 effectiveRange:v282];
  v255 = sub_100014370(v36, v37);

  if (v255)
  {
    sub_1005B7504(*(a1 + 232), v255);
  }

  sub_1002163F8(v16);
  for (i = 0; ; i = v256 + 1)
  {
    v256 = i;
    if (i)
    {
      sub_100217300(v16);
    }

    if ((*(a1 + 72) & 1) == 0)
    {
LABEL_84:
      if (*(a1 + 28) != 1 || *(a1 + 88) != 1)
      {
        v62 = sub_1003507D0(a1);
        v63 = v264;
        v64 = (CTTypesetterSuggestLineBreakWithOffset(v62, v18, width, v264) + v18);
        v265 = v64;
        if (v64)
        {
          v65 = sub_1005B75D0(*(a1 + 232));
          v66 = [v65 attribute:kCTKernAttributeName atIndex:v64 - 1 effectiveRange:0];

          [v66 floatValue];
          v68 = v67;
          if (v67 > 0.0 || v67 < 0.0 && *(a2 + 171) == 1)
          {
            v69 = sub_1003507D0(a1);
            v70 = v68;
            v64 = (CTTypesetterSuggestLineBreakWithOffset(v69, v18, width + v70, v63) + v18);
            v265 = v64;
            *(a1 + 248) = v70;
          }

          if (v64 > *(a1 + 48))
          {
            v71 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_101359A74();
            }

            v72 = off_1019EDA68;
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109890;
              *&buf[4] = v71;
              *&buf[8] = 2082;
              *&buf[10] = "CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)";
              v267 = 2082;
              v268 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
              v269 = 1024;
              v270 = 1366;
              _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad endCharIndex", buf, 0x22u);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101359A9C();
            }

            v73 = off_1019EDA68;
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              v114 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              *&buf[4] = v71;
              *&buf[8] = 2114;
              *&buf[10] = v114;
              _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v74 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)"];
            v75 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
            [CRLAssertionHandler handleFailureInFunction:v74 file:v75 lineNumber:1366 isFatal:0 description:"Bad endCharIndex"];
          }

          if (!v64 || (*(a2 + 169) & 1) != 0 || v64 >= *(a1 + 48) || (v18 <= v64 ? (v76 = v64) : (v76 = v18), v18 >= v64 ? (v77 = v64) : (v77 = v18), (sub_10035912C(a1, v77, v76 - v77) & 1) != 0))
          {
            if (v64 > v18)
            {
              *buf = xmmword_101464828;
              v78 = objc_opt_class();
              v79 = [*(a1 + 56) smartFieldAtCharIndex:v64 attributeKind:7 effectiveRange:buf];
              v80 = sub_100014370(v78, v79);

              if (v80 && *&buf[8] + *buf > v64)
              {
                v81 = sub_1005B7448(*(a1 + 232), v80);
                v82 = *buf;
                if ((v81 & 1) == 0)
                {
                  if (*buf <= v18 && *(a2 + 169) == 1)
                  {
                    sub_1005B74A0(*(a1 + 232), v80);
                    v82 = *buf;
                  }

                  else
                  {
                    if (*buf <= v18)
                    {
                      v64 = v18;
                    }

                    else
                    {
                      v64 = *buf;
                    }

                    v265 = v64;
                  }
                }

                if (v64 == (v82 + *&buf[8] - 1))
                {
                  v265 = (v64 + 1);
                }
              }
            }
          }

          else
          {
            v265 = v18;
            sub_1002158FC(v16, 0);
          }
        }

LABEL_249:
        v42 = v265;
        if (v265 > v18 && *(*(a1 + 64) + 2 * v265 - 2) == 173)
        {
          *buf = width;
          if (sub_1003593E8(a1, v18, v265 + ~v18, 45, buf, v16))
          {
            sub_1002158DC(v16, 1);
          }

          else
          {
            v124 = [*(a1 + 56) wordAtCharIndex:v42 includePreviousWord:0];
            if (v18 <= v124)
            {
              v125 = v124;
            }

            else
            {
              v125 = v18;
            }

            v126 = v42 - 1;
            if ((v42 - 1) <= v125)
            {
LABEL_262:
              v265 = v126;
              v42 = v126;
            }

            else
            {
              v127 = (v42 - 2);
              while (1)
              {
                if (*(*(a1 + 64) + 2 * v127) == 173)
                {
                  *buf = width;
                  if (sub_1003593E8(a1, v18, v127 - v18, 45, buf, v16))
                  {
                    break;
                  }
                }

                v128 = v127 - 1;
                v5 = v127-- > v125;
                if (!v5)
                {
                  v126 = (v128 + 1);
                  goto LABEL_262;
                }
              }

              v42 = (v127 + 1);
              v265 = v127 + 1;
              sub_1002158DC(v16, 1);
            }
          }
        }

        goto LABEL_263;
      }

      v52 = sub_1003507D0(a1);
      v53 = v264;
      v54 = (CTTypesetterSuggestClusterBreakWithOffset(v52, v18, width, v264) + v18);
      v265 = v54;
      if (v54)
      {
        v55 = sub_1005B75D0(*(a1 + 232));
        v56 = [v55 attribute:kCTKernAttributeName atIndex:v54 - 1 effectiveRange:0];

        [v56 floatValue];
        v58 = v57;
        v59 = v54;
        if (v57 > 0.0)
        {
          v60 = sub_1003507D0(a1);
          v61 = v58;
          v59 = (CTTypesetterSuggestClusterBreakWithOffset(v60, v18, width + v61, v53) + v18);
          *(a1 + 248) = v61;
        }
      }

      else
      {
        v59 = 0;
      }

      v94 = [*(a1 + 56) length];
      v95 = objc_opt_class();
      v96 = [*(a1 + 56) smartFieldAtCharIndex:v54 attributeKind:7 effectiveRange:v282];
      v97 = sub_100014370(v95, v96);

      v98 = v265;
      if (v97 && *&v282[0] <= v18)
      {
        if (sub_1005B7554(*(a1 + 232), v265))
        {
          v265 = ++v98;
        }

        else if (*(a2 + 169) == 1)
        {
          sub_1005B74A0(*(a1 + 232), v97);
        }

        else if (*(a2 + 170) == 1)
        {
          v265 = v18;
          v98 = v18;
        }
      }

      if (v98 >= v94 || v98 <= sub_100358B54(a1, v18))
      {
LABEL_240:
        v255 = v97;
LABEL_241:
        if (v255)
        {
LABEL_242:
          if (*(&v282[0] + 1) + *&v282[0] > v265 && v265 == *(&v282[0] + 1) + *&v282[0] - 1)
          {
            ++v265;
          }
        }

        else
        {
LABEL_248:
          v255 = 0;
        }

        goto LABEL_249;
      }

      if (sub_100358BE8(a1, &v265, v282))
      {
        v99 = *(a1 + 64);
        v100 = v265;
        v101 = *(v99 + 2 * sub_100359024(a1, v265));
        v102 = sub_10027E2F0(v101);
        if (v101 == 8232)
        {
          v103 = 1;
        }

        else
        {
          v103 = v102;
        }

        if ((v103 & 1) == 0)
        {
          if (v100 < v94)
          {
            while (sub_10027E3D4(*(*(a1 + 64) + 2 * v100)))
            {
              v104 = sub_10027E430(*(*(a1 + 64) + 2 * v100));
              v105 = v100 + 1;
              if (v100 + 1 >= v94)
              {
                v106 = 1;
              }

              else
              {
                v106 = v104;
              }

              if ((v106 & 1) == 0 && (sub_10027E430(*(*(a1 + 64) + 2 * v100 + 2)) & 1) == 0)
              {
                v265 = v100;
                v171 = *(*(a1 + 64) + 2 * v100 + 2);
                v107 = v59;
                v172 = sub_10027E2F0(v171) ^ 1;
                if (v171 == 8232)
                {
                  LOBYTE(v172) = 0;
                }

                if ((v172 & 1) == 0)
                {
                  v112 = 0;
                  v113 = 0;
                  ++v100;
                  goto LABEL_199;
                }

                while (1)
                {
LABEL_232:
                  while (1)
                  {
                    v120 = sub_100359024(a1, v265);
                    if (v120 <= v18)
                    {
                      break;
                    }

                    v265 = v120;
                    v255 = v97;
                    if (sub_100358BE8(a1, &v265, 0))
                    {
                      goto LABEL_241;
                    }
                  }

                  v265 = v107;
                  if (*(a2 + 169) != 1)
                  {
                    goto LABEL_240;
                  }

                  v121 = objc_opt_class();
                  v122 = [*(a1 + 56) smartFieldAtCharIndex:sub_100359024(a1 attributeKind:v107) effectiveRange:{7, v282}];
                  v255 = sub_100014370(v121, v122);

                  if (!v255)
                  {
                    goto LABEL_248;
                  }

                  if ((sub_1005B7448(*(a1 + 232), v255) & 1) != 0 || (sub_1005B74A0(*(a1 + 232), v255) & 1) == 0)
                  {
                    goto LABEL_242;
                  }

                  v97 = v255;
                }
              }

              ++v100;
              if (v94 == v105)
              {
                v107 = v59;
                v100 = v94;
                goto LABEL_198;
              }
            }
          }

          v107 = v59;
LABEL_198:
          v112 = 0;
          v113 = 0;
LABEL_199:
          v265 = v100;
          goto LABEL_225;
        }

        goto LABEL_196;
      }

      v100 = v265;
      v108 = sub_100358B54(a1, v265);
      v109 = v108;
      *buf = v108;
      if (v108 >= *&v282[0] && v108 - *&v282[0] < *(&v282[0] + 1) && *(*(a1 + 64) + 2 * v108) == 8209)
      {
        v109 = v108 + 1;
        *buf = v108 + 1;
      }

      if (v109 < v94)
      {
        if (!sub_100358BE8(a1, buf, 0))
        {
          goto LABEL_183;
        }

        v109 = *buf;
      }

      if (v109 == v94 && sub_10027E3D4(*(*(a1 + 64) + 2 * v100)))
      {
LABEL_183:
        v110 = v100;
        if (v100 < v94)
        {
          v110 = v100;
          while (sub_10027E3D4(*(*(a1 + 64) + 2 * v110)))
          {
            if (v94 == ++v110)
            {
              goto LABEL_203;
            }
          }
        }

        v281[0] = v110;
        if (v110 != v94)
        {
          if (!sub_100358BE8(a1, v281, 0))
          {
            v107 = v59;
            v113 = 1;
            goto LABEL_204;
          }

          v94 = v281[0];
        }

LABEL_203:
        v107 = v59;
        v113 = 0;
        v265 = v94;
        v100 = v94;
LABEL_204:
        v112 = 0;
        goto LABEL_225;
      }

      if (v256)
      {
LABEL_196:
        v107 = v59;
        v112 = 0;
        v113 = 0;
LABEL_225:
        if ((v112 & 1) != 0 || (v113 & 1) != 0 || (v119 = sub_100359024(a1, v100)) == 0 || v119 >= v100)
        {
          if (v113)
          {
            goto LABEL_232;
          }
        }

        else if ((sub_100358BE8(a1, &v265, 0) & 1) == 0)
        {
          goto LABEL_232;
        }

        goto LABEL_240;
      }

      if (v18 >= v100)
      {
        v118 = 1;
      }

      else
      {
        v115 = 0.0;
        v116 = v18;
        do
        {
          v115 = v115 + sub_10027EA40(*(*(a1 + 64) + 2 * v116++));
        }

        while (v115 < 1.0 && v116 < v100);
        v118 = v115 < 1.0;
      }

      if (v109 < v94)
      {
        while (sub_10027E3D4(*(*(a1 + 64) + 2 * v109)))
        {
          if (v94 == ++v109)
          {
            v109 = v94;
            break;
          }
        }
      }

      v281[0] = v109;
      if (v118)
      {
        v107 = v59;
LABEL_220:
        v112 = 0;
        v113 = 1;
        goto LABEL_225;
      }

      v107 = v59;
      if (v109 != v94)
      {
        if (!sub_100358BE8(a1, v281, 0))
        {
          goto LABEL_220;
        }

        v94 = v281[0];
      }

      v265 = v94;
      v112 = 1;
      sub_1002163DC(v16, 1);
      v113 = 0;
      v100 = v94;
      goto LABEL_225;
    }

    v39 = sub_1003507D0(a1);
    v40 = v264;
    v41 = CTTypesetterSuggestClusterBreakWithOffset(v39, v18, width, v264);
    v42 = (v41 + v18);
    v265 = v41 + v18;
    v43 = *(a1 + 48);
    if (v41 + v18 > v43)
    {
      v44 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013599FC();
      }

      v45 = off_1019EDA68;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        *&buf[4] = v44;
        *&buf[8] = 2082;
        *&buf[10] = "CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)";
        v267 = 2082;
        v268 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
        v269 = 1024;
        v270 = 1433;
        _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad endCharIndex", buf, 0x22u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101359A24();
      }

      v46 = off_1019EDA68;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v111 = +[CRLAssertionHandler packedBacktraceString];
        *buf = 67109378;
        *&buf[4] = v44;
        *&buf[8] = 2114;
        *&buf[10] = v111;
        _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
      }

      v47 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)"];
      v48 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
      [CRLAssertionHandler handleFailureInFunction:v47 file:v48 lineNumber:1433 isFatal:0 description:"Bad endCharIndex"];

      v43 = *(a1 + 48);
    }

    if (v42 >= v43)
    {
      goto LABEL_137;
    }

    v49 = objc_opt_class();
    v50 = [*(a1 + 56) smartFieldAtCharIndex:v42 attributeKind:7 effectiveRange:0];
    v51 = sub_100014370(v49, v50);

    if (v51)
    {
      goto LABEL_84;
    }

    if (v42)
    {
      v83 = *(*(a1 + 64) + 2 * v42 - 2);
      v84 = sub_10027E2F0(*(*(a1 + 64) + 2 * v42 - 2));
      v85 = v83 == 8232 ? 1 : v84;
      if (v85)
      {
        goto LABEL_138;
      }
    }

    if (sub_10027E430(*(*(a1 + 64) + 2 * v42)))
    {
      v86 = (v18 + 1 + v41);
      while (1)
      {
        v42 = v86;
        v87 = *(a1 + 48);
        if (v42 >= v87)
        {
          break;
        }

        v88 = sub_10027E430(*(*(a1 + 64) + 2 * v42));
        v86 = v42 + 1;
        if ((v88 & 1) == 0)
        {
          v87 = *(a1 + 48);
          break;
        }
      }

      v265 = v42;
      if (v42 >= v87)
      {
        goto LABEL_137;
      }

      v89 = *(*(a1 + 64) + 2 * v42);
      v90 = sub_10027E2F0(*(*(a1 + 64) + 2 * v42)) ^ 1;
      if (v89 == 8232)
      {
        LOBYTE(v90) = 0;
      }

      if (v90)
      {
LABEL_137:
        if (!v42)
        {
          goto LABEL_273;
        }
      }

      else
      {
        v265 = ++v42;
      }

LABEL_138:
      v91 = 1;
LABEL_139:
      v92 = *(*(a1 + 64) + 2 * v42 - 2);
      if (qword_101A34D08 != -1)
      {
        sub_101359A4C();
      }

      if ((v91 | [qword_101A34D00 characterIsMember:v92]))
      {
        goto LABEL_263;
      }

      goto LABEL_142;
    }

    if (v42)
    {
      v91 = 0;
      goto LABEL_139;
    }

LABEL_142:
    *buf = v18;
    *&buf[8] = &v42[-v18];
    v93 = sub_1003597B4(a1, buf, *&v258, v16, width, v40);
    if (v93 == 1)
    {
      sub_1002158DC(v16, 1);
      v42 = (*&buf[8] + *buf);
      v265 = *&buf[8] + *buf;
    }

    else if (v93 == -1)
    {
      goto LABEL_84;
    }

LABEL_263:
    if (v42 > *(a1 + 48))
    {
      v129 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101359AC4();
      }

      v130 = off_1019EDA68;
      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        *&buf[4] = v129;
        *&buf[8] = 2082;
        *&buf[10] = "CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)";
        v267 = 2082;
        v268 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
        v269 = 1024;
        v270 = 1495;
        _os_log_error_impl(&_mh_execute_header, v130, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad localEndCharIndex", buf, 0x22u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101359AEC();
      }

      v131 = off_1019EDA68;
      if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        v167 = +[CRLAssertionHandler packedBacktraceString];
        *buf = 67109378;
        *&buf[4] = v129;
        *&buf[8] = 2114;
        *&buf[10] = v167;
        _os_log_error_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
      }

      v132 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)"];
      v133 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
      [CRLAssertionHandler handleFailureInFunction:v132 file:v133 lineNumber:1495 isFatal:0 description:"Bad localEndCharIndex"];
    }

LABEL_273:
    if (v18 == v42)
    {
      if (!*(a1 + 48) || *(a2 + 169) != 1)
      {
LABEL_282:
        v136 = v263;
        v135 = v264;
        sub_10035891C(v264, a1, *&v258, v16, 0);
        goto LABEL_283;
      }

      v134 = [*(a1 + 56) charIndexMappedFromStorage:{sub_10027F35C(objc_msgSend(*(a1 + 56), "charIndexMappedToStorage:", v18), *(a1 + 56))}];
      v42 = v134;
      v265 = v134;
      if (*(*(a1 + 232) + 72) && v134 && v134 == (*(a1 + 48) - 1) && *(*(a1 + 64) + 2 * v134 - 2) != 8232)
      {
        v42 = v134 + 1;
        v265 = (v134 + 1);
      }
    }

    if (v18 == v42)
    {
      goto LABEL_282;
    }

    v138 = [*(a1 + 56) charIndexMappedToStorage:v42];
    v139 = &v138[-*v16];
    if (v138 == *v16)
    {
      v140 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101359B14();
      }

      v141 = off_1019EDA68;
      if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
      {
        v168 = *(a1 + 48);
        if (v42 >= v168)
        {
          v169 = 0;
        }

        else
        {
          v253 = [*(a1 + 56) string];
          v169 = [v253 characterAtIndex:v42];
        }

        *buf = 67110146;
        *&buf[4] = v140;
        *&buf[8] = 2082;
        *&buf[10] = "CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)";
        v267 = 2082;
        v268 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
        v269 = 1024;
        v270 = 1548;
        v271 = 1024;
        LODWORD(v272) = v169;
        _os_log_error_impl(&_mh_execute_header, v141, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to map end of line to a positive index: U+%x", buf, 0x28u);
        if (v42 < v168)
        {
        }
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101359B3C();
      }

      v142 = off_1019EDA68;
      if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
      {
        v170 = +[CRLAssertionHandler packedBacktraceString];
        *buf = 67109378;
        *&buf[4] = v140;
        *&buf[8] = 2114;
        *&buf[10] = v170;
        _os_log_error_impl(&_mh_execute_header, v142, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
      }

      v143 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)"];
      v144 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
      v145 = v265;
      v146 = *(a1 + 48);
      if (v265 >= v146)
      {
        v147 = 0;
      }

      else
      {
        v254 = [*(a1 + 56) string];
        v147 = [v254 characterAtIndex:v145];
      }

      [CRLAssertionHandler handleFailureInFunction:v143 file:v144 lineNumber:1548 isFatal:0 description:"Failed to map end of line to a positive index: U+%x", v147];
      if (v145 < v146)
      {
      }
    }

    *(v16 + 8) = v139;
    v148 = *(a2 + 40);
    v136 = v263;
    v135 = v264;
    sub_100216284(v16, v264, v263);
    v149 = *(a2 + 64);
    v150 = *(a2 + 169);
    if (!sub_100215188(v16, *(a2 + 176)))
    {
      if (((v149 & 0x10000) == 0) | (v150 ^ 1) & 1)
      {
        sub_10035A1D0(a1, v16, *&v258, (v148 & 0xC) != 0);
        if ((v150 & 1) == 0 && sub_10035CC4C(a1, v16, v18, v265))
        {
          v151 = sub_100210E0C(v16);
          v153 = v152;
          v155 = v154;
          v157 = v156;
          v290.origin.x = sub_100211520(v16, 1);
          v290.origin.y = v158;
          v290.size.width = v159;
          v290.size.height = v160;
          v287.origin.x = v151;
          v287.origin.y = v153;
          v287.size.width = v155;
          v287.size.height = v157;
          v288 = CGRectUnion(v287, v290);
          v161 = *(v16 + 40);
          v162 = *(v16 + 48);
          v163 = *(v16 + 56);
          v164 = *(v16 + 64);
          v165 = CGRectGetWidth(v288);
          v166 = *(a1 + 248);
          v289.origin.x = v161;
          v289.origin.y = v162;
          v289.size.width = v163;
          v289.size.height = v164;
          if (v165 - v166 > CGRectGetWidth(v289) + 0.25)
          {
            v265 = v18;
            *(v16 + 8) = 0;
            if ((v149 & 0x10000) == 0)
            {
              sub_10035891C(v135, a1, *&v258, v16, 0);
            }
          }
        }
      }
    }

LABEL_283:
    if ((sub_1005B68F4(*(a1 + 232), v16, v136 - v135) & 1) == 0)
    {
      break;
    }

    if (v256 >= 2)
    {
      goto LABEL_404;
    }

LABEL_288:
    ;
  }

  v137 = *(a1 + 88) & (*(v16 + 25) >> 7);
  if (v256 <= 1 && v137)
  {
    goto LABEL_288;
  }

  if (!v137)
  {
    goto LABEL_409;
  }

LABEL_404:
  if (qword_101AD5A08 != -1)
  {
    sub_101359B64();
  }

  v246 = off_1019EDA60;
  if (os_log_type_enabled(v246, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = 3;
    _os_log_impl(&_mh_execute_header, v246, OS_LOG_TYPE_INFO, "Line not cut correctly, but maximum number of tries (%lu) exceeded.", buf, 0xCu);
  }

LABEL_409:
  v34 = v265;
LABEL_322:
  *(v16 + 8) = [*(a1 + 56) charIndexMappedToStorage:v34] - *v16;
  v173 = &v34[-v18];
  if (v34 <= v18)
  {
    v174 = 0;
    *(a2 + 240) = 0;
  }

  else
  {
    *(a2 + 240) = [*(a1 + 56) charIndexMappedToStorage:v34 - 1];
    v174 = [*(a1 + 56) characterAtIndex:v34 - 1];
  }

  *(a2 + 232) = v174;
  if (v34 >= *(a1 + 48))
  {
    v173 -= *(*(a1 + 232) + 72) != 0;
  }

  sub_10035CD44(a1, a2, v18, v173);
  if ((*(a2 + 66) & 1) == 0)
  {
    sub_100217398(v16);
  }

  v175 = sub_1005B6BF0(*(a1 + 232), v16);
  v260 = 0.0;
  v261 = 0.0;
  sub_10035CF68(a1, a2, &v261, &v260);
  v176.recordID.super.isa = sub_1005B7260(*(a1 + 232), v16);
  v177 = v261;
  if (v175 >= v261)
  {
    v177 = v175;
  }

  if (v177 > 0.0)
  {
    v178 = *(v16 + 144);
    v179 = v177 - (*(a2 + 200) + v178);
    if (v179 > 0.0)
    {
      *(v16 + 144) = v178 + v179;
      v285 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v176.recordID, v176.recordType);
      *(v16 + 72) = v180;
      *(v16 + 80) = v181;
      *(v16 + 88) = v182;
      *(v16 + 96) = v183;
      v176 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v285.recordID, v285.recordType);
      *(v16 + 40) = v184;
      *(v16 + 48) = v185;
      *(v16 + 56) = v186;
      *(v16 + 64) = v187;
    }
  }

  v188 = v260;
  if (v260 > 0.0)
  {
    v189 = *(v16 + 136);
    v190 = *(v16 + 152);
    v191 = v189 + v190;
    v192 = v260 + v189;
    *(v16 + 136) = v192;
    v193 = fmax(v190 - v188, 0.0);
    *(v16 + 152) = v193;
    if (v192 + v193 - v191 > 0.0)
    {
      v286 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v176.recordID, v176.recordType);
      *(v16 + 72) = v194;
      *(v16 + 80) = v195;
      *(v16 + 88) = v196;
      *(v16 + 96) = v197;
      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v286.recordID, v286.recordType);
      *(v16 + 40) = v198;
      *(v16 + 48) = v199;
      *(v16 + 56) = v200;
      *(v16 + 64) = v201;
    }
  }

  sub_10035D764(a1, *&v258, v16);
  v202 = &xmmword_101464828;
  if (*(v16 + 24) >= 0)
  {
    v202 = v16;
  }

  v204 = *v202;
  v203 = *(v202 + 1);
  v205 = [*(a1 + 16) range];
  if ((v204 + v203) == &v205[v206])
  {
    *(v16 + 24) |= 0x200000uLL;
  }

  if (*(v16 + 144) == -3.40282347e38)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101359B8C();
    }

    v207 = off_1019EDA68;
    if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
    {
      sub_101359BB4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101359C3C();
    }

    v208 = off_1019EDA68;
    if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
    {
      v209 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v209);
    }

    v210 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)"];
    v211 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v210 file:v211 lineNumber:1651 isFatal:0 description:"Bad leading"];
  }

  if (!sub_10020BC74(v16) && (*(a2 + 66) & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101359C64();
    }

    v212 = off_1019EDA68;
    if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
    {
      sub_101359C8C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101359D14();
    }

    v213 = off_1019EDA68;
    if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
    {
      v214 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v214);
    }

    v215 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)"];
    v216 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v215 file:v216 lineNumber:1652 isFatal:0 description:"Bad lineRef count"];
  }

  if (v34 > *(a1 + 48))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101359D3C();
    }

    v217 = off_1019EDA68;
    if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
    {
      sub_101359D64();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101359DEC();
    }

    v218 = off_1019EDA68;
    if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
    {
      v219 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v219);
    }

    v220 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)"];
    v221 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v220 file:v221 lineNumber:1653 isFatal:0 description:"Bad endCharIndex"];
  }

  v222 = objc_opt_class();
  v223 = sub_100014370(v222, *(a1 + 56));
  v224 = *(v16 + 24);
  if (!v18)
  {
    v225 = &xmmword_101464828;
    if (v224 >= 0)
    {
      v225 = v16;
    }

    if (*v225 != *(a1 + 32))
    {
      v226 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101359E14();
      }

      v227 = off_1019EDA68;
      if (os_log_type_enabled(v227, OS_LOG_TYPE_ERROR))
      {
        v247 = &xmmword_101464828;
        if (*(v16 + 24) >= 0)
        {
          v247 = v16;
        }

        v248 = NSStringFromRange(*v247);
        v249 = NSStringFromRange(*(a1 + 32));
        v284.location = [*(a1 + 56) charRangeRemappedFromStorage:{*(a1 + 32), *(a1 + 40)}];
        v250 = NSStringFromRange(v284);
        v251 = [v223 spaceCharIndexCount];
        v252 = [v223 bidiCharIndexCount];
        *buf = 67111170;
        *&buf[4] = v226;
        *&buf[8] = 2082;
        *&buf[10] = "CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)";
        v267 = 2082;
        v268 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
        v269 = 1024;
        v270 = 1668;
        v271 = 2114;
        v272 = v248;
        v273 = 2114;
        v274 = v249;
        v275 = 2114;
        v276 = v250;
        v277 = 2048;
        v278 = v251;
        v279 = 2048;
        v280 = v252;
        _os_log_error_impl(&_mh_execute_header, v227, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d First line should lie at the beginning of the paragraph: %{public}@ vs %{public}@ (%{public}@); ruby: %lu, bidi: %lu", buf, 0x54u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101359E3C();
      }

      v228 = off_1019EDA68;
      if (os_log_type_enabled(v228, OS_LOG_TYPE_ERROR))
      {
        v229 = +[CRLAssertionHandler packedBacktraceString];
        sub_101330248(v229);
      }

      v259 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)"];
      v230 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
      v231 = &xmmword_101464828;
      if (*(v16 + 24) >= 0)
      {
        v231 = v16;
      }

      v232 = NSStringFromRange(*v231);
      v233 = NSStringFromRange(*(a1 + 32));
      v283.location = [*(a1 + 56) charRangeRemappedFromStorage:{*(a1 + 32), *(a1 + 40)}];
      v234 = NSStringFromRange(v283);
      +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v259, v230, 1668, 0, "First line should lie at the beginning of the paragraph: %{public}@ vs %{public}@ (%{public}@); ruby: %lu, bidi: %lu", v232, v233, v234, [v223 spaceCharIndexCount], objc_msgSend(v223, "bidiCharIndexCount"));

      v224 = *(v16 + 24);
    }
  }

  if (v34 == *(a1 + 48))
  {
    v235 = &xmmword_101464828;
    if (v224 >= 0)
    {
      v235 = v16;
    }

    if (*v235 + *(v235 + 1) != *(a1 + 40) + *(a1 + 32))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101359E64();
      }

      v236 = off_1019EDA68;
      if (os_log_type_enabled(v236, OS_LOG_TYPE_ERROR))
      {
        sub_101359E8C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101359F14();
      }

      v237 = off_1019EDA68;
      if (os_log_type_enabled(v237, OS_LOG_TYPE_ERROR))
      {
        v238 = +[CRLAssertionHandler packedBacktraceString];
        sub_101330248(v238);
      }

      v239 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPCoreTextTypesetter::layOutLine(CRLWPTypesetterParamBlock *const)"];
      v240 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
      [CRLAssertionHandler handleFailureInFunction:v239 file:v240 lineNumber:1669 isFatal:0 description:"Last line should reach the end of the paragraph"];

      v224 = *(v16 + 24);
    }
  }

  v241 = v224 < 0;
  v242 = &xmmword_101464828;
  if (!v241)
  {
    v242 = v16;
  }

  v244 = *v242;
  v243 = *(v242 + 1);

  return v244 + v243;
}

void sub_10035747C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003574C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100357504(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100357548(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035758C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003575D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100357614(uint64_t a1, double *a2, double *a3, double *a4)
{
  v7 = *a2;
  v8 = a2[5] & 0x14;
  v9 = *(*(a2 + 28) + 24);
  v10 = a2[1];
  v11 = *(*a2 + 464);
  v25.origin.y = *(*a2 + 472);
  v25.size.width = *(*a2 + 480);
  v25.size.height = *(*a2 + 488);
  v25.origin.x = v11;
  MaxX = CGRectGetMaxX(v25);
  v13 = a2[1];
  v14 = a2[3];
  if ((v9 & 0x1000) != 0)
  {
    if ((*(*&v7 + 348) & 1) == 0 && *(*&v7 + 456) == 1 && (*(*&v7 + 457) & 1) == 0)
    {
      *a4 = v14 - *(*&v7 + 232);
    }

    v15 = *(a2 + 170);
    if ((v15 & 1) == 0)
    {
      v17 = fmax(fmin(*a3, *a4 + -18.0), 0.0);
      *a3 = v17;
      if (v8 == 4)
      {
LABEL_15:
        v15 = 0;
        goto LABEL_17;
      }

      v15 = 0;
      *a4 = fmin(fmax(*a4, v17 + 18.0), v14);
    }
  }

  else
  {
    if ((*(*&v7 + 348) & 1) == 0 && *(*&v7 + 456) == 1 && (*(*&v7 + 457) & 1) == 0)
    {
      *a3 = *(*&v7 + 232);
    }

    v15 = *(a2 + 170);
    if ((v15 & 1) == 0)
    {
      v16 = fmin(fmax(*a4, *a3 + 18.0), v14);
      *a4 = v16;
      if (v8 != 4)
      {
        v15 = 0;
        *a3 = fmax(fmin(*a3, v16 + -18.0), 0.0);
        goto LABEL_17;
      }

      goto LABEL_15;
    }
  }

LABEL_17:
  v18 = v11 - v10;
  v19 = MaxX - v13;
  v20 = *(*&v7 + 240);
  if (*(*&v7 + 350) == 1)
  {
    v21 = *a4 - v20;
    *a4 = v21;
    if (v15)
    {
      goto LABEL_30;
    }

    v22 = *a3;
    if (v8 != 4)
    {
      *a4 = fmin(fmax(v21, v22 + 18.0), v14);
      goto LABEL_30;
    }

LABEL_23:
    if (v18 >= v22)
    {
      v23 = v11 - v10;
    }

    else
    {
      v23 = v22;
    }

    *a3 = v23;
    if (*a4 < v19)
    {
      v19 = *a4;
    }

    *a4 = v19;
    goto LABEL_35;
  }

  v22 = v20 + *a3;
  *a3 = v22;
  if ((v15 & 1) == 0)
  {
    if (v8 == 4)
    {
      goto LABEL_23;
    }

    *a3 = fmax(fmin(v22, *a4 + -18.0), 0.0);
  }

LABEL_30:
  v24 = *a3;
  if (v18 >= *a3)
  {
    v24 = v11 - v10;
  }

  *a3 = v24;
  if (*a4 < v19)
  {
    v19 = *a4;
  }

  *a4 = v19;
  if (v8 == 4)
  {
LABEL_35:
    *a4 = *a3 + a2[6];
  }
}

void sub_100357850(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, double *a5, double *a6)
{
  v9 = *a2;
  v10 = sub_10011C2D4(*a2);
  v11 = [v10 labelTypeForLevel:*(v9 + 208)];

  v12 = sub_10011C2D4(v9);
  v13 = [v12 valueForProperty:54];

  v101 = v13;
  if (v13)
  {
    [v13 objectAtIndexedSubscript:*(v9 + 208)];
  }

  else
  {
    +[CRLWPListLabelGeometry listLabelGeometry];
  }
  v104 = ;
  v103 = [*(a1 + 56) characterStyleAtCharIndex:a3 effectiveRange:0];
  if ((v11 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    goto LABEL_98;
  }

  v109 = 0x7FFFFFFFFFFFFFFFLL;
  v14 = sub_10011C2D4(v9);
  v15 = [v14 valueForProperty:57];

  v96 = v15;
  if (v15)
  {
    v16 = [v15 objectAtIndexedSubscript:*(v9 + 208)];
    v91 = [v16 intValue];
  }

  else
  {
    v91 = +[_TtC8Freeform14CRLWPListStyle defaultLabelNumberType];
  }

  if (v11 == 2)
  {
    v17 = sub_10011C2D4(v9);
    v18 = [v17 valueForProperty:59];

    if (v18)
    {
      [v18 objectAtIndexedSubscript:*(v9 + 208)];
    }

    else
    {
      +[_TtC8Freeform14CRLWPListStyle defaultLabelString];
    }
    v102 = ;
    v93 = *(a1 + 27);

    v92 = 0;
  }

  else
  {
    v92 = *(a1 + 27) != 1 || sub_1002831D4(v91);
    sub_100240748(v108, v9 + 24);
    v102 = sub_10035DE60(a1, v9, v19, *(v9 + 208), 0, &v109);
    sub_10024068C(v108);
    v93 = 0;
  }

  if (!v102)
  {

    goto LABEL_98;
  }

  v20 = objc_opt_class();
  v21 = sub_10011C2D4(v9);
  v22 = [v21 valueForProperty:9];
  v95 = sub_100014370(v20, v22);

  v23 = sub_10011C2A4(v9);
  v24 = sub_10011C2B4(v9);
  v25 = sub_1002825A0(v23, v103, v95, v104, [v24 scaleTextPercent]);

  v26 = sub_10011C2D4(v9);
  v115[0] = v26;
  v27 = sub_10011C2A4(v9);
  v115[1] = v27;
  v28 = [NSArray arrayWithObjects:v115 count:2];
  v29 = sub_100281158(v28, 0x35uLL);

  if (!v29)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101359F3C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101359F64();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101359FEC();
    }

    v30 = off_1019EDA68;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v31 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pCalculateListLabel(const CRLWPTypesetterParamBlock *const, const CRLWPCharIndex, BOOL &, CGFloat &, CGFloat &) const"];
    v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:2051 isFatal:0 description:"Expect label color, or paragraph color as the default."];

    v29 = +[CRLColor magentaColor];
  }

  v33 = sub_10011C320(v9);
  v34 = v33 == 0;

  if (!v34)
  {
    v35 = sub_10011C320(v9);

    v29 = v35;
  }

  v36 = [v29 CGColor];
  v107 = *(v9 + 350);
  settings.spec = kCTParagraphStyleSpecifierBaseWritingDirection;
  settings.valueSize = 1;
  settings.value = &v107;
  v37 = CTParagraphStyleCreate(&settings, 1uLL);
  v112[0] = kCTFontAttributeName;
  v112[1] = kCTForegroundColorAttributeName;
  v113[0] = v25;
  v113[1] = v36;
  v112[2] = kCTParagraphStyleAttributeName;
  v113[2] = v37;
  v94 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:3];
  CFRelease(v37);
  CFRelease(v25);
  attrString = [[NSMutableAttributedString alloc] initWithString:v102 attributes:v94];
  if (v11 == 3)
  {
    v38 = [v102 length];
    v39 = v38;
    v40 = (v38 - 2);
    v41 = (v92 ? v38 - 2 : v38);
    if (*(a1 + 27))
    {
      v42 = sub_10011C2A4(v9);
      v43 = sub_10028186C(0, v42, 0x64uLL);

      v44 = sub_10027E074(v43);
      CFRelease(v43);
      v90 = [(__CFAttributedString *)attrString mutableCopy];
      if (v41)
      {
        sub_1005B7CCC(attrString, v92, v41);
      }

      if (v92)
      {
        [__CFAttributedString addAttribute:"addAttribute:value:range:" value:? range:?];
        if (v40 > 4)
        {
          v47 = 0;
          v48 = attrString;
          attrString = v90;
        }

        else
        {
          v45 = [NSNumber numberWithUnsignedInteger:v40];
          [(__CFAttributedString *)attrString addAttribute:kCTHorizontalInVerticalFormsAttributeName value:v45 range:v92, v40];

          v46 = CTLineCreateWithAttributedString(attrString);
          v47 = v46;
          if (!v46)
          {
            goto LABEL_48;
          }

          v48 = CTLineGetGlyphRuns(v46);
          if ([v48 count] == 3)
          {
            v49 = [v48 objectAtIndexedSubscript:1];

            ascent[0] = 0.0;
            leading = 0.0;
            descent = 0.0;
            v116.location = 0;
            v116.length = 0;
            TypographicBounds = CTRunGetTypographicBounds(v49, v116, ascent, &descent, &leading);
            if (TypographicBounds <= ascent[0] + descent || vabdd_f64(TypographicBounds, ascent[0] + descent) < (ascent[0] + descent) * 0.1)
            {

              goto LABEL_71;
            }

            CFRelease(v47);
            v89 = v90;

            v47 = 0;
            attrString = v89;
          }
        }

LABEL_48:
        [(__CFAttributedString *)attrString addAttribute:kCTVerticalFormsAttributeName value:&__kCFBooleanTrue range:v92, v40];
        sub_10035E114(attrString, v92, v40);

        if (v47)
        {
          goto LABEL_71;
        }

        goto LABEL_70;
      }

      if (sub_1002831E0(v91))
      {
        [(__CFAttributedString *)attrString addAttribute:kCTVerticalFormsAttributeName value:&__kCFBooleanTrue range:v92, v39];
      }

      else
      {
        v51 = [(__CFAttributedString *)attrString mutableCopy];
        if (v39 > v92)
        {
          v52 = 0;
          do
          {
            [v51 replaceCharactersInRange:v52++ withString:{1, @"0"}];
          }

          while (v39 != v52);
        }

        v53 = CTLineCreateWithAttributedString(v51);
        v54 = v53;
        if (v53)
        {
          if (CTLineGetTypographicBounds(v53, 0, 0, 0) >= v44 || v41 >= 6)
          {
            [(__CFAttributedString *)attrString addAttribute:kCTVerticalFormsAttributeName value:&__kCFBooleanTrue range:v92, v39];
            sub_10035E114(attrString, v92, v39);
          }

          else
          {
            v93 = 1;
          }

          CFRelease(v54);
        }

        else
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10135A014();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10135A03C();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10135A0D8();
          }

          v55 = off_1019EDA68;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            +[CRLAssertionHandler packedBacktraceString];
            objc_claimAutoreleasedReturnValue();
            sub_10130E89C();
          }

          v56 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pCalculateListLabel(const CRLWPTypesetterParamBlock *const, const CRLWPCharIndex, BOOL &, CGFloat &, CGFloat &) const"];
          v57 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
          [CRLAssertionHandler handleFailureInFunction:v56 file:v57 lineNumber:2160 isFatal:0 description:"invalid nil value for '%{public}s'", "tmpLineRef"];
        }
      }
    }
  }

LABEL_70:
  v47 = CTLineCreateWithAttributedString(attrString);
LABEL_71:
  [v104 baselineOffset];
  v59 = v58;
  v60 = [CRLWPListLabel alloc];
  v61 = [(CRLWPListLabel *)v60 initWithType:v11 labelString:v102 textLine:v47 listNumber:v109 isTateChuYoko:v93 & 1 baselineOffset:v59];
  CFRelease(v47);

  if (v61)
  {
    v62 = sub_10011C2D4(v9);
    v110[0] = v62;
    v63 = sub_10011C2A4(v9);
    v110[1] = v63;
    v64 = [NSArray arrayWithObjects:v110 count:2];
    v65 = sub_100281158(v64, 0x12uLL);

    v66 = +[NSNull null];
    LODWORD(v62) = v65 == v66;

    if (v62)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135A100();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135A128();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135A1B0();
      }

      v67 = off_1019EDA68;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v68 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pCalculateListLabel(const CRLWPTypesetterParamBlock *const, const CRLWPCharIndex, BOOL &, CGFloat &, CGFloat &) const"];
      v69 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
      [CRLAssertionHandler handleFailureInFunction:v68 file:v69 lineNumber:2195 isFatal:0 description:"CRLWPResolvePropertyForStyles should not return NSNull."];
    }

    if (v65)
    {
      [(CRLWPListLabel *)v61 setShadow:v65];
    }

    v70 = sub_10011C2D4(v9);
    v71 = [v70 valueForProperty:56];

    v72 = *(v9 + 232);
    v73 = [v71 objectAtIndexedSubscript:*(v9 + 208)];
    [v73 crl_CGFloatValue];
    v75 = v74;

    if (*(a1 + 27) == 1 && [(CRLWPListLabel *)v61 labelType]== 1)
    {
      [(CRLWPListLabel *)v61 height];
    }

    else
    {
      [(CRLWPListLabel *)v61 width];
    }

    v77 = v76;
    v78 = *(a2 + 24);
    v79 = *(a2 + 8);
    v80 = *(v9 + 464);
    v117.origin.y = *(v9 + 472);
    v117.size.width = *(v9 + 480);
    v117.size.height = *(v9 + 488);
    v117.origin.x = v80;
    MaxX = CGRectGetMaxX(v117);
    v82 = v72 + v75;
    if (*(v9 + 350) == 1)
    {
      v83 = MaxX;
      v84 = *(a2 + 8);
      [(CRLWPListLabel *)v61 setIsLabelRTL:1];
      v85 = v78 - (v83 - v84);
      v86 = fmax(fmin(v82, v78 - *a5 + -20.0), v85);
      [(CRLWPListLabel *)v61 setLabelIndent:v86 - v85];
      v87 = fmax(*(v9 + 232) + *(v9 + 240), v77 + v86);
      v88 = *a6;
      if ((*(a2 + 40) & 0x14) != 4)
      {
        v88 = v78;
      }

      *a6 = v88 - v87;
    }

    else
    {
      v86 = fmax(fmin(v82, *a6 + -20.0), v80 - v79);
      [(CRLWPListLabel *)v61 setLabelIndent:v86 - (v80 - v79)];
      v87 = fmax(*(v9 + 232) + *(v9 + 240), v77 + v86);
      *a5 = v87;
    }

    [(CRLWPListLabel *)v61 setLabelTypographicExtent:v87 - v86];
    sub_1002158FC(*(a2 + 224), v61);
    if (*a5 > *a6 + -10.0)
    {
      *a4 = 0;
      if (*(a2 + 170) == 1)
      {
        if (*(a1 + 48))
        {
          sub_1002158FC(*(a2 + 224), 0);
        }
      }
    }
  }

LABEL_98:
}

void sub_10035891C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = sub_1002152C8(a4);
  v10 = sub_10035F72C(a1, v9, a3, a4);
  if (a5)
  {
    v11 = [[NSMutableDictionary alloc] initWithCapacity:2];
    v12 = CTFontCreateWithName(@"Helvetica", 25.1950798, 0);
    [v11 setObject:v12 forKeyedSubscript:kCTFontAttributeName];
    CFRelease(v12);
    v13 = [[NSAttributedString alloc] initWithString:@"\n" attributes:v11];
    v14 = CTLineCreateWithAttributedString(v13);
    sub_10026EB3C(v19, v14, 0x7FFFFFFFFFFFFFFFLL, 0, 0, v10, 0.0);
    sub_10020B844(a4, v19);
    v15 = sub_10026EC38(v19);
    if (v14)
    {
      CFRelease(v14);
    }

    v16 = *(a4 + 24);
    if (v16 < 0)
    {
      v17 = &xmmword_101464828;
    }

    else
    {
      v17 = a4;
    }

    if (*(v17 + 1))
    {
      *(a4 + 24) = v16 | 0x800;
      sub_100360524(0.0, v15, a3, a4, a5, 0);
    }

    v18 = *(a4 + 24);
  }

  else
  {
    if (qword_101A34CF8 != -1)
    {
      sub_10135A1D8();
    }

    sub_10026EB3C(v19, qword_101A34CF0, 0x7FFFFFFFFFFFFFFFLL, 0, 0, v10, 0.0);
    sub_10020B844(a4, v19);
    sub_10026EC38(v19);
    *(a4 + 240) = a1 + 0.0;
    v18 = *(a4 + 24) & 0xFFFFFFFFFFFFF7FFLL;
    *(a4 + 24) = v18;
  }

  *(a4 + 24) = v18 | 0x4000;
}

void sub_100358B10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10026EC38(va);
  _Unwind_Resume(a1);
}

unint64_t sub_100358B54(uint64_t a1, unint64_t a2)
{
  v3 = sub_1005B75D0(*(a1 + 232));
  if ([v3 length] > a2)
  {
    v4 = [v3 string];
    v5 = [v4 rangeOfComposedCharacterSequenceAtIndex:a2];
    v7 = v6;

    a2 = v5 + v7;
  }

  return a2;
}

uint64_t sub_100358BE8(uint64_t a1, char **a2, __int128 *a3)
{
  v6 = sub_100359024(a1, *a2);
  v7 = *a2;
  if (*a2 != *(a1 + 48))
  {
    v9 = v6;
    v36 = xmmword_101464828;
    v10 = objc_opt_class();
    v11 = [*(a1 + 56) smartFieldAtCharIndex:v7 attributeKind:7 effectiveRange:&v36];
    v12 = sub_100014370(v10, v11);

    if (v12)
    {
      v35 = v36;
      v13 = v12;
      v14 = v13;
      v15 = v35;
      if (v7 + 1 == *(&v35 + 1) + v35)
      {
        v7 = sub_100358B54(a1, v7);
        v16 = objc_opt_class();
        v17 = [*(a1 + 56) smartFieldAtCharIndex:v7 attributeKind:7 effectiveRange:&v35];
        v18 = sub_100014370(v16, v17);

        v15 = v35;
      }

      else
      {
        v18 = v13;
      }

      v19 = v7;
      if (v18)
      {
        v19 = v7;
        if (v7 == v15)
        {
          v19 = sub_100358B54(a1, v15);
        }
      }
    }

    else
    {
      v19 = v7;
    }

    v35 = xmmword_101464828;
    v20 = objc_opt_class();
    v21 = [*(a1 + 56) smartFieldAtCharIndex:v9 attributeKind:7 effectiveRange:&v35];
    v22 = sub_100014370(v20, v21);

    if (!v22)
    {
LABEL_21:
      v28 = sub_1003619A4(a1, v9);
      v29 = sub_1003619A4(a1, v19);
      if (a3)
      {
        *a3 = xmmword_101464828;
      }

      v30 = sub_10027E2F0(v28);
      if (v28 == 8232)
      {
        v31 = 1;
      }

      else
      {
        v31 = v30;
      }

      if ((v31 & 1) != 0 || (sub_10027E580(v28) & 1) == 0 && (sub_10027E6A4(v29) & 1) == 0 && sub_10027E92C(v28, v29))
      {
        if (a3)
        {
          *a3 = v36;
        }

        if (!v12 || (sub_1005B7448(*(a1 + 232), v12) & 1) != 0 || v7 <= v36 || v7 >= *(&v36 + 1) + v36)
        {
LABEL_33:
          *a2 = v7;
          v8 = 1;
LABEL_44:

          return v8;
        }
      }

      else if (sub_10027E3D4(v28) && (sub_10027E3D4(v29) & 1) == 0)
      {
        v32 = sub_10027E430(*(*(a1 + 64) + 2 * v9));
        v33 = v9 ? v32 : 1;
        if ((v33 & 1) == 0)
        {
          while (sub_10027E3D4(*(*(a1 + 64) + 2 * v9)))
          {
            if (sub_10027E430(*(*(a1 + 64) + 2 * v9)))
            {
              goto LABEL_33;
            }

            v9 = sub_100359024(a1, v9);
            v8 = 0;
            if (!v9)
            {
              goto LABEL_44;
            }
          }
        }
      }

      v8 = 0;
      goto LABEL_44;
    }

    v23 = v35;
    if (v9 == v35)
    {
      v24 = sub_100359024(a1, v9);
      v25 = objc_opt_class();
      v26 = [*(a1 + 56) smartFieldAtCharIndex:v24 attributeKind:7 effectiveRange:&v35];
      v27 = sub_100014370(v25, v26);

      if (!v27)
      {
        v22 = 0;
LABEL_20:
        v7 = v9;
        v9 = v24;
        goto LABEL_21;
      }

      v23 = v35;
      v22 = v27;
    }

    else
    {
      v24 = v9;
      v9 = v7;
    }

    if (v24 + 1 == (*(&v35 + 1) + v23))
    {
      v7 = v9;
      v9 = sub_100359024(a1, v24);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  return 1;
}

char *sub_100359024(uint64_t a1, char *a2)
{
  v3 = sub_1005B75D0(*(a1 + 232));
  v4 = v3;
  if (a2)
  {
    v5 = [v3 string];
    a2 = [v5 rangeOfComposedCharacterSequenceAtIndex:a2 - 1];
  }

  return a2;
}

void sub_1003590A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003590E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10035912C(CFIndex *a1, uint64_t a2, uint64_t a3)
{
  v6 = a2 + a3;
  if (a2 + a3 > a1[6])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135A1EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135A200();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135A288();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v8 = [NSString stringWithUTF8String:"BOOL CRLWPCoreTextTypesetter::pCanBreakLineInRange(NSRange)"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:2396 isFatal:0 description:"Bad localMaxCharIndex"];
  }

  v10 = sub_10035E418();
  if ([v10 characterIsMember:*(a1[8] + 2 * v6 - 2)])
  {
    v11 = 1;
  }

  else
  {
    v12 = a1[27];
    if (!v12)
    {
      v13 = objc_alloc_init(NSMutableIndexSet);
      v14 = [[NSString alloc] initWithCharactersNoCopy:a1[8] length:a1[6] freeWhenDone:0];
      v20.length = a1[6];
      v20.location = 0;
      v15 = CFStringTokenizerCreate(0, v14, v20, 3uLL, 0);
      while (CFStringTokenizerAdvanceToNextToken(v15))
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v15);
        [v13 addIndex:CurrentTokenRange.length + CurrentTokenRange.location - 1];
      }

      CFRelease(v15);
      v18 = a1[27];
      v17 = (a1 + 27);
      *v17 = v13;

      v12 = *v17;
    }

    v11 = [v12 intersectsIndexesInRange:{a2, a3}];
  }

  return v11;
}

BOOL sub_1003593E8(uint64_t a1, CFIndex a2, CFIndex a3, uint64_t a4, double *a5, uint64_t a6)
{
  v12 = sub_10035FFBC(a1, a2 + a3);
  v13 = [*(a1 + 112) objectAtIndexedSubscript:v12];
  v14 = [v13 attributes];
  sub_100216318(a6, v14, a4);

  v15 = [*(a1 + 112) objectAtIndexedSubscript:v12];
  v16 = [v15 ctFont];

  if ((a4 - 0x10000) >> 20)
  {
    v18 = 1;
    LOWORD(v17) = a4;
  }

  else
  {
    v17 = ((a4 - 0x10000) >> 10) | 0xFFFFD800;
    characters[1] = a4 & 0x3FF | 0xDC00;
    v18 = 2;
  }

  characters[0] = v17;
  CTFontGetGlyphsForCharacters(v16, characters, glyphs, v18);
  CTFontGetAdvancesForGlyphs(v16, kCTFontOrientationDefault, glyphs, &advances, 1);
  v19 = sub_1003507D0(a1);
  v33.location = a2;
  v33.length = a3;
  Line = CTTypesetterCreateLine(v19, v33);
  v21 = Line;
  if (Line)
  {
    TypographicBounds = CTLineGetTypographicBounds(Line, 0, 0, 0);
    TruncatedLine = CTLineCreateTruncatedLine(v21, *a5 - advances.width, kCTLineTruncationEnd, 0);
    v24 = TruncatedLine;
    if (TruncatedLine)
    {
      v25 = CTLineGetTypographicBounds(TruncatedLine, 0, 0, 0);
      *a5 = v25;
      CFRelease(v24);
    }

    else
    {
      v25 = NAN;
    }

    CFRelease(v21);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135A2B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135A2D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135A360();
    }

    v26 = off_1019EDA68;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v27 = [NSString stringWithUTF8String:"BOOL CRLWPCoreTextTypesetter::pRoomForHyphen(CFRange, UTF32Char, CGFloat &, CRLWPLineFragment *const)"];
    v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:3930 isFatal:0 description:"CTTypesetterCreateLine returned nil"];

    TypographicBounds = 0.0;
    v25 = NAN;
  }

  return v25 == TypographicBounds;
}

void sub_10035972C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100359770(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1003597B4(uint64_t a1, NSRange *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (*(a3 + 416) < a5)
  {
    location = a2->location;
    if (a2->location != 0x7FFFFFFFFFFFFFFFLL)
    {
      length = a2->length;
      v50 = NAN;
      v9 = &length[location];
      if (&length[location] > location)
      {
        v14 = 0;
        while (1)
        {
          v63[0] = 0;
          v15 = sub_10011C330(a3);
          v16 = v15 == 0;

          if (v16)
          {
            v17 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10135A388();
            }

            v18 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              v52 = v17;
              v53 = 2082;
              v54 = "CRLWPHyphenationResult CRLWPCoreTextTypesetter::pHyphenateLocalRange(CFRange &, const CRLWPLayoutState *, const CGFloat, const CGFloat, CRLWPLineFragment *const)";
              v55 = 2082;
              v56 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
              v57 = 1024;
              v58 = 3847;
              v59 = 2082;
              v60 = "state->hyphenationLocale()";
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10135A3B0();
            }

            v19 = off_1019EDA68;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v28 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v52 = v17;
              v53 = 2114;
              v54 = v28;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v20 = [NSString stringWithUTF8String:"CRLWPHyphenationResult CRLWPCoreTextTypesetter::pHyphenateLocalRange(CFRange &, const CRLWPLayoutState *, const CGFloat, const CGFloat, CRLWPLineFragment *const)"];
            v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
            [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:3847 isFatal:0 description:"invalid nil value for '%{public}s'", "state->hyphenationLocale()"];
          }

          v22 = *(a1 + 56);
          v23 = sub_10011C330(a3);
          v24 = [v22 hyphenationLocationBeforeIndex:v9 inRange:location locale:length hyphenChar:{v23, v63}];

          if (v9 <= v24)
          {
            break;
          }

          v25 = a2->location;
          v26 = &v24[-a2->location];
          if (v24 <= a2->location)
          {
            break;
          }

          if (v24 != -1)
          {
            if (v24 < location || &v24[-location] >= length)
            {
              +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10135A3D8();
              }

              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                sub_10135A400();
              }

              if (qword_101AD5A10 != -1)
              {
                sub_10135A488();
              }

              v29 = off_1019EDA68;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                +[CRLAssertionHandler packedBacktraceString];
                objc_claimAutoreleasedReturnValue();
                sub_10130E89C();
              }

              v30 = [NSString stringWithUTF8String:"CRLWPHyphenationResult CRLWPCoreTextTypesetter::pHyphenateLocalRange(CFRange &, const CRLWPLayoutState *, const CGFloat, const CGFloat, CRLWPLineFragment *const)"];
              v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
              [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:3854 isFatal:0 description:"Bad hyphenation result"];

              return 0xFFFFFFFFLL;
            }

            v50 = a5;
            if (sub_1003593E8(a1, v25, v26, v63[0], &v50, a4))
            {
              v32 = v50;
              v33 = a2->location;
              v34 = sub_1003507D0(a1);
              v35 = CTTypesetterSuggestLineBreakWithOffset(v34, a2->location, v32, a6);
              v36 = a2->location;
              if ((v35 + v33) >= v24)
              {
                v37 = a2->location;
              }

              else
              {
                v37 = v35 + v33;
              }

              if (v37 > v36)
              {
                v38 = sub_1003507D0(a1);
                v64.location = v36;
                v64.length = v37 - v36;
                Line = CTTypesetterCreateLine(v38, v64);
                v40 = Line;
                if (Line)
                {
                  if (a5 - CTLineGetTypographicBounds(Line, 0, 0, 0) < *(a3 + 416))
                  {
                    a2->length = v37 - a2->location;
                    CFRelease(v40);
                    return 0xFFFFFFFFLL;
                  }

                  CFRelease(v40);
                }
              }

              v41 = v24 <= a2->location;
              a2->length = &v24[-a2->location];
              if (!v41)
              {
                return 1;
              }

              v42 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10135A588();
              }

              v43 = off_1019EDA68;
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                v48 = NSStringFromRange(*a2);
                *buf = 67110402;
                v52 = v42;
                v53 = 2082;
                v54 = "CRLWPHyphenationResult CRLWPCoreTextTypesetter::pHyphenateLocalRange(CFRange &, const CRLWPLayoutState *, const CGFloat, const CGFloat, CRLWPLineFragment *const)";
                v55 = 2082;
                v56 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
                v57 = 1024;
                v58 = 3894;
                v59 = 2114;
                v60 = v48;
                v61 = 2048;
                v62 = v24;
                _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad hyphenation result range: %{public}@ vs %lu", buf, 0x36u);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_10135A5B0();
              }

              v44 = off_1019EDA68;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                +[CRLAssertionHandler packedBacktraceString];
                objc_claimAutoreleasedReturnValue();
                sub_10130E89C();
              }

              v45 = [NSString stringWithUTF8String:"CRLWPHyphenationResult CRLWPCoreTextTypesetter::pHyphenateLocalRange(CFRange &, const CRLWPLayoutState *, const CGFloat, const CGFloat, CRLWPLineFragment *const)"];
              v46 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
              v47 = NSStringFromRange(*a2);
              [CRLAssertionHandler handleFailureInFunction:v45 file:v46 lineNumber:3894 isFatal:0 description:"Bad hyphenation result range: %{public}@ vs %lu", v47, v24];

              if ((a2->length & 0x8000000000000000) != 0)
              {
                return 0xFFFFFFFFLL;
              }

              else
              {
                return 1;
              }
            }
          }

          result = 0xFFFFFFFFLL;
          if (v14 <= 0x12)
          {
            ++v14;
            v9 = v24;
            if (v24 > location)
            {
              continue;
            }
          }

          return result;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_10035A0C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035A104(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035A148(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035A18C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_10035A1D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = sub_10020BC74(a2);
  if (result)
  {
    return result;
  }

  v230 = a4;
  v263 = a1;
  v239 = a3;
  v279 = 0.0;
  v280 = 0.0;
  v247 = a2;
  sub_1002162D0(a2, &v280, &v279);
  if (v279 - v280 <= 32000.0)
  {
    v9 = v279 - v280;
  }

  else
  {
    v9 = 32000.0;
  }

  if (sub_10021168C(a2))
  {
    *buf = 0;
    v10 = sub_100216390(a2, buf);
    if ((*buf - 0x10000) >> 20)
    {
      v12 = 1;
      LOWORD(v11) = *buf;
    }

    else
    {
      v11 = ((*buf - 0x10000) >> 10) | 0xFFFFD800;
      *&translations[2] = *buf & 0x3FF | 0xDC00;
      v12 = 2;
    }

    *translations = v11;
    v13 = [[NSString alloc] initWithCharacters:translations length:v12];
    v14 = [[NSAttributedString alloc] initWithString:v13 attributes:v10];
    v15 = CTLineCreateWithAttributedString(v14);
    TypographicBounds = CTLineGetTypographicBounds(v15, 0, 0, 0);
    cf = v15;
  }

  else
  {
    cf = 0;
    TypographicBounds = 0.0;
  }

  if (sub_100240930(v239 + 24) != *(v247 + 16))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135A5D8();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10135A600();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135A688();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v18);
    }

    v19 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::createLineVectorForLineFragment(CRLWPLineFragment *, const CRLWPLayoutState *, BOOL, CRLWPLayoutFlags) const"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:2920 isFatal:0 description:"line fragment isn't from the current paragraph"];
  }

  if (*(v247 + 24) < 0)
  {
    v21 = &xmmword_101464828;
  }

  else
  {
    v21 = v247;
  }

  v22 = [*(a1 + 56) charRangeMappedFromStorage:{*v21, *(v21 + 1)}];
  v24 = v23;
  if (v23 < 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135A6B0();
    }

    v25 = off_1019EDA68;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10135A6D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135A784();
    }

    v26 = off_1019EDA68;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v27);
    }

    v28 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::createLineVectorForLineFragment(CRLWPLineFragment *, const CRLWPLayoutState *, BOOL, CRLWPLayoutFlags) const"];
    v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:2923 isFatal:0 description:"Bad range length %ld.", v24];
  }

  v30 = v22 + v24;
  if (*(*(a1 + 232) + 72))
  {
    range = v30 == *(a1 + 48);
  }

  else
  {
    range = 0;
  }

  charIndex = v22 + v24;
  if (v30)
  {
    v31 = *(*(a1 + 64) + 2 * v30 - 2) == 8232;
  }

  else
  {
    v31 = 0;
  }

  if (*(v239 + 400) == 3 && charIndex < *(a1 + 48))
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_1002163E8(v247) ^ 1;
  }

  v248 = *(v247 + 24);
  if (!sub_1003507D0(a1))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135A7AC();
    }

    v33 = off_1019EDA68;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10135A7D4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135A85C();
    }

    v34 = off_1019EDA68;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v35);
    }

    v36 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::createLineVectorForLineFragment(CRLWPLineFragment *, const CRLWPLayoutState *, BOOL, CRLWPLayoutFlags) const"];
    v37 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v36 file:v37 lineNumber:2932 isFatal:0 description:"nil typesetter"];
  }

  v38 = sub_1003507D0(a1);
  v298.location = v22;
  v298.length = v24;
  LineWithOffset = CTTypesetterCreateLineWithOffset(v38, v298, v280);
  if (!LineWithOffset)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135A884();
    }

    v40 = off_1019EDA68;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_10135A8AC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135A934();
    }

    v41 = off_1019EDA68;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v42);
    }

    v43 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::createLineVectorForLineFragment(CRLWPLineFragment *, const CRLWPLayoutState *, BOOL, CRLWPLayoutFlags) const"];
    v44 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v43 file:v44 lineNumber:2934 isFatal:0 description:"nil lineRef"];
  }

  GlyphCount = CTLineGetGlyphCount(LineWithOffset);
  if (!GlyphCount)
  {
    v46 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135A95C();
    }

    v47 = off_1019EDA68;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      if (v22 >= *(a1 + 48))
      {
        v224 = 0;
      }

      else
      {
        v224 = *(*(a1 + 64) + 2 * v22);
      }

      *buf = 67110658;
      v286 = v46;
      *v287 = 2082;
      *&v287[2] = "void CRLWPCoreTextTypesetter::createLineVectorForLineFragment(CRLWPLineFragment *, const CRLWPLayoutState *, BOOL, CRLWPLayoutFlags) const";
      v288 = 2082;
      v289 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
      v290 = 1024;
      v291 = 2935;
      v292 = 2048;
      v293 = v22;
      v294 = 2048;
      v295 = v24;
      v296 = 1024;
      v297 = v224;
      _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad lineGlyphCount 0 for line range {%ld, %ld} 0x%X", buf, 0x3Cu);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135A984();
    }

    v48 = off_1019EDA68;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v49);
    }

    v50 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::createLineVectorForLineFragment(CRLWPLineFragment *, const CRLWPLayoutState *, BOOL, CRLWPLayoutFlags) const"];
    v51 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    if (v22 >= *(a1 + 48))
    {
      v52 = 0;
    }

    else
    {
      v52 = *(*(a1 + 64) + 2 * v22);
    }

    [CRLAssertionHandler handleFailureInFunction:v50 file:v51 lineNumber:2935 isFatal:0 description:"bad lineGlyphCount 0 for line range {%ld, %ld} 0x%X", v22, v24, v52];
  }

  if (((v32 | range | v31) & 1) == 0)
  {
    v9 = v9 - TypographicBounds + *(a1 + 248);
    line = CTLineCreateJustifiedLine(LineWithOffset, 1.0, v9);
    if (line)
    {
      CFRelease(LineWithOffset);
      *(v247 + 24) &= ~0x8000uLL;
      goto LABEL_81;
    }

    *(v247 + 24) |= 0x8000uLL;
    GlyphCount = sub_1002163E8(v247);
  }

  line = LineWithOffset;
LABEL_81:
  v53 = *(v239 + 400);
  if (v53 != 3)
  {
    if (v53 == 2)
    {
      v55 = 0.5;
    }

    else
    {
      v54 = 0.0;
      if (v53 != 1)
      {
LABEL_88:
        if (v53 == 1 || ((v53 == 3) & (v248 >> 12)) != 0)
        {
          *(v247 + 24) |= 0x800000uLL;
        }

        goto LABEL_91;
      }

      v55 = 1.0;
    }

LABEL_87:
    v9 = v9 - TypographicBounds + *(a1 + 248);
    v54 = v55;
    goto LABEL_88;
  }

  v54 = 0.0;
  v55 = 1.0;
  if ((v248 & 0x1000) != 0)
  {
    goto LABEL_87;
  }

LABEL_91:
  if (v230)
  {
    v56 = sub_10035F72C(v280, GlyphCount, v239, v247);
    v57 = sub_10020BCF4(v247);
    v58 = 0.0;
    v59 = v56 + 0.0;
    if (v57)
    {
      v60 = *(v239 + 350);

      if (v60)
      {
        v61 = sub_10020BCF4(v247);
        [v61 labelTypographicExtent];
        v63 = v62;

        v58 = v63 + 0.0;
      }
    }
  }

  else
  {
    v58 = 0.0;
    PenOffsetForFlush = CTLineGetPenOffsetForFlush(line, v54, v9);
    v59 = sub_10035F72C(v280, v65, v239, v247) + PenOffsetForFlush + 0.0;
  }

  *(v247 + 240) = v59 + v58 + CTLineGetTypographicBounds(line, 0, 0, 0);
  if (charIndex <= v22)
  {
    v229 = 0;
  }

  else
  {
    v229 = [*(a1 + 56) characterAtIndex:charIndex - 1];
    v66 = sub_10027E2F0(v229) ^ 1;
    if (v229 == 8232)
    {
      LOBYTE(v66) = 0;
    }

    if ((v66 & 1) == 0)
    {
      *(v247 + 24) |= 0x800uLL;
    }
  }

  if (line)
  {
    v67 = sub_1005B75D0(*(a1 + 232));
    v228 = [v67 string];

    sub_1002152C0(v247, v228);
    sub_10026EB3C(buf, line, 0x7FFFFFFFFFFFFFFFLL, 0, 0, v59, 0.0);
    sub_10020B844(v247, buf);
    v226 = CTLineGetGlyphRuns(line);
    v68 = [v226 count];
    v69 = sub_10026ECB4(buf);
    TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(v69);
    v278 = 0u;
    v277 = 0u;
    v276 = 0u;
    v275 = 0u;
    obj = v226;
    v70 = [obj countByEnumeratingWithState:&v275 objects:v284 count:16];
    if (!v70)
    {
      v71 = INFINITY;
      goto LABEL_309;
    }

    v242 = 0;
    v232 = v68 - 1;
    v71 = INFINITY;
    v237 = *v276;
    while (1)
    {
      v245 = 0;
      v238 = v70;
      do
      {
        if (*v276 != v237)
        {
          objc_enumerationMutation(obj);
        }

        v72 = *(*(&v275 + 1) + 8 * v245);
        v274 = v72;
        StringRange = CTRunGetStringRange(v72);
        v74 = CTRunGetGlyphCount(v72);
        v250 = CTRunGetAttributes(v72);
        v75 = [*(v263 + 56) characterAtIndex:StringRange.location];
        v251 = [[CRLWPAdornments alloc] initWithType:4 color:0 font:0 flippedFont:0];
        v273 = CGSizeZero;
        v272 = 0;
        v76 = [v250 objectForKeyedSubscript:@"CRLWPEmphasisMarksAttribute"];
        v240 = v76;
        if (v76)
        {
          v244 = 0;
          if ([v76 length] && v74)
          {
            v244 = sub_10035F908(v263, v239, v251, &v274, v247, v240, &v272, &v273);
          }
        }

        else
        {
          v244 = 0;
        }

        if ((v75 == 14 || v75 == 65532) && v74 != 1)
        {
          if (StringRange.length < 2)
          {
            v79 = 0;
          }

          else
          {
            v79 = [*(v263 + 56) characterAtIndex:StringRange.location + 1];
          }

          if (v75 == 65532)
          {
            v80 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10135A9FC();
            }

            v81 = off_1019EDA68;
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              v148 = NSStringFromRange(StringRange);
              *translations = 67110658;
              *&translations[4] = v80;
              *&translations[8] = 2082;
              *&translations[10] = "void CRLWPCoreTextTypesetter::createLineVectorForLineFragment(CRLWPLineFragment *, const CRLWPLayoutState *, BOOL, CRLWPLayoutFlags) const";
              *&translations[18] = 2082;
              *&translations[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
              *&translations[28] = 1024;
              *&translations[30] = 3041;
              *&translations[34] = 2048;
              *&translations[36] = v74;
              *&translations[44] = 2114;
              *&translations[46] = v148;
              v282 = 1024;
              v283 = v79;
              _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attachment spanning wrong number of glyphs (%lu) range: %{public}@ %x", translations, 0x3Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10135AA24();
            }

            v82 = off_1019EDA68;
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              v150 = +[CRLAssertionHandler packedBacktraceString];
              *translations = 67109378;
              *&translations[4] = v80;
              *&translations[8] = 2114;
              *&translations[10] = v150;
              _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", translations, 0x12u);
            }

            v83 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::createLineVectorForLineFragment(CRLWPLineFragment *, const CRLWPLayoutState *, BOOL, CRLWPLayoutFlags) const"];
            v84 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
            v85 = NSStringFromRange(StringRange);
            [CRLAssertionHandler handleFailureInFunction:v83 file:v84 lineNumber:3041 isFatal:0 description:"Attachment spanning wrong number of glyphs (%lu) range: %{public}@ %x", v74, v85, v79];
          }

          else
          {
            v86 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10135A9AC();
            }

            v87 = off_1019EDA68;
            if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
            {
              v149 = NSStringFromRange(StringRange);
              *translations = 67110658;
              *&translations[4] = v86;
              *&translations[8] = 2082;
              *&translations[10] = "void CRLWPCoreTextTypesetter::createLineVectorForLineFragment(CRLWPLineFragment *, const CRLWPLayoutState *, BOOL, CRLWPLayoutFlags) const";
              *&translations[18] = 2082;
              *&translations[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
              *&translations[28] = 1024;
              *&translations[30] = 3043;
              *&translations[34] = 2048;
              *&translations[36] = v74;
              *&translations[44] = 2114;
              *&translations[46] = v149;
              v282 = 1024;
              v283 = v79;
              _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Footnote spanning wrong number of glyphs (%lu) range: %{public}@ %x", translations, 0x3Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10135A9D4();
            }

            v88 = off_1019EDA68;
            if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
            {
              v151 = +[CRLAssertionHandler packedBacktraceString];
              *translations = 67109378;
              *&translations[4] = v86;
              *&translations[8] = 2114;
              *&translations[10] = v151;
              _os_log_error_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", translations, 0x12u);
            }

            v83 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::createLineVectorForLineFragment(CRLWPLineFragment *, const CRLWPLayoutState *, BOOL, CRLWPLayoutFlags) const"];
            v84 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
            v85 = NSStringFromRange(StringRange);
            [CRLAssertionHandler handleFailureInFunction:v83 file:v84 lineNumber:3043 isFatal:0 description:"Footnote spanning wrong number of glyphs (%lu) range: %{public}@ %x", v74, v85, v79];
          }
        }

        v89 = [v250 objectForKeyedSubscript:@"CRLWPUnderline"];
        v90 = [v89 integerValue];

        v91 = [v250 objectForKeyedSubscript:@"CRLWPStrikethrough"];
        v92 = [v91 integerValue];

        v243 = [v250 objectForKeyedSubscript:@"CRLWPTextBackgroundColor"];
        v93 = objc_opt_class();
        v94 = [v250 objectForKeyedSubscript:@"CRLWPTextHighlightsAttribute"];
        v241 = sub_100014370(v93, v94);

        if (v74)
        {
          sub_1000E7C60(buffer, v74);
          v299.location = 0;
          v299.length = v74;
          CTRunGetStringIndices(v72, v299, buffer[0]);
          sub_1000E7D5C(v270, v74);
          v300.location = 0;
          v300.length = v74;
          CTRunGetPositions(v72, v300, v270[0]);
          sub_100363A24(v269, v74);
          v301.location = 0;
          v301.length = v74;
          CTRunGetAdvances(v72, v301, v269[0]);
          v95 = *(v263 + 232);
          if (v95 && *(*(v263 + 64) + 2 * *buffer[0]) == -4)
          {
            v96 = sub_1005B73C4(v95, *buffer[0]);
            descent = 0.0;
            ascent = 0.0;
            leading = 0.0;
            if (v96)
            {
              v97 = v96[4];
              descent = v96[3] * 0.5;
              ascent = descent;
              v98 = v97 + v96[5];
              v99 = 1;
LABEL_150:
              Status = CTRunGetStatus(v72);
              v101 = *(v263 + 27);
              v102 = [*(v263 + 112) objectAtIndexedSubscript:{sub_10035FFBC(v263, *buffer[0])}];
              v103 = [v102 ctFont];

              cf1 = [v250 objectForKeyedSubscript:kCTFontAttributeName];

              if (!cf1 || !v103 || !CFEqual(cf1, v103))
              {
                *(v247 + 24) |= 0x80uLL;
              }

              if ((v248 & 0x1000) != 0 || v242 != v232)
              {
                v104 = 0.0;
                if (((v242 == 0) & (v248 >> 12)) != 0)
                {
                  v105 = TrailingWhitespaceWidth;
                }

                else
                {
                  v105 = 0.0;
                }
              }

              else
              {
                v104 = sub_1003601D0(v263, 0, *(v263 + 27), v74, v270[0], v269[0], buffer[0], TrailingWhitespaceWidth);
                v105 = 0.0;
              }

              v249 = *&v101 & ((Status & 4) >> 2);
              if (v249)
              {
                characters = *(*(v263 + 64) + 2 * *buffer[0]);
                glyphs = 0;
                if (CTFontGetGlyphsForCharacters(cf1, &characters, &glyphs, 1))
                {
                  CTFontGetVerticalTranslationsForGlyphs(cf1, &glyphs, translations, 1);
                  v106 = v59 - v270[0]->y + *&translations[8];
                }

                else
                {
                  v106 = sub_1005B6AAC(v247, StringRange.location);
                }
              }

              else
              {
                v106 = v59 + v270[0]->x;
              }

              v107 = v105 + v106;
              v108 = StringRange.location + StringRange.length;
              if ((sub_10021168C(v247) & (StringRange.location + StringRange.length == charIndex)) != 0)
              {
                v109 = TypographicBounds + v98 - (v104 + v105);
              }

              else
              {
                v109 = v98 - (v104 + v105);
              }

              if (v109 > 0.0 || v92 == -1)
              {
                if (v90)
                {
                  v110 = [v250 objectForKeyedSubscript:@"CRLWPUnderlineColor"];
                  v111 = v110;
                  v112 = [v110 CGColor];

                  if (!v112)
                  {
                    v112 = [v250 objectForKeyedSubscript:kCTForegroundColorAttributeName];
                  }

                  v113 = sub_100282BC0(*(v263 + 96), *(v263 + 27), 5);
                  if (v113 != 1 || (*translations = xmmword_101464828, [*(v263 + 56) smartFieldAtCharIndex:*buffer[0] attributeKind:7 effectiveRange:translations], (v114 = objc_claimAutoreleasedReturnValue()) == 0) || (*buffer[0] >= *translations ? (v115 = *buffer[0] - *translations >= *&translations[8]) : (v115 = 1), !v115 ? (v116 = 0) : (v116 = 1), v114, (v116 & 1) != 0))
                  {
                    v117 = sub_10011C2B4(v239);
                    [v117 scaleTextPercent];
                    v118 = sub_10020BDE8(v250);

                    v119 = 0;
                    v120 = 0;
                    v121 = -v118;
                    do
                    {
                      if ((sub_10027E3D4(*(*(v263 + 64) + 2 * buffer[0][v120])) & 1) == 0)
                      {
                        break;
                      }

                      v119 = ++v120 >= v74;
                    }

                    while (v74 != v120);
                    sub_100282710(cf1, v103, v90, *(v263 + 27), *(v263 + 80), v113, v121);
                    v123 = v122;
                    v125 = v124;
                    v127 = v126;
                    v128 = [CRLWPAdornmentLine alloc];
                    if (v90 == 2)
                    {
                      v129 = 2;
                    }

                    else
                    {
                      v129 = 1;
                    }

                    LOBYTE(v225) = 0;
                    v130 = [(CRLWPAdornmentLine *)v128 initWithStart:v112 length:v129 color:v90 thickness:v113 lineCount:v119 underline:0 adornmentLocation:v107 underLineAdjustment:v123 isWhitespace:v109 renderingDelegate:v125 allowAntialiasing:v127, v225];
                    v131 = sub_10020BD14(v247);
                    v132 = sub_100360270(v131, v130);

                    if (v244 && v113 == [(CRLWPAdornments *)v251 location])
                    {
                      [v132 underlineAdjustment];
                      [(CRLWPAdornments *)v251 setVerticalAdjustment:?];
                    }
                  }
                }

                if (v92)
                {
                  v133 = sub_10011C2B4(v239);
                  [v133 scaleTextPercent];
                  v134 = sub_10020BDE8(v250);

                  v135 = [v250 objectForKeyedSubscript:@"CRLWPStrikethroughColor"];
                  v136 = v135;
                  v137 = [v135 CGColor];

                  if (!v137)
                  {
                    v137 = [v250 objectForKeyedSubscript:kCTForegroundColorAttributeName];
                  }

                  sub_100282A1C(v103, *(v263 + 27), v249, -v134);
                  v140 = v139;
                  if (*(v263 + 27))
                  {
                    v138 = 0.0 - v134;
                  }

                  if (v92 == 2)
                  {
                    v141 = v138 - v139;
                  }

                  else
                  {
                    v141 = v138;
                  }

                  if (v92 == -1)
                  {
                    v142 = [*(v263 + 56) characterAtIndex:v108 - 1];
                    if (sub_100280DC0(v108 - 1, *(v263 + 56)))
                    {
                      v109 = v279 - v107;
                    }

                    else
                    {
                      v143 = sub_10027E2F0(v142) ^ 1;
                      if (v142 == 8232)
                      {
                        LOBYTE(v143) = 0;
                      }

                      v144 = v104;
                      if ((v143 & 1) == 0)
                      {
                        v145 = v74;
                        v146 = v74;
                        do
                        {
                          if (v146 <= 0)
                          {
                            v144 = v104;
                            goto LABEL_211;
                          }

                          v147 = buffer[0][--v146];
                          --v145;
                        }

                        while (v147 != v108 - 1);
                        v144 = v104 - v269[0][v145].width + 7.0;
                      }

LABEL_211:
                      v152 = v109 + v144;
                      if (v279 - v107 >= v152)
                      {
                        v109 = v152;
                      }

                      else
                      {
                        v109 = v279 - v107;
                      }
                    }

                    v92 = 1;
                  }

                  if (v109 > 0.0)
                  {
                    v153 = [[CRLWPAdornmentLine alloc] initWithStart:v137 length:v92 color:0 thickness:0 lineCount:v107 underline:v141 adornmentLocation:v109 underLineAdjustment:v140, 0.0];
                    v154 = sub_10020BD1C(v247);
                    v155 = sub_100360270(v154, v153);
                  }
                }
              }

              if (v243 && v109 > 0.0)
              {
                v156 = -[CRLWPAdornmentLine initWithStart:length:color:thickness:lineCount:underline:adornmentLocation:underLineAdjustment:]([CRLWPAdornmentLine alloc], "initWithStart:length:color:thickness:lineCount:underline:adornmentLocation:underLineAdjustment:", [v243 CGColor], 0, 0, 0, v107, 0.0, v104 + v109, 0.0, 0.0);
                v157 = sub_10020BD24(v247);
                v158 = sub_100360270(v157, v156);
              }

              [v241 count];
              v159 = [v250 objectForKeyedSubscript:@"CRLWPCharacterFillAttribute"];
              if (v159)
              {
                v160 = objc_opt_class();
                v161 = [v250 objectForKeyedSubscript:@"CRLWPCharacterFillAttribute"];
                v162 = sub_100013F00(v160, v161);
                LOBYTE(v160) = [v162 fillType] == 0;

                if ((v160 & 1) == 0)
                {
                  *(v247 + 24) |= 0x400uLL;
                }
              }

              v163 = [v250 objectForKeyedSubscript:@"CRLWPCharacterStrokeAttribute"];
              if (v163)
              {
                v164 = [v250 objectForKeyedSubscript:@"CRLWPCharacterFillAttribute"];
                v165 = v164 == 0;

                if (v165)
                {
                  *(v247 + 24) |= 0x400uLL;
                }
              }

              v166 = [v250 objectForKeyedSubscript:@"CRLWPInvisibleTextAttribute"];
              v167 = v166 == 0;

              if (!v167)
              {
                *(v247 + 24) |= 0x400uLL;
              }

              v168 = 0;
              v169 = v244;
              v170 = cf1;
              while (2)
              {
                v171 = 0;
                v172 = buffer[0][v168];
                v173 = *(*(v263 + 64) + 2 * v172);
                v174 = 1;
                if (*(*(v263 + 64) + 2 * v172) < 0x2000u)
                {
                  if (v173 > 0x20)
                  {
                    goto LABEL_242;
                  }

                  if (((1 << v173) & 0x3C30) != 0)
                  {
                    goto LABEL_239;
                  }

                  if (v173 == 9)
                  {
                    x = v270[0][v168].x;
                    MaxX = CGRectGetMaxX(*(v247 + 40));
                    if ((v248 & 0x1000) != 0)
                    {
                      v182 = MaxX - (v59 + x + v269[0][v168].width);
                    }

                    else
                    {
                      v182 = x + v280;
                    }

                    v183 = objc_opt_class();
                    v184 = sub_10011C2F4(v239);
                    v257 = sub_100013F00(v183, v184);

                    v185 = [v257 tabAfterPosition:v182];
                    rangeb = [v185 leader];

                    if ([rangeb length] && (objc_msgSend(rangeb, "isEqualToString:", @" ") & 1) == 0)
                    {
                      width = v269[0][v168].width;
                      v253 = [*(v263 + 56) characterStyleAtCharIndex:v172 effectiveRange:0];
                      v255 = [*(v263 + 56) paragraphStyleAtCharIndex:v172 effectiveRange:0];
                      v187 = sub_10011C2B4(v239);
                      v188 = sub_100352644(v255, v253, [v187 scaleTextPercent], 1u, 1);
                      v259 = [v188 mutableCopy];

                      if (v259)
                      {
                        if (width > 0.0)
                        {
                          if (*(v239 + 349) == 1)
                          {
                            v189 = +[CRLWPTab tabStopLeaderStringArrow];
                            v190 = [rangeb isEqualToString:v189];

                            if (v190)
                            {
                              v191 = +[CRLWPTab tabStopLeaderStringArrowRTL];

                              rangeb = v191;
                            }
                          }

                          rangeb = rangeb;
                          v192 = [[NSAttributedString alloc] initWithString:rangeb attributes:v259];
                          v193 = CTLineCreateWithAttributedString(v192);

                          v194 = CTLineGetTypographicBounds(v193, 0, 0, 0);
                          CFRelease(v193);
                          if (v194 <= 0.0)
                          {
                            v201 = 1;
                          }

                          else
                          {
                            v195 = width / v194;
                            v196 = vcvtms_u32_f32(v195);
                            while (v196)
                            {
                              v197 = [&stru_1018BCA28 stringByPaddingToLength:v196 withString:rangeb startingAtIndex:0];
                              v198 = [[NSAttributedString alloc] initWithString:v197 attributes:v259];
                              v199 = CTLineCreateWithAttributedString(v198);

                              v200 = CTLineGetTypographicBounds(v199, 0, 0, 0);
                              CFRelease(v199);

                              --v196;
                              if (v200 <= width)
                              {
                                v201 = v196 + 1;
                                goto LABEL_280;
                              }
                            }

                            v201 = 0;
                          }

LABEL_280:
                          v207 = 0;
                          v208 = 0.0;
                          while (1)
                          {
                            v209 = [&stru_1018BCA28 stringByPaddingToLength:v201 withString:rangeb startingAtIndex:0];
                            v210 = [[NSAttributedString alloc] initWithString:v209 attributes:v259];
                            v211 = CTLineCreateWithAttributedString(v210);

                            v212 = CTLineGetTypographicBounds(v211, 0, 0, 0);
                            v213 = v212;
                            if (v212 <= v208 || v212 > width)
                            {
                              break;
                            }

                            if (v207)
                            {
                              CFRelease(v207);
                            }

                            ++v201;
                            v208 = v213;
                            v207 = v211;
                          }

                          if (v211)
                          {
                            CFRelease(v211);
                          }

                          if (v207)
                          {
                            sub_10026EB3C(translations, v207, v172, 1, 0, width + x + *v287 - v208, 0.0);
                            sub_10020BC18(v247, translations);
                            CFRelease(v207);
                            sub_10026EC38(translations);
                          }
                        }
                      }

                      else
                      {
                        v202 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                        if (qword_101AD5A10 != -1)
                        {
                          sub_10135AA4C();
                        }

                        v203 = off_1019EDA68;
                        if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
                        {
                          *translations = 67110146;
                          *&translations[4] = v202;
                          *&translations[8] = 2082;
                          *&translations[10] = "void CRLWPCoreTextTypesetter::createLineVectorForLineFragment(CRLWPLineFragment *, const CRLWPLayoutState *, BOOL, CRLWPLayoutFlags) const";
                          *&translations[18] = 2082;
                          *&translations[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
                          *&translations[28] = 1024;
                          *&translations[30] = 3376;
                          *&translations[34] = 2082;
                          *&translations[36] = "tabLeaderAttrs";
                          _os_log_error_impl(&_mh_execute_header, v203, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", translations, 0x2Cu);
                        }

                        if (qword_101AD5A10 != -1)
                        {
                          sub_10135AA74();
                        }

                        v204 = off_1019EDA68;
                        if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
                        {
                          v215 = +[CRLAssertionHandler packedBacktraceString];
                          *translations = 67109378;
                          *&translations[4] = v202;
                          *&translations[8] = 2114;
                          *&translations[10] = v215;
                          _os_log_error_impl(&_mh_execute_header, v204, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", translations, 0x12u);
                        }

                        v205 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::createLineVectorForLineFragment(CRLWPLineFragment *, const CRLWPLayoutState *, BOOL, CRLWPLayoutFlags) const"];
                        v206 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
                        [CRLAssertionHandler handleFailureInFunction:v205 file:v206 lineNumber:3376 isFatal:0 description:"invalid nil value for '%{public}s'", "tabLeaderAttrs"];
                      }
                    }

                    v174 = 0;
                    v171 = 0;
                    v169 = v244;
                    v170 = cf1;
LABEL_242:
                    if (((v174 | v99 & v171) & v169) == 1)
                    {
                      v175 = &v270[0][v168];
                      rangea = v175->x;
                      y = v175->y;
                      v176 = v274;
                      CTRunGetTextMatrix(translations, v274);
                      v252 = *&translations[16];
                      v254 = *&translations[32];
                      v256 = *translations;
                      if (v249)
                      {
                        *translations = 0;
                        v303.location = v168;
                        v303.length = 1;
                        CTRunGetGlyphs(v176, v303, translations);
                        BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(v170, kCTFontOrientationVertical, translations, 0, 1);
                        v177 = -BoundingRectsForGlyphs.size.width;
                      }

                      else
                      {
                        v177 = v269[0][v168].width;
                      }

                      v178 = vaddq_f64(v254, vmlaq_n_f64(vmulq_n_f64(v252, y), v256, rangea));
                      sub_1003603C0(v263, v251, v173, buffer[0][v168], v272, v99, v178.f64[0], v178.f64[1], v177, v273.width);
                    }

                    if (++v168 == v74)
                    {
                      v216 = CTFontCopyFamilyName(v170);
                      if ([(__CFString *)v216 isEqualToString:@"Zapfino"])
                      {
                        *(v247 + 24) |= 0x40000uLL;
                      }

                      if (v269[0])
                      {
                        v269[1] = v269[0];
                        operator delete(v269[0]);
                      }

                      if (v270[0])
                      {
                        v270[1] = v270[0];
                        operator delete(v270[0]);
                      }

                      if (buffer[0])
                      {
                        buffer[1] = buffer[0];
                        operator delete(buffer[0]);
                      }

                      goto LABEL_303;
                    }

                    continue;
                  }

                  if (v173 != 32)
                  {
                    goto LABEL_242;
                  }
                }

                else
                {
                  if ((v173 - 0x2000) <= 0x29)
                  {
                    if (((1 << v173) & 0xF7F) != 0)
                    {
                      break;
                    }

                    if (((1 << v173) & 0x30000000000) != 0)
                    {
LABEL_239:
                      v71 = v270[0][v168].x;
                      v171 = 0;
                      if ((v248 & 0x1000) != 0)
                      {
                        v71 = v71 + v269[0][v168].width;
                      }

                      v174 = 1;
                      goto LABEL_242;
                    }
                  }

                  if (v173 != 12288 && v173 != 8287)
                  {
                    goto LABEL_242;
                  }
                }

                break;
              }

              v174 = 0;
              v171 = 1;
              goto LABEL_242;
            }
          }

          else
          {
            descent = 0.0;
            ascent = 0.0;
            leading = 0.0;
          }

          v302.location = 0;
          v302.length = v74;
          v98 = CTRunGetTypographicBounds(v72, v302, &ascent, &descent, &leading);
          v99 = 0;
          goto LABEL_150;
        }

LABEL_303:
        if ([(CRLWPAdornments *)v251 positionCount])
        {
          sub_10020BD3C(v247, v251);
        }

        ++v242;
        v245 = v245 + 1;
      }

      while (v245 != v238);
      v70 = [obj countByEnumeratingWithState:&v275 objects:v284 count:16];
      if (!v70)
      {
LABEL_309:

        if ((*(v247 + 25) & 8) != 0)
        {
          sub_100360524(v71, v218, v239, v247, v229, v230);
        }

        if (sub_10021168C(v247))
        {
          OffsetForStringIndex = CTLineGetOffsetForStringIndex(line, charIndex, 0);
          v220 = *v287;
          v221 = sub_10011C2B4(v239);
          v222 = sub_10011C2B4(v239);
          [v222 scaleTextPercent];
          v223 = CRLWPShapeLayout.gap(forColumnIndex:bodyWidth:)();
          sub_10026EB3C(translations, cf, 0x7FFFFFFFFFFFFFFFLL, 0, 2, OffsetForStringIndex + v220, v223);

          sub_10020BC18(v247, translations);
          if (cf)
          {
            CFRelease(cf);
          }

          sub_10026EC38(translations);
        }

        CFRelease(line);

        sub_10026EC38(buf);
        return sub_1002163F0(v247);
      }
    }
  }

  return sub_1002163F0(v247);
}

BOOL sub_10035CC4C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_100211DF4(a2);
  result = v7 == 1;
  if (a4 > a3 && v7 != 1)
  {
    v9 = a3 - a4 + 2;
    v10 = a4 - 1;
    do
    {
      v11 = v9;
      if (v10 <= a3)
      {
        v13 = a3;
        if (!v11)
        {
          return (*(*(a1 + 64) + 2 * v13) & 0xFC00) == 56320;
        }

        return v13 == a3;
      }

      v12 = sub_10027E3D4(*(*(a1 + 64) + 2 * v10));
      v9 = v11 + 1;
      --v10;
    }

    while ((v12 & 1) != 0);
    v13 = v10 + 1;
    if (!v11)
    {
      return (*(*(a1 + 64) + 2 * v13) & 0xFC00) == 56320;
    }

    return v13 == a3;
  }

  return result;
}

void sub_10035CD00(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10035CD44(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a2 + 224);
  v10 = [*(a1 + 112) count];
  if ([*(a1 + 112) count] >= 2)
  {
    v11 = 1;
    while (1)
    {
      v12 = [*(a1 + 112) objectAtIndexedSubscript:v11];
      v13 = [v12 charIndex];

      if (v13 > a3)
      {
        break;
      }

      if (++v11 >= [*(a1 + 112) count])
      {
        goto LABEL_7;
      }
    }

    v10 = v11;
  }

LABEL_7:
  v14 = v10 - 1;
  v15 = *(v8 + 464);
  v16 = *(v8 + 472);
  v17 = *(v8 + 488);
  if (*(v8 + 480) == 0.0)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = *(v8 + 480);
  }

  v19 = sub_10035E5F8(a1, a2, v14, a3, a4, *(v8 + 464), *(v8 + 472), v18, *(v8 + 488));
  if ((*(v9 + 24) & 0x20000020) != 0)
  {
    v19 = sub_10035E5F8(a1, a2, v14, a3, a4, v15, v16, v18, v17);
  }

  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  *(a1 + 160) = *(a2 + 216) - fmax(*(a1 + 136), *(a1 + 128));
  v27 = +[CRLWPFontMetricsCache sharedCache];
  [v27 validateFontHeightInfo:a1 + 120 description:@"calcHeightInfo"];

  v28 = *(a1 + 120);
  *(v9 + 120) = *(a1 + 136);
  *(v9 + 104) = v28;
  v29 = *(a1 + 152);
  v30 = *(a1 + 168);
  v31 = *(a1 + 184);
  *(v9 + 184) = *(a1 + 200);
  *(v9 + 168) = v31;
  *(v9 + 152) = v30;
  *(v9 + 136) = v29;
  v33.size.height = sub_100215F0C(v9, *(v8 + 272), 0, *(v8 + 312));
  v33.origin.x = *(v9 + 40);
  v33.origin.y = *(v9 + 48);
  v33.size.width = *(v9 + 56);
  *(v9 + 64) = v33.size.height;
  v32.origin.x = v23;
  v32.origin.y = v24;
  v32.size.width = v25;
  v32.size.height = v26;
  *(v9 + 72) = CGRectUnion(v32, v33);
}

void sub_10035CF68(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  v4 = *(a2 + 224);
  v5 = sub_10020BD34(v4);
  v6 = [v5 count];

  if (v6)
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v7 = sub_10020BD34(v4);
    v8 = [v7 countByEnumeratingWithState:&v85 objects:v100 count:16];
    if (v8)
    {
      v9 = *v86;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v86 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v85 + 1) + 8 * i);
          if ([v11 type] == 4)
          {
            v12 = [v11 location];

            if (v12 == 1)
            {
              v13 = sub_10020BCC0(v4);
              if (v13)
              {
                sub_100361AB0(v13, v14, v4);
              }

              v12 = 1;
            }

            goto LABEL_15;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v85 objects:v100 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_15:
    *a3 = 0.0;
    *a4 = 0.0;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v15 = sub_10020BD34(v4);
    v16 = [v15 countByEnumeratingWithState:&v81 objects:v99 count:16];
    if (v16)
    {
      v17 = *v82;
      v18 = 0.0;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v82 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v81 + 1) + 8 * j);
          if ([v20 type] == 4)
          {
            [v20 verticalAdjustment];
            if (v18 < v21)
            {
              v18 = v21;
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v81 objects:v99 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = 0.0;
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v22 = sub_10020BD34(v4);
    v23 = [v22 countByEnumeratingWithState:&v77 objects:v98 count:16];
    if (v23)
    {
      v25 = *v78;
      *&v24 = 67109378;
      v70 = v24;
      do
      {
        v26 = 0;
        do
        {
          if (*v78 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v77 + 1) + 8 * v26);
          if ([v27 type] == 4)
          {
            v28 = v27;
            [v28 textPosition];
            v30 = v29;
            v32 = v31;
            [v28 setVerticalAdjustment:v18];
            if (v30 == 0.0 && v32 == 0.0)
            {
              if ((*(v4 + 25) & 0x20) != 0)
              {
                v38 = (*(v4 + 120) + *(v4 + 136)) * 0.5;
                if (v12 != 2)
                {
                  [v28 verticalAdjustment];
                  v52 = v51;
                  [v28 ascent];
                  v38 = -v38 - v52;
                  goto LABEL_50;
                }

                v42 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                if (qword_101AD5A10 != -1)
                {
                  sub_10135AA9C();
                }

                v43 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109890;
                  v91 = v42;
                  v92 = 2082;
                  v93 = "void CRLWPCoreTextTypesetter::pAdjustEmphasisMarksForLineFragment(CRLWPTypesetterParamBlock *const, CGFloat &, CGFloat &)";
                  v94 = 2082;
                  v95 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
                  v96 = 1024;
                  v97 = 4496;
                  _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Vertical below is not currently supported.", buf, 0x22u);
                }

                if (qword_101AD5A10 != -1)
                {
                  sub_10135AAC4();
                }

                v44 = off_1019EDA68;
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  v53 = +[CRLAssertionHandler packedBacktraceString];
                  *buf = v70;
                  v91 = v42;
                  v92 = 2114;
                  v93 = v53;
                  _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                }

                v45 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pAdjustEmphasisMarksForLineFragment(CRLWPTypesetterParamBlock *const, CGFloat &, CGFloat &)"];
                v46 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
                [CRLAssertionHandler handleFailureInFunction:v45 file:v46 lineNumber:4496 isFatal:0 description:"Vertical below is not currently supported."];
              }

              else
              {
                if (v12 == 2)
                {
                  v33 = *(v4 + 136);
                  [v28 verticalAdjustment];
                  v35 = v34;
                  [v28 ascent];
                  v37 = v36;
                  [v28 descent];
                  v38 = v33 + 0.0 + v35 + v37;
                  v40 = v38 + v39 - *(v4 + 136);
                  v41 = a4;
                  goto LABEL_51;
                }

                v47 = *(v4 + 120);
                [v28 verticalAdjustment];
                v49 = v48;
                [v28 ascent];
                v38 = 0.0 - v47 - v49;
LABEL_50:
                v40 = -(v38 - v50 + *(v4 + 120));
                v41 = a3;
LABEL_51:
                if (*v41 >= v40)
                {
                  v40 = *v41;
                }

                *v41 = v40;
              }

              [v28 setTextPosition:{0.0, v38}];
            }
          }

          v26 = v26 + 1;
        }

        while (v23 != v26);
        v23 = [v22 countByEnumeratingWithState:&v77 objects:v98 count:16];
      }

      while (v23);
    }
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v54 = sub_10020BD14(v4);
  v55 = [v54 countByEnumeratingWithState:&v73 objects:v89 count:16];
  if (v55)
  {
    v56 = *v74;
    do
    {
      for (k = 0; k != v55; k = k + 1)
      {
        if (*v74 != v56)
        {
          objc_enumerationMutation(v54);
        }

        v58 = *(*(&v73 + 1) + 8 * k);
        if ([v58 underline])
        {
          [v58 thickness];
          v60 = v59;
          if ([v58 underline] == 2)
          {
            v60 = v60 * 3.0;
          }

          else if ([v58 underline] == 3 && (*(v4 + 25) & 0x20) == 0)
          {
            v61 = sub_1002826EC(v60);
            v60 = v61 + v61;
          }

          [v58 start];
          v63 = v62;
          if ([v58 adornmentLocation] == 2)
          {
            v64 = v60 * 0.5 + v63;
            v65 = *(v4 + 136);
            if (v64 <= v65)
            {
              continue;
            }

            v66 = v64 - v65;
            v67 = a4;
          }

          else
          {
            if ([v58 adornmentLocation] != 1)
            {
              continue;
            }

            v68 = v63 + v60 * -0.5;
            v69 = *(v4 + 120);
            if (v68 >= v69)
            {
              continue;
            }

            v66 = -(v68 + v69);
            v67 = a3;
          }

          if (*v67 >= v66)
          {
            v66 = *v67;
          }

          *v67 = v66;
        }
      }

      v55 = [v54 countByEnumeratingWithState:&v73 objects:v89 count:16];
    }

    while (v55);
  }
}

void sub_10035D764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 72);
  v7 = *(a3 + 80);
  v8 = *(a3 + 88);
  v9 = *(a3 + 96);
  __p = 0;
  v71 = 0;
  v72 = 0;
  v10 = sub_10020BCC0(a3);
  if (v10)
  {
    v11 = sub_10035F380(v10, a2, a3);
    v12 = *(a3 + 56);
    v13 = *(a3 + 64);
    v14 = v11 + v13;
    v15 = *(a3 + 48) + v13 - v14;
    *&v68 = *(a3 + 40);
    *(&v68 + 1) = v15;
    *&v69 = v12;
    *(&v69 + 1) = v14;
    sub_10020133C(&__p, &v68);
  }

  v16 = *(a3 + 56);
  v68 = *(a3 + 40);
  v69 = v16;
  v17 = sub_1001FEBF8((a3 + 104), a2) + *(a3 + 48);
  if ((*(a3 + 25) & 0x20) != 0)
  {
    v19 = floor(v17 - *(a3 + 120));
    v18 = 1.79999995;
    *(&v68 + 1) = v19 + 1.79999995 * -0.5;
  }

  else
  {
    v18 = floor(v17) + 1.79999995 + 1.79999995 * 0.5 - *(&v68 + 1);
  }

  *(&v69 + 1) = v18;
  sub_10020133C(&__p, &v68);
  v20 = sub_1001FEBF8((a3 + 104), a2);
  v21 = *(a3 + 48);
  v22 = *(a3 + 56);
  v23 = *(a3 + 64);
  *&v68 = *(a3 + 40);
  *&v69 = v22;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v24 = sub_10020BD34(a3);
  v25 = [v24 countByEnumeratingWithState:&v64 objects:v73 count:16];
  v62 = v23;
  v63 = v21;
  v60 = v7;
  v61 = v6;
  if (v25)
  {
    v26 = *v65;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v65 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v64 + 1) + 8 * i);
        if ([v31 type] == 4)
        {
          [v31 textPosition];
          v33 = v32;
          if ([v31 location] == 1)
          {
            [v31 ascent];
            v35 = -(v20 + v33 - v34);
            if (v29 < v35)
            {
              v29 = v35;
            }
          }

          else
          {
            [v31 descent];
            v42 = v33 - v20 + v41;
            if (v28 < v42)
            {
              v28 = v42;
            }
          }
        }

        else if ([v31 type] == 6)
        {
          [v31 textPosition];
          v37 = v36;
          [v31 descent];
          v39 = v38;
          v40 = *([v31 rects] + 3) * 0.5;
          if (v27 < v37 - v20 + v39 + v40)
          {
            v27 = v37 - v20 + v39 + v40;
          }
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v25);
  }

  else
  {
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
  }

  if (v27 >= v28)
  {
    v43 = v27;
  }

  else
  {
    v43 = v28;
  }

  *(&v68 + 1) = v63 + v62 - (v29 + v62);
  *(&v69 + 1) = v43 + v29 + v62;
  sub_10020133C(&__p, &v68);
  v45 = v60;
  v44 = v61;
  v46 = v8;
  if (*(a1 + 29) == 1)
  {
    v47 = v9;
    *&v44 = CGRectInset(*&v44, -10.0, 0.0);
    v9 = v48;
  }

  v50 = __p;
  v49 = v71;
  if (__p != v71)
  {
    do
    {
      v51 = v50[3];
      if (v51 != INFINITY)
      {
        v52 = *v50;
        v53 = *(v50 + 1);
        v54 = *(v50 + 2);
        v55 = v9;
        *&v44 = CGRectUnion(*&v44, *(&v51 - 3));
        v9 = v56;
        v49 = v71;
      }

      v50 += 4;
    }

    while (v50 != v49);
  }

  v57 = 50.0;
  if ((*(a3 + 24) & 0x40000) == 0)
  {
    v57 = 0.0;
  }

  v58 = v9;
  v59 = -((*(a3 + 120) + *(a3 + 136)) * 0.25 + v57);
  *(a3 + 72) = CGRectInset(*&v44, v59, v59);
  if (__p)
  {
    v71 = __p;
    operator delete(__p);
  }
}

void sub_10035DB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035DBB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035DBFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035DC40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035DC84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035DCC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035DD0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035DD50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035DD94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035DDD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035DE1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

__CFString *sub_10035DE60(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  if (a4 >= 9)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135AAEC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135AB00();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135AB88();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v14 = [NSString stringWithUTF8String:"NSString *CRLWPCoreTextTypesetter::pNumberedListLabel(const CRLWPLayoutState *, CRLWPParagraphEnumerator, CRLWPParagraphLevel, BOOL, NSUInteger *) const"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:2351 isFatal:0 description:"illegal list level"];

    v12 = &stru_1018BCA28;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = sub_100014370(v9, *(a1 + 16));
    v11 = v10;
    if (a6)
    {
      *a6 = [v10 listNumberAtParIndex:{objc_msgSend(v10, "paragraphIndexAtCharIndex:", *a2)}];
    }

    v12 = [v11 numberedListLabelAtCharIndex:*a2];
  }

  return v12;
}

void sub_10035E08C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035E0D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035E114(void *a1, unint64_t a2, uint64_t a3)
{
  v9 = a1;
  v5 = [v9 string];
  if (a2 < a2 + a3)
  {
    do
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(v5, a2);
      v7 = sub_10027DA8C(CharacterAtIndex);
      if (CharacterAtIndex != v7)
      {
        v8 = [NSString stringWithFormat:@"%C", v7];
        [v9 replaceCharactersInRange:a2 withString:{1, v8}];
      }

      ++a2;
      --a3;
    }

    while (a3);
  }
}

void sub_10035E224(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035E268(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035E2AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035E2F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10035E334(uint64_t a1, uint64_t a2)
{
  v3 = **a2 + *(*(a2 + 224) + 8);
  if (v3)
  {
    v4 = v3 - 1;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 240) = v4;
  if (v3)
  {
    v5 = [*(a1 + 16) characterAtIndex:?];
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 232) = v5;
  return v3;
}

void sub_10035E390(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035E3D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_10035E418()
{
  if (qword_101A34CE0 != -1)
  {
    sub_10135ABB0();
  }

  v1 = qword_101A34CD8;

  return v1;
}

void sub_10035E45C(id a1)
{
  v4 = objc_opt_new();
  v1 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  [v4 formUnionWithCharacterSet:v1];

  [v4 addCharactersInRange:{8232, 1}];
  [v4 addCharactersInRange:{65532, 1}];
  [v4 addCharactersInRange:{45, 1}];
  [v4 removeCharactersInRange:{160, 1}];
  [v4 removeCharactersInRange:{8239, 1}];
  [v4 removeCharactersInRange:{8199, 1}];
  [v4 removeCharactersInRange:{65279, 1}];
  v2 = [v4 copy];
  v3 = qword_101A34CD8;
  qword_101A34CD8 = v2;
}

void sub_10035E570(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035E5B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_10035E5F8(uint64_t a1, uint64_t *a2, unint64_t a3, char *a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v71 = *a2;
  v73 = a2[28];
  if ([*(a1 + 112) count] <= a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135ABC4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135ABD8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135AC60();
    }

    v66 = off_1019EDA68;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v67 = [NSString stringWithUTF8String:"CGRect CRLWPCoreTextTypesetter::pCalcStyleRunsHeightInfo(CRLWPTypesetterParamBlock *const, const CGRect, const NSUInteger, const NSRange)"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v67 file:v14 lineNumber:2477 isFatal:0 description:"Bad run index"];
  }

  GlyphRuns = sub_10020BC74(v73);
  if (GlyphRuns)
  {
    v16 = sub_10020BC98(v73, 0);
    v17 = sub_10026ECB4(v16);
    GlyphRuns = CTLineGetGlyphRuns(v17);
  }

  v68 = GlyphRuns;
  v18 = [v68 count];
  v19 = 0;
  v64 = kCTFontAttributeName;
  v20 = a3;
  x = a6;
  y = a7;
  width = a8;
  height = a9;
  v74 = v18;
  do
  {
    if (v19 >= v18 || (*(v73 + 25) & 0x40) != 0)
    {
      v43 = [*(a1 + 112) objectAtIndexedSubscript:{v20, v64}];
      v25 = v19;
      location = [v43 charIndex];

      v31 = 0;
      v75 = 0;
      v44 = 1;
    }

    else
    {
      v25 = v19;
      v26 = [v68 objectAtIndexedSubscript:v19];

      v75 = CTRunGetAttributes(v26);
      location = CTRunGetStringRange(v26).location;
      v28 = a3;
      do
      {
        v20 = v28;
        if (v28 >= [*(a1 + 112) count] - 1)
        {
          break;
        }

        v29 = [*(a1 + 112) objectAtIndexedSubscript:v20 + 1];
        v30 = [v29 charIndex] > location;

        v28 = (v20 + 1);
      }

      while (!v30);
      v31 = [v75 objectForKeyedSubscript:v64];

      v32 = [*(a1 + 112) objectAtIndexedSubscript:v20];
      v33 = [v32 ctFont];

      if (v31 == v33)
      {
        v31 = 0;
LABEL_31:
        v44 = 0;
        goto LABEL_37;
      }

      v34 = [v75 objectForKeyedSubscript:kCTVerticalFormsAttributeName];

      if (v34 && CFBooleanGetValue(v34))
      {
        goto LABEL_31;
      }

      GlyphCount = CTRunGetGlyphCount(v26);
      if (GlyphCount < 1)
      {
        goto LABEL_31;
      }

      sub_1000E7C60(buffer, GlyphCount);
      v77.location = 0;
      v77.length = 0;
      CTRunGetStringIndices(v26, v77, buffer[0]);
      v36 = 0;
      while (1)
      {
        v37 = *(*(a1 + 64) + 2 * buffer[0][v36]);
        if ((sub_10027E3D4(*(*(a1 + 64) + 2 * buffer[0][v36])) & 1) == 0)
        {
          if (v37 != 8209)
          {
            break;
          }

          v38 = [*(a1 + 112) objectAtIndexedSubscript:v20];
          v39 = [v38 attributes];
          v40 = [v39 objectForKeyedSubscript:@"__wpAttachmentMap"];
          v41 = v40 == 0;

          if (v41)
          {
            break;
          }
        }

        if (GlyphCount == ++v36)
        {
          v42 = 1;
          goto LABEL_33;
        }
      }

      v42 = 0;
LABEL_33:
      if (buffer[0])
      {
        buffer[1] = buffer[0];
        operator delete(buffer[0]);
      }

      v44 = 0;
      if (v42)
      {
        v31 = 0;
      }
    }

LABEL_37:
    v45 = [*(a1 + 112) objectAtIndexedSubscript:v20];
    v46 = [v75 objectForKeyedSubscript:kCTVerticalFormsAttributeName];

    v47 = 0;
    if (*(a1 + 27) == 1 && v75 && v46)
    {
      v47 = CFBooleanGetValue(v46) != 0;
    }

    if ([v45 charIndex] < &a4[a5] || objc_msgSend(v45, "charIndex") == a4 && !a5)
    {
      if ([v45 flags])
      {
        [v45 charIndex];
      }

      if (location < *(a1 + 48) - 1 || location == a4 || (sub_10027E2F0(*(*(a1 + 64) + 2 * location)) & 1) == 0)
      {
        sub_10035EF8C(a1, a2, v45, v31, v47);
      }

      if (([v45 flags] & 4) != 0)
      {
        v48 = [v45 characterStyle];
        v49 = sub_10011C2A4(v71);
        v50 = sub_1002812E4(v48, v49, 0x12uLL);

        if (v50 && [v50 isEnabled])
        {
          [v50 shadowBoundsForRect:{a6, a7, a8, a9}];
          v83.origin.x = v51;
          v83.origin.y = v52;
          v83.size.width = v53;
          v83.size.height = v54;
          v78.origin.x = x;
          v78.origin.y = y;
          v78.size.width = width;
          v78.size.height = height;
          v79 = CGRectUnion(v78, v83);
          x = v79.origin.x;
          y = v79.origin.y;
          width = v79.size.width;
          height = v79.size.height;
          *(v73 + 24) |= 0x20uLL;
        }
      }

      if (([v45 flags] & 8) != 0)
      {
        v55 = [v45 characterStyle];
        v56 = sub_10011C2A4(v71);
        v57 = sub_1002812E4(v55, v56, 6uLL);

        if (v57)
        {
          [v57 renderedWidth];
          v59 = v58 * -0.5;
          v80.origin.x = a6;
          v80.origin.y = a7;
          v80.size.width = a8;
          v80.size.height = a9;
          v84 = CGRectInset(v80, v59, v59);
          v81.origin.x = x;
          v81.origin.y = y;
          v81.size.width = width;
          v81.size.height = height;
          v82 = CGRectUnion(v81, v84);
          x = v82.origin.x;
          y = v82.origin.y;
          width = v82.size.width;
          height = v82.size.height;
          *(v73 + 24) |= 0x20000000uLL;
        }
      }

      if (([v45 flags] & 0x10) != 0)
      {
        *(v73 + 24) |= 0x40000000uLL;
      }

      if (([v45 flags] & 0x20) != 0)
      {
        *(v73 + 24) |= 0x80000000uLL;
      }
    }

    v60 = v25 + 1;
    v20 += v44;
    if (v74)
    {
      v18 = v74;
      v61 = v60 >= v74;
    }

    else
    {
      v62 = [*(a1 + 112) count];
      v18 = 0;
      v61 = v20 >= v62;
    }

    v19 = v60;
  }

  while (!v61);

  return x;
}

void sub_10035EF04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035EF48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035EF8C(uint64_t a1, uint64_t *a2, void *a3, const __CTFont *a4, char a5)
{
  v9 = a3;
  v10 = v9;
  v11 = *a2;
  if (!a4)
  {
    a4 = [v9 ctFont];
  }

  if (*(a1 + 27) == 1)
  {
    a4 = sub_10027DD1C(a4);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  sub_10028234C(a4, &v27);
  v12 = [v10 characterStyle];
  v13 = sub_10011C2A4(v11);
  v14 = sub_10028139C(v12, v13, 22, 0);

  v15 = v14 != 0;
  if (v14)
  {
    Size = CTFontGetSize(a4);
    CopyWithAttributes = CTFontCreateCopyWithAttributes(a4, Size * 1.5, 0, 0);
    sub_10028234C(CopyWithAttributes, &v24);
    v29 = v26[0];
    v30 = v26[1];
    v31 = v26[2];
    v32 = v26[3];
    v27 = v24;
    v28 = v25;
  }

  else
  {
    CopyWithAttributes = 0;
  }

  v18 = [v10 characterStyle];
  v19 = sub_10011C2A4(v11);
  v20 = sub_1002815FC(v18, v19, 0, 0.0);

  if (v20 != 0.0)
  {
    v21 = v26;
    if (v14 == 2)
    {
      if (v20 >= 0.0)
      {
        Descent = CTFontGetDescent(CopyWithAttributes);
        v20 = v20 + CTFontGetDescent(a4) - Descent;
        if (v20 <= 0.0)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (v14 == 1)
      {
        if (v20 <= 0.0)
        {
          CapHeight = CTFontGetCapHeight(CopyWithAttributes);
          v20 = CTFontGetCapHeight(a4) - CapHeight - v20;
          if (v20 <= 0.0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        goto LABEL_18;
      }

      if (v20 > 0.0)
      {
LABEL_18:
        v21 = &v25;
LABEL_21:
        *v21 = v20;
        goto LABEL_22;
      }

      if (v20 >= 0.0)
      {
LABEL_22:
        v15 = 1;
        goto LABEL_23;
      }
    }

    v20 = -v20;
    goto LABEL_21;
  }

LABEL_23:
  if (CopyWithAttributes)
  {
    CFRelease(CopyWithAttributes);
  }

  if (v15)
  {
    *(a2[28] + 24) |= 0x400uLL;
  }

  sub_10035F268(a1, &v27, &v24, a2, a5);
}

uint64_t sub_10035F268(uint64_t result, double *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2 + 4;
  v6 = a2[4];
  v7 = a2[2];
  v8 = v7 + v6;
  if (*(result + 27) != 1 || (a5 & 1) != 0)
  {
    v13 = *(result + 184);
    if (v8 >= v13)
    {
      v13 = v7 + v6;
    }

    v14 = v7 + *(a3 + 16);
    a2[2] = v14;
    a2[4] = v6 + *(a3 + 32);
    v12 = (result + 152);
    v8 = *(result + 152);
    *(result + 184) = v13;
    v15 = *(result + 136);
    if (v15 < v14)
    {
      v15 = v14;
    }

    *(result + 136) = v15;
    v9 = 0.0;
  }

  else
  {
    v9 = *(a3 + 16) + v8 * 0.5;
    v10 = v8 * 0.5 + *(a3 + 32);
    v11 = *(result + 136);
    if (v11 < v9)
    {
      v11 = *(a3 + 16) + v8 * 0.5;
    }

    *(result + 136) = v11;
    if (*(result + 152) >= v10)
    {
      v10 = *(result + 152);
    }

    *(result + 152) = v10;
    v5 = (result + 184);
    v12 = (result + 184);
  }

  if (v8 < *v5)
  {
    v8 = *v5;
  }

  *v12 = v8;
  v16 = a2[6];
  v17 = *(result + 176);
  if (*(result + 168) >= v16)
  {
    v16 = *(result + 168);
  }

  *(result + 168) = v16;
  v18 = *(result + 120);
  if (v18 < *a2)
  {
    v18 = *a2;
  }

  *(result + 120) = v18;
  v19 = a2[7];
  if (v17 >= v19)
  {
    v19 = v17;
  }

  *(result + 176) = v19;
  if (v9 == 0.0)
  {
    v9 = a2[2];
  }

  v20 = v9 + a2[5];
  if (*(a4 + 216) >= v20)
  {
    v20 = *(a4 + 216);
  }

  *(a4 + 216) = v20;
  return result;
}

double sub_10035F380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0.0;
  if (sub_10020BCC0(a3))
  {
    v6 = sub_1001FEBF8((a3 + 104), a2);
    v7 = sub_10020BCB0(a3);
    if (v7[1] != *v7)
    {
      v8 = 0;
      v9 = 16;
      do
      {
        v10 = (*sub_10020BCB0(a3) + v9);
        ascent = 0.0;
        v11 = sub_10026ECB4((v10 - 2));
        CTLineGetTypographicBounds(v11, &ascent, 0, 0);
        if (v5 <= -(v6 + *v10 - ascent))
        {
          v5 = -(v6 + *v10 - ascent);
        }

        ++v8;
        v12 = sub_10020BCB0(a3);
        v9 += 104;
      }

      while (v8 < 0x4EC4EC4EC4EC4EC5 * ((v12[1] - *v12) >> 3));
    }
  }

  return v5;
}

void sub_10035F484(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035F4C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035F50C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035F550(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035F594(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035F5D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035F61C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035F660(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035F6A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035F6E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_10035F72C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 40);
  v6 = sub_10011C2B4(a3);
  [v6 frameBounds];
  v8 = v5 - v7;

  v9 = a1 - v8;
  if (v9 < 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135AC88();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135AC9C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135AD24();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v11 = [NSString stringWithUTF8String:"CGFloat CRLWPCoreTextTypesetter::pLineRefStartForLineFragment(const CRLWPLayoutState *, const CRLWPLineFragment *, CGFloat) const"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:4603 isFatal:0 description:"Negative lineRef start position"];
  }

  return v9;
}

void sub_10035F8C8(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

BOOL sub_10035F908(uint64_t a1, uint64_t a2, void *a3, CTRunRef *a4, uint64_t a5, void *a6, CGGlyph *a7, CGSize *a8)
{
  advances = a8;
  v14 = a3;
  v48 = a6;
  v15 = [*(a1 + 56) characterStyleAtCharIndex:CTRunGetStringRange(*a4).location effectiveRange:0];
  v16 = sub_10011C2A4(a2);
  v17 = sub_1002812E4(v15, v16, 0xBuLL);
  [v17 doubleValue];
  v19 = v18;

  v20 = CTRunGetAttributes(*a4);
  v21 = [v20 objectForKeyedSubscript:kCTRunDelegateAttributeName];

  if (!v21)
  {
    goto LABEL_7;
  }

  v50.location = 0;
  v50.length = 1;
  CTRunGetStringIndices(*a4, v50, buffer);
  v22 = *(a1 + 232);
  if (v22 && *(*(a1 + 64) + 2 * buffer[0]) == -4)
  {
    v23 = sub_1005B73C4(v22, buffer[0]);
    v24 = v23 != 0;
    if (v15 && v23)
    {
      v25 = sub_10011C2A4(a2);
      v26 = sub_1002812E4(0, v25, 0xBuLL);
      [v26 doubleValue];
      v19 = v27;

LABEL_7:
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  v28 = sub_10011C2B4(a2);
  v29 = [v28 scaleTextPercent];

  v30 = CTFontCreateWithName(@"HiraMinProN-W3", v19 * (v29 / 100.0) / 3.0, 0);
  if (v30)
  {
    if (v24)
    {
      v31 = objc_opt_class();
      v32 = [v20 objectForKeyedSubscript:@"CRLWPCharacterFillAttribute"];
      v33 = sub_100014370(v31, v32);

      if (!v33 || ([v33 referenceColor], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "CGColor"), v34, !v35))
      {
        v35 = [v20 objectForKeyedSubscript:{kCTForegroundColorAttributeName, advances}];
      }

      [v14 setFont:{v30, advances}];
      [v14 setColor:v35];
      v36 = [v48 characterAtIndex:0];
      LOWORD(buffer[0]) = v36;
      v37 = sub_100282BC0(*(a1 + 80), *(a1 + 27), 4);
      v38 = v37;
      if (v36 == 65093)
      {
        if (v37 == 2 || *(a1 + 80) == 1)
        {
          v39 = 0;
          LOWORD(buffer[0]) = 8226;
        }

        else
        {
          v39 = 1;
        }
      }

      else
      {
        v39 = 0;
      }

      [v14 setShouldRotate:v39 & (*(a5 + 24) >> 13)];
      GlyphsForCharacters = CTFontGetGlyphsForCharacters(v30, buffer, a7, 1);
      if (GlyphsForCharacters)
      {
        CTFontGetAdvancesForGlyphs([v14 font], kCTFontOrientationDefault, a7, advancesa, 1);
        Ascent = CTFontGetAscent(v30);
        [v14 setAscent:Ascent descent:CTFontGetDescent(v30) advance:advancesa->width];
        [v14 setLocation:v38];
      }
    }

    else
    {
      GlyphsForCharacters = 0;
    }

    CFRelease(v30);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135AD4C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135AD74();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135ADFC();
    }

    v40 = off_1019EDA68;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v41 = [NSString stringWithUTF8String:"BOOL CRLWPCoreTextTypesetter::pSetUpEmphasisMarkAdornments(const CRLWPLayoutState *, CRLWPAdornments *__strong, const CTRunRef &, CRLWPLineFragment *, NSString *__strong, CGGlyph &, CGSize &) const"];
    v42 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v41 file:v42 lineNumber:4369 isFatal:0 description:"Emphasis marks, no font."];

    GlyphsForCharacters = 0;
  }

  return GlyphsForCharacters;
}

void sub_10035FEAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035FEF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035FF34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10035FF78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

char *sub_10035FFBC(uint64_t a1, unint64_t a2)
{
  if (![*(a1 + 112) count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135AE24();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135AE38();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135AEC0();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v5 = [NSString stringWithUTF8String:"NSUInteger CRLWPCoreTextTypesetter::pFindFontRunIndexForLocalCharIndex(CRLWPCharIndex) const"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:3947 isFatal:0 description:"Bad runCount"];
  }

  v7 = [*(a1 + 112) count];
  if ([*(a1 + 112) count] >= 2)
  {
    v8 = 1;
    while (1)
    {
      v9 = [*(a1 + 112) objectAtIndexedSubscript:v8];
      v10 = [v9 charIndex] > a2;

      if (v10)
      {
        break;
      }

      if (++v8 >= [*(a1 + 112) count])
      {
        return v7 - 1;
      }
    }

    v7 = v8;
  }

  return v7 - 1;
}

double sub_1003601D0(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double result)
{
  if ((a3 & 1) == 0 && a5 && !a2 && a6 && a7 && result > 0.0 && a4 && a4 - 1 >= 0)
  {
    v8 = *(a5 + 16 * (a4 - 1)) + *(a6 + 16 * (a4 - 1));
    v9 = 16 * a4 - 16;
    v10 = (a6 + v9);
    v11 = (a5 + v9);
    do
    {
      v12 = v8 - (*v11 + *v10);
      if (v12 >= result)
      {
        break;
      }

      if (*(*(a1 + 64) + 2 * *(a7 - 8 + 8 * a4)) == 9)
      {
        if (v12 >= 0.0)
        {
          return v8 - (*v11 + *v10);
        }

        return result;
      }

      --a4;
      v10 -= 2;
      v11 -= 2;
    }

    while (a4 >= 1);
  }

  return result;
}

id sub_100360270(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (![v3 count] || (objc_msgSend(v3, "lastObject"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "merge:", v4), v5, (v6 & 1) == 0))
  {
    [v3 addObject:v4];
  }

  v7 = [v3 lastObject];

  return v7;
}

void sub_100360310(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100360338(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036037C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003603C0(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, double a7, double a8, double a9, double a10)
{
  v18 = a2;
  if ((a6 & 1) != 0 || (sub_10027E4C4(a3) & 1) == 0 && (+[NSCharacterSet punctuationCharacterSet](NSCharacterSet, "punctuationCharacterSet"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 characterIsMember:a3], v21, (v22 & 1) == 0))
  {
    if ([v18 location] != 1 || (v23 = xmmword_101464828, objc_msgSend(*(a1 + 56), "smartFieldAtCharIndex:attributeKind:effectiveRange:", a4, 7, &v23), (v19 = objc_claimAutoreleasedReturnValue()) == 0) || (v20 = v23, v19, a4 < v20) || a4 - v20 >= *(&v20 + 1))
    {
      [v18 addAdornmentWithCharIndex:objc_msgSend(*(a1 + 56) point:"charIndexMappedToStorage:" glyph:a4) rect:{a5, a7 + (a9 - a10) * 0.5, 0.0, a7, 0.0, fabs(a9), 1.0}];
    }
  }
}

double *sub_100360524(double a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  result = sub_10020BC98(a4, 0);
  v12 = result[1];
  v13 = 0.0;
  v14 = 3;
  if (a5 <= 11)
  {
    if ((a5 - 10) >= 2)
    {
      if (a5 == 4)
      {
        v13 = 2.0;
        v14 = 7;
      }

      else
      {
        if (a5 != 5)
        {
          return result;
        }

        v13 = 2.0;
        v14 = 6;
      }
    }

LABEL_16:
    if (sub_100240930(a3 + 24) != *(a4 + 16))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135AEE8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135AEFC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135AF84();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v16 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pAddInvisibleBreakToLineFragment(const CRLWPLayoutState *, CRLWPLineFragment *, unichar, CGFloat, BOOL) const"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:3657 isFatal:0 description:"line fragment isn't from the current paragraph"];
    }

    v18 = v12 + a1;
    v19 = (&unk_1019EFFE0 + 40 * v14);
    v20 = v19[1];
    v21 = *(a4 + 24);
    if (fabs(v18) == INFINITY)
    {
      if ((v21 & 0x1000) == 0)
      {
        v18 = *(a4 + 240) + 0.0;
        goto LABEL_38;
      }

      v22 = 0.0;
    }

    else
    {
      if ((v21 & 0x1000) == 0)
      {
        if ((a6 & 1) == 0 && *(a4 + 56) < v18)
        {
          v18 = *(a4 + 56);
        }

LABEL_38:
        if (*(v19 + 2) == 1)
        {
          if ((v21 & 0x1000) != 0)
          {
            v25 = v20 + fmin(v18, 0.0);
            v24 = v20 + v18 - v25;
            v18 = v25;
          }

          else
          {
            v23 = *(a4 + 56) - v20;
            if (v23 < v18)
            {
              v23 = v18;
            }

            v24 = v23 - v18;
            if (v23 - v18 < 0.0)
            {
              return sub_100217398(a4);
            }
          }

          if (v24 > 0.0)
          {
            if (v13 <= 0.0)
            {
              +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10135AFAC();
              }

              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                sub_10135AFD4();
              }

              if (qword_101AD5A10 != -1)
              {
                sub_10135B05C();
              }

              v26 = off_1019EDA68;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                +[CRLAssertionHandler packedBacktraceString];
                objc_claimAutoreleasedReturnValue();
                sub_10130E89C();
              }

              v27 = [NSString stringWithUTF8String:"void CRLWPCoreTextTypesetter::pAddInvisibleBreakToLineFragment(const CRLWPLayoutState *, CRLWPLineFragment *, unichar, CGFloat, BOOL) const"];
              v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
              [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:3704 isFatal:0 description:"break line has no thickness"];
            }

            if (!qword_101A34CE8)
            {
              v29 = [CRLColor colorWithRed:0.180392161 green:0.533333361 blue:0.921568632 alpha:1.0];
              qword_101A34CE8 = CGColorRetain([v29 CGColor]);
            }

            v30 = [CRLWPAdornmentLine alloc];
            v31 = [(CRLWPAdornmentLine *)v30 initWithStart:qword_101A34CE8 length:1 color:0 thickness:0 lineCount:v18 underline:NAN adornmentLocation:v24 underLineAdjustment:v13, 0.0];
            sub_10020BD50(a4, v31);
          }
        }

        return sub_100217398(a4);
      }

      v22 = 0.0;
      if (v18 >= 0.0)
      {
        v22 = v18;
      }
    }

    v18 = v22 - v20;
    goto LABEL_38;
  }

  if (a5 > 8231)
  {
    if (a5 == 8232)
    {
      v14 = 2;
      goto LABEL_16;
    }

    if (a5 == 8233)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (a5 == 12)
    {
      v13 = 1.0;
      v14 = 4;
      goto LABEL_16;
    }

    if (a5 == 13)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void sub_100360A14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360A58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360A9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360AE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360B24(id a1)
{
  v1 = [[NSAttributedString alloc] initWithString:&stru_1018BCA28 attributes:0];
  qword_101A34CF0 = CTLineCreateWithAttributedString(v1);
}

void sub_100360B9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360BE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360C24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360C68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360CAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360CF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360D34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360D78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360DBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360E00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360E44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360E88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360ECC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360F10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360F54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360F98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100360FDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100361020(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100361064(uint64_t a1)
{
  v2 = *(a1 + 256);
  if (!v2)
  {
    v3 = [NSLinguisticTagger alloc];
    v8 = NSLinguisticTagSchemeNameTypeOrLexicalClass;
    v4 = [NSArray arrayWithObjects:&v8 count:1];
    v5 = [v3 initWithTagSchemes:v4 options:22];
    v6 = *(a1 + 256);
    *(a1 + 256) = v5;

    v2 = *(a1 + 256);
  }

  return v2;
}

void sub_100361150(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100361194(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003611D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036121C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100361260(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003612A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003612E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036132C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100361370(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v25 = a2;
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = +[NSCharacterSet decimalDigitCharacterSet];
  v10 = v7 + a3;
  v11 = [v9 characterIsMember:*(*(v8 + 64) + 2 * (v7 + a3))];

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    v13 = +[NSCharacterSet decimalDigitCharacterSet];
    v11 = [v13 characterIsMember:*(*(v8 + 64) + 2 * v10 - 2)];
  }

  if ((v11 & 1) == 0)
  {
    MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, (*(v8 + 64) + 2 * *(a1 + 64) + 2 * a3), a4, a4, kCFAllocatorNull);
    if (MutableWithExternalCharactersNoCopy)
    {
      v15 = MutableWithExternalCharactersNoCopy;
      v16 = v15;
      if (a4 && (a4 == 1 || [(__CFString *)v15 crlwp_isLowerCaseFromIndex:1]))
      {
        if (v10)
        {
          v17 = v10 - 1;
          if (v10 != 0x8000000000000000)
          {
            do
            {
              v18 = *(*(v8 + 64) + 2 * v17);
              if ([*(a1 + 32) characterIsMember:v18])
              {
                break;
              }

              if ([*(a1 + 40) characterIsMember:v18])
              {
                v19 = NSLinguisticTagDeterminer == v25 || NSLinguisticTagConjunction == v25;
                v21 = !v19 && NSLinguisticTagPreposition != v25 || a4 >= 4;
                if (!v21 || (+[NSCharacterSet crlwp_singleRightQuoteCharacterSet], v22 = objc_claimAutoreleasedReturnValue(), v23 = [(__CFString *)v16 rangeOfCharacterFromSet:v22], v22, v23 != 0x7FFFFFFFFFFFFFFFLL))
                {
                  v24 = [*(a1 + 48) locale];
                  CFStringLowercase(v16, v24);
                  goto LABEL_31;
                }

                break;
              }

              v19 = (v17-- & 0x7FFFFFFFFFFFFFFFLL) == 0;
            }

            while (!v19);
          }
        }

        v24 = [*(a1 + 48) locale];
        CFStringCapitalize(v16, v24);
LABEL_31:
      }

      CFRelease(v16);
    }
  }
}

void sub_1003615EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100361630(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100361674(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003616B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003616FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100361740(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100361784(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003617C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036180C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100361850(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100361894(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003618D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036191C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100361960(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1003619A4(uint64_t a1, unint64_t a2)
{
  v4 = [*(a1 + 56) length];
  if (v4 <= a2)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(a1 + 64);
  result = *(v6 + 2 * a2);
  if (a2 + 1 < v5)
  {
    v8 = *(v6 + 2 * (a2 + 1));
    if ((result & 0xFC00) == 0xD800 && (v8 & 0xFC00) == 56320)
    {
      return (v8 + (result << 10) - 56613888);
    }
  }

  return result;
}

void sub_100361A28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100361A6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100361AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = sub_10020BD34(a3);
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v21 = *v23;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = [v6 rectCount];
        v8 = [v6 rects];
LABEL_7:
        while (v7)
        {
          v7 = v7 - 1;
          v9 = &v8[32 * v7];
          v11 = *v9;
          v10 = v9[1];
          v12 = v9[2];
          v13 = v9[3];
          v14 = v11 + *(sub_10020BC98(a3, 0) + 8);
          v15 = -1;
          v16 = 8;
          while (1)
          {
            v17 = sub_10020BCB0(a3);
            if (++v15 >= (0x4EC4EC4EC4EC4EC5 * ((v17[1] - *v17) >> 3)))
            {
              break;
            }

            v18 = *sub_10020BCB0(a3);
            v19 = sub_10026ECB4(v18 + v16 - 8);
            v28.size.width = CTLineGetTypographicBounds(v19, 0, 0, 0);
            v28.origin.x = *(v18 + v16);
            v28.origin.y = 0.0;
            v28.size.height = 1.0;
            v27.origin.x = v14;
            v27.origin.y = v10;
            v27.size.width = v12;
            v27.size.height = v13;
            v16 += 104;
            if (CGRectIntersectsRect(v27, v28))
            {
              [v6 removeAdornmentAt:v7];
              goto LABEL_7;
            }
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v4);
  }
}

void sub_100361CF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100361D34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100361D78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100361DBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

CTParagraphStyleRef sub_100361E00(void *a1, unsigned int a2)
{
  v3 = a1;
  v52 = v3;
  v4 = [v3 intValueForProperty:28];
  if (v4 == -1)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 intValueForProperty:29];
  if (v6 >= 256)
  {
    v43 = sub_10135B1A8(+[CRLAssertionHandler _atomicIncrementAssertCount], &settings);
    v44 = *&settings.spec;
    if (v43)
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v45 = [NSString stringWithUTF8String:"CTParagraphStyleRef CRLWPCreateCoreTextParagraphStyle(CRLWPParagraphStyle *__strong, BOOL)"];
    v46 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v45 file:v46 lineNumber:4996 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

    v51 = -1;
  }

  else
  {
    v51 = v6;
    if (v6 < 0)
    {
      v47 = sub_10135B084(+[CRLAssertionHandler _atomicIncrementAssertCount], &settings);
      v48 = *&settings.spec;
      if (v47)
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v49 = [NSString stringWithUTF8String:"CTParagraphStyleRef CRLWPCreateCoreTextParagraphStyle(CRLWPParagraphStyle *__strong, BOOL)"];
      v50 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
      [CRLAssertionHandler handleFailureInFunction:v49 file:v50 lineNumber:4996 isFatal:0 description:"Out-of-bounds type assignment was clamped to min"];

      v51 = 0;
    }
  }

  v54 = sub_100363474(v5, a2);
  v60 = v54;
  [v52 floatValueForProperty:31];
  v8 = v7;
  v59 = v7;
  v9 = objc_opt_class();
  v10 = [v52 valueForProperty:51];
  v55 = sub_100013F00(v9, v10);

  v11 = [v55 count];
  v56 = objc_opt_new();
  v58 = v56;
  [v52 floatValueForProperty:33];
  v13 = v12;
  [v52 floatValueForProperty:39];
  v15 = v14;
  v17 = v13 < v14 && v54 == 0;
  v53 = v17;
  if (v11)
  {
    v18 = 0;
    v19 = v13;
    if (v54)
    {
      v20 = &unk_101464FC4;
    }

    else
    {
      v20 = &unk_101464FC0;
    }

    v21 = 1;
    v22 = v11;
    do
    {
      v23 = [v55 tabAtIndex:v18];
      v24 = [v23 alignment];
      [v23 position];
      v26 = v25;
      if (v24 == 3)
      {
        v27 = [v52 valueForProperty:30];
        v28 = +[NSNull null];
        v29 = v27 == v28;

        if (v29)
        {

          v27 = &stru_1018BCA28;
        }

        v30 = [NSCharacterSet characterSetWithCharactersInString:v27];
        v71 = kCTTabColumnTerminatorsAttributeName;
        v72 = v30;
        v31 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      }

      else
      {
        v31 = 0;
      }

      v32 = v26 - v19 + v15;
      if (!v54)
      {
        v32 = v26;
      }

      v33 = CTTextTabCreate(v20[v24], v32, v31);
      [v56 addObject:v33];
      CFRelease(v33);
      v34 = v53;
      if (v22 != v11)
      {
        v34 = 0;
      }

      if (v34 && v26 > v15)
      {
        v22 = v18;
      }

      v18 = v21;
    }

    while (v11 > v21++);
  }

  else
  {
    v22 = 0;
  }

  if (v53)
  {
    v36 = CTTextTabCreate(kCTTextAlignmentLeft, v15, 0);
    [v56 insertObject:v36 atIndex:v22];
    CFRelease(v36);
  }

  if ([v56 count])
  {
    v37 = [v56 lastObject];

    Location = CTTextTabGetLocation(v37);
    v39 = (floor(Location / v8) + 1.0) * v8;
    if (v39 - Location < v8)
    {
      v40 = CTTextTabCreate(kCTTextAlignmentLeft, v39, 0);
      [v56 addObject:v40];
      CFRelease(v40);
    }
  }

  v57 = v51;
  settings.spec = kCTParagraphStyleSpecifierAlignment;
  settings.valueSize = 1;
  settings.value = &v57;
  v62 = 13;
  v63 = 1;
  v64 = &v60;
  v65 = 5;
  v66 = 8;
  v67 = &v59;
  v68 = 4;
  v69 = 8;
  v70 = &v58;
  v41 = CTParagraphStyleCreate(&settings, 4uLL);

  return v41;
}

void *sub_100362478(uint64_t a1, void *a2, void *a3, int a4, unint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = objc_opt_new();
  [v11 setObject:a1 forKeyedSubscript:kCTParagraphStyleAttributeName];
  v84 = +[NSMutableArray array];
  [v84 crl_addNonNilObject:v10];
  [v84 crl_addNonNilObject:v9];
  font = sub_100281C64(v84, a5);
  if (!font)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135B2CC();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10135B2E0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135B368();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v14);
    }

    v15 = [NSString stringWithUTF8String:"NSDictionary<NSString *, id> *CRLWPCoreTextAttributes(CTParagraphStyleRef, CRLWPParagraphStyle *__strong, CRLWPCharacterStyle *__strong, BOOL, NSUInteger)"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:5089 isFatal:0 description:"Bad font"];
  }

  [v11 setObject:? forKeyedSubscript:?];
  v17 = sub_1002815FC(v10, v9, 24, 0.0);
  if (v17 == 0.0)
  {
    if (a4)
    {
      v19 = sub_10028139C(v10, v9, 16, 0);
      if (v19 == 1)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v18 = [NSNumber numberWithDouble:v17 * CTFontGetSize(font)];
    [v11 setObject:v18 forKeyedSubscript:kCTKernAttributeName];
  }

  v19 = 0;
LABEL_17:
  v20 = [NSNumber numberWithInt:v19];
  [v11 setObject:v20 forKeyedSubscript:kCTLigatureAttributeName];

LABEL_18:
  v21 = [NSNumber numberWithDouble:sub_1002815FC(v10, v9, 0, 0.0)];
  [v11 setObject:v21 forKeyedSubscript:@"CRLWPBaselineShift"];

  v22 = sub_10028139C(v10, v9, 22, 0);
  v23 = [NSNumber numberWithUnsignedInt:v22];
  [v11 setObject:v23 forKeyedSubscript:@"CRLWPSuperscript"];

  if (v22)
  {
    v24 = sub_1002815FC(v10, v9, 11, 0.0);
    CopyWithAttributes = CTFontCreateCopyWithAttributes(font, v24, 0, 0);
    [v11 setObject:CopyWithAttributes forKeyedSubscript:@"CRLWPUnadjustedFont"];
    CFRelease(CopyWithAttributes);
  }

  v85 = sub_1002812E4(v10, v9, 0x12uLL);
  if ([v85 isEnabled])
  {
    [v11 setObject:v85 forKeyedSubscript:@"CRLWPShadow"];
  }

  v26 = sub_10028139C(v10, v9, 25, 0);
  if (v26 >= 4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135B390();
    }

    v27 = off_1019EDA68;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10135B3B8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135B440();
    }

    v28 = off_1019EDA68;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v29);
    }

    v30 = [NSString stringWithUTF8String:"NSDictionary<NSString *, id> *CRLWPCoreTextAttributes(CTParagraphStyleRef, CRLWPParagraphStyle *__strong, CRLWPCharacterStyle *__strong, BOOL, NSUInteger)"];
    v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:5131 isFatal:0 description:"bad underline value"];
  }

  if (v26 >= 3)
  {
    v32 = 3;
  }

  else
  {
    v32 = v26;
  }

  v33 = [NSNumber numberWithUnsignedInt:v32];
  [v11 setObject:v33 forKeyedSubscript:?];

  v34 = sub_1002812E4(v10, v9, 0x1AuLL);
  v35 = +[NSNull null];
  v36 = v35 == v34;

  v37 = 0;
  if (!v36)
  {
    v37 = v34;
  }

  v86 = v37;

  if (v86)
  {
    [v11 setObject:v86 forKeyedSubscript:@"CRLWPUnderlineColor"];
  }

  v87 = sub_1002812E4(v10, v9, 8uLL);
  if (v87)
  {
    v38 = +[NSNull null];
    v39 = v87 == v38;

    if (!v39)
    {
      [v11 setObject:v87 forKeyedSubscript:@"CRLWPEmphasisMarksAttribute"];
    }
  }

  v40 = sub_10028139C(v10, v9, 19, 0);
  if (v40 >= 3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135B468();
    }

    v41 = off_1019EDA68;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_10135B490();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135B518();
    }

    v42 = off_1019EDA68;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v43);
    }

    v44 = [NSString stringWithUTF8String:"NSDictionary<NSString *, id> *CRLWPCoreTextAttributes(CTParagraphStyleRef, CRLWPParagraphStyle *__strong, CRLWPCharacterStyle *__strong, BOOL, NSUInteger)"];
    v45 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v44 file:v45 lineNumber:5148 isFatal:0 description:"bad strikethru value"];
  }

  if (v40 >= 2)
  {
    v46 = 2;
  }

  else
  {
    v46 = v40;
  }

  v47 = [NSNumber numberWithUnsignedInt:v46];
  [v11 setObject:v47 forKeyedSubscript:?];

  v48 = sub_1002812E4(v10, v9, 0x14uLL);
  v82 = v48;
  if (v48)
  {
    [v11 setObject:v48 forKeyedSubscript:@"CRLWPStrikethroughColor"];
  }

  v49 = sub_1002812E4(v10, v9, 0x17uLL);
  v83 = v49;
  if (v49)
  {
    [v11 setObject:v49 forKeyedSubscript:@"CRLWPTextBackgroundColor"];
  }

  v50 = objc_opt_class();
  v51 = sub_1002812E4(v10, v9, 6uLL);
  v52 = sub_100014370(v50, v51);

  v53 = objc_opt_class();
  v54 = sub_1002812E4(v10, v9, 4uLL);
  v55 = sub_100014370(v53, v54);

  if (v52)
  {
    v56 = +[CRLStroke emptyStroke];
    v57 = [v52 isEqual:v56];

    v58 = v57 ^ 1;
    if (v55)
    {
LABEL_61:
      v59 = [v55 isClear] ^ 1;
      goto LABEL_64;
    }
  }

  else
  {
    v58 = 0;
    if (v55)
    {
      goto LABEL_61;
    }
  }

  v59 = 0;
LABEL_64:
  if ((v58 | v59))
  {
    if (v58)
    {
      [v11 setObject:v52 forKeyedSubscript:@"CRLWPCharacterStrokeAttribute"];
    }

    if (v59)
    {
      v60 = objc_opt_class();
      v61 = sub_100014370(v60, v55);
      v62 = v61;
      if (v61)
      {
        [v11 setObject:objc_msgSend(v61 forKeyedSubscript:{"CGColor"), kCTForegroundColorAttributeName}];
        v63 = 0;
      }

      else
      {
        [v11 setObject:v55 forKeyedSubscript:@"CRLWPCharacterFillAttribute"];
        v66 = [v55 referenceColor];
        v67 = v66;
        if (v66)
        {
          v63 = v66;
        }

        else
        {
          v63 = +[CRLColor blackColor];
        }
      }
    }

    else
    {
      v63 = +[CRLColor clearColor];
    }

    if (v63)
    {
      v68 = [v11 objectForKeyedSubscript:kCTForegroundColorAttributeName];
      v69 = v68 == 0;

      if (v69)
      {
        if (!v55 || ([v63 isClear] & 1) == 0)
        {
          [v11 setObject:kCFBooleanTrue forKeyedSubscript:kCTForegroundColorFromContextAttributeName];
        }

        [v11 setObject:objc_msgSend(v63 forKeyedSubscript:{"CGColor"), kCTForegroundColorAttributeName}];
      }
    }

    if (v58)
    {
      [v52 color];
    }

    else
    {
      [v55 referenceColor];
    }
    v70 = ;

    v71 = [v11 objectForKeyedSubscript:@"CRLWPUnderline"];
    if ([v71 isEqual:&off_1018E2BE0])
    {
    }

    else
    {
      v72 = [v11 objectForKeyedSubscript:@"CRLWPUnderlineColor"];
      v73 = v72 == 0;

      if (v73)
      {
        [v11 setObject:v70 forKeyedSubscript:@"CRLWPUnderlineColor"];
      }
    }

    v74 = [v11 objectForKeyedSubscript:@"CRLWPStrikethrough"];
    if ([v74 isEqual:&off_1018E2BE0])
    {
    }

    else
    {
      v75 = [v11 objectForKeyedSubscript:@"CRLWPStrikethroughColor"];
      v76 = v75 == 0;

      if (v76)
      {
        [v11 setObject:v70 forKeyedSubscript:@"CRLWPStrikethroughColor"];
      }
    }
  }

  else
  {
    v64 = +[CRLColor grayColor];
    v65 = [v64 colorWithAlphaComponent:0.7];
    [v11 setObject:objc_msgSend(v65 forKeyedSubscript:{"CGColor"), kCTStrokeColorAttributeName}];

    [v11 setObject:&off_1018E2BF8 forKeyedSubscript:kCTStrokeWidthAttributeName];
    [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"CRLWPInvisibleTextAttribute"];
  }

  v77 = objc_opt_class();
  v78 = sub_1002812E4(v10, v9, 5uLL);
  v79 = sub_100014370(v77, v78);

  if (v79)
  {
    [v11 setObject:v79 forKeyedSubscript:@"CRLWPCharacterFillShouldFillTextContainerAttribute"];
  }

  CFRelease(font);
  v80 = v11;

  return v11;
}

void sub_100363364(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003633A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003633EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100363430(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100363474(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if (a1 != -1)
  {
    v2 = a1;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      return 1;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135B540();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135B554();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135B5DC();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v5 = [NSString stringWithUTF8String:"CTWritingDirection CRLWPCoreTextWritingDirectionFromWPWritingDirection(CRLWPWritingDirection, BOOL)"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:5255 isFatal:0 description:"Bad writing direction map."];
  }

  return 0;
}

void sub_100363620(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100363664(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003636A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003636EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100363730(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100363774(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003637B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003637FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100363840(id a1)
{
  v1 = [NSCharacterSet characterSetWithCharactersInString:@"-—–‐‒−﹣－﹘"];
  v2 = qword_101A34D00;
  qword_101A34D00 = v1;
}

void sub_100363888(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_100363908(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10036391C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10036391C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1005B64E8();
    operator delete();
  }

  return a1;
}

void sub_100363968(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003639A0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1005B64E8();

    operator delete();
  }

  return result;
}

uint64_t sub_1003639E4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100363A24(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000DB64C(result, a2);
  }

  return result;
}

void sub_100363A80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100364144(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100364188(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100364524(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 40);
    }

    (*(v3 + 16))(v3, 1, v4);
  }
}

void sub_1003645A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003645EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100364878(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003648BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100364900(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100364C14(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100364C60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100364CA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100365B94(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100366B78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100366BBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100366C00(id a1, id a2)
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

void sub_100366C2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100366C70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100366CB4(id a1, id a2)
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

void sub_100366CE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100366D24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003676FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100367740(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036813C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"CRLCanvasLayoutsChangedForCanvasNotification" object:*(a1 + 32)];
}

void sub_10036880C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100368850(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100368C10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100368C54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100368F08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100368F4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100369178(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003691BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100369374(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003693B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100369560(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003695A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036989C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003698E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100369B0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100369B50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100369DE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100369E28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100369FE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036A02C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036A5C0(uint64_t a1)
{
  [*(a1 + 32) setPreferredContentSize:{*(a1 + 40), *(a1 + 48)}];
  if ([*(a1 + 32) crl_shouldUpdateNavigationContentSizeWithPreferredContentSize])
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) navigationController];
    [v4 setPreferredContentSize:{v2, v3}];
  }
}

void sub_10036AA80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036AAC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036AF90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036AFD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036B018(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036B05C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036B378(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036B3BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036BB04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036BB48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036BB8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036BBD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036BEF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036BF38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036C2D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036C314(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036C358(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036C39C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036CE28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036CE6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036DB0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036DB50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036DB94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036DBD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036DC1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036DC60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036E890(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036E8D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036FB4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036FB90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036FBD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}