@interface MPModelLibrarySearchSectionedCollectionDataSource
- (BOOL)hasMoreResultsForSectionAtIndex:(int64_t)a3;
- (MPModelLibrarySearchSectionedCollectionDataSource)initWithEntitiesQueryResultContainers:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)sectionAtIndex:(unint64_t)a3;
- (int64_t)searchWeightForIndexPath:(id)a3;
- (unint64_t)numberOfItemsInSection:(unint64_t)a3;
@end

@implementation MPModelLibrarySearchSectionedCollectionDataSource

- (int64_t)searchWeightForIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[NSArray objectAtIndex:](self->_resultContainers, "objectAtIndex:", [v4 section]);
  v6 = v5;
  if (v5)
  {
    [v5 entityQueryResult];
    v7 = v15;
  }

  else
  {
    v7 = 0;
    v16 = 0;
  }

  [v4 item];
  mlcore::EntityQueryResult::entityAtIndex(v7);
  v8 = mlcore::LocalizedSearchPropertyWeight(+[MPMediaLibrary logDatabaseAccess]);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = mlcore::Entity::propertyCache(v13);
  v10 = MPMediaLibraryPropertyCacheValueForProperty(v8, v9);
  v11 = [v10 integerValue];

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return v11;
}

- (BOOL)hasMoreResultsForSectionAtIndex:(int64_t)a3
{
  v5 = [(NSArray *)self->_resultContainers objectAtIndex:?];
  v6 = v5;
  if (v5)
  {
    [v5 entityQueryResult];
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v7 = [(MPModelLibrarySearchSectionedCollectionDataSource *)self numberOfItemsInSection:a3, v10];
  v8 = mlcore::EntityQueryResult::entityCount(v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return v7 < v8;
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[NSArray objectAtIndex:](self->_resultContainers, "objectAtIndex:", [v4 section]);
  v6 = v5;
  if (v5)
  {
    [v5 entityQueryResult];
    v7 = v18;
  }

  else
  {
    v7 = 0;
    v18 = 0;
    v19 = 0;
  }

  [v4 item];
  mlcore::EntityQueryResult::entityAtIndex(v7);
  +[MPMediaLibrary logDatabaseAccess];
  if (v20)
  {
    v8 = [v6 scope];
    v9 = [v8 itemKind];
    v10 = +[MPMediaLibraryEntityTranslator translatorForMPModelClass:](MPMediaLibraryEntityTranslator, "translatorForMPModelClass:", [v9 modelClass]);

    v11 = [v6 scope];
    v12 = [v11 itemProperties];
    v13 = (*(*v20 + 48))();
    v14 = mlcore::Entity::propertyCache(v20);
    v15 = [v6 entityTranslationContext];
    v16 = [v10 objectForPropertySet:v12 entityClass:v13 propertyCache:v14 context:v15];
  }

  else
  {
    v16 = 0;
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  return v16;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)a3
{
  v4 = [(NSArray *)self->_resultContainers objectAtIndex:a3];
  v5 = v4;
  if (v4)
  {
    [v4 entityQueryResult];
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  if ([(MPModelLibrarySearchRequest *)self->_request maximumResultsPerScope]< 1 || (v6 = [(MPModelLibrarySearchRequest *)self->_request maximumResultsPerScope], v6 >= mlcore::EntityQueryResult::entityCount(v11)))
  {
    v7 = mlcore::EntityQueryResult::entityCount(v11);
  }

  else
  {
    v7 = [(MPModelLibrarySearchRequest *)self->_request maximumResultsPerScope];
  }

  v8 = v7;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return v8;
}

- (id)sectionAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_resultContainers objectAtIndex:a3];
  v4 = [v3 scope];

  return v4;
}

- (MPModelLibrarySearchSectionedCollectionDataSource)initWithEntitiesQueryResultContainers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPModelLibrarySearchSectionedCollectionDataSource;
  v5 = [(MPModelLibrarySearchSectionedCollectionDataSource *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    resultContainers = v5->_resultContainers;
    v5->_resultContainers = v6;
  }

  return v5;
}

@end