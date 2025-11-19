@interface NSPersistentHistoryChange
+ (NSEntityDescription)entityDescription;
+ (NSEntityDescription)entityDescriptionWithContext:(NSManagedObjectContext *)context;
+ (NSFetchRequest)fetchRequest;
+ (id)shortStringForChangeType:(int64_t)a3;
+ (id)stringForChangeType:(int64_t)a3;
- (NSDictionary)tombstone;
- (NSManagedObjectID)changedObjectID;
- (NSPersistentHistoryChangeType)changeType;
- (NSPersistentHistoryTransaction)transaction;
- (NSSet)updatedProperties;
- (id)description;
- (int64_t)changeID;
@end

@implementation NSPersistentHistoryChange

+ (NSFetchRequest)fetchRequest
{
  v2 = +[NSPersistentHistoryChange entityDescription];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = objc_alloc_init(NSFetchRequest);
  [(NSFetchRequest *)v4 setEntity:v3];
  v5 = v4;
  return v4;
}

+ (NSEntityDescription)entityDescription
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
  if (!v2)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [NSPersistentHistoryChange entityDescriptionWithContext:v2];
}

+ (NSEntityDescription)entityDescriptionWithContext:(NSManagedObjectContext *)context
{
  if (!context)
  {
    return 0;
  }

  v3 = [(NSManagedObjectContext *)context persistentStoreCoordinator];
  v4 = v3 ? v3->_modelMap : 0;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", +[_PFPersistentHistoryFetchModel ancillaryModelNamespace](_PFPersistentHistoryFetchModel, "ancillaryModelNamespace"), @"Change"];
  if (!v4)
  {
    return 0;
  }

  v6 = v5;
  entitiesByPath = v4->_entitiesByPath;

  return [(NSDictionary *)entitiesByPath objectForKey:v6];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSPersistentHistoryChange: %lld %@ %@ %lld %@ %@>", -[NSPersistentHistoryChange changeID](self, "changeID"), -[NSPersistentHistoryChange changedObjectID](self, "changedObjectID"), +[NSPersistentHistoryChange shortStringForChangeType:](NSPersistentHistoryChange, "shortStringForChangeType:", -[NSPersistentHistoryChange changeType](self, "changeType")), -[NSPersistentHistoryTransaction transactionNumber](-[NSPersistentHistoryChange transaction](self, "transaction"), "transactionNumber"), -[NSPersistentHistoryChange updatedProperties](self, "updatedProperties"), -[NSPersistentHistoryChange tombstone](self, "tombstone")];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (NSDictionary)tombstone
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return MEMORY[0x1E695E0F8];
}

- (NSManagedObjectID)changedObjectID
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSPersistentHistoryChangeType)changeType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return -1;
}

- (NSPersistentHistoryTransaction)transaction
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (int64_t)changeID
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return -1;
}

- (NSSet)updatedProperties
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)shortStringForChangeType:(int64_t)a3
{
  v3 = [a1 stringForChangeType:a3];

  return [v3 stringByReplacingOccurrencesOfString:@"NSPersistentHistoryChangeType" withString:&stru_1EF3F1768];
}

+ (id)stringForChangeType:(int64_t)a3
{
  if (a3 >= 3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"'%ld' is an unknown NSPersistentHistoryChangeType value", a3), 0}]);
  }

  return off_1E6EC1FC0[a3];
}

@end