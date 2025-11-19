void sub_2968(id a1)
{
  qword_36AA40 = objc_alloc_init(BEContentBlockingRules);

  _objc_release_x1();
}

void sub_2E1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_2E40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) removeAllContentRuleLists];
    [*(a1 + 32) addContentRuleList:v5];
    [*(a1 + 40) setBe_appliedContentBlockingRule:*(a1 + 72)];
  }

  if (v6)
  {
    v7 = _BookEPUBLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Error creating content blocking rule list - %@", &v12, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = [WeakRetained cachedRules];
  [v9 setObject:v5 forKeyedSubscript:*(a1 + 48)];

  v10 = objc_retainBlock(*(a1 + 56));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, 1, v6);
  }
}

void sub_2F90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    if (*(a1 + 56) <= 1uLL)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(a1 + 56);
    }

    if (v7 == 1)
    {
      v8 = &off_325EB0;
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_11;
      }

      v8 = off_325EA8;
    }

    v9 = [(__objc2_class *)*v8 source];
    if (v9)
    {
LABEL_14:
      [*(a1 + 32) compileContentRuleListForIdentifier:*(a1 + 40) encodedContentRuleList:v9 completionHandler:*(a1 + 48)];

      goto LABEL_15;
    }

LABEL_11:
    v10 = _BookEPUBLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [NSNumber numberWithUnsignedInteger:v7];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Unsupported content blocking rule '%@'", &v12, 0xCu);
    }

    v9 = 0;
    goto LABEL_14;
  }

  (*(*(a1 + 48) + 16))();
LABEL_15:
}

void ITEpubContainerParser::ITEpubContainerParser(ITEpubContainerParser *this)
{
  ITEpubXmlParseHandler::ITEpubXmlParseHandler(this);
  *v1 = off_327F68;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 120) = 0;
  *(v1 + 144) = 0;
}

{
  ITEpubXmlParseHandler::ITEpubXmlParseHandler(this);
  *v1 = off_327F68;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 120) = 0;
  *(v1 + 144) = 0;
}

void ITEpubContainerParser::~ITEpubContainerParser(void **this)
{
  *this = off_327F68;
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  ITEpubXmlParseHandler::~ITEpubXmlParseHandler(this);
}

{
  ITEpubContainerParser::~ITEpubContainerParser(this);

  operator delete();
}

uint64_t ITEpubContainerParser::StartElement(CFMutableArrayRef *this, const __CFString *a2, const __CFDictionary *a3)
{
  ITEpubXmlParseHandler::StartElement(this, a2, a3);
  result = ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"rootfile");
  if (result)
  {
    ++*(this + 36);
    if ((*(this + 143) & 0x8000000000000000) != 0)
    {
      if (this[16])
      {
        return result;
      }
    }

    else if (*(this + 143))
    {
      return result;
    }

    result = ITEpubXmlParseHandler::doesAttributeMatch(this, @"media-type", @"application/oebps-package+xml", a3);
    if (result)
    {
      Value = CFDictionaryGetValue(a3, @"full-path");

      return ITStrUtil::toString(Value, (this + 15));
    }
  }

  return result;
}

std::string *ITEpubContainerParser::opfFile(uint64_t a1, std::string *this)
{
  v3 = (a1 + 120);
  if (*(a1 + 143) < 0)
  {
    v3 = *v3;
  }

  return std::string::assign(this, v3);
}

id sub_3680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[0] = @"forDisplay";
  v9 = [NSNumber numberWithBool:a1];
  v19[0] = v9;
  v18[1] = @"level";
  v10 = [NSNumber numberWithInteger:a2];
  v19[1] = v10;
  v18[2] = @"imageFilter";
  v11 = [NSNumber numberWithUnsignedInteger:a3];
  v19[2] = v11;
  v18[3] = @"singleTapEnabled";
  v12 = [NSNumber numberWithBool:a4];
  v19[3] = v12;
  v18[4] = @"lineGuideEnabled";
  v13 = [NSNumber numberWithBool:a5];
  v19[4] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];

  v15 = [NSJSONSerialization dataWithJSONObject:v14 options:4 error:0];
  v16 = [[NSString alloc] initWithData:v15 encoding:4];

  return v16;
}

id BookEPUBBundle()
{
  if (qword_36AA58 != -1)
  {
    sub_2638F4();
  }

  v1 = qword_36AA50;

  return v1;
}

void sub_3CB0(id a1)
{
  qword_36AA50 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void ITEpubPageListParser::ITEpubPageListParser(ITEpubPageListParser *this, atomic_uint *a2)
{
  ITEpubXmlParseHandler::ITEpubXmlParseHandler(this);
  *v3 = off_327FE8;
  v3[15] = 0;
  v3[16] = 0;
  v3[17] = a2;
  if (a2)
  {
    ITRetain::retain(a2);
  }
}

void ITEpubPageListParser::~ITEpubPageListParser(ITEpubPageListParser *this)
{
  *this = off_327FE8;
  v2 = *(this + 17);
  if (v2)
  {
    ITRetain::release(v2);
    *(this + 17) = 0;
  }

  v3 = *(this + 16);
  if (v3)
  {
    ITRetain::release(v3);
    *(this + 16) = 0;
  }

  ITEpubXmlParseHandler::~ITEpubXmlParseHandler(this);
}

{
  ITEpubPageListParser::~ITEpubPageListParser(this);

  operator delete();
}

void ITEpubPageListParser::StartNode(ITEpubPageListParser *this, CFStringRef theString, const __CFDictionary *a3)
{
  if (*(this + 30))
  {
    if (*(this + 16))
    {
      if (ITEpubXmlParseHandler::doesNodeMatch(this, theString, @"pageTarget"))
      {
        ++*(this + 31);
        CFDictionaryGetValue(a3, @"id");
        operator new();
      }

      if (ITEpubXmlParseHandler::doesNodeMatch(this, theString, @"content"))
      {
        Value = CFDictionaryGetValue(a3, @"src");
        if (Value)
        {
          v9 = Value;
          v10 = ITEpubXmlParseHandler::copyHrefStrippingHash(Value, v8);
          if (v10)
          {
            v11 = v10;
            if (CFStringGetLength(v10))
            {
              ITNavPoint::setContentFile(*(this + 16), v9);
            }

            CFRelease(v11);
          }
        }
      }
    }
  }

  else if (ITEpubXmlParseHandler::doesNodeMatch(this, theString, @"pageList"))
  {
    v6 = *(this + 16);
    if (v6)
    {
      ITRetain::release(v6);
      *(this + 16) = 0;
    }

    operator new();
  }
}

void ITEpubPageListParser::EndNode(ITEpubPageListParser *this, const __CFString *a2, const char *a3)
{
  if (*(this + 30) && *(this + 16))
  {
    if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"pageList"))
    {
      *(this + 30) = 0;
    }

    else if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"pageTarget"))
    {
      v6 = *(this + 31);
      if (v6)
      {
        *(this + 31) = v6 - 1;
        v7 = *(this + 16);
        v8 = *(v7 + 5);
        if (v8)
        {
          *(this + 16) = v8;
        }

        v9 = ITNavPoint::contentFileIncludingHash(v7);
        if (!v9 || !CFStringGetLength(v9))
        {
          if (v7 == *(this + 16))
          {
            *(this + 16) = 0;
          }

          else
          {
            ITRetain::retain(v7);
            ITNavPoint::removeChild(*(this + 16), v7);
            v10 = *(v7 + 3) - *(v7 + 2);
            if ((v10 >> 3) >= 1)
            {
              v11 = 0;
              v12 = (v10 >> 3) & 0x7FFFFFFF;
              do
              {
                v13 = ITNavPoint::childAtIndex(v7, v11++);
                ITNavPoint::addChild(*(this + 16), v13);
              }

              while (v12 != v11);
            }
          }

          ITRetain::release(v7);
        }
      }
    }

    else
    {
      doesNodeMatch = ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"text");
      if (a3)
      {
        if (doesNodeMatch)
        {
          if (*a3)
          {
            v15 = CFStringCreateWithCString(kCFAllocatorDefault, a3, 0x8000100u);
            ITNavPoint::setContentName(*(this + 16), v15);
            if (v15)
            {

              CFRelease(v15);
            }
          }
        }
      }
    }
  }
}

atomic_uint *ITEpubPageListParser::copyPageLists(ITEpubPageListParser *this)
{
  result = *(this + 16);
  if (result)
  {
    ITRetain::retain(result);
    return *(this + 16);
  }

  return result;
}

void sub_4658(id a1)
{
  qword_36AA60 = objc_alloc_init(BETestDriver);

  _objc_release_x1();
}

void sub_47D0(id a1)
{
  v4 = +[NSBundle mainBundle];
  v1 = [v4 infoDictionary];
  v2 = [v1 objectForKey:@"CFBundleShortVersionString"];
  v3 = qword_36AA70;
  qword_36AA70 = v2;
}

id sub_5090(uint64_t a1, uint64_t a2)
{
  [BEJavascriptUtilities rectFromRectDictionary:a2];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  if (CGRectIsNull(v10))
  {
    v6 = 0;
  }

  else
  {
    *v8 = x;
    *&v8[1] = y;
    *&v8[2] = width;
    *&v8[3] = height;
    v6 = [NSValue valueWithBytes:v8 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  }

  return v6;
}

id sub_52A4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [BEJavascriptUtilities rectFromRectDictionary:*(*(&v16 + 1) + 8 * i)];
        x = v22.origin.x;
        y = v22.origin.y;
        width = v22.size.width;
        height = v22.size.height;
        if (!CGRectIsNull(v22))
        {
          *v15 = x;
          *&v15[1] = y;
          *&v15[2] = width;
          *&v15[3] = height;
          v13 = [NSValue valueWithBytes:v15 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          [v3 addObject:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v3;
}

void ITNavPoint::ITNavPoint(ITNavPoint *this)
{
  ITRetain::ITRetain(this);
  *v1 = off_328130;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
}

{
  ITRetain::ITRetain(this);
  *v1 = off_328130;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
}

void ITNavPoint::~ITNavPoint(ITNavPoint *this, ITRetain *a2)
{
  *this = off_328130;
  v3 = *(this + 2);
  v4 = *(this + 3);
  while (v3 != v4)
  {
    ITRetain::for_each_release(*v3++, a2);
  }

  *(this + 5) = 0;
  v5 = *(this + 6);
  if (v5)
  {
    CFRelease(v5);
    *(this + 6) = 0;
  }

  v6 = *(this + 7);
  if (v6)
  {
    CFRelease(v6);
    *(this + 7) = 0;
  }

  v7 = *(this + 8);
  if (v7)
  {
    CFRelease(v7);
    *(this + 8) = 0;
  }

  v8 = *(this + 9);
  if (v8)
  {
    CFRelease(v8);
    *(this + 9) = 0;
  }

  v9 = *(this + 10);
  if (v9)
  {
    CFRelease(v9);
    *(this + 10) = 0;
  }

  v10 = *(this + 11);
  if (v10)
  {
    CFRelease(v10);
    *(this + 11) = 0;
  }

  v11 = *(this + 12);
  if (v11)
  {
    CFRelease(v11);
    *(this + 12) = 0;
  }

  v12 = *(this + 2);
  if (v12)
  {
    *(this + 3) = v12;
    operator delete(v12);
  }

  ITRetain::~ITRetain(this);
}

{
  ITNavPoint::~ITNavPoint(this, a2);

  operator delete();
}

void ITNavPoint::setRelativeHrefBase(ITNavPoint *this, CFTypeRef cf)
{
  v4 = *(this + 11);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 11) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

void ITNavPoint::setNavPointId(ITNavPoint *this, CFTypeRef cf)
{
  v4 = *(this + 6);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 6) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

void ITNavPoint::setNavPointType(ITNavPoint *this, CFTypeRef cf)
{
  v4 = *(this + 7);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 7) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

void ITNavPoint::setNavPointValue(ITNavPoint *this, CFTypeRef cf)
{
  v4 = *(this + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 8) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

const __CFString *ITNavPoint::setContentFile(ITNavPoint *this, CFStringRef originalString)
{
  v4 = *(this + 9);
  if (v4)
  {
    CFRelease(v4);
    *(this + 9) = 0;
  }

  result = ITEpubXmlParseHandler::createHrefString(originalString, originalString);
  *(this + 9) = result;
  return result;
}

void ITNavPoint::setContentName(ITNavPoint *this, CFTypeRef cf)
{
  v4 = *(this + 10);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 10) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

void ITNavPoint::setContentHTML(ITNavPoint *this, CFTypeRef cf)
{
  v4 = *(this + 12);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 12) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

uint64_t ITNavPoint::countHref(ITNavPoint *this, CFStringRef theString2)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  if (v3 == v2)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = *(*v3 + 72);
    if (v7)
    {
      if (CFStringCompare(v7, theString2, 0))
      {
        v6 = v6;
      }

      else
      {
        v6 = (v6 + 1);
      }

      v2 = *(this + 3);
    }

    v3 += 8;
  }

  while (v3 != v2);
  return v6;
}

void ITNavPoint::addChild(ITNavPoint *this, atomic_uint *a2)
{
  if (a2)
  {
    ITRetain::retain(a2);
    v5 = *(this + 3);
    v4 = *(this + 4);
    if (v5 >= v4)
    {
      v7 = *(this + 2);
      v8 = (v5 - v7) >> 3;
      if ((v8 + 1) >> 61)
      {
        sub_66D0();
      }

      v9 = v4 - v7;
      v10 = v9 >> 2;
      if (v9 >> 2 <= (v8 + 1))
      {
        v10 = v8 + 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        sub_6778(this + 16, v11);
      }

      *(8 * v8) = a2;
      v6 = 8 * v8 + 8;
      v12 = *(this + 2);
      v13 = *(this + 3) - v12;
      v14 = (8 * v8 - v13);
      memcpy(v14, v12, v13);
      v15 = *(this + 2);
      *(this + 2) = v14;
      *(this + 3) = v6;
      *(this + 4) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v5 = a2;
      v6 = (v5 + 1);
    }

    *(this + 3) = v6;
    *(a2 + 5) = this;
  }
}

uint64_t ITNavPoint::childAtIndex(ITNavPoint *this, unint64_t a2)
{
  v2 = *(this + 2);
  if (a2 >= (*(this + 3) - v2) >> 3)
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t ITNavPoint::removeChild(uint64_t this, atomic_uint *a2)
{
  v2 = *(this + 16);
  v3 = *(this + 24);
  if (v2 != v3)
  {
    v4 = this;
    v5 = (v2 + 1);
    while (*v2 != a2)
    {
      ++v2;
      v5 += 8;
      if (v2 == v3)
      {
        return this;
      }
    }

    this = ITRetain::release(a2);
    v6 = *(v4 + 24);
    v7 = v6 - v5;
    if (v6 != v5)
    {
      this = memmove(v5 - 8, v5, v6 - v5);
    }

    *(v4 + 24) = &v5[v7 - 8];
  }

  return this;
}

void sub_66E8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_6744(exception, a1);
}

std::logic_error *sub_6744(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_6778(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_67C0();
}

void sub_67C0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

id CFStringGetXmlCharPtr(__CFString *a1)
{
  v1 = a1;

  return [(__CFString *)v1 UTF8String];
}

void sub_687C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ITEpubXmlParseDelegate;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id ITParseXMLInObjectiveCWithData(ITEpubXmlParseHandler *a1, const __CFData *a2)
{
  v4 = objc_opt_new();
  [v4 setDecoder:a1];
  v5 = [[NSXMLParser alloc] initWithData:a2];
  [v5 setDelegate:v4];
  [v5 setShouldProcessNamespaces:1];
  [v5 parse];
  v6 = [v5 parserError];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 code];
  }

  else
  {
    v8 = 0;
  }

  [v4 setDecoder:0];
  [v5 setDelegate:0];

  return v8;
}

void GR7MfHLOwbW53iI3X2X0XHFzhK::GR7MfHLOwbW53iI3X2X0XHFzhK(GR7MfHLOwbW53iI3X2X0XHFzhK *this, const char *a2)
{
  ITEpubXmlParseHandler::ITEpubXmlParseHandler(this);
  *v4 = off_328168;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0;
  *(this + 15) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (a2)
  {
    if (*a2)
    {
      *(this + 20) = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
    }
  }
}

void GR7MfHLOwbW53iI3X2X0XHFzhK::~GR7MfHLOwbW53iI3X2X0XHFzhK(GR7MfHLOwbW53iI3X2X0XHFzhK *this)
{
  *this = off_328168;
  v2 = *(this + 15);
  if (v2)
  {
    CFRelease(v2);
    *(this + 15) = 0;
  }

  v3 = *(this + 16);
  if (v3)
  {
    CFRelease(v3);
    *(this + 16) = 0;
  }

  v4 = *(this + 17);
  if (v4)
  {
    CFRelease(v4);
    *(this + 17) = 0;
  }

  v5 = *(this + 18);
  if (v5)
  {
    CFRelease(v5);
    *(this + 18) = 0;
  }

  v6 = *(this + 19);
  if (v6)
  {
    CFRelease(v6);
    *(this + 19) = 0;
  }

  v7 = *(this + 20);
  if (v7)
  {
    CFRelease(v7);
    *(this + 20) = 0;
  }

  ITEpubXmlParseHandler::~ITEpubXmlParseHandler(this);
}

{
  GR7MfHLOwbW53iI3X2X0XHFzhK::~GR7MfHLOwbW53iI3X2X0XHFzhK(this);

  operator delete();
}

void GR7MfHLOwbW53iI3X2X0XHFzhK::StartElement(GR7MfHLOwbW53iI3X2X0XHFzhK *this, const __CFString *a2, const __CFDictionary *a3)
{
  ITEpubXmlParseHandler::StartElement(this, a2, a3);
  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"EncryptedData"))
  {
    v6 = *(this + 16);
    if (v6)
    {
      CFRelease(v6);
      *(this + 16) = 0;
    }

    v7 = *(this + 17);
    if (v7)
    {
      CFRelease(v7);
      *(this + 17) = 0;
    }

    v8 = *(this + 18);
    if (v8)
    {
      CFRelease(v8);
      *(this + 18) = 0;
    }

    v9 = *(this + 19);
    if (v9)
    {
      CFRelease(v9);
      *(this + 19) = 0;
    }

    Value = CFDictionaryGetValue(a3, @"deenc:compression");
    if (Value || (Value = CFDictionaryGetValue(a3, @"compression")) != 0)
    {
      *(this + 19) = Value;
LABEL_17:

      CFRetain(Value);
    }
  }

  else if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"EncryptionMethod"))
  {
    v11 = *(this + 16);
    if (v11)
    {
      CFRelease(v11);
      *(this + 16) = 0;
    }

    Value = CFDictionaryGetValue(a3, @"Algorithm");
    *(this + 16) = Value;
    if (Value)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"CipherReference"))
    {
      return;
    }

    v12 = *(this + 17);
    if (v12)
    {
      CFRelease(v12);
      *(this + 17) = 0;
    }

    v13 = CFDictionaryGetValue(a3, @"URI");
    v15 = ITEpubXmlParseHandler::copyHrefStrippingHash(v13, v14);
    v16 = v15;
    if (*(this + 20))
    {
      Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
      CFStringAppend(Mutable, v16);
      v19.length = CFStringGetLength(*(this + 20)) + 1;
      v19.location = 0;
      CFStringFindAndReplace(Mutable, *(this + 20), &stru_33E120, v19, 0);
      *(this + 17) = Mutable;
      if (!v16)
      {
        return;
      }
    }

    else
    {
      *(this + 17) = v15;
      if (!v15)
      {
        return;
      }

      CFRetain(v15);
    }

    CFRelease(v16);
  }
}

void GR7MfHLOwbW53iI3X2X0XHFzhK::EndElement(GR7MfHLOwbW53iI3X2X0XHFzhK *this, const __CFString *a2)
{
  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"EncryptedData"))
  {
    if (*(this + 16) && *(this + 17))
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionaryAddValue(Mutable, @"encryptionAlgorithm", *(this + 16));
      v5 = *(this + 18);
      if (v5)
      {
        CFDictionaryAddValue(Mutable, @"fairplay-id", v5);
      }

      v6 = *(this + 19);
      if (v6)
      {
        CFDictionaryAddValue(Mutable, @"compressionAlgorithm", v6);
      }

      CFDictionaryAddValue(*(this + 15), *(this + 17), Mutable);
      CFRelease(Mutable);
    }
  }

  else if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"KeyName"))
  {
    v7 = *(this + 18);
    if (v7)
    {
      CFRelease(v7);
      *(this + 18) = 0;
    }

    v8 = this + 72;
    if (*(this + 95) < 0)
    {
      v8 = *v8;
    }

    *(this + 18) = CFStringCreateWithCString(kCFAllocatorDefault, v8, 0x8000100u);
  }

  ITEpubXmlParseHandler::EndElement(this, a2);
}

void sub_8530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_8548(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_8560(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];

  return _objc_release_x1();
}

void sub_8684(uint64_t a1)
{
  v2 = [*(a1 + 48) copy];
  [*(*(a1 + 32) + 64) setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

void ITBlissFolder::ITBlissFolder(ITBlissFolder *this, const __CFString *a2, const __CFString *a3)
{
  ITEpubFolder::ITEpubFolder(this, a2, a3);
  *v3 = &off_328218;
}

{
  ITEpubFolder::ITEpubFolder(this, a2, a3);
  *v3 = &off_328218;
}

BOOL ITBlissFolder::isMimeCorrect(const __CFString **this)
{
  if ((atomic_load_explicit(&qword_36AA88, memory_order_acquire) & 1) == 0)
  {
    v5 = this;
    sub_263930();
    this = v5;
  }

  v2 = this[2];
  v3 = qword_36AA80;

  return ITEpubFolder::isMimeCorrect(v2, aApplicationXIb, v3);
}

void sub_8908(ITEpubFolder *a1)
{
  ITEpubFolder::~ITEpubFolder(a1);

  operator delete();
}

const void *sub_8948(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    CFRetain(result);
    return *(a1 + 16);
  }

  return result;
}

const void *sub_8978(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    CFRetain(result);
    return *(a1 + 24);
  }

  return result;
}

