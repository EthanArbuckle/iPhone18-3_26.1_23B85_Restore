@interface PFXHtmlStyle
+ (id)createStylesWithSelector:(id)selector styleCache:(id)cache isLeaf:(BOOL)leaf;
+ (int)whiteSpacePropertyForCurrentOrientation:(id)orientation;
+ (void)insertElementAttributes:(id)attributes intoSelector:(id)selector identifier:(const char *)identifier;
+ (void)loadCssPropertiesForHtmlEntry:(id)entry;
+ (void)setupWhiteSpaceForCurrentOrientation:(id)orientation;
@end

@implementation PFXHtmlStyle

+ (void)loadCssPropertiesForHtmlEntry:(id)entry
{
  v20 = objc_alloc_init(NSAutoreleasePool);
  htmlReaderState = [entry htmlReaderState];
  xmlElementId = [entry xmlElementId];
  if (xmlElementId)
  {
    if ([htmlReaderState orientationCount])
    {
      v7 = 0;
      while (1)
      {
        [htmlReaderState switchToOrientation:v7];
        if ([objc_msgSend(objc_msgSend(htmlReaderState "currentHtmlDocMediaState")])
        {
          break;
        }

        if (++v7 >= [htmlReaderState orientationCount])
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      xmlElementId = 0;
    }
  }

  v8 = objc_alloc_init(PFSStyleSelector);
  [self insertElementAttributes:entry intoSelector:v8 identifier:xmlElementId];
  [(PFSStyleSelector *)v8 freeze];
  [entry setStyleSelector:v8];
  if ([htmlReaderState orientationCount])
  {
    v9 = 0;
    do
    {
      [htmlReaderState switchToOrientation:v9];
      currentEntryMediaState = [entry currentEntryMediaState];
      v11 = [self createStylesWithSelector:v8 styleCache:objc_msgSend(objc_msgSend(htmlReaderState isLeaf:{"currentHtmlDocMediaState"), "styleCache"), 1}];
      [currentEntryMediaState setPropertySet:v11];

      ++v9;
    }

    while (v9 < [htmlReaderState orientationCount]);
  }

  v12 = [objc_msgSend(entry "styleAttribute")];
  if (v12)
  {
    v13 = v12;
    if (*v12)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      v15 = objc_alloc_init(NSMutableDictionary);
      +[PFXStylesheet readStylesheetFromStyleAttributeContents:sourceURL:toDictionary:toFontDictionary:readerState:](PFXStylesheet, "readStylesheetFromStyleAttributeContents:sourceURL:toDictionary:toFontDictionary:readerState:", v13, [htmlReaderState entryNSURL], v14, v15, htmlReaderState);
      [PFXStylesheet registerFontsFromDictionary:v15 readerState:htmlReaderState];
      v16 = objc_alloc_init(PFSStyleCache);
      [(PFSStyleCache *)v16 addEntriesFromDictionary:v14];
      v17 = [self createStylesWithSelector:+[PFSStyleSelector allElementsSelector](PFSStyleSelector styleCache:"allElementsSelector") isLeaf:{v16, 1}];

      if ([htmlReaderState orientationCount])
      {
        v18 = 0;
        do
        {
          [htmlReaderState switchToOrientation:v18];
          [objc_msgSend(objc_msgSend(entry "currentEntryMediaState")];
          ++v18;
        }

        while (v18 < [htmlReaderState orientationCount]);
      }
    }
  }

  if ([htmlReaderState orientationCount])
  {
    v19 = 0;
    do
    {
      [htmlReaderState switchToOrientation:v19];
      [self setupWhiteSpaceForCurrentOrientation:entry];
      ++v19;
    }

    while (v19 < [htmlReaderState orientationCount]);
  }
}

+ (id)createStylesWithSelector:(id)selector styleCache:(id)cache isLeaf:(BOOL)leaf
{
  if (cache)
  {
    v7 = [cache createPropertySetWithSelector:selector];
    v8 = v7;
    if (!leaf)
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

+ (void)insertElementAttributes:(id)attributes intoSelector:(id)selector identifier:(const char *)identifier
{
  if (([self isAtCollapseBorder:?] & 1) == 0)
  {
    [self insertElementAttributes:objc_msgSend(attributes intoSelector:"parentHtmlStackEntry") identifier:{selector, identifier}];
  }

  PFSStyleSimpleSelector::setElement([selector addSimpleSelector], objc_msgSend(attributes, "xmlElementName"));
}

+ (int)whiteSpacePropertyForCurrentOrientation:(id)orientation
{
  if (!orientation)
  {
    return 0;
  }

  currentEntryMediaState = [orientation currentEntryMediaState];
  if ([currentEntryMediaState whitespace] == 5)
  {
    if (xmlStrEqual("table", [orientation xmlElementName]))
    {
      return 0;
    }

    parentHtmlStackEntry = [orientation parentHtmlStackEntry];

    return [self whiteSpacePropertyForCurrentOrientation:parentHtmlStackEntry];
  }

  else
  {

    return [currentEntryMediaState whitespace];
  }
}

+ (void)setupWhiteSpaceForCurrentOrientation:(id)orientation
{
  currentEntryMediaState = [orientation currentEntryMediaState];
  v6 = [objc_msgSend(currentEntryMediaState "propertySet")];
  if (v6)
  {
    lastObject = [v6 lastObject];
    if ([lastObject type] == &stru_108 && (v8 = objc_msgSend(lastObject, "value"), (objc_msgSend(@"normal", "isEqualToString:", v8) & 1) == 0))
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
    v9 = [self whiteSpacePropertyForCurrentOrientation:orientation];
  }

  [currentEntryMediaState setWhitespace:v9];
}

@end