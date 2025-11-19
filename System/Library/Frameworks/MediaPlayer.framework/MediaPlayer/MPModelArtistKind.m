@interface MPModelArtistKind
+ (id)identityKind;
+ (id)kindWithAlbumKind:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MPModelArtistKind)initWithCoder:(id)a3;
- (id)humanDescription;
- (id)msv_initWithJSONValue:(id)a3;
- (id)msv_jsonValue;
- (shared_ptr<mlcore::Predicate>)representedSearchScopePredicate;
- (unint64_t)hash;
- (void)applyToView:(shared_ptr<mlcore:(id)a4 :LibraryView>)a3 withContext:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPModelArtistKind

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPModelArtistKind;
  v4 = a3;
  [(MPModelKind *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_albumKind forKey:{@"albumKind", v5.receiver, v5.super_class}];
}

- (MPModelArtistKind)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"albumKind"];

  if (v5)
  {
    v6 = [MPModelArtistKind kindWithAlbumKind:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)msv_jsonValue
{
  v8.receiver = self;
  v8.super_class = MPModelArtistKind;
  v3 = [(MPModelKind *)&v8 msv_jsonValue];
  v4 = [v3 mutableCopy];

  v5 = [(MPModelAlbumKind *)self->_albumKind msv_jsonValue];
  [v4 setObject:v5 forKeyedSubscript:@"albumKind"];

  v6 = [v4 copy];

  return v6;
}

- (id)msv_initWithJSONValue:(id)a3
{
  v3 = a3;
  v4 = [MPModelAlbumKind alloc];
  v5 = [v3 objectForKeyedSubscript:@"albumKind"];

  v6 = [(MPModelAlbumKind *)v4 msv_initWithJSONValue:v5];

  v7 = [objc_opt_class() kindWithAlbumKind:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MPModelArtistKind;
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
  v5.super_class = MPModelArtistKind;
  v3 = [(MPModelKind *)&v5 hash];
  return [(MPModelAlbumKind *)self->_albumKind hash]^ v3;
}

- (id)humanDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(MPModelAlbumKind *)self->_albumKind humanDescription];
  v4 = [v2 stringWithFormat:@"artists with %@", v3];

  return v4;
}

+ (id)kindWithAlbumKind:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Artist:a%p", v4];
  v6 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__MPModelArtistKind_kindWithAlbumKind___block_invoke;
  v10[3] = &unk_1E7679F08;
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
  v2 = [(MPModelArtistKind *)self albumKind];
  v3 = [v2 songKind];
  v4 = v3;
  if (v3)
  {
    [v3 predicateWithBaseProperty:0];
  }

  v6 = mlcore::ArtistPropertyPersistentID(v5);
  mlcore::ItemPropertyAlbumArtistPersistentID(v6);
  operator new();
}

- (void)applyToView:(shared_ptr<mlcore:(id)a4 :LibraryView>)a3 withContext:
{
  var0 = a3.var0;
  v6 = a3.var1;
  v7 = [(MPModelArtistKind *)self albumKind];
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