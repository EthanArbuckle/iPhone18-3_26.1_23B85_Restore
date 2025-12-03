@interface MPMusicPlayerControllerApplicationQueueModifications
- (MPMusicPlayerControllerApplicationQueueModifications)initWithCoder:(id)coder;
- (MPMusicPlayerControllerApplicationQueueModifications)initWithInsertedDescriptors:(id)descriptors removedItemIdentifiers:(id)identifiers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPMusicPlayerControllerApplicationQueueModifications

- (void)encodeWithCoder:(id)coder
{
  insertedDescriptors = self->_insertedDescriptors;
  coderCopy = coder;
  [coderCopy encodeObject:insertedDescriptors forKey:@"inserted"];
  [coderCopy encodeObject:self->_removedItemIdentifiers forKey:@"removed"];
}

- (MPMusicPlayerControllerApplicationQueueModifications)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"inserted"];
    insertedDescriptors = v5->_insertedDescriptors;
    v5->_insertedDescriptors = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"removed"];
    removedItemIdentifiers = v5->_removedItemIdentifiers;
    v5->_removedItemIdentifiers = v16;
  }

  return v5;
}

- (MPMusicPlayerControllerApplicationQueueModifications)initWithInsertedDescriptors:(id)descriptors removedItemIdentifiers:(id)identifiers
{
  descriptorsCopy = descriptors;
  identifiersCopy = identifiers;
  v14.receiver = self;
  v14.super_class = MPMusicPlayerControllerApplicationQueueModifications;
  v8 = [(MPMusicPlayerControllerApplicationQueueModifications *)&v14 init];
  if (v8)
  {
    v9 = [descriptorsCopy copy];
    insertedDescriptors = v8->_insertedDescriptors;
    v8->_insertedDescriptors = v9;

    v11 = [identifiersCopy copy];
    removedItemIdentifiers = v8->_removedItemIdentifiers;
    v8->_removedItemIdentifiers = v11;
  }

  return v8;
}

@end