void _BookContentLayoutControllerLogsSetLogToLevel(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = sub_8A80();
  v8 = [v5 mutableCopy];

  [v8 setObject:v3 forKeyedSubscript:v4];
  v6 = [v8 copy];
  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 setObject:v6 forKey:@"BookContentLayoutControllerLogs"];
}

void *sub_8A80()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 objectForKey:@"BookContentLayoutControllerLogs"];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = &__NSDictionary0__struct;
  }

  v4 = v3;

  return v3;
}

id _BookContentLayoutControllerLogsLevelForLog(void *a1)
{
  v1 = a1;
  v2 = sub_8A80();
  v3 = [v2 objectForKeyedSubscript:v1];

  return v3;
}

void ITEpubAppleDisplayOptionsParser::ITEpubAppleDisplayOptionsParser(ITEpubAppleDisplayOptionsParser *this)
{
  ITEpubXmlParseHandler::ITEpubXmlParseHandler(this);
  *v1 = off_328300;
  *(v1 + 120) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 128) = 0;
}

{
  ITEpubXmlParseHandler::ITEpubXmlParseHandler(this);
  *v1 = off_328300;
  *(v1 + 120) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 128) = 0;
}

void ITEpubAppleDisplayOptionsParser::~ITEpubAppleDisplayOptionsParser(ITEpubAppleDisplayOptionsParser *this)
{
  *this = off_328300;
  v2 = *(this + 18);
  if (v2)
  {
    CFRelease(v2);
    *(this + 18) = 0;
  }

  v3 = *(this + 16);
  if (v3)
  {
    CFRelease(v3);
    *(this + 16) = 0;
  }

  v4 = *(this + 17);
  if (v4)
  {
    CFRelease(v4);
    *(this + 17) = 0;
  }

  ITEpubXmlParseHandler::~ITEpubXmlParseHandler(this);
}

{
  ITEpubAppleDisplayOptionsParser::~ITEpubAppleDisplayOptionsParser(this);

  operator delete();
}

uint64_t ITEpubAppleDisplayOptionsParser::StartElement(CFMutableArrayRef *this, const __CFString *a2, const __CFDictionary *a3)
{
  ITEpubXmlParseHandler::StartElement(this, a2, a3);
  result = ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"display_options");
  if (result)
  {
    *(this + 30) = 1;
    v7 = this[18];
    if (v7)
    {
      CFRelease(v7);
      this[18] = 0;
    }

    result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    this[18] = result;
  }

  else if (*(this + 30))
  {
    if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"platform"))
    {
      Value = CFDictionaryGetValue(a3, @"name");
      v9 = this[16];
      if (v9)
      {
        CFRelease(v9);
        this[16] = 0;
      }

      result = CFStringGetLength(Value);
      if (result)
      {
        if (Value)
        {
          result = CFRetain(Value);
        }

        this[16] = Value;
      }
    }

    else
    {
      result = ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"option");
      if (result)
      {
        v10 = CFDictionaryGetValue(a3, @"name");
        v11 = this[17];
        if (v11)
        {
          CFRelease(v11);
          this[17] = 0;
        }

        result = CFStringGetLength(v10);
        if (result)
        {
          if (v10)
          {
            result = CFRetain(v10);
          }

          this[17] = v10;
        }
      }
    }
  }

  return result;
}

void ITEpubAppleDisplayOptionsParser::EndElement(ITEpubAppleDisplayOptionsParser *this, const __CFString *a2)
{
  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"display_options"))
  {
    *(this + 30) = 0;
    goto LABEL_3;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"platform"))
  {
    v4 = *(this + 16);
    if (v4)
    {
      CFRelease(v4);
      *(this + 16) = 0;
    }

    goto LABEL_3;
  }

  if (!ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"option"))
  {
    goto LABEL_3;
  }

  v5 = this + 72;
  if ((*(this + 95) & 0x80000000) == 0)
  {
    if (!*(this + 95))
    {
      goto LABEL_16;
    }

LABEL_15:
    v6 = CFStringCreateWithCString(kCFAllocatorDefault, v5, 0x8000100u);
    goto LABEL_17;
  }

  if (*(this + 10))
  {
    v5 = *v5;
    goto LABEL_15;
  }

LABEL_16:
  v6 = 0;
LABEL_17:
  if (*(this + 30))
  {
    v7 = *(this + 16);
    if (v7)
    {
      if (*(this + 17) && v6)
      {
        Value = CFDictionaryGetValue(*(this + 18), v7);
        if (!Value)
        {
          Value = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFDictionarySetValue(*(this + 18), *(this + 16), Value);
          CFRelease(Value);
        }

        CFDictionarySetValue(Value, *(this + 17), v6);
      }
    }
  }

  v9 = *(this + 17);
  if (v9)
  {
    CFRelease(v9);
    *(this + 17) = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

LABEL_3:

  ITEpubXmlParseHandler::EndElement(this, a2);
}

const __CFDictionary *ITEpubAppleDisplayOptionsParser::platformOptions(uint64_t a1, int a2)
{
  result = *(a1 + 144);
  if (result)
  {
    if (a2 == 2)
    {
      result = CFDictionaryGetValue(result, @"iphone");
      if (result)
      {
        return result;
      }

      result = *(a1 + 144);
      v4 = @"iPhone";
    }

    else if (a2 == 1)
    {
      result = CFDictionaryGetValue(result, @"ipad");
      if (result)
      {
        return result;
      }

      result = *(a1 + 144);
      v4 = @"iPad";
    }

    else
    {
      if (a2)
      {
        return 0;
      }

      v4 = @"*";
    }

    return CFDictionaryGetValue(result, v4);
  }

  return result;
}

void sub_97F8(uint64_t a1)
{
  v2 = _BookEPUBLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) styleManager];
    v4 = [v3 font];
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Attempting deferred #fontReg of #fontFamily '%{public}@'", &v8, 0xCu);
  }

  [*(a1 + 40) be_willProcessDeferredFontRegistration];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) styleManager];
  v7 = [*(a1 + 32) fontRegistrationHandler];
  [v5 be_configureFontWithStyleManager:v6 completion:v7];
}

id sub_9B34(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) be_fontRegistrationCompleted:a2];
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setAttemptingFontRegistration:0];
  v3 = *(a1 + 32);

  return [v3 be_processPendingFontRegistration];
}

void sub_A1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_A220(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_12;
  }

  v6 = [WeakRetained fontsAttemptingRegistration];
  [v6 removeObject:*(a1 + 32)];

  v7 = _BookEPUBLog();
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Success #fontReg #fontFamily '%{public}@'", &v15, 0xCu);
    }

    v10 = [v5 registeredFonts];
    [v10 addObject:*(a1 + 32)];

    [v5 be_fontFamilySuccessfullyRegistered:*(a1 + 32)];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v11 = _BookEPUBLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        v15 = 138543362;
        v16 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Skipping #fontReg Completion due to timeout for #fontFamily '%{public}@'", &v15, 0xCu);
      }

      goto LABEL_15;
    }

    v14 = *(*(a1 + 40) + 16);
LABEL_14:
    v14();
    goto LABEL_15;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v15 = 138543362;
    v16 = v13;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Failure #fontReg #fontFamily '%{public}@'", &v15, 0xCu);
  }

  [v5 be_fontFamilyFailedToRegister:*(a1 + 32)];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
LABEL_12:
    v14 = *(*(a1 + 40) + 16);
    goto LABEL_14;
  }

LABEL_15:
}

void sub_BAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_BAD0(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = _BookEPUBLog();
    v6 = v5;
    if (a2)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v12 = 138543362;
        v13 = v7;
        v8 = "Success ThemePreview #fontReg #fontFamily '%{public}@'";
        v9 = v6;
        v10 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
        _os_log_impl(&dword_0, v9, v10, v8, &v12, 0xCu);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 138543362;
      v13 = v11;
      v8 = "Failure ThemePreview #fontReg #fontFamily '%{public}@'";
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }
  }
}

UIColor *__cdecl sub_BC78(id a1, UITraitCollection *a2)
{
  v2 = a2;
  v3 = +[UIColor systemBlueColor];
  v4 = [(UITraitCollection *)v2 userInterfaceStyle];

  if (v4 == &dword_0 + 2)
  {
    v5 = [UIColor colorWithRed:0.274509804 green:0.576470588 blue:1.0 alpha:1.0];

    v3 = v5;
  }

  return v3;
}

id sub_BDEC(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = _BEFixedLayoutWKWebView;
  objc_msgSendSuper2(&v3, "setFrame:", *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  return [*(a1 + 32) be_applyViewportArgumentsIfNeeded];
}

void sub_C784(id a1)
{
  v1 = +[UIView bepageCurlViewClass];
  if (v1)
  {
    BESwizzleInstanceMethods(v1, "pointInside:withEvent:", "be_curlContentViewPointInside:withEvent:");
  }

  +[_UIPageCurl be_swizzlePageCurlFilter];
}

void sub_C810(id a1)
{
  v1 = objc_opt_class();
  BESwizzleInstanceMethods(v1, "_newCurlFilter", "bepageCurlHack_newFilter");

  BESwizzleInstanceMethods(v1, "_newAnimationForState:withKeyPath:duration:fromValue:", "bepageCurlHack_newAnimationForState:withKeyPath:duration:fromValue:");
}

void sub_CB20(id a1)
{
  qword_36AAB0 = objc_alloc_init(BEPageCurlConfig);

  _objc_release_x1();
}

id _BookEPUBLog()
{
  if (qword_36AAC8 != -1)
  {
    sub_2639D8();
  }

  v1 = qword_36AAC0;

  return v1;
}

void sub_CEE8(id a1)
{
  qword_36AAC0 = os_log_create("com.apple.iBooks", "BookEPUB");

  _objc_release_x1();
}

uint64_t ITStrUtil::toString(CFStringRef theString, uint64_t a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    *a2 = 0;
    *(a2 + 23) = 0;
    if (theString)
    {
      goto LABEL_3;
    }

    return 0;
  }

  **a2 = 0;
  *(a2 + 8) = 0;
  if (!theString)
  {
    return 0;
  }

LABEL_3:
  Length = CFStringGetLength(theString);
  v5 = 5 * Length;
  if ((5 * Length) < 0x101)
  {
    v6 = v9;
    v5 = 256;
  }

  else
  {
    v6 = malloc_type_malloc(5 * Length, 0x100004077774924uLL);
    if (!v6)
    {
      return 1;
    }
  }

  if (CFStringGetCString(theString, v6, v5, 0x8000100u))
  {
    std::string::assign(a2, v6);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  if (v6 != v9)
  {
    free(v6);
  }

  return v7;
}

std::string *ITStrUtil::trim(std::string *a1, char *__s)
{
  if (!__s || (v3 = __s, !*__s))
  {
    v3 = "\t \r\n";
  }

  v4 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  v5 = a1->__r_.__value_.__r.__words[0];
  if (v4 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1->__r_.__value_.__r.__words[0];
  }

  if (v4 >= 0)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  result = strlen(v3);
  v9 = result;
  v10 = &v6[-1].__r_.__value_.__s + 23;
  do
  {
    if (!size)
    {
      if (v4 < 0)
      {
        *v5 = 0;
        a1->__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        a1->__r_.__value_.__s.__data_[0] = 0;
        *(&a1->__r_.__value_.__s + 23) = 0;
      }

      return result;
    }

    v11 = size;
    if (!v9)
    {
      break;
    }

    result = memchr(v3, v10[size--], v9);
  }

  while (result);
  std::string::erase(a1, v11, 0xFFFFFFFFFFFFFFFFLL);
  v12 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v12 >= 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = a1->__r_.__value_.__r.__words[0];
  }

  if (v12 >= 0)
  {
    v14 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = a1->__r_.__value_.__l.__size_;
  }

  result = strlen(v3);
  if (v14)
  {
    v15 = v13;
    v16 = result;
    if (result)
    {
      while (1)
      {
        result = memchr(v3, v15->__r_.__value_.__s.__data_[0], v16);
        if (!result)
        {
          break;
        }

        v15 = (v15 + 1);
        if (!--v14)
        {
          return result;
        }
      }
    }

    if (v15 - v13 != -1)
    {

      return std::string::erase(a1, 0, v15 - v13);
    }
  }

  return result;
}

void ITEpubMediaOverlayParser::ITEpubMediaOverlayParser(ITEpubMediaOverlayParser *this, const char *a2)
{
  ITEpubXmlParseHandler::ITEpubXmlParseHandler(this);
  *v3 = off_328580;
  *(v3 + 120) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 232) = 0u;
  *(v3 + 248) = 0;
  if (a2)
  {
    if (*a2)
    {
      *(v3 + 120) = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
    }
  }
}

void sub_D66C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 232);
  if (v4)
  {
    *(v1 + 240) = v4;
    operator delete(v4);
  }

  sub_2639EC((v1 + 208), v2, v1);
  ITEpubXmlParseHandler::~ITEpubXmlParseHandler(v1);
  _Unwind_Resume(a1);
}

void ITEpubMediaOverlayParser::~ITEpubMediaOverlayParser(ITEpubMediaOverlayParser *this)
{
  *this = off_328580;
  v2 = *(this + 15);
  if (v2)
  {
    CFRelease(v2);
    *(this + 15) = 0;
  }

  ITEpubMediaOverlayParser::clearBodyMemory(this);
  v4 = *(this + 29);
  v5 = *(this + 30);
  if (v4 != v5)
  {
    do
    {
      ITRetain::for_each_cfrelease(*v4++, v3);
    }

    while (v4 != v5);
    v4 = *(this + 29);
  }

  *(this + 30) = v4;
  if (v4)
  {
    operator delete(v4);
  }

  v6 = *(this + 26);
  if (v6)
  {
    *(this + 27) = v6;
    operator delete(v6);
  }

  v7 = *(this + 23);
  if (v7)
  {
    *(this + 24) = v7;
    operator delete(v7);
  }

  ITEpubXmlParseHandler::~ITEpubXmlParseHandler(this);
}

{
  ITEpubMediaOverlayParser::~ITEpubMediaOverlayParser(this);

  operator delete();
}

void ITEpubMediaOverlayParser::clearBodyMemory(const void ***this)
{
  ITEpubMediaOverlayParser::clearParMemory(this);
  v3 = this[23];
  v4 = this[24];
  while (v3 != v4)
  {
    v5 = *v3++;
    ITRetain::for_each_cfrelease(v5, v2);
  }

  v6 = this[26];
  v7 = this[27];
  if (v6 != v7)
  {
    do
    {
      v8 = *v6++;
      ITRetain::for_each_cfrelease(v8, v2);
    }

    while (v6 != v7);
    v6 = this[26];
  }

  this[24] = this[23];
  this[27] = v6;
}

void ITEpubMediaOverlayParser::clearParMemory(ITEpubMediaOverlayParser *this)
{
  *(this + 33) = 0;
  v2 = *(this + 18);
  if (v2)
  {
    CFRelease(v2);
    *(this + 18) = 0;
  }

  v3 = *(this + 17);
  if (v3)
  {
    CFRelease(v3);
    *(this + 17) = 0;
  }

  v4 = *(this + 19);
  if (v4)
  {
    CFRelease(v4);
    *(this + 19) = 0;
  }

  v5 = *(this + 20);
  if (v5)
  {
    CFRelease(v5);
    *(this + 20) = 0;
  }

  v6 = *(this + 21);
  if (v6)
  {
    CFRelease(v6);
    *(this + 21) = 0;
  }

  v7 = *(this + 22);
  if (v7)
  {
    CFRelease(v7);
    *(this + 22) = 0;
  }
}

void ITEpubMediaOverlayParser::clearSeqMemory(ITEpubMediaOverlayParser *this)
{
  v2 = *(this + 24);
  if (v2 != *(this + 23))
  {
    CFRelease(*(v2 - 8));
    *(this + 24) -= 8;
  }

  v3 = *(this + 27);
  if (v3 != *(this + 26))
  {
    CFRelease(*(v3 - 8));
    *(this + 27) -= 8;
  }
}

void ITEpubMediaOverlayParser::handleSeqElementAttributes(ITEpubMediaOverlayParser *this, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"epub:textref");
  v9 = Value;
  v5 = CFDictionaryGetValue(theDict, @"epub:type");
  v6 = v5;
  v8 = v5;
  if (Value)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (CFStringGetLength(v5))
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  Value = &stru_33E120;
  v9 = &stru_33E120;
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_6:
  v7 = *(this + 27);
  if (v7 == *(this + 26))
  {
    v6 = &stru_33E120;
  }

  else
  {
    v6 = *(v7 - 8);
  }

  v8 = v6;
LABEL_10:
  CFRetain(Value);
  sub_D9D4(this + 184, &v9);
  CFRetain(v6);
  sub_D9D4(this + 208, &v8);
}

void sub_D9D4(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_66D0();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_E674(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

CFTypeRef ITEpubMediaOverlayParser::handleParElementAttributes(ITEpubMediaOverlayParser *this, CFDictionaryRef theDict)
{
  *(this + 33) = 1;
  v4 = *(this + 18);
  if (v4)
  {
    CFRelease(v4);
    *(this + 18) = 0;
  }

  Value = CFDictionaryGetValue(theDict, @"epub:type");
  *(this + 18) = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  v6 = *(this + 17);
  if (v6)
  {
    CFRelease(v6);
    *(this + 17) = 0;
  }

  result = CFDictionaryGetValue(theDict, @"id");
  *(this + 17) = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef ITEpubMediaOverlayParser::handleTextElementAttributes(ITEpubMediaOverlayParser *this, CFDictionaryRef theDict)
{
  v4 = *(this + 19);
  if (v4)
  {
    CFRelease(v4);
    *(this + 19) = 0;
  }

  result = CFDictionaryGetValue(theDict, @"src");
  *(this + 19) = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef ITEpubMediaOverlayParser::handleAudioElementAttributes(ITEpubMediaOverlayParser *this, CFDictionaryRef theDict)
{
  v4 = *(this + 20);
  if (v4)
  {
    CFRelease(v4);
    *(this + 20) = 0;
  }

  Value = CFDictionaryGetValue(theDict, @"src");
  *(this + 20) = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  v6 = *(this + 21);
  if (v6)
  {
    CFRelease(v6);
    *(this + 21) = 0;
  }

  v7 = CFDictionaryGetValue(theDict, @"clipBegin");
  *(this + 21) = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = *(this + 22);
  if (v8)
  {
    CFRelease(v8);
    *(this + 22) = 0;
  }

  result = CFDictionaryGetValue(theDict, @"clipEnd");
  *(this + 22) = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void ITEpubMediaOverlayParser::StartElement(CFMutableArrayRef *this, const __CFString *a2, const __CFDictionary *a3)
{
  ITEpubXmlParseHandler::StartElement(this, a2, a3);
  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"body"))
  {
    *(this + 32) = 1;
  }

  else if (*(this + 32))
  {
    if (*(this + 33))
    {
      if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"text"))
      {

        ITEpubMediaOverlayParser::handleTextElementAttributes(this, a3);
      }

      else if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"audio"))
      {

        ITEpubMediaOverlayParser::handleAudioElementAttributes(this, a3);
      }
    }

    else if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"par"))
    {

      ITEpubMediaOverlayParser::handleParElementAttributes(this, a3);
    }

    else if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"seq"))
    {

      ITEpubMediaOverlayParser::handleSeqElementAttributes(this, a3);
    }
  }
}

double ITEpubMediaOverlayParser::convertTimeString(ITEpubMediaOverlayParser *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  if (CFStringHasSuffix(theString, @"ms"))
  {
    v39.length = Length - 2;
    v39.location = 0;
    v4 = CFStringCreateWithSubstring(kCFAllocatorDefault, theString, v39);
    DoubleValue = CFStringGetDoubleValue(v4) / 1000.0;
    if (!v4)
    {
      return DoubleValue;
    }

    goto LABEL_12;
  }

  if (CFStringHasSuffix(theString, @"s"))
  {
    v40.length = Length - 1;
    v40.location = 0;
    v4 = CFStringCreateWithSubstring(kCFAllocatorDefault, theString, v40);
    DoubleValue = CFStringGetDoubleValue(v4);
    if (!v4)
    {
      return DoubleValue;
    }

    goto LABEL_12;
  }

  if (CFStringHasSuffix(theString, @"min"))
  {
    v41.length = Length - 3;
    v41.location = 0;
    v4 = CFStringCreateWithSubstring(kCFAllocatorDefault, theString, v41);
    v6 = CFStringGetDoubleValue(v4);
    v7 = 60.0;
    goto LABEL_11;
  }

  if (CFStringHasSuffix(theString, @"h"))
  {
    v42.length = Length - 1;
    v42.location = 0;
    v4 = CFStringCreateWithSubstring(kCFAllocatorDefault, theString, v42);
    v6 = CFStringGetDoubleValue(v4);
    v7 = 3600.0;
LABEL_11:
    DoubleValue = v6 * v7;
    if (!v4)
    {
      return DoubleValue;
    }

LABEL_12:
    CFRelease(v4);
    return DoubleValue;
  }

  theStringa = theString;
  v34 = 0;
  v35 = Length;
  CharactersPtr = CFStringGetCharactersPtr(theString);
  CStringPtr = 0;
  v32 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v36 = 0;
  v37 = 0;
  v33 = CStringPtr;
  while (1)
  {
    v17 = v35;
    if (v35 <= v15)
    {
      break;
    }

    if (v32)
    {
      v18 = v32[v34 + v15];
    }

    else if (v33)
    {
      v18 = v33[v34 + v15];
    }

    else
    {
      if (v37 <= v15 || v11 > v15)
      {
        v20 = v15 - 4;
        if (v15 < 4)
        {
          v20 = 0;
        }

        if (v20 + 64 < v35)
        {
          v17 = v20 + 64;
        }

        v36 = v20;
        v37 = v17;
        v38.length = v17 - v20;
        v38.location = v34 + v20;
        CFStringGetCharacters(theStringa, v38, v30);
        v11 = v36;
      }

      v18 = v30[v15 - v11];
    }

    ++v15;
    if (v18 <= 0x3Au && ((1 << v18) & 0x400400000000001) != 0)
    {
      goto LABEL_37;
    }

    if ((v18 - 48) > 9u)
    {
LABEL_44:
      if (v12)
      {
        v22 = 1000 * v12;
      }

      else
      {
        v22 = 0;
      }

      return v22 / 1000.0;
    }

    v13 = v18 + 10 * v13 - 48;
    ++v14;
LABEL_40:
    if (!v18)
    {
      goto LABEL_44;
    }
  }

  v18 = 0;
  ++v15;
LABEL_37:
  if (!v16 || v16 == 58)
  {
    v14 = 0;
    v12 = 60 * v12 + v13;
    v16 = v18;
    v13 = 0;
    goto LABEL_40;
  }

  if (v14 < 4)
  {
    if (v14 != 3)
    {
      v24.i64[1] = 0x100000001;
      v24.i64[0] = v13 | 0x100000000;
      v25 = vdupq_n_s32(2 - v14);
      v26 = 4;
      v27.i64[0] = 0xA0000000ALL;
      v27.i64[1] = 0xA0000000ALL;
      do
      {
        v28 = v24;
        v24 = vmulq_s32(v24, v27);
        v26 -= 4;
      }

      while (((6 - v14) & 0xFFFFFFFC) + v26 != 4);
      v29 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v26), xmmword_295BB0), v25), v28, v24);
      *v29.i8 = vmul_s32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
      v13 = v29.i32[0] * v29.i32[1];
    }
  }

  else
  {
    v23 = v14 + 1;
    do
    {
      v13 /= 10;
      --v23;
    }

    while (v23 > 4);
  }

  v22 = 1000 * v12 + v13;
  return v22 / 1000.0;
}

