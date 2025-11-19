@interface BKDocument
+ (id)documentKeyWithHref:(id)a3 documentOrdinal:(id)a4;
+ (id)newEmptyDocument:(id)a3;
- (BOOL)hasMediaOverlayElements;
- (CGRect)estimatedFixedLayoutViewFrame;
- (CGSize)fixedLayoutSize;
- (id)documentKey;
- (id)mediaOverlayElements;
- (int64_t)unboxedDocumentOrdinal;
- (void)copyPropertiesFrom:(id)a3;
@end

@implementation BKDocument

- (CGRect)estimatedFixedLayoutViewFrame
{
  v3 = [(BKDocument *)self fixedLayoutWidth];
  [v3 doubleValue];
  v5 = v4;

  v6 = [(BKDocument *)self fixedLayoutHeight];
  [v6 doubleValue];
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
  v3 = [(BKDocument *)self fixedLayoutWidth];
  [v3 doubleValue];
  v5 = v4;
  v6 = [(BKDocument *)self fixedLayoutHeight];
  [v6 doubleValue];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)copyPropertiesFrom:(id)a3
{
  v4 = a3;
  v5 = [v4 bookDatabaseKey];
  [(BKDocument *)self setBookDatabaseKey:v5];

  v6 = [v4 href];
  [(BKDocument *)self setHref:v6];

  v7 = [v4 mime];
  [(BKDocument *)self setMime:v7];

  v8 = [v4 compressionAlgorithm];
  [(BKDocument *)self setCompressionAlgorithm:v8];

  v9 = [v4 encryptionAlgorithm];
  [(BKDocument *)self setEncryptionAlgorithm:v9];

  v10 = [v4 documentOrdinal];
  [(BKDocument *)self setDocumentOrdinal:v10];

  v11 = [v4 fileSize];
  [(BKDocument *)self setFileSize:v11];

  v12 = [v4 hasTocElements];
  [(BKDocument *)self setHasTocElements:v12];

  v13 = [v4 hasLandmarkElements];
  [(BKDocument *)self setHasLandmarkElements:v13];

  v14 = [v4 hasPhysicalElements];
  [(BKDocument *)self setHasPhysicalElements:v14];

  v15 = [v4 nonlinearElement];
  [(BKDocument *)self setNonlinearElement:v15];

  v16 = [v4 mediaOverlayHref];
  [(BKDocument *)self setMediaOverlayHref:v16];

  v17 = [v4 mediaOverlayParsed];
  [(BKDocument *)self setMediaOverlayParsed:v17];

  v18 = [v4 sinfNumber];
  [(BKDocument *)self setSinfNumber:v18];

  v19 = [v4 fallbackId];
  [(BKDocument *)self setFallbackId:v19];

  v20 = [v4 manifestId];
  [(BKDocument *)self setManifestId:v20];

  v21 = [v4 manifestProperties];
  [(BKDocument *)self setManifestProperties:v21];

  v22 = [v4 orthography];
  [(BKDocument *)self setOrthography:v22];

  v23 = [v4 isDuplicateSpineEntry];

  [(BKDocument *)self setIsDuplicateSpineEntry:v23];
}

+ (id)newEmptyDocument:(id)a3
{
  v3 = a3;
  v4 = [v3 newByClass:objc_opt_class()];

  return v4;
}

- (BOOL)hasMediaOverlayElements
{
  v2 = [(BKDocument *)self mediaOverlayHref];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)mediaOverlayElements
{
  if ([(BKDocument *)self hasMediaOverlayElements])
  {
    v3 = [(BKDocument *)self mediaOverlayParsed];
    v4 = [v3 BOOLValue];

    if ((v4 & 1) == 0)
    {
      v5 = [(BKDocument *)self managedObjectContext];
      v6 = [(BKDocument *)self bookDatabaseKey];
      v7 = [AEBookInfo bookFromDatabaseKey:v6 withMOC:v5];

      if (v7)
      {
        v8 = [v7 bookContentSubpath];
        v9 = [v7 basePlusContentPath];
        v10 = [v7 basePlusContentPath];
        v11 = [(BKDocument *)self mediaOverlayHref];
        v12 = [v10 stringByAppendingPathComponent:v11];

        v13 = [(BKDocument *)self bookDatabaseKey];
        v14 = [BKMediaOverlayElement parseSMIL:v12 contentSubpath:v8 bookBasePath:v9 bookDatabaseKey:v13 managedObjectContext:v5];

        if (v14)
        {
          NSLog(@"SMIL Parsing failed: %d Path: %@", v14, v12);
        }

        else
        {
          v16 = [NSNumber numberWithBool:1];
          [(BKDocument *)self setMediaOverlayParsed:v16];

          [v5 save:0];
        }
      }
    }

    v17 = [(BKDocument *)self href];
    v18 = [(BKDocument *)self bookDatabaseKey];
    v19 = [NSPredicate predicateWithFormat:@"documentHref == %@ AND bookDatabaseKey == %@", v17, v18];

    v20 = [(BKDocument *)self managedObjectContext];
    v15 = [v20 entity:@"BKMediaOverlayElement" withPredicate:v19 sortBy:@"documentAbsoluteOrder" ascending:1 fetchLimit:0];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)documentKeyWithHref:(id)a3 documentOrdinal:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_22D0E0 == -1)
  {
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1384F8();
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  if (v6)
  {
    v7 = [NSString stringWithFormat:@"%@:%@", v5, v6];
    goto LABEL_7;
  }

LABEL_6:
  v7 = v5;
LABEL_7:
  v8 = v7;

  return v8;
}

- (id)documentKey
{
  v3 = objc_opt_class();
  v4 = [(BKDocument *)self href];
  v5 = [(BKDocument *)self documentOrdinal];
  v6 = [v3 documentKeyWithHref:v4 documentOrdinal:v5];

  return v6;
}

- (int64_t)unboxedDocumentOrdinal
{
  v2 = [(BKDocument *)self documentOrdinal];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

@end