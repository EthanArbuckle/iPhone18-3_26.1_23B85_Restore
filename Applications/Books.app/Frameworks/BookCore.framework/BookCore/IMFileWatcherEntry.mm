@interface IMFileWatcherEntry
- (IMFileWatcherEntry)initWithQueue:(id)a3 andBlock:(id)a4;
- (unint64_t)hash;
@end

@implementation IMFileWatcherEntry

- (IMFileWatcherEntry)initWithQueue:(id)a3 andBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = IMFileWatcherEntry;
  v9 = [(IMFileWatcherEntry *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    v11 = [v8 copy];
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_filePath hash];
  v4 = [(NSOperationQueue *)self->_queue hash]^ v3;
  return v4 ^ [self->_block hash];
}

@end