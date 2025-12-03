@interface _MPMediaLibraryEntityChange
- (_MPMediaLibraryEntityChange)initWithEntity:(id)entity anchor:(id)anchor deletionType:(int64_t)type;
@end

@implementation _MPMediaLibraryEntityChange

- (_MPMediaLibraryEntityChange)initWithEntity:(id)entity anchor:(id)anchor deletionType:(int64_t)type
{
  entityCopy = entity;
  anchorCopy = anchor;
  v16.receiver = self;
  v16.super_class = _MPMediaLibraryEntityChange;
  v11 = [(_MPMediaLibraryEntityChange *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entity, entity);
    v13 = [anchorCopy copy];
    anchor = v12->_anchor;
    v12->_anchor = v13;

    v12->_deletionType = type;
  }

  return v12;
}

@end