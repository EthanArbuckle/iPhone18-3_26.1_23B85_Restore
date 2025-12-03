@interface THUpdateAnnotationAction
- (THUpdateAnnotationAction)initWithAnnotation:(id)annotation contentNode:(id)node updateBlock:(id)block;
- (void)commitWithChangeList:(id)list annotationHost:(id)host moc:(id)moc;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)p_maintainIntegrity:(id)integrity;
- (void)p_maintainIntegrityForStorageRangeChange:(id)change;
- (void)p_restoreChangedProperties:(id)properties;
- (void)p_updateAnnotationForStorageRangeChange:(id)change;
- (void)p_updateContextAndCFIForStorage:(id)storage storageID:(id)d range:(_NSRange)range annotation:(id)annotation;
- (void)p_updatePageAnnotationForPageChange:(id)change;
- (void)redoWithChangeList:(id)list annotationHost:(id)host moc:(id)moc;
- (void)undoWithChangeList:(id)list annotationHost:(id)host moc:(id)moc;
@end

@implementation THUpdateAnnotationAction

- (THUpdateAnnotationAction)initWithAnnotation:(id)annotation contentNode:(id)node updateBlock:(id)block
{
  v10.receiver = self;
  v10.super_class = THUpdateAnnotationAction;
  v8 = [(THUpdateAnnotationAction *)&v10 init];
  if (v8)
  {
    v8->_annotationUuid = [objc_msgSend(annotation "annotationUuid")];
    v8->_contentNode = node;
    v8->_updateBlock = [block copy];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THUpdateAnnotationAction;
  [(THUpdateAnnotationAction *)&v3 dealloc];
}

- (void)commitWithChangeList:(id)list annotationHost:(id)host moc:(id)moc
{
  v7 = [host annotationForUUID:self->_annotationUuid includeDeleted:1 moc:moc];
  if (v7)
  {
    v8 = v7;
    [(THUpdateAnnotationAction *)self setChangedProperties:+[NSMutableDictionary dictionary]];
    -[THUpdateAnnotationAction setModificationDate:](self, "setModificationDate:", [v8 annotationModificationDate]);
    -[THUpdateAnnotationAction setUserModificationDate:](self, "setUserModificationDate:", [v8 userModificationDate]);
    v9 = [NSArray arrayWithObjects:@"annotationType", @"annotationLocation", @"annotationNote", @"annotationRepresentativeText", @"annotationSelectedText", @"annotationStyle", @"annotationIsUnderline", @"plLocationRangeStart", @"plLocationRangeEnd", @"plAbsolutePhysicalLocation", @"plStorageUUID", @"plUserData", 0];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v8 addObserver:self forKeyPath:*(*(&v23 + 1) + 8 * v13) options:2 context:0];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v11);
    }

    updateBlock = self->_updateBlock;
    if (updateBlock)
    {
      updateBlock[2](updateBlock, v8);
    }

    [(THUpdateAnnotationAction *)self p_maintainIntegrity:v8];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v9);
          }

          [v8 removeObserver:self forKeyPath:*(*(&v19 + 1) + 8 * v18)];
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v16);
    }

    [list registerAnnotationChangedWithUUID:objc_msgSend(v8 inContentNodeWithID:{"annotationUuid"), objc_msgSend(v8, "annotationContentNodeID")}];
  }
}

- (void)undoWithChangeList:(id)list annotationHost:(id)host moc:(id)moc
{
  v7 = [host annotationForUUID:self->_annotationUuid includeDeleted:1 moc:moc];
  if (v7)
  {
    v8 = v7;
    [(THUpdateAnnotationAction *)self p_restoreChangedProperties:v7];
    annotationUuid = [v8 annotationUuid];
    annotationContentNodeID = [v8 annotationContentNodeID];

    [list registerAnnotationChangedWithUUID:annotationUuid inContentNodeWithID:annotationContentNodeID];
  }
}

