@interface BKPaginationLayoutOperation
- (_NSRange)pageRangeForLocation:(id)a3;
- (id)cfiForAnnotation:(id)a3;
- (id)layoutComplete:(unint64_t)a3;
- (id)newBookmarkPageArray;
- (id)newHistoryEntityResultsArray;
- (id)newLandmarkInfoAnchorArray;
- (id)newNavigationInfoAnchorArray;
- (id)newPageLocationArrayWithAnchorInfos:(id)a3;
- (id)newPhysicalPageAnchorArray;
- (void)_populateTOCEntriesFromNavigationInfoAnchors:(id)a3;
- (void)populateRecordJob:(id)a3;
@end

@implementation BKPaginationLayoutOperation

- (id)newHistoryEntityResultsArray
{
  v3 = [(BKPaginationOperation *)self job];
  v4 = [v3 historyEntities];
  if (![v4 count])
  {
    goto LABEL_15;
  }

  v22 = v4;
  v23 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v4;
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

      v11 = [v10 location];
      v12 = [v11 ordinal];
      v13 = [v3 documentOrdinal];

      if (v12 == v13)
      {
        v14 = [v3 lookupKey];
        v15 = [v10 pageForLookupKey:v14];

        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = [v10 location];
          v17 = [(BKPaginationLayoutOperation *)self pageRangeForLocation:v16];

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

  v4 = v22;
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
  v4 = [v3 bookmarks];
  v5 = [v3 physicalPageAnchors];
  v43 = [v5 count];

  if (![v4 count])
  {
    goto LABEL_38;
  }

  v39 = v3;
  v37 = +[AEAnnotationProvider sharedInstance];
  v6 = [v37 uiManagedObjectContext];
  context = objc_autoreleasePoolPush();
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v38 = v4;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    v41 = v7;
    v42 = v6;
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
      v14 = [v6 existingObjectWithID:v12 error:0];
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

    v46 = [v15 annotationLocation];
    if (![v46 length] || (+[BCCFI unknownCFIString](BCCFI, "unknownCFIString"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v46, "isEqualToString:", v16), v16, v17))
    {
      v18 = [(BKPaginationLayoutOperation *)self cfiForAnnotation:v15];
      if ([v18 length])
      {
        [v15 setAnnotationLocation:v18];
      }
    }

    v19 = [v15 location];
    objc_opt_class();
    v45 = BUDynamicCast();
    v44 = [(BKPaginationLayoutOperation *)self pageOffsetForCFILocation:?];
    if (v43)
    {
      v20 = [v15 physicalPageNumber];

      if (!v20)
      {
        v21 = [(BKPaginationLayoutOperation *)self pageTitleForLocation:v19];
        [v15 setPhysicalPageNumber:v21];
      }
    }

    v22 = [v15 plUserData];
    if (!v22)
    {
      v23 = [v15 annotationLocation];

      if (!v23)
      {
LABEL_23:
        v26 = [v15 chapterTitle];

        if (!v26)
        {
          v40 = v19;
          v27 = [(BKPaginationLayoutOperation *)self chapterTitleForLocation:v19];
          if (v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = &stru_1E7188;
          }

          v29 = [v15 chapterTitle];
          v30 = [(__CFString *)v28 isEqualToString:v29];

          if ((v30 & 1) == 0)
          {
            [v15 setChapterTitle:v28];
          }

          v19 = v40;
          v7 = v41;
        }

        if (v44 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = [NSValue valueWithRange:v44, 1];
          v32 = [[NSDictionary alloc] initWithObjectsAndKeys:{v12, @"objectID", v31, @"range", 0, context}];
          v33 = v19;
          v34 = v32;
          [v7 addObject:v32];

          v19 = v33;
        }

        v6 = v42;
        goto LABEL_33;
      }

      v22 = [v15 annotationLocation];
      [(BKPaginationLayoutOperation *)self locationForCfi:v22];
      v25 = v24 = v19;
      [v15 setLocation:v25];
      [v15 setAnnotationLocation:v22];

      v19 = v24;
      v7 = v41;
    }

    goto LABEL_23;
  }

LABEL_35:

  objc_autoreleasePoolPop(context);
  if ([v6 hasChanges])
  {
    [v37 saveManagedObjectContext:v6];
  }

  v4 = v38;
  v3 = v39;
  if (!v7)
  {
LABEL_38:
    v7 = objc_alloc_init(NSArray);
  }

  return v7;
}

