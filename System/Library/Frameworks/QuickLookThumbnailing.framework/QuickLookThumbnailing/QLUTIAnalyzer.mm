@interface QLUTIAnalyzer
+ (BOOL)isTypeAudioOnly:(id)only;
+ (id)UTIForURL:(id)l;
+ (id)contentTypeForURL:(id)l;
+ (id)knownExtensions;
+ (id)privateContentTypeFromFileName:(id)name;
+ (id)removeSpacesFromString:(id)string;
- (BOOL)isAudioOnly;
- (QLUTIAnalyzer)initWithCoder:(id)coder;
- (QLUTIAnalyzer)initWithContentType:(id)type;
- (QLUTIAnalyzer)initWithURL:(id)l;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLUTIAnalyzer

+ (id)knownExtensions
{
  v2 = knownExtensions_knownExtensions;
  if (!knownExtensions_knownExtensions)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v3 URLForResource:@"UTIOverrides" withExtension:@"plist"];

    if (v4)
    {
      v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v4];
      v6 = knownExtensions_knownExtensions;
      knownExtensions_knownExtensions = v5;
    }

    if (!knownExtensions_knownExtensions)
    {
      knownExtensions_knownExtensions = MEMORY[0x1E695E0F8];
    }

    v2 = knownExtensions_knownExtensions;
  }

  return v2;
}

+ (id)removeSpacesFromString:(id)string
{
  stringByRemovingPercentEncoding = [string stringByRemovingPercentEncoding];
  if (([stringByRemovingPercentEncoding hasPrefix:@" "] & 1) != 0 || objc_msgSend(stringByRemovingPercentEncoding, "hasSuffix:", @" "))
  {
    v4 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@" "];
    v5 = [stringByRemovingPercentEncoding stringByTrimmingCharactersInSet:v4];
  }

  else
  {
    v5 = stringByRemovingPercentEncoding;
  }

  return v5;
}

+ (id)UTIForURL:(id)l
{
  v3 = [self contentTypeForURL:l];
  identifier = [v3 identifier];

  return identifier;
}

+ (id)contentTypeForURL:(id)l
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  v5 = startAccessingSecurityScopedResource;
  if (lCopy)
  {
    v24 = 0;
    v6 = *MEMORY[0x1E695DAA0];
    v23 = 0;
    v7 = [lCopy getPromisedItemResourceValue:&v24 forKey:v6 error:&v23];
    v8 = v24;
    v9 = v23;
    if (!v7 || ([v8 isDynamic] & 1) != 0 || objc_msgSend(v8, "isEqual:", *MEMORY[0x1E69830D0]))
    {
      pathComponents = [lCopy pathComponents];
      if ([pathComponents count] < 2 || (objc_msgSend(pathComponents, "objectAtIndex:", 1), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @".vol"), v11, !v12) || (v22 = 0, v21 = xmmword_1CA21FDD8, memset(v25, 0, 512), getattrlist(objc_msgSend(lCopy, "fileSystemRepresentation", 0x100000005, 0, 0), &v21, v25, 0x30CuLL, 0x20u) < 0))
      {
        lastPathComponent = [lCopy lastPathComponent];
      }

      else
      {
        lastPathComponent = [MEMORY[0x1E696AEC0] stringWithUTF8String:v25 + SDWORD1(v25[0]) + 4];
      }

      v14 = lastPathComponent;
      v15 = [objc_opt_class() privateContentTypeFromFileName:lastPathComponent];
      v16 = v15;
      if (v15 && ([v15 isDynamic] & 1) == 0)
      {
        v17 = v16;

        v8 = v17;
      }
    }

    if (!v8 || [v8 isDynamic])
    {
      v18 = *MEMORY[0x1E6982D60];

      v8 = v18;
    }

    if (v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    if (startAccessingSecurityScopedResource)
    {
LABEL_18:
      [lCopy stopAccessingSecurityScopedResource];
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)privateContentTypeFromFileName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy)
  {
    pathExtension = [nameCopy pathExtension];
    lowercaseString = [pathExtension lowercaseString];

    if ([lowercaseString isEqualToString:@"zip"])
    {
      stringByDeletingPathExtension = [v5 stringByDeletingPathExtension];
      pathExtension2 = [stringByDeletingPathExtension pathExtension];
      v10 = [self removeSpacesFromString:pathExtension2];

      if (v10 && [v10 length])
      {
        v11 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v10 conformingToType:*MEMORY[0x1E6982F30]];
        if (v11)
        {
          v12 = v10;

          v13 = v11;
          lowercaseString = v12;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    if ([lowercaseString isEqualToString:@"synced"])
    {
      stringByDeletingPathExtension2 = [v5 stringByDeletingPathExtension];
      pathExtension3 = [stringByDeletingPathExtension2 pathExtension];
      v16 = [self removeSpacesFromString:pathExtension3];

      if (v16 && [v16 length])
      {
        v17 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v16 conformingToType:*MEMORY[0x1E6982F40]];
        if (v17)
        {
          v18 = v16;

          v19 = v17;
          lowercaseString = v18;
          v11 = v19;
        }
      }
    }

    if (!v11 || [v11 isDynamic])
    {
      if (lowercaseString)
      {
        knownExtensions = [self knownExtensions];
        v7LowercaseString = [lowercaseString lowercaseString];
        v22 = [knownExtensions objectForKeyedSubscript:v7LowercaseString];

        if (v22)
        {
          v23 = [MEMORY[0x1E6982C40] typeWithIdentifier:v22];

          v11 = v23;
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (QLUTIAnalyzer)initWithContentType:(id)type
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = QLUTIAnalyzer;
  v6 = [(QLUTIAnalyzer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentType, type);
    v8 = v7;
  }

  return v7;
}

- (QLUTIAnalyzer)initWithURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = QLUTIAnalyzer;
  v5 = [(QLUTIAnalyzer *)&v10 init];
  if (v5)
  {
    v6 = [QLUTIAnalyzer UTIForURL:lCopy];
    contentType = v5->_contentType;
    v5->_contentType = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isAudioOnly
{
  v3 = objc_opt_class();
  contentType = self->_contentType;

  return [v3 isTypeAudioOnly:contentType];
}

+ (BOOL)isTypeAudioOnly:(id)only
{
  if (!only)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
  LOBYTE(self) = [self isContentTypeAudioOnly:v4];

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  contentType = self->_contentType;
  if (contentType)
  {
    [coder encodeObject:contentType forKey:@"contentType"];
  }
}

- (QLUTIAnalyzer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = QLUTIAnalyzer;
  v5 = [(QLUTIAnalyzer *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    contentType = v5->_contentType;
    v5->_contentType = v6;

    v8 = v5;
  }

  return v5;
}

@end