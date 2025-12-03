@interface MPLazySectionedCollection
- (BOOL)hasSameContentAsSectionedCollection:(id)collection;
- (BOOL)isEqual:(id)equal;
- (MPLazySectionedCollection)initWithDataSource:(id)source;
- (id)_safeStateDumpObject;
- (id)allElementsEnumerator;
- (id)allItems;
- (id)allSections;
- (id)copyWithZone:(_NSZone *)zone;
- (id)firstItem;
- (id)firstSection;
- (id)identifiersForItemAtIndexPath:(id)path;
- (id)identifiersForSectionAtIndex:(int64_t)index;
- (id)indexPathForItemWithIdentifiersIntersectingSet:(id)set;
- (id)itemAtIndexPath:(id)path;
- (id)itemsInSectionAtIndex:(int64_t)index;
- (id)lastItem;
- (id)lastSection;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)sectionAtIndex:(int64_t)index;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (unint64_t)hash;
- (void)dealloc;
- (void)enumerateItemsInSectionAtIndex:(int64_t)index usingBlock:(id)block;
- (void)enumerateItemsUsingBlock:(id)block;
- (void)enumerateSectionsUsingBlock:(id)block;
@end

@implementation MPLazySectionedCollection

- (void)dealloc
{
  v3 = self->_dataSource;
  v4 = self->_storage;
  v5 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MPLazySectionedCollection_dealloc__block_invoke;
  block[3] = &unk_1E76823C0;
  v10 = v3;
  v11 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, block);

  v8.receiver = self;
  v8.super_class = MPLazySectionedCollection;
  [(MPLazySectionedCollection *)&v8 dealloc];
}