void ITEpubMediaOverlayParser::splitString(uint64_t a1, const __CFString *a2, const __CFString *a3, void *a4)
{
  *a4 = 0;
  a4[1] = 0;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, a2, a3);
  if (ArrayBySeparatingStrings)
  {
    v6 = ArrayBySeparatingStrings;
    Count = CFArrayGetCount(ArrayBySeparatingStrings);
    if (Count >= 1)
    {
      v8 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
      CFRetain(ValueAtIndex);
      *a4 = ValueAtIndex;
      if (v8 != 1)
      {
        v10 = CFArrayGetValueAtIndex(v6, 1);
        CFRetain(v10);
        a4[1] = v10;
      }
    }

    CFRelease(v6);
  }
}

void ITEpubMediaOverlayParser::EndElement(ITEpubMediaOverlayParser *this, const __CFString *a2)
{
  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"body"))
  {
    *(this + 32) = 0;
    ITEpubMediaOverlayParser::clearBodyMemory(this);
    goto LABEL_3;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"par") && *(this + 33))
  {
    if (!*(this + 19))
    {
LABEL_44:
      ITEpubMediaOverlayParser::clearParMemory(this);
      goto LABEL_3;
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, ITEpubMediaOverlayParser_TextSource[0], *(this + 19));
    *&value = 0.0;
    v37 = 0;
    ITEpubMediaOverlayParser::splitString(v5, *(this + 19), @"#", &value);
    v6 = value;
    if (*&value != 0.0)
    {
      CFDictionaryAddValue(Mutable, ITEpubMediaOverlayParser_TextHref[0], value);
      CFRelease(v6);
    }

    v7 = v37;
    if (v37)
    {
      CFDictionaryAddValue(Mutable, ITEpubMediaOverlayParser_TextElement[0], v37);
      CFRelease(v7);
    }

    v8 = *(this + 20);
    if (v8)
    {
      CFDictionaryAddValue(Mutable, ITEpubMediaOverlayParser_AudioSource[0], v8);
      v10 = *(this + 21);
      if (v10)
      {
        *&value = ITEpubMediaOverlayParser::convertTimeString(v9, v10);
        if (*&value != 0.0)
        {
          v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &value);
          CFDictionaryAddValue(Mutable, ITEpubMediaOverlayParser_AudioStart[0], v11);
          CFRelease(v11);
        }
      }

      v12 = *(this + 22);
      if (v12)
      {
        *&value = ITEpubMediaOverlayParser::convertTimeString(v9, v12);
        if (*&value != 0.0)
        {
          v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &value);
          CFDictionaryAddValue(Mutable, ITEpubMediaOverlayParser_AudioEnd[0], v13);
          CFRelease(v13);
        }
      }
    }

    v14 = *(this + 24) - *(this + 23);
    value = (v14 >> 3);
    if (v14)
    {
      v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &value);
      CFDictionaryAddValue(Mutable, ITEpubMediaOverlayParser_IndentationLevel[0], v15);
      CFRelease(v15);
      v16 = *(*(this + 24) - 8);
      if (CFStringGetLength(v16))
      {
        CFDictionaryAddValue(Mutable, ITEpubMediaOverlayParser_SequenceSource[0], v16);
      }
    }

    v17 = *(this + 17);
    if (v17)
    {
      CFDictionaryAddValue(Mutable, @"par_id", v17);
    }

    v18 = *(this + 18);
    if (v18)
    {
      v19 = ITEpubMediaOverlayParser_Category[0];
      v20 = Mutable;
    }

    else
    {
      v29 = *(this + 27);
      if (v29 == *(this + 26))
      {
        goto LABEL_26;
      }

      v30 = *(v29 - 8);
      if (!CFStringGetLength(v30))
      {
        goto LABEL_26;
      }

      v19 = ITEpubMediaOverlayParser_Category[0];
      v20 = Mutable;
      v18 = v30;
    }

    CFDictionaryAddValue(v20, v19, v18);
LABEL_26:
    v22 = *(this + 30);
    v21 = *(this + 31);
    if (v22 >= v21)
    {
      v24 = *(this + 29);
      v25 = (v22 - v24) >> 3;
      if ((v25 + 1) >> 61)
      {
        sub_66D0();
      }

      v26 = v21 - v24;
      v27 = v26 >> 2;
      if (v26 >> 2 <= (v25 + 1))
      {
        v27 = v25 + 1;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        v28 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      if (v28)
      {
        sub_E674(this + 232, v28);
      }

      v31 = (8 * v25);
      *v31 = Mutable;
      v23 = 8 * v25 + 8;
      v32 = *(this + 29);
      v33 = *(this + 30) - v32;
      v34 = v31 - v33;
      memcpy(v31 - v33, v32, v33);
      v35 = *(this + 29);
      *(this + 29) = v34;
      *(this + 30) = v23;
      *(this + 31) = 0;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else
    {
      *v22 = Mutable;
      v23 = (v22 + 1);
    }

    *(this + 30) = v23;
    goto LABEL_44;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"seq"))
  {
    ITEpubMediaOverlayParser::clearSeqMemory(this);
  }

LABEL_3:
  ITEpubXmlParseHandler::EndElement(this, a2);
}

const __CFDictionary *ITEpubMediaOverlayParser::textSourceForElement(const __CFDictionary *this, const __CFDictionary *a2)
{
  if (this)
  {
    return CFDictionaryGetValue(this, ITEpubMediaOverlayParser_TextSource[0]);
  }

  return this;
}

const __CFDictionary *ITEpubMediaOverlayParser::textHrefForElement(const __CFDictionary *this, const __CFDictionary *a2)
{
  if (this)
  {
    return CFDictionaryGetValue(this, ITEpubMediaOverlayParser_TextHref[0]);
  }

  return this;
}

const __CFDictionary *ITEpubMediaOverlayParser::textElementIdForElement(const __CFDictionary *this, const __CFDictionary *a2)
{
  if (this)
  {
    return CFDictionaryGetValue(this, ITEpubMediaOverlayParser_TextElement[0]);
  }

  return this;
}

const __CFDictionary *ITEpubMediaOverlayParser::audioHrefForElement(const __CFDictionary *this, const __CFDictionary *a2)
{
  if (this)
  {
    return CFDictionaryGetValue(this, ITEpubMediaOverlayParser_AudioSource[0]);
  }

  return this;
}

const __CFDictionary *ITEpubMediaOverlayParser::audioEndForElement(const __CFDictionary *this, const __CFDictionary *a2)
{
  if (this)
  {
    return CFDictionaryGetValue(this, ITEpubMediaOverlayParser_AudioEnd[0]);
  }

  return this;
}

const __CFDictionary *ITEpubMediaOverlayParser::audioStartForElement(const __CFDictionary *this, const __CFDictionary *a2)
{
  if (this)
  {
    return CFDictionaryGetValue(this, ITEpubMediaOverlayParser_AudioStart[0]);
  }

  return this;
}

const __CFDictionary *ITEpubMediaOverlayParser::indentationLevelForElement(const __CFDictionary *this, const __CFDictionary *a2)
{
  if (this)
  {
    return CFDictionaryGetValue(this, ITEpubMediaOverlayParser_IndentationLevel[0]);
  }

  return this;
}

const __CFDictionary *ITEpubMediaOverlayParser::sequenceSourceForElement(const __CFDictionary *this, const __CFDictionary *a2)
{
  if (this)
  {
    return CFDictionaryGetValue(this, ITEpubMediaOverlayParser_SequenceSource[0]);
  }

  return this;
}

const __CFDictionary *ITEpubMediaOverlayParser::categoryForElement(const __CFDictionary *this, const __CFDictionary *a2)
{
  if (this)
  {
    return CFDictionaryGetValue(this, ITEpubMediaOverlayParser_Category[0]);
  }

  return this;
}

void sub_E674(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_67C0();
}

void ITEpubOpfParser::ITEpubOpfParser(ITEpubOpfParser *this)
{
  ITEpubXmlParseHandler::ITEpubXmlParseHandler(this);
  *v1 = off_3285E0;
  *(v1 + 412) = 0;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0u;
  *(v1 + 407) = 0;
  *(v1 + 120) = 0u;
  *(v1 + 248) = 0u;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  *(v1 + 344) = 0u;
  *(v1 + 360) = 0u;
  *(v1 + 376) = 0u;
  *(v1 + 392) = 0u;
  *(v1 + 464) = 0;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 416) = 0u;
  *(v1 + 472) = 0u;
  *(v1 + 488) = 0u;
  *(v1 + 504) = 0u;
  *(v1 + 520) = 0u;
  *(v1 + 536) = 0u;
  *(v1 + 552) = 0u;
  *(v1 + 568) = 0u;
  *(v1 + 584) = 0u;
  *(v1 + 596) = 0u;
  *(v1 + 616) = -1;
  *(v1 + 624) = 0;
  *(v1 + 632) = 0;
  *(v1 + 648) = 0;
  *(v1 + 640) = 0;
}

{
  ITEpubXmlParseHandler::ITEpubXmlParseHandler(this);
  *v1 = off_3285E0;
  *(v1 + 412) = 0;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0u;
  *(v1 + 407) = 0;
  *(v1 + 120) = 0u;
  *(v1 + 248) = 0u;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  *(v1 + 344) = 0u;
  *(v1 + 360) = 0u;
  *(v1 + 376) = 0u;
  *(v1 + 392) = 0u;
  *(v1 + 464) = 0;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 416) = 0u;
  *(v1 + 472) = 0u;
  *(v1 + 488) = 0u;
  *(v1 + 504) = 0u;
  *(v1 + 520) = 0u;
  *(v1 + 536) = 0u;
  *(v1 + 552) = 0u;
  *(v1 + 568) = 0u;
  *(v1 + 584) = 0u;
  *(v1 + 596) = 0u;
  *(v1 + 616) = -1;
  *(v1 + 624) = 0;
  *(v1 + 632) = 0;
  *(v1 + 648) = 0;
  *(v1 + 640) = 0;
}

void ITEpubOpfParser::~ITEpubOpfParser(ITEpubOpfParser *this, const void *a2)
{
  *this = off_3285E0;
  v3 = *(this + 39);
  if (v3)
  {
    CFRelease(v3);
    *(this + 39) = 0;
  }

  v4 = *(this + 40);
  if (v4)
  {
    CFRelease(v4);
    *(this + 40) = 0;
  }

  v5 = *(this + 41);
  if (v5)
  {
    CFRelease(v5);
    *(this + 41) = 0;
  }

  v6 = *(this + 42);
  if (v6)
  {
    CFRelease(v6);
    *(this + 42) = 0;
  }

  v7 = *(this + 43);
  if (v7)
  {
    CFRelease(v7);
    *(this + 43) = 0;
  }

  v8 = *(this + 47);
  if (v8)
  {
    CFRelease(v8);
    *(this + 47) = 0;
  }

  v9 = *(this + 48);
  if (v9)
  {
    CFRelease(v9);
    *(this + 48) = 0;
  }

  v10 = *(this + 49);
  if (v10)
  {
    CFRelease(v10);
    *(this + 49) = 0;
  }

  v11 = *(this + 50);
  if (v11)
  {
    CFRelease(v11);
    *(this + 50) = 0;
  }

  v12 = *(this + 52);
  if (v12)
  {
    CFRelease(v12);
    *(this + 52) = 0;
  }

  v13 = *(this + 56);
  if (v13)
  {
    CFRelease(v13);
    *(this + 56) = 0;
  }

  v14 = *(this + 57);
  if (v14)
  {
    CFRelease(v14);
    *(this + 57) = 0;
  }

  v15 = *(this + 62);
  if (v15)
  {
    CFRelease(v15);
    *(this + 62) = 0;
  }

  v16 = *(this + 63);
  if (v16)
  {
    CFRelease(v16);
    *(this + 63) = 0;
  }

  v17 = *(this + 64);
  if (v17)
  {
    CFRelease(v17);
    *(this + 64) = 0;
  }

  v18 = *(this + 65);
  if (v18)
  {
    CFRelease(v18);
    *(this + 65) = 0;
  }

  v19 = *(this + 66);
  if (v19)
  {
    CFRelease(v19);
    *(this + 66) = 0;
  }

  v20 = *(this + 75);
  if (v20)
  {
    CFRelease(v20);
    *(this + 75) = 0;
  }

  v21 = *(this + 79);
  if (v21)
  {
    CFRelease(v21);
    *(this + 79) = 0;
  }

  v22 = *(this + 81);
  if (v22)
  {
    CFRelease(v22);
    *(this + 81) = 0;
  }

  v23 = *(this + 80);
  if (v23)
  {
    CFRelease(v23);
    *(this + 80) = 0;
  }

  v24 = *(this + 53);
  if (v24)
  {
    CFRelease(v24);
    *(this + 53) = 0;
  }

  v25 = *(this + 54);
  if (v25)
  {
    CFRelease(v25);
    *(this + 54) = 0;
  }

  v26 = *(this + 55);
  if (v26)
  {
    CFRelease(v26);
    *(this + 55) = 0;
  }

  v27 = *(this + 44);
  if (v27)
  {
    CFRelease(v27);
    *(this + 44) = 0;
  }

  v28 = *(this + 45);
  if (v28)
  {
    CFRelease(v28);
    *(this + 45) = 0;
  }

  v29 = *(this + 46);
  if (v29)
  {
    CFRelease(v29);
    *(this + 46) = 0;
  }

  v30 = *(this + 68);
  if (v30)
  {
    CFRelease(v30);
    *(this + 68) = 0;
  }

  v31 = *(this + 67);
  if (v31)
  {
    CFRelease(v31);
    *(this + 67) = 0;
  }

  v32 = *(this + 59);
  v33 = *(this + 60);
  while (v32 != v33)
  {
    ITRetain::for_each_cfrelease(*v32++, a2);
  }

  if (*(this + 599) < 0)
  {
    operator delete(*(this + 72));
  }

  if (*(this + 575) < 0)
  {
    operator delete(*(this + 69));
  }

  v34 = *(this + 59);
  if (v34)
  {
    *(this + 60) = v34;
    operator delete(v34);
  }

  if (*(this + 311) < 0)
  {
    operator delete(*(this + 36));
  }

  if (*(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  if (*(this + 263) < 0)
  {
    operator delete(*(this + 30));
  }

  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  ITEpubXmlParseHandler::~ITEpubXmlParseHandler(this);
}

{
  ITEpubOpfParser::~ITEpubOpfParser(this, a2);

  operator delete();
}

void ITEpubOpfParser::setFirstPageHref(ITEpubOpfParser *this, CFStringRef originalString)
{
  if (originalString)
  {
    HrefString = ITEpubXmlParseHandler::createHrefString(originalString, originalString);
    v5 = *(this + 60);
    v4 = *(this + 61);
    if (v5 >= v4)
    {
      v7 = *(this + 59);
      v8 = (v5 - v7) >> 3;
      if ((v8 + 1) >> 61)
      {
        sub_66D0();
      }

      v9 = v4 - v7;
      v10 = v9 >> 2;
      if (v9 >> 2 <= (v8 + 1))
      {
        v10 = v8 + 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        sub_E674(this + 472, v11);
      }

      v12 = (8 * v8);
      *v12 = HrefString;
      v6 = 8 * v8 + 8;
      v13 = *(this + 59);
      v14 = *(this + 60) - v13;
      v15 = v12 - v14;
      memcpy(v12 - v14, v13, v14);
      v16 = *(this + 59);
      *(this + 59) = v15;
      *(this + 60) = v6;
      *(this + 61) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v5 = HrefString;
      v6 = (v5 + 1);
    }

    *(this + 60) = v6;
  }
}

void ITEpubOpfParser::StartElement(CFMutableArrayRef *this, const __CFString *a2, const __CFDictionary *a3)
{
  ITEpubXmlParseHandler::StartElement(this, a2, a3);
  if (*(this + 408))
  {
LABEL_2:
    if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"item"))
    {

      ITEpubOpfParser::StartItemElement(this, a3);
    }

    return;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"manifest"))
  {

    ITEpubOpfParser::StartManifestElement(this, v6);
    return;
  }

  if (*(this + 408))
  {
    goto LABEL_2;
  }

  if (*(this + 409))
  {
    goto LABEL_12;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"spine"))
  {
    ITEpubOpfParser::StartSpineElement(this, a3);
  }

  else if (*(this + 409))
  {
LABEL_12:
    if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"itemref"))
    {
      ITEpubOpfParser::StartItemRefElement(this, a3);
    }
  }

  if (*(this + 412))
  {
    goto LABEL_66;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"guide"))
  {
    *(this + 412) = 1;
    return;
  }

  if (*(this + 412))
  {
LABEL_66:
    if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"reference"))
    {

      ITEpubOpfParser::StartReferenceElement(this, a3);
    }

    return;
  }

  if (*(this + 410))
  {
    goto LABEL_28;
  }

  if (!ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"metadata"))
  {
    if (!*(this + 410))
    {
LABEL_43:
      if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"package"))
      {

        ITEpubOpfParser::StartPackageElement(this, a3);
      }

      else if (*(this + 410))
      {
        if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"identifier"))
        {

          ITEpubOpfParser::StartIdentifierElement(this, a3);
        }

        else if (*(this + 410))
        {
          if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"description") || ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"dc:description"))
          {

            ITEpubOpfParser::StartDescriptionElement(this, a3);
          }

          else if (*(this + 410) && (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"contributor") || ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"dc:contributor")))
          {

            ITEpubOpfParser::StartContributorElement(this, a3);
          }
        }
      }

      return;
    }

LABEL_28:
    if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"meta"))
    {

      ITEpubOpfParser::StartMetaElement(this, a3);
      return;
    }

    if (*(this + 410) && (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"date") || ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"dc:date")))
    {

      ITEpubOpfParser::StartDateElement(this, a3);
      return;
    }

    goto LABEL_43;
  }

  ITEpubOpfParser::StartMetadataElement(this, v7);
}

CFMutableDictionaryRef ITEpubOpfParser::StartManifestElement(ITEpubOpfParser *this, const __CFDictionary *a2)
{
  v3 = *(this + 39);
  if (v3)
  {
    CFRelease(v3);
    *(this + 39) = 0;
  }

  v4 = *(this + 40);
  if (v4)
  {
    CFRelease(v4);
    *(this + 40) = 0;
  }

  v5 = *(this + 41);
  if (v5)
  {
    CFRelease(v5);
    *(this + 41) = 0;
  }

  *(this + 41) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(this + 40) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(this + 39) = result;
  *(this + 408) = 1;
  return result;
}

