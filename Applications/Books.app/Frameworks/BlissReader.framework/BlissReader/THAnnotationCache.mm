@interface THAnnotationCache
- (BOOL)checkIfOneOrMoreAnnotationsForStorage:(id)a3 range:(_NSRange)a4 passesTest:(id)a5;
- (BOOL)hasAnnotationWithNoteInAbsolutePhysicalPageIndex:(unint64_t)a3;
- (BOOL)hasAnnotationWithNoteOnPageInfo:(id)a3;
- (BOOL)storage:(id)a3 containsSomeUnhighlightedTextInRange:(_NSRange)a4;
- (BOOL)storage:(id)a3 hasAnnotationStrictlyContainingRange:(_NSRange)a4;
- (BOOL)storage:(id)a3 hasAnnotationThatMatchesStyle:(int)a4 inRange:(_NSRange)a5;
- (BOOL)storage:(id)a3 hasAnnotationWithExactRange:(_NSRange)a4;
- (THAnnotationCache)initWithAnnotations:(id)a3 contentNode:(id)a4 needsMigration:(BOOL)a5;
- (THAnnotationCache)initWithAnnotationsByStorage:(id)a3 bookmarkAnnotations:(id)a4 orphanedAnnotations:(id)a5 needsMigration:(BOOL)a6 temporaryAnnotation:(id)a7 contentNode:(id)a8;
- (_NSRange)differenceRangeWithCache:(id)a3 storageUID:(id)a4;
- (id)annotationWithUUID:(id)a3;
- (id)annotationsForStorage:(id)a3;
- (id)annotationsForStorage:(id)a3 range:(_NSRange)a4;
- (id)annotationsForStorageUID:(id)a3;
- (id)bookmarkForAbsolutePhysicalPageIndex:(unint64_t)a3;
- (id)highlightAnnotations;
- (id)highlightAnnotationsSortedByRange;
- (id)newAnnotationCacheWithRemovedAnnotation:(id)a3;
- (id)newAnnotationCacheWithTemporaryAnnotation:(id)a3;
- (id)newAnnotationCacheWithUpdatedAnnotation:(id)a3;
- (id)p_newBookmarkAbsolutePhysicalPageIndexSetFromBookmarks:(id)a3;
- (void)dealloc;
- (void)enumerateAnnotationsForStorage:(id)a3 range:(_NSRange)a4 withBlock:(id)a5;
- (void)enumerateAnnotationsWithBlock:(id)a3;
- (void)p_updateAnnotationsByStorage:(id)a3 byAddingAnnotation:(id)a4 storageUUID:(id)a5;
- (void)p_updateAnnotationsByStorage:(id)a3 byRemovingAnnotation:(id)a4 storageUUID:(id)a5;
@end

@implementation THAnnotationCache

- (THAnnotationCache)initWithAnnotationsByStorage:(id)a3 bookmarkAnnotations:(id)a4 orphanedAnnotations:(id)a5 needsMigration:(BOOL)a6 temporaryAnnotation:(id)a7 contentNode:(id)a8
{
  v26.receiver = self;
  v26.super_class = THAnnotationCache;
  v14 = [(THAnnotationCache *)&v26 init];
  v15 = v14;
  if (v14)
  {
    v14->_contentNode = a8;
    v14->_annotationsByStorage = [a3 copy];
    v15->_bookmarkAnnotations = [a4 copy];
    v15->_orphanedAnnotations = [a5 copy];
    v15->_temporaryAnnotation = a7;
    v15->_bookmarkAbsolutePhysicalPageIndexSet = [(THAnnotationCache *)v15 p_newBookmarkAbsolutePhysicalPageIndexSetFromBookmarks:v15->_bookmarkAnnotations];
    v15->_needsMigration = a6;
    v15->_numberOfHighlightAnnotations = 0;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = [a3 objectEnumerator];
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v15->_numberOfHighlightAnnotations += [*(*(&v22 + 1) + 8 * i) count];
        }

        v18 = [v16 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v18);
    }

    v15->_numberOfBookmarkAnnotations = [(NSArray *)v15->_bookmarkAnnotations count];
    v15->_numberOfOrphanedAnnotations = [(NSArray *)v15->_orphanedAnnotations count];
  }

  __dmb(0xBu);
  return v15;
}

