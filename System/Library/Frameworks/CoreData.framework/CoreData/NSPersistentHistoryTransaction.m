@interface NSPersistentHistoryTransaction
+ (NSEntityDescription)entityDescription;
+ (NSEntityDescription)entityDescriptionWithContext:(NSManagedObjectContext *)context;
+ (NSFetchRequest)fetchRequest;
- (BOOL)isEqual:(id)a3;
- (NSArray)changes;
- (NSDate)timestamp;
- (NSNotification)objectIDNotification;
- (NSPersistentHistoryToken)token;
- (NSString)author;
- (NSString)bundleID;
- (NSString)contextName;
- (NSString)processID;
- (NSString)storeID;
- (id)description;
- (id)initialQueryGenerationToken;
- (id)postQueryGenerationToken;
- (int64_t)transactionNumber;
@end

@implementation NSPersistentHistoryTransaction

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

  return [NSPersistentHistoryTransaction entityDescriptionWithContext:v2];
}

+ (NSFetchRequest)fetchRequest
{
  v2 = +[NSPersistentHistoryTransaction entityDescription];
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

+ (NSEntityDescription)entityDescriptionWithContext:(NSManagedObjectContext *)context
{
  if (!context)
  {
    return 0;
  }

  v3 = [(NSManagedObjectContext *)context persistentStoreCoordinator];
  v4 = v3 ? v3->_modelMap : 0;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", +[_PFPersistentHistoryFetchModel ancillaryModelNamespace](_PFPersistentHistoryFetchModel, "ancillaryModelNamespace"), @"Transaction"];
  if (!v4)
  {
    return 0;
  }

  v6 = v5;
  entitiesByPath = v4->_entitiesByPath;

  return [(NSDictionary *)entitiesByPath objectForKey:v6];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v5 = [(NSPersistentHistoryTransaction *)self storeID];
  result = 0;
  if (v5 == [a3 storeID])
  {
    v6 = [(NSPersistentHistoryTransaction *)self transactionNumber];
    if (v6 == [a3 transactionNumber])
    {
      return 1;
    }
  }

  return result;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSPersistentHistoryTransaction: %lld, %@, %@, %@, %@, %@, %@>", -[NSPersistentHistoryTransaction transactionNumber](self, "transactionNumber"), -[NSPersistentHistoryTransaction timestamp](self, "timestamp"), -[NSPersistentHistoryTransaction bundleID](self, "bundleID"), -[NSPersistentHistoryTransaction processID](self, "processID"), -[NSPersistentHistoryTransaction contextName](self, "contextName"), -[NSPersistentHistoryTransaction author](self, "author"), -[NSPersistentHistoryTransaction changes](self, "changes")];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (NSDate)timestamp
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v2 = MEMORY[0x1E695DF00];

  return [v2 distantFuture];
}

- (NSArray)changes
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSPersistentHistoryToken)token
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)initialQueryGenerationToken
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)postQueryGenerationToken
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (int64_t)transactionNumber
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSString)storeID
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_1EF3F1768;
}

- (NSString)bundleID
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_1EF3F1768;
}

- (NSString)processID
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_1EF3F1768;
}

- (NSString)contextName
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSString)author
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSNotification)objectIDNotification
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v2 = MEMORY[0x1E696AD80];

  return [v2 notificationWithName:&stru_1EF3F1768 object:0];
}

@end