@interface MPModelPlaylistAuthorKind
+ (id)kindWithVariants:(unint64_t)a3;
- (id)humanDescription;
- (shared_ptr<mlcore::Predicate>)predicateWithBaseProperty:(void *)a3;
@end

@implementation MPModelPlaylistAuthorKind

- (id)humanDescription
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v4 = v3;
  variants = self->_variants;
  if (variants)
  {
    [v3 addObject:@"host"];
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

  [v4 addObject:@"collaborator"];
  if ((self->_variants & 4) != 0)
  {
LABEL_4:
    [v4 addObject:@"pending-collaborator"];
  }

LABEL_5:
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v4 msv_compactDescription];
  v8 = [v6 stringWithFormat:@"playlist author: variants:[%@]", v7];

  return v8;
}

+ (id)kindWithVariants:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PlaylistAuthor:v%lu", a3];
  v6 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__MPModelPlaylistAuthorKind_kindWithVariants___block_invoke;
  v9[3] = &__block_descriptor_40_e35_v16__0__MPModelPlaylistAuthorKind_8l;
  v9[4] = a3;
  v7 = [a1 kindWithModelClass:v6 cacheKey:v5 block:v9];

  return v7;
}

- (shared_ptr<mlcore::Predicate>)predicateWithBaseProperty:(void *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = 0;
  v9 = 0;
  Property = mlcore::PlaylistAuthorPropertyRole(self);
  if (a3)
  {
    Property = MPMediaLibraryGetProperty(a3, Property);
  }

  v6 = 1;
  *&v5 = Property;
  v10 = 0;
  LODWORD(v11) = 1;
  std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<int>,std::allocator<mlcore::ComparisonPredicate<int>>,mlcore::ModelProperty<int> *&,mlcore::ComparisonOperator &,int const&,mlcore::ComparisonOptions &,0>();
}

@end