void ITEpubOpfParser::StartItemElement(CFMutableArrayRef *this, CFDictionaryRef theDict)
{
  if (*(this + 408))
  {
    Value = CFDictionaryGetValue(theDict, @"href");
    v5 = CFDictionaryGetValue(theDict, @"id");
    v6 = CFDictionaryGetValue(theDict, @"media-type");
    if (Value)
    {
      if (v5)
      {
        v8 = v6;
        if (v6)
        {
          v9 = &v27;
          v27 = 0;
          v28[0] = 0;
          v10 = &v24;
          v28[1] = 0;
          v24 = 0;
          v25[0] = 0;
          v25[1] = 0;
          v11 = ITEpubXmlParseHandler::copyHrefStrippingHash(Value, v7);
          keys[0] = @"id";
          keys[1] = @"unescaped_href";
          values[0] = v5;
          values[1] = v11;
          v12 = v11;
          keys[2] = @"href";
          keys[3] = @"media-type";
          values[2] = Value;
          values[3] = v8;
          v13 = CFDictionaryGetValue(theDict, @"fallback");
          if (v13)
          {
            v10 = v25;
            v9 = v28;
            v27 = @"fallback";
            v24 = v13;
            v14 = 5;
          }

          else
          {
            v14 = 4;
          }

          v15 = CFDictionaryGetValue(theDict, @"media-overlay");
          if (v15)
          {
            ++v14;
            *v9 = @"media-overlay";
            *v10 = v15;
          }

          v16 = CFDictionaryGetValue(theDict, @"properties");
          v17 = v16;
          if (v16)
          {
            keys[v14] = @"properties";
            values[v14++] = v16;
          }

          v18 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, v14, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFArrayAppendValue(this[41], v18);
          CFDictionarySetValue(this[40], v5, v18);
          CFDictionarySetValue(this[39], v12, v18);
          if (v17)
          {
            if (!*(this + 464) && CFStringFind(v17, @"nav", 0).length >= 1)
            {
              v19 = this[57];
              if (v19)
              {
                CFRelease(v19);
              }

              this[57] = v12;
              if (v12)
              {
                CFRetain(v12);
              }

              *(this + 464) = 1;
            }

            if (!this[65] && CFStringFind(v17, @"cover-image", 0).length >= 1)
            {
              v20 = this[66];
              if (v20)
              {
                CFRelease(v20);
              }

              this[66] = v5;
              CFRetain(v5);
              v22 = this[65];
              if (v22)
              {
                CFRelease(v22);
                this[65] = 0;
              }

              this[65] = ITEpubXmlParseHandler::createHrefString(Value, v21);
            }
          }

          if (this[57] || CFStringCompare(v8, @"application/x-dtbncx+xml", 0))
          {
            if (!v12)
            {
              goto LABEL_31;
            }
          }

          else
          {
            this[57] = v12;
            if (!v12)
            {
LABEL_31:
              if (v18)
              {
                CFRelease(v18);
              }

              return;
            }

            CFRetain(v12);
          }

          CFRelease(v12);
          goto LABEL_31;
        }
      }
    }
  }
}

uint64_t ITEpubOpfParser::StartSpineElement(uint64_t this, const __CFDictionary *a2)
{
  if (!*(this + 409))
  {
    v3 = this;
    v4 = *(this + 336);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 336) = 0;
    }

    v5 = *(v3 + 344);
    if (v5)
    {
      CFRelease(v5);
      *(v3 + 344) = 0;
    }

    *(v3 + 336) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    *(v3 + 344) = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    if (!*(v3 + 448) && !*(v3 + 464))
    {
      Value = CFDictionaryGetValue(a2, @"toc");
      *(v3 + 448) = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      else
      {
        *(v3 + 448) = CFStringCreateWithCString(kCFAllocatorDefault, "ncx", 0x8000100u);
      }
    }

    v7 = CFDictionaryGetValue(a2, @"page-progression-direction");
    *(v3 + 424) = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    this = ITEpubXmlParseHandler::childIndexInParent(v3);
    *(v3 + 616) = this;
    *(v3 + 409) = 1;
  }

  return this;
}

void ITEpubOpfParser::StartItemRefElement(CFSetRef *this, CFDictionaryRef theDict)
{
  if (*(this + 409))
  {
    Value = CFDictionaryGetValue(theDict, @"idref");
    v5 = CFDictionaryGetValue(theDict, @"linear");
    v6 = v5;
    if (v5)
    {
      v7 = CFStringCompare(v5, @"no", 1uLL) != kCFCompareEqualTo;
      if (!Value)
      {
        return;
      }
    }

    else
    {
      v7 = 1;
      if (!Value)
      {
        return;
      }
    }

    if (this[42] && this[43])
    {
      if (qword_36AAD0 != -1)
      {
        sub_263A48();
      }

      Count = CFSetGetCount(this[43]);
      CFSetAddValue(this[43], Value);
      v9 = CFSetGetCount(this[43]);
      v10 = Count != v9 && v7;
      if (v6 && Count == v9)
      {
        v10 = CFStringCompare(v6, @"yes", 1uLL) == kCFCompareEqualTo;
      }

      if (v10)
      {
        v11 = &kCFBooleanTrue;
      }

      else
      {
        v11 = &kCFBooleanFalse;
      }

      v12 = *v11;
      keys[0] = @"linear";
      keys[1] = @"itemref";
      values[0] = v12;
      values[1] = Value;
      v13 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFArrayAppendValue(this[42], v13);
      if (v13)
      {
        CFRelease(v13);
      }
    }
  }
}

void ITEpubOpfParser::StartReferenceElement(ITEpubOpfParser *this, CFDictionaryRef theDict)
{
  if (!*(this + 412))
  {
    return;
  }

  Value = CFDictionaryGetValue(theDict, @"type");
  if (!Value)
  {
    return;
  }

  v5 = Value;
  if (CFStringCompare(Value, @"text", 0) && CFStringCompare(v5, @"start", 0) && CFStringCompare(v5, @"acknowledgements", 0) && CFStringCompare(v5, @"dedication", 0) && CFStringCompare(v5, @"epigraph", 0) && CFStringCompare(v5, @"foreword", 0) && CFStringCompare(v5, @"preface", 0))
  {
    if (CFStringCompare(v5, @"toc", 0))
    {
      if (*(this + 65))
      {
        goto LABEL_12;
      }

      v12 = CFStringCompare(v5, @"cover", 0);
      v13 = *(this + 65);
      if (v12)
      {
        if (v13 || CFStringCompare(v5, @"cover-page", 0))
        {
LABEL_12:
          if (!*(this + 62) && CFStringCompare(v5, @"other.reader-start-page", 0) == kCFCompareEqualTo)
          {
            v6 = CFDictionaryGetValue(theDict, @"href");
            *(this + 62) = ITEpubXmlParseHandler::createHrefString(v6, v7);
          }

          return;
        }

        v13 = *(this + 65);
      }

      if (v13)
      {
        CFRelease(v13);
        *(this + 65) = 0;
      }

      v14 = CFDictionaryGetValue(theDict, @"href");
      *(this + 65) = ITEpubXmlParseHandler::createHrefString(v14, v15);
    }

    else
    {
      v9 = *(this + 64);
      if (v9)
      {
        CFRelease(v9);
        *(this + 64) = 0;
      }

      v10 = CFDictionaryGetValue(theDict, @"href");
      *(this + 64) = ITEpubXmlParseHandler::createHrefString(v10, v11);
    }
  }

  else
  {
    v8 = CFDictionaryGetValue(theDict, @"href");

    ITEpubOpfParser::setFirstPageHref(this, v8);
  }
}

CFMutableDictionaryRef ITEpubOpfParser::StartMetadataElement(ITEpubOpfParser *this, const __CFDictionary *a2)
{
  *(this + 410) = 1;
  v3 = *(this + 47);
  if (v3)
  {
    CFRelease(v3);
    *(this + 47) = 0;
  }

  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(this + 47) = result;
  return result;
}

const __CFString *ITEpubOpfParser::StartMetaElement(ITEpubOpfParser *this, CFTypeRef cf)
{
  v4 = *(this + 48);
  if (v4)
  {
    CFRelease(v4);
    *(this + 48) = 0;
  }

  if (cf)
  {
    *(this + 48) = cf;
    CFRetain(cf);
  }

  Value = CFDictionaryGetValue(cf, @"property");
  if (Value)
  {
    v6 = Value;
    result = CFStringCompare(Value, @"dcterms:modified", 0);
    if (result)
    {
      result = CFStringCompare(v6, @"media:active-class", 0);
      if (result)
      {
        result = CFStringCompare(v6, @"ebpaj:guide-version", 0);
        if (result)
        {
          result = CFStringCompare(v6, @"ibooks:cover-writing-mode", 0);
          if (result)
          {
            result = CFStringCompare(v6, @"ibooks:scroll-axis", 0);
            if (result)
            {
              if (*(this + 44) || *(this + 45))
              {

                return ITEpubOpfParser::CaptureAppleDisplayOptionsState(this, v6);
              }

              return result;
            }

            v11 = 5;
          }

          else
          {
            v11 = 4;
          }
        }

        else
        {
          v11 = 3;
        }
      }

      else
      {
        v11 = 2;
      }
    }

    else
    {
      v11 = 1;
    }

    *(this + 156) = v11;
    return result;
  }

  result = CFDictionaryGetValue(cf, @"name");
  v8 = result;
  if (*(this + 66) || !result)
  {
    if (!result)
    {
      return result;
    }
  }

  else if (CFStringCompare(result, @"cover", 0) == kCFCompareEqualTo)
  {
    v9 = *(this + 66);
    if (v9)
    {
      CFRelease(v9);
      *(this + 66) = 0;
    }

    v10 = CFDictionaryGetValue(cf, @"content");
    *(this + 66) = v10;
    if (v10)
    {
      CFRetain(v10);
    }
  }

  result = CFStringCompare(v8, @"original-resolution", 0);
  if (!result)
  {
    v12 = *(this + 67);
    if (v12)
    {
      CFRelease(v12);
      *(this + 67) = 0;
    }

    result = CFDictionaryGetValue(cf, @"content");
    *(this + 67) = result;
    if (result)
    {

      return CFRetain(result);
    }
  }

  return result;
}

const __CFString *ITEpubOpfParser::StartDateElement(ITEpubOpfParser *this, CFDictionaryRef theDict)
{
  *(this + 411) = 0;
  result = CFDictionaryGetValue(theDict, @"event");
  if (!result && (result = CFDictionaryGetValue(theDict, @"opf:event")) == 0 || (v5 = result, (result = CFStringCompare(result, @"original-publication", 0)) == 0) || (result = CFStringCompare(v5, @"publication", 0)) == 0 || (result = CFStringCompare(v5, @"creation", 0)) == 0)
  {
    *(this + 411) = 1;
  }

  return result;
}

void ITEpubOpfParser::StartPackageElement(ITEpubOpfParser *this, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"xmlns");
  if ((Value || (Value = *(this + 3)) != 0) && CFStringCompare(Value, @"http://www.idpf.org/2007/opf", 0) == kCFCompareEqualTo)
  {
    v5 = *(this + 75);
    if (v5)
    {
      CFRelease(v5);
      *(this + 75) = 0;
    }

    v6 = CFDictionaryGetValue(theDict, @"unique-identifier");
    *(this + 75) = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    v7 = CFDictionaryGetValue(theDict, @"dir");
    if (v7)
    {
      v8 = v7;
      v9 = *(this + 52);
      if (v9)
      {
        CFRelease(v9);
      }

      *(this + 52) = v8;
      CFRetain(v8);
    }

    ITEpubOpfParser::CaptureAppleDisplayOptionsPrefix(this, theDict);
  }
}

const __CFString *ITEpubOpfParser::StartIdentifierElement(const __CFString *this, CFDictionaryRef theDict)
{
  v2 = this;
  length = this[18].length;
  if (length)
  {
    Value = CFDictionaryGetValue(theDict, @"id");
    if (Value)
    {
      v6 = Value;
      this = CFStringCompare(Value, v2[18].length, 0);
      if (!this)
      {
        LODWORD(length) = 1004;
        goto LABEL_12;
      }

      this = CFStringCompare(v6, @"bookid", 1uLL);
      if (!this)
      {
        LODWORD(length) = 1003;
        goto LABEL_12;
      }
    }

    this = CFDictionaryGetValue(theDict, @"opf:scheme");
    if ((this || (this = CFDictionaryGetValue(theDict, @"scheme")) != 0) && (this = CFStringCompare(this, @"UUID", 1uLL)) == 0)
    {
      LODWORD(length) = 1002;
    }

    else
    {
      LODWORD(length) = 0;
    }
  }

LABEL_12:
  HIDWORD(v2[19].isa) = length;
  return this;
}

void ITEpubOpfParser::StartDescriptionElement(ITEpubOpfParser *this, CFTypeRef cf)
{
  v4 = *(this + 49);
  if (v4)
  {
    CFRelease(v4);
    *(this + 49) = 0;
  }

  if (cf)
  {
    *(this + 49) = cf;

    CFRetain(cf);
  }
}

void ITEpubOpfParser::StartContributorElement(ITEpubOpfParser *this, CFTypeRef cf)
{
  v4 = *(this + 50);
  if (v4)
  {
    CFRelease(v4);
    *(this + 50) = 0;
  }

  if (cf)
  {
    *(this + 50) = cf;

    CFRetain(cf);
  }
}

void ITEpubOpfParser::EndElement(std::string *this, const __CFString *a2)
{
  v4 = &this[3];
  ITStrUtil::trim(this + 3, 0);
  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"manifest"))
  {
    this[17].__r_.__value_.__s.__data_[0] = 0;
    goto LABEL_7;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"spine"))
  {
    this[17].__r_.__value_.__s.__data_[1] = 0;
    goto LABEL_7;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"metadata"))
  {
    this[17].__r_.__value_.__s.__data_[2] = 0;
    goto LABEL_7;
  }

  if (!this[17].__r_.__value_.__s.__data_[2])
  {
    goto LABEL_7;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"meta"))
  {
    ITEpubOpfParser::EndMetaElement(this);
    goto LABEL_7;
  }

  if (!this[17].__r_.__value_.__s.__data_[2])
  {
    goto LABEL_7;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"title") || ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"dc:title"))
  {
    size = SHIBYTE(this[6].__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this[6].__r_.__value_.__l.__size_;
    }

    if (size)
    {
      goto LABEL_7;
    }

    if (SHIBYTE(this[3].__r_.__value_.__r.__words[2]) < 0)
    {
      v4 = *v4;
    }

    v6 = this + 6;
    goto LABEL_22;
  }

  if (!this[17].__r_.__value_.__s.__data_[2])
  {
    goto LABEL_7;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"creator") || ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"dc:creator"))
  {
    v7 = SHIBYTE(this[5].__r_.__value_.__r.__words[2]);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v7 = this[5].__r_.__value_.__l.__size_;
    }

    if (v7)
    {
      goto LABEL_7;
    }

    if (SHIBYTE(this[3].__r_.__value_.__r.__words[2]) < 0)
    {
      v4 = *v4;
    }

    v6 = this + 5;
    goto LABEL_22;
  }

  if (!this[17].__r_.__value_.__s.__data_[2])
  {
    goto LABEL_7;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"language") || ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"dc:language"))
  {
    if (SHIBYTE(this[3].__r_.__value_.__r.__words[2]) < 0)
    {
      v4 = *v4;
    }

    v6 = this + 7;
LABEL_22:
    std::string::assign(v6, v4);
    goto LABEL_7;
  }

  if (this[17].__r_.__value_.__s.__data_[2])
  {
    sub_10100(this);
    return;
  }

LABEL_7:

  ITEpubXmlParseHandler::EndElement(this, a2);
}

void sub_10100(ITEpubXmlParseHandler *a1, uint64_t a2, const __CFString *a3)
{
  if (ITEpubXmlParseHandler::doesNodeMatch(a1, v3, a3) || ITEpubXmlParseHandler::doesNodeMatch(v4, v3, @"dc:publisher"))
  {
    v6 = *(v4 + 263);
    if (v6 < 0)
    {
      v6 = *(v4 + 248);
    }

    if (!v6)
    {
      goto LABEL_97;
    }

LABEL_98:
    JUMPOUT(0xFF88);
  }

  if (!*(v4 + 410))
  {
    goto LABEL_98;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(v4, v3, @"dateCopyrighted") || ITEpubXmlParseHandler::doesNodeMatch(v4, v3, @"dc:dateCopyrighted"))
  {
    goto LABEL_97;
  }

  if (!*(v4 + 410))
  {
    goto LABEL_98;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(v4, v3, @"date") || ITEpubXmlParseHandler::doesNodeMatch(v4, v3, @"dc:date"))
  {
    if (*(v4 + 411))
    {
      v7 = *(v4 + 311);
      if (v7 < 0)
      {
        v7 = *(v4 + 296);
      }

      if (!v7)
      {
        if (*(v4 + 95) < 0)
        {
          v5 = *v5;
        }

        std::string::assign((v4 + 288), v5);
      }
    }

    *(v4 + 411) = 0;
    goto LABEL_98;
  }

  if (!*(v4 + 410))
  {
    goto LABEL_98;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(v4, v3, @"type") || ITEpubXmlParseHandler::doesNodeMatch(v4, v3, @"dc:type"))
  {
    v8 = *(v4 + 239);
    if (v8 < 0)
    {
      v8 = *(v4 + 224);
    }

    if (v8)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  if (!*(v4 + 410))
  {
    goto LABEL_98;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(v4, v3, @"subject") || ITEpubXmlParseHandler::doesNodeMatch(v4, v3, @"dc:subject"))
  {
    v9 = *(v4 + 215);
    if (v9 < 0)
    {
      v9 = *(v4 + 200);
    }

    if (v9)
    {
      goto LABEL_98;
    }

LABEL_97:
    JUMPOUT(0x10038);
  }

  if (!*(v4 + 410))
  {
    goto LABEL_98;
  }

  if (!ITEpubXmlParseHandler::doesNodeMatch(v4, v3, @"identifier") && !ITEpubXmlParseHandler::doesNodeMatch(v4, v3, @"dc:identifier"))
  {
    if (*(v4 + 410))
    {
      if (ITEpubXmlParseHandler::doesNodeMatch(v4, v3, @"description") || ITEpubXmlParseHandler::doesNodeMatch(v4, v3, @"dc:description"))
      {
        v12 = *(v4 + 392);
        if (v12)
        {
          Value = CFDictionaryGetValue(v12, @"id");
          if (Value && CFEqual(Value, @"ebpaj-guide"))
          {
            v14 = *(v4 + 95);
            if (v14 < 0 ? *(v4 + 80) : *(v4 + 95))
            {
              v24 = *(v4 + 544);
              if (v24)
              {
                CFRelease(v24);
                *(v4 + 544) = 0;
                LOBYTE(v14) = *(v4 + 95);
              }

              if ((v14 & 0x80) != 0)
              {
                v5 = *v5;
              }

              *(v4 + 544) = CFStringCreateWithCString(kCFAllocatorDefault, v5, 0x8000100u);
            }
          }

          v25 = *(v4 + 392);
          if (v25)
          {
            CFRelease(v25);
            *(v4 + 392) = 0;
          }
        }
      }

      else if (*(v4 + 410) && (ITEpubXmlParseHandler::doesNodeMatch(v4, v3, @"contributor") || ITEpubXmlParseHandler::doesNodeMatch(v4, v3, @"dc:contributor")))
      {
        v19 = *(v4 + 400);
        if (v19)
        {
          v20 = *(v4 + 95);
          if (v20 < 0)
          {
            v20 = *(v4 + 80);
          }

          if (v20)
          {
            v21 = CFDictionaryGetValue(v19, @"id");
            if (v21)
            {
              if (CFEqual(v21, @"bkp"))
              {
                v22 = *(v4 + 648);
                if (v22)
                {
                  CFRelease(v22);
                  *(v4 + 648) = 0;
                }

                if (*(v4 + 95) < 0)
                {
                  v5 = *v5;
                }

                *(v4 + 648) = CFStringCreateWithCString(kCFAllocatorDefault, v5, 0x8000100u);
              }
            }
          }

          v23 = *(v4 + 400);
          if (v23)
          {
            CFRelease(v23);
            *(v4 + 400) = 0;
          }
        }
      }
    }

    goto LABEL_98;
  }

  v10 = *(v4 + 612);
  if (v10)
  {
    goto LABEL_54;
  }

  if (*(v4 + 95) < 0)
  {
    v11 = *v5;
    if (!strstr(*v5, "urn:uuid:"))
    {
LABEL_52:
      if (strstr(v11, "URN:UUID:"))
      {
        goto LABEL_53;
      }

      v10 = 1000;
LABEL_54:
      if (*(v4 + 608) < v10)
      {
        *(v4 + 608) = v10;
        v16 = v5;
        if (*(v4 + 95) < 0)
        {
          v16 = *v5;
        }

        std::string::assign((v4 + 552), v16);
      }

      *(v4 + 612) = 0;
      v17 = *(v4 + 95);
      if (v17 < 0)
      {
        v18 = *v5;
        if (!strstr(*v5, "urn:uuid:") && !strstr(v18, "URN:UUID:") && *(v4 + 80) != 35)
        {
          goto LABEL_98;
        }
      }

      else if (!strstr(v5, "urn:uuid:") && !strstr(v5, "URN:UUID:") && v17 != 35)
      {
        goto LABEL_98;
      }

      JUMPOUT(0x1003CLL);
    }
  }

  else
  {
    v11 = v5;
    if (!strstr(v5, "urn:uuid:"))
    {
      goto LABEL_52;
    }
  }

LABEL_53:
  v10 = 1001;
  goto LABEL_54;
}

void ITEpubOpfParser::EndMetaElement(ITEpubOpfParser *this)
{
  if (!*(this + 48))
  {
    goto LABEL_13;
  }

  v2 = this + 72;
  if (*(this + 95) < 0)
  {
    if (!*(this + 10))
    {
      goto LABEL_11;
    }

    v2 = *v2;
LABEL_7:
    v3 = CFStringCreateWithCString(kCFAllocatorDefault, v2, 0x8000100u);
    if (!v3)
    {
      goto LABEL_11;
    }

    v4 = v3;
    v5 = *(this + 156);
    if ((v5 - 6) < 0xC)
    {
      ITEpubOpfParser::CaptureAppleDisplayOptionsValue(this, v3);
      *(this + 155) = 0;
LABEL_10:
      CFRelease(v4);
      goto LABEL_11;
    }

    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v9 = *(this + 79);
        if (v9)
        {
          CFRelease(v9);
          *(this + 79) = 0;
        }

        *(this + 79) = CFRetain(v4);
        goto LABEL_10;
      }

      if (v5 == 2)
      {
        v7 = *(this + 80);
        if (v7)
        {
          CFRelease(v7);
          *(this + 80) = 0;
        }

        *(this + 80) = CFRetain(v4);
        goto LABEL_10;
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v8 = *(this + 68);
          if (v8)
          {
            CFRelease(v8);
            *(this + 68) = 0;
          }

          *(this + 68) = CFRetain(v4);
          goto LABEL_10;
        case 4:
          *(this + 54) = CFRetain(v3);
          goto LABEL_10;
        case 5:
          *(this + 55) = CFRetain(v3);
          goto LABEL_10;
      }
    }

    ITEpubOpfParser::CaptureFileAsValues(this, v3);
    goto LABEL_10;
  }

  if (*(this + 95))
  {
    goto LABEL_7;
  }

