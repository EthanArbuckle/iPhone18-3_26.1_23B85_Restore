@interface _PFCKInsertedMetadataLink
- (id)description;
- (void)dealloc;
@end

@implementation _PFCKInsertedMetadataLink

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _PFCKInsertedMetadataLink;
  [(_PFCKInsertedMetadataLink *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  createRecordID = [(NSCKRecordMetadata *)self->_recordMetadata createRecordID];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = [v5 stringWithFormat:@"<%@: %p> %@ -> %@", NSStringFromClass(v6), self, -[NSManagedObject objectID](self->_insertedObject, "objectID"), createRecordID];

  v8 = v7;
  objc_autoreleasePoolPop(v3);

  return v7;
}

@end