- (THAnnotationCache)initWithAnnotations:(id)a3 contentNode:(id)a4 needsMigration:(BOOL)a5
{
  v41.receiver = self;
  v41.super_class = THAnnotationCache;
  v8 = [(THAnnotationCache *)&v41 init];
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  v8->_contentNode = a4;
  v10 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(a3, "count")}];
  v31 = objc_alloc_init(NSMutableArray);
  v32 = objc_alloc_init(NSMutableArray);
  v28 = v9;
  v9->_numberOfBookmarkAnnotations = 0;
  p_numberOfBookmarkAnnotations = &v9->_numberOfBookmarkAnnotations;
  *(p_numberOfBookmarkAnnotations - 1) = 0;
  v29 = p_numberOfBookmarkAnnotations - 1;
  v30 = p_numberOfBookmarkAnnotations;
  p_numberOfBookmarkAnnotations[1] = 0;
  v12 = p_numberOfBookmarkAnnotations + 1;
  *(p_numberOfBookmarkAnnotations - 16) = a5;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = [a3 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v13;
  v15 = *v38;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v38 != v15)
      {
        objc_enumerationMutation(a3);
      }

      v17 = *(*(&v37 + 1) + 8 * i);
      v18 = v32;
      v19 = v12;
      if (([v17 annotationIsOrphan] & 1) == 0)
      {
        v19 = v30;
        v18 = v31;
        if (([v17 annotationIsBookmark] & 1) == 0)
        {
          if ([v17 annotationType] != 2)
          {
            continue;
          }

          v20 = [v17 annotationStorageUID];
          v18 = [v10 objectForKey:v20];
          v19 = v29;
          if (!v18)
          {
            v18 = +[NSMutableArray array];
            [v10 setObject:v18 forKey:v20];
            v19 = v29;
          }
        }
      }

      [v18 addObject:v17];
      ++*v19;
    }

    v14 = [a3 countByEnumeratingWithState:&v37 objects:v43 count:16];
  }

  while (v14);
LABEL_15:
  v21 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = [v10 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v10);
        }

        [v21 setObject:objc_msgSend(objc_msgSend(v10 forKey:{"objectForKey:", *(*(&v33 + 1) + 8 * j)), "sortedArrayWithOptions:usingComparator:", 1, &stru_45EC60), *(*(&v33 + 1) + 8 * j)}];
      }

      v23 = [v10 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v23);
  }

  v26 = [v31 sortedArrayWithOptions:1 usingComparator:&stru_45EC80];
  v9 = v28;
  v28->_annotationsByStorage = [v21 copy];
  v28->_bookmarkAnnotations = [v26 copy];
  v28->_orphanedAnnotations = [v32 copy];
  v28->_bookmarkAbsolutePhysicalPageIndexSet = [(THAnnotationCache *)v28 p_newBookmarkAbsolutePhysicalPageIndexSetFromBookmarks:v28->_bookmarkAnnotations];

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THAnnotationCache;
  [(THAnnotationCache *)&v3 dealloc];
}

- (id)p_newBookmarkAbsolutePhysicalPageIndexSetFromBookmarks:(id)a3
{
  result = [a3 count];
  if (result)
  {
    v5 = +[NSMutableIndexSet indexSet];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(a3);
          }

          v10 = [*(*(&v11 + 1) + 8 * v9) annotationAbsolutePhysicalPageIndex];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addIndex:v10];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    return [v5 copy];
  }

  return result;
}

- (id)bookmarkForAbsolutePhysicalPageIndex:(unint64_t)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  bookmarkAnnotations = self->_bookmarkAnnotations;
  v5 = [(NSArray *)bookmarkAnnotations countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(bookmarkAnnotations);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 annotationAbsolutePhysicalPageIndex] == a3)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)bookmarkAnnotations countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)hasAnnotationWithNoteInAbsolutePhysicalPageIndex:(unint64_t)a3
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(NSDictionary *)self->_annotationsByStorage objectEnumerator];
  v5 = [(NSEnumerator *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          while (2)
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v16 + 1) + 8 * j);
              if ([v14 annotationAbsolutePhysicalPageIndex] == a3 && objc_msgSend(objc_msgSend(v14, "annotationNote"), "length"))
              {
                LOBYTE(v5) = 1;
                return v5;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [(NSEnumerator *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
      LOBYTE(v5) = 0;
    }

    while (v6);
  }

  return v5;
}