LABEL_11:
  v6 = *(this + 48);
  if (v6)
  {
    CFRelease(v6);
    *(this + 48) = 0;
  }

LABEL_13:
  *(this + 156) = 0;
}

void ITEpubOpfParser::CaptureAppleDisplayOptionsPrefix(ITEpubOpfParser *this, CFDictionaryRef theDict)
{
  v4 = *(this + 44);
  if (v4)
  {
    CFRelease(v4);
    *(this + 44) = 0;
  }

  v5 = *(this + 45);
  if (v5)
  {
    CFRelease(v5);
    *(this + 45) = 0;
  }

  v6 = *(this + 46);
  if (v6)
  {
    CFRelease(v6);
    *(this + 46) = 0;
  }

  Value = CFDictionaryGetValue(theDict, @"prefix");
  if (Value)
  {
    ArrayWithWhitespaceSplitting = ITEpubXmlParseHandler::createArrayWithWhitespaceSplitting(this, Value);
    if (ArrayWithWhitespaceSplitting)
    {
      v9 = ArrayWithWhitespaceSplitting;
      Count = CFArrayGetCount(ArrayWithWhitespaceSplitting);
      if (Count >= 1)
      {
        v11 = Count;
        do
        {
          v12 = v11 - 1;
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v11 - 1);
          if (ValueAtIndex)
          {
            v14 = ValueAtIndex;
            if (*(this + 45) || CFStringCompare(ValueAtIndex, @"http://vocabulary.itunes.apple.com/rdf/ibooks/vocabulary-extensions-1.0/", 0))
            {
              if (*(this + 44))
              {
                goto LABEL_15;
              }

              v15 = CFStringCompare(v14, @"http://www.idpf.org/vocab/rendition/#", 0);
              if (v11 == 1)
              {
                goto LABEL_15;
              }

              if (v15)
              {
                goto LABEL_15;
              }

              v12 = v11 - 2;
              v16 = CFArrayGetValueAtIndex(v9, v11 - 2);
              if (!v16)
              {
                goto LABEL_15;
              }

              v17 = v16;
              if (!CFStringGetLength(v16))
              {
                goto LABEL_15;
              }

              *(this + 44) = v17;
              goto LABEL_26;
            }

            if (v11 == 1)
            {
              break;
            }

            v12 = v11 - 2;
            v18 = CFArrayGetValueAtIndex(v9, v11 - 2);
            if (v18)
            {
              v17 = v18;
              if (CFStringGetLength(v18))
              {
                *(this + 45) = v17;
LABEL_26:
                CFRetain(v17);
              }
            }
          }

LABEL_15:
          v11 = v12;
        }

        while (v12 > 0);
      }

      CFRelease(v9);
    }
  }

  if (*(this + 44) || (*(this + 44) = @"rendition", CFRetain(@"rendition"), *(this + 44)) || *(this + 45))
  {
    if (!*(this + 46))
    {
      *(this + 46) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }
  }
}

uint64_t ITEpubOpfParser::CaptureAppleDisplayOptionsState(uint64_t this, CFStringRef theString)
{
  if (!theString)
  {
    return this;
  }

  v3 = this;
  v4 = *(this + 360);
  if (!v4 || (this = CFStringHasPrefix(theString, v4), !this))
  {
    v6 = *(v3 + 352);
    if (v6)
    {
      this = CFStringHasPrefix(theString, v6);
      if (this)
      {
        *(v3 + 620) = 1;
        this = CFStringHasSuffix(theString, @"layout");
        if (this)
        {
          v7 = 7;
        }

        else
        {
          this = CFStringHasSuffix(theString, @"spread");
          if (this)
          {
            v7 = 8;
          }

          else
          {
            this = CFStringHasSuffix(theString, @"flow");
            if (this)
            {
              v7 = 9;
            }

            else
            {
              this = CFStringHasSuffix(theString, @"specified-fonts");
              if (this)
              {
                v7 = 11;
              }

              else
              {
                this = CFStringHasSuffix(theString, @"open-to-spread");
                if (this)
                {
                  v7 = 12;
                }

                else
                {
                  this = CFStringHasSuffix(theString, @"orientation");
                  if (this)
                  {
                    v7 = 15;
                  }

                  else
                  {
                    this = CFStringHasSuffix(theString, @"version");
                    if (!this)
                    {
                      return this;
                    }

                    v7 = 16;
                  }
                }
              }
            }
          }
        }

        *(v3 + 624) = v7;
        return this;
      }
    }

    return this;
  }

  if (CFStringHasSuffix(theString, @"fixed-layout"))
  {
    v5 = 6;
  }

  else if (CFStringHasSuffix(theString, @"interactive"))
  {
    v5 = 10;
  }

  else if (CFStringHasSuffix(theString, @"specified-fonts"))
  {
    v5 = 11;
  }

  else if (CFStringHasSuffix(theString, @"open-to-spread"))
  {
    v5 = 12;
  }

  else if (CFStringHasSuffix(theString, @"binding"))
  {
    v5 = 13;
  }

  else if (CFStringHasSuffix(theString, @"orientation-lock"))
  {
    v5 = 14;
  }

  else if (CFStringHasSuffix(theString, @"version"))
  {
    v5 = 16;
  }

  else
  {
    this = CFStringHasSuffix(theString, @"respect-image-size-class");
    if (!this)
    {
      if (!*(v3 + 624))
      {
        return this;
      }

      goto LABEL_38;
    }

    v5 = 17;
  }

  *(v3 + 624) = v5;
LABEL_38:
  *(v3 + 620) = 1;
  this = CFStringFind(theString, @":ipad-", 0).location;
  if (this == -1)
  {
    this = CFStringFind(theString, @":iphone-", 0).location;
    if (this == -1)
    {
      return this;
    }

    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  *(v3 + 620) = v8;
  return this;
}

void ITEpubOpfParser::CaptureAppleDisplayOptionsValue(ITEpubOpfParser *this, const __CFString *a2)
{
  v4 = *(this + 155);
  v5 = @"iphone";
  v6 = @"ipad";
  v7 = v4 != 2;
  if (v4 != 2)
  {
    v6 = 0;
  }

  if (v4 == 3)
  {
    v7 = 0;
  }

  else
  {
    v5 = v6;
  }

  v8 = v4 != 1 && v7;
  if (v4 == 1)
  {
    v9 = @"*";
  }

  else
  {
    v9 = v5;
  }

  Value = CFDictionaryGetValue(*(this + 46), v9);
  if (Value)
  {
    if (v8)
    {
      return;
    }
  }

  else
  {
    Value = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(*(this + 46), v9, Value);
    CFRelease(Value);
    if (v8)
    {
      return;
    }
  }

  v11 = *(this + 156);
  if (v11 > 11)
  {
    if (v11 > 14)
    {
      switch(v11)
      {
        case 15:
          if (CFStringCompare(a2, @"portrait", 0) == kCFCompareEqualTo)
          {
            v12 = @"orientation-lock";
            v13 = @"portrait-only";
            goto LABEL_54;
          }

          if (CFStringCompare(a2, @"landscape", 0) == kCFCompareEqualTo)
          {
            v12 = @"orientation-lock";
            v13 = @"landscape-only";
            goto LABEL_54;
          }

          if (CFStringCompare(a2, @"auto", 0))
          {
            return;
          }

          v12 = @"orientation-lock";
LABEL_42:
          v13 = @"none";
LABEL_54:
          v14 = Value;
          goto LABEL_49;
        case 16:
          v12 = @"version";
          break;
        case 17:
          v12 = @"respect-image-size-class";
          break;
        default:
          return;
      }
    }

    else if (v11 == 12)
    {
      v12 = @"open-to-spread";
    }

    else if (v11 == 13)
    {
      v12 = @"binding";
    }

    else
    {
      v12 = @"orientation-lock";
    }
  }

  else if (v11 > 8)
  {
    if (v11 == 9)
    {
      v12 = @"flow";
    }

    else if (v11 == 10)
    {
      v12 = @"interactive";
    }

    else
    {
      v12 = @"specified-fonts";
    }
  }

  else
  {
    if (v11 != 6)
    {
      if (v11 == 7)
      {
        if (CFStringCompare(a2, @"pre-paginated", 0))
        {
          return;
        }

        v12 = @"fixed-layout";
        v13 = @"true";
        goto LABEL_54;
      }

      if (v11 != 8 || CFStringCompare(a2, @"none", 0))
      {
        return;
      }

      v12 = @"spread";
      goto LABEL_42;
    }

    v12 = @"fixed-layout";
  }

  v14 = Value;
  v13 = a2;
LABEL_49:

  CFDictionarySetValue(v14, v12, v13);
}

void ITEpubOpfParser::CaptureFileAsValues(CFDictionaryRef *this, const __CFString *a2)
{
  Value = CFDictionaryGetValue(this[48], @"refines");
  v5 = CFDictionaryGetValue(this[48], @"property");
  if (Value)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && CFStringCompare(v5, @"file-as", 0) == kCFCompareEqualTo)
  {
    v7 = CFDictionaryGetValue(this[48], @"xml:lang");
    if (!v7)
    {
      v7 = CFDictionaryGetValue(this[48], @"lang");
    }

    if (a2)
    {
      *keys = *&off_328618;
      v10[0] = a2;
      v10[1] = v7;
      if (v7)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      v9 = CFDictionaryCreate(kCFAllocatorDefault, keys, v10, v8, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(this[47], Value, v9);
      CFRelease(v9);
    }
  }
}

std::string *ITEpubOpfParser::author(uint64_t a1, std::string *this)
{
  v3 = (a1 + 120);
  if (*(a1 + 143) < 0)
  {
    v3 = *v3;
  }

  return std::string::assign(this, v3);
}

std::string *ITEpubOpfParser::title(uint64_t a1, std::string *this)
{
  v3 = (a1 + 144);
  if (*(a1 + 167) < 0)
  {
    v3 = *v3;
  }

  return std::string::assign(this, v3);
}

std::string *ITEpubOpfParser::language(uint64_t a1, std::string *this)
{
  v3 = (a1 + 168);
  if (*(a1 + 191) < 0)
  {
    v3 = *v3;
  }

  return std::string::assign(this, v3);
}

std::string *ITEpubOpfParser::genre(std::string *result, std::string *this)
{
  v2 = &result[8];
  if (SHIBYTE(result[8].__r_.__value_.__r.__words[2]) < 0)
  {
    if (!result[8].__r_.__value_.__l.__size_)
    {
      goto LABEL_7;
    }

    v2 = *v2;
    return std::string::assign(this, v2);
  }

  if (*(&result[8].__r_.__value_.__s + 23))
  {
    return std::string::assign(this, v2);
  }

LABEL_7:
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  return result;
}

std::string *ITEpubOpfParser::publisherName(uint64_t a1, std::string *this)
{
  v3 = (a1 + 240);
  if (*(a1 + 263) < 0)
  {
    v3 = *v3;
  }

  return std::string::assign(this, v3);
}

std::string *ITEpubOpfParser::publisherLocation(uint64_t a1, std::string *this)
{
  v3 = (a1 + 264);
  if (*(a1 + 287) < 0)
  {
    v3 = *v3;
  }

  return std::string::assign(this, v3);
}

std::string *ITEpubOpfParser::publisherYear(uint64_t a1, std::string *this)
{
  v3 = (a1 + 288);
  if (*(a1 + 311) < 0)
  {
    v3 = *v3;
  }

  return std::string::assign(this, v3);
}

std::string *ITEpubOpfParser::uniqueIdentifier(uint64_t a1, std::string *this)
{
  v3 = (a1 + 552);
  if (*(a1 + 575) < 0)
  {
    v3 = *v3;
  }

  return std::string::assign(this, v3);
}

std::string *ITEpubOpfParser::uniqueIdentifierWithUUIDScheme(uint64_t a1, std::string *this)
{
  v3 = (a1 + 576);
  if (*(a1 + 599) < 0)
  {
    v3 = *v3;
  }

  return std::string::assign(this, v3);
}

uint64_t ITEpubOpfParser::_lowerHrefInSpine(CFArrayRef *this, const __CFString *a2, uint64_t a3)
{
  v5 = ITEpubXmlParseHandler::copyHrefStrippingHash(a2, a2);
  if (a3 < 1)
  {
LABEL_7:
    if (!v5)
    {
      return a3;
    }

LABEL_8:
    CFRelease(v5);
    return a3;
  }

  v6 = a3;
  while (1)
  {
    v7 = v6 - 1;
    ValueAtIndex = CFArrayGetValueAtIndex(this[42], v6 - 1);
    if (ValueAtIndex)
    {
      Value = CFDictionaryGetValue(this[40], ValueAtIndex);
      if (Value)
      {
        v10 = CFDictionaryGetValue(Value, @"unescaped_href");
        if (CFStringCompare(v10, v5, 0) == kCFCompareEqualTo)
        {
          break;
        }
      }
    }

    --v6;
    if ((v7 + 1) <= 1)
    {
      goto LABEL_7;
    }
  }

  a3 = (v6 - 1);
  if (v5)
  {
    goto LABEL_8;
  }

  return a3;
}

const __CFString *ITEpubOpfParser::_lowestHrefInSpine(ITEpubOpfParser *this)
{
  v1 = *(this + 59);
  v2 = *(this + 60) - v1;
  if (v2 < 9)
  {
    if (v2 != 8)
    {
      sub_113BC();
    }

    return *v1;
  }

  else
  {
    Count = CFArrayGetCount(*(this + 42));
    if (v1 == *(this + 60))
    {
      return 0;
    }

    else
    {
      v5 = Count;
      v6 = 0;
      do
      {
        v7 = ITEpubOpfParser::_lowerHrefInSpine(this, *v1, v5);
        if (v5 > v7)
        {
          v6 = *v1;
          v5 = v7;
        }

        if (!v5)
        {
          break;
        }

        ++v1;
      }

      while (v1 != *(this + 60));
    }
  }

  return v6;
}

const __CFString *ITEpubOpfParser::copyFirstHref(ITEpubOpfParser *this)
{
  v1 = *(this + 62);
  if (!v1)
  {
    if (*(this + 60) == *(this + 59))
    {
      return 0;
    }

    v1 = ITEpubOpfParser::_lowestHrefInSpine(this);
    if (!v1)
    {
      return v1;
    }
  }

  CFRetain(v1);
  return v1;
}

const void *ITEpubOpfParser::copyReaderStartPageHref(ITEpubOpfParser *this)
{
  result = *(this + 62);
  if (result)
  {
    CFRetain(result);
    return *(this + 62);
  }

  return result;
}

const void *ITEpubOpfParser::copyFileAsDictionary(ITEpubOpfParser *this)
{
  result = *(this + 47);
  if (result)
  {
    CFRetain(result);
    return *(this + 47);
  }

  return result;
}

const void *ITEpubOpfParser::copyManifestIdDictionary(ITEpubOpfParser *this)
{
  result = *(this + 40);
  if (result)
  {
    CFRetain(result);
    return *(this + 40);
  }

  return result;
}

const void *ITEpubOpfParser::copyManifestHrefDictionary(ITEpubOpfParser *this)
{
  result = *(this + 39);
  if (result)
  {
    CFRetain(result);
    return *(this + 39);
  }

  return result;
}

const void *ITEpubOpfParser::copyManifestArray(ITEpubOpfParser *this)
{
  result = *(this + 41);
  if (result)
  {
    CFRetain(result);
    return *(this + 41);
  }

  return result;
}

const void *ITEpubOpfParser::copySpineArray(ITEpubOpfParser *this)
{
  result = *(this + 42);
  if (result)
  {
    CFRetain(result);
    return *(this + 42);
  }

  return result;
}

const void *ITEpubOpfParser::platformOptions(void *a1, unsigned int a2)
{
  if (!a1[45] && !a1[44])
  {
    return 0;
  }

  v4 = a1[46];
  if (!v4)
  {
    return 0;
  }

  if (!CFDictionaryGetCount(v4) || a2 > 2)
  {
    return 0;
  }

  v7 = off_328660[a2];
  v8 = a1[46];

  return CFDictionaryGetValue(v8, v7);
}

void sub_113D4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_11430(exception, a1);
}

std::logic_error *sub_11430(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_116B4()
{
  qword_36AAD8 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_1194C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_11964(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1197C(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];

  return _objc_release_x1();
}

void sub_11A84(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [NSNumber numberWithBool:*(a1 + 48)];
  [v2 setObject:v3 forKey:*(a1 + 40)];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setObject:*(*(a1 + 32) + 8) forKey:@"_BCWWebRepExternalLoadApprovalCache"];
}

void sub_11BCC(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v3 BOOLValue] & 1) == 0)
  {
    [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
    v2 = +[NSUserDefaults standardUserDefaults];
    [v2 setObject:*(*(a1 + 32) + 8) forKey:@"_BCWWebRepExternalLoadApprovalCache"];
  }
}

void sub_11CDC(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  if ([v2 BOOLForKey:@"_BCWWebRepExternalLoadApprovalCacheClear"])
  {
    [v2 removeObjectForKey:@"_BCWWebRepExternalLoadApprovalCache"];
    [v2 removeObjectForKey:@"_BCWWebRepExternalLoadApprovalCacheClear"];
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;
  }

  if (!*(*(a1 + 32) + 8))
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    objc_opt_class();
    v17 = v2;
    v8 = [v2 objectForKey:@"_BCWWebRepExternalLoadApprovalCache"];
    v9 = BUDynamicCast();

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v9 allKeys];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = [v9 objectForKeyedSubscript:v15];
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v16 BOOLValue])
          {
            [*(*(a1 + 32) + 8) setObject:&__kCFBooleanTrue forKey:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v2 = v17;
  }
}

void sub_11FF0(uint64_t a1)
{
  v1 = [*(a1 + 32) be_wkContentViewClass];
  if (v1)
  {
    v2 = v1;
    BESwizzleInstanceMethods(v1, "setUpTextSelectionAssistant", "be_setUpTextSelectionAssistant");

    BESwizzleInstanceMethods(v2, "continueContextMenuInteraction:", "be_continueContextMenuInteraction:");
  }
}

void sub_12354(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setPreviewProvider:0];
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_12604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1261C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_12634(uint64_t a1)
{
  v2 = qword_36AB08;
  if (!qword_36AB08)
  {
    v3 = +[NSMapTable weakToWeakObjectsMapTable];
    v4 = qword_36AB08;
    qword_36AB08 = v3;

    v2 = qword_36AB08;
  }

  v5 = [v2 objectForKey:*(a1 + 32)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = [*(a1 + 48) _standardProcessPoolWithSingleWebProcess:*(a1 + 56) forWebTOC:*(a1 + 57)];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = qword_36AB08;
    v12 = *(a1 + 32);
    v13 = *(*(*(a1 + 40) + 8) + 40);

    [v11 setObject:v13 forKey:v12];
  }
}

