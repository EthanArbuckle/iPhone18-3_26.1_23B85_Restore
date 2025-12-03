@interface NSURL(NSURLExtrasInternal)
+ (uint64_t)_URLWithData:()NSURLExtrasInternal relativeToURL:;
+ (uint64_t)_URLWithDataAsString:()NSURLExtrasInternal relativeToURL:;
- (__CFString)_hostString;
- (const)_URLByEscapingSpacesAndControlChars;
- (const)_web_URLByRemovingLastPathComponent_nowarn;
- (const)_web_URLByRemovingUserAndQueryAndFragment_nowarn;
- (id)_web_URLByRemovingUserAndPath_nowarn;
@end

@implementation NSURL(NSURLExtrasInternal)

- (const)_web_URLByRemovingLastPathComponent_nowarn
{
  selfCopy = self;
  v21 = *MEMORY[0x1E69E9840];
  v2 = buffer;
  if (CFURLGetBytes(self, buffer, 2048) == -1)
  {
    v3 = CFURLGetBytes(selfCopy, 0, 0);
    v2 = malloc_type_malloc(v3, 0x100004077774924uLL);
    CFURLGetBytes(selfCopy, v2, v3);
  }

  v4 = CFURLGetByteRangeForComponent(selfCopy, kCFURLComponentParameterString, 0);
  v5 = CFURLGetByteRangeForComponent(selfCopy, kCFURLComponentPath, 0);
  length = v4.location + v4.length - v5.location;
  if (v4.location == -1)
  {
    length = v5.length;
  }

  if (v5.location == -1)
  {
    location = v4.location;
  }

  else
  {
    location = v5.location;
  }

  if (v5.location == -1)
  {
    v8 = v4.length;
  }

  else
  {
    v8 = length;
  }

  if (location == -1 || !v8)
  {
    if (v2 != buffer)
    {
      free(v2);
    }

    return 0;
  }

  else
  {
    v9 = &v2[location];
    v10 = location + v8;
    do
    {
      v11 = v10;
      v12 = &v2[v10];
      if (v12 <= v9)
      {
        break;
      }

      v13 = *(v12 - 1);
      v10 = v11 - 1;
    }

    while (v13 == 47);
    do
    {
      v15 = v11;
      v16 = &v2[v11];
      if (v16 <= v9)
      {
        break;
      }

      v14 = *(v16 - 1);
      v11 = v15 - 1;
    }

    while (v14 != 47);
    v17 = _CFURLGetEncoding();
    v18 = CFURLCreateWithBytes(0, v2, v15, v17, 0);
    if (v2 != buffer)
    {
      free(v2);
    }

    if (v18)
    {
      return v18;
    }
  }

  return selfCopy;
}

- (id)_web_URLByRemovingUserAndPath_nowarn
{
  cf = CFURLCopyScheme(self);
  v5 = CFURLCopyHostName(self);
  CFURLGetPortNumber(self);
  v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{&stru_1EEEFDF90, 0}];
  v2 = _CFURLCreateFromComponents();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v2;
}

- (const)_web_URLByRemovingUserAndQueryAndFragment_nowarn
{
  selfCopy = self;
  v15 = *MEMORY[0x1E69E9840];
  v2 = CFURLGetByteRangeForComponent(self, kCFURLComponentUserInfo, 0);
  location = CFURLGetByteRangeForComponent(selfCopy, kCFURLComponentQuery, 0).location;
  v4 = CFURLGetByteRangeForComponent(selfCopy, kCFURLComponentFragment, 0).location;
  v5 = v4;
  if (v2.location != -1 || location != -1 || v4 != -1)
  {
    v6 = buffer;
    v7 = CFURLGetBytes(selfCopy, buffer, 2048);
    if (v7 == -1)
    {
      v8 = CFURLGetBytes(selfCopy, 0, 0);
      v6 = malloc_type_malloc(v8, 0x100004077774924uLL);
      CFURLGetBytes(selfCopy, v6, v8);
    }

    else
    {
      v8 = v7;
    }

    v9 = v5 - 1;
    if (v5 == -1)
    {
      v9 = v8;
    }

    if (location == -1)
    {
      v10 = v9;
    }

    else
    {
      v10 = location - 1;
    }

    if (v2.location != -1)
    {
      memmove(&v6[v2.location], &v6[v2.location + 1 + v2.length], v10 + ~(v2.location + v2.length));
      v10 += ~v2.length;
    }

    v11 = _CFURLGetEncoding();
    v12 = CFURLCreateWithBytes(0, v6, v10, v11, 0);
    if (v6 != buffer)
    {
      free(v6);
    }

    if (v12)
    {
      return v12;
    }
  }

  return selfCopy;
}

