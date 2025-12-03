@interface BKPaginationLayoutOperation
- (_NSRange)pageRangeForLocation:(id)location;
- (id)cfiForAnnotation:(id)annotation;
- (id)layoutComplete:(unint64_t)complete;
- (id)newBookmarkPageArray;
- (id)newHistoryEntityResultsArray;
- (id)newLandmarkInfoAnchorArray;
- (id)newNavigationInfoAnchorArray;
- (id)newPageLocationArrayWithAnchorInfos:(id)infos;
- (id)newPhysicalPageAnchorArray;
- (void)_populateTOCEntriesFromNavigationInfoAnchors:(id)anchors;
- (void)populateRecordJob:(id)job;
@end

@implementation BKPaginationLayoutOperation

- (id)newHistoryEntityResultsArray
{
  v3 = [(BKPaginationOperation *)self job];
  historyEntities = [v3 historyEntities];
  if (![historyEntities count])
  {
    goto LABEL_15;
  }

  v22 = historyEntities;
  v23 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = historyEntities;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v24 + 1) + 8 * v9);
      if (([(BKPaginationLayoutOperation *)self isCancelled]& 1) != 0)
      {
        break;
      }

      location = [v10 location];
      ordinal = [location ordinal];
      documentOrdinal = [v3 documentOrdinal];

      if (ordinal == documentOrdinal)
      {
        lookupKey = [v3 lookupKey];
        v15 = [v10 pageForLookupKey:lookupKey];

        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          location2 = [v10 location];
          v17 = [(BKPaginationLayoutOperation *)self pageRangeForLocation:location2];

          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = [[NSNumber alloc] initWithInteger:v17];
            v19 = [[NSDictionary alloc] initWithObjectsAndKeys:{v18, @"pageOffset", v10, @"BKHistoryEntity", 0}];
            [v23 addObject:v19];
          }
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v7)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  historyEntities = v22;
  v20 = v23;
  if (!v23)
  {
LABEL_15:
    v20 = objc_alloc_init(NSArray);
  }

  return v20;
}

- (id)newBookmarkPageArray
{
  v3 = [(BKPaginationOperation *)self job];
  bookmarks = [v3 bookmarks];
  physicalPageAnchors = [v3 physicalPageAnchors];
  v43 = [physicalPageAnchors count];

  if (![bookmarks count])
  {
    goto LABEL_38;
  }

  v39 = v3;
  v37 = +[AEAnnotationProvider sharedInstance];
  uiManagedObjectContext = [v37 uiManagedObjectContext];
  context = objc_autoreleasePoolPush();
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(bookmarks, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v38 = bookmarks;
  obj = bookmarks;
  v8 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    v41 = v7;
    v42 = uiManagedObjectContext;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v49 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v48 + 1) + 8 * v11);
      if (([(BKPaginationLayoutOperation *)self isCancelled]& 1) != 0)
      {
        goto LABEL_35;
      }

      v13 = objc_autoreleasePoolPush();
      v14 = [uiManagedObjectContext existingObjectWithID:v12 error:0];
      v15 = v14;
      if (v14)
      {
        if (([v14 isDeleted] & 1) == 0 && (objc_msgSend(v15, "isAnnotationDeleted") & 1) == 0)
        {
          break;
        }
      }

