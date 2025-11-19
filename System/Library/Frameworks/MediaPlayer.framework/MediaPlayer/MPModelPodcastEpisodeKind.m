@interface MPModelPodcastEpisodeKind
+ (MPModelPodcastEpisodeKind)kindWithVariants:(unint64_t)a3 options:(unint64_t)a4;
+ (id)identityKind;
- (BOOL)isEqual:(id)a3;
- (MPModelPodcastEpisodeKind)initWithCoder:(id)a3;
- (id)humanDescription;
- (id)msv_initWithJSONValue:(id)a3;
- (id)msv_jsonValue;
- (shared_ptr<mlcore::Predicate>)predicateWithBaseProperty:(void *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPModelPodcastEpisodeKind

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPModelPodcastEpisodeKind;
  v4 = a3;
  [(MPModelKind *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_variants forKey:{@"variants", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_options forKey:@"options"];
}

- (MPModelPodcastEpisodeKind)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"variants"];
  v6 = [v4 decodeIntegerForKey:@"options"];

  v7 = [MPModelPodcastEpisodeKind kindWithVariants:v5 options:v6];

  return v7;
}

- (id)msv_jsonValue
{
  v9.receiver = self;
  v9.super_class = MPModelPodcastEpisodeKind;
  v3 = [(MPModelKind *)&v9 msv_jsonValue];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_variants];
  [v4 setObject:v5 forKeyedSubscript:@"variants"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_options];
  [v4 setObject:v6 forKeyedSubscript:@"options"];

  v7 = [v4 copy];

  return v7;
}

- (id)msv_initWithJSONValue:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"variants"];
  v5 = [v4 integerValue];

  v6 = [v3 objectForKeyedSubscript:@"options"];

  v7 = [v6 integerValue];
  v8 = objc_opt_class();

  return [v8 kindWithVariants:v5 options:v7];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MPModelPodcastEpisodeKind;
  v5 = [(MPModelKind *)&v7 isEqual:v4]&& self->_variants == v4[2] && self->_options == v4[3];

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = MPModelPodcastEpisodeKind;
  return self->_variants ^ [(MPModelKind *)&v3 hash]^ self->_options;
}

- (id)humanDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"podcasts"];
  v4 = v3;
  variants = self->_variants;
  if (variants)
  {
    [v3 insertString:@"audio " atIndex:0];
    if ((self->_variants & 2) == 0)
    {
      goto LABEL_7;
    }

    [v4 insertString:@" or " atIndex:0];
    goto LABEL_6;
  }

  if ((variants & 2) != 0)
  {
LABEL_6:
    [v4 insertString:@"video " atIndex:0];
  }

LABEL_7:
  if (self->_options)
  {
    [v4 insertString:@"unplayed " atIndex:0];
  }

  return v4;
}

+ (MPModelPodcastEpisodeKind)kindWithVariants:(unint64_t)a3 options:(unint64_t)a4
{
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PodcastEpisode:v%lu:o%lu", a3, a4];
  v8 = objc_opt_class();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__MPModelPodcastEpisodeKind_kindWithVariants_options___block_invoke;
  v11[3] = &__block_descriptor_48_e35_v16__0__MPModelPodcastEpisodeKind_8l;
  v11[4] = a3;
  v11[5] = a4;
  v9 = [a1 kindWithModelClass:v8 cacheKey:v7 block:v11];

  return v9;
}

uint64_t __54__MPModelPodcastEpisodeKind_kindWithVariants_options___block_invoke(uint64_t result, uint64_t a2)
{
  *(a2 + 16) = *(result + 32);
  *(a2 + 24) = *(result + 40);
  return result;
}

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

- (shared_ptr<mlcore::Predicate>)predicateWithBaseProperty:(void *)a3
{
  memset(v8, 0, 24);
  if (([(MPModelPodcastEpisodeKind *)self variants:0]& 1) != 0)
  {
    LODWORD(v7) = 4;
    std::vector<int>::push_back[abi:ne200100](v8, &v7);
  }

  v5 = [(MPModelPodcastEpisodeKind *)self variants];
  if ((v5 & 2) != 0)
  {
    LODWORD(v7) = 256;
    std::vector<int>::push_back[abi:ne200100](v8, &v7);
  }

  Property = mlcore::ItemPropertyMediaType(v5);
  if (a3)
  {
    Property = MPMediaLibraryGetProperty(a3, Property);
  }

  v8[4] = Property;
  std::allocate_shared[abi:ne200100]<mlcore::InPredicate<int>,std::allocator<mlcore::InPredicate<int>>,mlcore::ModelProperty<int> *&,std::vector<int> const&,0>();
}

@end