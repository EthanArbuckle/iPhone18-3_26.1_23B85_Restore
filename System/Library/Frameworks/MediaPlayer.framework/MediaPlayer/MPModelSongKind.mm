@interface MPModelSongKind
+ (MPModelSongKind)kindWithVariants:(unint64_t)variants options:(unint64_t)options;
+ (id)identityKind;
- (BOOL)isEqual:(id)equal;
- (MPModelSongKind)initWithCoder:(id)coder;
- (id)humanDescription;
- (id)msv_initWithJSONValue:(id)value;
- (id)msv_jsonValue;
- (shared_ptr<mlcore::Predicate>)predicateWithBaseProperty:(void *)property;
- (shared_ptr<mlcore::Predicate>)representedSearchScopePredicate;
- (unint64_t)hash;
- (void)applyToView:(shared_ptr<mlcore:(id)view :LibraryView>)a3 withContext:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPModelSongKind

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

- (id)humanDescription
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v4 = v3;
  variants = self->_variants;
  if (variants)
  {
    [v3 addObject:@"songs"];
    variants = self->_variants;
    if ((variants & 2) == 0)
    {
LABEL_3:
      if ((variants & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((variants & 2) == 0)
  {
    goto LABEL_3;
  }

  [v4 addObject:@"music videos"];
  if ((self->_variants & 4) != 0)
  {
LABEL_4:
    [v4 addObject:@"artist uploaded content"];
  }

LABEL_5:
  v6 = MEMORY[0x1E696AD60];
  v7 = [v4 componentsJoinedByString:@" or "];
  v8 = [v6 stringWithString:v7];

  options = self->_options;
  if (options)
  {
    [v8 insertString:@"shuffleable " atIndex:0];
    options = self->_options;
  }

  if ((options & 2) != 0)
  {
    [v8 insertString:@"cloud library " atIndex:0];
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPModelSongKind;
  coderCopy = coder;
  [(MPModelKind *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_variants forKey:{@"variants", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_options forKey:@"options"];
}

- (MPModelSongKind)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"variants"];
  v6 = [coderCopy decodeIntegerForKey:@"options"];

  v7 = [MPModelSongKind kindWithVariants:v5 options:v6];

  return v7;
}

- (id)msv_jsonValue
{
  v9.receiver = self;
  v9.super_class = MPModelSongKind;
  msv_jsonValue = [(MPModelKind *)&v9 msv_jsonValue];
  v4 = [msv_jsonValue mutableCopy];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_variants];
  [v4 setObject:v5 forKeyedSubscript:@"variants"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_options];
  [v4 setObject:v6 forKeyedSubscript:@"options"];

  v7 = [v4 copy];

  return v7;
}

- (id)msv_initWithJSONValue:(id)value
{
  valueCopy = value;
  v4 = [valueCopy objectForKeyedSubscript:@"variants"];
  integerValue = [v4 integerValue];

  v6 = [valueCopy objectForKeyedSubscript:@"options"];

  integerValue2 = [v6 integerValue];
  v8 = objc_opt_class();

  return [v8 kindWithVariants:integerValue options:integerValue2];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = MPModelSongKind;
  v5 = [(MPModelKind *)&v7 isEqual:equalCopy]&& self->_variants == equalCopy[2] && self->_options == equalCopy[3];

  return v5;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = MPModelSongKind;
  v3 = [(MPModelKind *)&v6 hash];
  variants = [(MPModelSongKind *)self variants];
  return variants ^ [(MPModelSongKind *)self options]^ v3;
}

+ (MPModelSongKind)kindWithVariants:(unint64_t)variants options:(unint64_t)options
{
  options = [MEMORY[0x1E696AEC0] stringWithFormat:@"Song:v%lu:o%lu", variants, options];
  v8 = objc_opt_class();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__MPModelSongKind_kindWithVariants_options___block_invoke;
  v11[3] = &__block_descriptor_48_e25_v16__0__MPModelSongKind_8l;
  v11[4] = variants;
  v11[5] = options;
  v9 = [self kindWithModelClass:v8 cacheKey:options block:v11];

  return v9;
}

uint64_t __44__MPModelSongKind_kindWithVariants_options___block_invoke(uint64_t result, uint64_t a2)
{
  *(a2 + 16) = *(result + 32);
  *(a2 + 24) = *(result + 40);
  return result;
}

- (shared_ptr<mlcore::Predicate>)predicateWithBaseProperty:(void *)property
{
  memset(v8, 0, 24);
  if (([(MPModelSongKind *)self variants:0]& 1) != 0)
  {
    LODWORD(v7) = 8;
    std::vector<int>::push_back[abi:ne200100](v8, &v7);
  }

  variants = [(MPModelSongKind *)self variants];
  if ((variants & 2) != 0)
  {
    LODWORD(v7) = 1032;
    std::vector<int>::push_back[abi:ne200100](v8, &v7);
  }

  Property = mlcore::ItemPropertyMediaType(variants);
  if (property)
  {
    Property = MPMediaLibraryGetProperty(property, Property);
  }

  v8[4] = Property;
  std::allocate_shared[abi:ne200100]<mlcore::InPredicate<int>,std::allocator<mlcore::InPredicate<int>>,mlcore::ModelProperty<int> *&,std::vector<int> const&,0>();
}

- (shared_ptr<mlcore::Predicate>)representedSearchScopePredicate
{
  v2 = [(MPModelSongKind *)self predicateWithBaseProperty:0];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)applyToView:(shared_ptr<mlcore:(id)view :LibraryView>)a3 withContext:
{
  var0 = a3.var0;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3.var1;
  v7 = *(var0 + 1);
  v14 = *var0;
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13.receiver = self;
  v13.super_class = MPModelSongKind;
  [(MPModelKind *)&v13 applyToView:&v14 withContext:v6];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (([(MPModelSongKind *)self options]& 2) == 0)
  {
    mediaLibrary = [(__shared_weak_count *)v6 mediaLibrary];
    v9 = [MPMediaLibrarySystemFilters filtersForLibrary:mediaLibrary];
    shouldExcludePurchaseHistoryContent = [v9 shouldExcludePurchaseHistoryContent];

    if (shouldExcludePurchaseHistoryContent)
    {
      v11 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:[(MPModelKind *)self modelClass]];
      [v11 entityClass];
      [v11 entityClass];
      v12 = mlcore::LibraryView::filterPredicateForEntityClass();
      v18 = mlcore::ItemPropertyRemoteLocationID(v12);
      v16 = 0;
      v17 = 1;
      std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator &,long long const&,mlcore::ComparisonOptions &,0>();
    }
  }
}

@end