LABEL_33:

      objc_autoreleasePoolPop(v13);
      if (v9 == ++v11)
      {
        v9 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        goto LABEL_35;
      }
    }

    annotationLocation = [v15 annotationLocation];
    if (![annotationLocation length] || (+[BCCFI unknownCFIString](BCCFI, "unknownCFIString"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(annotationLocation, "isEqualToString:", v16), v16, v17))
    {
      v18 = [(BKPaginationLayoutOperation *)self cfiForAnnotation:v15];
      if ([v18 length])
      {
        [v15 setAnnotationLocation:v18];
      }
    }

    location = [v15 location];
    objc_opt_class();
    v45 = BUDynamicCast();
    v44 = [(BKPaginationLayoutOperation *)self pageOffsetForCFILocation:?];
    if (v43)
    {
      physicalPageNumber = [v15 physicalPageNumber];

      if (!physicalPageNumber)
      {
        v21 = [(BKPaginationLayoutOperation *)self pageTitleForLocation:location];
        [v15 setPhysicalPageNumber:v21];
      }
    }

    plUserData = [v15 plUserData];
    if (!plUserData)
    {
      annotationLocation2 = [v15 annotationLocation];

      if (!annotationLocation2)
      {
LABEL_23:
        chapterTitle = [v15 chapterTitle];

        if (!chapterTitle)
        {
          v40 = location;
          v27 = [(BKPaginationLayoutOperation *)self chapterTitleForLocation:location];
          if (v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = &stru_1E7188;
          }

          chapterTitle2 = [v15 chapterTitle];
          v30 = [(__CFString *)v28 isEqualToString:chapterTitle2];

          if ((v30 & 1) == 0)
          {
            [v15 setChapterTitle:v28];
          }

          location = v40;
          v7 = v41;
        }

        if (v44 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = [NSValue valueWithRange:v44, 1];
          v32 = [[NSDictionary alloc] initWithObjectsAndKeys:{v12, @"objectID", v31, @"range", 0, context}];
          v33 = location;
          v34 = v32;
          [v7 addObject:v32];

          location = v33;
        }

        uiManagedObjectContext = v42;
        goto LABEL_33;
      }

      plUserData = [v15 annotationLocation];
      [(BKPaginationLayoutOperation *)self locationForCfi:plUserData];
      v25 = v24 = location;
      [v15 setLocation:v25];
      [v15 setAnnotationLocation:plUserData];

      location = v24;
      v7 = v41;
    }

    goto LABEL_23;
  }

LABEL_35:

  objc_autoreleasePoolPop(context);
  if ([uiManagedObjectContext hasChanges])
  {
    [v37 saveManagedObjectContext:uiManagedObjectContext];
  }

  bookmarks = v38;
  v3 = v39;
  if (!v7)
  {
LABEL_38:
    v7 = objc_alloc_init(NSArray);
  }

  return v7;
}

- (id)newPageLocationArrayWithAnchorInfos:(id)infos
{
  infosCopy = infos;
  if (![infosCopy count])
  {
    goto LABEL_16;
  }

  v23 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(infosCopy, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = infosCopy;
  obj = infosCopy;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = @"href";
    v8 = *v25;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v24 + 1) + 8 * v9);
      if (([(BKPaginationLayoutOperation *)self isCancelled]& 1) != 0)
      {
        break;
      }

      v11 = [v10 objectForKey:v7];
      v12 = [(BKPaginationLayoutOperation *)self pageOffsetForHref:v11];
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [[NSNumber alloc] initWithInteger:v12];
        v14 = v7;
        v15 = [NSDictionary alloc];
        v16 = [v10 objectForKey:@"name"];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = &stru_1E7188;
        }

        v19 = [v15 initWithObjectsAndKeys:{v11, @"fullHref", v18, @"name", v13, @"documentOffset", 0}];

        [v23 addObject:v19];
        v7 = v14;
      }

      if (v6 == ++v9)
      {
        v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v6)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  infosCopy = v21;
  if (!v23)
  {
LABEL_16:
    v23 = objc_alloc_init(NSArray);
  }

  return v23;
}

- (id)newNavigationInfoAnchorArray
{
  v3 = [(BKPaginationOperation *)self job];
  navigationInfoAnchors = [v3 navigationInfoAnchors];
  v5 = [(BKPaginationLayoutOperation *)self newPageLocationArrayWithAnchorInfos:navigationInfoAnchors];

  return v5;
}

- (id)newLandmarkInfoAnchorArray
{
  v3 = [(BKPaginationOperation *)self job];
  landmarkAnchors = [v3 landmarkAnchors];
  v5 = [(BKPaginationLayoutOperation *)self newPageLocationArrayWithAnchorInfos:landmarkAnchors];

  return v5;
}

- (id)newPhysicalPageAnchorArray
{
  v3 = [(BKPaginationOperation *)self job];
  physicalPageAnchors = [v3 physicalPageAnchors];
  v5 = [(BKPaginationLayoutOperation *)self newPageLocationArrayWithAnchorInfos:physicalPageAnchors];

  return v5;
}

