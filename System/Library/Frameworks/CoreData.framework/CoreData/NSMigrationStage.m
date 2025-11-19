@interface NSMigrationStage
- (NSMigrationStage)init;
- (void)dealloc;
- (void)setLabel:(NSString *)label;
@end

@implementation NSMigrationStage

- (NSMigrationStage)init
{
  v4.receiver = self;
  v4.super_class = NSMigrationStage;
  v2 = [(NSMigrationStage *)&v4 init];
  if (v2)
  {
    v2->_label = objc_alloc_init(MEMORY[0x1E696AEC0]);
  }

  return v2;
}

- (void)setLabel:(NSString *)label
{
  v3 = self->_label;
  if (v3 != label)
  {

    if (label)
    {
      v6 = [(NSString *)label copy];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E696AEC0]);
    }

    self->_label = v6;
  }
}

- (void)dealloc
{
  self->_label = 0;
  v3.receiver = self;
  v3.super_class = NSMigrationStage;
  [(NSMigrationStage *)&v3 dealloc];
}

@end