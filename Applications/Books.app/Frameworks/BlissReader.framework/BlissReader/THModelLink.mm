@interface THModelLink
+ (id)modelLinkWithChapterGUID:(id)d context:(id)context;
- (BOOL)isChapterGuidLink;
- (BOOL)isChapterLink;
- (BOOL)isCustom;
- (BOOL)isDynamic;
- (BOOL)isOrdinary;
- (BOOL)isPageLink;
- (BOOL)isRelative;
- (BOOL)p_fragmentIsFunction:(id)function;
- (BOOL)p_isCustomApplePubPageLink;
- (BOOL)targetIsApplePub;
- (BOOL)targetIsiBooks;
- (THModelLink)initWithPath:(id)path fragment:(id)fragment context:(id)context;
- (THModelLink)initWithTarget:(id)target context:(id)context;
- (id)chapterGuidString;
- (id)chapterString;
- (id)description;
- (id)docId;
- (id)docPath;
- (id)docRelativePath;
- (id)fragment;
- (id)p_parameterValueFromFragmentWithFunction:(id)function;
- (id)pageNumberString;
- (int64_t)customPageIndex;
- (void)dealloc;
@end

@implementation THModelLink

- (THModelLink)initWithTarget:(id)target context:(id)context
{
  v8.receiver = self;
  v8.super_class = THModelLink;
  v5 = [(THModelLink *)&v8 initWithContext:context];
  v6 = v5;
  if (v5)
  {
    [(THModelLink *)v5 setTarget:target];
    [(THModelLink *)v6 setUrl:[NSURL URLWithString:target]];
    [(THModelLink *)v6 setCachedAbsolutePageIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return v6;
}

- (THModelLink)initWithPath:(id)path fragment:(id)fragment context:(id)context
{
  v9 = objc_alloc_init(NSURLComponents);
  [v9 setScheme:@"apub"];
  [v9 setPath:path];
  v10 = [objc_msgSend(v9 "URL")];
  fragment = v10;
  if (fragment)
  {
    fragment = [v10 stringByAppendingFormat:@"#%@", fragment];
  }

  return [(THModelLink *)self initWithTarget:fragment context:context];
}

- (void)dealloc
{
  [(THModelLink *)self setUrl:0];
  [(THModelLink *)self setTarget:0];
  v3.receiver = self;
  v3.super_class = THModelLink;
  [(THModelLink *)&v3 dealloc];
}

+ (id)modelLinkWithChapterGUID:(id)d context:(id)context
{
  if (!d)
  {
    return 0;
  }

  context = [[THModelLink alloc] initWithTarget:[NSString context:"stringWithFormat:" stringWithFormat:d], context];

  return context;
}

- (BOOL)targetIsApplePub
{
  lowercaseString = [(NSString *)[(NSURL *)[(THModelLink *)self url] scheme] lowercaseString];
  if (![(NSString *)lowercaseString length])
  {
    return 1;
  }

  return [(NSString *)lowercaseString isEqualToString:@"apub"];
}

- (BOOL)targetIsiBooks
{
  lowercaseString = [(NSString *)[(NSURL *)[(THModelLink *)self url] scheme] lowercaseString];

  return [(NSString *)lowercaseString isEqualToString:@"ibooks"];
}

- (id)docPath
{
  if (![(THModelLink *)self targetIsApplePub])
  {
    return 0;
  }

  v3 = [(THModelLink *)self url];

  return [(NSURL *)v3 path];
}

- (id)docId
{
  if (![(THModelLink *)self targetIsApplePub]|| ![(NSString *)[(NSURL *)[(THModelLink *)self url] path] hasPrefix:@"/"])
  {
    return 0;
  }

  pathComponents = [(NSURL *)[(THModelLink *)self url] pathComponents];
  if ([(NSArray *)pathComponents count]<= 3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(NSArray *)pathComponents count]< 4)
  {
    return 0;
  }

  v4 = [(NSArray *)pathComponents subarrayWithRange:1, 3];

  return [(NSArray *)v4 componentsJoinedByString:@"/"];
}

- (id)docRelativePath
{
  if (![(THModelLink *)self targetIsApplePub])
  {
    return 0;
  }

  v3 = [(NSString *)[(NSURL *)[(THModelLink *)self url] path] hasPrefix:@"/"];
  v4 = [(THModelLink *)self url];
  if (v3)
  {
    pathComponents = [(NSURL *)v4 pathComponents];
    if ([(NSArray *)pathComponents count]<= 3)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if ([(NSArray *)pathComponents count]>= 4)
    {
      v6 = [(NSArray *)pathComponents subarrayWithRange:4, [(NSArray *)pathComponents count]- 4];

      return [(NSArray *)v6 componentsJoinedByString:@"/"];
    }

    return 0;
  }

  return [(NSURL *)v4 path];
}

- (id)fragment
{
  if (![(THModelLink *)self targetIsApplePub]&& ![(THModelLink *)self targetIsiBooks])
  {
    return 0;
  }

  v3 = [(THModelLink *)self url];

  return [(NSURL *)v3 fragment];
}

- (BOOL)isRelative
{
  if ([(NSString *)[(NSURL *)[(THModelLink *)self url] relativeString] isEqual:[(NSURL *)[(THModelLink *)self url] absoluteString]])
  {
    return ![(NSString *)[(NSURL *)[(THModelLink *)self url] path] hasPrefix:@"/"];
  }

  else
  {
    return 1;
  }
}

- (id)p_parameterValueFromFragmentWithFunction:(id)function
{
  v4 = [(NSString *)[(NSURL *)[(THModelLink *)self url] fragment] stringByTrimmingCharactersInSet:+[NSCharacterSet whitespaceCharacterSet]];
  v5 = [function length];
  if (v5 + 2 >= [(NSString *)v4 length])
  {
    return 0;
  }

  v6 = ([(NSString *)v4 length]- v5 - 2);

  return [(NSString *)v4 substringWithRange:v5 + 1, v6];
}

- (BOOL)p_fragmentIsFunction:(id)function
{
  v4 = [(NSString *)[(NSURL *)[(THModelLink *)self url] fragment] stringByTrimmingCharactersInSet:+[NSCharacterSet whitespaceCharacterSet]];
  v5 = -[NSString hasPrefix:](v4, "hasPrefix:", [function stringByAppendingString:@"("];
  if (v5)
  {

    LOBYTE(v5) = [(NSString *)v4 hasSuffix:@""]);
  }

  return v5;
}

- (BOOL)isPageLink
{
  v3 = [(NSString *)[(NSURL *)[(THModelLink *)self url] fragment] stringByTrimmingCharactersInSet:+[NSCharacterSet whitespaceCharacterSet]];
  if (![(THModelLink *)self targetIsiBooks]|| ![(NSString *)v3 hasPrefix:@"page(")]
  {
    return 0;
  }

  return [(NSString *)v3 hasSuffix:@""]);
}

