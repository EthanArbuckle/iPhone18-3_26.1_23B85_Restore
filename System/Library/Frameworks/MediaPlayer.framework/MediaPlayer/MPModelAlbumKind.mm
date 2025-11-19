@interface MPModelAlbumKind
+ (id)identityKind;
+ (id)kindWithVariants:(unint64_t)a3 songKind:(id)a4 options:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (MPModelAlbumKind)initWithCoder:(id)a3;
- (id)humanDescription;
- (id)msv_initWithJSONValue:(id)a3;
- (id)msv_jsonValue;
- (shared_ptr<mlcore::Predicate>)predicateWithBaseProperty:(void *)a3;
- (shared_ptr<mlcore::Predicate>)representedSearchScopePredicate;
- (unint64_t)hash;
- (void)applyToView:(shared_ptr<mlcore:(id)a4 :LibraryView>)a3 withContext:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPModelAlbumKind

- (id)humanDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = v3;
  variants = self->_variants;
  if (variants)
  {
    [v3 appendString:@"albums"];
    if ((self->_variants & 2) == 0)
    {
      goto LABEL_7;
    }

    [v4 appendString:@" or "];
    goto LABEL_6;
  }

  if ((variants & 2) != 0)
  {
LABEL_6:
    [v4 appendString:@"compilations"];
  }

LABEL_7:
  if (self->_options)
  {
    [v4 insertString:@"previously played " atIndex:0];
  }

  v6 = [(MPModelSongKind *)self->_songKind humanDescription];
  [v4 appendFormat:@" containing %@", v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPModelAlbumKind;
  v4 = a3;
  [(MPModelKind *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_variants forKey:{@"variants", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_songKind forKey:@"songKind"];
  [v4 encodeInteger:self->_options forKey:@"options"];
}

- (MPModelAlbumKind)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"variants"];
  v6 = [v4 decodeIntegerForKey:@"options"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"songKind"];

  if (v7)
  {
    v8 = [MPModelAlbumKind kindWithVariants:v5 songKind:v7 options:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)msv_jsonValue
{
  v10.receiver = self;
  v10.super_class = MPModelAlbumKind;
  v3 = [(MPModelKind *)&v10 msv_jsonValue];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_variants];
  [v4 setObject:v5 forKeyedSubscript:@"variants"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_options];
  [v4 setObject:v6 forKeyedSubscript:@"options"];

  v7 = [(MPModelSongKind *)self->_songKind msv_jsonValue];
  [v4 setObject:v7 forKeyedSubscript:@"songKind"];

  v8 = [v4 copy];

  return v8;
}

- (id)msv_initWithJSONValue:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"variants"];
  v5 = [v4 integerValue];

  v6 = [v3 objectForKeyedSubscript:@"options"];
  v7 = [v6 integerValue];

  v8 = [MPModelSongKind alloc];
  v9 = [v3 objectForKeyedSubscript:@"songKind"];

  v10 = [(MPModelSongKind *)v8 msv_initWithJSONValue:v9];

  v11 = [objc_opt_class() kindWithVariants:v5 songKind:v10 options:v7];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MPModelAlbumKind;
  if ([(MPModelKind *)&v12 isEqual:v4])
  {
    v5 = v4;
    v6 = [(MPModelAlbumKind *)self variants];
    if (v6 == [v5 variants] && (v7 = -[MPModelAlbumKind options](self, "options"), v7 == objc_msgSend(v5, "options")))
    {
      v8 = [(MPModelAlbumKind *)self songKind];
      v9 = [v5 songKind];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = MPModelAlbumKind;
  v3 = [(MPModelKind *)&v9 hash];
  v4 = [(MPModelAlbumKind *)self variants];
  v5 = v4 ^ [(MPModelAlbumKind *)self options];
  v6 = [(MPModelAlbumKind *)self songKind];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
}

+ (id)kindWithVariants:(unint64_t)a3 songKind:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Album:v%lu:o%lu:s%p", a3, a5, v8];
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__MPModelAlbumKind_kindWithVariants_songKind_options___block_invoke;
  v14[3] = &unk_1E7679EE0;
  v15 = v8;
  v16 = a3;
  v17 = a5;
  v11 = v8;
  v12 = [a1 kindWithModelClass:v10 cacheKey:v9 block:v14];

  return v12;
}

void __54__MPModelAlbumKind_kindWithVariants_songKind_options___block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = *(a1 + 40);
  objc_storeStrong((a2 + 24), *(a1 + 32));
  v4 = a2;
  v4[4] = *(a1 + 48);
}

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

- (shared_ptr<mlcore::Predicate>)predicateWithBaseProperty:(void *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = 0;
  v7 = 0;
  Property = mlcore::AlbumPropertyAllCompilations(self);
  if (a3)
  {
    Property = MPMediaLibraryGetProperty(a3, Property);
  }

  v8 = Property;
  v9 = 1;
  std::allocate_shared[abi:ne200100]<mlcore::UnaryPredicate<int>,std::allocator<mlcore::UnaryPredicate<int>>,mlcore::ModelProperty<int> *&,mlcore::UnaryOperator,0>();
}

- (shared_ptr<mlcore::Predicate>)representedSearchScopePredicate
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [(MPModelAlbumKind *)self songKind];
  if (v3)
  {
    [v3 predicateWithBaseProperty:0];
  }

  else
  {
    v5[0] = 0;
    v5[1] = 0;
  }

  [(MPModelAlbumKind *)self predicateWithBaseProperty:0];
  memset(v4, 0, sizeof(v4));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate> const*,std::shared_ptr<mlcore::Predicate> const*>(v4, v5, &v6, 2uLL);
}

- (void)applyToView:(shared_ptr<mlcore:(id)a4 :LibraryView>)a3 withContext:
{
  var0 = a3.var0;
  v6 = a3.var1;
  v7 = *(var0 + 1);
  v14 = *var0;
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13.receiver = self;
  v13.super_class = MPModelAlbumKind;
  [(MPModelKind *)&v13 applyToView:&v14 withContext:v6];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v8 = [(MPModelAlbumKind *)self songKind];
  v9 = v8;
  v10 = *(var0 + 1);
  v11 = *var0;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v8 applyToView:&v11 withContext:v6];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

@end