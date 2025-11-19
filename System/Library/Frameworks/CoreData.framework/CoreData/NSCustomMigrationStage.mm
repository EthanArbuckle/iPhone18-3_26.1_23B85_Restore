@interface NSCustomMigrationStage
- (NSCustomMigrationStage)initWithCurrentModelReference:(NSManagedObjectModelReference *)currentModel nextModelReference:(NSManagedObjectModelReference *)nextModel;
- (void)dealloc;
@end

@implementation NSCustomMigrationStage

- (NSCustomMigrationStage)initWithCurrentModelReference:(NSManagedObjectModelReference *)currentModel nextModelReference:(NSManagedObjectModelReference *)nextModel
{
  v14[2] = *MEMORY[0x1E69E9840];
  if ([(NSString *)[(NSManagedObjectModelReference *)currentModel versionChecksum] isEqualToString:[(NSManagedObjectModelReference *)nextModel versionChecksum]])
  {

    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v13[0] = @"currentModel versionChecksum";
    v13[1] = @"nextModel versionChecksum";
    v14[0] = [(NSManagedObjectModelReference *)currentModel versionChecksum];
    v14[1] = [(NSManagedObjectModelReference *)nextModel versionChecksum];
    objc_exception_throw([v10 exceptionWithName:v11 reason:@"The current model reference and the next model reference cannot be equal." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, v13, 2)}]);
  }

  v12.receiver = self;
  v12.super_class = NSCustomMigrationStage;
  v7 = [(NSMigrationStage *)&v12 init];
  if (v7)
  {
    v7->_currentModel = currentModel;
    v7->_nextModel = nextModel;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)dealloc
{
  self->_currentModel = 0;

  self->_nextModel = 0;
  self->_willMigrateHandler = 0;

  self->_didMigrateHandler = 0;
  v3.receiver = self;
  v3.super_class = NSCustomMigrationStage;
  [(NSMigrationStage *)&v3 dealloc];
}

@end