uint64_t sub_13780(void *a1)
{
  v1 = a1;
  v2 = [v1 mode];
  if (v2 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_295C30[v2];
  }

  v4 = [v1 isHorizontalScroll];

  if (v4)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1392C(uint64_t a1)
{
  [*(a1 + 32) setBe_isHorizontalScroll:{objc_msgSend(*(a1 + 40), "isHorizontalScroll")}];
  v2 = [*(a1 + 48) sinfInfo];
  v3 = [v2 allKeys];
  v4 = [v3 count];

  if (v4)
  {
    [*(a1 + 32) be_containsProtectedContent];
  }

  [*(a1 + 32) be_enableAX];
  [*(a1 + 40) applyToWebView:*(a1 + 32)];
  [*(a1 + 64) _setupContentBlockingRulesforWebView:*(a1 + 32) rule:{objc_msgSend(*(a1 + 48), "contentBlockingRule")}];
  [*(a1 + 64) _applyMetaViewportOverridesToWebView:*(a1 + 32) fixedLayoutSize:{*(a1 + 72), *(a1 + 80)}];
  if (*(a1 + 88) == 4)
  {
    v5 = [*(a1 + 32) configuration];
    v6 = [v5 defaultWebpagePreferences];
    [v6 _setMouseEventPolicy:1];
  }

  [*(a1 + 64) _modifyScrollViewBehaviors:*(a1 + 32)];
  v7 = *(a1 + 64);
  v8 = [*(a1 + 32) be_navigationHandler];
  v9 = [*(a1 + 32) be_userContentController];
  [v7 _configureNavigationForCoalescingLoadEvents:v8 userContentController:v9];

  v10 = *(*(a1 + 56) + 16);

  return v10();
}

uint64_t sub_13DEC(uint64_t a1)
{
  [*(a1 + 32) setBe_isHorizontalScroll:{objc_msgSend(*(a1 + 40), "isHorizontalScroll")}];
  [*(a1 + 40) applyToWebView:*(a1 + 32)];
  [*(a1 + 80) _setupContentBlockingRulesforWebView:*(a1 + 32) rule:{objc_msgSend(*(a1 + 48), "contentBlockingRule")}];
  [*(a1 + 80) _applyMetaViewportOverridesToWebView:*(a1 + 32) fixedLayoutSize:{CGSizeZero.width, CGSizeZero.height}];
  [*(a1 + 80) _modifyScrollViewBehaviors:*(a1 + 32)];
  [*(a1 + 80) _configureNavigationForCoalescingLoadEvents:*(a1 + 56) userContentController:*(a1 + 64)];
  v2 = *(*(a1 + 72) + 16);

  return v2();
}

uint64_t sub_144B8(uint64_t a1)
{
  [*(a1 + 32) setBe_isHorizontalScroll:{objc_msgSend(*(a1 + 40), "isHorizontalScroll")}];
  [*(a1 + 40) applyToWebView:*(a1 + 32)];
  [*(a1 + 80) _setupContentBlockingRulesforWebView:*(a1 + 32) rule:{objc_msgSend(*(a1 + 48), "contentBlockingRule")}];
  [*(a1 + 80) _applyMetaViewportOverridesToWebView:*(a1 + 32) fixedLayoutSize:{CGSizeZero.width, CGSizeZero.height}];
  [*(a1 + 80) _modifyScrollViewBehaviors:*(a1 + 32)];
  [*(a1 + 80) _configureNavigationForCoalescingLoadEvents:*(a1 + 56) userContentController:*(a1 + 64)];
  v2 = *(*(a1 + 72) + 16);

  return v2();
}

id BESupportedImageMimeTypes()
{
  if ((atomic_load_explicit(&qword_36AB18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_36AB18))
  {
    qword_36AB10 = sub_16230();
    __cxa_guard_release(&qword_36AB18);
  }

  v0 = qword_36AB10;

  return v0;
}

id sub_16230()
{
  v0 = [[NSSet alloc] initWithObjects:{@"application/bmp", @"application/jpg", @"application/png", @"application/tif", @"application/tiff", @"application/x-bmp", @"application/x-jpg", @"application/x-png", @"application/x-tif", @"application/x-tiff", @"application/x-win-bitmap", @"image/apng", @"image/bmp", @"image/gif", @"image/gi_", @"image/jp2", @"image/jpeg", @"image/jpe_", @"image/jpg", @"image/jp_", @"image/ms-bmp", @"image/pipeg", @"image/pjpeg", @"image/png", @"image/tif", @"image/tiff", @"image/vnd.microsoft.icon", @"image/vnd.switfview-jpeg", @"image/webp", @"image/x-bmp", @"image/x-icon", @"image/x-ms-bmp", @"image/x-tif", @"image/x-tiff", @"image/x-win-bitmap", @"image/x-windows-bmp", @"image/x-xbitmap", @"image/avif", @"image/heic", @"image/heic-sequence", @"image/heif", @"image/heif-sequence", @"image/jxl", @"image/x-apple-adaptive-glyph", 0}];

  return v0;
}

id BESupportedImageMimeTypesJSON()
{
  if ((atomic_load_explicit(&qword_36AB28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_36AB28))
  {
    qword_36AB20 = sub_164B4();
    __cxa_guard_release(&qword_36AB28);
  }

  v0 = qword_36AB20;

  return v0;
}

id sub_164B4()
{
  v0 = BESupportedImageMimeTypes();
  v1 = [v0 allObjects];
  v6 = 0;
  v2 = [NSJSONSerialization dataWithJSONObject:v1 options:0 error:&v6];
  v3 = v6;

  if ([v2 length])
  {
    v4 = [[NSString alloc] initWithData:v2 encoding:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id BEDoesURLPointToAnImageFile(void *a1)
{
  v1 = a1;
  if ((atomic_load_explicit(&qword_36AB38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_36AB38))
  {
    qword_36AB30 = sub_16684();
    __cxa_guard_release(&qword_36AB38);
  }

  v2 = qword_36AB30;
  v3 = [v1 pathExtension];
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_16650(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_36AB38);

  _Unwind_Resume(a1);
}

id sub_16684()
{
  v0 = [[NSSet alloc] initWithObjects:{@"avif", @"bmp", @"dib", @"gif", @"heic", @"heics", @"heif", @"heifs", @"hif", @"ico", @"j2c", @"j2k", @"jp2", @"jpe", @"jpeg", @"jpf", @"jpg", @"jpx", @"jxl", @"png", @"tif", @"tiff", @"xbm", @"webp", 0}];

  return v0;
}

id BEDoesURLPointToAFontFile(void *a1)
{
  v1 = a1;
  if ((atomic_load_explicit(&qword_36AB48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_36AB48))
  {
    qword_36AB40 = sub_16880();
    __cxa_guard_release(&qword_36AB48);
  }

  v2 = qword_36AB40;
  v3 = [v1 pathExtension];
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_1684C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_36AB48);

  _Unwind_Resume(a1);
}

id sub_16880()
{
  v0 = [[NSSet alloc] initWithObjects:{@"woff", @"woff2", @"otf", @"ttf", @"sfnt", 0}];

  return v0;
}

id BEDoesURLPointToUSDZFile(void *a1)
{
  v1 = [a1 pathExtension];
  v2 = [v1 isEqualToString:@"usdz"];

  return v2;
}

void ITEpubPrintableParser::ITEpubPrintableParser(ITEpubPrintableParser *this)
{
  ITEpubXmlParseHandler::ITEpubXmlParseHandler(this);
  *v1 = off_328848;
  v1[18] = 0;
  v1[17] = 0;
  v1[15] = 0;
  v1[16] = v1 + 17;
}

{
  ITEpubXmlParseHandler::ITEpubXmlParseHandler(this);
  *v1 = off_328848;
  v1[18] = 0;
  v1[17] = 0;
  v1[15] = 0;
  v1[16] = v1 + 17;
}

void ITEpubPrintableParser::~ITEpubPrintableParser(ITEpubPrintableParser *this)
{
  *this = off_328848;
  v2 = this + 128;
  sub_16A48(*(this + 16), this + 17, sub_16AD4);
  sub_16CB4(v2, *(this + 17));

  ITEpubXmlParseHandler::~ITEpubXmlParseHandler(this);
}

{
  ITEpubPrintableParser::~ITEpubPrintableParser(this);

  operator delete();
}

void (*sub_16A48(void *a1, void *a2, void (*a3)(void, unint64_t)))(void, unint64_t)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      v3 = v3 & 0xFFFFFFFF00000000 | *(v6 + 10);
      a3(v6[4], v3);
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != a2);
  }

  return a3;
}

void sub_16AD4(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t ITEpubPrintableParser::StartElement(CFMutableArrayRef *this, const __CFString *a2, const __CFDictionary *a3)
{
  ITEpubXmlParseHandler::StartElement(this, a2, a3);
  result = ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"printable");
  if (result)
  {
    Value = CFDictionaryGetValue(a3, @"xmlns");
    if (!Value && (Value = this[3]) == 0 || (result = CFStringCompare(Value, @"http://apple.com/ibooks/printable", 0)) == 0)
    {
      result = CFDictionaryGetValue(a3, @"default");
      if (result)
      {
        result = ITEpubXmlParseHandler::BOOLeanForString(this, result);
        *(this + 30) = result;
      }
    }

    *(this + 31) = 1;
  }

  else if (*(this + 31))
  {
    result = ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"itemref");
    if (result)
    {
      v8 = CFDictionaryGetValue(a3, @"idref");
      v10[0] = v8;
      result = CFDictionaryGetValue(a3, @"printable");
      if (result)
      {
        if (v8)
        {
          v9 = ITEpubXmlParseHandler::BOOLeanForString(this, result);
          CFRetain(v8);
          v10[2] = v10;
          result = sub_16D08((this + 16), v10);
          *(result + 40) = v9;
        }
      }
    }
  }

  return result;
}

uint64_t ITEpubPrintableParser::isIdRefPrintable(ITEpubPrintableParser *this, const __CFString *a2)
{
  v6 = a2;
  v3 = sub_17064(this + 128, &v6);
  if ((this + 136) == v3)
  {
    v4 = (this + 120);
  }

  else
  {
    v4 = (v3 + 40);
  }

  return *v4;
}

void sub_16CB4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_16CB4(a1, *a2);
    sub_16CB4(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_16D08(uint64_t a1, CFStringRef *a2)
{
  v2 = *sub_16DA4(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_16DA4(uint64_t a1, void *a2, CFStringRef *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      v7 = v4;
      v8 = *a3;
      v9 = v7[4];
      if (*a3)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (!v9)
        {
          goto LABEL_18;
        }

LABEL_11:
        if (v9)
        {
          v11 = v8 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          if (v8)
          {
            goto LABEL_24;
          }
        }

        else if (CFStringCompare(v9, v8, 0) != kCFCompareLessThan)
        {
          goto LABEL_24;
        }

        v5 = v7 + 1;
        v4 = v7[1];
        if (!v4)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (CFStringCompare(*a3, v9, 0) != kCFCompareLessThan)
        {
          v9 = v7[4];
          v8 = *a3;
          goto LABEL_11;
        }

LABEL_18:
        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v7 = (a1 + 8);
LABEL_24:
  *a2 = v7;
  return v5;
}

uint64_t *sub_16E70(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_16EC8(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_16EC8(uint64_t *result, uint64_t *a2)
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

uint64_t sub_17064(uint64_t a1, const __CFString **a2)
{
  v3 = a1 + 8;
  v4 = sub_170DC(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = *(v4 + 32);
  if (*a2)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (!v6)
    {
      return v3;
    }
  }

  else if (CFStringCompare(*a2, v6, 0) == kCFCompareLessThan)
  {
    return v3;
  }

  return v5;
}

uint64_t sub_170DC(uint64_t a1, const __CFString **a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v7 = *(v5 + 32);
      v8 = *a2;
      v9 = *a2 == 0;
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v9 = CFStringCompare(v7, v8, 0) == kCFCompareLessThan;
      }

      v11 = !v9;
      if (v9)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        a4 = v5;
      }

      v5 = *(v5 + v12);
    }

    while (v5);
  }

  return a4;
}

void BESwizzleInstanceMethods(objc_class *a1, const char *a2, const char *a3)
{
  if (a1)
  {
    InstanceMethod = class_getInstanceMethod(a1, a2);
    v7 = class_getInstanceMethod(a1, a3);
    if (InstanceMethod)
    {
      v8 = v7;
      if (v7)
      {
        Implementation = method_getImplementation(v7);
        TypeEncoding = method_getTypeEncoding(v8);
        if (class_addMethod(a1, a2, Implementation, TypeEncoding))
        {
          v11 = method_getImplementation(InstanceMethod);
          v12 = method_getTypeEncoding(InstanceMethod);

          class_replaceMethod(a1, a3, v11, v12);
        }

        else
        {

          method_exchangeImplementations(InstanceMethod, v8);
        }
      }
    }
  }
}

id BEGetWeakAssociatedObject(void *a1, const void *a2)
{
  v3 = a1;
  v4 = objc_getAssociatedObject(v3, a2);
  v5 = v4;
  if (v4)
  {
    v6 = (*(v4 + 16))(v4);
    if (!v6)
    {
      BESetWeakAssociatedObject(v3, a2, 0);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void BESetWeakAssociatedObject(void *a1, const void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  objc_initWeak(&location, v6);
  if (v6)
  {
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_173FC;
    v12 = &unk_3288A0;
    objc_copyWeak(&v13, &location);
    v7 = objc_retainBlock(&v9);
    objc_destroyWeak(&v13);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 copy];
  objc_setAssociatedObject(v5, a2, v8, &dword_0 + 1);

  objc_destroyWeak(&location);
}

id sub_173FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  return WeakRetained;
}

void ITEpub3NavParser::ITEpub3NavParser(ITEpub3NavParser *this)
{
  ITEpubXmlParseHandler::ITEpubXmlParseHandler(this);
  *v1 = off_328920;
  *(v1 + 304) = 0;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  *(v1 + 296) = 0;
  *(v1 + 120) = 0u;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
}

{
  ITEpubXmlParseHandler::ITEpubXmlParseHandler(this);
  *v1 = off_328920;
  *(v1 + 304) = 0;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  *(v1 + 296) = 0;
  *(v1 + 120) = 0u;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
}

void ITEpub3NavParser::~ITEpub3NavParser(ITEpub3NavParser *this)
{
  *this = off_328920;
  v2 = *(this + 15);
  if (v2)
  {
    ITRetain::release(v2);
    *(this + 15) = 0;
  }

  v3 = *(this + 16);
  if (v3)
  {
    ITRetain::release(v3);
    *(this + 16) = 0;
  }

  v4 = *(this + 17);
  if (v4)
  {
    ITRetain::release(v4);
    *(this + 17) = 0;
  }

  v5 = *(this + 18);
  if (v5)
  {
    CFRelease(v5);
    *(this + 18) = 0;
  }

  v6 = *(this + 22);
  if (v6)
  {
    CFRelease(v6);
    *(this + 22) = 0;
  }

  v7 = *(this + 19);
  if (v7)
  {
    CFRelease(v7);
    *(this + 19) = 0;
  }

  v8 = *(this + 20);
  if (v8)
  {
    CFRelease(v8);
    *(this + 20) = 0;
  }

  v9 = *(this + 21);
  if (v9)
  {
    CFRelease(v9);
    *(this + 21) = 0;
  }

  v10 = *(this + 38);
  if (v10)
  {
    CFRelease(v10);
    *(this + 38) = 0;
  }

  sub_1908C(this + 31);
  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  ITEpubXmlParseHandler::~ITEpubXmlParseHandler(this);
}

{
  ITEpub3NavParser::~ITEpub3NavParser(this);

  operator delete();
}

uint64_t ITEpub3NavParser::headNavPoint(ITEpub3NavParser *this)
{
  v1 = *(this + 58) - 1;
  if (v1 > 2)
  {
    return 0;
  }

  else
  {
    return *(this + v1 + 15);
  }
}

uint64_t ITEpub3NavParser::setHeadNavPoint(uint64_t this, ITNavPoint *a2)
{
  v2 = *(this + 232) - 1;
  if (v2 <= 2)
  {
    *(this + 8 * v2 + 120) = a2;
  }

  return this;
}

atomic_uint *ITEpub3NavParser::resetHeadNavPoint(atomic_uint *this)
{
  v1 = this;
  v2 = this[58];
  if ((v2 - 1) <= 2)
  {
    this = *(this + (8 * (v2 - 1)) + 120);
    if (this)
    {
      this = ITRetain::release(this);
      v2 = v1[58];
    }
  }

  v3 = v2 - 1;
  if (v3 <= 2)
  {
    *&v1[2 * v3 + 30] = 0;
  }

  return this;
}

uint64_t ITEpub3NavParser::popUpOneLevel(uint64_t this)
{
  v1 = *(this + 232) - 1;
  if (v1 <= 2)
  {
    v2 = *(this + 8 * v1 + 120);
    if (v2)
    {
      v3 = *(v2 + 5);
      if (v3)
      {
        *(this + 8 * v1 + 120) = v3;
        this = ITNavPoint::contentFileIncludingHash(v2);
        if (!this)
        {
          ITRetain::retain(v2);
          ITNavPoint::removeChild(v3, v2);
          v4 = *(v2 + 3) - *(v2 + 2);
          if (v4)
          {
            v5 = 0;
            v6 = v4 >> 3;
            if (v6 <= 1)
            {
              v7 = 1;
            }

            else
            {
              v7 = v6;
            }

            do
            {
              v8 = ITNavPoint::childAtIndex(v2, v5);
              if (v8)
              {
                ITNavPoint::addChild(v3, v8);
              }

              ++v5;
            }

            while (v7 != v5);
          }

          return ITRetain::release(v2);
        }
      }
    }
  }

  return this;
}

void ITEpub3NavParser::takeFoundTextAsName(ITEpub3NavParser *this)
{
  v1 = *(this + 58) - 1;
  if (v1 > 2)
  {
    return;
  }

  v3 = *(this + v1 + 15);
  if (!v3)
  {
    return;
  }

  v4 = this + 184;
  if ((*(this + 207) & 0x80000000) == 0)
  {
    if (!*(this + 207))
    {
      goto LABEL_11;
    }

LABEL_8:
    v5 = CFStringCreateWithCString(kCFAllocatorDefault, v4, 0x8000100u);
    v6 = v5;
    if (*(this + 207) < 0)
    {
      **(this + 23) = 0;
      *(this + 24) = 0;
      if (!v5)
      {
        return;
      }
    }

    else
    {
      *(this + 184) = 0;
      *(this + 207) = 0;
      if (!v5)
      {
        return;
      }
    }

    goto LABEL_19;
  }

  if (*(this + 24))
  {
    v4 = *v4;
    goto LABEL_8;
  }

LABEL_11:
  v7 = this + 72;
  if (*(this + 95) < 0)
  {
    if (!*(this + 10))
    {
      return;
    }

    v7 = *v7;
  }

  else if (!*(this + 95))
  {
    return;
  }

  v6 = CFStringCreateWithCString(kCFAllocatorDefault, v7, 0x8000100u);
  if (!v6)
  {
    return;
  }

LABEL_19:
  ITNavPoint::setContentName(v3, v6);

  CFRelease(v6);
}

std::string *ITEpub3NavParser::takeFoundTextAsAccumulatedText(std::string *this)
{
  v1 = this;
  v2 = &this[3];
  if (SHIBYTE(this[3].__r_.__value_.__r.__words[2]) < 0)
  {
    if (!this[3].__r_.__value_.__l.__size_)
    {
      return this;
    }

    v3 = *v2;
  }

  else
  {
    v3 = &this[3];
    if (!*(&this[3].__r_.__value_.__s + 23))
    {
      return this;
    }
  }

  std::string::append((this + 184), v3);
  if (*(v1 + 95) < 0)
  {
    v2 = *v2;
  }

  this = std::string::append((v1 + 208), v2);
  if (*(v1 + 95) < 0)
  {
    **(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  else
  {
    *(v1 + 72) = 0;
    *(v1 + 95) = 0;
  }

  return this;
}

void ITEpub3NavParser::takeFoundTextAsHTML(ITEpub3NavParser *this)
{
  v1 = *(this + 58) - 1;
  if (v1 > 2)
  {
    return;
  }

  v3 = *(this + v1 + 15);
  if (!v3)
  {
    return;
  }

  v4 = this + 208;
  if ((*(this + 231) & 0x80000000) == 0)
  {
    if (!*(this + 231))
    {
      goto LABEL_11;
    }

LABEL_8:
    v5 = CFStringCreateWithCString(kCFAllocatorDefault, v4, 0x8000100u);
    v6 = v5;
    if (*(this + 231) < 0)
    {
      **(this + 26) = 0;
      *(this + 27) = 0;
      if (!v5)
      {
        return;
      }
    }

    else
    {
      *(this + 208) = 0;
      *(this + 231) = 0;
      if (!v5)
      {
        return;
      }
    }

    goto LABEL_19;
  }

  if (*(this + 27))
  {
    v4 = *v4;
    goto LABEL_8;
  }

LABEL_11:
  v7 = this + 72;
  if (*(this + 95) < 0)
  {
    if (!*(this + 10))
    {
      return;
    }

    v7 = *v7;
  }

  else if (!*(this + 95))
  {
    return;
  }

  v6 = CFStringCreateWithCString(kCFAllocatorDefault, v7, 0x8000100u);
  if (!v6)
  {
    return;
  }

LABEL_19:
  ITNavPoint::setContentHTML(v3, v6);

  CFRelease(v6);
}

std::string *ITEpub3NavParser::takeFoundTextAsAccumulatedHTML(std::string *this)
{
  v1 = this;
  v2 = &this[3];
  if (SHIBYTE(this[3].__r_.__value_.__r.__words[2]) < 0)
  {
    if (!this[3].__r_.__value_.__l.__size_)
    {
      return this;
    }

    v2 = *v2;
  }

  else if (!*(&this[3].__r_.__value_.__s + 23))
  {
    return this;
  }

  this = std::string::append((this + 208), v2);
  if (*(v1 + 95) < 0)
  {
    **(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  else
  {
    *(v1 + 72) = 0;
    *(v1 + 95) = 0;
  }

  return this;
}

void ITEpub3NavParser::StartNavChildElement(ITEpub3NavParser *this, const __CFString *a2, const __CFDictionary *a3)
{
  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"ol"))
  {
    v6 = *(this + 58) - 1;
    if (v6 > 2 || !*(this + v6 + 15))
    {

      ITEpub3NavParser::pushDownOneLevel(this);
    }

    return;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"li"))
  {
    if (*(this + 207) < 0)
    {
      **(this + 23) = 0;
      *(this + 24) = 0;
    }

    else
    {
      *(this + 184) = 0;
      *(this + 207) = 0;
    }

    if (*(this + 231) < 0)
    {
      **(this + 26) = 0;
      *(this + 27) = 0;
    }

    else
    {
      *(this + 208) = 0;
      *(this + 231) = 0;
    }

    ITEpub3NavParser::pushDownOneLevel(this);
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"span"))
  {
    *(this + 60) = 1;
    v7 = ITEpub3NavParser::copyNewId(this);
    __p = 0;
    v24 = 0;
    v25 = 0;
    ITStrUtil::toString(v7, &__p);
    CFRelease(v7);
    std::string::append((this + 208), "<span id=");
    if (v25 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v25 >= 0)
    {
      v9 = HIBYTE(v25);
    }

    else
    {
      v9 = v24;
    }

    std::string::append((this + 208), p_p, v9);
    std::string::append((this + 208), ">");
    ITEpub3NavParser::takeFoundTextAsAccumulatedText(this);
LABEL_18:
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p);
    }

    return;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"img"))
  {
    Value = CFDictionaryGetValue(a3, @"class");
    v11 = CFDictionaryGetValue(a3, @"src");
    if (!Value || !v11)
    {
      return;
    }

    __p = 0;
    v24 = 0;
    v25 = 0;
    ITStrUtil::toString(v11, &__p);
    if (CFStringCompare(Value, @"gaiji", 0) == kCFCompareEqualTo || CFStringCompare(Value, @"gaiji-wide", 0) == kCFCompareEqualTo)
    {
      *(this + 60) = 1;
      std::string::append((this + 208), "<img src=");
      if (v25 >= 0)
      {
        v12 = &__p;
      }

      else
      {
        v12 = __p;
      }

      std::string::append((this + 208), v12);
      std::string::append((this + 208), "/>");
    }

    goto LABEL_18;
  }

  doesNodeMatch = ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"ruby");
  v14 = *(this + 59);
  if (doesNodeMatch)
  {
    *(this + 59) = v14 + 1;
    *(this + 60) = 1;
    std::string::append((this + 208), "<ruby>");
LABEL_36:

    ITEpub3NavParser::takeFoundTextAsAccumulatedText(this);
    return;
  }

  if (!v14)
  {
    goto LABEL_87;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"rb"))
  {
    goto LABEL_36;
  }

  if (!*(this + 59))
  {
    goto LABEL_87;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"rc"))
  {
    goto LABEL_36;
  }

  if (*(this + 59) && ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"rt"))
  {

    std::string::append((this + 208), "<rt>");
  }

  else
  {
LABEL_87:
    if (!ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"a"))
    {
      return;
    }

    if (*(this + 207) < 0)
    {
      **(this + 23) = 0;
      *(this + 24) = 0;
    }

    else
    {
      *(this + 184) = 0;
      *(this + 207) = 0;
    }

    if (*(this + 231) < 0)
    {
      **(this + 26) = 0;
      *(this + 27) = 0;
    }

    else
    {
      *(this + 208) = 0;
      *(this + 231) = 0;
    }

    v15 = *(this + 58) - 1;
    if (v15 > 2)
    {
      return;
    }

    v16 = *(this + v15 + 15);
    if (!v16)
    {
      return;
    }

    v17 = CFDictionaryGetValue(a3, @"href");
    ITNavPoint::setContentFile(v16, v17);
    v18 = CFDictionaryGetValue(a3, @"epub:type");
    ITNavPoint::setNavPointType(v16, v18);
    if (!v17)
    {
      return;
    }

    v19 = *(this + 58);
    if (v19 == 1)
    {
      if (*(this + 18))
      {
        return;
      }

      *(this + 18) = v17;
    }

    else
    {
      if (!v18 || v19 != 2)
      {
        return;
      }

      if (CFStringFind(v18, @"reader-start-page", 0).location == -1)
      {
        if (*(this + 19))
        {
          return;
        }

        v22 = CFStringCompare(v18, @"bodymatter", 0) == kCFCompareEqualTo || CFStringCompare(v18, @"acknowledgements", 0) == kCFCompareEqualTo || CFStringCompare(v18, @"dedication", 0) == kCFCompareEqualTo || CFStringCompare(v18, @"epigraph", 0) == kCFCompareEqualTo || CFStringCompare(v18, @"foreward", 0) == kCFCompareEqualTo || CFStringCompare(v18, @"preface", 0) == kCFCompareEqualTo || CFStringCompare(v18, @"introduction", 0) == kCFCompareEqualTo || CFStringCompare(v18, @"frontmatter", 0) == kCFCompareEqualTo;
        if (!v22 || *(this + 19))
        {
          return;
        }
      }

      else
      {
        v20 = *(this + 21);
        if (v20)
        {
          CFRelease(v20);
          *(this + 21) = 0;
        }

        *(this + 21) = v17;
        CFRetain(v17);
        v21 = *(this + 19);
        if (v21)
        {
          CFRelease(v21);
          *(this + 19) = 0;
        }
      }

      *(this + 19) = v17;
    }

    CFRetain(v17);
  }
}

