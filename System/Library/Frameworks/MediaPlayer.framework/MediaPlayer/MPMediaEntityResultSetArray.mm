@interface MPMediaEntityResultSetArray
- (BOOL)isQueryResultSetInvalidated;
- (MPMediaEntityResultSetArray)initWithResultSet:(id)set queryCriteria:(id)criteria entityType:(int64_t)type library:(id)library;
- (id)objectAtIndex:(unint64_t)index;
@end

@implementation MPMediaEntityResultSetArray

- (id)objectAtIndex:(unint64_t)index
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__18853;
  v11 = __Block_byref_object_dispose__18854;
  v12 = 0;
  entitiesQueue = self->_entitiesQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__MPMediaEntityResultSetArray_objectAtIndex___block_invoke;
  v6[3] = &unk_1E76799F8;
  v6[6] = index;
  v6[7] = a2;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(entitiesQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __45__MPMediaEntityResultSetArray_objectAtIndex___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) persistentIDAtIndex:a1[6]];
  v3 = a1[4];
  if (!*(v3 + 40))
  {
    v4 = [*(v3 + 8) count];
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    v6 = a1[4];
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (v4)
    {
      v8 = 1;
      do
      {
        v9 = *(a1[4] + 40);
        v10 = [MEMORY[0x1E695DFB0] null];
        [v9 addObject:v10];
      }

      while (v4 > v8++);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  v12 = [*(a1[4] + 40) objectAtIndexedSubscript:a1[6]];
  v13 = [MEMORY[0x1E695DFB0] null];

  if (v12 == v13)
  {
    v14 = [*(a1[4] + 16) isSubclassOfClass:objc_opt_class()];
    v15 = a1[4];
    if (v14)
    {
      if ([*(v15 + 56) groupingType] != 6)
      {
        v19 = +[MPMediaItem persistentIDPropertyForGroupingType:](MPMediaItem, "persistentIDPropertyForGroupingType:", [*(a1[4] + 56) groupingType]);
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v2];
        v21 = [MPMediaPropertyPredicate predicateWithValue:v20 forProperty:v19];

        v18 = [*(a1[4] + 56) copy];
        [v18 addFilterPredicate:v21];
        [v18 setGroupingType:0];
        [v18 setOrderingProperties:0];
        [v18 setEntityLimit:0];
        v22 = [[MPMediaQuery alloc] initWithCriteria:v18 library:WeakRetained];
        v23 = [objc_alloc(*(a1[4] + 16)) initWithIdentifier:v2 itemsQuery:v22 grouping:{objc_msgSend(*(a1[4] + 56), "groupingType")}];
        [*(a1[4] + 40) setObject:v23 atIndexedSubscript:a1[6]];

        goto LABEL_14;
      }

      v16 = [WeakRetained playlistWithPersistentID:v2];
    }

    else
    {
      v17 = *(v15 + 16);
      if (v17 != objc_opt_class())
      {
        v27 = [MEMORY[0x1E696AAA8] currentHandler];
        [v27 handleFailureInMethod:a1[7] object:*(a1[4] + 16) file:? lineNumber:? description:?];
      }

      v16 = [MPConcreteMediaItem concreteMediaItemWithPersistentID:v2 library:WeakRetained];
    }

    v18 = v16;
    [*(a1[4] + 40) setObject:v16 atIndexedSubscript:a1[6]];
LABEL_14:
  }

  v24 = [*(a1[4] + 40) objectAtIndexedSubscript:a1[6]];
  v25 = *(a1[5] + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;
}

- (BOOL)isQueryResultSetInvalidated
{
  [(MPMediaLibraryResultSet *)self->_resultSet updateToLibraryCurrentRevision];
  revision = self->_revision;
  return revision != [(MPMediaLibraryResultSet *)self->_resultSet localRevision];
}

- (MPMediaEntityResultSetArray)initWithResultSet:(id)set queryCriteria:(id)criteria entityType:(int64_t)type library:(id)library
{
  setCopy = set;
  criteriaCopy = criteria;
  libraryCopy = library;
  v31.receiver = self;
  v31.super_class = MPMediaEntityResultSetArray;
  v14 = [(MPMediaEntityResultSetArray *)&v31 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_resultSet, set);
    v16 = criteriaCopy;
    v17 = v16;
    if (type)
    {
      [v16 groupingType];
    }

    v18 = objc_opt_class();

    v19 = v18;
    v15->_entityClass = v18;
    objc_storeWeak(&v15->_library, libraryCopy);
    objc_storeStrong(&v15->_queryCriteria, criteria);
    v20 = objc_alloc_init(MPMediaQueryMutableSectionInfo);
    resultSet = v15->_resultSet;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __82__MPMediaEntityResultSetArray_initWithResultSet_queryCriteria_entityType_library___block_invoke;
    v29[3] = &unk_1E76799D0;
    v22 = v20;
    v30 = v22;
    [(MPMediaLibraryResultSet *)resultSet enumerateSectionHeadersUsingBlock:v29];
    sectionIndexTitles = [(MPMediaLibraryResultSet *)v15->_resultSet sectionIndexTitles];
    [(MPMediaQuerySectionInfo *)v22 setSectionIndexTitles:sectionIndexTitles];

    sectionInfo = v15->_sectionInfo;
    v15->_sectionInfo = &v22->super;
    v25 = v22;

    v15->_revision = [(MPMediaLibraryResultSet *)v15->_resultSet localRevision];
    v26 = dispatch_queue_create("com.apple.mediaplayer.ResultSetEntities", 0);
    entitiesQueue = v15->_entitiesQueue;
    v15->_entitiesQueue = v26;
  }

  return v15;
}

@end