- (BOOL)hasAnnotationWithNoteOnPageInfo:(id)a3
{
  v4 = [a3 bodyStorageRange];
  if (NSInvalidRange[0] == v4 && NSInvalidRange[1] == v5)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    LOBYTE(v10) = 0;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = [(NSDictionary *)self->_annotationsByStorage objectEnumerator];
    v10 = [(NSEnumerator *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      v22 = *v28;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v24;
            while (2)
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v24 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v23 + 1) + 8 * j);
                v34.location = [v19 annotationStorageRange];
                v34.length = v20;
                v33.location = v7;
                v33.length = v8;
                if (NSIntersectionRange(v33, v34).length && [objc_msgSend(v19 "annotationNote")])
                {
                  LOBYTE(v10) = 1;
                  return v10;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          v12 = v22;
        }

        v11 = [(NSEnumerator *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
        LOBYTE(v10) = 0;
      }

      while (v11);
    }
  }

  return v10;
}

- (id)annotationsForStorageUID:(id)a3
{
  if (a3)
  {
    return [(NSDictionary *)self->_annotationsByStorage objectForKey:?];
  }

  else
  {
    return 0;
  }
}

- (id)annotationsForStorage:(id)a3
{
  result = [(THModelContentNode *)self->_contentNode annotationIDForInfo:a3];
  if (result)
  {
    v5 = result;
    annotationsByStorage = self->_annotationsByStorage;

    return [(NSDictionary *)annotationsByStorage objectForKey:v5];
  }

  return result;
}

- (id)annotationsForStorage:(id)a3 range:(_NSRange)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1C187C;
  v5[3] = &unk_45DCB8;
  v6 = a4;
  return [-[THAnnotationCache annotationsForStorage:](self annotationsForStorage:{a3), "tsu_arrayOfObjectsPassingTest:", v5}];
}

- (id)annotationWithUUID:(id)a3
{
  annotationsByUUIDOnceToken = self->_annotationsByUUIDOnceToken;
  p_annotationsByUUIDOnceToken = &self->_annotationsByUUIDOnceToken;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1C1960;
  block[3] = &unk_45AE00;
  block[4] = self;
  if (annotationsByUUIDOnceToken == -1)
  {
    if (a3)
    {
      return [(NSDictionary *)self->_annotationsByUUID objectForKey:a3];
    }
  }

  else
  {
    dispatch_once(p_annotationsByUUIDOnceToken, block);
    if (a3)
    {
      return [(NSDictionary *)self->_annotationsByUUID objectForKey:a3];
    }
  }

  return 0;
}

- (id)newAnnotationCacheWithUpdatedAnnotation:(id)a3
{
  v5 = [a3 annotationStorageUID];
  if ([a3 annotationIsOrphan])
  {
    v6 = [(NSArray *)self->_orphanedAnnotations mutableCopy];
    [(NSArray *)v6 addObject:a3];
    v7 = [THAnnotationCache alloc];
    needsMigration = self->_needsMigration;
    temporaryAnnotation = self->_temporaryAnnotation;
    bookmarkAnnotations = self->_bookmarkAnnotations;
    contentNode = self->_contentNode;
    annotationsByStorage = self->_annotationsByStorage;
    orphanedAnnotations = v6;
    goto LABEL_12;
  }

  if (![a3 annotationIsBookmark])
  {
    if ([a3 annotationIsPlaceholder])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    else if (v5)
    {
      v6 = [(NSDictionary *)self->_annotationsByStorage mutableCopy];
      [(THAnnotationCache *)self p_updateAnnotationsByStorage:v6 byAddingAnnotation:a3 storageUUID:v5];
      v7 = [THAnnotationCache alloc];
      bookmarkAnnotations = self->_bookmarkAnnotations;
      orphanedAnnotations = self->_orphanedAnnotations;
      needsMigration = self->_needsMigration;
      temporaryAnnotation = self->_temporaryAnnotation;
      contentNode = self->_contentNode;
      annotationsByStorage = v6;
      goto LABEL_12;
    }

LABEL_13:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  v6 = [(NSArray *)self->_bookmarkAnnotations mutableCopy];
  v14 = [(NSArray *)v6 indexOfObject:a3];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSArray *)v6 addObject:a3];
  }

  else
  {
    [(NSArray *)v6 replaceObjectAtIndex:v14 withObject:a3];
  }

  v15 = [(NSArray *)v6 sortedArrayWithOptions:1 usingComparator:&stru_45ECA0];
  v7 = [THAnnotationCache alloc];
  orphanedAnnotations = self->_orphanedAnnotations;
  needsMigration = self->_needsMigration;
  temporaryAnnotation = self->_temporaryAnnotation;
  contentNode = self->_contentNode;
  annotationsByStorage = self->_annotationsByStorage;
  bookmarkAnnotations = v15;
