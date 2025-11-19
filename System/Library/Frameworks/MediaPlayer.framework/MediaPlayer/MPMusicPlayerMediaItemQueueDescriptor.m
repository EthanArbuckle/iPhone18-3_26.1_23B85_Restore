@interface MPMusicPlayerMediaItemQueueDescriptor
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (MPMediaItemCollection)itemCollection;
- (MPMediaQuery)query;
- (MPMusicPlayerMediaItemQueueDescriptor)initWithCoder:(id)a3;
- (MPMusicPlayerMediaItemQueueDescriptor)initWithItemCollection:(MPMediaItemCollection *)itemCollection;
- (MPMusicPlayerMediaItemQueueDescriptor)initWithQuery:(MPMediaQuery *)query;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setEndTime:(NSTimeInterval)endTime forItem:(MPMediaItem *)mediaItem;
- (void)setStartTime:(NSTimeInterval)startTime forItem:(MPMediaItem *)mediaItem;
@end

@implementation MPMusicPlayerMediaItemQueueDescriptor

- (BOOL)isEmpty
{
  if (self->_query)
  {
    return ![(MPMediaQuery *)self->_query _hasItems];
  }

  else
  {
    itemCollection = self->_itemCollection;
    if (itemCollection)
    {
      v4 = [(MPMediaItemCollection *)itemCollection items];
      LOBYTE(v2) = [v4 count] != 0;
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

- (MPMediaItemCollection)itemCollection
{
  v3 = self->_itemCollection;
  if (!v3)
  {
    v4 = [MPMediaItemCollection alloc];
    v5 = [(MPMediaQuery *)self->_query items];
    v3 = [(MPMediaItemCollection *)v4 initWithItems:v5];
  }

  return v3;
}

- (MPMediaQuery)query
{
  v3 = self->_query;
  if (v3 || ([(MPMediaItemCollection *)self->_itemCollection itemsQuery], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
  }

  else
  {
    v7 = [MPMediaQuery alloc];
    v8 = [(MPMediaItemCollection *)self->_itemCollection items];
    v4 = [(MPMediaQuery *)v7 initWithEntities:v8 entityType:0];
  }

  v5 = [(MPMediaQuery *)v4 copy];

  return v5;
}

- (void)setEndTime:(NSTimeInterval)endTime forItem:(MPMediaItem *)mediaItem
{
  v6 = mediaItem;
  v7 = [MPIdentifierSet alloc];
  v8 = +[MPModelSongKind identityKind];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__MPMusicPlayerMediaItemQueueDescriptor_setEndTime_forItem___block_invoke;
  v12[3] = &unk_1E7680B28;
  v13 = v6;
  v9 = v6;
  v10 = [(MPIdentifierSet *)v7 initWithSource:@"MPMusicPlayerQueueDescriptor" modelKind:v8 block:v12];
  v11.receiver = self;
  v11.super_class = MPMusicPlayerMediaItemQueueDescriptor;
  [(MPMusicPlayerQueueDescriptor *)&v11 _setEndTime:v10 forIdentifiers:endTime];
}

void __60__MPMusicPlayerMediaItemQueueDescriptor_setEndTime_forItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mediaLibrary];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[MPMediaLibrary deviceMediaLibrary];
  }

  v8 = v7;

  v9 = [v8 uniqueIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__MPMusicPlayerMediaItemQueueDescriptor_setEndTime_forItem___block_invoke_2;
  v10[3] = &unk_1E7680B00;
  v11 = *(a1 + 32);
  [v4 setLibraryIdentifiersWithDatabaseID:v9 block:v10];
}

void __60__MPMusicPlayerMediaItemQueueDescriptor_setEndTime_forItem___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPersistentID:{objc_msgSend(v2, "persistentID")}];
}

- (void)setStartTime:(NSTimeInterval)startTime forItem:(MPMediaItem *)mediaItem
{
  v6 = mediaItem;
  v7 = [MPIdentifierSet alloc];
  v8 = +[MPModelSongKind identityKind];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__MPMusicPlayerMediaItemQueueDescriptor_setStartTime_forItem___block_invoke;
  v12[3] = &unk_1E7680B28;
  v13 = v6;
  v9 = v6;
  v10 = [(MPIdentifierSet *)v7 initWithSource:@"MPMusicPlayerQueueDescriptor" modelKind:v8 block:v12];
  v11.receiver = self;
  v11.super_class = MPMusicPlayerMediaItemQueueDescriptor;
  [(MPMusicPlayerQueueDescriptor *)&v11 _setStartTime:v10 forIdentifiers:startTime];
}

