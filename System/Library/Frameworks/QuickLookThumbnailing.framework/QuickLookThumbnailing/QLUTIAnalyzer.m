@interface QLUTIAnalyzer
+ (BOOL)isTypeAudioOnly:(id)a3;
+ (id)UTIForURL:(id)a3;
+ (id)contentTypeForURL:(id)a3;
+ (id)knownExtensions;
+ (id)privateContentTypeFromFileName:(id)a3;
+ (id)removeSpacesFromString:(id)a3;
- (BOOL)isAudioOnly;
- (QLUTIAnalyzer)initWithCoder:(id)a3;
- (QLUTIAnalyzer)initWithContentType:(id)a3;
- (QLUTIAnalyzer)initWithURL:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

+ (id)removeSpacesFromString:(id)a3
{
  v3 = [a3 stringByRemovingPercentEncoding];
  if (([v3 hasPrefix:@" "] & 1) != 0 || objc_msgSend(v3, "hasSuffix:", @" "))
  {
    v4 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@" "];
    v5 = [v3 stringByTrimmingCharactersInSet:v4];
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

+ (id)UTIForURL:(id)a3
{
  v3 = [a1 contentTypeForURL:a3];
  v4 = [v3 identifier];

  return v4;
}

+ (id)contentTypeForURL:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 startAccessingSecurityScopedResource];
  v5 = v4;
  if (v3)
  {
    v24 = 0;
    v6 = *MEMORY[0x1E695DAA0];
    v23 = 0;
    v7 = [v3 getPromisedItemResourceValue:&v24 forKey:v6 error:&v23];
    v8 = v24;
    v9 = v23;
    if (!v7 || ([v8 isDynamic] & 1) != 0 || objc_msgSend(v8, "isEqual:", *MEMORY[0x1E69830D0]))
    {
      v10 = [v3 pathComponents];
      if ([v10 count] < 2 || (objc_msgSend(v10, "objectAtIndex:", 1), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @".vol"), v11, !v12) || (v22 = 0, v21 = xmmword_1CA21FDD8, memset(v25, 0, 512), getattrlist(objc_msgSend(v3, "fileSystemRepresentation", 0x100000005, 0, 0), &v21, v25, 0x30CuLL, 0x20u) < 0))
      {
        v13 = [v3 lastPathComponent];
      }

      else
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v25 + SDWORD1(v25[0]) + 4];
      }

      v14 = v13;
      v15 = [objc_opt_class() privateContentTypeFromFileName:v13];
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
    if (v4)
    {
LABEL_18:
      [v3 stopAccessingSecurityScopedResource];
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)privateContentTypeFromFileName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 pathExtension];
    v7 = [v6 lowercaseString];

    if ([v7 isEqualToString:@"zip"])
    {
      v8 = [v5 stringByDeletingPathExtension];
      v9 = [v8 pathExtension];
      v10 = [a1 removeSpacesFromString:v9];

      if (v10 && [v10 length])
      {
        v11 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v10 conformingToType:*MEMORY[0x1E6982F30]];
        if (v11)
        {
          v12 = v10;

          v13 = v11;
          v7 = v12;
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

    if ([v7 isEqualToString:@"synced"])
    {
      v14 = [v5 stringByDeletingPathExtension];
      v15 = [v14 pathExtension];
      v16 = [a1 removeSpacesFromString:v15];

      if (v16 && [v16 length])
      {
        v17 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v16 conformingToType:*MEMORY[0x1E6982F40]];
        if (v17)
        {
          v18 = v16;

          v19 = v17;
          v7 = v18;
          v11 = v19;
        }
      }
    }

    if (!v11 || [v11 isDynamic])
    {
      if (v7)
      {
        v20 = [a1 knownExtensions];
        v21 = [v7 lowercaseString];
        v22 = [v20 objectForKeyedSubscript:v21];

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

- (QLUTIAnalyzer)initWithContentType:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = QLUTIAnalyzer;
  v6 = [(QLUTIAnalyzer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentType, a3);
    v8 = v7;
  }

  return v7;
}

- (QLUTIAnalyzer)initWithURL:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = QLUTIAnalyzer;
  v5 = [(QLUTIAnalyzer *)&v10 init];
  if (v5)
  {
    v6 = [QLUTIAnalyzer UTIForURL:v4];
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

+ (BOOL)isTypeAudioOnly:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
  LOBYTE(a1) = [a1 isContentTypeAudioOnly:v4];

  return a1;
}

- (void)encodeWithCoder:(id)a3
{
  contentType = self->_contentType;
  if (contentType)
  {
    [a3 encodeObject:contentType forKey:@"contentType"];
  }
}

- (QLUTIAnalyzer)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = QLUTIAnalyzer;
  v5 = [(QLUTIAnalyzer *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    contentType = v5->_contentType;
    v5->_contentType = v6;

    v8 = v5;
  }

  return v5;
}

@end