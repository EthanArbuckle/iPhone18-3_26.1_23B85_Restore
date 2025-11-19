@interface THUpdateAnnotationAction
- (THUpdateAnnotationAction)initWithAnnotation:(id)a3 contentNode:(id)a4 updateBlock:(id)a5;
- (void)commitWithChangeList:(id)a3 annotationHost:(id)a4 moc:(id)a5;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_maintainIntegrity:(id)a3;
- (void)p_maintainIntegrityForStorageRangeChange:(id)a3;
- (void)p_restoreChangedProperties:(id)a3;
- (void)p_updateAnnotationForStorageRangeChange:(id)a3;
- (void)p_updateContextAndCFIForStorage:(id)a3 storageID:(id)a4 range:(_NSRange)a5 annotation:(id)a6;
- (void)p_updatePageAnnotationForPageChange:(id)a3;
- (void)redoWithChangeList:(id)a3 annotationHost:(id)a4 moc:(id)a5;
- (void)undoWithChangeList:(id)a3 annotationHost:(id)a4 moc:(id)a5;
@end

@implementation THUpdateAnnotationAction

- (THUpdateAnnotationAction)initWithAnnotation:(id)a3 contentNode:(id)a4 updateBlock:(id)a5
{
  v10.receiver = self;
  v10.super_class = THUpdateAnnotationAction;
  v8 = [(THUpdateAnnotationAction *)&v10 init];
  if (v8)
  {
    v8->_annotationUuid = [objc_msgSend(a3 "annotationUuid")];
    v8->_contentNode = a4;
    v8->_updateBlock = [a5 copy];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THUpdateAnnotationAction;
  [(THUpdateAnnotationAction *)&v3 dealloc];
}

- (void)commitWithChangeList:(id)a3 annotationHost:(id)a4 moc:(id)a5
{
  v7 = [a4 annotationForUUID:self->_annotationUuid includeDeleted:1 moc:a5];
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

    [a3 registerAnnotationChangedWithUUID:objc_msgSend(v8 inContentNodeWithID:{"annotationUuid"), objc_msgSend(v8, "annotationContentNodeID")}];
  }
}

- (void)undoWithChangeList:(id)a3 annotationHost:(id)a4 moc:(id)a5
{
  v7 = [a4 annotationForUUID:self->_annotationUuid includeDeleted:1 moc:a5];
  if (v7)
  {
    v8 = v7;
    [(THUpdateAnnotationAction *)self p_restoreChangedProperties:v7];
    v9 = [v8 annotationUuid];
    v10 = [v8 annotationContentNodeID];

    [a3 registerAnnotationChangedWithUUID:v9 inContentNodeWithID:v10];
  }
}

- (void)redoWithChangeList:(id)a3 annotationHost:(id)a4 moc:(id)a5
{
  v7 = [a4 annotationForUUID:self->_annotationUuid includeDeleted:1 moc:a5];
  if (v7)
  {
    v8 = v7;
    [(THUpdateAnnotationAction *)self p_restoreChangedProperties:v7];
    v9 = [v8 annotationUuid];
    v10 = [v8 annotationContentNodeID];

    [a3 registerAnnotationChangedWithUUID:v9 inContentNodeWithID:v10];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  changedProperties = self->_changedProperties;
  if (!changedProperties)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
    changedProperties = self->_changedProperties;
  }

  if (![(NSMutableDictionary *)changedProperties objectForKey:a3, a4, a5, a6])
  {
    v10 = [a5 objectForKey:NSKeyValueChangeOldKey];
    if (!v10)
    {
      v10 = +[NSNull null];
    }

    v11 = self->_changedProperties;

    [(NSMutableDictionary *)v11 setObject:v10 forKey:a3];
  }
}

- (void)p_maintainIntegrityForStorageRangeChange:(id)a3
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

  [(THUpdateAnnotationAction *)self p_updateAnnotationForStorageRangeChange:a3];
}