- (BOOL)isChapterLink
{
  targetIsiBooks = [(THModelLink *)self targetIsiBooks];
  if (targetIsiBooks)
  {

    LOBYTE(targetIsiBooks) = [(THModelLink *)self p_fragmentIsFunction:@"chapter"];
  }

  return targetIsiBooks;
}

- (BOOL)isChapterGuidLink
{
  targetIsiBooks = [(THModelLink *)self targetIsiBooks];
  if (targetIsiBooks)
  {

    LOBYTE(targetIsiBooks) = [(THModelLink *)self p_fragmentIsFunction:@"chapterguid"];
  }

  return targetIsiBooks;
}

- (id)pageNumberString
{
  if (![(THModelLink *)self isPageLink])
  {
    return 0;
  }

  v3 = [(NSString *)[(NSURL *)[(THModelLink *)self url] fragment] stringByTrimmingCharactersInSet:+[NSCharacterSet whitespaceCharacterSet]];
  if (![(NSString *)v3 hasPrefix:@"page(") || ![(NSString *)v3 hasSuffix:@""]])
  {
    return 0;
  }

  v4 = [(NSString *)v3 length]- 6;

  return [(NSString *)v3 substringWithRange:5, v4];
}

- (id)chapterString
{
  if (![(THModelLink *)self isChapterLink])
  {
    return 0;
  }

  return [(THModelLink *)self p_parameterValueFromFragmentWithFunction:@"chapter"];
}

- (id)chapterGuidString
{
  if (![(THModelLink *)self isChapterGuidLink])
  {
    return 0;
  }

  return [(THModelLink *)self p_parameterValueFromFragmentWithFunction:@"chapterguid"];
}

- (BOOL)p_isCustomApplePubPageLink
{
  targetIsApplePub = [(THModelLink *)self targetIsApplePub];
  if (targetIsApplePub)
  {
    fragment = [(THModelLink *)self fragment];

    LOBYTE(targetIsApplePub) = [fragment hasPrefix:@"x-apple-internal-absolutepageindex-"];
  }

  return targetIsApplePub;
}

- (BOOL)isCustom
{
  targetIsApplePub = [(THModelLink *)self targetIsApplePub];
  if (targetIsApplePub)
  {
    fragment = [(THModelLink *)self fragment];

    LOBYTE(targetIsApplePub) = [fragment hasPrefix:@"x-apple-"];
  }

  return targetIsApplePub;
}

- (int64_t)customPageIndex
{
  if (![(THModelLink *)self p_isCustomApplePubPageLink])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = [-[THModelLink fragment](self "fragment")];

  return [v3 integerValue];
}

- (BOOL)isDynamic
{
  targetIsApplePub = [(THModelLink *)self targetIsApplePub];
  if (targetIsApplePub)
  {
    fragment = [(THModelLink *)self fragment];

    LOBYTE(targetIsApplePub) = [fragment hasPrefix:@"xpointer"];
  }

  return targetIsApplePub;
}

- (BOOL)isOrdinary
{
  if ([(THModelLink *)self isCustom])
  {
    return 0;
  }

  else
  {
    return ![(THModelLink *)self isDynamic];
  }
}

- (id)description
{
  target = [(THModelLink *)self target];
  if ([(THModelLink *)self cachedAbsolutePageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = &stru_471858;
  }

  else
  {
    v4 = [NSString stringWithFormat:@" @p%ud", [(THModelLink *)self cachedAbsolutePageIndex]];
  }

  return [NSString stringWithFormat:@"<link:%@%@>", target, v4];
}

@end