- (void)_populateTOCEntriesFromNavigationInfoAnchors:(id)anchors
{
  anchorsCopy = anchors;
  paginationOperationController = [(BKPaginationOperation *)self paginationOperationController];
  delegate = [paginationOperationController delegate];

  v7 = [(BKPaginationOperation *)self job];
  documentOrdinal = [v7 documentOrdinal];
  if ([delegate needTOCEntriesForOrdinal:documentOrdinal])
  {
    v9 = [anchorsCopy bu_arrayByInvokingBlock:&stru_1E4B20];
    [(BKPaginationLayoutOperation *)self startCFIsForNavigationInfoHrefs:v9];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_84EA4;
    v13 = v12[3] = &unk_1E4B48;
    v10 = v13;
    v11 = [anchorsCopy bu_arrayByInvokingBlock:v12];
    [delegate addTOCEntries:v11 ordinal:documentOrdinal completion:0];
  }
}

- (void)populateRecordJob:(id)job
{
  jobCopy = job;
  newNavigationInfoAnchorArray = [(BKPaginationLayoutOperation *)self newNavigationInfoAnchorArray];
  [jobCopy setNavigationInfoAnchors:newNavigationInfoAnchorArray];

  newLandmarkInfoAnchorArray = [(BKPaginationLayoutOperation *)self newLandmarkInfoAnchorArray];
  [jobCopy setLandmarkAnchors:newLandmarkInfoAnchorArray];

  newPhysicalPageAnchorArray = [(BKPaginationLayoutOperation *)self newPhysicalPageAnchorArray];
  [jobCopy setPhysicalPageAnchors:newPhysicalPageAnchorArray];

  newBookmarkPageArray = [(BKPaginationLayoutOperation *)self newBookmarkPageArray];
  [jobCopy setBookmarks:newBookmarkPageArray];

  newHistoryEntityResultsArray = [(BKPaginationLayoutOperation *)self newHistoryEntityResultsArray];
  [jobCopy setHistoryEntities:newHistoryEntityResultsArray];
}

- (id)layoutComplete:(unint64_t)complete
{
  if ([(BKPaginationOperation *)self isJobGenerationValid])
  {
    if (complete <= 1)
    {
      completeCopy = 1;
    }

    else
    {
      completeCopy = complete;
    }

    v6 = [(BKPaginationOperation *)self job];
    v7 = -[BKPaginationJob init:]([BKPaginationRecordJob alloc], "init:", [v6 jobGeneration]);
    [v7 copyState:v6];
    [v7 setPageCount:completeCopy];
    [(BKPaginationLayoutOperation *)self populateRecordJob:v7];
    documentOrdinal = [v6 documentOrdinal];
    v9 = [v6 url];
    baseURL = [v9 baseURL];
    absoluteString = [baseURL absoluteString];
    lastPathComponent = [absoluteString lastPathComponent];
    v13 = [BKTextIndex bookIndexWithName:lastPathComponent];

    if (v13 && ([v13 containsTextUnitWithOrdinal:documentOrdinal] & 1) == 0)
    {
      text = [(BKPaginationLayoutOperation *)self text];
      if ([text length])
      {
        [v13 indexTextUnit:text withOrdinal:documentOrdinal];
      }
    }

    navigationInfoAnchors = [v7 navigationInfoAnchors];
    [(BKPaginationLayoutOperation *)self _populateTOCEntriesFromNavigationInfoAnchors:navigationInfoAnchors];

    paginationOperationController = [(BKPaginationOperation *)self paginationOperationController];
    delegate = [paginationOperationController delegate];

    if ([delegate needTextNodeCharacterCountsForOrdinal:documentOrdinal])
    {
      textNodeCharacterCounts = [(BKPaginationLayoutOperation *)self textNodeCharacterCounts];
      if (textNodeCharacterCounts)
      {
        [delegate addTextNodeCharacterCounts:textNodeCharacterCounts ordinal:documentOrdinal completion:0];
      }
    }

    paginationOperationController2 = [(BKPaginationOperation *)self paginationOperationController];
    [paginationOperationController2 addResultJob:v7];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_NSRange)pageRangeForLocation:(id)location
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)cfiForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if ([annotationCopy conformsToProtocol:&OBJC_PROTOCOL___BKBookmark])
  {
    location = [annotationCopy location];
    v6 = [(BKPaginationLayoutOperation *)self cfiForLocation:location];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end