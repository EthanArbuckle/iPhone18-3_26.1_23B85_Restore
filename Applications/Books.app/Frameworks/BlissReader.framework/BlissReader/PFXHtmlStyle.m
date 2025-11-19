@interface PFXHtmlStyle
+ (id)createStylesWithSelector:(id)a3 styleCache:(id)a4 isLeaf:(BOOL)a5;
+ (int)whiteSpacePropertyForCurrentOrientation:(id)a3;
+ (void)insertElementAttributes:(id)a3 intoSelector:(id)a4 identifier:(const char *)a5;
+ (void)loadCssPropertiesForHtmlEntry:(id)a3;
+ (void)setupWhiteSpaceForCurrentOrientation:(id)a3;
@end

@implementation PFXHtmlStyle

+ (void)loadCssPropertiesForHtmlEntry:(id)a3
{
  v20 = objc_alloc_init(NSAutoreleasePool);
  v5 = [a3 htmlReaderState];
  v6 = [a3 xmlElementId];
  if (v6)
  {
    if ([v5 orientationCount])
    {
      v7 = 0;
      while (1)
      {
        [v5 switchToOrientation:v7];
        if ([objc_msgSend(objc_msgSend(v5 "currentHtmlDocMediaState")])
        {
          break;
        }

        if (++v7 >= [v5 orientationCount])
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v6 = 0;
    }
  }

  v8 = objc_alloc_init(PFSStyleSelector);
  [a1 insertElementAttributes:a3 intoSelector:v8 identifier:v6];
  [(PFSStyleSelector *)v8 freeze];
  [a3 setStyleSelector:v8];
  if ([v5 orientationCount])
  {
    v9 = 0;
    do
    {
      [v5 switchToOrientation:v9];
      v10 = [a3 currentEntryMediaState];
      v11 = [a1 createStylesWithSelector:v8 styleCache:objc_msgSend(objc_msgSend(v5 isLeaf:{"currentHtmlDocMediaState"), "styleCache"), 1}];
      [v10 setPropertySet:v11];

      ++v9;
    }

    while (v9 < [v5 orientationCount]);
  }

  v12 = [objc_msgSend(a3 "styleAttribute")];
  if (v12)
  {
    v13 = v12;
    if (*v12)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      v15 = objc_alloc_init(NSMutableDictionary);
      +[PFXStylesheet readStylesheetFromStyleAttributeContents:sourceURL:toDictionary:toFontDictionary:readerState:](PFXStylesheet, "readStylesheetFromStyleAttributeContents:sourceURL:toDictionary:toFontDictionary:readerState:", v13, [v5 entryNSURL], v14, v15, v5);
      [PFXStylesheet registerFontsFromDictionary:v15 readerState:v5];
      v16 = objc_alloc_init(PFSStyleCache);
      [(PFSStyleCache *)v16 addEntriesFromDictionary:v14];
      v17 = [a1 createStylesWithSelector:+[PFSStyleSelector allElementsSelector](PFSStyleSelector styleCache:"allElementsSelector") isLeaf:{v16, 1}];

      if ([v5 orientationCount])
      {
        v18 = 0;
        do
        {
          [v5 switchToOrientation:v18];
          [objc_msgSend(objc_msgSend(a3 "currentEntryMediaState")];
          ++v18;
        }

        while (v18 < [v5 orientationCount]);
      }
    }
  }

  if ([v5 orientationCount])
  {
    v19 = 0;
    do
    {
      [v5 switchToOrientation:v19];
      [a1 setupWhiteSpaceForCurrentOrientation:a3];
      ++v19;
    }

    while (v19 < [v5 orientationCount]);
  }
}

+ (id)createStylesWithSelector:(id)a3 styleCache:(id)a4 isLeaf:(BOOL)a5
{
  if (a4)
  {
    v7 = [a4 createPropertySetWithSelector:a3];
    v8 = v7;
    if (!a5)
    {
      [v7 removeUninheritedProperties];
    }

    return v8;
  }

  else
  {

    return objc_alloc_init(PFSPropertySet);
  }
}

+ (void)insertElementAttributes:(id)a3 intoSelector:(id)a4 identifier:(const char *)a5
{
  if (([a1 isAtCollapseBorder:?] & 1) == 0)
  {
    [a1 insertElementAttributes:objc_msgSend(a3 intoSelector:"parentHtmlStackEntry") identifier:{a4, a5}];
  }

  PFSStyleSimpleSelector::setElement([a4 addSimpleSelector], objc_msgSend(a3, "xmlElementName"));
}

+ (int)whiteSpacePropertyForCurrentOrientation:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = [a3 currentEntryMediaState];
  if ([v5 whitespace] == 5)
  {
    if (xmlStrEqual("table", [a3 xmlElementName]))
    {
      return 0;
    }

    v7 = [a3 parentHtmlStackEntry];

    return [a1 whiteSpacePropertyForCurrentOrientation:v7];
  }

  else
  {

    return [v5 whitespace];
  }
}

+ (void)setupWhiteSpaceForCurrentOrientation:(id)a3
{
  v5 = [a3 currentEntryMediaState];
  v6 = [objc_msgSend(v5 "propertySet")];
  if (v6)
  {
    v7 = [v6 lastObject];
    if ([v7 type] == &stru_108 && (v8 = objc_msgSend(v7, "value"), (objc_msgSend(@"normal", "isEqualToString:", v8) & 1) == 0))
    {
      if ([@"pre" isEqualToString:v8])
      {
        v9 = &dword_0 + 1;
      }

      else if ([@"nowrap" isEqualToString:v8])
      {
        v9 = &dword_0 + 2;
      }

      else if ([@"pre-wrap" isEqualToString:v8])
      {
        v9 = &dword_0 + 3;
      }

      else if ([@"pre-line" isEqualToString:v8])
      {
        v9 = &dword_4;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [a1 whiteSpacePropertyForCurrentOrientation:a3];
  }

  [v5 setWhitespace:v9];
}

@end