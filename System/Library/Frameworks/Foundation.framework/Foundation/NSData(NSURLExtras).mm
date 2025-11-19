@interface NSData(NSURLExtras)
- (__CFString)_web_guessedMIMEType;
- (__CFString)_web_guessedMIMETypeForXML;
- (uint64_t)_web_guessedMIMETypeForExtension:()NSURLExtras;
- (void)_replaceCString:()NSURLExtras withCString:;
- (void)_web_parseRFC822HeaderFields;
@end

@implementation NSData(NSURLExtras)

- (__CFString)_web_guessedMIMETypeForXML
{
  v2 = [a1 length];
  v3 = [a1 bytes];
  if (v2 >= 7)
  {
    v4 = v3;
    v5 = 0;
    v6 = 1024;
    if (v2 < 0x400)
    {
      v6 = v2;
    }

    v7 = v6 - 6;
    v8 = @"application/rss+xml";
    while (1)
    {
      v9 = memchr(v4, 60, v7);
      if (!v9)
      {
        return 0;
      }

      v10 = v9;
      if (v5)
      {
        break;
      }

      if (!strncasecmp_l(v9, "<rdf", 4uLL, 0))
      {
        goto LABEL_15;
      }

      if (!strncasecmp_l(v10, "<rss", 4uLL, 0))
      {
        return v8;
      }

      if (!strncasecmp_l(v10, "<feed", 5uLL, 0))
      {
        return @"application/atom+xml";
      }

      if (strncasecmp_l(v10, "<?", 2uLL, 0) && strncasecmp_l(v10, "<!", 2uLL, 0))
      {
        return 0;
      }

      v5 = 0;
LABEL_16:
      v11 = &v4[v7];
      v4 = (v10 + 1);
      v7 = v11 - (v10 + 1);
      if (v7 <= 0)
      {
        return 0;
      }
    }

    if (!strncasecmp_l(v9, "<channel", 8uLL, 0))
    {
      return v8;
    }

LABEL_15:
    v5 = 1;
    goto LABEL_16;
  }

  return 0;
}