- (id)newPageLocationArrayWithAnchorInfos:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    goto LABEL_16;
  }

  v23 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = v4;
  obj = v4;
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

  v4 = v21;
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
  v4 = [v3 navigationInfoAnchors];
  v5 = [(BKPaginationLayoutOperation *)self newPageLocationArrayWithAnchorInfos:v4];

  return v5;
}

- (id)newLandmarkInfoAnchorArray
{
  v3 = [(BKPaginationOperation *)self job];
  v4 = [v3 landmarkAnchors];
  v5 = [(BKPaginationLayoutOperation *)self newPageLocationArrayWithAnchorInfos:v4];

  return v5;
}

- (id)newPhysicalPageAnchorArray
{
  v3 = [(BKPaginationOperation *)self job];
  v4 = [v3 physicalPageAnchors];
  v5 = [(BKPaginationLayoutOperation *)self newPageLocationArrayWithAnchorInfos:v4];

  return v5;
}

- (void)_populateTOCEntriesFromNavigationInfoAnchors:(id)a3
{
  v4 = a3;
  v5 = [(BKPaginationOperation *)self paginationOperationController];
  v6 = [v5 delegate];

  v7 = [(BKPaginationOperation *)self job];
  v8 = [v7 documentOrdinal];
  if ([v6 needTOCEntriesForOrdinal:v8])
  {
    v9 = [v4 bu_arrayByInvokingBlock:&stru_1E4B20];
    [(BKPaginationLayoutOperation *)self startCFIsForNavigationInfoHrefs:v9];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_84EA4;
    v13 = v12[3] = &unk_1E4B48;
    v10 = v13;
    v11 = [v4 bu_arrayByInvokingBlock:v12];
    [v6 addTOCEntries:v11 ordinal:v8 completion:0];
  }
}

- (void)populateRecordJob:(id)a3
{
  v4 = a3;
  v5 = [(BKPaginationLayoutOperation *)self newNavigationInfoAnchorArray];
  [v4 setNavigationInfoAnchors:v5];

  v6 = [(BKPaginationLayoutOperation *)self newLandmarkInfoAnchorArray];
  [v4 setLandmarkAnchors:v6];

  v7 = [(BKPaginationLayoutOperation *)self newPhysicalPageAnchorArray];
  [v4 setPhysicalPageAnchors:v7];

  v8 = [(BKPaginationLayoutOperation *)self newBookmarkPageArray];
  [v4 setBookmarks:v8];

  v9 = [(BKPaginationLayoutOperation *)self newHistoryEntityResultsArray];
  [v4 setHistoryEntities:v9];
}

- (id)layoutComplete:(unint64_t)a3
{
  if ([(BKPaginationOperation *)self isJobGenerationValid])
  {
    if (a3 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a3;
    }

    v6 = [(BKPaginationOperation *)self job];
    v7 = -[BKPaginationJob init:]([BKPaginationRecordJob alloc], "init:", [v6 jobGeneration]);
    [v7 copyState:v6];
    [v7 setPageCount:v5];
    [(BKPaginationLayoutOperation *)self populateRecordJob:v7];
    v8 = [v6 documentOrdinal];
    v9 = [v6 url];
    v10 = [v9 baseURL];
    v11 = [v10 absoluteString];
    v12 = [v11 lastPathComponent];
    v13 = [BKTextIndex bookIndexWithName:v12];

    if (v13 && ([v13 containsTextUnitWithOrdinal:v8] & 1) == 0)
    {
      v14 = [(BKPaginationLayoutOperation *)self text];
      if ([v14 length])
      {
        [v13 indexTextUnit:v14 withOrdinal:v8];
      }
    }

    v15 = [v7 navigationInfoAnchors];
    [(BKPaginationLayoutOperation *)self _populateTOCEntriesFromNavigationInfoAnchors:v15];

    v16 = [(BKPaginationOperation *)self paginationOperationController];
    v17 = [v16 delegate];

    if ([v17 needTextNodeCharacterCountsForOrdinal:v8])
    {
      v18 = [(BKPaginationLayoutOperation *)self textNodeCharacterCounts];
      if (v18)
      {
        [v17 addTextNodeCharacterCounts:v18 ordinal:v8 completion:0];
      }
    }

    v19 = [(BKPaginationOperation *)self paginationOperationController];
    [v19 addResultJob:v7];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_NSRange)pageRangeForLocation:(id)a3
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)cfiForAnnotation:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___BKBookmark])
  {
    v5 = [v4 location];
    v6 = [(BKPaginationLayoutOperation *)self cfiForLocation:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end