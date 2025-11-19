void sub_1030(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1E160;
  qword_1E160 = v1;
}

id sub_1D10(uint64_t a1)
{
  v1 = [*(a1 + 32) plugIn];
  v2 = [v1 isPad];

  return v2;
}

NSURL *__cdecl sub_1D5C(id a1, NSString *a2)
{
  v2 = MFCreateURLForContentID();

  return v2;
}

double sub_1D88(uint64_t a1)
{
  v1 = [*(a1 + 32) plugIn];
  [v1 defaultComposeFontPixelSize];
  v3 = v2;

  return v3;
}

id sub_1DDC(uint64_t a1)
{
  v1 = [*(a1 + 32) plugIn];
  v2 = [v1 defaultComposeFontFamily];

  return v2;
}

MFMimeCharset *__cdecl sub_1E3C(id a1, NSString *a2, JSValue *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(JSValue *)v5 isNumber])
  {
    v6 = [(JSValue *)v5 toNumber];
    v7 = CFStringConvertNSStringEncodingToEncoding([v6 unsignedIntegerValue]);

    if (v7 == 134217984)
    {
      v8 = [MFMimeCharset charsetForEncoding:134217984];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  v8 = [(NSString *)v4 mf_bestMimeCharsetUsingHint:v7];
LABEL_6:
  v9 = v8;

  return v9;
}

NSArray *__cdecl sub_1F1C(id a1)
{
  v1 = +[JSContext currentThis];
  v2 = +[JSContext currentContext];
  v3 = [WKWebProcessPlugInRangeHandle rangeHandleWithJSValue:v1 inContext:v2];
  v4 = [v3 detectDataWithTypes:2 context:&__NSDictionary0__struct];

  return v4;
}

void sub_1FBC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL sub_1FE8(id a1)
{
  v1 = +[JSContext currentThis];
  v2 = [v1 toString];
  v3 = [v2 ec_isAttribution];

  return v3;
}

BOOL sub_205C(id a1)
{
  v1 = +[JSContext currentThis];
  v2 = [v1 toString];
  v3 = [v2 ec_isForwardSeparator];

  return v3;
}

void sub_2560(_Unwind_Exception *a1)
{
  objc_destroyWeak((v8 + 32));
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v9 - 200));

  _Unwind_Resume(a1);
}

void sub_2630(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained[6] isEqualToArray:v6] & 1) == 0)
  {
    objc_storeStrong(WeakRetained + 6, a2);
    v5 = [WeakRetained observerProxy];
    [v5 selectedAttachmentIdentifiersDidChange:v6];
  }
}

void sub_26F4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained observerProxy];
  [v4 attachmentTapped:v5];
}

void sub_278C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained observerProxy];
  [v3 composeBodyFieldSelectionContainsLinkStateDidChange:a2];
}

void sub_280C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained observerProxy];
  [v1 composeBodyFieldSelectedLinkTextDidChange];
}

id sub_2884(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = +[JSContext currentContext];
  v3 = [JSValue valueWithBool:v1 inContext:v2];

  return v3;
}

void sub_2914(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _setDirty:{objc_msgSend(v3, "toBool")}];
}

id sub_317C(uint64_t a1)
{
  v2 = [*(a1 + 32) jsBodyField];
  v3 = [v2 invokeMethod:@"bodyInnerHTML" withArguments:&__NSArray0__struct];
  v4 = [v3 toString];
  v5 = [v4 caseInsensitiveCompare:*(a1 + 40)] == 0;

  return [*(a1 + 32) _addMarkupString:*(a1 + 48) quote:*(a1 + 80) emptyFirst:v5 prepended:v5 composeType:*(a1 + 72) attachmentInfoByURL:*(a1 + 56) completionHandler:*(a1 + 64)];
}

void sub_33F8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) jsBodyField];
  [v2 setObject:v1 forKeyedSubscript:@"_replacementFilenamesByContentID"];
}

void sub_3524(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) jsBodyField];
  v2 = [v3 invokeMethod:@"containsRichText" withArguments:&__NSArray0__struct];
  (*(v1 + 16))(v1, [v2 toBool]);
}

void sub_36AC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) jsBodyField];
  v7 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 invokeMethod:@"plainTextContent" withArguments:v4];
  v6 = [v5 toArray];
  (*(v2 + 16))(v2, v6);
}

void sub_38B8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) jsBodyField];
  v7 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 invokeMethod:@"htmlString" withArguments:v4];
  v6 = [v5 toString];
  (*(v2 + 16))(v2, v6);
}