- (__CFString)_web_guessedMIMEType
{
  v2 = [a1 _web_guessedMIMETypeForXML];
  if ([(__CFString *)v2 length])
  {
    return v2;
  }

  v4 = [a1 length];
  v5 = [a1 bytes];
  v6 = v5;
  if (v4 >= 1024)
  {
    v7 = 1024;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= 7)
  {
    v2 = @"text/html";
    v8 = v7 - 6;
    v9 = v5;
    do
    {
      v10 = memchr(v9, 60, v8);
      if (!v10)
      {
        break;
      }

      v11 = v10;
      if (!strncasecmp_l(v10, "<html>", 6uLL, 0) || !strncasecmp_l(v11, "<a ", 3uLL, 0) || !strncasecmp_l(v11, "<script", 7uLL, 0) || !strncasecmp_l(v11, "<title>", 7uLL, 0))
      {
        return v2;
      }

      v12 = &v9[v8];
      v9 = (v11 + 1);
      v8 = v12 - (v11 + 1);
    }

    while (v8 > 0);
  }

  v13 = v7 - 8;
  if (v13 >= 1)
  {
    v14 = v6;
    v2 = @"text/html";
    do
    {
      v15 = memchr(v14, 116, v13);
      v16 = memchr(v14, 84, v13);
      if (!(v15 | v16))
      {
        break;
      }

      if (v15 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      if (!v16)
      {
        v17 = v15;
      }

      if (v15)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      if (!strncasecmp_l(v18, "text/html", 9uLL, 0))
      {
        return v2;
      }

      v19 = &v14[v13];
      v14 = (v18 + 1);
      v13 = v19 - (v18 + 1);
    }

    while (v13 > 0);
  }

  if (v4 >= 11)
  {
    if (!strncmp(v6, "BEGIN:VCARD", 0xBuLL))
    {
      return @"text/vcard";
    }

    if (v4 >= 0xF && !strncmp(v6, "BEGIN:VCALENDAR", 0xFuLL))
    {
      return @"text/calendar";
    }

    goto LABEL_33;
  }

  if (v4 >= 1)
  {
LABEL_33:
    v20 = 0;
    v2 = @"text/plain";
    while (1)
    {
      if ((v6[v20] - 127) <= 0xA0u)
      {
        v21 = v6[v20];
        v22 = v21 > 0xD;
        v23 = (1 << v21) & 0x2600;
        if (v22 || v23 == 0)
        {
          break;
        }
      }

      if (v4 == ++v20)
      {
        return v2;
      }
    }

    goto LABEL_43;
  }

  v20 = 0;
LABEL_43:
  if (v20 == v4)
  {
    return @"text/plain";
  }

  if (v4 >= 4 && !strncmp(v6, "\xFF\xD8\xFF\xE0mage/jpeg", 4uLL))
  {
    return &stru_1EEF01F10;
  }

  return 0;
}

- (uint64_t)_web_guessedMIMETypeForExtension:()NSURLExtras
{
  v4 = [a1 _web_guessedMIMEType];
  v5 = v4;
  if (v4 && ![v4 isEqualToString:@"text/plain"] || !objc_msgSend(a3, "length"))
  {
    return v5;
  }

  v6 = +[NSURLFileTypeMappings sharedMappings];

  return [v6 MIMETypeForExtension:a3];
}

- (void)_web_parseRFC822HeaderFields
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [a1 bytes];
  v4 = [a1 length];
  if (v4 >= 1)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = *(v3 + v8);
        if (v9 == 10)
        {
          v10 = (v3 + v8);
          v11 = (v3 + v8 + 1);
          goto LABEL_13;
        }

        if (v9 == 13)
        {
          break;
        }

        ++v8;
        v7 += 0x100000000;
        if (v5 == v8)
        {
          return v2;
        }
      }

      if (v5 - 1 == v8)
      {
        return v2;
      }

      v10 = (v3 + v8);
      v11 = (v3 + v8 + 1);
      if (*v11 == 10)
      {
        v11 = (v3 + v8 + 2);
      }

LABEL_13:
      if (!v8)
      {
        return v2;
      }

      v12 = *v3;
      v44 = v11;
      if (v12 == 9 || v12 == 32)
      {
        if (v6)
        {
          v13 = [v2 objectForKey:v6];
          v14 = [objc_allocWithZone(NSString) initWithBytes:v3 length:v7 >> 32 encoding:CFStringConvertEncodingToNSStringEncoding(0x201u)];
          v15 = [[NSString alloc] initWithFormat:@"%@%@", v13, v14];
          [v2 setObject:v15 forKey:v6];
        }

        goto LABEL_54;
      }

      v16 = 0;
      do
      {
        v17 = v16;
        v18 = (v3 + v16++);
      }

      while (v18 != v10 && *v18 != 58);
      v19 = (v3 + v16);
      if ((v3 + v16 - 1) != v10)
      {
        break;
      }

