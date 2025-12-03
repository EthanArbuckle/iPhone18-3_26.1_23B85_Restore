@interface ATXContextStoreWriter
- (ATXContextStoreWriter)initWithContext:(id)context keyPath:(id)path;
@end

@implementation ATXContextStoreWriter

- (ATXContextStoreWriter)initWithContext:(id)context keyPath:(id)path
{
  contextCopy = context;
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = ATXContextStoreWriter;
  v9 = [(ATXContextStoreWriter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_keyPath, path);
  }

  return v10;
}

@end