void sub_3AC8(uint64_t a1)
{
  v2 = [*(a1 + 32) jsBodyField];
  v3 = [NSNumber numberWithBool:*(a1 + 56)];
  v4 = *(a1 + 40);
  v21[0] = v3;
  v21[1] = v4;
  v5 = [NSArray arrayWithObjects:v21 count:2];
  v6 = [v2 invokeMethod:@"htmlStringsAttachmentURLsEncodingsAndPlainTextAlternative" withArguments:v5];

  v7 = [v6 objectForKeyedSubscript:@"topLevelHTMLString"];
  v8 = sub_3E24(v7);

  v9 = [v6 objectForKeyedSubscript:@"otherHTMLStringsAndAttachmentURLs"];
  if ([v9 isArray])
  {
    v10 = [v9 objectForKeyedSubscript:@"length"];
    v11 = [v10 toUInt32];

    v12 = v11;
    v13 = [[NSMutableArray alloc] initWithCapacity:v11];
    if (v11)
    {
      v14 = 0;
      do
      {
        v15 = [v9 objectAtIndexedSubscript:v14];
        if ([v15 isString])
        {
          [v15 toString];
        }

        else
        {
          sub_3E24(v15);
        }
        v16 = ;
        [v13 addObject:v16];

        ++v14;
      }

      while (v12 != v14);
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = [v6 objectForKeyedSubscript:@"quotedAttachmentsCIDs"];
  v18 = [v17 toArray];

  v19 = [v6 objectForKeyedSubscript:@"stringsAndQuoteLevels"];
  v20 = [v19 toArray];

  (*(*(a1 + 48) + 16))();
}

id sub_3E24(void *a1)
{
  v1 = a1;
  if ([v1 isObject])
  {
    v2 = [v1 objectForKeyedSubscript:@"string"];
    v3 = [v2 toObject];

    if (v3)
    {
      v4 = [v1 objectForKeyedSubscript:@"charset"];
      v5 = [v4 toObject];

      v6 = [[ECHTMLStringAndMIMECharset alloc] initWithString:v3 charset:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_40D0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4 = [*(a1 + 32) jsBodyField];
  v2 = [v4 invokeMethod:@"getCaretPosition" withArguments:&__NSArray0__struct];
  v3 = [v2 toNumber];
  (*(v1 + 16))(v1, v3);
}

void sub_4290(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) jsBodyField];
  v4 = [NSNumber numberWithBool:*(a1 + 56)];
  v5 = [NSNumber numberWithBool:*(a1 + 57), v4];
  v6 = *(a1 + 40);
  v10[1] = v5;
  v10[2] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:3];
  v8 = [v3 invokeMethod:@"insertAttachment" withArguments:v7];
  v9 = [v8 toString];
  (*(v2 + 16))(v2, v9);
}

void sub_44F4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) jsBodyField];
  v7 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 invokeMethod:@"countDuplicatedAttachments" withArguments:v4];
  v6 = [v5 toNumber];
  (*(v2 + 16))(v2, v6);
}

void sub_4700(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) jsBodyField];
  v7 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 invokeMethod:@"replaceFilenamePlaceholderWithImage" withArguments:v4];
  v6 = [v5 toString];
  (*(v2 + 16))(v2, v6);
}

void sub_49E4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) jsBodyField];
  v7 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 invokeMethod:@"replaceRichLinkPlaceholderImage" withArguments:v4];
  v6 = [v5 toString];
  (*(v2 + 16))(v2, v6);
}

uint64_t sub_4BEC(uint64_t a1)
{
  v2 = [*(a1 + 32) jsBodyField];
  v6 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4 = [v2 invokeMethod:@"removeMediaAttachment" withArguments:v3];

  return (*(*(a1 + 48) + 16))();
}

void sub_4DBC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) jsBodyField];
  v7 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 invokeMethod:@"displayAttachmentWithIdentifierAsSinglePagePDF" withArguments:v4];
  v6 = [v5 toString];
  (*(v2 + 16))(v2, v6);
}

void sub_5B28(_Unwind_Exception *a1)
{
  v9 = v6;

  _Unwind_Resume(a1);
}

id sub_61D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 frame];
  v5 = [v4 jsNodeForNodeHandle:v3 inWorld:*(a1 + 32)];

  return v5;
}

void sub_6844(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_68EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MessageBodyDOMQuoteSubparser;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_6DD4(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Blocked request for %{public}@", buf, 0xCu);
}