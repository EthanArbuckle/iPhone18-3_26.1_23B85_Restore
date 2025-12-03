@interface NLLogCategory
+ (id)_getCategory:(id)category;
+ (id)categoryWithName:(id)name inSubsystem:(id)subsystem;
+ (void)_addCategory:(id)category inSubsystem:(id)subsystem;
+ (void)initialize;
- (id)initCategory:(id)category inSubsystem:(id)subsystem;
@end

@implementation NLLogCategory

+ (void)initialize
{
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v3 = categoryList;
  categoryList = strongToStrongObjectsMapTable;

  [NLLogCategory _addCategory:@"default" inSubsystem:@"com.apple.NaturalLanguageFramework"];
}

+ (id)categoryWithName:(id)name inSubsystem:(id)subsystem
{
  nameCopy = name;
  subsystemCopy = subsystem;
  v7 = [NLLogCategory _getCategory:nameCopy];
  if (!v7)
  {
    [NLLogCategory _addCategory:nameCopy inSubsystem:subsystemCopy];
    v7 = [NLLogCategory _getCategory:nameCopy];
  }

  return v7;
}

+ (void)_addCategory:(id)category inSubsystem:(id)subsystem
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  v7 = [[NLLogCategory alloc] initCategory:categoryCopy inSubsystem:subsystemCopy];

  os_unfair_lock_lock(&lock);
  [categoryList setObject:v7 forKey:categoryCopy];

  os_unfair_lock_unlock(&lock);
}

+ (id)_getCategory:(id)category
{
  categoryCopy = category;
  os_unfair_lock_lock(&lock);
  v4 = [categoryList objectForKey:categoryCopy];

  os_unfair_lock_unlock(&lock);

  return v4;
}

- (id)initCategory:(id)category inSubsystem:(id)subsystem
{
  categoryCopy = category;
  subsystemCopy = subsystem;
  v14.receiver = self;
  v14.super_class = NLLogCategory;
  v9 = [(NLLogCategory *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_loggingSubsystem, subsystem);
    objc_storeStrong(&v10->_loggingCategory, category);
    v11 = os_log_create([@"com.apple.NaturalLanguageFramework" UTF8String], objc_msgSend(categoryCopy, "UTF8String"));
    internal = v10->_internal;
    v10->_internal = v11;
  }

  return v10;
}

@end