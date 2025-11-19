@interface NSLightweightMigrationStage
- (NSLightweightMigrationStage)initWithVersionChecksums:(NSArray *)versionChecksums;
- (void)dealloc;
@end

@implementation NSLightweightMigrationStage

- (NSLightweightMigrationStage)initWithVersionChecksums:(NSArray *)versionChecksums
{
  v5 = [objc_msgSend(MEMORY[0x1E695DFD8] "setWithArray:"count"")];
  if (v5 != [(NSArray *)versionChecksums count])
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Duplicate version checksums detected." userInfo:0]);
  }

  v8.receiver = self;
  v8.super_class = NSLightweightMigrationStage;
  v6 = [(NSMigrationStage *)&v8 init];
  if (v6)
  {
    v6->_versionChecksums = versionChecksums;
  }

  return v6;
}

- (void)dealloc
{
  self->_versionChecksums = 0;

  self->_subsequentStage = 0;
  v3.receiver = self;
  v3.super_class = NSLightweightMigrationStage;
  [(NSMigrationStage *)&v3 dealloc];
}

@end