- (unint64_t)hash
{
  dataSource = [(MPLazySectionedCollection *)self dataSource];
  v3 = [dataSource hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else if ([(MPLazySectionedCollection *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(MPLazySectionedCollection *)self hasSameContentAsSectionedCollection:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)indexPathForItemWithIdentifiersIntersectingSet:(id)set
{
  setCopy = set;
  dataSource = [(MPLazySectionedCollection *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    os_unfair_recursive_lock_lock_with_options();
    v6 = [dataSource indexPathForItemWithIdentifiersIntersectingSet:setCopy];
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MPLazySectionedCollection;
    v6 = [(MPSectionedCollection *)&v8 indexPathForItemWithIdentifiersIntersectingSet:setCopy];
  }

  return v6;
}

- (id)identifiersForSectionAtIndex:(int64_t)index
{
  v29 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  if ([(MPLazySectionedCollection *)self numberOfSections]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPLazySectionedCollection.mm" lineNumber:374 description:{@"Request for identifiers for section out of bounds: %lld", index}];
  }

  os_unfair_recursive_lock_lock_with_options();
  storage = self->_storage;
  left = storage->_sectionIdentifierSetMap.__tree_.__end_node_.__left_;
  if (!left)
  {
LABEL_10:
    dataSource = [(MPLazySectionedCollection *)self dataSource];
    if (objc_opt_respondsToSelector())
    {
      v11 = [dataSource identifiersForSectionAtIndex:index];
      if (v11)
      {
LABEL_19:
        v15 = self->_storage;
        *buf = &indexCopy;
        v16 = std::__tree<std::__value_type<long,MPIdentifierSet * {__strong}>,std::__map_value_compare<long,std::__value_type<long,MPIdentifierSet * {__strong}>,std::less<long>,true>,std::allocator<std::__value_type<long,MPIdentifierSet * {__strong}>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(&v15->_sectionIdentifierSetMap, index);
        objc_storeStrong(v16 + 5, v11);

        goto LABEL_20;
      }

      if (!self->_disableMissingIdentifiersFaults)
      {
        v12 = os_log_create("com.apple.amp.mediaplayer", "Default");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          *buf = 134218754;
          *&buf[4] = self;
          v23 = 2114;
          v24 = objc_opt_class();
          v25 = 2048;
          v26 = dataSource;
          v27 = 2048;
          indexCopy2 = index;
          v13 = v24;
          _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_FAULT, "MPLazySectionedCollection %p: identifiersForSectionAtIndex dataSource failed to produce identifiers: dataSource=<%{public}@ %p> sectionIndex=%ld", buf, 0x2Au);
        }
      }

      v14 = +[MPIdentifierSet emptyIdentifierSet];
    }

    else
    {
      v20.receiver = self;
      v20.super_class = MPLazySectionedCollection;
      v14 = [(MPSectionedCollection *)&v20 identifiersForSectionAtIndex:index];
    }

    v11 = v14;
    goto LABEL_19;
  }

  v8 = storage->_sectionIdentifierSetMap.__tree_.__end_node_.__left_;
  while (1)
  {
    v9 = v8[4];
    if (v9 <= index)
    {
      break;
    }

LABEL_9:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v9 < index)
  {
    ++v8;
    goto LABEL_9;
  }

  v18 = *std::map<long long,std::shared_ptr<mlcore::EntityQueryResult>>::at(left, index);
  v11 = v18;
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_20:
  os_unfair_recursive_lock_unlock();

  return v11;
}

- (id)identifiersForItemAtIndexPath:(id)path
{
  v31 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([pathCopy length] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPLazySectionedCollection.mm" lineNumber:343 description:@"Index path must have two components."];
  }

  item = [pathCopy item];
  if (item >= -[MPLazySectionedCollection numberOfItemsInSection:](self, "numberOfItemsInSection:", [pathCopy section]))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPLazySectionedCollection.mm" lineNumber:344 description:{@"Request for item identifiers out of bound in section (%lld): %lld", objc_msgSend(pathCopy, "section"), objc_msgSend(pathCopy, "item")}];
  }

  v7 = [(MPSectionedCollection *)self globalIndexForIndexPath:pathCopy];
  v23 = v7;
  os_unfair_recursive_lock_lock_with_options();
  storage = self->_storage;
  left = storage->_itemIdentifierSetMap.__tree_.__end_node_.__left_;
  if (!left)
  {
LABEL_11:
    dataSource = [(MPLazySectionedCollection *)self dataSource];
    if (objc_opt_respondsToSelector())
    {
      v13 = [dataSource identifiersForItemAtIndexPath:pathCopy];
      if (!v13)
      {
        v14 = os_log_create("com.apple.amp.mediaplayer", "Default");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218754;
          *&buf[4] = self;
          v25 = 2114;
          v26 = objc_opt_class();
          v27 = 2048;
          v28 = dataSource;
          v29 = 2114;
          v30 = pathCopy;
          v15 = v26;
          _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_ERROR, "MPLazySectionedCollection %p: identifiersForItemAtIndexPath dataSource failed to produce identifiers: dataSource=<%{public}@ %p> indexPath=%{public}@", buf, 0x2Au);
        }

        v13 = +[MPIdentifierSet emptyIdentifierSet];
      }
    }

    else
    {
      v22.receiver = self;
      v22.super_class = MPLazySectionedCollection;
      v13 = [(MPSectionedCollection *)&v22 identifiersForItemAtIndexPath:pathCopy];
      if (!v13)
      {
        v16 = os_log_create("com.apple.amp.mediaplayer", "Default");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          *&buf[4] = self;
          v25 = 2114;
          v26 = pathCopy;
          _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_ERROR, "MPLazySectionedCollection %p: identifiersForItemAtIndexPath super failed to produce identifiers: indexPath=%{public}@", buf, 0x16u);
        }

        v13 = 0;
      }
    }

    v17 = self->_storage;
    *buf = &v23;
    v18 = std::__tree<std::__value_type<long,MPIdentifierSet * {__strong}>,std::__map_value_compare<long,std::__value_type<long,MPIdentifierSet * {__strong}>,std::less<long>,true>,std::allocator<std::__value_type<long,MPIdentifierSet * {__strong}>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(&v17->_itemIdentifierSetMap, v7);
    objc_storeStrong(v18 + 5, v13);

    goto LABEL_21;
  }

  v10 = storage->_itemIdentifierSetMap.__tree_.__end_node_.__left_;
  while (1)
  {
    v11 = v10[4];
    if (v7 >= v11)
    {
      break;
    }

LABEL_10:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  if (v11 < v7)
  {
    ++v10;
    goto LABEL_10;
  }

  v13 = *std::map<long long,std::shared_ptr<mlcore::EntityQueryResult>>::at(left, v7);
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_21:
  os_unfair_recursive_lock_unlock();

  return v13;
}

- (id)allItems
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[MPSectionedCollection totalItemCount](self, "totalItemCount")}];
  for (i = 0; i < [(MPSectionedCollection *)self totalItemCount]; ++i)
  {
    v5 = [(MPSectionedCollection *)self indexPathForGlobalIndex:i];
    v6 = [(MPLazySectionedCollection *)self itemAtIndexPath:v5];

    if (v6)
    {
      [v3 addObject:v6];
    }
  }

  return v3;
}

