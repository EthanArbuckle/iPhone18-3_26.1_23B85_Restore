@interface CRLWPHyperlinkField
+ (BOOL)schemeIsValidForURL:(id)a3;
+ (BOOL)schemeIsValidForURLReference:(id)a3;
+ (id)defaultFileURL;
+ (id)invalidURLSchemes;
+ (id)newURLFromURLReference:(id)a3;
+ (id)urlWithEmailAddress:(id)a3 subject:(id)a4;
+ (int64_t)schemeFromURL:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CRLWPHyperlinkField)initWithURL:(id)a3 range:(_NSRange)a4 displayText:(id)a5 uuidString:(id)a6;
- (NSString)filePath;
- (NSString)fullPath;
- (NSString)urlPrefix;
- (NSURL)url;
- (_NSRange)range;
- (int64_t)scheme;
- (unint64_t)hash;
@end

@implementation CRLWPHyperlinkField

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

+ (int64_t)schemeFromURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 scheme];
    v6 = [v5 lowercaseString];

    if (v6)
    {
      if ([v6 isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"https"))
      {
        v7 = 0;
      }

      else if ([v6 isEqualToString:@"file"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"keynote"))
      {
        v7 = 1;
      }

      else if ([v6 isEqualToString:@"mailto"])
      {
        v7 = 2;
      }

      else if ([v6 isEqualToString:@"tel"])
      {
        v7 = 3;
      }

      else if ([v6 isEqualToString:@"pages"])
      {
        v7 = 5;
      }

      else if ([v6 isEqualToString:@"rdar"])
      {
        v7 = 8;
      }

      else
      {
        v7 = 11;
      }
    }

    else
    {
      v8 = [v4 absoluteString];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 rangeOfString:@"#"];
        v11 = [v9 rangeOfString:@"?slide"];
        v12 = [v9 hasPrefix:@"?sectionid="];
        v13 = [v9 rangeOfString:@"?sheetid="];
        v14 = [v9 rangeOfString:@"?action=retreat"];
        v15 = [v9 rangeOfString:@"?action=exitpresentation"];
        v16 = 11;
        if (!v10)
        {
          v16 = 4;
        }

        if (!v11)
        {
          v16 = 6;
        }

        if (v12)
        {
          v16 = 9;
        }

        if (!v13)
        {
          v16 = 10;
        }

        if (!v14)
        {
          v16 = 6;
        }

        if (v15)
        {
          v7 = v16;
        }

        else
        {
          v7 = 7;
        }
      }

      else
      {
        v7 = 11;
      }
    }
  }

  else
  {
    v7 = 11;
  }

  return v7;
}

+ (id)invalidURLSchemes
{
  if (qword_101A34BF8 != -1)
  {
    sub_101351BD0();
  }

  v3 = qword_101A34BF0;

  return v3;
}

+ (BOOL)schemeIsValidForURL:(id)a3
{
  v3 = a3;
  v4 = +[CRLWPHyperlinkField invalidURLSchemes];
  v5 = [v3 scheme];
  v6 = [v5 lowercaseString];

  if (v6)
  {
    v7 = [v4 member:v6];
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)schemeIsValidForURLReference:(id)a3
{
  v3 = a3;
  v4 = [[NSURL alloc] initWithString:v3];
  if (v4)
  {
    v5 = [objc_opt_class() schemeIsValidForURL:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)urlWithEmailAddress:(id)a3 subject:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v12 = 0;
    goto LABEL_14;
  }

  v7 = +[NSCharacterSet URLFragmentAllowedCharacterSet];
  v8 = [v7 mutableCopy];

  [v8 removeCharactersInString:@"&?"];
  v9 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v8];
  if (![v9 length])
  {
    goto LABEL_12;
  }

  if (v6 && [v6 length])
  {
    [v8 addCharactersInString:@"?"];
    v10 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v8];
    if ([v10 length])
    {
      v11 = [[NSString alloc] initWithFormat:@"mailto:%@?subject=%@", v9, v10];
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = [[NSString alloc] initWithFormat:@"mailto:%@", v9];
    if (!v11)
    {
LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }
  }

  v12 = [[NSURL alloc] initWithString:v11];

LABEL_13:
LABEL_14:

  return v12;
}

