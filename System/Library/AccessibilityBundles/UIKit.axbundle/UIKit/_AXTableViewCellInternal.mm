@interface _AXTableViewCellInternal
- (_AXTableViewCellInternal)init;
@end

@implementation _AXTableViewCellInternal

- (_AXTableViewCellInternal)init
{
  v11 = a2;
  v12 = 0;
  v10.receiver = self;
  v10.super_class = _AXTableViewCellInternal;
  v12 = [(_AXTableViewCellInternal *)&v10 init];
  objc_storeStrong(&v12, v12);
  v2 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) initWithCapacity:?];
  children = v12->children;
  v12->children = v2;
  MEMORY[0x29EDC9740](children);
  v4 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) initWithCapacity:0];
  mockSubviews = v12->mockSubviews;
  v12->mockSubviews = v4;
  MEMORY[0x29EDC9740](mockSubviews);
  v6 = [objc_allocWithZone(MEMORY[0x29EDB8E00]) initWithCapacity:0];
  subClassData = v12->_subClassData;
  v12->_subClassData = v6;
  MEMORY[0x29EDC9740](subClassData);
  v9 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v12, 0);
  return v9;
}

@end