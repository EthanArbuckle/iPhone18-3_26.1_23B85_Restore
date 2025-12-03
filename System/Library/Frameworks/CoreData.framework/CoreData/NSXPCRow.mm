@interface NSXPCRow
- (NSXPCRow)initWithNode:(id)node;
- (void)dealloc;
@end

@implementation NSXPCRow

- (void)dealloc
{
  self->_node = 0;
  v3.receiver = self;
  v3.super_class = NSXPCRow;
  [(NSPersistentCacheRow *)&v3 dealloc];
}

- (NSXPCRow)initWithNode:(id)node
{
  v6.receiver = self;
  v6.super_class = NSXPCRow;
  v4 = [(NSPersistentCacheRow *)&v6 initWithOptions:0 andTimestamp:0.0];
  if (v4)
  {
    v4->_node = node;
  }

  return v4;
}

@end