LABEL_12:
  v16 = [(THAnnotationCache *)v7 initWithAnnotationsByStorage:annotationsByStorage bookmarkAnnotations:bookmarkAnnotations orphanedAnnotations:orphanedAnnotations needsMigration:needsMigration temporaryAnnotation:temporaryAnnotation contentNode:contentNode];

  if (!v16)
  {
    goto LABEL_13;
  }

  return v16;
}

- (id)newAnnotationCacheWithRemovedAnnotation:(id)a3
{
  v5 = [a3 annotationStorageUID];
  if ([a3 annotationIsOrphan])
  {
    v6 = [(NSArray *)self->_orphanedAnnotations mutableCopy];
    v7 = [(NSArray *)v6 indexOfObject:a3];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    else
    {
      [(NSArray *)v6 removeObjectAtIndex:v7];
    }

    v9 = [THAnnotationCache alloc];
    needsMigration = self->_needsMigration;
    temporaryAnnotation = self->_temporaryAnnotation;
    bookmarkAnnotations = self->_bookmarkAnnotations;
    contentNode = self->_contentNode;
    annotationsByStorage = self->_annotationsByStorage;
    orphanedAnnotations = v6;
  }

  else
  {
    if (![a3 annotationIsBookmark])
    {
      if ([a3 annotationIsPlaceholder])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      else if (v5)
      {
        v6 = [(NSDictionary *)self->_annotationsByStorage mutableCopy];
        [(THAnnotationCache *)self p_updateAnnotationsByStorage:v6 byRemovingAnnotation:a3 storageUUID:v5];
        v9 = [THAnnotationCache alloc];
        bookmarkAnnotations = self->_bookmarkAnnotations;
        orphanedAnnotations = self->_orphanedAnnotations;
        needsMigration = self->_needsMigration;
        temporaryAnnotation = self->_temporaryAnnotation;
        contentNode = self->_contentNode;
        annotationsByStorage = v6;
        goto LABEL_15;
      }

LABEL_16:
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      return 0;
    }

    v6 = [(NSArray *)self->_bookmarkAnnotations mutableCopy];
    v8 = [(NSArray *)v6 indexOfObject:a3];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    else
    {
      [(NSArray *)v6 removeObjectAtIndex:v8];
    }

    v16 = [(NSArray *)v6 sortedArrayWithOptions:1 usingComparator:&stru_45ECC0];
    v9 = [THAnnotationCache alloc];
    orphanedAnnotations = self->_orphanedAnnotations;
    needsMigration = self->_needsMigration;
    temporaryAnnotation = self->_temporaryAnnotation;
    contentNode = self->_contentNode;
    annotationsByStorage = self->_annotationsByStorage;
    bookmarkAnnotations = v16;
  }

LABEL_15:
  v17 = [(THAnnotationCache *)v9 initWithAnnotationsByStorage:annotationsByStorage bookmarkAnnotations:bookmarkAnnotations orphanedAnnotations:orphanedAnnotations needsMigration:needsMigration temporaryAnnotation:temporaryAnnotation contentNode:contentNode];

  if (!v17)
  {
    goto LABEL_16;
  }

  return v17;
}

