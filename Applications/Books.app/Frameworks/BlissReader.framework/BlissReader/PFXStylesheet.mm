@interface PFXStylesheet
+ (BOOL)isMediaTypeSupportedInAll:(id)all;
+ (BOOL)isMediaTypeSupportedInFlow:(id)flow;
+ (BOOL)isMediaTypeSupportedInPaginated:(id)paginated;
+ (BOOL)readStylesheetFromEntry:(id)entry readerState:(id)state;
+ (BOOL)readStylesheetFromString:(const char *)string sourceURL:(id)l toDictionary:(id)dictionary toFontDictionary:(id)fontDictionary pageCache:(id)cache;
+ (BOOL)readStylesheetFromStyleAttributeContents:(const char *)contents sourceURL:(id)l toDictionary:(id)dictionary toFontDictionary:(id)fontDictionary readerState:(id)state;
+ (BOOL)readStylesheetFromStyleNodeContents:(id)contents sourceURL:(id)l readerState:(id)state;
+ (void)registerFontsFromDictionary:(id)dictionary readerState:(id)state;
@end

@implementation PFXStylesheet

+ (BOOL)readStylesheetFromString:(const char *)string sourceURL:(id)l toDictionary:(id)dictionary toFontDictionary:(id)fontDictionary pageCache:(id)cache
{
  if (string && *string)
  {
    [PFSStyleParser parseCSSFrom:"parseCSSFrom:intoDict:fontDict:sourceUrl:pageCache:" intoDict:? fontDict:? sourceUrl:? pageCache:?];
  }

  return 1;
}

+ (BOOL)readStylesheetFromStyleAttributeContents:(const char *)contents sourceURL:(id)l toDictionary:(id)dictionary toFontDictionary:(id)fontDictionary readerState:(id)state
{
  if (contents && *contents)
  {
    if ((atomic_load_explicit(&qword_5679B8, memory_order_acquire) & 1) == 0)
    {
      sub_1EE28C();
    }

    v12 = strlen(contents);
    v13 = 6;
    if (!byte_5679B0)
    {
      v13 = 0;
    }

    if (v12 <= (v13 ^ 0xFFFFFFFFFFFFFFFELL))
    {
      v14 = malloc_type_malloc(v12 + v13 + 1, 0x100004077774924uLL);
      if (v14)
      {
        v15 = v14;
        sprintf(v14, "* {%s}", contents);
        v16 = [self readStylesheetFromString:v15 sourceURL:l toDictionary:dictionary toFontDictionary:fontDictionary pageCache:0];
        free(v15);
        LOBYTE(v14) = v16;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 1;
  }

  return v14;
}

+ (BOOL)readStylesheetFromEntry:(id)entry readerState:(id)state
{
  currentHtmlDocMediaState = [state currentHtmlDocMediaState];
  if (([currentHtmlDocMediaState loadedDocumentSelectorsForEntry:entry] & 1) == 0)
  {
    v9 = [state absoluteEntryForRelativeUri:entry];
    v10 = [state propertiesForStylesheetEntry:v9];
    if (v10)
    {
      v11 = v10;
      v31 = v9;
      v32 = currentHtmlDocMediaState;
      v12 = NSArray_ptr;
      v13 = objc_alloc_init(NSMutableDictionary);
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v14 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v36;
        v33 = v13;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v36 != v16)
            {
              objc_enumerationMutation(v11);
            }

            v18 = *(*(&v35 + 1) + 8 * i);
            objc_opt_class();
            [v11 objectForKey:v18];
            v19 = TSUDynamicCast();
            if (!v19)
            {
              v20 = v12;
              v21 = +[TSUAssertionHandler currentHandler];
              v22 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[PFXStylesheet readStylesheetFromEntry:readerState:]");
              v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/compatibility/Publication/Common/XML/PFXStylesheet.mm"];
              v24 = v21;
              v12 = v20;
              v13 = v33;
              [v24 handleFailureInFunction:v22 file:v23 lineNumber:128 description:{@"invalid nil value for '%s'", "properties"}];
            }

            v25 = [objc_alloc(v12[11]) initWithDictionary:v19];
            [v13 setObject:v25 forKey:v18];
          }

          v15 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v15);
      }

      [v32 addStylesheetProperties:v13 forEntry:v31];
    }

    else
    {
      v8 = [objc_msgSend(state "archive")];
      if (!v8)
      {
        return v8;
      }

      v13 = objc_alloc_init(NSMutableData);
      if ([v8 readIntoData:v13])
      {
        v34 = 0;
        LOBYTE(v8) = 1;
        [v13 appendBytes:&v34 length:1];
        bytes = [v13 bytes];
        if (bytes)
        {
          v28 = bytes;
          v29 = objc_alloc_init(NSMutableDictionary);
          v30 = objc_alloc_init(NSMutableDictionary);
          LOBYTE(v8) = [self readStylesheetFromString:v28 sourceURL:+[NSURL URLWithString:relativeToURL:](NSURL toDictionary:"URLWithString:relativeToURL:" toFontDictionary:v9 pageCache:{+[NSURL fileURLWithPath:isDirectory:](NSURL, "fileURLWithPath:isDirectory:", @"/", 1)), v29, v30, objc_msgSend(currentHtmlDocMediaState, "pageCache")}];
          [state setStylesheetProperties:v29 forEntry:v9];
          [currentHtmlDocMediaState addStylesheetProperties:v29 forEntry:v9];
          [self registerFontsFromDictionary:v30 readerState:state];
        }

        goto LABEL_15;
      }
    }

    LOBYTE(v8) = 1;
