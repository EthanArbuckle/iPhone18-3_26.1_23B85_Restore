@interface MPModelPlaylistKind
+ (id)identityKind;
+ (id)kindWithVariants:(unint64_t)a3 playlistEntryKind:(id)a4 options:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (MPModelPlaylistKind)initWithCoder:(id)a3;
- (id)humanDescription;
- (shared_ptr<mlcore::Predicate>)predicateWithBaseProperty:(void *)a3;
- (shared_ptr<mlcore::Predicate>)representedSearchScopePredicate;
- (unint64_t)hash;
- (void)applyToView:(shared_ptr<mlcore:(id)a4 :LibraryView>)a3 withContext:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPModelPlaylistKind

- (id)humanDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"playlist"];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:7];
  v5 = v4;
  variants = self->_variants;
  if ((variants & 2) != 0)
  {
    [v4 addObject:@"smart"];
    variants = self->_variants;
    if ((variants & 4) == 0)
    {
LABEL_3:
      if ((variants & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((variants & 4) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"genius"];
  variants = self->_variants;
  if ((variants & 0x10) == 0)
  {
LABEL_4:
    if ((variants & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v5 addObject:@"subscribed"];
  variants = self->_variants;
  if ((variants & 0x20) == 0)
  {
LABEL_5:
    if ((variants & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v5 addObject:@"administered"];
  variants = self->_variants;
  if ((variants & 0x40) == 0)
  {
LABEL_6:
    if ((variants & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_29:
  [v5 addObject:@"personal mix"];
  if ((self->_variants & 0x80) != 0)
  {
LABEL_7:
    [v5 addObject:@"favorite songs"];
  }

LABEL_8:
  if ([v5 count])
  {
    [v3 appendString:@"s"];
    [v3 insertString:@" " atIndex:0];
    v7 = [v5 componentsJoinedByString:@" or "];
    [v3 insertString:v7 atIndex:0];
  }

  v8 = self->_variants;
  if ((v8 & 8) != 0)
  {
    if ([v5 count])
    {
      [v3 appendString:@" or"];
    }

    [v3 appendString:@" folders"];
  }

  options = self->_options;
  if (options)
  {
    [v3 insertString:@"previously played " atIndex:0];
    options = self->_options;
    if ((options & 2) == 0)
    {
LABEL_16:
      if ((options & 4) == 0)
      {
        goto LABEL_17;
      }

LABEL_33:
      [v3 insertString:@"non-empty " atIndex:0];
      if ((self->_options & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((options & 2) == 0)
  {
    goto LABEL_16;
  }

  [v3 insertString:@"mutable " atIndex:0];
  options = self->_options;
  if ((options & 4) != 0)
  {
    goto LABEL_33;
  }

LABEL_17:
  if ((options & 8) != 0)
  {
LABEL_18:
    [v3 insertString:@"recursive " atIndex:0];
  }

LABEL_19:
  v10 = [v5 count];
  if ((v8 & 8) == 0 || v10)
  {
    [v3 appendString:@" containing "];
    v11 = [(MPModelPlaylistEntryKind *)self->_playlistEntryKind humanDescription];
    [v3 appendString:v11];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPModelPlaylistKind;
  v4 = a3;
  [(MPModelKind *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_variants forKey:{@"variants", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_playlistEntryKind forKey:@"playlistEntryKind"];
  [v4 encodeInteger:self->_options forKey:@"options"];
}

- (MPModelPlaylistKind)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"variants"];
  v6 = [v4 decodeIntegerForKey:@"options"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playlistEntryKind"];

  if (v7)
  {
    v8 = [MPModelPlaylistKind kindWithVariants:v5 playlistEntryKind:v7 options:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MPModelPlaylistKind;
  if ([(MPModelKind *)&v8 isEqual:v4])
  {
    v5 = v4;
    v6 = self->_variants == v5[2] && [(MPModelPlaylistEntryKind *)self->_playlistEntryKind isEqual:v5[3]]&& self->_options == v5[4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = MPModelPlaylistKind;
  v3 = self->_variants ^ [(MPModelKind *)&v5 hash]^ self->_options;
  return v3 ^ [(MPModelPlaylistEntryKind *)self->_playlistEntryKind hash];
}

+ (id)kindWithVariants:(unint64_t)a3 playlistEntryKind:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Playlist:v%lu:o%lu:pe%p", a3, a5, v8];
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__MPModelPlaylistKind_kindWithVariants_playlistEntryKind_options___block_invoke;
  v14[3] = &unk_1E767A050;
  v15 = v8;
  v16 = a3;
  v17 = a5;
  v11 = v8;
  v12 = [a1 kindWithModelClass:v10 cacheKey:v9 block:v14];

  return v12;
}

void __66__MPModelPlaylistKind_kindWithVariants_playlistEntryKind_options___block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = *(a1 + 40);
  objc_storeStrong((a2 + 24), *(a1 + 32));
  v4 = a2;
  v4[4] = *(a1 + 48);
}

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

- (shared_ptr<mlcore::Predicate>)predicateWithBaseProperty:(void *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = [(MPModelPlaylistKind *)self variants];
  if ((v5 & 0x82) == 2)
  {
    v6 = MEMORY[0x1E69B13D8];
    v11 = @"playlistKind";
    v7 = [(MPModelKind *)self description];
    v12 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v6 snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"MPModelLibraryRequestWithSmartPlaylistAndNoFavoriteSongs" context:@"-[MPModelLibraryRequest] Requesting playlist from an MPModelLibraryRequest with smart playlists but not the favorite songs playlist" triggerThresholdValues:0 events:v9 completion:0];
  }

  IsSmart = mlcore::PlaylistPropertyIsSmart(v5);
  if (a3)
  {
    MPMediaLibraryGetProperty(a3, IsSmart);
  }

  std::allocate_shared[abi:ne200100]<mlcore::UnaryPredicate<int>,std::allocator<mlcore::UnaryPredicate<int>>,mlcore::ModelProperty<int> *&,mlcore::UnaryOperator,0>();
}

- (shared_ptr<mlcore::Predicate>)representedSearchScopePredicate
{
  v2 = [(MPModelPlaylistKind *)self predicateWithBaseProperty:0];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)applyToView:(shared_ptr<mlcore:(id)a4 :LibraryView>)a3 withContext:
{
  var0 = a3.var0;
  v6 = a3.var1;
  v7 = *(var0 + 1);
  v14 = *var0;
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13.receiver = self;
  v13.super_class = MPModelPlaylistKind;
  [(MPModelKind *)&v13 applyToView:&v14 withContext:v6];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (([(MPModelPlaylistKind *)self options]& 4) != 0)
  {
    mlcore::LibraryView::filters(*var0);
    mlcore::LibraryView::setFilters(*var0);
  }

  v8 = [(MPModelPlaylistKind *)self playlistEntryKind];
  v9 = v8;
  v10 = *(var0 + 1);
  v11 = *var0;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v8 applyToView:&v11 withContext:v6];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

@end