- (void)p_maintainIntegrity:(id)a3
{
  v5 = [a3 annotationType];
  if (v5 != 1 && v5 != 3)
  {
    if (v5 != 2)
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

      [(THUpdateAnnotationAction *)self p_maintainIntegrityForStorageRangeChange:a3];
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

  [(THUpdateAnnotationAction *)self p_updatePageAnnotationForPageChange:a3];
}

- (void)p_updatePageAnnotationForPageChange:(id)a3
{
  [a3 setContentNodeRelativePageIndex:{-[THModelNode relativePageIndexForAbsolutePageIndex:](self->_contentNode, "relativePageIndexForAbsolutePageIndex:", objc_msgSend(a3, "absolutePhysicalPageIndex"))}];
  v5 = [a3 annotationStorageRange];
  v7 = v6;
  v8 = [a3 annotationStorageIDWithoutContentNodeID];
  objc_opt_class();
  [(THModelContentNode *)self->_contentNode infoForNodeUniqueID:v8];
  v9 = TSUDynamicCast();
  if (!v9)
  {
    objc_opt_class();
    [(THModelContentNode *)self->_contentNode infoForNodeUniqueID:v8 forPresentationType:[THPresentationType flowPresentationTypeInContext:[(THModelContentNode *)self->_contentNode context]]];
    v9 = TSUDynamicCast();
  }

  [(THUpdateAnnotationAction *)self p_updateContextAndCFIForStorage:v9 storageID:v8 range:v5 annotation:v7, a3];
  if (!v9 || v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 setAnnotationRepresentativeText:0];
    [a3 setSelectionPreContextText:0];

    [a3 setSelectionPostContextText:0];
  }
}

- (void)p_updateAnnotationForStorageRangeChange:(id)a3
{
  v5 = [a3 annotationStorageRange];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_contentNode)
    {
      v7 = v5;
      v8 = v6;
      v9 = [a3 annotationStorageIDWithoutContentNodeID];
      objc_opt_class();
      [(THModelContentNode *)self->_contentNode infoForNodeUniqueID:v9 forPresentationType:[THPresentationType paginatedPresentationTypeInContext:[(THModelContentNode *)self->_contentNode context]]];
      v10 = TSUDynamicCast();
      if (v10 || (objc_opt_class(), [(THModelContentNode *)self->_contentNode infoForNodeUniqueID:v9 forPresentationType:[THPresentationType flowPresentationTypeInContext:[(THModelContentNode *)self->_contentNode context]]], (v10 = TSUDynamicCast()) != 0))
      {
        v11 = v10;
        if (&v7[v8] > [v10 length])
        {
          [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        }

        if (&v7[v8] <= [v11 length])
        {
          [a3 setContentNodeRelativePageIndex:{-[THModelContentNode relativePageIndexForCharacterIndex:forInfo:](self->_contentNode, "relativePageIndexForCharacterIndex:forInfo:", v7, v11)}];
          [a3 setAbsolutePhysicalPageIndex:{-[THModelNode absolutePageIndexForRelativePageIndex:forPresentationType:](self->_contentNode, "absolutePageIndexForRelativePageIndex:forPresentationType:", objc_msgSend(a3, "contentNodeRelativePageIndex"), +[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", objc_msgSend(v11, "context")))}];

          [(THUpdateAnnotationAction *)self p_updateContextAndCFIForStorage:v11 storageID:v9 range:v7 annotation:v8, a3];
        }
      }
    }
  }
}

- (void)p_updateContextAndCFIForStorage:(id)a3 storageID:(id)a4 range:(_NSRange)a5 annotation:(id)a6
{
  length = a5.length;
  location = a5.location;
  [a6 setAnnotationLocation:{-[THModelContentNode cfiForRange:storageUID:includeFilename:pedantic:](self->_contentNode, "cfiForRange:storageUID:includeFilename:pedantic:", a5.location, a5.length, a4, 1, 0)}];
  if (a3 && location != 0x7FFFFFFFFFFFFFFFLL && location + length > [a3 length])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (a3 && location != 0x7FFFFFFFFFFFFFFFLL && location + length <= [a3 length])
  {
    v11 = 0;
    v12 = 0;
    if ([a6 annotationType] == 2)
    {
      v10 = length;
    }

    else
    {
      v10 = 0;
    }

    [a3 contextualStringsForSelection:location prefix:v10 suffix:{&v12, &v11}];
    [a6 setAnnotationRepresentativeText:{objc_msgSend(a3, "substringWithRange:", location, length)}];
    [a6 setSelectionPreContextText:v12];
    [a6 setSelectionPostContextText:v11];
  }
}

- (void)p_restoreChangedProperties:(id)a3
{
  v5 = objc_alloc_init(NSMutableDictionary);
  v23 = [objc_msgSend(a3 "annotationModificationDate")];
  v22 = [objc_msgSend(a3 "userModificationDate")];
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
        v12 = [a3 valueForKey:v11];
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

        [a3 setValue:v21 forKey:v19];
      }

      v16 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  [a3 setAnnotationModificationDate:self->_modificationDate];
  [a3 setUserModificationDate:self->_userModificationDate];

  self->_changedProperties = v5;
  self->_modificationDate = v23;

  self->_userModificationDate = v22;
}

@end