- (void)p_updateAnnotationsByStorage:(id)a3 byAddingAnnotation:(id)a4 storageUUID:(id)a5
{
  v8 = [a3 objectForKey:a5];
  if (!v8)
  {
    v8 = +[NSArray array];
  }

  v10 = [(NSArray *)v8 mutableCopy];
  v9 = [v10 indexOfObject:a4];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 addObject:a4];
  }

  else
  {
    [v10 replaceObjectAtIndex:v9 withObject:a4];
  }

  [a3 setObject:objc_msgSend(v10 forKey:{"sortedArrayWithOptions:usingComparator:", 1, &stru_45ECE0), a5}];
}

- (void)p_updateAnnotationsByStorage:(id)a3 byRemovingAnnotation:(id)a4 storageUUID:(id)a5
{
  v8 = [a3 objectForKey:a5];
  if (!v8)
  {
    v8 = +[NSArray array];
  }

  v10 = [(NSArray *)v8 mutableCopy];
  v9 = [v10 indexOfObject:a4];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  else
  {
    [v10 removeObjectAtIndex:v9];
  }

  [a3 setObject:objc_msgSend(v10 forKey:{"sortedArrayWithOptions:usingComparator:", 1, &stru_45ED00), a5}];
}

- (id)newAnnotationCacheWithTemporaryAnnotation:(id)a3
{
  if ([(THAnnotationCache *)self temporaryAnnotation]== a3)
  {

    return self;
  }

  else
  {
    v4 = [(NSDictionary *)self->_annotationsByStorage mutableCopy];
    temporaryAnnotation = self->_temporaryAnnotation;
    if (temporaryAnnotation)
    {
      [(THAnnotationCache *)self p_updateAnnotationsByStorage:v4 byRemovingAnnotation:temporaryAnnotation storageUUID:[(THAnnotation *)self->_temporaryAnnotation annotationStorageUID]];
    }

    if (a3)
    {
      -[THAnnotationCache p_updateAnnotationsByStorage:byAddingAnnotation:storageUUID:](self, "p_updateAnnotationsByStorage:byAddingAnnotation:storageUUID:", v4, a3, [a3 annotationStorageUID]);
    }

    v6 = [[THAnnotationCache alloc] initWithAnnotationsByStorage:v4 bookmarkAnnotations:self->_bookmarkAnnotations orphanedAnnotations:self->_orphanedAnnotations needsMigration:self->_needsMigration temporaryAnnotation:a3 contentNode:self->_contentNode];

    return v6;
  }
}

