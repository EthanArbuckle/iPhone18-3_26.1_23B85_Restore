@interface BKDocument
+ (id)documentKeyWithHref:(id)href documentOrdinal:(id)ordinal;
+ (id)newEmptyDocument:(id)document;
- (BOOL)hasMediaOverlayElements;
- (CGRect)estimatedFixedLayoutViewFrame;
- (CGSize)fixedLayoutSize;
- (id)documentKey;
- (id)mediaOverlayElements;
- (int64_t)unboxedDocumentOrdinal;
- (void)copyPropertiesFrom:(id)from;
@end

@implementation BKDocument

- (CGRect)estimatedFixedLayoutViewFrame
{
  fixedLayoutWidth = [(BKDocument *)self fixedLayoutWidth];
  [fixedLayoutWidth doubleValue];
  v5 = v4;

  fixedLayoutHeight = [(BKDocument *)self fixedLayoutHeight];
  [fixedLayoutHeight doubleValue];
  v8 = v7;

  if (v5 <= 0.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_136E38();
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_136ED4();
    }
  }

  else if (v8 <= 0.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_136F18();
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_136FB4();
    }
  }

  else
  {
    v9 = +[UIScreen mainScreen];
    [v9 bounds];
  }

  y = CGRectZero.origin.y;
  IMSizeRound();
  v12 = v11;
  v14 = v13;
  x = CGRectZero.origin.x;
  v16 = y;
  result.size.height = v14;
  result.size.width = v12;
  result.origin.y = v16;
  result.origin.x = x;
  return result;
}

- (CGSize)fixedLayoutSize
{
  fixedLayoutWidth = [(BKDocument *)self fixedLayoutWidth];
  [fixedLayoutWidth doubleValue];
  v5 = v4;
  fixedLayoutHeight = [(BKDocument *)self fixedLayoutHeight];
  [fixedLayoutHeight doubleValue];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)copyPropertiesFrom:(id)from
{
  fromCopy = from;
  bookDatabaseKey = [fromCopy bookDatabaseKey];
  [(BKDocument *)self setBookDatabaseKey:bookDatabaseKey];

  href = [fromCopy href];
  [(BKDocument *)self setHref:href];

  mime = [fromCopy mime];
  [(BKDocument *)self setMime:mime];

  compressionAlgorithm = [fromCopy compressionAlgorithm];
  [(BKDocument *)self setCompressionAlgorithm:compressionAlgorithm];

  encryptionAlgorithm = [fromCopy encryptionAlgorithm];
  [(BKDocument *)self setEncryptionAlgorithm:encryptionAlgorithm];

  documentOrdinal = [fromCopy documentOrdinal];
  [(BKDocument *)self setDocumentOrdinal:documentOrdinal];

  fileSize = [fromCopy fileSize];
  [(BKDocument *)self setFileSize:fileSize];

  hasTocElements = [fromCopy hasTocElements];
  [(BKDocument *)self setHasTocElements:hasTocElements];

  hasLandmarkElements = [fromCopy hasLandmarkElements];
  [(BKDocument *)self setHasLandmarkElements:hasLandmarkElements];

  hasPhysicalElements = [fromCopy hasPhysicalElements];
  [(BKDocument *)self setHasPhysicalElements:hasPhysicalElements];

  nonlinearElement = [fromCopy nonlinearElement];
  [(BKDocument *)self setNonlinearElement:nonlinearElement];

  mediaOverlayHref = [fromCopy mediaOverlayHref];
  [(BKDocument *)self setMediaOverlayHref:mediaOverlayHref];

  mediaOverlayParsed = [fromCopy mediaOverlayParsed];
  [(BKDocument *)self setMediaOverlayParsed:mediaOverlayParsed];

  sinfNumber = [fromCopy sinfNumber];
  [(BKDocument *)self setSinfNumber:sinfNumber];

  fallbackId = [fromCopy fallbackId];
  [(BKDocument *)self setFallbackId:fallbackId];

  manifestId = [fromCopy manifestId];
  [(BKDocument *)self setManifestId:manifestId];

  manifestProperties = [fromCopy manifestProperties];
  [(BKDocument *)self setManifestProperties:manifestProperties];

  orthography = [fromCopy orthography];
  [(BKDocument *)self setOrthography:orthography];

  isDuplicateSpineEntry = [fromCopy isDuplicateSpineEntry];

  [(BKDocument *)self setIsDuplicateSpineEntry:isDuplicateSpineEntry];
}

