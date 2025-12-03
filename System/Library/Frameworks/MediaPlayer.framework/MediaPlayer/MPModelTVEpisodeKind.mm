@interface MPModelTVEpisodeKind
+ (id)identityKind;
+ (id)kindWithVariants:(unint64_t)variants options:(unint64_t)options;
- (BOOL)isEqual:(id)equal;
- (MPModelTVEpisodeKind)initWithCoder:(id)coder;
- (id)humanDescription;
- (id)msv_initWithJSONValue:(id)value;
- (id)msv_jsonValue;
- (shared_ptr<mlcore::Predicate>)predicateWithBaseProperty:(void *)property;
- (shared_ptr<mlcore::Predicate>)representedSearchScopePredicate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPModelTVEpisodeKind

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

- (id)humanDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v5 = v4;
  variants = self->_variants;
  if (variants)
  {
    [v4 addObject:@"episodes"];
    variants = self->_variants;
  }

  if ((variants & 2) != 0)
  {
    [v5 addObject:@"Apple Music episodes"];
  }

  v7 = [v5 componentsJoinedByString:@" or "];
  [string appendString:v7];

  if (self->_options)
  {
    [string insertString:@"shuffleable " atIndex:0];
  }

  return string;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPModelTVEpisodeKind;
  coderCopy = coder;
  [(MPModelKind *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_variants forKey:{@"variants", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_options forKey:@"options"];
}

- (MPModelTVEpisodeKind)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"variants"];
  v6 = [coderCopy decodeIntegerForKey:@"options"];

  v7 = [MPModelTVEpisodeKind kindWithVariants:v5 options:v6];

  return v7;
}

- (id)msv_jsonValue
{
  v9.receiver = self;
  v9.super_class = MPModelTVEpisodeKind;
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
  v7.super_class = MPModelTVEpisodeKind;
  v5 = [(MPModelKind *)&v7 isEqual:equalCopy]&& self->_variants == equalCopy[2] && self->_options == equalCopy[3];

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = MPModelTVEpisodeKind;
  return self->_variants ^ [(MPModelKind *)&v3 hash]^ self->_options;
}

+ (id)kindWithVariants:(unint64_t)variants options:(unint64_t)options
{
  options = [MEMORY[0x1E696AEC0] stringWithFormat:@"TVEpisode:v%lu:o%lu", variants, options];
  v8 = objc_opt_class();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__MPModelTVEpisodeKind_kindWithVariants_options___block_invoke;
  v11[3] = &__block_descriptor_48_e30_v16__0__MPModelTVEpisodeKind_8l;
  v11[4] = variants;
  v11[5] = options;
  v9 = [self kindWithModelClass:v8 cacheKey:options block:v11];

  return v9;
}

uint64_t __49__MPModelTVEpisodeKind_kindWithVariants_options___block_invoke(uint64_t result, uint64_t a2)
{
  *(a2 + 16) = *(result + 32);
  *(a2 + 24) = *(result + 40);
  return result;
}

- (shared_ptr<mlcore::Predicate>)predicateWithBaseProperty:(void *)property
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  v4 = [(MPModelTVEpisodeKind *)self variants:0];
  if (v4)
  {
    LODWORD(v8) = 512;
    std::vector<int>::push_back[abi:ne200100](v7, &v8);
  }

  Property = mlcore::ItemPropertyMediaType(v4);
  if (property)
  {
    Property = MPMediaLibraryGetProperty(property, Property);
  }

  *&v6 = Property;
  std::allocate_shared[abi:ne200100]<mlcore::InPredicate<int>,std::allocator<mlcore::InPredicate<int>>,mlcore::ModelProperty<int> *&,std::vector<int> const&,0>();
}

- (shared_ptr<mlcore::Predicate>)representedSearchScopePredicate
{
  v2 = [(MPModelTVEpisodeKind *)self predicateWithBaseProperty:0];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end