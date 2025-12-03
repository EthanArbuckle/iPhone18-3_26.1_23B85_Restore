@interface THNotesViewAllChapters
- (BOOL)hasGlossaryTerms;
- (NSArray)sectionArray;
- (NSString)title;
- (THNotesViewAllChapters)initWithNavigationUnits:(id)units navigationModel:(id)model;
- (id)p_annotationCacheForContentNode:(id)node;
- (unint64_t)annotationCount;
- (unint64_t)annotationCountForStudyCards;
- (void)dealloc;
- (void)updateWithAllAnnotations:(id)annotations orphanedAnnotations:(id)orphanedAnnotations annotationController:(id)controller navigationModel:(id)model;
@end

@implementation THNotesViewAllChapters

- (THNotesViewAllChapters)initWithNavigationUnits:(id)units navigationModel:(id)model
{
  v8.receiver = self;
  v8.super_class = THNotesViewAllChapters;
  v6 = [(THNotesViewAllChapters *)&v8 init];
  if (v6)
  {
    v6->mNavigationUnits = units;
    v6->mNavigationModel = model;
    v6->mCachedAnnotationsByContentNode = objc_alloc_init(NSMutableDictionary);
    v6->mImage = [UIImage th_imageNamed:@"notes-all-chapters"];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THNotesViewAllChapters;
  [(THNotesViewAllChapters *)&v3 dealloc];
}

- (BOOL)hasGlossaryTerms
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  mNavigationUnits = self->mNavigationUnits;
  v3 = [(NSArray *)mNavigationUnits countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(mNavigationUnits);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        contentNodes = [v7 contentNodes];
        v9 = [contentNodes countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          while (2)
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(contentNodes);
              }

              if ([*(*(&v14 + 1) + 8 * j) glossaryTermExists])
              {
                LOBYTE(v3) = 1;
                return v3;
              }
            }

            v10 = [contentNodes countByEnumeratingWithState:&v14 objects:v22 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v4 = [(NSArray *)mNavigationUnits countByEnumeratingWithState:&v18 objects:v23 count:16];
      LOBYTE(v3) = 0;
    }

    while (v4);
  }

  return v3;
}

- (unint64_t)annotationCount
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->mCachedAnnotationsByContentNode allValues];
  v3 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v12;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(allValues);
      }

      v8 = *(*(&v11 + 1) + 8 * i);
      numberOfHighlightAnnotations = [v8 numberOfHighlightAnnotations];
      v5 += [v8 numberOfOrphanedAnnotations] + numberOfHighlightAnnotations;
    }

    v4 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v4);
  return v5;
}

- (unint64_t)annotationCountForStudyCards
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->mCachedAnnotationsByContentNode allValues];
  v3 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v10;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(allValues);
      }

      v5 += [*(*(&v9 + 1) + 8 * i) numberOfHighlightAnnotations];
    }

    v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v4);
  return v5;
}

- (NSString)title
{
  v2 = THBundle();

  return [v2 localizedStringForKey:@"All Chapters" value:&stru_471858 table:0];
}

- (void)updateWithAllAnnotations:(id)annotations orphanedAnnotations:(id)orphanedAnnotations annotationController:(id)controller navigationModel:(id)model
{
  self->mNeedsMigration = 0;
  if (!annotations)
  {
    annotations = [NSArray array:0];
  }

  v9 = [annotations arrayByAddingObjectsFromArray:{orphanedAnnotations, orphanedAnnotations, controller, model}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->mNavigationUnits;
  v21 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v20 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v10;
        v11 = *(*(&v27 + 1) + 8 * v10);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        contentNodes = [v11 contentNodes];
        v13 = [contentNodes countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(contentNodes);
              }

              v17 = *(*(&v23 + 1) + 8 * i);
              v18 = [controller cachedAnnotationsForAnnotations:v9 filteredWithContentNode:v17];
              if ([v18 needsMigration])
              {
                self->mNeedsMigration = 1;
              }

              -[NSMutableDictionary setObject:forKey:](self->mCachedAnnotationsByContentNode, "setObject:forKey:", v18, [v17 nodeGUID]);
            }

            v14 = [contentNodes countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v14);
        }

        v10 = v22 + 1;
      }

      while ((v22 + 1) != v21);
      v21 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }
}

- (id)p_annotationCacheForContentNode:(id)node
{
  mCachedAnnotationsByContentNode = self->mCachedAnnotationsByContentNode;
  nodeGUID = [node nodeGUID];

  return [(NSMutableDictionary *)mCachedAnnotationsByContentNode objectForKey:nodeGUID];
}

- (NSArray)sectionArray
{
  v24 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->mNavigationUnits;
  v19 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v19)
  {
    v18 = *v30;
    do
    {
      v3 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v29 + 1) + 8 * v3);
        v5 = [(THDocumentNavigationModel *)self->mNavigationModel sectionIdentifierForNavigationUnit:v4];
        if (v5)
        {
          v21 = -[NSString stringByTransformingForTHNotesSectionHeader](+[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle() localizedStringForKey:@"Chapter %@" value:&stru_471858 table:0], v5), "stringByTransformingForTHNotesSectionHeader");
        }

        else
        {
          v21 = 0;
        }

        v20 = v3;
        v6 = objc_alloc_init(NSMutableArray);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        contentNodes = [v4 contentNodes];
        v7 = [contentNodes countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = 0;
          v23 = *v26;
          v10 = 1;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v26 != v23)
              {
                objc_enumerationMutation(contentNodes);
              }

              v12 = *(*(&v25 + 1) + 8 * i);
              v13 = objc_alloc_init(THNotesViewSection);
              [(NSArray *)v24 addObject:v13];
              if (v9)
              {
                title = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle() localizedStringForKey:@"Section %lu - %@" value:&stru_471858 table:0], v9, objc_msgSend(v12, "title"));
              }

              else
              {
                title = [v12 title];
              }

              [(THNotesViewSection *)v13 setTitle:[(NSString *)title stringByTransformingForTHNotesSectionHeader]];
              -[THNotesViewSection setNotes:](v13, "setNotes:", [-[THNotesViewAllChapters p_annotationCacheForContentNode:](self p_annotationCacheForContentNode:{v12), "highlightAnnotationsSortedByRange"}]);
              if ((([(NSArray *)[(THNotesViewSection *)v13 notes] count]!= 0) & v10) == 1)
              {
                [(THNotesViewSection *)v13 setChapterTitle:v21];
                v10 = 0;
              }

              [v6 addObjectsFromArray:{objc_msgSend(-[THNotesViewAllChapters p_annotationCacheForContentNode:](self, "p_annotationCacheForContentNode:", v12), "orphanedAnnotations")}];
              ++v9;
            }

            v8 = [contentNodes countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v8);
        }

        else
        {
          v10 = 1;
        }

        if ([v6 count])
        {
          v15 = objc_alloc_init(THNotesViewSection);
          [(NSArray *)v24 addObject:v15];
          -[THNotesViewSection setTitle:](v15, "setTitle:", [objc_msgSend(THBundle() localizedStringForKey:@"Old Notes" value:&stru_471858 table:{0), "stringByTransformingForTHNotesSectionHeader"}]);
          if (v10)
          {
            [(THNotesViewSection *)v15 setChapterTitle:v21];
          }

          [(THNotesViewSection *)v15 setNotes:v6];
        }

        v3 = v20 + 1;
      }

      while ((v20 + 1) != v19);
      v19 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v19);
  }

  return v24;
}

@end