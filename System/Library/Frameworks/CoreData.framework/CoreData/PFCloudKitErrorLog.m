@interface PFCloudKitErrorLog
- (PFCloudKitErrorLog)init;
- (id)description;
- (void)dealloc;
@end

@implementation PFCloudKitErrorLog

- (PFCloudKitErrorLog)init
{
  v4.receiver = self;
  v4.super_class = PFCloudKitErrorLog;
  v2 = [(PFCloudKitErrorLog *)&v4 init];
  if (v2)
  {
    v2->_entries = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v2;
}

- (void)dealloc
{
  self->_entries = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitErrorLog;
  [(PFCloudKitErrorLog *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v8.receiver = self;
  v8.super_class = PFCloudKitErrorLog;
  v4 = [-[PFCloudKitErrorLog description](&v8 description)];
  entries = self->_entries;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__PFCloudKitErrorLog_description__block_invoke;
  v7[3] = &unk_1E6EC3A30;
  v7[4] = v4;
  [(NSMutableArray *)entries enumerateObjectsUsingBlock:v7];
  objc_autoreleasePoolPop(v3);
  return v4;
}

uint64_t __33__PFCloudKitErrorLog_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a2 + 8);
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return [v2 appendFormat:@"\n%@: %@", v3, v4];
}

@end