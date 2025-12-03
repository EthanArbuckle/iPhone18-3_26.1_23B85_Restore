@interface MPModelPodcastKind
+ (id)identityKind;
+ (id)kindWithEpisodeKind:(id)kind;
- (BOOL)isEqual:(id)equal;
- (MPModelPodcastKind)initWithCoder:(id)coder;
- (id)humanDescription;
- (id)msv_initWithJSONValue:(id)value;
- (id)msv_jsonValue;
- (unint64_t)hash;
- (void)applyToView:(shared_ptr<mlcore:(id)view :LibraryView>)a3 withContext:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPModelPodcastKind

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPModelPodcastKind;
  coderCopy = coder;
  [(MPModelKind *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_episodeKind forKey:{@"episodeKind", v5.receiver, v5.super_class}];
}

- (MPModelPodcastKind)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"episodeKind"];

  if (v5)
  {
    v6 = [MPModelPodcastKind kindWithEpisodeKind:v5];
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
  v8.super_class = MPModelPodcastKind;
  msv_jsonValue = [(MPModelKind *)&v8 msv_jsonValue];
  v4 = [msv_jsonValue mutableCopy];

  msv_jsonValue2 = [(MPModelPodcastEpisodeKind *)self->_episodeKind msv_jsonValue];
  [v4 setObject:msv_jsonValue2 forKeyedSubscript:@"podcastEpisodeKind"];

  v6 = [v4 copy];

  return v6;
}

- (id)msv_initWithJSONValue:(id)value
{
  valueCopy = value;
  v4 = [MPModelPodcastEpisodeKind alloc];
  v5 = [valueCopy objectForKeyedSubscript:@"podcastEpisodeKind"];

  v6 = [(MPModelPodcastEpisodeKind *)v4 msv_initWithJSONValue:v5];

  v7 = [objc_opt_class() kindWithEpisodeKind:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = MPModelPodcastKind;
  if ([(MPModelKind *)&v7 isEqual:equalCopy])
  {
    v5 = [(MPModelPodcastEpisodeKind *)self->_episodeKind isEqual:equalCopy[2]];
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
  v5.super_class = MPModelPodcastKind;
  v3 = [(MPModelKind *)&v5 hash];
  return [(MPModelPodcastEpisodeKind *)self->_episodeKind hash]^ v3;
}

- (id)humanDescription
{
  v2 = MEMORY[0x1E696AEC0];
  humanDescription = [(MPModelPodcastEpisodeKind *)self->_episodeKind humanDescription];
  v4 = [v2 stringWithFormat:@"podcasts containing %@", humanDescription];

  return v4;
}

+ (id)kindWithEpisodeKind:(id)kind
{
  kindCopy = kind;
  kindCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Podcast:e%p", kindCopy];
  v6 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__MPModelPodcastKind_kindWithEpisodeKind___block_invoke;
  v10[3] = &unk_1E767A170;
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

- (void)applyToView:(shared_ptr<mlcore:(id)view :LibraryView>)a3 withContext:
{
  var0 = a3.var0;
  v6 = a3.var1;
  episodeKind = [(MPModelPodcastKind *)self episodeKind];
  v8 = episodeKind;
  v9 = *(var0 + 1);
  v10 = *var0;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [episodeKind applyToView:&v10 withContext:v6];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

@end