+ (id)defaultFileURL
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"DefaultFileURL"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 length])
  {
    v4 = [NSURL crl_fileURLWithPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)newURLFromURLReference:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = [[NSURL alloc] initWithString:v3];
  if (!v4)
  {
    v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101351BE4();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101351BF8(v3, v5, v6);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101351CB4();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = +[CRLAssertionHandler packedBacktraceString];
      sub_101318C3C(v8, buf, v5, v7);
    }

    v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPHyperlinkField newURLFromURLReference:]");
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPHyperlinkField.mm"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:171 isFatal:0 description:"Failed to create an NSURL from %@", v3];

    if ([v3 hasPrefix:@"mailto:"])
    {
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"mailto:no_reply@apple.com" value:0 table:0];
      v4 = [NSURL URLWithString:v12];

      goto LABEL_14;
    }

LABEL_13:
    v4 = 0;
  }

LABEL_14:

  return v4;
}

- (CRLWPHyperlinkField)initWithURL:(id)a3 range:(_NSRange)a4 displayText:(id)a5 uuidString:(id)a6
{
  length = a4.length;
  location = a4.location;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CRLWPHyperlinkField;
  v15 = [(CRLWPHyperlinkField *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_url, a3);
    v16->_range.location = location;
    v16->_range.length = length;
    objc_storeStrong(&v16->_displayText, a5);
    [(CRLWPSmartField *)v16 setTextAttributeUUIDString:v14];
  }

  return v16;
}

- (NSURL)url
{
  v3 = self->_url;
  if (!v3)
  {
    v4 = [(CRLWPHyperlinkField *)self range];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = 0;
    }

    else
    {
      v6 = v4;
      v7 = v5;
      v8 = objc_opt_class();
      v9 = [(CRLWPSmartField *)self parentStorage];
      v10 = [v9 substringWithRange:{v6, v7}];
      v3 = [v8 newURLFromURLReference:v10];
    }
  }

  return v3;
}

- (int64_t)scheme
{
  v3 = objc_opt_class();
  v4 = [(CRLWPHyperlinkField *)self url];
  v5 = [v3 schemeFromURL:v4];

  return v5;
}

- (NSString)urlPrefix
{
  v2 = [(NSURL *)self->_url absoluteString];
  v3 = v2;
  if (!v2 || ((v4 = [v2 length], v5 = objc_msgSend(v3, "crlwp_findIndexOfCharacter:range:", 58, 0, v4), (v6 = v5) != 0) ? (v7 = v5 == 0x7FFFFFFFFFFFFFFFLL) : (v7 = 1), v7 || v5 >= objc_msgSend(v3, "crlwp_findIndexOfCharacter:range:", 47, 0, v4) || v6 >= objc_msgSend(v3, "crlwp_findIndexOfCharacter:range:", 63, 0, v4) || v6 >= objc_msgSend(v3, "crlwp_findIndexOfCharacter:range:", 35, 0, v4)))
  {
    v8 = &stru_1018BCA28;
  }

  else
  {
    v8 = [v3 substringWithRange:{0, v6}];
  }

  return v8;
}

- (NSString)filePath
{
  v2 = [(CRLWPHyperlinkField *)self url];
  if ([(__CFURL *)v2 isFileURL])
  {
    v3 = CFURLCopyFileSystemPath(v2, kCFURLPOSIXPathStyle);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)fullPath
{
  v2 = [(CRLWPHyperlinkField *)self filePath];
  v3 = v2;
  if (v2 && ([v2 isAbsolutePath] & 1) == 0)
  {
    v4 = [@"~" stringByExpandingTildeInPath];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 stringByAppendingPathComponent:v3];

      v3 = v6;
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, v4);
    if (v6 && [(NSString *)self->_urlString isEqual:v6[10]])
    {
      v7 = [(CRLWPSmartField *)self textAttributeUUIDString];
      v8 = [v6 textAttributeUUIDString];
      if ([v7 isEqualToString:v8] && (self->_range.location == v6[6] ? (v9 = self->_range.length == v6[7]) : (v9 = 0), v9))
      {
        v11 = [(CRLWPHyperlinkField *)self displayText];
        v12 = [v6 displayText];
        v10 = [v11 isEqual:v12];
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
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(CRLHasher);
  [(CRLHasher *)v3 addObject:self->_urlString];
  v4 = [(CRLWPHyperlinkField *)self displayText];
  [(CRLHasher *)v3 addObject:v4];

  v5 = [(CRLHasher *)v3 hashValue];
  return v5;
}

@end