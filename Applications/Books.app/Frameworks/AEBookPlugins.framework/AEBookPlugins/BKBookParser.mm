@interface BKBookParser
+ (BOOL)canParse:(id)parse;
+ (id)parserForBook:(id)book;
- (BKBookParser)initWithBook:(id)book;
@end

@implementation BKBookParser

+ (BOOL)canParse:(id)parse
{
  parseCopy = parse;
  v4 = BookFormatByFilePath();
  if (v4)
  {
    v6 = (v4 & 0xFFFFFFFD) == 0;
  }

  else
  {
    v6 = ITEpubFolder::isMimeCorrect(parseCopy, 0, 0, v5) != 0;
  }

  return v6;
}

+ (id)parserForBook:(id)book
{
  bookCopy = book;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_14;
  }

  contentType = [bookCopy contentType];
  if (contentType)
  {
    if (contentType != 2)
    {
      if (contentType != 3)
      {
        v5 = BCIMLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v10 = 136315650;
          v11 = "+[BKBookParser parserForBook:]";
          v12 = 2080;
          v13 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Models/Parsing/BKBookParser.mm";
          v14 = 1024;
          v15 = 56;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s %s:%d", &v10, 0x1Cu);
        }

        v6 = BCIMLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v10 = 138412290;
          v11 = bookCopy;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "@Unrecognized book content type: %@", &v10, 0xCu);
        }
      }

      goto LABEL_10;
    }

    v8 = off_1E12F8;
  }

  else
  {
    v8 = off_1E12E0;
  }

  v7 = [objc_alloc(*v8) initWithBook:bookCopy];
LABEL_14:

  return v7;
}

- (BKBookParser)initWithBook:(id)book
{
  bookCopy = book;
  v6 = [(BKBookParser *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_book, book);
  }

  return v7;
}

@end