void sub_186AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFString *ITEpub3NavParser::copyNewId(ITEpub3NavParser *this)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  v3 = *(this + 61);
  *(this + 61) = v3 + 1;
  CFStringAppendFormat(Mutable, 0, @"-ibooks-toc-id-%d", v3);
  v4 = *(this + 38);
  if (!v4)
  {
    v4 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(this + 38) = v4;
  }

  v5 = ITEpub3NavParser::copyTocCfi(this);
  CFDictionaryAddValue(v4, v5, Mutable);
  CFRelease(v5);
  return Mutable;
}

std::string *ITEpub3NavParser::FoundText(std::string *this, const __CFString *a2)
{
  ITEpubXmlParseHandler::FoundText(this, a2);
  if (!HIDWORD(this[9].__r_.__value_.__r.__words[2]))
  {
    goto LABEL_4;
  }

  result = ITEpubXmlParseHandler::CurrentNodeName(this);
  if (!result)
  {
    return result;
  }

  v4 = result;
  if (!ITEpubXmlParseHandler::doesNodeMatch(this, result, @"ruby"))
  {
    result = ITEpubXmlParseHandler::doesNodeMatch(this, v4, @"rt");
    if (result)
    {

      return ITEpub3NavParser::takeFoundTextAsAccumulatedHTML(this);
    }
  }

  else
  {
LABEL_4:

    return ITEpub3NavParser::takeFoundTextAsAccumulatedText(this);
  }

  return result;
}

void ITEpub3NavParser::StartElement(ITEpub3NavParser *this, const __CFString *a2, const __CFDictionary *a3)
{
  if (!ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"html"))
  {
    *(this + 74) += 2;
    sub_19188(this + 31, this + 74);
    *(this + 74) = 0;
  }

  ITEpubXmlParseHandler::StartElement(this, a2, a3);
  v6 = *(this + 58);
  if ((v6 - 1) >= 3)
  {
    if (v6)
    {
      return;
    }

    if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"nav"))
    {
      Value = CFDictionaryGetValue(a3, @"epub:type");
      if (!Value)
      {
        return;
      }

      v8 = Value;
      if (CFStringCompare(Value, @"toc", 0))
      {
        if (CFStringCompare(v8, @"landmarks", 0))
        {
          if (CFStringCompare(v8, @"page-list", 0))
          {
            return;
          }

          v9 = 3;
        }

        else
        {
          v9 = 2;
        }
      }

      else
      {
        v9 = 1;
      }

      *(this + 58) = v9;

      ITEpub3NavParser::resetHeadNavPoint(this);
    }

    else if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"title"))
    {
      if (*(this + 207) < 0)
      {
        **(this + 23) = 0;
        *(this + 24) = 0;
      }

      else
      {
        *(this + 184) = 0;
        *(this + 207) = 0;
      }

      if (*(this + 231) < 0)
      {
        **(this + 26) = 0;
        *(this + 27) = 0;
      }

      else
      {
        *(this + 208) = 0;
        *(this + 231) = 0;
      }
    }
  }

  else
  {

    ITEpub3NavParser::StartNavChildElement(this, a2, a3);
  }
}

void ITEpub3NavParser::EndNavChildElement(ITEpub3NavParser *this, const __CFString *a2)
{
  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"nav"))
  {
    *(this + 58) = 0;
    return;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"span"))
  {
    ITEpub3NavParser::takeFoundTextAsAccumulatedText(this);
    v4 = "</span>";
LABEL_6:

    std::string::append((this + 208), v4);
    return;
  }

  if (*(this + 59) && (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"rbc") || *(this + 59) && ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"rb")))
  {

    ITEpub3NavParser::takeFoundTextAsAccumulatedText(this);
  }

  else
  {
    if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"ruby"))
    {
      ITEpub3NavParser::takeFoundTextAsAccumulatedText(this);
      std::string::append((this + 208), "</ruby>");
      --*(this + 59);
      return;
    }

    if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"rt"))
    {
      v4 = "</rt>";
      goto LABEL_6;
    }

    if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"a"))
    {
      ITEpub3NavParser::takeFoundTextAsName(this);
      if (*(this + 60))
      {
        ITEpub3NavParser::takeFoundTextAsHTML(this);
      }

      *(this + 60) = 0;
    }

    else if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"li") || ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"ol") && (v5 = *(this + 58) - 1, v5 <= 2) && (v6 = *(this + v5 + 15)) != 0 && *(v6 + 40))
    {

      ITEpub3NavParser::popUpOneLevel(this);
    }
  }
}

void ITEpub3NavParser::EndElement(ITEpub3NavParser *this, const __CFString *a2)
{
  v4 = *(this + 36);
  if (v4)
  {
    v5 = v4 - 1;
    *(this + 74) = *(*(*(this + 32) + (((*(this + 35) + v5) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(this + 35) + v5) & 0x3FF));
    *(this + 36) = v5;
    sub_19854(this + 31, 1);
  }

  if ((*(this + 58) - 1) > 2)
  {
    if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"title"))
    {
      v6 = this + 184;
      if (*(this + 207) < 0)
      {
        v6 = *v6;
      }

      *(this + 22) = CFStringCreateWithCString(kCFAllocatorDefault, v6, 0x8000100u);
    }
  }

  else
  {
    ITEpub3NavParser::EndNavChildElement(this, a2);
  }

  ITEpubXmlParseHandler::EndElement(this, a2);
}

atomic_uint *ITEpub3NavParser::copyTableOfContents(ITEpub3NavParser *this)
{
  result = *(this + 15);
  if (result)
  {
    ITRetain::retain(result);
    return *(this + 15);
  }

  return result;
}

atomic_uint *ITEpub3NavParser::copyPageLists(ITEpub3NavParser *this)
{
  result = *(this + 17);
  if (result)
  {
    ITRetain::retain(result);
    return *(this + 17);
  }

  return result;
}

atomic_uint *ITEpub3NavParser::copyLandmarks(ITEpub3NavParser *this)
{
  result = *(this + 16);
  if (result)
  {
    ITRetain::retain(result);
    return *(this + 16);
  }

  return result;
}

const void *ITEpub3NavParser::copyFirstChapterHref(ITEpub3NavParser *this)
{
  v3 = this + 152;
  result = *(this + 19);
  if (!result)
  {
    v5 = *(this + 18);
    v4 = this + 144;
    result = v5;
    if (!v5)
    {
      return result;
    }

    v3 = v4;
  }

  CFRetain(result);
  return *v3;
}

const void *ITEpub3NavParser::copyReaderStartPageHref(ITEpub3NavParser *this)
{
  result = *(this + 21);
  if (result)
  {
    CFRetain(result);
    return *(this + 21);
  }

  return result;
}

uint64_t ITEpub3NavParser::firstChapterQuality(ITEpub3NavParser *this)
{
  if (*(this + 19))
  {
    v1 = *(this + 20);
    v2 = 9;
    if (v1)
    {
      if (CFStringCompare(v1, @"reader-start-page", 0))
      {
        return 9;
      }

      else
      {
        return 10;
      }
    }
  }

  else if (*(this + 18))
  {
    return 9;
  }

  else
  {
    return 0;
  }

  return v2;
}

const void *ITEpub3NavParser::copyTocTitle(ITEpub3NavParser *this)
{
  result = *(this + 22);
  if (result)
  {
    CFRetain(result);
    return *(this + 22);
  }

  return result;
}

__CFString *ITEpub3NavParser::copyTocCfi(ITEpub3NavParser *this)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  for (i = *(this + 36); i; i = *(this + 36))
  {
    v3 = i - 1;
    v8 = *(*(*(this + 32) + (((*(this + 35) + v3) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(this + 35) + v3) & 0x3FF));
    *(this + 36) = v3;
    sub_19854(this + 31, 1);
    sub_19188(v9, &v8);
  }

  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppend(Mutable, @"epubcfi(!");
  for (j = *(&v10 + 1); *(&v10 + 1); j = *(&v10 + 1))
  {
    v6 = j - 1;
    v8 = *(*(*(&v9[0] + 1) + (((v10 + v6) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v10 + v6) & 0x3FF));
    *(&v10 + 1) = v6;
    sub_19854(v9, 1);
    sub_19188(this + 31, &v8);
    if (*(&v10 + 1))
    {
      CFStringAppendFormat(Mutable, 0, @"/%d", v8);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @",/%d/1,/%d"), v8, v8 + 1);
    }
  }

  sub_1908C(v9);
  return Mutable;
}

void sub_18FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1908C(va);
  _Unwind_Resume(a1);
}

CFMutableDictionaryRef ITEpub3NavParser::cfiToIdMap(ITEpub3NavParser *this)
{
  result = *(this + 38);
  if (!result)
  {
    result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(this + 38) = result;
  }

  return result;
}

CFMutableDictionaryRef ITEpub3NavParser::copyTocCfiToIdMap(ITEpub3NavParser *this)
{
  Mutable = *(this + 38);
  if (Mutable || (Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (*(this + 38) = Mutable) != 0))
  {
    CFRetain(Mutable);
  }

  return Mutable;
}

uint64_t sub_1908C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_19138(a1);
}

uint64_t sub_19138(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_19188(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = sub_19210(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *sub_19210(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_1980C(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_193E4(a1, &v10);
}

void sub_19398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_193E4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1980C(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_194EC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1980C(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_195F8(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1980C(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_19700(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1980C(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_1980C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_67C0();
}

uint64_t sub_19854(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 7) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x400)
  {
    a2 = 1;
  }

  if (v5 < 0x800)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void ITEpubNavMapParser::ITEpubNavMapParser(ITEpubNavMapParser *this, atomic_uint *a2)
{
  ITEpubXmlParseHandler::ITEpubXmlParseHandler(this);
  *v3 = off_328980;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0;
  *(v3 + 160) = a2;
  if (a2)
  {
    ITRetain::retain(a2);
  }
}

void ITEpubNavMapParser::~ITEpubNavMapParser(ITEpubNavMapParser *this)
{
  *this = off_328980;
  v2 = *(this + 20);
  if (v2)
  {
    ITRetain::release(v2);
    *(this + 20) = 0;
  }

  v3 = *(this + 16);
  if (v3)
  {
    ITRetain::release(v3);
    *(this + 16) = 0;
  }

  v4 = *(this + 17);
  if (v4)
  {
    CFRelease(v4);
    *(this + 17) = 0;
  }

  v5 = *(this + 18);
  if (v5)
  {
    CFRelease(v5);
    *(this + 18) = 0;
  }

  v6 = *(this + 19);
  if (v6)
  {
    CFRelease(v6);
    *(this + 19) = 0;
  }

  ITEpubXmlParseHandler::~ITEpubXmlParseHandler(this);
}

{
  ITEpubNavMapParser::~ITEpubNavMapParser(this);

  operator delete();
}

void ITEpubNavMapParser::StartNode(ITEpubNavMapParser *this, CFStringRef theString, const __CFDictionary *a3)
{
  if (*(this + 30))
  {
    goto LABEL_23;
  }

  if (ITEpubXmlParseHandler::doesNodeMatch(this, theString, @"navMap"))
  {
    v6 = *(this + 16);
    if (v6)
    {
      ITRetain::release(v6);
      *(this + 16) = 0;
    }

    operator new();
  }

  if (*(this + 30))
  {
LABEL_23:
    if (ITEpubXmlParseHandler::doesNodeMatch(this, theString, @"navPoint"))
    {
      ++*(this + 31);
      CFDictionaryGetValue(a3, @"id");
      operator new();
    }

    if (ITEpubXmlParseHandler::doesNodeMatch(this, theString, @"content") && *(this + 16))
    {
      Value = CFDictionaryGetValue(a3, @"src");
      v8 = Value;
      if (Value)
      {
        CFRetain(Value);
        ITNavPoint::setContentFile(*(this + 16), v8);
        CFRelease(v8);
      }

      v9 = *(this + 17);
      if (v9)
      {
        if (!*(this + 18))
        {
          v10 = *(*(this + 16) + 48);
          if (v10)
          {
            if (CFStringCompare(v10, v9, 0) == kCFCompareEqualTo)
            {
              *(this + 18) = v8;
              if (v8)
              {

                CFRetain(v8);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t ITEpubNavMapParser::isUndesirableTocElement(ITEpubNavMapParser *this, const __CFString **a2, const ITNavPoint *a3, const ITEpubOpfParser *a4)
{
  v7 = ITNavPoint::copyContentFileWithoutHash(a2, a2);
  if (v7)
  {
    v8 = v7;
    v9 = *(a4 + 64);
    if (v9 && CFStringCompare(v9, v8, 0) == kCFCompareEqualTo)
    {
      goto LABEL_24;
    }

    v10 = *(a4 + 65);
    if (v10)
    {
      if (CFStringCompare(v10, v8, 0) == kCFCompareEqualTo)
      {
        goto LABEL_24;
      }
    }

    v11 = a2[10];
    if (!v11)
    {
      goto LABEL_19;
    }

    CharacterAtIndex = CFStringGetCharacterAtIndex(a2[10], 0);
    v13 = 0;
    if (CharacterAtIndex > 98)
    {
      if (CharacterAtIndex == 116)
      {
LABEL_18:
        if (CFStringCompare(@"Table of Contents", v11, 1uLL))
        {
          goto LABEL_19;
        }

        v14 = *(this + 19);
        if (v14)
        {
          CFRelease(v14);
          *(this + 19) = 0;
        }

        goto LABEL_22;
      }

      if (CharacterAtIndex != 99)
      {
        goto LABEL_25;
      }
    }

    else if (CharacterAtIndex != 67)
    {
      if (CharacterAtIndex != 84)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    }

    v13 = 1;
    if (CFStringCompare(@"Cover", v11, 1uLL))
    {
      if (CFStringCompare(@"Contents", v11, 1uLL) == kCFCompareEqualTo)
      {
        if (*(this + 19))
        {
LABEL_24:
          v13 = 1;
          goto LABEL_25;
        }

LABEL_22:
        v15 = ITNavPoint::contentFileIncludingHash(a2);
        *(this + 19) = v15;
        if (v15)
        {
          CFRetain(v15);
        }

        goto LABEL_24;
      }

LABEL_19:
      v13 = 0;
    }

LABEL_25:
    CFRelease(v8);
    return v13;
  }

  return 0;
}

void ITEpubNavMapParser::EndNode(ITEpubNavMapParser *this, const __CFString *a2, const char *a3)
{
  if (*(this + 30))
  {
    if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"navPoint"))
    {
      if (*(this + 31))
      {
        v7 = *(this + 16);
        if (v7)
        {
          v8 = *(v7 + 40);
          if (v8)
          {
            *(this + 16) = v8;
          }

          if (ITEpubNavMapParser::isUndesirableTocElement(this, v7, v6, *(this + 20)))
          {
            if (v7 == *(this + 16))
            {
              *(this + 16) = 0;
            }

            else
            {
              ITRetain::retain(v7);
              ITNavPoint::removeChild(*(this + 16), v7);
              v9 = *(v7 + 24) - *(v7 + 16);
              if ((v9 >> 3) >= 1)
              {
                v10 = 0;
                v11 = (v9 >> 3) & 0x7FFFFFFF;
                do
                {
                  v12 = ITNavPoint::childAtIndex(v7, v10++);
                  ITNavPoint::addChild(*(this + 16), v12);
                }

                while (v11 != v10);
              }
            }

            ITRetain::release(v7);
          }
        }

        --*(this + 31);
      }
    }

    else if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"text"))
    {
      if (*(this + 16))
      {
        v13 = CFStringCreateWithCString(kCFAllocatorDefault, a3, 0x8000100u);
        ITNavPoint::setContentName(*(this + 16), v13);
        if (v13)
        {

          CFRelease(v13);
        }
      }
    }

    else if (ITEpubXmlParseHandler::doesNodeMatch(this, a2, @"navMap"))
    {
      *(this + 30) = 0;
    }
  }
}

atomic_uint *ITEpubNavMapParser::copyNavMap(ITEpubNavMapParser *this)
{
  result = *(this + 16);
  if (result)
  {
    ITRetain::retain(result);
    return *(this + 16);
  }

  return result;
}

const void *ITEpubNavMapParser::copyFirstChapterHref(ITEpubNavMapParser *this)
{
  result = *(this + 18);
  if (result)
  {
    CFRetain(result);
    return *(this + 18);
  }

  return result;
}

const void *ITEpubNavMapParser::copyTocPageHref(ITEpubNavMapParser *this)
{
  result = *(this + 19);
  if (result)
  {
    CFRetain(result);
    return *(this + 19);
  }

  return result;
}

id BEJavascriptProviderUniqueURLForFilename(uint64_t a1)
{
  v1 = [NSString stringWithFormat:@"%@:%@", @"ibooks-script", a1];
  v2 = [NSURL URLWithString:v1];

  return v2;
}

const __CFString *NSStringFromBEBookContentLayoutJustification(uint64_t a1)
{
  v1 = @"unset";
  if (a1 == 1)
  {
    v1 = @"full-justify";
  }

  if (a1 == 2)
  {
    return @"no-justify";
  }

  else
  {
    return v1;
  }
}

const __CFString *NSStringFromBEBookContentPreferredFontWeight(uint64_t a1)
{
  v1 = @"unset";
  if (a1 == 1)
  {
    v1 = @"light";
  }

  if (a1 == 2)
  {
    return @"heavy";
  }

  else
  {
    return v1;
  }
}

void sub_1B318(uint64_t a1)
{
  [*(a1 + 32) setObserverCount:{objc_msgSend(*(a1 + 32), "observerCount") + 1}];
  if ([*(a1 + 32) observerCount] >= 3)
  {
    v2 = _BookEPUBLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "While we can support more observers, if we get more than two it is either a bug, or an architectural change.", v4, 2u);
    }
  }

  v3 = [*(a1 + 32) _observers];
  [v3 addObject:*(a1 + 40)];
}

void sub_1B474(uint64_t a1)
{
  [*(a1 + 32) setObserverCount:{objc_msgSend(*(a1 + 32), "observerCount") - 1}];
  v2 = [*(a1 + 32) _observers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_1B5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B60C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B624(uint64_t a1)
{
  v5 = [*(a1 + 32) _observers];
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1C360(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C37C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [*(a1 + 32) allObservers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = [*(a1 + 40) _request];
          v10 = [v9 URL];
          [v8 navigationHandler:WeakRetained failedToLoadURL:v10 error:*(a1 + 48)];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void sub_1C74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C780(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [*(a1 + 32) allObservers];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 navigationHandler:*(a1 + 32) failedToLoadURL:*(a1 + 40) error:*(a1 + 48)];
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    v9 = WeakRetained[10];
    WeakRetained[10] = 0;
  }
}

void sub_1D7D4(id a1)
{
  v1 = _BookEPUBLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_INFO, "Completed handling error", v2, 2u);
  }
}

id sub_1DF24(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  [*(a1 + 32) cachedApproval:a2 forBookID:*(a1 + 40)];
  if ([*(a1 + 32) didApproveLoadingExternalContentForBookID:*(a1 + 40)])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  result = [*(a1 + 48) be_appliedContentBlockingRule];
  if (v2 && v4 != result)
  {
    v6 = +[BEContentBlockingRules sharedInstance];
    [v6 applyContentBlockingRule:v4 toWebView:*(a1 + 48) completion:&stru_328AA8];

    v7 = *(a1 + 48);
    v8 = *(a1 + 56);

    return [v7 evaluateJavaScript:v8 completionHandler:&stru_328AE8];
  }

  return result;
}

void sub_1DFE0(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (v4 || !a2)
  {
    v5 = _BookEPUBLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
    }
  }
}

void sub_1E098(id a1, id a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _BookEPUBLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Error in refreshing without blocker: %@", &v5, 0xCu);
    }
  }
}

void sub_1E148(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _BookEPUBLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Error in registering deny list url: %@, with error: %@", &v7, 0x16u);
    }
  }
}

void ITEpubNcxParser::ITEpubNcxParser(ITEpubNcxParser *this, atomic_uint *a2)
{
  ITEpubXmlParseHandler::ITEpubXmlParseHandler(this);
  *v3 = off_328B68;
  v3[16] = 0;
  v3[17] = 0;
  v3[15] = a2;
  if (a2)
  {
    ITRetain::retain(a2);
  }

  operator new();
}

void ITEpubNcxParser::~ITEpubNcxParser(ITEpubNcxParser *this)
{
  *this = off_328B68;
  v2 = *(this + 16);
  if (v2)
  {
    ITRetain::release(v2);
    *(this + 16) = 0;
  }

  v3 = *(this + 17);
  if (v3)
  {
    ITRetain::release(v3);
    *(this + 17) = 0;
  }

  v4 = *(this + 15);
  if (v4)
  {
    ITRetain::release(v4);
    *(this + 15) = 0;
  }

  ITEpubXmlParseHandler::~ITEpubXmlParseHandler(this);
}

{
  ITEpubNcxParser::~ITEpubNcxParser(this);

  operator delete();
}

uint64_t ITEpubNcxParser::SetXmlPath(ITEpubNcxParser *this, const __CFString *a2)
{
  ITEpubXmlParseHandler::SetXmlPath(this, a2);
  (*(**(this + 16) + 48))(*(this + 16), *(this + 7));
  v3 = *(**(this + 17) + 48);

  return v3();
}

void ITEpubNcxParser::StartElement(CFMutableArrayRef *this, const __CFString *a2, const __CFDictionary *a3)
{
  ITEpubXmlParseHandler::StartElement(this, a2, a3);
  ITEpubNavMapParser::StartNode(this[16], a2, a3);
  v6 = this[17];

  ITEpubPageListParser::StartNode(v6, a2, a3);
}

void ITEpubNcxParser::EndElement(ITEpubNcxParser *this, const __CFString *a2)
{
  v4 = *(this + 16);
  v5 = this + 72;
  v6 = this + 72;
  if (*(this + 95) < 0)
  {
    v6 = *v5;
  }

  ITEpubNavMapParser::EndNode(v4, a2, v6);
  if (*(this + 95) < 0)
  {
    v5 = *v5;
  }

  ITEpubPageListParser::EndNode(*(this + 17), a2, v5);

  ITEpubXmlParseHandler::EndElement(this, a2);
}

uint64_t BEIsInternalInstall()
{
  if (qword_36AB58 != -1)
  {
    sub_263A70();
  }

  return byte_36AB50;
}

uint64_t BEShouldEnableDeveloperExtrasSettings(char a1)
{
  if (a1)
  {
    v1 = 1;
  }

  else
  {
    if (qword_36AB58 != -1)
    {
      sub_263A70();
    }

    v1 = byte_36AB50;
  }

  return v1 & 1;
}

id BEAlwaysFullParseEPUB()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 BOOLForKey:@"_BEAlwaysFullParse"];

  return v1;
}

void sub_1EBD4(id a1)
{
  v3 = [NSCharacterSet characterSetWithCharactersInString:@"=, !$&'()*+@?\n<>\t :"];;
  v1 = [v3 invertedSet];
  v2 = qword_36AB60;
  qword_36AB60 = v1;
}

void sub_1EFD0(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v9];
  v7 = v5;
  v8 = v7;
  if (v6)
  {
    v8 = (v6)[2](v6, v7, *(a1 + 40));
  }

  [*(a1 + 48) addResult:v8 forKey:v9];
}

void sub_208BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _BookEPUBLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v12 = *(a1 + 48);
      v9 = [NSValue valueWithBytes:&v12 objCType:"{CGPoint=dd}"];
      *buf = 138412802;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Failed to set offset of WebView:%@ to %@ - %@", buf, 0x20u);
    }
  }

  v10 = objc_retainBlock(*(a1 + 40));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10);
  }
}

