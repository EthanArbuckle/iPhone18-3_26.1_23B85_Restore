@interface MPModelRequest
+ (NSOperationQueue)preferredQueue;
+ (id)sharedNetworkQueue;
+ (id)sharedQueue;
- (Class)itemClass;
- (Class)sectionClass;
- (MPModelRequest)initWithCoder:(id)coder;
- (id)_kindForClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)performWithResponseHandler:(id)handler;
- (void)responseWithCompletion:(id)completion;
- (void)setItemClass:(Class)class;
- (void)setSectionClass:(Class)class;
@end

@implementation MPModelRequest

+ (NSOperationQueue)preferredQueue
{
  if ([self requiresNetwork])
  {
    [self sharedNetworkQueue];
  }

  else
  {
    [self sharedQueue];
  }
  v3 = ;

  return v3;
}

+ (id)sharedQueue
{
  if (sharedQueue_onceToken != -1)
  {
    dispatch_once(&sharedQueue_onceToken, &__block_literal_global_28002);
  }

  v3 = sharedQueue___sharedQueue;

  return v3;
}

uint64_t __29__MPModelRequest_sharedQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = sharedQueue___sharedQueue;
  sharedQueue___sharedQueue = v0;

  [sharedQueue___sharedQueue setMaxConcurrentOperationCount:4];
  [sharedQueue___sharedQueue setName:@"com.apple.MediaPlayer.MPModelRequest.sharedQueue"];
  v2 = sharedQueue___sharedQueue;

  return [v2 setQualityOfService:25];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  if (self->_label)
  {
    [v6 appendFormat:@" label=“%@“", self->_label];
  }

  humanDescription = [(MPModelKind *)self->_itemKind humanDescription];
  sectionKind = self->_sectionKind;
  if (sectionKind)
  {
    humanDescription2 = [(MPModelKind *)sectionKind humanDescription];
    if ([humanDescription length])
    {
      v10 = [humanDescription2 stringByReplacingOccurrencesOfString:humanDescription withString:@"itemKind"];

      humanDescription2 = v10;
    }

    [v6 appendFormat:@" sectionKind=“%@”", humanDescription2];
  }

  if (self->_itemKind)
  {
    [v6 appendFormat:@" itemKind=“%@”", humanDescription];
  }

  sectionSortDescriptors = self->_sectionSortDescriptors;
  if (sectionSortDescriptors)
  {
    msv_compactDescription = [(NSArray *)sectionSortDescriptors msv_compactDescription];
    [v6 appendFormat:@"; sectionSortDescriptors=[%@]", msv_compactDescription];
  }

  itemSortDescriptors = self->_itemSortDescriptors;
  if (itemSortDescriptors)
  {
    msv_compactDescription2 = [(NSArray *)itemSortDescriptors msv_compactDescription];
    [v6 appendFormat:@"; itemSortDescriptors=[%@]", msv_compactDescription2];
  }

  [v6 appendString:@">"];

  return v6;
}

