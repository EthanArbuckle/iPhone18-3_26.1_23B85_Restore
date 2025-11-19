@interface THModelLink
+ (id)modelLinkWithChapterGUID:(id)a3 context:(id)a4;
- (BOOL)isChapterGuidLink;
- (BOOL)isChapterLink;
- (BOOL)isCustom;
- (BOOL)isDynamic;
- (BOOL)isOrdinary;
- (BOOL)isPageLink;
- (BOOL)isRelative;
- (BOOL)p_fragmentIsFunction:(id)a3;
- (BOOL)p_isCustomApplePubPageLink;
- (BOOL)targetIsApplePub;
- (BOOL)targetIsiBooks;
- (THModelLink)initWithPath:(id)a3 fragment:(id)a4 context:(id)a5;
- (THModelLink)initWithTarget:(id)a3 context:(id)a4;
- (id)chapterGuidString;
- (id)chapterString;
- (id)description;
- (id)docId;
- (id)docPath;
- (id)docRelativePath;
- (id)fragment;
- (id)p_parameterValueFromFragmentWithFunction:(id)a3;
- (id)pageNumberString;
- (int64_t)customPageIndex;
- (void)dealloc;
@end

@implementation THModelLink

- (THModelLink)initWithTarget:(id)a3 context:(id)a4
{
  v8.receiver = self;
  v8.super_class = THModelLink;
  v5 = [(THModelLink *)&v8 initWithContext:a4];
  v6 = v5;
  if (v5)
  {
    [(THModelLink *)v5 setTarget:a3];
    [(THModelLink *)v6 setUrl:[NSURL URLWithString:a3]];
    [(THModelLink *)v6 setCachedAbsolutePageIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return v6;
}

- (THModelLink)initWithPath:(id)a3 fragment:(id)a4 context:(id)a5
{
  v9 = objc_alloc_init(NSURLComponents);
  [v9 setScheme:@"apub"];
  [v9 setPath:a3];
  v10 = [objc_msgSend(v9 "URL")];
  v11 = v10;
  if (a4)
  {
    v11 = [v10 stringByAppendingFormat:@"#%@", a4];
  }

  return [(THModelLink *)self initWithTarget:v11 context:a5];
}

- (void)dealloc
{
  [(THModelLink *)self setUrl:0];
  [(THModelLink *)self setTarget:0];
  v3.receiver = self;
  v3.super_class = THModelLink;
  [(THModelLink *)&v3 dealloc];
}

+ (id)modelLinkWithChapterGUID:(id)a3 context:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = [[THModelLink alloc] initWithTarget:[NSString context:"stringWithFormat:" stringWithFormat:a3], a4];

  return v4;
}

- (BOOL)targetIsApplePub
{
  v2 = [(NSString *)[(NSURL *)[(THModelLink *)self url] scheme] lowercaseString];
  if (![(NSString *)v2 length])
  {
    return 1;
  }

  return [(NSString *)v2 isEqualToString:@"apub"];
}

- (BOOL)targetIsiBooks
{
  v2 = [(NSString *)[(NSURL *)[(THModelLink *)self url] scheme] lowercaseString];

  return [(NSString *)v2 isEqualToString:@"ibooks"];
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

  v3 = [(NSURL *)[(THModelLink *)self url] pathComponents];
  if ([(NSArray *)v3 count]<= 3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(NSArray *)v3 count]< 4)
  {
    return 0;
  }

  v4 = [(NSArray *)v3 subarrayWithRange:1, 3];

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
    v5 = [(NSURL *)v4 pathComponents];
    if ([(NSArray *)v5 count]<= 3)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if ([(NSArray *)v5 count]>= 4)
    {
      v6 = [(NSArray *)v5 subarrayWithRange:4, [(NSArray *)v5 count]- 4];

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

- (id)p_parameterValueFromFragmentWithFunction:(id)a3
{
  v4 = [(NSString *)[(NSURL *)[(THModelLink *)self url] fragment] stringByTrimmingCharactersInSet:+[NSCharacterSet whitespaceCharacterSet]];
  v5 = [a3 length];
  if (v5 + 2 >= [(NSString *)v4 length])
  {
    return 0;
  }

  v6 = ([(NSString *)v4 length]- v5 - 2);

  return [(NSString *)v4 substringWithRange:v5 + 1, v6];
}

- (BOOL)p_fragmentIsFunction:(id)a3
{
  v4 = [(NSString *)[(NSURL *)[(THModelLink *)self url] fragment] stringByTrimmingCharactersInSet:+[NSCharacterSet whitespaceCharacterSet]];
  v5 = -[NSString hasPrefix:](v4, "hasPrefix:", [a3 stringByAppendingString:@"("];
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
  v3 = [(THModelLink *)self targetIsiBooks];
  if (v3)
  {

    LOBYTE(v3) = [(THModelLink *)self p_fragmentIsFunction:@"chapter"];
  }

  return v3;
}

- (BOOL)isChapterGuidLink
{
  v3 = [(THModelLink *)self targetIsiBooks];
  if (v3)
  {

    LOBYTE(v3) = [(THModelLink *)self p_fragmentIsFunction:@"chapterguid"];
  }

  return v3;
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
  v3 = [(THModelLink *)self targetIsApplePub];
  if (v3)
  {
    v4 = [(THModelLink *)self fragment];

    LOBYTE(v3) = [v4 hasPrefix:@"x-apple-internal-absolutepageindex-"];
  }

  return v3;
}

- (BOOL)isCustom
{
  v3 = [(THModelLink *)self targetIsApplePub];
  if (v3)
  {
    v4 = [(THModelLink *)self fragment];

    LOBYTE(v3) = [v4 hasPrefix:@"x-apple-"];
  }

  return v3;
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
  v3 = [(THModelLink *)self targetIsApplePub];
  if (v3)
  {
    v4 = [(THModelLink *)self fragment];

    LOBYTE(v3) = [v4 hasPrefix:@"xpointer"];
  }

  return v3;
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
  v3 = [(THModelLink *)self target];
  if ([(THModelLink *)self cachedAbsolutePageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = &stru_471858;
  }

  else
  {
    v4 = [NSString stringWithFormat:@" @p%ud", [(THModelLink *)self cachedAbsolutePageIndex]];
  }

  return [NSString stringWithFormat:@"<link:%@%@>", v3, v4];
}

@end