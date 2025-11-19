@interface ATXContextStoreWriter
- (ATXContextStoreWriter)initWithContext:(id)a3 keyPath:(id)a4;
@end

@implementation ATXContextStoreWriter

- (ATXContextStoreWriter)initWithContext:(id)a3 keyPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXContextStoreWriter;
  v9 = [(ATXContextStoreWriter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeStrong(&v10->_keyPath, a4);
  }

  return v10;
}

@end