- (_NSRange)differenceRangeWithCache:(id)a3 storageUID:(id)a4
{
  v6 = [(THAnnotationCache *)self annotationsForStorageUID:a4];
  v7 = [a3 annotationsForStorageUID:a4];
  v8 = [v6 count];
  v9 = [v7 count];
  v11 = v9;
  if (!v8)
  {
    v12 = 0;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_29:
    v14 = 0;
    v18 = 0;
    v15 = 1;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_31;
  }

  v12 = [v6 objectAtIndex:0];
  if (!v11)
  {
    goto LABEL_29;
  }

LABEL_3:
  v13 = [v7 objectAtIndex:0];
  v14 = 0;
  v15 = 1;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if (v12)
  {
    v17 = v13;
    v18 = 0;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = 1;
    v21 = 1;
    if (v13)
    {
      v18 = 0;
      v14 = 0;
      do
      {
        if (sub_1C2988(v12, v17))
        {
          if (++v18 >= v8)
          {
            v12 = 0;
          }

          else
          {
            v12 = [v6 objectAtIndex:v18];
          }

          if (++v14 >= v11)
          {
            v17 = 0;
          }

          else
          {
            v17 = [v7 objectAtIndex:v14];
          }

          v16 = 0x7FFFFFFFFFFFFFFFLL;
          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
          v19 = v18;
        }

        v15 = v19 == 0x7FFFFFFFFFFFFFFFLL;
        v20 = v16 == 0x7FFFFFFFFFFFFFFFLL;
        v21 = v16 == 0x7FFFFFFFFFFFFFFFLL && v19 == 0x7FFFFFFFFFFFFFFFLL;
      }

      while (v21 && v12 != 0 && v17 != 0);
    }

    if (!v21)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v18 = 0;
LABEL_31:
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = 1;
LABEL_32:
  if (v8 == v11)
  {
    v24 = 0;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_34:
    v26 = v25;
    v27 = v24;
    goto LABEL_91;
  }

LABEL_35:
  if (v8 <= v11)
  {
    v15 = 0;
  }

  if (v15)
  {
    v28 = (v8 - 1);
    v19 = v18;
  }

  else
  {
    if (!v20)
    {
      location = 0x7FFFFFFFFFFFFFFFLL;
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        length = 0;
        v30 = 0x7FFFFFFFFFFFFFFFLL;
        v14 = v16;
        goto LABEL_56;
      }

      v29 = 1;
      v28 = 0x7FFFFFFFFFFFFFFFLL;
      if (v8 && v11)
      {
        v44 = v8 - 1;
        v45 = (v11 - 1);
        do
        {
          v46 = sub_1C2988([v6 objectAtIndex:v44], objc_msgSend(v7, "objectAtIndex:", v45));
          if (v46)
          {
            v30 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v45;
          }

          if (v46)
          {
            v28 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v44;
          }

          v47 = v44-- != 0;
          v48 = v47;
          v47 = v45-- != 0;
          v49 = v47;
          v51 = v28 != 0x7FFFFFFFFFFFFFFFLL || v30 != 0x7FFFFFFFFFFFFFFFLL || v48 == 0;
        }

        while (!v51 && (v49 & 1) != 0);
      }

      else
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
      }

      goto LABEL_46;
    }

    v28 = 0x7FFFFFFFFFFFFFFFLL;
    if (v11 > v8)
    {
      length = 0;
      v24 = 0;
      v30 = (v11 - 1);
      location = 0x7FFFFFFFFFFFFFFFLL;
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_59;
      }

      goto LABEL_56;
    }
  }

  v29 = 0;
  v30 = 0x7FFFFFFFFFFFFFFFLL;
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    length = 0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    location = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_47;
  }

  v16 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_46:
  location = [objc_msgSend(v6 objectAtIndex:{v19), "annotationStorageRange"}];
  length = v33;
  v14 = v16;
LABEL_47:
  if (v28 != 0x7FFFFFFFFFFFFFFFLL && v19 != v28)
  {
    v34 = [objc_msgSend(v6 objectAtIndex:{v28), "annotationStorageRange"}];
    v10.location = v34;
    v10.length = v35;
    if (location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v53.location = location;
      v53.length = length;
      v36 = NSUnionRange(v53, v10);
      location = v36.location;
      length = v36.length;
      v28 = v14;
      v25 = v36.location;
      v24 = v36.length;
      if ((v29 & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_56;
    }

    location = v34;
    length = v35;
  }

  v28 = v14;
  v25 = location;
  v24 = length;
  if (!v29)
  {
    goto LABEL_59;
  }

LABEL_56:
  v25 = [objc_msgSend(v7 objectAtIndex:{v14, v10.length), "annotationStorageRange"}];
  v24 = v37;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v54.location = location;
    v54.length = length;
    v56.location = v25;
    v56.length = v24;
    v38 = NSUnionRange(v54, v56);
    v25 = v38.location;
    v24 = v38.length;
  }

  v28 = v14;
LABEL_59:
  if (v30 == 0x7FFFFFFFFFFFFFFFLL || v28 == v30)
  {
    goto LABEL_34;
  }

  v39 = [objc_msgSend(v7 objectAtIndex:{v30), "annotationStorageRange"}];
  v41.location = v39;
  v41.length = v40;
  if (v25 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = v39;
    v24 = v40;
    goto LABEL_34;
  }

  v42.location = v25;
  v42.length = v24;

  v43 = NSUnionRange(v42, v41);
  v27 = v43.length;
  v26 = v43.location;
LABEL_91:
  result.length = v27;
  result.location = v26;
  return result;
}

- (void)enumerateAnnotationsForStorage:(id)a3 range:(_NSRange)a4 withBlock:(id)a5
{
  length = a4.length;
  location = a4.location;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(THAnnotationCache *)self annotationsForStorage:a3, 0];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v17 + 1) + 8 * v12);
      v14 = [v13 annotationStorageRange];
      if (location + length <= v14)
      {
        break;
      }

      v23.location = v14;
      v23.length = v15;
      v22.location = location;
      v22.length = length;
      v16 = NSIntersectionRange(v22, v23);
      if (a5)
      {
        if (v16.length)
        {
          (*(a5 + 2))(a5, v13);
        }
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }
}

