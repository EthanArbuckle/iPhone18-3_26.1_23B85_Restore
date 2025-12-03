@interface THReadingStatisticsCollector
- (THReadingStatisticsCollector)init;
- (_NSRange)_rangeForBodyRep:(id)rep visibleUnscaledRect:(CGRect)rect;
- (void)_scanReadingStatisticsWithNode:(id)node root:(id)root ordinal:(unint64_t *)ordinal level:(int64_t)level childIndex:(int64_t)index;
- (void)bodyReps:(id)reps visibleRectIs:(CGRect)is;
- (void)dealloc;
- (void)readingStatisticsScanOperation:(id)operation addTextNodeCharacterCounts:(id)counts;
@end

@implementation THReadingStatisticsCollector

- (THReadingStatisticsCollector)init
{
  v5.receiver = self;
  v5.super_class = THReadingStatisticsCollector;
  v2 = [(THReadingStatisticsCollector *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    v2->_chapterDataQueue = v3;
    [(NSOperationQueue *)v3 setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_chapterDataQueue setQualityOfService:17];
  }

  return v2;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_chapterDataQueue cancelAllOperations];

  self->_delegate = 0;
  v3.receiver = self;
  v3.super_class = THReadingStatisticsCollector;
  [(THReadingStatisticsCollector *)&v3 dealloc];
}

- (void)bodyReps:(id)reps visibleRectIs:(CGRect)is
{
  height = is.size.height;
  width = is.size.width;
  y = is.origin.y;
  x = is.origin.x;
  [objc_msgSend(objc_msgSend(reps "firstObject")];
  v10 = +[BCMutableCFISet cfiSet];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = [reps countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v31;
    *&v12 = 138412290;
    v28 = v12;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(reps);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        v17 = [(THReadingStatisticsCollector *)self _rangeForBodyRep:v16 visibleUnscaledRect:x, y, width, height, v28];
        v19 = v18;
        storageContentNode = [v16 storageContentNode];
        v21 = [storageContentNode cfiForRange:v17 storageUID:v19 includeFilename:objc_msgSend(storageContentNode pedantic:{"nodeUniqueIDForInfo:", objc_msgSend(v16, "storage")), 0, 1}];
        if (v21)
        {
          v22 = v21;
          v29 = 0;
          [v10 addCFIString:v21 error:&v29];
          if (v29)
          {
            v23 = BCReadingStatisticsLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = v28;
              v35 = v22;
              _os_log_error_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Error forming CFI from string %@", buf, 0xCu);
            }
          }
        }
      }

      v13 = [reps countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v13);
  }

  if (([v10 isEqual:{-[THReadingStatisticsCollector visibleContent](self, "visibleContent")}] & 1) == 0)
  {
    v24 = [(BCCFISet *)[(THReadingStatisticsCollector *)self visibleContent] mutableCopy];
    [v24 subtractCFISet:v10];
    v25 = [v10 mutableCopy];
    [v25 subtractCFISet:{-[THReadingStatisticsCollector visibleContent](self, "visibleContent")}];
    if ([v24 cfiCount] >= 1)
    {
      v26 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_29D2DC(v24);
      }

      [(THReadingStatisticsCollectorDelegate *)[(THReadingStatisticsCollector *)self delegate] readingStatisticsCollector:self willHideContentWithCFIs:v24];
    }

    if ([v25 cfiCount] >= 1)
    {
      v27 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_29D358(v25);
      }

      [(THReadingStatisticsCollectorDelegate *)[(THReadingStatisticsCollector *)self delegate] readingStatisticsCollector:self didShowContentWithCFIs:v25];
    }

    [(THReadingStatisticsCollector *)self setVisibleContent:v10];
  }
}

- (void)readingStatisticsScanOperation:(id)operation addTextNodeCharacterCounts:(id)counts
{
  delegate = [(THReadingStatisticsCollector *)self delegate];
  ordinal = [operation ordinal];

  [(THReadingStatisticsCollectorDelegate *)delegate readingStatisticsCollector:self addTextNodeCharacterCounts:counts ordinal:ordinal completion:0];
}