- (id)allSections
{
  numberOfSections = [(MPLazySectionedCollection *)self numberOfSections];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:numberOfSections];
  if (numberOfSections >= 1)
  {
    for (i = 0; i != numberOfSections; ++i)
    {
      v6 = [(MPLazySectionedCollection *)self sectionAtIndex:i];
      if (v6)
      {
        [v4 addObject:v6];
      }
    }
  }

  return v4;
}

- (id)lastSection
{
  numberOfSections = [(MPLazySectionedCollection *)self numberOfSections];
  if (numberOfSections < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(MPLazySectionedCollection *)self sectionAtIndex:numberOfSections - 1];
  }

  return v4;
}

- (id)itemsInSectionAtIndex:(int64_t)index
{
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[MPLazySectionedCollection numberOfItemsInSection:](self, "numberOfItemsInSection:", index)}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__MPLazySectionedCollection_itemsInSectionAtIndex___block_invoke;
  v8[3] = &unk_1E767D970;
  v6 = v5;
  v9 = v6;
  [(MPLazySectionedCollection *)self enumerateItemsInSectionAtIndex:index usingBlock:v8];

  return v6;
}

void __51__MPLazySectionedCollection_itemsInSectionAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)firstSection
{
  if ([(MPLazySectionedCollection *)self numberOfSections]< 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(MPLazySectionedCollection *)self sectionAtIndex:0];
  }

  return v3;
}

- (void)enumerateItemsUsingBlock:(id)block
{
  blockCopy = block;
  v14 = 0;
  numberOfSections = [(MPLazySectionedCollection *)self numberOfSections];
  if (numberOfSections >= 1)
  {
    v6 = 0;
    v13 = numberOfSections;
    do
    {
      v7 = [(MPLazySectionedCollection *)self numberOfItemsInSection:v6, v13];
      v8 = v14;
      if (v7 >= 1 && (v14 & 1) == 0)
      {
        v9 = 1;
        do
        {
          v10 = objc_autoreleasePoolPush();
          v11 = [MEMORY[0x1E696AC88] indexPathForItem:v9 - 1 inSection:v6];
          v12 = [(MPLazySectionedCollection *)self itemAtIndexPath:v11];
          blockCopy[2](blockCopy, v12, v11, &v14);

          objc_autoreleasePoolPop(v10);
          v8 = v14;
          if (v9 >= v7)
          {
            break;
          }

          ++v9;
        }

        while ((v14 & 1) == 0);
      }

      ++v6;
    }

    while (v6 < v13 && (v8 & 1) == 0);
  }
}

- (void)enumerateItemsInSectionAtIndex:(int64_t)index usingBlock:(id)block
{
  blockCopy = block;
  v12 = 0;
  v7 = [(MPLazySectionedCollection *)self numberOfItemsInSection:index];
  if (v7 >= 1)
  {
    v8 = 1;
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [MEMORY[0x1E696AC88] indexPathForItem:v8 - 1 inSection:index];
      v11 = [(MPLazySectionedCollection *)self itemAtIndexPath:v10];
      blockCopy[2](blockCopy, v11, v8 - 1, &v12);

      objc_autoreleasePoolPop(v9);
      if (v8 >= v7)
      {
        break;
      }

      ++v8;
    }

    while ((v12 & 1) == 0);
  }
}

