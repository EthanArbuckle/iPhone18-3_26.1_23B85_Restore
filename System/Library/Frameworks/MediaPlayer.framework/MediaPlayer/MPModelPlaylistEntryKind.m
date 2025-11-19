@interface MPModelPlaylistEntryKind
+ (MPModelPlaylistEntryKind)kindWithKinds:(id)a3;
+ (id)identityKind;
- (BOOL)isEqual:(id)a3;
- (MPModelPlaylistEntryKind)initWithCoder:(id)a3;
- (id)humanDescription;
- (id)msv_initWithJSONValue:(id)a3;
- (id)msv_jsonValue;
- (unint64_t)hash;
- (void)applyToView:(shared_ptr<mlcore:(id)a4 :LibraryView>)a3 withContext:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPModelPlaylistEntryKind

- (id)humanDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NSArray *)self->_kinds valueForKeyPath:@"humanDescription"];
  v4 = [v3 componentsJoinedByString:@" or "];
  v5 = [v2 stringWithFormat:@"playlist entries of (%@)", v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPModelPlaylistEntryKind;
  v4 = a3;
  [(MPModelKind *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_kinds forKey:{@"kinds", v5.receiver, v5.super_class}];
}

- (MPModelPlaylistEntryKind)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"kinds"];

  if (v8)
  {
    v9 = [MPModelPlaylistEntryKind kindWithKinds:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)msv_jsonValue
{
  v8.receiver = self;
  v8.super_class = MPModelPlaylistEntryKind;
  v3 = [(MPModelKind *)&v8 msv_jsonValue];
  v4 = [v3 mutableCopy];

  v5 = [(NSArray *)self->_kinds msv_jsonValue];
  [v4 setObject:v5 forKeyedSubscript:@"kinds"];

  v6 = [v4 copy];

  return v6;
}

- (id)msv_initWithJSONValue:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"kinds"];
  v4 = [v3 msv_map:&__block_literal_global_25];

  v5 = [objc_opt_class() kindWithKinds:v4];

  return v5;
}

id __50__MPModelPlaylistEntryKind_msv_initWithJSONValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MPModelKind alloc];
  v4 = [(MPModelKind *)v3 msv_initWithJSONValue:v2];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MPModelPlaylistEntryKind;
  if ([(MPModelKind *)&v7 isEqual:v4])
  {
    v5 = [(NSArray *)self->_kinds isEqual:v4[2]];
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
  v5.super_class = MPModelPlaylistEntryKind;
  v3 = [(MPModelKind *)&v5 hash];
  return [(NSArray *)self->_kinds hash]^ v3;
}

+ (MPModelPlaylistEntryKind)kindWithKinds:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AD60] stringWithString:@"PlaylistEntry:k"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v4 sortedArrayUsingComparator:&__block_literal_global_23397];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 appendFormat:@"%p", *(*(&v17 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v11 = objc_opt_class();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__MPModelPlaylistEntryKind_kindWithKinds___block_invoke_2;
  v15[3] = &unk_1E767A098;
  v16 = v4;
  v12 = v4;
  v13 = [a1 kindWithModelClass:v11 cacheKey:v5 block:v15];

  return v13;
}

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

- (void)applyToView:(shared_ptr<mlcore:(id)a4 :LibraryView>)a3 withContext:
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3.var1;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  memset(v25, 0, sizeof(v25));
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [(MPModelPlaylistEntryKind *)self kinds];
  isKindOfClass = [v6 countByEnumeratingWithState:&v21 objects:v28 count:16];
  v8 = isKindOfClass;
  if (isKindOfClass)
  {
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = mlcore::PlaylistItemPropertyItemPersistentID(isKindOfClass);
        if (v11)
        {
          [v11 predicateWithBaseProperty:v12];
        }

        else
        {
          v18 = 0;
          v19 = 0;
        }

        std::vector<std::shared_ptr<mlcore::Predicate>>::push_back[abi:ne200100](&v14, &v18);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (v11)
        {
          [v11 predicateWithBaseProperty:0];
        }

        else
        {
          v18 = 0;
          v19 = 0;
        }

        std::vector<std::shared_ptr<mlcore::Predicate>>::push_back[abi:ne200100](v25, &v18);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v13 = v11;
          [v13 options];
        }

        ++v10;
      }

      while (v8 != v10);
      isKindOfClass = [v6 countByEnumeratingWithState:&v21 objects:v28 count:16];
      v8 = isKindOfClass;
    }

    while (isKindOfClass);
  }

  memset(v17, 0, sizeof(v17));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v17, v14, v15, (v15 - v14) >> 4);
  mlcore::CreateOrPredicate();
  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate> const*,std::shared_ptr<mlcore::Predicate> const*>(&v18, &v26, &v27, 1uLL);
}

@end