LABEL_15:

    return v8;
  }

  LOBYTE(v8) = 1;
  return v8;
}

+ (BOOL)readStylesheetFromStyleNodeContents:(id)contents sourceURL:(id)l readerState:(id)state
{
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = [self readStylesheetFromString:objc_msgSend(contents sourceURL:"UTF8String") toDictionary:l toFontDictionary:v9 pageCache:{v10, 0}];
  if (v11)
  {
    [objc_msgSend(state "currentHtmlDocMediaState")];
    [self registerFontsFromDictionary:v10 readerState:state];
  }

  return v11;
}

+ (BOOL)isMediaTypeSupportedInAll:(id)all
{
  basicMediaTypes = [self basicMediaTypes];

  return [basicMediaTypes containsObject:all];
}

+ (BOOL)isMediaTypeSupportedInFlow:(id)flow
{
  flowMediaTypes = [self flowMediaTypes];

  return [flowMediaTypes containsObject:flow];
}

+ (BOOL)isMediaTypeSupportedInPaginated:(id)paginated
{
  paginatedMediaTypes = [self paginatedMediaTypes];

  return [paginatedMediaTypes containsObject:paginated];
}

+ (void)registerFontsFromDictionary:(id)dictionary readerState:(id)state
{
  v18 = [objc_msgSend(state "archive")];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allValues = [dictionary allValues];
  v6 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        objc_opt_class();
        [v10 objectForKey:@"src"];
        v11 = TSUDynamicCast();
        objc_opt_class();
        [v11 lastObject];
        v12 = TSUDynamicCast();
        if (v12)
        {
          v13 = v12;
          if ([v12 type] == &stru_108.addr + 1)
          {
            objc_opt_class();
            [v13 value];
            v14 = TSUDynamicCast();
            v15 = [v14 length];
            if (v15 >= 6)
            {
              v16 = v15;
              if ([v14 hasPrefix:@"url("]
              {
                if ([v14 characterAtIndex:v16 - 1] == 41)
                {
                  v17 = [v14 substringWithRange:{4, v16 - 5}];
                  if (([@"otf" isEqualToString:{objc_msgSend(v17, "pathExtension")}] & 1) != 0 || objc_msgSend(@"ttf", "isEqualToString:", objc_msgSend(v17, "pathExtension")))
                  {
                    v19 = [objc_msgSend(objc_msgSend(state "archive")];
                    objc_opt_class();
                    [objc_msgSend(v10 objectForKey:{@"font-family", "lastObject"}];
                    -[TSWPLoadableFonts registerFontName:forPath:forGroup:isObfuscated:backgroundLoad:](+[TSWPLoadableFonts sharedInstance](TSWPLoadableFonts, "sharedInstance"), "registerFontName:forPath:forGroup:isObfuscated:backgroundLoad:", [TSUDynamicCast() stringValue], v19, objc_msgSend(objc_msgSend(objc_msgSend(state, "thDocumentRoot"), "bookDescription"), "uniquifier"), objc_msgSend(v18, "containsObject:", v17), 1);
                  }
                }
              }
            }
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }
}

@end