@interface BKPictureBookPaginationOperation
- (BOOL)_needsFullReparseForRecordedChapterPageCountForDocumentInfos:(id)infos context:(id)context;
- (id)copyDocumentArray:(id)array;
- (id)copyNavigationInfos:(id)infos;
- (id)unpaginatedAnnotations;
- (unint64_t)countPaginatedChapters:(id)chapters;
- (unint64_t)countPaginatedDocuments:(id)documents;
- (void)_clearAllChapterPageCountEntities:(id)entities;
- (void)execute;
- (void)recordAnnotationPageNumbers:(id)numbers;
- (void)recordDocumentPageCountForDocumentInfos:(id)infos context:(id)context;
@end

@implementation BKPictureBookPaginationOperation

- (id)copyDocumentArray:(id)array
{
  arrayCopy = array;
  batchJob = [(BKPictureBookPaginationOperation *)self batchJob];
  bookDatabaseKey = [batchJob bookDatabaseKey];
  v7 = [AEBookInfo linearDocumentPredicateForDatabaseKey:bookDatabaseKey];

  v8 = [NSArray arrayWithObjects:@"href", @"documentOrdinal", 0];
  v9 = [arrayCopy copyEntityPropertiesArray:v8 fromEntityName:@"BKDocument" withPredicate:v7 sortBy:@"documentOrdinal" ascending:1];

  return v9;
}

- (unint64_t)countPaginatedDocuments:(id)documents
{
  documentsCopy = documents;
  batchJob = [(BKPictureBookPaginationOperation *)self batchJob];
  lookupKey = [batchJob lookupKey];
  v7 = [NSPredicate predicateWithFormat:@"lookupKey ==[n] %@", lookupKey];

  v8 = [documentsCopy countEntity:@"BKDocumentPageCount" withPredicate:v7];
  return v8;
}

- (void)recordDocumentPageCountForDocumentInfos:(id)infos context:(id)context
{
  infosCopy = infos;
  contextCopy = context;
  v7 = [(BKPictureBookPaginationOperation *)self countPaginatedDocuments:?];
  if (v7 < [infosCopy count])
  {
    v25 = [[NSNumber alloc] initWithInt:1];
    paginationOperationController = [(BKPaginationOperation *)self paginationOperationController];
    paginationRevision = [paginationOperationController paginationRevision];

    batchJob = [(BKPictureBookPaginationOperation *)self batchJob];
    bookDatabaseKey = [batchJob bookDatabaseKey];

    batchJob2 = [(BKPictureBookPaginationOperation *)self batchJob];
    lookupKey = [batchJob2 lookupKey];

    v22 = infosCopy;
    [infosCopy subarrayWithRange:{v7, objc_msgSend(infosCopy, "count") - v7}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v30 = 0u;
    v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v27 + 1) + 8 * v16);
        if (([(BKPictureBookPaginationOperation *)self isCancelled]& 1) != 0)
        {
          break;
        }

        v18 = [v17 valueForKey:@"documentOrdinal"];
        v19 = [[NSNumber alloc] initWithInt:{objc_msgSend(v18, "intValue") + 1}];
        v20 = [BKDocumentPageCount newEmptyDocumentPageCount:contextCopy];
        [v20 setDocumentOrdinal:v18];
        v21 = [v17 valueForKey:@"href"];
        [v20 setHref:v21];

        [v20 setLookupKey:lookupKey];
        [v20 setPageCount:v25];
        [v20 setPageNumber:v19];
        [v20 setBookDatabaseKey:bookDatabaseKey];
        [v20 setPaginationRevision:paginationRevision];

        if (v14 == ++v16)
        {
          v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    infosCopy = v22;
  }
}

- (id)unpaginatedAnnotations
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_89F2C;
  v31 = sub_89F3C;
  v32 = 0;
  batchJob = [(BKPictureBookPaginationOperation *)self batchJob];
  bookDatabaseKey = [batchJob bookDatabaseKey];
  v5 = [AEAnnotation predicateForUserAnnotationsWithAssetID:bookDatabaseKey includingDeleted:0];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_89F44;
  v20[3] = &unk_1E4D10;
  v22 = &v23;
  v6 = v5;
  v21 = v6;
  [(BKPaginationOperation *)self performBackgroundAnnotationsBlockAndWait:v20];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_89F2C;
  v18 = sub_89F3C;
  v19 = 0;
  if (v24[3])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_89F84;
    v13[3] = &unk_1E4D38;
    v13[4] = self;
    v13[5] = &v23;
    v13[6] = &v14;
    [(BKPaginationOperation *)self performBlockAndWait:v13];
    if (v15[5])
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_8A0E4;
      v9[3] = &unk_1E4D60;
      v11 = &v14;
      v10 = v6;
      v12 = &v27;
      [(BKPaginationOperation *)self performBackgroundAnnotationsBlockAndWait:v9];
    }
  }

  v7 = v28[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v7;
}

