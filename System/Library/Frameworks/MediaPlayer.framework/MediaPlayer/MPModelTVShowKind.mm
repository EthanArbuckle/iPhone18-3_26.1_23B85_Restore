@interface MPModelTVShowKind
+ (id)identityKind;
+ (id)kindWithSeasonKind:(id)kind;
- (BOOL)isEqual:(id)equal;
- (MPModelTVShowKind)initWithCoder:(id)coder;
- (id)humanDescription;
- (id)msv_initWithJSONValue:(id)value;
- (id)msv_jsonValue;
- (shared_ptr<mlcore::Predicate>)representedSearchScopePredicate;
- (unint64_t)hash;
- (void)applyToView:(shared_ptr<mlcore:(id)view :LibraryView>)a3 withContext:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPModelTVShowKind

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPModelTVShowKind;
  coderCopy = coder;
  [(MPModelKind *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_seasonKind forKey:{@"seasonKind", v5.receiver, v5.super_class}];
}

- (MPModelTVShowKind)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seasonKind"];

  if (v5)
  {
    v6 = [MPModelTVShowKind kindWithSeasonKind:v5];
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
  v8.super_class = MPModelTVShowKind;
  msv_jsonValue = [(MPModelKind *)&v8 msv_jsonValue];
  v4 = [msv_jsonValue mutableCopy];

  msv_jsonValue2 = [(MPModelTVSeasonKind *)self->_seasonKind msv_jsonValue];
  [v4 setObject:msv_jsonValue2 forKeyedSubscript:@"seasonKind"];

  v6 = [v4 copy];

  return v6;
}

- (id)msv_initWithJSONValue:(id)value
{
  valueCopy = value;
  v4 = [MPModelTVSeasonKind alloc];
  v5 = [valueCopy objectForKeyedSubscript:@"seasonKind"];

  v6 = [(MPModelTVSeasonKind *)v4 msv_initWithJSONValue:v5];

  v7 = [objc_opt_class() kindWithSeasonKind:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = MPModelTVShowKind;
  if ([(MPModelKind *)&v7 isEqual:equalCopy])
  {
    v5 = [(MPModelTVSeasonKind *)self->_seasonKind isEqual:equalCopy[2]];
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
  v5.super_class = MPModelTVShowKind;
  v3 = [(MPModelKind *)&v5 hash];
  return [(MPModelTVSeasonKind *)self->_seasonKind hash]^ v3;
}

- (id)humanDescription
{
  v2 = MEMORY[0x1E696AEC0];
  humanDescription = [(MPModelTVSeasonKind *)self->_seasonKind humanDescription];
  v4 = [v2 stringWithFormat:@"shows with %@", humanDescription];

  return v4;
}

+ (id)kindWithSeasonKind:(id)kind
{
  kindCopy = kind;
  kindCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"TVShow:s%p", kindCopy];
  v6 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__MPModelTVShowKind_kindWithSeasonKind___block_invoke;
  v10[3] = &unk_1E767A260;
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
  seasonKind = [(MPModelTVShowKind *)self seasonKind];
  episodeKind = [seasonKind episodeKind];
  v5 = episodeKind;
  if (episodeKind)
  {
    [episodeKind predicateWithBaseProperty:0];
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
  seasonKind = [(MPModelTVShowKind *)self seasonKind];
  v8 = seasonKind;
  v9 = *(var0 + 1);
  v10 = *var0;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [seasonKind applyToView:&v10 withContext:v6];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

@end