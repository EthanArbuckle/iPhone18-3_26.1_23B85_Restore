@interface MPModelLibrarySearchSectionedCollectionDataSource
- (BOOL)hasMoreResultsForSectionAtIndex:(int64_t)index;
- (MPModelLibrarySearchSectionedCollectionDataSource)initWithEntitiesQueryResultContainers:(id)containers;
- (id)itemAtIndexPath:(id)path;
- (id)sectionAtIndex:(unint64_t)index;
- (int64_t)searchWeightForIndexPath:(id)path;
- (unint64_t)numberOfItemsInSection:(unint64_t)section;
@end

@implementation MPModelLibrarySearchSectionedCollectionDataSource

- (int64_t)searchWeightForIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[NSArray objectAtIndex:](self->_resultContainers, "objectAtIndex:", [pathCopy section]);
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

  [pathCopy item];
  mlcore::EntityQueryResult::entityAtIndex(v7);
  v8 = mlcore::LocalizedSearchPropertyWeight(+[MPMediaLibrary logDatabaseAccess]);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = mlcore::Entity::propertyCache(v13);
  v10 = MPMediaLibraryPropertyCacheValueForProperty(v8, v9);
  integerValue = [v10 integerValue];

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return integerValue;
}

- (BOOL)hasMoreResultsForSectionAtIndex:(int64_t)index
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

  v7 = [(MPModelLibrarySearchSectionedCollectionDataSource *)self numberOfItemsInSection:index, v10];
  v8 = mlcore::EntityQueryResult::entityCount(v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return v7 < v8;
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[NSArray objectAtIndex:](self->_resultContainers, "objectAtIndex:", [pathCopy section]);
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

  [pathCopy item];
  mlcore::EntityQueryResult::entityAtIndex(v7);
  +[MPMediaLibrary logDatabaseAccess];
  if (v20)
  {
    scope = [v6 scope];
    itemKind = [scope itemKind];
    v10 = +[MPMediaLibraryEntityTranslator translatorForMPModelClass:](MPMediaLibraryEntityTranslator, "translatorForMPModelClass:", [itemKind modelClass]);

    scope2 = [v6 scope];
    itemProperties = [scope2 itemProperties];
    v13 = (*(*v20 + 48))();
    v14 = mlcore::Entity::propertyCache(v20);
    entityTranslationContext = [v6 entityTranslationContext];
    v16 = [v10 objectForPropertySet:itemProperties entityClass:v13 propertyCache:v14 context:entityTranslationContext];
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

- (unint64_t)numberOfItemsInSection:(unint64_t)section
{
  v4 = [(NSArray *)self->_resultContainers objectAtIndex:section];
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
    maximumResultsPerScope = mlcore::EntityQueryResult::entityCount(v11);
  }

  else
  {
    maximumResultsPerScope = [(MPModelLibrarySearchRequest *)self->_request maximumResultsPerScope];
  }

  v8 = maximumResultsPerScope;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return v8;
}

- (id)sectionAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_resultContainers objectAtIndex:index];
  scope = [v3 scope];

  return scope;
}

- (MPModelLibrarySearchSectionedCollectionDataSource)initWithEntitiesQueryResultContainers:(id)containers
{
  containersCopy = containers;
  v9.receiver = self;
  v9.super_class = MPModelLibrarySearchSectionedCollectionDataSource;
  v5 = [(MPModelLibrarySearchSectionedCollectionDataSource *)&v9 init];
  if (v5)
  {
    v6 = [containersCopy copy];
    resultContainers = v5->_resultContainers;
    v5->_resultContainers = v6;
  }

  return v5;
}

@end