- (void)redoWithChangeList:(id)list annotationHost:(id)host moc:(id)moc
{
  v7 = [host annotationForUUID:self->_annotationUuid includeDeleted:1 moc:moc];
  if (v7)
  {
    v8 = v7;
    [(THUpdateAnnotationAction *)self p_restoreChangedProperties:v7];
    annotationUuid = [v8 annotationUuid];
    annotationContentNodeID = [v8 annotationContentNodeID];

    [list registerAnnotationChangedWithUUID:annotationUuid inContentNodeWithID:annotationContentNodeID];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changedProperties = self->_changedProperties;
  if (!changedProperties)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
    changedProperties = self->_changedProperties;
  }

  if (![(NSMutableDictionary *)changedProperties objectForKey:path, object, change, context])
  {
    v10 = [change objectForKey:NSKeyValueChangeOldKey];
    if (!v10)
    {
      v10 = +[NSNull null];
    }

    v11 = self->_changedProperties;

    [(NSMutableDictionary *)v11 setObject:v10 forKey:path];
  }
}

- (void)p_maintainIntegrityForStorageRangeChange:(id)change
{
  if ([(NSMutableDictionary *)self->_changedProperties objectForKey:@"annotationLocation"])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(NSMutableDictionary *)self->_changedProperties objectForKey:@"annotationRepresentativeText"])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(NSMutableDictionary *)self->_changedProperties objectForKey:@"plAbsolutePhysicalLocation"])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THUpdateAnnotationAction *)self p_updateAnnotationForStorageRangeChange:change];
}

- (void)p_maintainIntegrity:(id)integrity
{
  annotationType = [integrity annotationType];
  if (annotationType != 1 && annotationType != 3)
  {
    if (annotationType != 2)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      return;
    }

    changedProperties = self->_changedProperties;
    goto LABEL_13;
  }

  v7 = [(NSMutableDictionary *)self->_changedProperties objectForKey:@"plAbsolutePhysicalLocation"];
  changedProperties = self->_changedProperties;
  if (!v7)
  {
LABEL_13:
    if ([(NSMutableDictionary *)changedProperties objectForKey:@"plLocationRangeStart"]|| [(NSMutableDictionary *)self->_changedProperties objectForKey:@"plLocationRangeEnd"]|| [(NSMutableDictionary *)self->_changedProperties objectForKey:@"plStorageUUID"])
    {

      [(THUpdateAnnotationAction *)self p_maintainIntegrityForStorageRangeChange:integrity];
    }

    return;
  }

  if ([(NSMutableDictionary *)changedProperties objectForKey:@"annotationLocation"])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(NSMutableDictionary *)self->_changedProperties objectForKey:@"annotationRepresentativeText"])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THUpdateAnnotationAction *)self p_updatePageAnnotationForPageChange:integrity];
}

- (void)p_updatePageAnnotationForPageChange:(id)change
{
  [change setContentNodeRelativePageIndex:{-[THModelNode relativePageIndexForAbsolutePageIndex:](self->_contentNode, "relativePageIndexForAbsolutePageIndex:", objc_msgSend(change, "absolutePhysicalPageIndex"))}];
  annotationStorageRange = [change annotationStorageRange];
  v7 = v6;
  annotationStorageIDWithoutContentNodeID = [change annotationStorageIDWithoutContentNodeID];
  objc_opt_class();
  [(THModelContentNode *)self->_contentNode infoForNodeUniqueID:annotationStorageIDWithoutContentNodeID];
  v9 = TSUDynamicCast();
  if (!v9)
  {
    objc_opt_class();
    [(THModelContentNode *)self->_contentNode infoForNodeUniqueID:annotationStorageIDWithoutContentNodeID forPresentationType:[THPresentationType flowPresentationTypeInContext:[(THModelContentNode *)self->_contentNode context]]];
    v9 = TSUDynamicCast();
  }

  [(THUpdateAnnotationAction *)self p_updateContextAndCFIForStorage:v9 storageID:annotationStorageIDWithoutContentNodeID range:annotationStorageRange annotation:v7, change];
  if (!v9 || annotationStorageRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    [change setAnnotationRepresentativeText:0];
    [change setSelectionPreContextText:0];

    [change setSelectionPostContextText:0];
  }
}

