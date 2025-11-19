@interface AXMOutputRequestHandle
- (AXMOutputRequestHandle)init;
- (NSArray)actionHandles;
@end

@implementation AXMOutputRequestHandle

- (AXMOutputRequestHandle)init
{
  v6.receiver = self;
  v6.super_class = AXMOutputRequestHandle;
  v2 = [(AXMOutputRequestHandle *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    actionHandles = v2->_actionHandles;
    v2->_actionHandles = v3;
  }

  return v2;
}

- (NSArray)actionHandles
{
  v2 = [(NSMutableArray *)self->_actionHandles copy];

  return v2;
}

@end