- (void)enumerateSectionsUsingBlock:(id)block
{
  blockCopy = block;
  v9 = 0;
  numberOfSections = [(MPLazySectionedCollection *)self numberOfSections];
  if (numberOfSections >= 1)
  {
    v6 = 1;
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [(MPLazySectionedCollection *)self sectionAtIndex:v6 - 1];
      blockCopy[2](blockCopy, v8, v6 - 1, &v9);

      objc_autoreleasePoolPop(v7);
      if (v6 >= numberOfSections)
      {
        break;
      }

      ++v6;
    }

    while ((v9 & 1) == 0);
  }
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  os_unfair_recursive_lock_lock_with_options();
  v6 = [(NSCache *)self->_storage->_itemsCache objectForKey:pathCopy];
  if (!v6)
  {
    v23 = self->_dataSource;
    if ([pathCopy length] != 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPLazySectionedCollection.mm" lineNumber:236 description:@"Index path must have two components."];
    }

    item = [pathCopy item];
    if (item >= -[MPLazySectionedCollection numberOfItemsInSection:](self, "numberOfItemsInSection:", [pathCopy section]))
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPLazySectionedCollection.mm" lineNumber:237 description:{@"Request for item out of bound in section (%lld): %lld", objc_msgSend(pathCopy, "section"), objc_msgSend(pathCopy, "item")}];
    }

    v6 = [(MPLazySectionedCollectionDataSource *)v23 itemAtIndexPath:pathCopy];
    if (v6)
    {
      v8 = [(MPSectionedCollection *)self globalIndexForIndexPath:pathCopy];
      v24[0] = v8;
      [(NSCache *)self->_storage->_itemsCache setObject:v6 forKey:pathCopy];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v6;
        if ([pathCopy length] == 1)
        {
          identifiers = [v9 identifiers];
          storage = self->_storage;
          section = [pathCopy section];
          left = storage->_sectionIdentifierSetMap.__tree_.__end_node_.__left_;
          if (!left)
          {
LABEL_17:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v13 = left;
              v14 = left[4];
              if (section >= v14)
              {
                break;
              }

              left = *v13;
              if (!*v13)
              {
                goto LABEL_17;
              }
            }

            if (v14 >= section)
            {
              break;
            }

            left = v13[1];
            if (!left)
            {
              goto LABEL_17;
            }
          }

          v18 = v13[5];
          v13[5] = identifiers;
        }

        else
        {
          identifiers2 = [v9 identifiers];
          v16 = self->_storage;
          v24[1] = v24;
          v17 = std::__tree<std::__value_type<long,MPIdentifierSet * {__strong}>,std::__map_value_compare<long,std::__value_type<long,MPIdentifierSet * {__strong}>,std::less<long>,true>,std::allocator<std::__value_type<long,MPIdentifierSet * {__strong}>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(&v16->_itemIdentifierSetMap, v8);
          v18 = v17[5];
          v17[5] = identifiers2;
        }
      }
    }
  }

  os_unfair_recursive_lock_unlock();

  return v6;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  if (section < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPLazySectionedCollection.mm" lineNumber:207 description:{@"Request for number of items in section out of bounds [negative index]: %lld", section}];
  }

  if ([(MPLazySectionedCollection *)self numberOfSections]<= section)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPLazySectionedCollection.mm" lineNumber:208 description:{@"Request for number of items in section out of bounds: %lld", section}];
  }

  os_unfair_recursive_lock_lock_with_options();
  begin = self->_storage->_cachedNumberOfItemsInSections.__begin_;
  v7 = self->_storage->_cachedNumberOfItemsInSections.__end_ - begin;
  if (v7 <= section || (v8 = begin[section], v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v29 = self->_dataSource;
    v28 = [(MPLazySectionedCollectionDataSource *)v29 numberOfItemsInSection:section];
    v9 = section + 1;
    if (section + 1 > (self->_storage->_cachedNumberOfItemsInSections.__cap_ - self->_storage->_cachedNumberOfItemsInSections.__begin_))
    {
      if (!(v9 >> 61))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v9);
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    if (v7 <= section)
    {
      v10 = section - v7 + 1;
      do
      {
        storage = self->_storage;
        end = storage->_cachedNumberOfItemsInSections.__end_;
        cap = storage->_cachedNumberOfItemsInSections.__cap_;
        if (end >= cap)
        {
          v15 = storage->_cachedNumberOfItemsInSections.__begin_;
          v16 = end - v15;
          v17 = end - v15;
          v18 = v17 + 1;
          if ((v17 + 1) >> 61)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v19 = cap - v15;
          if (v19 >> 2 > v18)
          {
            v18 = v19 >> 2;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFF8)
          {
            v20 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v20);
          }

          v21 = end - v15;
          v22 = (8 * v17);
          v23 = (8 * v17 - 8 * v21);
          *v22 = 0x7FFFFFFFFFFFFFFFLL;
          v14 = v22 + 1;
          memcpy(v23, v15, v16);
          v24 = storage->_cachedNumberOfItemsInSections.__begin_;
          storage->_cachedNumberOfItemsInSections.__begin_ = v23;
          storage->_cachedNumberOfItemsInSections.__end_ = v14;
          storage->_cachedNumberOfItemsInSections.__cap_ = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *end = 0x7FFFFFFFFFFFFFFFLL;
          v14 = end + 1;
        }

        storage->_cachedNumberOfItemsInSections.__end_ = v14;
        --v10;
      }

      while (v10);
    }

    v8 = v28;
    self->_storage->_cachedNumberOfItemsInSections.__begin_[section] = v28;
  }

  os_unfair_recursive_lock_unlock();
  return v8;
}