void __62__MPMusicPlayerMediaItemQueueDescriptor_setStartTime_forItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mediaLibrary];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[MPMediaLibrary deviceMediaLibrary];
  }

  v8 = v7;

  v9 = [v8 uniqueIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__MPMusicPlayerMediaItemQueueDescriptor_setStartTime_forItem___block_invoke_2;
  v10[3] = &unk_1E7680B00;
  v11 = *(a1 + 32);
  [v4 setLibraryIdentifiersWithDatabaseID:v9 block:v10];
}

void __62__MPMusicPlayerMediaItemQueueDescriptor_setStartTime_forItem___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPersistentID:{objc_msgSend(v2, "persistentID")}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MPMusicPlayerMediaItemQueueDescriptor;
  v4 = [(MPMusicPlayerQueueDescriptor *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 11, self->_query);
  objc_storeStrong(v4 + 12, self->_itemCollection);
  objc_storeStrong(v4 + 13, self->_startItem);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPMusicPlayerMediaItemQueueDescriptor;
  v4 = a3;
  [(MPMusicPlayerQueueDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_query forKey:{@"MPMusicPlayerMediaItemQueueDescriptorQuery", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_itemCollection forKey:@"MPMusicPlayerMediaItemQueueDescriptorItemCollection"];
  [v4 encodeObject:self->_startItem forKey:@"MPMusicPlayerMediaItemQueueDescriptorStartItem"];
}

- (MPMusicPlayerMediaItemQueueDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MPMusicPlayerMediaItemQueueDescriptor;
  v5 = [(MPMusicPlayerQueueDescriptor *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPMusicPlayerMediaItemQueueDescriptorQuery"];
    query = v5->_query;
    v5->_query = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPMusicPlayerMediaItemQueueDescriptorItemCollection"];
    itemCollection = v5->_itemCollection;
    v5->_itemCollection = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPMusicPlayerMediaItemQueueDescriptorStartItem"];
    startItem = v5->_startItem;
    v5->_startItem = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MPMusicPlayerMediaItemQueueDescriptor;
  if ([(MPMusicPlayerQueueDescriptor *)&v20 isEqual:v4])
  {
    v5 = v4;
    v6 = v5[11];
    v7 = self->_query;
    v8 = v7;
    if (v7 == v6)
    {
      v9 = 1;
    }

    else
    {
      v9 = [(MPMediaQuery *)v7 isEqual:v6];
    }

    v11 = v5[12];
    v12 = self->_itemCollection;
    v13 = v12;
    if (v12 == v11)
    {
      v14 = 1;
    }

    else
    {
      v14 = [(MPMediaItemCollection *)v12 isEqual:v11];
    }

    v15 = v5[13];
    v16 = self->_startItem;
    v17 = v16;
    if (v16 == v15)
    {
      v18 = 1;
    }

    else
    {
      v18 = [(MPMediaItem *)v16 isEqual:v15];
    }

    v10 = v9 & v14 & v18;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MPMusicPlayerMediaItemQueueDescriptor)initWithItemCollection:(MPMediaItemCollection *)itemCollection
{
  v5 = itemCollection;
  v9.receiver = self;
  v9.super_class = MPMusicPlayerMediaItemQueueDescriptor;
  v6 = [(MPMusicPlayerQueueDescriptor *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 12, itemCollection);
  }

  return v7;
}

- (MPMusicPlayerMediaItemQueueDescriptor)initWithQuery:(MPMediaQuery *)query
{
  v5 = query;
  v9.receiver = self;
  v9.super_class = MPMusicPlayerMediaItemQueueDescriptor;
  v6 = [(MPMusicPlayerQueueDescriptor *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 11, query);
    if ([(MPMediaQuery *)v7->_query groupingType]== MPMediaGroupingPlaylist)
    {
      [(MPMediaQuery *)v7->_query setGroupingType:0];
    }
  }

  return v7;
}

@end