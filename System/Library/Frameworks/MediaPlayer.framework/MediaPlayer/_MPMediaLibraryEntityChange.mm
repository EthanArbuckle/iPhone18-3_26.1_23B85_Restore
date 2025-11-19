@interface _MPMediaLibraryEntityChange
- (_MPMediaLibraryEntityChange)initWithEntity:(id)a3 anchor:(id)a4 deletionType:(int64_t)a5;
@end

@implementation _MPMediaLibraryEntityChange

- (_MPMediaLibraryEntityChange)initWithEntity:(id)a3 anchor:(id)a4 deletionType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = _MPMediaLibraryEntityChange;
  v11 = [(_MPMediaLibraryEntityChange *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entity, a3);
    v13 = [v10 copy];
    anchor = v12->_anchor;
    v12->_anchor = v13;

    v12->_deletionType = a5;
  }

  return v12;
}

@end