+ (id)newEmptyDocument:(id)document
{
  documentCopy = document;
  v4 = [documentCopy newByClass:objc_opt_class()];

  return v4;
}

- (BOOL)hasMediaOverlayElements
{
  mediaOverlayHref = [(BKDocument *)self mediaOverlayHref];
  v3 = [mediaOverlayHref length] != 0;

  return v3;
}

- (id)mediaOverlayElements
{
  if ([(BKDocument *)self hasMediaOverlayElements])
  {
    mediaOverlayParsed = [(BKDocument *)self mediaOverlayParsed];
    bOOLValue = [mediaOverlayParsed BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      managedObjectContext = [(BKDocument *)self managedObjectContext];
      bookDatabaseKey = [(BKDocument *)self bookDatabaseKey];
      v7 = [AEBookInfo bookFromDatabaseKey:bookDatabaseKey withMOC:managedObjectContext];

      if (v7)
      {
        bookContentSubpath = [v7 bookContentSubpath];
        basePlusContentPath = [v7 basePlusContentPath];
        basePlusContentPath2 = [v7 basePlusContentPath];
        mediaOverlayHref = [(BKDocument *)self mediaOverlayHref];
        v12 = [basePlusContentPath2 stringByAppendingPathComponent:mediaOverlayHref];

        bookDatabaseKey2 = [(BKDocument *)self bookDatabaseKey];
        v14 = [BKMediaOverlayElement parseSMIL:v12 contentSubpath:bookContentSubpath bookBasePath:basePlusContentPath bookDatabaseKey:bookDatabaseKey2 managedObjectContext:managedObjectContext];

        if (v14)
        {
          NSLog(@"SMIL Parsing failed: %d Path: %@", v14, v12);
        }

        else
        {
          v16 = [NSNumber numberWithBool:1];
          [(BKDocument *)self setMediaOverlayParsed:v16];

          [managedObjectContext save:0];
        }
      }
    }

    href = [(BKDocument *)self href];
    bookDatabaseKey3 = [(BKDocument *)self bookDatabaseKey];
    v19 = [NSPredicate predicateWithFormat:@"documentHref == %@ AND bookDatabaseKey == %@", href, bookDatabaseKey3];

    managedObjectContext2 = [(BKDocument *)self managedObjectContext];
    v15 = [managedObjectContext2 entity:@"BKMediaOverlayElement" withPredicate:v19 sortBy:@"documentAbsoluteOrder" ascending:1 fetchLimit:0];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)documentKeyWithHref:(id)href documentOrdinal:(id)ordinal
{
  hrefCopy = href;
  ordinalCopy = ordinal;
  if (qword_22D0E0 == -1)
  {
    if (!hrefCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1384F8();
    if (!hrefCopy)
    {
      goto LABEL_6;
    }
  }

  if (ordinalCopy)
  {
    ordinalCopy = [NSString stringWithFormat:@"%@:%@", hrefCopy, ordinalCopy];
    goto LABEL_7;
  }

LABEL_6:
  ordinalCopy = hrefCopy;
LABEL_7:
  v8 = ordinalCopy;

  return v8;
}

- (id)documentKey
{
  v3 = objc_opt_class();
  href = [(BKDocument *)self href];
  documentOrdinal = [(BKDocument *)self documentOrdinal];
  v6 = [v3 documentKeyWithHref:href documentOrdinal:documentOrdinal];

  return v6;
}

- (int64_t)unboxedDocumentOrdinal
{
  documentOrdinal = [(BKDocument *)self documentOrdinal];
  v3 = documentOrdinal;
  if (documentOrdinal)
  {
    integerValue = [documentOrdinal integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

@end