- (void)p_updateAnnotationForStorageRangeChange:(id)change
{
  annotationStorageRange = [change annotationStorageRange];
  if (annotationStorageRange != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_contentNode)
    {
      v7 = annotationStorageRange;
      v8 = v6;
      annotationStorageIDWithoutContentNodeID = [change annotationStorageIDWithoutContentNodeID];
      objc_opt_class();
      [(THModelContentNode *)self->_contentNode infoForNodeUniqueID:annotationStorageIDWithoutContentNodeID forPresentationType:[THPresentationType paginatedPresentationTypeInContext:[(THModelContentNode *)self->_contentNode context]]];
      v10 = TSUDynamicCast();
      if (v10 || (objc_opt_class(), [(THModelContentNode *)self->_contentNode infoForNodeUniqueID:annotationStorageIDWithoutContentNodeID forPresentationType:[THPresentationType flowPresentationTypeInContext:[(THModelContentNode *)self->_contentNode context]]], (v10 = TSUDynamicCast()) != 0))
      {
        v11 = v10;
        if (&v7[v8] > [v10 length])
        {
          [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        }

        if (&v7[v8] <= [v11 length])
        {
          [change setContentNodeRelativePageIndex:{-[THModelContentNode relativePageIndexForCharacterIndex:forInfo:](self->_contentNode, "relativePageIndexForCharacterIndex:forInfo:", v7, v11)}];
          [change setAbsolutePhysicalPageIndex:{-[THModelNode absolutePageIndexForRelativePageIndex:forPresentationType:](self->_contentNode, "absolutePageIndexForRelativePageIndex:forPresentationType:", objc_msgSend(change, "contentNodeRelativePageIndex"), +[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", objc_msgSend(v11, "context")))}];

          [(THUpdateAnnotationAction *)self p_updateContextAndCFIForStorage:v11 storageID:annotationStorageIDWithoutContentNodeID range:v7 annotation:v8, change];
        }
      }
    }
  }
}

- (void)p_updateContextAndCFIForStorage:(id)storage storageID:(id)d range:(_NSRange)range annotation:(id)annotation
{
  length = range.length;
  location = range.location;
  [annotation setAnnotationLocation:{-[THModelContentNode cfiForRange:storageUID:includeFilename:pedantic:](self->_contentNode, "cfiForRange:storageUID:includeFilename:pedantic:", range.location, range.length, d, 1, 0)}];
  if (storage && location != 0x7FFFFFFFFFFFFFFFLL && location + length > [storage length])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (storage && location != 0x7FFFFFFFFFFFFFFFLL && location + length <= [storage length])
  {
    v11 = 0;
    v12 = 0;
    if ([annotation annotationType] == 2)
    {
      v10 = length;
    }

    else
    {
      v10 = 0;
    }

    [storage contextualStringsForSelection:location prefix:v10 suffix:{&v12, &v11}];
    [annotation setAnnotationRepresentativeText:{objc_msgSend(storage, "substringWithRange:", location, length)}];
    [annotation setSelectionPreContextText:v12];
    [annotation setSelectionPostContextText:v11];
  }
}

- (void)p_restoreChangedProperties:(id)properties
{
  v5 = objc_alloc_init(NSMutableDictionary);
  v23 = [objc_msgSend(properties "annotationModificationDate")];
  v22 = [objc_msgSend(properties "userModificationDate")];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  changedProperties = self->_changedProperties;
  v7 = [(NSMutableDictionary *)changedProperties countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(changedProperties);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [properties valueForKey:v11];
        if (!v12)
        {
          v12 = +[NSNull null];
        }

        v13 = [(NSNull *)v12 copy];
        [(NSMutableDictionary *)v5 setObject:v13 forKey:v11];
      }

      v8 = [(NSMutableDictionary *)changedProperties countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_changedProperties;
  v15 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * j);
        v20 = [(NSMutableDictionary *)self->_changedProperties objectForKey:v19];
        if (v20 == +[NSNull null])
        {
          v21 = 0;
        }

        else
        {
          v21 = v20;
        }

        [properties setValue:v21 forKey:v19];
      }

      v16 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  [properties setAnnotationModificationDate:self->_modificationDate];
  [properties setUserModificationDate:self->_userModificationDate];

  self->_changedProperties = v5;
  self->_modificationDate = v23;

  self->_userModificationDate = v22;
}

@end