- (const)_URLByEscapingSpacesAndControlChars
{
  selfCopy = self;
  v13 = *MEMORY[0x1E69E9840];
  v2 = CFURLGetBytes(self, 0, 0);
  v3 = v2;
  if (v2 < 2049)
  {
    v4 = buffer;
    CFURLGetBytes(selfCopy, buffer, v2);
    if (v3 < 1)
    {
      return selfCopy;
    }
  }

  else
  {
    v4 = malloc_type_malloc(3 * v2, 0x100004077774924uLL);
    CFURLGetBytes(selfCopy, v4, v3);
  }

  v5 = &v4[v3];
  v6 = v4 - buffer;
  v7 = v4;
  while (*v7 - 127 >= 0xFFFFFFA2)
  {
    ++v7;
    ++v6;
    if (v7 >= v5)
    {
      goto LABEL_12;
    }
  }

  if (v3 >= 683 && v4 == buffer)
  {
    v4 = malloc_type_malloc(3 * v3, 0x100004077774924uLL);
    memmove(v4, buffer, v3);
    v7 = &v4[v6];
    v5 = &v4[v3];
  }

  v8 = v7 - v4;
  v9 = escapeChars(v7, v5 - v7);
  selfCopy = CFURLCreateAbsoluteURLWithBytes(0, v4, v8 + v9, 0x600u, 0, 1u);
  v10 = selfCopy;
LABEL_12:
  if (buffer != v4)
  {
    free(v4);
  }

  return selfCopy;
}

+ (uint64_t)_URLWithDataAsString:()NSURLExtrasInternal relativeToURL:
{
  if (!a3)
  {
    return 0;
  }

  v6 = [objc_msgSend(a3 "_web_stringByTrimmingWhitespace")];

  return [self _URLWithData:v6 relativeToURL:a4];
}

+ (uint64_t)_URLWithData:()NSURLExtrasInternal relativeToURL:
{
  if (!a3)
  {
    return 0;
  }

  v6 = [a3 length];
  if (v6 >= 1)
  {
    v7 = v6;
    bytes = [a3 bytes];
    v9 = bytes;
    if (a4 && *bytes == 59)
    {
      a4 = [a4 _web_URLByRemovingLastPathComponent_nowarn];
    }

    v10 = CFURLCreateAbsoluteURLWithBytes(0, v9, v7, 0x8000100u, a4, 1u);
    if (!v10)
    {
      v10 = CFURLCreateAbsoluteURLWithBytes(0, v9, v7, 0x201u, a4, 1u);
    }

    v11 = v10;
    return v10;
  }

  v13 = MEMORY[0x1E695DFF8];

  return [v13 URLWithString:&stru_1EEEFDF90];
}

- (__CFString)_hostString
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = CFURLGetByteRangeForComponent(self, kCFURLComponentHost, 0);
  if (v2.location == -1)
  {
    return &stru_1EEEFDF90;
  }

  location = v2.location;
  length = v2.length;
  v5 = 2048;
  MEMORY[0x1EEE9AC00](v2.location);
  v6 = v11;
  if (CFURLGetBytes(self, v11, 2048) == -1)
  {
    v5 = CFURLGetBytes(self, 0, 0);
    v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
    CFURLGetBytes(self, v6, v5);
    if (!v2.length)
    {
      goto LABEL_10;
    }
  }

  else if (!v2.length)
  {
    goto LABEL_10;
  }

  if (v2.length == 9)
  {
    if ([-[__CFURL scheme](self "scheme")] && !strncasecmp_l("localhost", &v6[v2.location], 9uLL, 0))
    {
LABEL_10:
      if (v6 != v11)
      {
        free(v6);
      }

      return &stru_1EEEFDF90;
    }

    goto LABEL_14;
  }

  if (v2.length >= 1)
  {
LABEL_14:
    v8 = v2.location;
    while (v6[v8] - 127 >= 0xFFFFFFA2)
    {
      if (&v6[++v8] >= &v6[v2.location + v2.length])
      {
        goto LABEL_17;
      }
    }

    v9 = v6;
    if (v5 < 3 * v2.length)
    {
      v9 = malloc_type_malloc(3 * v2.length, 0x100004077774924uLL);
    }

    memmove(v9, &v6[v2.location], v2.length);
    if (v6 != v11 && v6 != v9)
    {
      free(v6);
    }

    location = 0;
    length = escapeChars(&v9[v8], v2.length - v8) + v8;
    goto LABEL_24;
  }

LABEL_17:
  v9 = v6;
LABEL_24:
  v10 = [[NSString alloc] initWithBytes:&v9[location] length:length encoding:1];
  if (v11 != v9)
  {
    free(v9);
  }

  return v10;
}

@end