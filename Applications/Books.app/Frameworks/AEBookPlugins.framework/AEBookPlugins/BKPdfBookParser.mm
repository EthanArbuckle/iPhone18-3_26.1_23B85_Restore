@interface BKPdfBookParser
+ (unint64_t)pdfHrefToPageNumber:(id)number;
- (id)hrefForPageNumber:(unint64_t)number;
- (int)constructBKNavigationInfoWithPdfTocEntry:(id)entry absoluteOrder:(int)order indentationLevel:(int)level;
- (int)loadMetadata;
- (int)parse:(BOOL)parse;
- (void)constructBKDocumentWithPdfTocParser:(id)parser;
- (void)constructBKNavigationInfoWithPdfTocParser:(id)parser;
@end

@implementation BKPdfBookParser

- (int)parse:(BOOL)parse
{
  book = [(BKBookParser *)self book];
  wasParsed = [book wasParsed];

  if (wasParsed)
  {
    return 0;
  }

  v8 = +[AEPdfCache sharedInstance];
  book2 = [(BKBookParser *)self book];
  v10 = [v8 copyCacheObjectForBook:book2];
  pdfObject = self->_pdfObject;
  self->_pdfObject = v10;

  pdfObject = [(BKPdfBookParser *)self pdfObject];
  document = [pdfObject document];

  if (document)
  {
    if ([document isLocked])
    {
      book3 = [(BKBookParser *)self book];
      v15 = AEBundle();
      v16 = [v15 localizedStringForKey:@"Untitled" value:&stru_1E7188 table:0];
      [(BKPdfTocParser *)book3 setBookTitle:v16];

      book5 = AEBundle();
      v18 = [book5 localizedStringForKey:@"Untitled" value:&stru_1E7188 table:0];
      [(BKPdfTocParser *)book3 setSortTitle:v18];
    }

    else
    {
      loadMetadata = [(BKPdfBookParser *)self loadMetadata];
      if (loadMetadata || parse)
      {
        goto LABEL_11;
      }

      book4 = [(BKBookParser *)self book];
      [book4 resetAsNewlyDownloaded];

      book3 = -[BKPdfTocParser initWithDocument:]([BKPdfTocParser alloc], "initWithDocument:", [document documentRef]);
      [(BKPdfBookParser *)self constructBKNavigationInfoWithPdfTocParser:book3];
      [(BKPdfBookParser *)self constructBKDocumentWithPdfTocParser:book3];
      book5 = [(BKBookParser *)self book];
      [book5 setParserVersion:BKPdfBookParser_CurrentVersion[0]];
    }

    loadMetadata = 0;
  }

  else
  {
    loadMetadata = -1;
  }

LABEL_11:
  book6 = [(BKBookParser *)self book];
  fileSize = [book6 fileSize];
  longLongValue = [fileSize longLongValue];

  if (!longLongValue)
  {
    v23 = +[NSFileManager defaultManager];
    book7 = [(BKBookParser *)self book];
    v25 = [book7 url];
    path = [v25 path];
    v27 = [v23 attributesOfItemAtPath:path error:0];

    fileSize2 = [v27 fileSize];
    if (fileSize2)
    {
      book8 = [(BKBookParser *)self book];
      v30 = [NSNumber numberWithLongLong:fileSize2];
      [book8 setFileSize:v30];
    }
  }

  return loadMetadata;
}

- (id)hrefForPageNumber:(unint64_t)number
{
  if (number == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = &stru_1E7188;
  }

  else
  {
    v5 = [NSString stringWithFormat:@"%@%d", BKPdfBookParserFakeBaseHref[0], number, v3];
  }

  return v5;
}

- (int)loadMetadata
{
  pdfObject = [(BKPdfBookParser *)self pdfObject];
  document = [pdfObject document];
  Info = CGPDFDocumentGetInfo([document documentRef]);

  if (!Info)
  {
    return 0;
  }

  value = 0;
  book = [(BKBookParser *)self book];
  if (CGPDFDictionaryGetString(Info, "Title", &value))
  {
    v7 = CGPDFStringCopyTextString(value);
    if ([(__CFString *)v7 length])
    {
      bookTitle = [book bookTitle];
      v9 = [bookTitle length];

      if (!v9)
      {
        [book setBookTitle:v7];
        [book setSortTitle:v7];
      }
    }
  }

  bookAuthor = [book bookAuthor];
  if (![bookAuthor length])
  {

    goto LABEL_11;
  }

  sortAuthor = [book sortAuthor];
  v12 = [sortAuthor length];

  if (!v12)
  {
LABEL_11:
    if (CGPDFDictionaryGetString(Info, "Author", &value))
    {
      v13 = CGPDFStringCopyTextString(value);
      if ([(__CFString *)v13 length])
      {
        bookAuthor2 = [book bookAuthor];
        v15 = [bookAuthor2 length];

        if (!v15)
        {
          [book setBookAuthor:v13];
        }

        sortAuthor2 = [book sortAuthor];
        v17 = [sortAuthor2 length];

        if (!v17)
        {
          [book setSortAuthor:v13];
        }
      }
    }
  }

  genre = [book genre];
  v19 = [genre length];

  if (!v19 && CGPDFDictionaryGetString(Info, "Subject", &value))
  {
    v20 = CGPDFStringCopyTextString(value);
    if ([(__CFString *)v20 length])
    {
      [book setGenre:v20];
    }
  }

  v21 = [(BKPdfBookParser *)self hrefForPageNumber:1];
  [book setEmbeddedArtHref:v21];

  return 0;
}