- (id)sectionAtIndex:(int64_t)index
{
  if (index < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPLazySectionedCollection.mm" lineNumber:190 description:{@"Request for section out of bounds [negative index]: %lld", index}];
  }

  if ([(MPLazySectionedCollection *)self numberOfSections]<= index)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPLazySectionedCollection.mm" lineNumber:191 description:{@"Request for section out of bounds: %lld", index}];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  os_unfair_recursive_lock_lock_with_options();
  v7 = [(NSCache *)self->_storage->_sectionsCache objectForKey:v6];
  if (!v7)
  {
    v8 = self->_dataSource;
    v7 = [(MPLazySectionedCollectionDataSource *)v8 sectionAtIndex:index];
    if (v7)
    {
      [(NSCache *)self->_storage->_sectionsCache setObject:v7 forKey:v6];
    }
  }

  os_unfair_recursive_lock_unlock();

  return v7;
}

- (int64_t)numberOfSections
{
  os_unfair_recursive_lock_lock_with_options();
  storage = self->_storage;
  if (!storage->_hasValidCachedNumberOfSections)
  {
    v4 = self->_dataSource;
    self->_storage->_cachedNumberOfSections = [(MPLazySectionedCollectionDataSource *)v4 numberOfSections];
    self->_storage->_hasValidCachedNumberOfSections = 1;

    storage = self->_storage;
  }

  cachedNumberOfSections = storage->_cachedNumberOfSections;
  os_unfair_recursive_lock_unlock();
  return cachedNumberOfSections;
}

- (id)lastItem
{
  totalItemCount = [(MPSectionedCollection *)self totalItemCount];
  if (totalItemCount >= 1 && ([(MPSectionedCollection *)self indexPathForGlobalIndex:totalItemCount - 1], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [(MPLazySectionedCollection *)self itemAtIndexPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasSameContentAsSectionedCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy isMemberOfClass:objc_opt_class()])
  {
    dataSource = [collectionCopy dataSource];
    dataSource2 = [(MPLazySectionedCollection *)self dataSource];
    if (objc_opt_respondsToSelector())
    {
      v7 = [dataSource2 hasSameContentAsDataSource:dataSource];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)firstItem
{
  if ([(MPSectionedCollection *)self totalItemCount]>= 1 && ([(MPSectionedCollection *)self indexPathForGlobalIndex:0], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [(MPLazySectionedCollection *)self itemAtIndexPath:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MPMutableSectionedCollection);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__MPLazySectionedCollection_mutableCopyWithZone___block_invoke;
  v8[3] = &unk_1E767D808;
  v5 = v4;
  v9 = v5;
  selfCopy = self;
  [(MPLazySectionedCollection *)self enumerateSectionsUsingBlock:v8];
  v6 = v5;

  return v6;
}

void __49__MPLazySectionedCollection_mutableCopyWithZone___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  [*(a1 + 32) appendSection:?];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) itemsInSectionAtIndex:a3];
  [v5 appendItems:v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_alloc(objc_opt_class()) initWithDataSource:self->_dataSource];
  *(result + 40) = self->_disableMissingIdentifiersFaults;
  return result;
}

- (id)allElementsEnumerator
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF28];
  allSections = [(MPLazySectionedCollection *)self allSections];
  v9[0] = allSections;
  allItems = [(MPLazySectionedCollection *)self allItems];
  v9[1] = allItems;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v3 msv_concatArrays:v6];

  return v7;
}

- (id)_safeStateDumpObject
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"_obj";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), self];
  v4 = v3;
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    dataSource = @"@";
  }

  v9[0] = v3;
  v9[1] = dataSource;
  v8[1] = @"dataSource";
  v8[2] = @"storage";
  v9[2] = self->_storage;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

void __36__MPLazySectionedCollection_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
}

- (MPLazySectionedCollection)initWithDataSource:(id)source
{
  sourceCopy = source;
  v17.receiver = self;
  v17.super_class = MPLazySectionedCollection;
  v6 = [(MPSectionedCollection *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    v8 = objc_alloc_init(_MPLazySectionedCollectionStorage);
    storage = v7->_storage;
    v7->_storage = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v11 = v7->_storage;
    itemsCache = v11->_itemsCache;
    v11->_itemsCache = v10;

    [(NSCache *)v7->_storage->_itemsCache setCountLimit:1000];
    v13 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v14 = v7->_storage;
    sectionsCache = v14->_sectionsCache;
    v14->_sectionsCache = v13;

    [(NSCache *)v7->_storage->_sectionsCache setCountLimit:50];
    v7->_lock = 0;
  }

  return v7;
}

@end