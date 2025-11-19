@interface MPMusicPlayerControllerApplicationQueueModifications
- (MPMusicPlayerControllerApplicationQueueModifications)initWithCoder:(id)a3;
- (MPMusicPlayerControllerApplicationQueueModifications)initWithInsertedDescriptors:(id)a3 removedItemIdentifiers:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPMusicPlayerControllerApplicationQueueModifications

- (void)encodeWithCoder:(id)a3
{
  insertedDescriptors = self->_insertedDescriptors;
  v5 = a3;
  [v5 encodeObject:insertedDescriptors forKey:@"inserted"];
  [v5 encodeObject:self->_removedItemIdentifiers forKey:@"removed"];
}

- (MPMusicPlayerControllerApplicationQueueModifications)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MPMusicPlayerControllerApplicationQueueModifications;
  v5 = [(MPMusicPlayerControllerApplicationQueueModifications *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"inserted"];
    insertedDescriptors = v5->_insertedDescriptors;
    v5->_insertedDescriptors = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"removed"];
    removedItemIdentifiers = v5->_removedItemIdentifiers;
    v5->_removedItemIdentifiers = v16;
  }

  return v5;
}

- (MPMusicPlayerControllerApplicationQueueModifications)initWithInsertedDescriptors:(id)a3 removedItemIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MPMusicPlayerControllerApplicationQueueModifications;
  v8 = [(MPMusicPlayerControllerApplicationQueueModifications *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    insertedDescriptors = v8->_insertedDescriptors;
    v8->_insertedDescriptors = v9;

    v11 = [v7 copy];
    removedItemIdentifiers = v8->_removedItemIdentifiers;
    v8->_removedItemIdentifiers = v11;
  }

  return v8;
}

@end