- (_NSRange)_rangeForBodyRep:(id)rep visibleUnscaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = [objc_msgSend(rep "storage")];
  if (v9)
  {
    [rep convertNaturalPointFromUnscaledCanvas:{x, y}];
    [rep pinToNaturalBounds:1 andLastLineFragment:?];
    v11 = v10;
    v13 = v12;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    MaxX = CGRectGetMaxX(v24);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    [rep convertNaturalPointFromUnscaledCanvas:{MaxX, CGRectGetMaxY(v25)}];
    [rep pinToNaturalBounds:1 andLastLineFragment:?];
    v16 = v15;
    v18 = v17;
    v19 = [rep charIndexFromPoint:1 allowPastBreak:0 isAtEndOfLine:{v11, v13}];
    v9 = [rep charIndexFromPoint:1 allowPastBreak:0 isAtEndOfLine:{v16, v18}];
    v20 = v9;
    v21 = v19 > v9;
    if (v19 < v9)
    {
      v9 = v19;
    }

    if (v21)
    {
      v20 = v19;
    }

    v22 = v20 - v9;
  }

  else
  {
    v22 = 0;
  }

  result.length = v22;
  result.location = v9;
  return result;
}

- (void)_scanReadingStatisticsWithNode:(id)node root:(id)root ordinal:(unint64_t *)ordinal level:(int64_t)level childIndex:(int64_t)index
{
  if (node)
  {
    if (ordinal)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (ordinal)
    {
      goto LABEL_3;
    }
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
LABEL_3:
  objc_opt_class();
  v13 = TSUDynamicCast();
  objc_opt_class();
  v14 = TSUDynamicCast();
  if (v13)
  {
    if (level == 2 && !index && [(THReadingStatisticsCollectorDelegate *)[(THReadingStatisticsCollector *)self delegate] readingStatisticsCollector:self needTextNodeCharacterCountsForOrdinal:*ordinal])
    {
      v15 = [objc_msgSend(node "parent")];
      objc_opt_class();
      [node parent];
      v16 = TSUDynamicCast();
      if (v16)
      {
        v15 = [objc_msgSend(objc_msgSend(v16 "childNodes")];
      }

      v17 = [NSString stringWithFormat:@"#chapterguid(%@)", v15];
      v18 = [NSString stringWithFormat:@"epubcfi(/6/%ld!/2/1:0)", 2 * *ordinal + 2];
      v25[0] = v17;
      v24[0] = kBCReadingStatisticsHrefKey;
      v24[1] = kBCReadingStatisticsNameKey;
      title = [node title];
      v24[2] = kBCReadingStatisticsStartCFIKey;
      v25[1] = title;
      v25[2] = v18;
      v26 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];
      [(THReadingStatisticsCollectorDelegate *)[(THReadingStatisticsCollector *)self delegate] readingStatisticsCollector:self addTOCEntries:[NSArray arrayWithObjects:1 count:?], *ordinal, 0];
    }

    if ([(THReadingStatisticsCollectorDelegate *)[(THReadingStatisticsCollector *)self delegate] readingStatisticsCollector:self needTextNodeCharacterCountsForOrdinal:*ordinal])
    {
      -[NSOperationQueue addOperation:](-[THReadingStatisticsCollector chapterDataQueue](self, "chapterDataQueue"), "addOperation:", -[THReadingStatisticsScanOperation initWithDelegate:ordinal:applePubURL:documentEntryURI:]([THReadingStatisticsScanOperation alloc], "initWithDelegate:ordinal:applePubURL:documentEntryURI:", self, *ordinal, [root zipPackage], objc_msgSend(v13, "applePubRelativePath")));
    }

    ++*ordinal;
  }

  else
  {
    v20 = v14;
    if (v14)
    {
      v21 = [v14 count];
      if (v21)
      {
        v22 = v21;
        for (i = 0; i != v22; ++i)
        {
          -[THReadingStatisticsCollector _scanReadingStatisticsWithNode:root:ordinal:level:childIndex:](self, "_scanReadingStatisticsWithNode:root:ordinal:level:childIndex:", [v20 nodeAtIndex:i], root, ordinal, level + 1, i);
        }
      }
    }
  }
}

@end