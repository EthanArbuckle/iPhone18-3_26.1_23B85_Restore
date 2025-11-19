@interface NLLogCategory
+ (id)_getCategory:(id)a3;
+ (id)categoryWithName:(id)a3 inSubsystem:(id)a4;
+ (void)_addCategory:(id)a3 inSubsystem:(id)a4;
+ (void)initialize;
- (id)initCategory:(id)a3 inSubsystem:(id)a4;
@end

@implementation NLLogCategory

+ (void)initialize
{
  v2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v3 = categoryList;
  categoryList = v2;

  [NLLogCategory _addCategory:@"default" inSubsystem:@"com.apple.NaturalLanguageFramework"];
}

+ (id)categoryWithName:(id)a3 inSubsystem:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NLLogCategory _getCategory:v5];
  if (!v7)
  {
    [NLLogCategory _addCategory:v5 inSubsystem:v6];
    v7 = [NLLogCategory _getCategory:v5];
  }

  return v7;
}

+ (void)_addCategory:(id)a3 inSubsystem:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NLLogCategory alloc] initCategory:v6 inSubsystem:v5];

  os_unfair_lock_lock(&lock);
  [categoryList setObject:v7 forKey:v6];

  os_unfair_lock_unlock(&lock);
}

+ (id)_getCategory:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&lock);
  v4 = [categoryList objectForKey:v3];

  os_unfair_lock_unlock(&lock);

  return v4;
}

- (id)initCategory:(id)a3 inSubsystem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NLLogCategory;
  v9 = [(NLLogCategory *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_loggingSubsystem, a4);
    objc_storeStrong(&v10->_loggingCategory, a3);
    v11 = os_log_create([@"com.apple.NaturalLanguageFramework" UTF8String], objc_msgSend(v7, "UTF8String"));
    internal = v10->_internal;
    v10->_internal = v11;
  }

  return v10;
}

@end