- (id)_kindForClass:(Class)class
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (!class)
  {
    goto LABEL_10;
  }

  if (objc_opt_class() == class)
  {
    v6 = [MPModelSong kindWithVariants:3];
    v5 = [MPModelAlbum kindWithSongKind:v6];

    goto LABEL_17;
  }

  if (objc_opt_class() == class)
  {
    v7 = MPModelArtist;
LABEL_15:
    v8 = [MPModelSong kindWithVariants:3];
    v9 = [MPModelAlbum kindWithSongKind:v8];
    v5 = [(__objc2_class *)v7 kindWithAlbumKind:v9];

LABEL_16:
    goto LABEL_17;
  }

  if (objc_opt_class() == class)
  {
    v7 = MPModelComposer;
    goto LABEL_15;
  }

  if (objc_opt_class() == class)
  {
    v7 = MPModelGenre;
    goto LABEL_15;
  }

  if (objc_opt_class() == class)
  {
    v8 = [(MPModelRequest *)self _kindForClass:objc_opt_class()];
    v5 = [MPModelPlaylist kindWithVariants:223 playlistEntryKind:v8 options:0];
    goto LABEL_16;
  }

  if (objc_opt_class() == class)
  {
    v8 = [(MPModelRequest *)self _kindForClass:objc_opt_class()];
    v16[0] = v8;
    v11 = [MPModelTVEpisode kindWithVariants:3];
    v16[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v13 = [MPModelPlaylistEntry kindWithKinds:v12];
LABEL_24:
    v5 = v13;

    goto LABEL_16;
  }

  if (objc_opt_class() != class)
  {
    if (objc_opt_class() != class)
    {
LABEL_10:
      v5 = 0;
      goto LABEL_17;
    }

    v14[0] = @"MPModelRelationshipGenericAlbum";
    v8 = [(MPModelRequest *)self _kindForClass:objc_opt_class()];
    v14[1] = @"MPModelRelationshipGenericPlaylist";
    v15[0] = v8;
    v11 = [(MPModelRequest *)self _kindForClass:objc_opt_class()];
    v15[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v13 = [MPModelGenericObject kindWithRelationshipKinds:v12];
    goto LABEL_24;
  }

  v5 = [MPModelSong kindWithVariants:3];
LABEL_17:

  return v5;
}

- (void)setItemClass:(Class)class
{
  if (class)
  {
    v5 = [(MPModelRequest *)self _kindForClass:?];
    if (!v5)
    {
      v5 = [MPModelKind kindWithModelClass:class];
    }

    v6 = v5;
    [(MPModelRequest *)self setItemKind:v5];
  }

  else
  {

    [(MPModelRequest *)self setItemKind:?];
  }
}

- (Class)itemClass
{
  itemKind = [(MPModelRequest *)self itemKind];
  modelClass = [itemKind modelClass];

  return modelClass;
}

- (void)setSectionClass:(Class)class
{
  if (class)
  {
    v5 = [(MPModelRequest *)self _kindForClass:?];
    if (!v5)
    {
      v5 = [MPModelKind kindWithModelClass:class];
    }

    v6 = v5;
    [(MPModelRequest *)self setSectionKind:v5];
  }

  else
  {

    [(MPModelRequest *)self setSectionKind:?];
  }
}

- (Class)sectionClass
{
  sectionKind = [(MPModelRequest *)self sectionKind];
  modelClass = [sectionKind modelClass];

  return modelClass;
}

- (id)newOperationWithResponseHandler:(id)handler
{
  v5 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v5 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRequest.m" lineNumber:181 description:{@"Subclass %@ must implement -%@ defined in %@.", v9, v10, @"[MPModelRequest class]"}];
  }

  [MEMORY[0x1E696AAE0] blockOperationWithBlock:&__block_literal_global_84];
  return objc_claimAutoreleasedReturnValue();
}

- (void)responseWithCompletion:(id)completion
{
  completionCopy = completion;
  preferredQueue = [objc_opt_class() preferredQueue];
  v5 = [(MPModelRequest *)self newOperationWithResponseHandler:completionCopy];

  [preferredQueue addOperation:v5];
}

- (void)performWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  preferredQueue = [objc_opt_class() preferredQueue];
  v5 = [(MPModelRequest *)self newOperationWithResponseHandler:handlerCopy];

  [preferredQueue addOperation:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 8), self->_label);
    objc_storeStrong(v5 + 6, self->_itemProperties);
    objc_storeStrong(v5 + 3, self->_sectionProperties);
    objc_storeStrong(v5 + 5, self->_itemKind);
    objc_storeStrong(v5 + 2, self->_sectionKind);
    objc_storeStrong(v5 + 7, self->_itemSortDescriptors);
    objc_storeStrong(v5 + 4, self->_sectionSortDescriptors);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  label = self->_label;
  coderCopy = coder;
  [coderCopy encodeObject:label forKey:@"MPModelRequestLabel"];
  [coderCopy encodeObject:self->_sectionProperties forKey:@"MPModelRequestSectionProperties"];
  [coderCopy encodeObject:self->_itemProperties forKey:@"MPModelRequestItemProperties"];
  [coderCopy encodeObject:self->_itemKind forKey:@"itemKind"];
  [coderCopy encodeObject:self->_sectionKind forKey:@"sectionKind"];
  [coderCopy encodeObject:self->_sectionSortDescriptors forKey:@"MPModelRequestSectionSortDescriptors"];
  [coderCopy encodeObject:self->_itemSortDescriptors forKey:@"MPModelRequestItemSortDescriptors"];
}

