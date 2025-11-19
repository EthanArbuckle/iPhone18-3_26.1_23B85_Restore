@interface PHImportBatch
- (PHImportBatch)init;
@end

@implementation PHImportBatch

- (PHImportBatch)init
{
  v12.receiver = self;
  v12.super_class = PHImportBatch;
  v2 = [(PHImportBatch *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    start = v2->_start;
    v2->_start = v3;

    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:100];
    records = v2->_records;
    v2->_records = v5;

    v7 = objc_opt_new();
    timers = v2->_timers;
    v2->_timers = v7;

    v9 = dispatch_semaphore_create(0);
    semaphore = v2->_semaphore;
    v2->_semaphore = v9;
  }

  return v2;
}

@end