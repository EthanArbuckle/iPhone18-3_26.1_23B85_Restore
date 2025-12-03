@interface THAnnotationChangeList
- (NSArray)changedContentNodeIDs;
- (id)addedAnnotationUUIDsForContentNodeID:(id)d;
- (id)changedAnnotationUUIDsForContentNodeID:(id)d;
- (id)deletedAnnotationUUIDsForContentNodeID:(id)d;
- (void)dealloc;
- (void)registerAnnotationAddedWithUUID:(id)d toContentNodeWithID:(id)iD;
- (void)registerAnnotationChangedWithUUID:(id)d inContentNodeWithID:(id)iD;
- (void)registerAnnotationDeletedWithUUID:(id)d fromContentNodeWithID:(id)iD;
@end

@implementation THAnnotationChangeList

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THAnnotationChangeList;
  [(THAnnotationChangeList *)&v3 dealloc];
}

- (void)registerAnnotationAddedWithUUID:(id)d toContentNodeWithID:(id)iD
{
  if (!d)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (iD)
    {
      return;
    }

    goto LABEL_16;
  }

  if (!iD)
  {
LABEL_16:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return;
  }

  v6 = [TSUPair pairWithFirst:"pairWithFirst:second:" second:?];
  if ([(NSMutableSet *)self->_addedAnnotations containsObject:v6])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  addedAnnotations = self->_addedAnnotations;
  if (!addedAnnotations)
  {
    addedAnnotations = objc_alloc_init(NSMutableSet);
    self->_addedAnnotations = addedAnnotations;
  }

  [(NSMutableSet *)addedAnnotations addObject:v6];
  [(NSMutableSet *)self->_deletedAnnotations removeObject:v6];
  if (([(NSMutableSet *)self->_addedAnnotations containsObject:v6]& 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(NSMutableSet *)self->_deletedAnnotations containsObject:v6])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(NSMutableSet *)self->_changedAnnotations containsObject:v6])
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[THAnnotationChangeList registerAnnotationAddedWithUUID:toContentNodeWithID:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Annotations/THAnnotationChangeList.m"];

    [v8 handleFailureInFunction:v9 file:v10 lineNumber:57 description:@"added annotation should not be changed"];
  }
}

- (void)registerAnnotationDeletedWithUUID:(id)d fromContentNodeWithID:(id)iD
{
  if (!d)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (iD)
    {
      return;
    }

    goto LABEL_16;
  }

  if (!iD)
  {
LABEL_16:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return;
  }

  v6 = [TSUPair pairWithFirst:"pairWithFirst:second:" second:?];
  if ([(NSMutableSet *)self->_deletedAnnotations containsObject:v6])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  deletedAnnotations = self->_deletedAnnotations;
  if (!deletedAnnotations)
  {
    deletedAnnotations = objc_alloc_init(NSMutableSet);
    self->_deletedAnnotations = deletedAnnotations;
  }

  [(NSMutableSet *)deletedAnnotations addObject:v6];
  [(NSMutableSet *)self->_addedAnnotations removeObject:v6];
  [(NSMutableSet *)self->_changedAnnotations removeObject:v6];
  if ([(NSMutableSet *)self->_addedAnnotations containsObject:v6])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (([(NSMutableSet *)self->_deletedAnnotations containsObject:v6]& 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(NSMutableSet *)self->_changedAnnotations containsObject:v6])
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[THAnnotationChangeList registerAnnotationDeletedWithUUID:fromContentNodeWithID:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Annotations/THAnnotationChangeList.m"];

    [v8 handleFailureInFunction:v9 file:v10 lineNumber:85 description:@"deleted annotation should not be changed"];
  }
}

