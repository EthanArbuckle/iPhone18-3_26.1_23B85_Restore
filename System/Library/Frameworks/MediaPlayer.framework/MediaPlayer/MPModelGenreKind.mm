@interface MPModelGenreKind
+ (id)identityKind;
+ (id)kindWithAlbumKind:(id)kind;
- (BOOL)isEqual:(id)equal;
- (MPModelGenreKind)initWithCoder:(id)coder;
- (id)humanDescription;
- (shared_ptr<mlcore::Predicate>)representedSearchScopePredicate;
- (unint64_t)hash;
- (void)applyToView:(shared_ptr<mlcore:(id)view :LibraryView>)a3 withContext:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPModelGenreKind

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPModelGenreKind;
  coderCopy = coder;
  [(MPModelKind *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_albumKind forKey:{@"albumKind", v5.receiver, v5.super_class}];
}

- (MPModelGenreKind)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"albumKind"];

  if (v5)
  {
    v6 = [MPModelGenreKind kindWithAlbumKind:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = MPModelGenreKind;
  if ([(MPModelKind *)&v7 isEqual:equalCopy])
  {
    v5 = [(MPModelAlbumKind *)self->_albumKind isEqual:equalCopy[2]];
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
  v5.super_class = MPModelGenreKind;
  v3 = [(MPModelKind *)&v5 hash];
  return [(MPModelAlbumKind *)self->_albumKind hash]^ v3;
}

- (id)humanDescription
{
  v2 = MEMORY[0x1E696AEC0];
  humanDescription = [(MPModelAlbumKind *)self->_albumKind humanDescription];
  v4 = [v2 stringWithFormat:@"genres with %@", humanDescription];

  return v4;
}

+ (id)kindWithAlbumKind:(id)kind
{
  kindCopy = kind;
  kindCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Genre:a%p", kindCopy];
  v6 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__MPModelGenreKind_kindWithAlbumKind___block_invoke;
  v10[3] = &unk_1E7679F80;
  v11 = kindCopy;
  v7 = kindCopy;
  v8 = [self kindWithModelClass:v6 cacheKey:kindCopy block:v10];

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
  albumKind = [(MPModelGenreKind *)self albumKind];
  songKind = [albumKind songKind];
  v5 = songKind;
  if (songKind)
  {
    [songKind predicateWithBaseProperty:0];
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

- (void)applyToView:(shared_ptr<mlcore:(id)view :LibraryView>)a3 withContext:
{
  var0 = a3.var0;
  v6 = a3.var1;
  albumKind = [(MPModelGenreKind *)self albumKind];
  v8 = albumKind;
  v9 = *(var0 + 1);
  v10 = *var0;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [albumKind applyToView:&v10 withContext:v6];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

@end