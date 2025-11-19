@interface MPModelTVSeasonKind
+ (id)identityKind;
+ (id)kindWithEpisodeKind:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MPModelTVSeasonKind)initWithCoder:(id)a3;
- (id)humanDescription;
- (id)msv_initWithJSONValue:(id)a3;
- (id)msv_jsonValue;
- (unint64_t)hash;
- (void)applyToView:(shared_ptr<mlcore:(id)a4 :LibraryView>)a3 withContext:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPModelTVSeasonKind

- (id)humanDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(MPModelTVEpisodeKind *)self->_episodeKind humanDescription];
  v4 = [v2 stringWithFormat:@"seasons with %@", v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPModelTVSeasonKind;
  v4 = a3;
  [(MPModelKind *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_episodeKind forKey:{@"episodeKind", v5.receiver, v5.super_class}];
}

- (MPModelTVSeasonKind)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"episodeKind"];

  if (v5)
  {
    v6 = [MPModelTVSeasonKind kindWithEpisodeKind:v5];
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
  v8.super_class = MPModelTVSeasonKind;
  v3 = [(MPModelKind *)&v8 msv_jsonValue];
  v4 = [v3 mutableCopy];

  v5 = [(MPModelTVEpisodeKind *)self->_episodeKind msv_jsonValue];
  [v4 setObject:v5 forKeyedSubscript:@"episodeKind"];

  v6 = [v4 copy];

  return v6;
}

- (id)msv_initWithJSONValue:(id)a3
{
  v3 = a3;
  v4 = [MPModelTVEpisodeKind alloc];
  v5 = [v3 objectForKeyedSubscript:@"episodeKind"];

  v6 = [(MPModelTVEpisodeKind *)v4 msv_initWithJSONValue:v5];

  v7 = [objc_opt_class() kindWithEpisodeKind:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MPModelTVSeasonKind;
  if ([(MPModelKind *)&v7 isEqual:v4])
  {
    v5 = [(MPModelTVEpisodeKind *)self->_episodeKind isEqual:v4[2]];
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
  v5.super_class = MPModelTVSeasonKind;
  v3 = [(MPModelKind *)&v5 hash];
  return [(MPModelTVEpisodeKind *)self->_episodeKind hash]^ v3;
}

+ (id)kindWithEpisodeKind:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TVSeason:e%p", v4];
  v6 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__MPModelTVSeasonKind_kindWithEpisodeKind___block_invoke;
  v10[3] = &unk_1E767A238;
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

- (void)applyToView:(shared_ptr<mlcore:(id)a4 :LibraryView>)a3 withContext:
{
  var0 = a3.var0;
  v6 = a3.var1;
  v7 = [(MPModelTVSeasonKind *)self episodeKind];
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