+ (unint64_t)pdfHrefToPageNumber:(id)number
{
  numberCopy = number;
  v4 = [(__CFString *)BKPdfBookParserFakeBaseHref[0] length];
  if ([numberCopy length] >= v4)
  {
    v6 = [numberCopy substringFromIndex:v4];
    if ([v6 length])
    {
      v5 = [BKPdfBookParser pdfAnchorToPageNumber:v6];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (int)constructBKNavigationInfoWithPdfTocEntry:(id)entry absoluteOrder:(int)order indentationLevel:(int)level
{
  v5 = *&level;
  v6 = *&order;
  entryCopy = entry;
  if ((v6 & 0x80000000) != 0)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    book = [(BKBookParser *)self book];
    managedObjectContext = [book managedObjectContext];

    v11 = [BKNavigationInfo newEmptyNavigationInfo:managedObjectContext];
    v12 = -[BKPdfBookParser hrefForPageNumber:](self, "hrefForPageNumber:", [entryCopy pageNumber]);
    [v11 setHref:v12];

    [v11 setBaseHref:BKPdfBookParserFakeBaseHref[0]];
    title = [entryCopy title];
    [v11 setName:title];

    v14 = [NSNumber numberWithInt:v5];
    [v11 setIndentationLevel:v14];

    v15 = [NSNumber numberWithInt:v6];
    [v11 setAbsoluteOrder:v15];

    book2 = [(BKBookParser *)self book];
    [book2 addChaptersObject:v11];

    v17 = (v5 + 1);
    v18 = (v6 + 1);
  }

  numberOfChildren = [entryCopy numberOfChildren];
  if (numberOfChildren)
  {
    for (i = 0; i != numberOfChildren; ++i)
    {
      v21 = [entryCopy childAtIndex:i];
      if (v21)
      {
        v18 = [(BKPdfBookParser *)self constructBKNavigationInfoWithPdfTocEntry:v21 absoluteOrder:v18 indentationLevel:v17];
      }
    }
  }

  return v18;
}

- (void)constructBKNavigationInfoWithPdfTocParser:(id)parser
{
  parserCopy = parser;
  if (parserCopy)
  {
    v6 = parserCopy;
    tocRoot = [parserCopy tocRoot];
    if (tocRoot)
    {
      [(BKPdfBookParser *)self constructBKNavigationInfoWithPdfTocEntry:tocRoot absoluteOrder:0xFFFFFFFFLL indentationLevel:0xFFFFFFFFLL];
    }

    parserCopy = v6;
  }
}

- (void)constructBKDocumentWithPdfTocParser:(id)parser
{
  parserCopy = parser;
  book = [(BKBookParser *)self book];
  bookBundlePath = [book bookBundlePath];
  Size = ITFileUtil::GetSize(bookBundlePath, v6);

  book2 = [(BKBookParser *)self book];
  managedObjectContext = [book2 managedObjectContext];

  v10 = [BKDocument newEmptyDocument:managedObjectContext];
  book3 = [(BKBookParser *)self book];
  databaseKey = [book3 databaseKey];
  [v10 setBookDatabaseKey:databaseKey];

  [v10 setHref:BKPdfBookParserFakeBaseHref[0]];
  [v10 setMime:@"application/pdf"];
  v13 = [NSNumber numberWithInt:0];
  [v10 setDocumentOrdinal:v13];

  v14 = [NSNumber numberWithUnsignedLongLong:Size];
  [v10 setFileSize:v14];

  [v10 setManifestId:&stru_1E7188];
  tocRoot = [parserCopy tocRoot];
  numberOfChildren = [tocRoot numberOfChildren];

  if (numberOfChildren)
  {
    v17 = [NSNumber numberWithBool:1];
    [v10 setHasTocElements:v17];
  }
}

@end