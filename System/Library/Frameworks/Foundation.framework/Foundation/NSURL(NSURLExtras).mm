@interface NSURL(NSURLExtras)
+ (id)_web_URLWithComponents:()NSURLExtras;
- (double)_web_URLComponents;
- (uint64_t)_web_isJavaScriptURL;
- (uint64_t)_web_scriptIfJavaScriptURL;
- (uint64_t)_web_suggestedFilenameWithMIMEType:()NSURLExtras;
@end

@implementation NSURL(NSURLExtras)

+ (id)_web_URLWithComponents:()NSURLExtras
{
  if (!*a3 && !*(a3 + 8) && !*(a3 + 16) && !*(a3 + 24) && *(a3 + 32) == -1 && !*(a3 + 40) && !*(a3 + 48) && !*(a3 + 56))
  {
    return 0;
  }

  if ([*(a3 + 40) length])
  {
    if ([*(a3 + 40) characterAtIndex:0] == 47)
    {
      if ([*(a3 + 40) length] != 1)
      {
        [*(a3 + 40) componentsSeparatedByString:@"/"];
      }

      return _CFURLCreateFromComponents();
    }

    return 0;
  }

  [MEMORY[0x1E695DEC8] arrayWithObject:&stru_1EEEFDF90];
  return _CFURLCreateFromComponents();
}

- (double)_web_URLComponents
{
  v1 = MEMORY[0x1EEE9AC00](self);
  v3 = v2;
  absoluteURL = [v4 absoluteURL];
  if (!absoluteURL)
  {
    goto LABEL_12;
  }

  v6 = absoluteURL;
  if (_CFURLCopyComponents())
  {
    v7 = 0;
    v8 = 0;
    v16 = 0;
    v17 = 0;
    *v3 = v7;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = v8;
    v3[4] = 0;
    v3[5] = 0;
    v3[6] = v16;
    v3[7] = v17;
    return result;
  }

  scheme = [v6 scheme];
  if (([scheme isEqualToString:@"http"] & 1) == 0 && (objc_msgSend(scheme, "isEqualToString:", @"https") & 1) == 0 && (objc_msgSend(scheme, "isEqualToString:", @"file") & 1) == 0 && !objc_msgSend(scheme, "isEqualToString:", @"ftp"))
  {
    goto LABEL_12;
  }

  absoluteString = [v6 absoluteString];
  v11 = [scheme length];
  v12 = [absoluteString length];
  if (v12 <= v11 || [absoluteString characterAtIndex:v11] == 47)
  {
    if (v12 < v11 + 2 || [absoluteString characterAtIndex:v11 + 1] == 47)
    {
LABEL_12:
      result = 0.0;
      *v3 = 0u;
      *(v3 + 1) = 0u;
      v3[4] = -1;
      v3[5] = 0;
      v3[6] = 0;
      v3[7] = 0;
      return result;
    }

    v13 = MEMORY[0x1E695DFF8];
    absoluteString2 = [v6 absoluteString];
    v15 = v11 + 1;
  }

  else
  {
    v13 = MEMORY[0x1E695DFF8];
    absoluteString2 = [v6 absoluteString];
    v15 = v11;
  }

  v19 = [v13 _web_URLWithString:+[NSString stringWithFormat:](NSString relativeToURL:{"stringWithFormat:", @"%@://%@", scheme, objc_msgSend(absoluteString2, "substringFromIndex:", v15), 0), 0}];
  if (v19)
  {
    [v19 _web_URLComponents];
  }

  else
  {
    result = 0.0;
    *(v3 + 2) = 0u;
    *(v3 + 3) = 0u;
    *v3 = 0u;
    *(v3 + 1) = 0u;
  }

  return result;
}

- (uint64_t)_web_scriptIfJavaScriptURL
{
  absoluteString = [self absoluteString];
  if (![absoluteString _web_hasCaseInsensitivePrefix:@"javascript:"])
  {
    return 0;
  }

  v2 = [absoluteString substringFromIndex:11];

  return [v2 _web_stringByReplacingValidPercentEscapes_nowarn];
}

- (uint64_t)_web_suggestedFilenameWithMIMEType:()NSURLExtras
{
  v5 = [objc_msgSend(self "path")];
  _web_filenameByFixingIllegalCharacters = [v5 _web_filenameByFixingIllegalCharacters];
  if ([_web_filenameByFixingIllegalCharacters length] && !objc_msgSend(v5, "isEqualToString:", @"/"))
  {
    pathExtension = [_web_filenameByFixingIllegalCharacters pathExtension];
    if (!a3)
    {
      return _web_filenameByFixingIllegalCharacters;
    }
  }

  else
  {
    _web_filenameByFixingIllegalCharacters = [objc_msgSend(self "_hostString")];
    if (![_web_filenameByFixingIllegalCharacters length])
    {
      _web_filenameByFixingIllegalCharacters = NSURLLocalizedString("unknown");
    }

    pathExtension = 0;
    if (!a3)
    {
      return _web_filenameByFixingIllegalCharacters;
    }
  }

  if ((([a3 isEqualToString:@"application/tar"] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"application/x-tar")) && (objc_msgSend(_web_filenameByFixingIllegalCharacters, "rangeOfString:options:", @".tar", 1) != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(_web_filenameByFixingIllegalCharacters, "rangeOfString:options:", @".tgz", 13) != 0x7FFFFFFFFFFFFFFFLL))
  {
    return _web_filenameByFixingIllegalCharacters;
  }

  if ([a3 isEqualToString:@"application/octet-stream"])
  {
    return _web_filenameByFixingIllegalCharacters;
  }

  if ([a3 isEqualToString:@"text/plain"])
  {
    return _web_filenameByFixingIllegalCharacters;
  }

  v9 = +[NSURLFileTypeMappings sharedMappings];
  v10 = [v9 extensionsForMIMEType:a3];
  if ([pathExtension length])
  {
    if (!v10 || ([v10 containsObject:pathExtension] & 1) != 0)
    {
      return _web_filenameByFixingIllegalCharacters;
    }
  }

  v11 = [v9 preferredExtensionForMIMEType:a3];
  if (![v11 length])
  {
    return _web_filenameByFixingIllegalCharacters;
  }

  return [_web_filenameByFixingIllegalCharacters stringByAppendingPathExtension:v11];
}

- (uint64_t)_web_isJavaScriptURL
{
  absoluteString = [self absoluteString];

  return [absoluteString _web_isJavaScriptURL];
}

@end