- (void)recordAnnotationPageNumbers:(id)numbers
{
  numbersCopy = numbers;
  if (([(BKPictureBookPaginationOperation *)self isCancelled]& 1) == 0)
  {
    unpaginatedAnnotations = [(BKPictureBookPaginationOperation *)self unpaginatedAnnotations];
    if ([unpaginatedAnnotations count])
    {
      paginationOperationController = [(BKPaginationOperation *)self paginationOperationController];
      paginationRevision = [paginationOperationController paginationRevision];

      batchJob = [(BKPictureBookPaginationOperation *)self batchJob];
      lookupKey = [batchJob lookupKey];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = unpaginatedAnnotations;
      obj = unpaginatedAnnotations;
      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
LABEL_5:
        v13 = 0;
        while (1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          if (([(BKPictureBookPaginationOperation *)self isCancelled]& 1) != 0)
          {
            break;
          }

          v15 = [numbersCopy newByClass:objc_opt_class()];
          [v15 setLookupKey:lookupKey];
          v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 ordinal] + 1);
          [v15 setPageNumber:v16];

          [v15 setPaginationRevision:paginationRevision];
          annotationUuid = [v14 annotationUuid];
          [v15 setAnnotationUuid:annotationUuid];

          if (v11 == ++v13)
          {
            v11 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      unpaginatedAnnotations = v18;
    }
  }
}

- (id)copyNavigationInfos:(id)infos
{
  infosCopy = infos;
  bookObjectID = [(BKPaginationOperation *)self bookObjectID];
  v6 = [NSPredicate predicateWithFormat:@"bookInfo == %@", bookObjectID];

  v7 = [[NSArray alloc] initWithObjects:{@"baseHref", @"href", @"name", 0}];
  v8 = [infosCopy copyEntityPropertiesArray:v7 fromEntityName:@"BKNavigationInfo" withPredicate:v6 sortBy:0 ascending:0];

  return v8;
}

- (unint64_t)countPaginatedChapters:(id)chapters
{
  chaptersCopy = chapters;
  batchJob = [(BKPictureBookPaginationOperation *)self batchJob];
  lookupKey = [batchJob lookupKey];
  v7 = [NSPredicate predicateWithFormat:@"lookupKey ==[n] %@", lookupKey];

  v8 = [chaptersCopy countEntity:@"BKChapterPageCount" withPredicate:v7];
  return v8;
}

- (void)_clearAllChapterPageCountEntities:(id)entities
{
  entitiesCopy = entities;
  v4 = [NSPredicate predicateWithValue:1];
  [entitiesCopy batchDeleteEntity:@"BKChapterPageCount" matching:v4 prefetchRelationships:0];
}

- (BOOL)_needsFullReparseForRecordedChapterPageCountForDocumentInfos:(id)infos context:(id)context
{
  infosCopy = infos;
  contextCopy = context;
  if (([(BKPictureBookPaginationOperation *)self isCancelled]& 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(BKPictureBookPaginationOperation *)self copyNavigationInfos:contextCopy];
    v10 = [(BKPictureBookPaginationOperation *)self countPaginatedChapters:contextCopy];
    v11 = [v9 count];
    v8 = v10 > v11;
    if (v10 > v11)
    {
      [(BKPictureBookPaginationOperation *)self _clearAllChapterPageCountEntities:contextCopy];
      v10 = 0;
    }

    if (v10 < [v9 count])
    {
      v31 = v8;
      v38 = contextCopy;
      v37 = [[NSNumber alloc] initWithInt:0];
      paginationOperationController = [(BKPaginationOperation *)self paginationOperationController];
      paginationRevision = [paginationOperationController paginationRevision];

      batchJob = [(BKPictureBookPaginationOperation *)self batchJob];
      bookDatabaseKey = [batchJob bookDatabaseKey];

      batchJob2 = [(BKPictureBookPaginationOperation *)self batchJob];
      lookupKey = [batchJob2 lookupKey];

      v15 = [infosCopy valueForKey:@"href"];
      v32 = infosCopy;
      v28 = [infosCopy valueForKey:@"documentOrdinal"];
      v29 = v15;
      v39 = [[NSDictionary alloc] initWithObjects:v28 forKeys:v15];
      v30 = v9;
      [v9 subarrayWithRange:{v10, objc_msgSend(v9, "count") - v10}];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = v43 = 0u;
      v16 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v41;
LABEL_8:
        v19 = 0;
        while (1)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v40 + 1) + 8 * v19);
          if (([(BKPictureBookPaginationOperation *)self isCancelled]& 1) != 0)
          {
            break;
          }

          v21 = [v20 objectForKey:@"baseHref"];
          v22 = [v39 valueForKey:v21];
          if (v22)
          {
            v23 = [[NSNumber alloc] initWithInt:{objc_msgSend(v22, "intValue") + 1}];
            v24 = [BKChapterPageCount newEmptyChapterPageNumber:v38];
            v25 = [v20 objectForKey:@"href"];
            [v24 setHref:v25];

            v26 = [v20 objectForKey:@"name"];
            [v24 setName:v26];

            [v24 setDocumentPageOffset:v37];
            [v24 setPageNumber:v23];
            [v24 setLookupKey:lookupKey];
            [v24 setBookDatabaseKey:bookDatabaseKey];
            [v24 setPaginationRevision:paginationRevision];
          }

          if (v17 == ++v19)
          {
            v17 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
            if (v17)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      infosCopy = v32;
      contextCopy = v38;
      v8 = v31;
      v9 = v30;
    }
  }

  return v8;
}

- (void)execute
{
  if ([(BKPaginationOperation *)self isJobGenerationValid])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_8AABC;
    v4[3] = &unk_1E4D88;
    v4[4] = self;
    [(BKPaginationOperation *)self performBlockAndWait:v4];
  }

  paginationOperationController = [(BKPaginationOperation *)self paginationOperationController];
  [paginationOperationController batchEnded:{-[BKPaginationOperation isJobGenerationValid](self, "isJobGenerationValid")}];
}

@end