- (MPModelRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MPModelRequest *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPModelRequestLabel"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPModelRequestSectionProperties"];
    sectionProperties = v5->_sectionProperties;
    v5->_sectionProperties = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPModelRequestItemProperties"];
    itemProperties = v5->_itemProperties;
    v5->_itemProperties = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemKind"];
    itemKind = v5->_itemKind;
    v5->_itemKind = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionKind"];
    sectionKind = v5->_sectionKind;
    v5->_sectionKind = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"MPModelRequestSectionSortDescriptors"];
    sectionSortDescriptors = v5->_sectionSortDescriptors;
    v5->_sectionSortDescriptors = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"MPModelRequestItemSortDescriptors"];
    itemSortDescriptors = v5->_itemSortDescriptors;
    v5->_itemSortDescriptors = v24;
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  if (self->_label)
  {
    [v6 appendFormat:@"; label = %@", self->_label];
  }

  sectionKind = self->_sectionKind;
  if (sectionKind)
  {
    v8 = [(MPModelKind *)sectionKind debugDescription];
    [v6 appendFormat:@"; sectionKind=%@", v8];
  }

  itemKind = self->_itemKind;
  if (itemKind)
  {
    v10 = [(MPModelKind *)itemKind debugDescription];
    [v6 appendFormat:@"; itemKind=%@", v10];
  }

  sectionSortDescriptors = self->_sectionSortDescriptors;
  if (sectionSortDescriptors)
  {
    msv_compactDescription = [(NSArray *)sectionSortDescriptors msv_compactDescription];
    [v6 appendFormat:@"; sectionSortDescriptors=[%@]", msv_compactDescription];
  }

  itemSortDescriptors = self->_itemSortDescriptors;
  if (itemSortDescriptors)
  {
    msv_compactDescription2 = [(NSArray *)itemSortDescriptors msv_compactDescription];
    [v6 appendFormat:@"; itemSortDescriptors=[%@]", msv_compactDescription2];
  }

  sectionProperties = self->_sectionProperties;
  if (sectionProperties)
  {
    v16 = [(MPPropertySet *)sectionProperties debugDescription];
    [v6 appendFormat:@"; sectionProperties=%@", v16];
  }

  itemProperties = self->_itemProperties;
  if (itemProperties)
  {
    v18 = [(MPPropertySet *)itemProperties debugDescription];
    [v6 appendFormat:@"; itemProperties=%@", v18];
  }

  [v6 appendString:@">"];

  return v6;
}

+ (id)sharedNetworkQueue
{
  if (sharedNetworkQueue_onceToken != -1)
  {
    dispatch_once(&sharedNetworkQueue_onceToken, &__block_literal_global_67);
  }

  v3 = sharedNetworkQueue___sharedNetworkQueue;

  return v3;
}

uint64_t __36__MPModelRequest_sharedNetworkQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = sharedNetworkQueue___sharedNetworkQueue;
  sharedNetworkQueue___sharedNetworkQueue = v0;

  [sharedNetworkQueue___sharedNetworkQueue setMaxConcurrentOperationCount:4];
  [sharedNetworkQueue___sharedNetworkQueue setName:@"com.apple.MediaPlayer.MPModelRequest.sharedNetworkQueue"];
  v2 = sharedNetworkQueue___sharedNetworkQueue;

  return [v2 setQualityOfService:25];
}

@end