LABEL_54:
      v40 = v5 + v3;
      v3 = v44;
      v5 = v40 - v44;
      if (v40 - v44 <= 0)
      {
        return v2;
      }
    }

    v20 = [objc_allocWithZone(NSString) initWithBytes:v3 length:v16 - 1 encoding:CFStringConvertEncodingToNSStringEncoding(0x201u)];
    v21 = v20;
    theString = v20;
    Length = CFStringGetLength(v20);
    if (Length < 1)
    {
      goto LABEL_41;
    }

    v23 = Length;
    v24 = 0;
    v45 = 0;
    chars = 0;
    v25 = 0;
    v47 = 0;
    v42 = v2;
    v43 = 2 * Length;
    v26 = 1;
    while (1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v24);
      v28 = CharacterAtIndex;
      if (v26 && (CharacterAtIndex - 97) <= 0x19u)
      {
        break;
      }

      if (!v26 && (CharacterAtIndex - 91) >= 0xFFE6u)
      {
        v28 = CharacterAtIndex | 0x20;
        if (!v25)
        {
LABEL_31:
          v49.location = 0;
          v49.length = v23;
          if (CFStringGetBytes(theString, v49, 0x201u, 0, 0, 0, 0, 0) == v23)
          {
            v29 = MEMORY[0x1865CD580](0, v23 + 1, 0x100004077774924, 0);
            CFStringGetCString(theString, v29, v23 + 1, 0x201u);
LABEL_33:
            v47 = 0;
            v45 = v29;
            v29[v24] = v28;
LABEL_36:
            v25 = 1;
            goto LABEL_37;
          }

          v30 = MEMORY[0x1865CD580](0, v43, 0x1000040BDFB0063, 0);
          v50.location = 0;
          v50.length = v23;
          chars = v30;
          CFStringGetCharacters(theString, v50, v30);
LABEL_35:
          chars[v24] = v28;
          v47 = 1;
          goto LABEL_36;
        }

LABEL_27:
        if (!v47)
        {
          v29 = v45;
          goto LABEL_33;
        }

        goto LABEL_35;
      }

LABEL_37:
      v26 = v28 == 45;
      if (v23 == ++v24)
      {
        v2 = v42;
        if (v25)
        {
          if (v47)
          {
            v31 = CFStringCreateWithCharacters(0, chars, v23);
          }

          else
          {
            v31 = [[NSString alloc] initWithCString:v45 encoding:CFStringConvertEncodingToNSStringEncoding(0x201u)];
          }

LABEL_42:
          v6 = v31;
          if (v19 == v10)
          {
LABEL_50:
            v35 = [[NSString alloc] initWithString:&stru_1EEEFDF90];
          }

          else
          {
            v32 = &v10[~v3 - v17];
            while (1)
            {
              v33 = *v19;
              if (v33 != 32 && v33 != 9)
              {
                break;
              }

              ++v19;
              --v32;
              if (v19 == v10)
              {
                goto LABEL_50;
              }
            }

            v35 = [objc_allocWithZone(NSString) initWithBytes:v19 length:v32 encoding:CFStringConvertEncodingToNSStringEncoding(0x201u)];
          }

          v36 = v35;
          v37 = v35;
          v38 = [v2 objectForKey:v6];
          if (v38)
          {
            v36 = [[NSString alloc] initWithFormat:@"%@, %@", v38, v36];
            v39 = v36;
          }

          [v2 setObject:v36 forKey:v6];
          goto LABEL_54;
        }

LABEL_41:
        v31 = theString;
        goto LABEL_42;
      }
    }

    v28 = CharacterAtIndex - 32;
    if (!v25)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  return v2;
}

- (void)_replaceCString:()NSURLExtras withCString:
{
  v7 = strlen(__s);
  v18 = strlen(a4);
  v8 = [a1 bytes];
  v9 = [a1 length];
  v10 = *__s;
  v11 = memchr(v8, *__s, v9);
  if (v11)
  {
    v17 = a1;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v11 - v8;
      v15 = v11 - v8 + v7;
      if (v15 > v9)
      {
        break;
      }

      if (!memcmp(v11, __s, v7))
      {
        if (!v12)
        {
          v12 = [MEMORY[0x1E695DF88] data];
        }

        [v12 appendBytes:&v8[v13] length:{v14 - v13, v17}];
        [v12 appendBytes:a4 length:v18];
        v10 = *__s;
        v13 = v15;
      }

      else
      {
        v15 = v14 + 1;
      }

      v11 = memchr(&v8[v15], v10, v9 - v15);
    }

    while (v11);
    a1 = v17;
    if (v12)
    {
      if (v9 > v13)
      {
        [v12 appendBytes:&v8[v13] length:v9 - v13];
      }

      return v12;
    }
  }

  return a1;
}

@end