- (BOOL)checkIfOneOrMoreAnnotationsForStorage:(id)a3 range:(_NSRange)a4 passesTest:(id)a5
{
  length = a4.length;
  location = a4.location;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [(THAnnotationCache *)self annotationsForStorage:a3];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *v21;
  v12 = location + length;
LABEL_3:
  v13 = 0;
  while (1)
  {
    if (*v21 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v14 = *(*(&v20 + 1) + 8 * v13);
    v15 = [v14 annotationStorageRange];
    v17 = v12 > v15;
    if (v12 <= v15)
    {
      return v17;
    }

    v26.location = v15;
    v26.length = v16;
    v25.location = location;
    v25.length = length;
    v18 = NSIntersectionRange(v25, v26);
    if (a5)
    {
      if (v18.length && ((*(a5 + 2))(a5, v14) & 1) != 0)
      {
        return v17;
      }
    }

    if (v10 == ++v13)
    {
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)enumerateAnnotationsWithBlock:(id)a3
{
  if (a3)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = self->_annotationsByStorage;
    v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        v8 = 0;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [(NSDictionary *)self->_annotationsByStorage objectForKey:*(*(&v19 + 1) + 8 * v8)];
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v16;
            do
            {
              v13 = 0;
              do
              {
                if (*v16 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                (*(a3 + 2))(a3, *(*(&v15 + 1) + 8 * v13));
                v13 = v13 + 1;
              }

              while (v11 != v13);
              v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
            }

            while (v11);
          }

          v8 = v8 + 1;
        }

        while (v8 != v6);
        v6 = [(NSDictionary *)obj countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v6);
    }
  }
}

- (id)highlightAnnotations
{
  v3 = [NSMutableArray arrayWithCapacity:self->_numberOfHighlightAnnotations];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSDictionary *)self->_annotationsByStorage objectEnumerator];
  v5 = [(NSEnumerator *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSMutableArray *)v3 addObjectsFromArray:*(*(&v10 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSEnumerator *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)storage:(id)a3 hasAnnotationStrictlyContainingRange:(_NSRange)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1C303C;
  v5[3] = &unk_45ED80;
  v6 = a4;
  return [(THAnnotationCache *)self checkIfOneOrMoreAnnotationsForStorage:a3 range:a4.location passesTest:a4.length, v5];
}

- (BOOL)storage:(id)a3 hasAnnotationWithExactRange:(_NSRange)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1C3104;
  v5[3] = &unk_45ED80;
  v6 = a4;
  return [(THAnnotationCache *)self checkIfOneOrMoreAnnotationsForStorage:a3 range:a4.location passesTest:a4.length, v5];
}

- (BOOL)storage:(id)a3 hasAnnotationThatMatchesStyle:(int)a4 inRange:(_NSRange)a5
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1C31B8;
  v6[3] = &unk_45EDA0;
  v7 = a5;
  v8 = a4;
  return [(THAnnotationCache *)self checkIfOneOrMoreAnnotationsForStorage:a3 range:a5.location passesTest:a5.length, v6];
}

- (BOOL)storage:(id)a3 containsSomeUnhighlightedTextInRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3010000000;
  v14 = "";
  v15 = xmmword_34A730;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1C330C;
  v10[3] = &unk_45EDC8;
  v10[4] = &v11;
  [(THAnnotationCache *)self enumerateAnnotationsForStorage:a3 range:a4.location withBlock:a4.length, v10];
  v16.location = location;
  v16.length = length;
  v6 = NSIntersectionRange(v16, v12[2]);
  v8 = location != v6.location || length != v6.length;
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (id)highlightAnnotationsSortedByRange
{
  v3 = [[NSMutableArray alloc] initWithCapacity:self->_numberOfHighlightAnnotations];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSDictionary *)self->_annotationsByStorage objectEnumerator];
  v5 = [(NSEnumerator *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObjectsFromArray:*(*(&v11 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSEnumerator *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [v3 sortedArrayWithOptions:1 usingComparator:&stru_45EDE8];

  return v9;
}

@end