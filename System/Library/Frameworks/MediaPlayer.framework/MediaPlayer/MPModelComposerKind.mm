@interface MPModelComposerKind
+ (id)identityKind;
+ (id)kindWithAlbumKind:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MPModelComposerKind)initWithCoder:(id)a3;
- (id)humanDescription;
- (shared_ptr<mlcore::Predicate>)representedSearchScopePredicate;
- (unint64_t)hash;
- (void)applyToView:(shared_ptr<mlcore:(id)a4 :LibraryView>)a3 withContext:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPModelComposerKind

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPModelComposerKind;
  v4 = a3;
  [(MPModelKind *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_albumKind forKey:{@"albumKind", v5.receiver, v5.super_class}];
}

- (MPModelComposerKind)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"albumKind"];

  if (v5)
  {
    v6 = [MPModelComposerKind kindWithAlbumKind:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MPModelComposerKind;
  if ([(MPModelKind *)&v7 isEqual:v4])
  {
    v5 = [(MPModelAlbumKind *)self->_albumKind isEqual:v4[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = MPModelComposerKind;
  v3 = [(MPModelKind *)&v5 hash];
  return [(MPModelAlbumKind *)self->_albumKind hash]^ v3;
}

- (id)humanDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(MPModelAlbumKind *)self->_albumKind humanDescription];
  v4 = [v2 stringWithFormat:@"composers with %@", v3];

  return v4;
}

+ (id)kindWithAlbumKind:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Composer:a%p", v4];
  v6 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__MPModelComposerKind_kindWithAlbumKind___block_invoke;
  v10[3] = &unk_1E7679F30;
  v11 = v4;
  v7 = v4;
  v8 = [a1 kindWithModelClass:v6 cacheKey:v5 block:v10];

  return v8;
}

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

- (shared_ptr<mlcore::Predicate>)representedSearchScopePredicate
{
  v3 = v2;
  v8 = [(MPModelComposerKind *)self albumKind];
  v4 = [v8 songKind];
  v5 = v4;
  if (v4)
  {
    [v4 predicateWithBaseProperty:0];
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
  }

  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (void)applyToView:(shared_ptr<mlcore:(id)a4 :LibraryView>)a3 withContext:
{
  var0 = a3.var0;
  v6 = a3.var1;
  v7 = [(MPModelComposerKind *)self albumKind];
  v8 = v7;
  v9 = *(var0 + 1);
  v10 = *var0;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v7 applyToView:&v10 withContext:v6];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

@end