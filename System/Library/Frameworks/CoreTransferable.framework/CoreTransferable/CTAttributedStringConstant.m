@interface CTAttributedStringConstant
+ (NSString)documentType;
+ (NSString)html;
+ (NSString)rtf;
+ (NSString)rtfd;
+ (void)documentType;
@end

@implementation CTAttributedStringConstant

+ (NSString)documentType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getNSDocumentTypeDocumentAttributeSymbolLoc_ptr;
  v9 = getNSDocumentTypeDocumentAttributeSymbolLoc_ptr;
  if (!getNSDocumentTypeDocumentAttributeSymbolLoc_ptr)
  {
    v3 = UIFoundationLibrary();
    v7[3] = dlsym(v3, "NSDocumentTypeDocumentAttribute");
    getNSDocumentTypeDocumentAttributeSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    +[CTAttributedStringConstant documentType];
  }

  v4 = *v2;

  return v4;
}

+ (NSString)rtf
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getNSRTFTextDocumentTypeSymbolLoc_ptr;
  v9 = getNSRTFTextDocumentTypeSymbolLoc_ptr;
  if (!getNSRTFTextDocumentTypeSymbolLoc_ptr)
  {
    v3 = UIFoundationLibrary();
    v7[3] = dlsym(v3, "NSRTFTextDocumentType");
    getNSRTFTextDocumentTypeSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    +[CTAttributedStringConstant documentType];
  }

  v4 = *v2;

  return v4;
}

+ (NSString)rtfd
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getNSRTFDTextDocumentTypeSymbolLoc_ptr;
  v9 = getNSRTFDTextDocumentTypeSymbolLoc_ptr;
  if (!getNSRTFDTextDocumentTypeSymbolLoc_ptr)
  {
    v3 = UIFoundationLibrary();
    v7[3] = dlsym(v3, "NSRTFDTextDocumentType");
    getNSRTFDTextDocumentTypeSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    +[CTAttributedStringConstant documentType];
  }

  v4 = *v2;

  return v4;
}

+ (NSString)html
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getNSHTMLTextDocumentTypeSymbolLoc_ptr;
  v9 = getNSHTMLTextDocumentTypeSymbolLoc_ptr;
  if (!getNSHTMLTextDocumentTypeSymbolLoc_ptr)
  {
    v3 = UIFoundationLibrary();
    v7[3] = dlsym(v3, "NSHTMLTextDocumentType");
    getNSHTMLTextDocumentTypeSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    +[CTAttributedStringConstant documentType];
  }

  v4 = *v2;

  return v4;
}

+ (void)documentType
{
  dlerror();
  abort_report_np();
  JSONDecoder.init()();
}

@end