- (void)registerAnnotationChangedWithUUID:(id)d inContentNodeWithID:(id)iD
{
  if (!d)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (iD)
    {
      return;
    }

    goto LABEL_15;
  }

  if (!iD)
  {
LABEL_15:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return;
  }

  v6 = [TSUPair pairWithFirst:"pairWithFirst:second:" second:?];
  if (([(NSMutableSet *)self->_addedAnnotations containsObject:v6]& 1) == 0)
  {
    changedAnnotations = self->_changedAnnotations;
    if (!changedAnnotations)
    {
      changedAnnotations = objc_alloc_init(NSMutableSet);
      self->_changedAnnotations = changedAnnotations;
    }

    [(NSMutableSet *)changedAnnotations addObject:v6];
    if ([(NSMutableSet *)self->_addedAnnotations containsObject:v6])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if ([(NSMutableSet *)self->_deletedAnnotations containsObject:v6])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if (([(NSMutableSet *)self->_changedAnnotations containsObject:v6]& 1) == 0)
    {
      v8 = +[TSUAssertionHandler currentHandler];
      v9 = [NSString stringWithUTF8String:"[THAnnotationChangeList registerAnnotationChangedWithUUID:inContentNodeWithID:]"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Annotations/THAnnotationChangeList.m"];

      [v8 handleFailureInFunction:v9 file:v10 lineNumber:110 description:@"changed annotation should be changed"];
    }
  }
}

- (NSArray)changedContentNodeIDs
{
  v3 = +[NSMutableSet set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  addedAnnotations = self->_addedAnnotations;
  v5 = [(NSMutableSet *)addedAnnotations countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(addedAnnotations);
        }

        [v3 addObject:{objc_msgSend(*(*(&v28 + 1) + 8 * i), "second")}];
      }

      v6 = [(NSMutableSet *)addedAnnotations countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  deletedAnnotations = self->_deletedAnnotations;
  v10 = [(NSMutableSet *)deletedAnnotations countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(deletedAnnotations);
        }

        [v3 addObject:{objc_msgSend(*(*(&v24 + 1) + 8 * j), "second")}];
      }

      v11 = [(NSMutableSet *)deletedAnnotations countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v11);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  changedAnnotations = self->_changedAnnotations;
  v15 = [(NSMutableSet *)changedAnnotations countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (k = 0; k != v16; k = k + 1)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(changedAnnotations);
        }

        [v3 addObject:{objc_msgSend(*(*(&v20 + 1) + 8 * k), "second")}];
      }

      v16 = [(NSMutableSet *)changedAnnotations countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v16);
  }

  return [v3 allObjects];
}

- (id)addedAnnotationUUIDsForContentNodeID:(id)d
{
  if (d)
  {
    v5 = +[NSMutableSet set];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    addedAnnotations = self->_addedAnnotations;
    v7 = [(NSMutableSet *)addedAnnotations countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(addedAnnotations);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([objc_msgSend(v11 "second")])
          {
            [v5 addObject:{objc_msgSend(v11, "first")}];
          }
        }

        v8 = [(NSMutableSet *)addedAnnotations countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v5 = +[NSMutableSet set];
  }

  return [v5 allObjects];
}

- (id)deletedAnnotationUUIDsForContentNodeID:(id)d
{
  if (d)
  {
    v5 = +[NSMutableSet set];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    deletedAnnotations = self->_deletedAnnotations;
    v7 = [(NSMutableSet *)deletedAnnotations countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(deletedAnnotations);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([objc_msgSend(v11 "second")])
          {
            [v5 addObject:{objc_msgSend(v11, "first")}];
          }
        }

        v8 = [(NSMutableSet *)deletedAnnotations countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v5 = +[NSMutableSet set];
  }

  return [v5 allObjects];
}

- (id)changedAnnotationUUIDsForContentNodeID:(id)d
{
  if (d)
  {
    v5 = +[NSMutableSet set];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    changedAnnotations = self->_changedAnnotations;
    v7 = [(NSMutableSet *)changedAnnotations countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(changedAnnotations);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([objc_msgSend(v11 "second")])
          {
            [v5 addObject:{objc_msgSend(v11, "first")}];
          }
        }

        v8 = [(NSMutableSet *)changedAnnotations countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v5 = +[NSMutableSet set];
  }

  return [v5 allObjects];
}

@end