void sub_219C0(id *a1)
{
  v2 = objc_alloc_init(BEEvaluateJavaScriptContext);
  v3 = objc_retainBlock(a1[5]);
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v2);
  }

  v5 = [(BEEvaluateJavaScriptContext *)v2 scripts];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(BEEvaluateJavaScriptContext *)v2 _jsonRepresentation];
    v8 = [@"((blocks) => {   const results = {}   for (const [name block] of Object.entries(blocks)) {      let result = block();      results[name] = result ? result :{"stringByReplacingOccurrencesOfString:withString:", @"__arguments__", v7} '';   }   return results;})({__arguments__});"];;

    v9 = _BookEPUBLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [a1[4] be_identifier];
      v11 = [a1[4] URL];
      *buf = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Begin executing JS on %{public}@ %@", buf, 0x16u);
    }

    v12 = a1[4];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_21BE8;
    v15[3] = &unk_328C78;
    v15[4] = v12;
    v16 = v2;
    v17 = a1[6];
    [v12 evaluateJavaScript:v8 completionHandler:v15];
  }

  else
  {
    v13 = objc_retainBlock(a1[6]);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 0);
    }
  }
}

void sub_21BE8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _BookEPUBLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [a1[4] be_identifier];
    v9 = [a1[4] URL];
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "End executing JS on %{public}@ %@", &v16, 0x16u);
  }

  if (v6)
  {
    v10 = _BookEPUBLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v16 = 138543362;
      v17 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_FAULT, "multi-js evaluation failure - %{public}@", &v16, 0xCu);
    }
  }

  objc_opt_class();
  v11 = BUDynamicCast();
  if (v11)
  {
    v12 = [a1[5] _transformResults:v11 error:v6];
  }

  else
  {
    v13 = _BookEPUBLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v16 = 138543362;
      v17 = v5;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_FAULT, "Unexpected javascript result type for be_evaluateJavaScript - %{public}@", &v16, 0xCu);
    }

    v12 = 0;
  }

  v14 = objc_retainBlock(a1[6]);
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, v12);
  }
}

const char *ITFileUtil::GetSize(const __CFString *this, const __CFString *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  ITStrUtil::toString(this, __p);
  if (v7 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  Size = ITFileUtil::GetSize(v3, v2);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return Size;
}

void sub_2201C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *ITFileUtil::GetSize(const char *this, const unsigned __int8 *a2)
{
  memset(&v2, 0, sizeof(v2));
  if (this)
  {
    if (!*this || stat(this, &v2) || (v2.st_mode & 0xF000) == 0x4000)
    {
      return 0;
    }

    else
    {
      return v2.st_size;
    }
  }

  return this;
}

uint64_t ITFileUtil::slurp(const __CFString *this, __CFString *a2, char **a3, unint64_t *a4)
{
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  ITStrUtil::toString(this, __p);
  if (v11 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = ITFileUtil::slurp(v7, a2, a3, v6);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_2211C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ITFileUtil::slurp(ITFileUtil *this, unsigned __int8 *a2, char **a3, unint64_t *a4)
{
  v20 = off_328D48;
  v21 = 0u;
  v22 = 0u;
  if (!this || !a3 || !a2 || !*this)
  {
    v12 = _BookEPUBLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (this)
      {
        v13 = *this;
      }

      else
      {
        v13 = 0;
      }

      *buf = 134218752;
      *&buf[4] = this;
      *&buf[12] = 1024;
      *&buf[14] = v13;
      v24 = 2048;
      v25 = a2;
      v26 = 2048;
      v27 = a3;
      v9 = "Illegal input: %p [%02x], %p, %p";
      v10 = v12;
      v11 = 38;
      goto LABEL_14;
    }

LABEL_15:
    v14 = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  Size = ITFileUtil::GetSize(this, a2);
  if (!Size)
  {
    goto LABEL_15;
  }

  if (ITFileUtil::OpenToRead(&v20, this))
  {
    v8 = _BookEPUBLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = this;
      v9 = "ITFileUtil Failure OpenToRead: [%s]";
      v10 = v8;
      v11 = 12;
LABEL_14:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v16 = malloc_type_malloc((Size + 1), 0x100004077774924uLL);
  *a2 = v16;
  if (v16)
  {
    bzero(v16, (Size + 1));
    *buf = 0;
    ITFileUtil::Read(&v20, *a2, Size, buf);
    if (*buf != Size)
    {
      v17 = _BookEPUBLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "ITFileUtil::slurp didread != file_size, assuming 0 file size", v19, 2u);
      }

      Size = 0;
    }

    v14 = 0;
  }

  else
  {
    v18 = _BookEPUBLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *&buf[4] = Size;
      *&buf[8] = 2080;
      *&buf[10] = this;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Mem error: %d [%s]", buf, 0x12u);
    }

    v14 = 0xFFFFFFFFLL;
  }

  *a3 = Size;
LABEL_16:
  ITFileUtil::~ITFileUtil(&v20);
  return v14;
}

void sub_223BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ITFileUtil::~ITFileUtil(va);
  _Unwind_Resume(a1);
}

void ITFileUtil::ITFileUtil(ITFileUtil *this)
{
  *this = off_328D48;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
}

{
  *this = off_328D48;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
}

uint64_t ITFileUtil::OpenToRead(ITFileUtil *this, std::string::value_type *__s)
{
  if (*(this + 1))
  {
    v3 = _BookEPUBLog();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    v4 = *__error();
    v10 = 136315394;
    v11 = __s;
    v12 = 1024;
    v13 = v4;
    v5 = "OpenToRead In Use: [%s] [%d]";
LABEL_4:
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, v5, &v10, 0x12u);
    return 0xFFFFFFFFLL;
  }

  std::string::assign((this + 16), __s);
  v8 = fopen(__s, "rb");
  *(this + 1) = v8;
  if (!v8)
  {
    if (*__error() == 2)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = _BookEPUBLog();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    v9 = *__error();
    v10 = 136315394;
    v11 = __s;
    v12 = 1024;
    v13 = v9;
    v5 = "OpenToRead fopen Failed: [%s] [%d]";
    goto LABEL_4;
  }

  return 0;
}

uint64_t ITFileUtil::Read(ITFileUtil *this, void *__ptr, size_t a3, unint64_t *a4)
{
  v6 = *(this + 1);
  if (v6)
  {
    v7 = fread(__ptr, 1uLL, a3, v6);
    v8 = ferror(*(this + 1));
    v9 = v8 == 0;
    if (v8)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
    }

    if (a4)
    {
      if (v9)
      {
        v11 = v7;
      }

      else
      {
        v11 = 0;
      }

      *a4 = v11;
    }
  }

  else
  {
    v12 = _BookEPUBLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = (this + 16);
      if (*(this + 39) < 0)
      {
        v13 = *v13;
      }

      v14 = 136315138;
      v15 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Read not opened [%s]", &v14, 0xCu);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void ITFileUtil::~ITFileUtil(void **this)
{
  *this = off_328D48;
  if (this[1])
  {
    ITFileUtil::Close(this);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  ITFileUtil::~ITFileUtil(this);

  operator delete();
}

uint64_t ITFileUtil::Close(ITFileUtil *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    fclose(v2);
    result = 0;
    *(this + 1) = 0;
  }

  else
  {
    v4 = _BookEPUBLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = (this + 16);
      if (*(this + 39) < 0)
      {
        v5 = *v5;
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Close not opened [%s]", &v6, 0xCu);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ITFileUtil::Create(ITFileUtil *this, std::string::value_type *__s)
{
  if (*(this + 1))
  {
    v3 = _BookEPUBLog();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    v4 = *__error();
    v10 = 136315394;
    v11 = __s;
    v12 = 1024;
    v13 = v4;
    v5 = "Create File already in Use: [%s] [%d]";
LABEL_4:
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, v5, &v10, 0x12u);
    return 0xFFFFFFFFLL;
  }

  std::string::assign((this + 16), __s);
  v8 = fopen(__s, "w+b");
  *(this + 1) = v8;
  if (!v8)
  {
    if (*__error() == 2)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = _BookEPUBLog();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    v9 = *__error();
    v10 = 136315394;
    v11 = __s;
    v12 = 1024;
    v13 = v9;
    v5 = "Create fopen Failed: [%s] [%d]";
    goto LABEL_4;
  }

  return 0;
}

uint64_t ITFileUtil::OpenToAppend(ITFileUtil *this, std::string::value_type *__s)
{
  if (*(this + 1))
  {
    v3 = _BookEPUBLog();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    v4 = *__error();
    v10 = 136315394;
    v11 = __s;
    v12 = 1024;
    v13 = v4;
    v5 = "OpenToAppend In Use: [%s] [%d]";
LABEL_4:
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, v5, &v10, 0x12u);
    return 0xFFFFFFFFLL;
  }

  std::string::assign((this + 16), __s);
  v8 = fopen(__s, "a+b");
  *(this + 1) = v8;
  if (!v8)
  {
    if (*__error() == 2)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = _BookEPUBLog();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    v9 = *__error();
    v10 = 136315394;
    v11 = __s;
    v12 = 1024;
    v13 = v9;
    v5 = "OpenToAppend Failed: [%s] [%d]";
    goto LABEL_4;
  }

  return 0;
}

uint64_t ITFileUtil::GetPosition(ITFileUtil *this)
{
  v2 = *(this + 1);
  if (v2)
  {

    return ftell(v2);
  }

  else
  {
    v4 = _BookEPUBLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = (this + 16);
      if (*(this + 39) < 0)
      {
        v5 = *v5;
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "GetPosition not opened: [%s]", &v6, 0xCu);
    }

    return -1;
  }
}

uint64_t ITFileUtil::SeekTo(ITFileUtil *this, uint64_t a2)
{
  v2 = a2;
  v4 = *(this + 1);
  if (!v4)
  {
    v10 = _BookEPUBLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = (this + 16);
      if (*(this + 39) < 0)
      {
        v11 = *v11;
      }

      v14 = 67109378;
      v15 = v2;
      v16 = 2080;
      v17 = v11;
      v8 = "SeekTo not opened: [%d] [%s]";
      v9 = v10;
      goto LABEL_11;
    }

    return -1;
  }

  if (fseek(v4, a2, 0))
  {
    v5 = _BookEPUBLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *__error();
      v7 = (this + 16);
      if (*(this + 39) < 0)
      {
        v7 = *v7;
      }

      v14 = 67109378;
      v15 = v6;
      v16 = 2080;
      v17 = v7;
      v8 = "SeekTo Failed: %08x [%s]";
      v9 = v5;
LABEL_11:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, v8, &v14, 0x12u);
      return -1;
    }

    return -1;
  }

  v13 = *(this + 1);

  return ftell(v13);
}

uint64_t ITFileUtil::SeekEnd(ITFileUtil *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    v9 = _BookEPUBLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = (this + 16);
      if (*(this + 39) < 0)
      {
        v10 = *v10;
      }

      v13 = 136315138;
      v14[0] = v10;
      v6 = "SeekEnd not opened: [%s]";
      v7 = v9;
      v8 = 12;
      goto LABEL_11;
    }

    return -1;
  }

  if (fseek(v2, 0, 2))
  {
    v3 = _BookEPUBLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *__error();
      v5 = (this + 16);
      if (*(this + 39) < 0)
      {
        v5 = *v5;
      }

      v13 = 67109378;
      LODWORD(v14[0]) = v4;
      WORD2(v14[0]) = 2080;
      *(v14 + 6) = v5;
      v6 = "SeekEnd Failed: %08x [%s]";
      v7 = v3;
      v8 = 18;
LABEL_11:
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, v6, &v13, v8);
      return -1;
    }

    return -1;
  }

  v12 = *(this + 1);

  return ftell(v12);
}

uint64_t ITFileUtil::Write(ITFileUtil *this, const void *__ptr, size_t a3, unint64_t *a4)
{
  v6 = *(this + 1);
  if (v6)
  {
    v7 = fwrite(__ptr, 1uLL, a3, v6);
    result = ferror(*(this + 1));
    if (result)
    {
      v9 = _BookEPUBLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = (this + 16);
        if (*(this + 39) < 0)
        {
          v10 = *v10;
        }

        v11 = ferror(*(this + 1));
        v14 = 136315394;
        v15 = v10;
        v16 = 1024;
        v17 = v11;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Write error writing:[%s] error:%d", &v14, 0x12u);
      }

      v7 = 0;
      result = 0xFFFFFFFFLL;
    }

    if (a4)
    {
      *a4 = v7;
    }
  }

  else
  {
    v12 = _BookEPUBLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = (this + 16);
      if (*(this + 39) < 0)
      {
        v13 = *v13;
      }

      v14 = 136315138;
      v15 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Write not opened [%s]", &v14, 0xCu);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

const __CFString *ITFileUtil::hasTrailingSlash(const __CFString *this, const __CFString *a2)
{
  if (this)
  {
    v2 = this;
    this = CFStringGetLength(this);
    if (this)
    {
      return (CFStringGetCharacterAtIndex(v2, &this[-1].length + 7) == 47);
    }
  }

  return this;
}

char *ITFileUtil::createMd5String(const __CFString *this, const __CFString *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  ITStrUtil::toString(this, __p);
  if (v7 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  Md5String = ITFileUtil::createMd5String(v3, v2);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return Md5String;
}

void sub_2305C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *ITFileUtil::createMd5String(ITFileUtil *this, const unsigned __int8 *a2)
{
  v12 = off_328D48;
  v13 = 0u;
  v14 = 0u;
  if (!this || !*this)
  {
LABEL_19:
    Size = 0;
    goto LABEL_20;
  }

  Size = ITFileUtil::GetSize(this, a2);
  if (Size)
  {
    if (ITFileUtil::OpenToRead(&v12, this))
    {
      v4 = _BookEPUBLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        buf.A = 136315138;
        *&buf.B = this;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "createMd5String Failure: [%s]", &buf, 0xCu);
      }

      goto LABEL_19;
    }

    CC_MD5_Init(&buf);
    v5 = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
    if (Size <= 0x10000)
    {
LABEL_10:
      v6 = 1;
    }

    else
    {
      while (1)
      {
        *bytes = 0;
        ITFileUtil::Read(&v12, v5, 0x10000uLL, bytes);
        if (*bytes != 0x10000)
        {
          break;
        }

        CC_MD5_Update(&buf, v5, 0x10000u);
        Size -= 0x10000;
        if (Size < 0x10001)
        {
          goto LABEL_10;
        }
      }

      v6 = 0;
    }

    *bytes = 0;
    ITFileUtil::Read(&v12, v5, Size, bytes);
    if (*bytes == Size)
    {
      CC_MD5_Update(&buf, v5, Size);
    }

    else
    {
      v6 = 0;
    }

    CC_MD5_Final(md, &buf);
    free(v5);
    if (!v6)
    {
      goto LABEL_19;
    }

    v7 = 0;
    v17 = 0;
    *bytes = 0u;
    v16 = 0u;
    v8 = md;
    do
    {
      v9 = *v8++;
      v10 = &bytes[v7];
      *v10 = a0123456789abcd[v9 >> 4];
      v10[1] = a0123456789abcd[v9 & 0xF];
      v7 += 2;
    }

    while (v7 != 32);
    Size = CFStringCreateWithBytes(0, bytes, 32, 0x600u, 0);
  }

LABEL_20:
  ITFileUtil::~ITFileUtil(&v12);
  return Size;
}

void sub_232C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ITFileUtil::~ITFileUtil(va);
  _Unwind_Resume(a1);
}

CFStringRef ITFileUtil::createFastFileHash(const __CFString *this, const __CFString *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  ITStrUtil::toString(this, __p);
  if (v7 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  FastFileHash = ITFileUtil::createFastFileHash(v3, v2);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return FastFileHash;
}

void sub_23350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef ITFileUtil::createFastFileHash(std::string::value_type *__s, const unsigned __int8 *a2)
{
  v15 = off_328D48;
  v16 = 0u;
  v17 = 0u;
  if (!__s || !*__s || ITFileUtil::OpenToRead(&v15, __s))
  {
LABEL_4:
    v4 = 0;
    goto LABEL_5;
  }

  Size = ITFileUtil::GetSize(__s, v3);
  v8 = Size;
  if (Size < 0x10000)
  {
    Md5String = ITFileUtil::createMd5String(__s, v7);
    if (Md5String)
    {
      v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%llu-%@", v8, Md5String);
      CFRelease(Md5String);
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = 0;
  if (Size > 0x80000)
  {
    v10 = 0x8000;
  }

  else
  {
    v10 = 4096;
  }

  v11 = 12;
  do
  {
    ITFileUtil::SeekTo(&v15, v10);
    v13 = 0;
    __ptr = 0;
    ITFileUtil::Read(&v15, &__ptr, 8uLL, &v13);
    v9 = __ptr ^ __ROR8__(v9, 56);
    if (v11 < 2)
    {
      break;
    }

    v10 *= 2;
    --v11;
  }

  while (v10 < v8);
  v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%llu-%llu", v8, v9);
LABEL_5:
  ITFileUtil::~ITFileUtil(&v15);
  return v4;
}