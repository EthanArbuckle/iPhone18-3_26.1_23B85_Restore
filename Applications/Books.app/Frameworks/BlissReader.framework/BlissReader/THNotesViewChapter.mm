@interface THNotesViewChapter
- (BOOL)hasGlossaryTerms;
- (NSArray)navigationUnits;
- (NSArray)sectionArray;
- (THNotesViewChapter)initWithNavigationUnit:(id)a3 navigationModel:(id)a4 tocModel:(id)a5 chapterIndex:(unint64_t)a6;
- (id)p_annotationCacheForContentNode:(id)a3;
- (unint64_t)annotationCount;
- (unint64_t)annotationCountForStudyCards;
- (void)dealloc;
- (void)updateWithAllAnnotations:(id)a3 orphanedAnnotations:(id)a4 annotationController:(id)a5 navigationModel:(id)a6;
@end

@implementation THNotesViewChapter

- (THNotesViewChapter)initWithNavigationUnit:(id)a3 navigationModel:(id)a4 tocModel:(id)a5 chapterIndex:(unint64_t)a6
{
  v16.receiver = self;
  v16.super_class = THNotesViewChapter;
  v10 = [(THNotesViewChapter *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->mNavigationUnit = a3;
    v10->mTitle = [a4 parentTitleForNavigationUnit:a3];
    v12 = [a4 sectionIdentifierForNavigationUnit:a3];
    if (v12)
    {
      v11->mSubtitle = [[NSString alloc] initWithFormat:objc_msgSend(THBundle(), "localizedStringForKey:value:table:", @"Chapter %@", &stru_471858, 0), v12];
    }

    v11->mCachedAnnotationsByContentNode = objc_alloc_init(NSMutableDictionary);
    v13 = [objc_msgSend(a5 toc:0 tileModelForChapterIndex:{a6), "notesThumb"}];
    if (v13)
    {
      v14 = [UIImage imageWithCGImage:[TSDBitmapImageProvider temporaryCGImageForImageData:v13]];
    }

    else
    {
      v14 = [UIImage th_imageNamed:@"notes-no-image"];
    }

    v11->mImage = v14;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THNotesViewChapter;
  [(THNotesViewChapter *)&v3 dealloc];
}

- (BOOL)hasGlossaryTerms
{
  v2 = [(THNavigationUnit *)self->mNavigationUnit contentNodes];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * v6) glossaryTermExists])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (NSArray)navigationUnits
{
  v3 = +[NSMutableArray array];
  [(NSArray *)v3 addObject:self->mNavigationUnit];
  return v3;
}

- (unint64_t)annotationCount
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(NSMutableDictionary *)self->mCachedAnnotationsByContentNode allValues];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v11 + 1) + 8 * i);
      v9 = [v8 numberOfHighlightAnnotations];
      v5 += [v8 numberOfOrphanedAnnotations] + v9;
    }

    v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v2 = [(NSMutableDictionary *)self->mCachedAnnotationsByContentNode allValues];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
        objc_enumerationMutation(v2);
      }

      v5 += [*(*(&v9 + 1) + 8 * i) numberOfHighlightAnnotations];
    }

    v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v4);
  return v5;
}

- (void)updateWithAllAnnotations:(id)a3 orphanedAnnotations:(id)a4 annotationController:(id)a5 navigationModel:(id)a6
{
  self->mNeedsMigration = 0;
  if (!a3)
  {
    a3 = [NSArray array:0];
  }

  v9 = [a3 arrayByAddingObjectsFromArray:{a4, a4, a5, a6}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(THNavigationUnit *)self->mNavigationUnit contentNodes];
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        v16 = [a5 cachedAnnotationsForAnnotations:v9 filteredWithContentNode:v15];
        if ([v16 needsMigration])
        {
          self->mNeedsMigration = 1;
        }

        -[NSMutableDictionary setObject:forKey:](self->mCachedAnnotationsByContentNode, "setObject:forKey:", v16, [v15 nodeGUID]);
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (id)p_annotationCacheForContentNode:(id)a3
{
  mCachedAnnotationsByContentNode = self->mCachedAnnotationsByContentNode;
  v4 = [a3 nodeGUID];

  return [(NSMutableDictionary *)mCachedAnnotationsByContentNode objectForKey:v4];
}

- (NSArray)sectionArray
{
  v16 = +[NSMutableArray array];
  v3 = [(THNavigationUnit *)self->mNavigationUnit contentNodes];
  v4 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v5 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = objc_alloc_init(THNotesViewSection);
        [(NSArray *)v16 addObject:v11];
        if (v7)
        {
          v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle() localizedStringForKey:@"Section %lu - %@" value:&stru_471858 table:0], v7, objc_msgSend(v10, "title"));
        }

        else
        {
          v12 = [v10 title];
        }

        [(THNotesViewSection *)v11 setTitle:[(NSString *)v12 stringByTransformingForTHNotesSectionHeader]];
        ++v7;
        -[THNotesViewSection setNotes:](v11, "setNotes:", [-[THNotesViewChapter p_annotationCacheForContentNode:](self p_annotationCacheForContentNode:{v10), "highlightAnnotationsSortedByRange"}]);

        [v4 addObjectsFromArray:{objc_msgSend(-[THNotesViewChapter p_annotationCacheForContentNode:](self, "p_annotationCacheForContentNode:", v10), "orphanedAnnotations")}];
        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v13 = objc_alloc_init(THNotesViewSection);
    [(NSArray *)v16 addObject:v13];
    -[THNotesViewSection setTitle:](v13, "setTitle:", [objc_msgSend(THBundle() localizedStringForKey:@"Old Notes" value:&stru_471858 table:{0), "stringByTransformingForTHNotesSectionHeader"}]);
    [(THNotesViewSection *)v13 setNotes:v4];
  }

  return v16;
}

@end