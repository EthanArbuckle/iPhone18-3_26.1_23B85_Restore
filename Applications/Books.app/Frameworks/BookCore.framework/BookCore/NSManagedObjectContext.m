@interface NSManagedObjectContext
+ (id)mergePredicate:(id)a3 andPredicate:(id)a4;
- (id)copyEntityPropertiesArray:(id)a3 fromEntityName:(id)a4 withPredicate:(id)a5 sortBy:(id)a6 ascending:(BOOL)a7 distinct:(BOOL)a8;
- (id)copyEntityProperty:(id)a3 fromEntityName:(id)a4 withPredicate:(id)a5;
- (id)copyEntityPropertyArray:(id)a3 fromEntityName:(id)a4 withPredicate:(id)a5 sortBy:(id)a6 ascending:(BOOL)a7;
- (id)entity:(id)a3 withPredicate:(id)a4 sortBy:(id)a5 ascending:(BOOL)a6 fetchLimit:(unint64_t)a7 prefetchRelationships:(id)a8;
- (id)entity:(id)a3 withPredicate:(id)a4 sortDescriptors:(id)a5 fetchLimit:(unint64_t)a6 prefetchRelationships:(id)a7;
- (id)newByClass:(Class)a3;
- (id)objectIDsWithPredicate:(id)a3 forEntity:(id)a4;
- (id)unbatchedObjectsWithPredicate:(id)a3 forEntity:(id)a4;
- (unint64_t)countEntity:(id)a3 withPredicate:(id)a4;
- (void)batchDeleteEntity:(id)a3 matching:(id)a4 prefetchRelationships:(id)a5;
- (void)im_performSafeAccess:(id)a3;
@end

@implementation NSManagedObjectContext

+ (id)mergePredicate:(id)a3 andPredicate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [[NSArray alloc] initWithObjects:{v5, v6, 0}];
    v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];
  }

  else
  {
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }

    v9 = v10;
  }

  return v9;
}

- (unint64_t)countEntity:(id)a3 withPredicate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSFetchRequest);
  v9 = [NSEntityDescription entityForName:v7 inManagedObjectContext:self];

  [v8 setEntity:v9];
  [v8 setPredicate:v6];

  v14 = 0;
  v10 = [(NSManagedObjectContext *)self countForFetchRequest:v8 error:&v14];
  v11 = v14;
  v12 = v11;
  if (v11)
  {
    [v11 logRecursively];
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyEntityPropertiesArray:(id)a3 fromEntityName:(id)a4 withPredicate:(id)a5 sortBy:(id)a6 ascending:(BOOL)a7 distinct:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  context = objc_autoreleasePoolPush();
  v18 = objc_alloc_init(NSFetchRequest);
  v19 = [NSEntityDescription entityForName:v15 inManagedObjectContext:self];
  [v18 setEntity:v19];
  if ([v14 count] == &dword_0 + 1 && (objc_msgSend(v14, "objectAtIndex:", 0), v36 = v14, v20 = v19, v21 = v17, v22 = self, v23 = v8, v24 = v16, v25 = v15, v26 = v9, v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isEqualToString:", @"objectID"), v27, v9 = v26, v15 = v25, v16 = v24, v8 = v23, self = v22, v17 = v21, v19 = v20, v14 = v36, v28))
  {
    [v18 setResultType:1];
  }

  else
  {
    [v18 setPropertiesToFetch:v14];
    [v18 setResultType:2];
    if (v8)
    {
      [v18 setReturnsDistinctResults:1];
    }
  }

  [v18 setPredicate:v16];
  if (v17)
  {
    v29 = [[NSSortDescriptor alloc] initWithKey:v17 ascending:v9];
    v30 = [[NSArray alloc] initWithObjects:{v29, 0}];
    [v18 setSortDescriptors:v30];
  }

  v38 = 0;
  v31 = [(NSManagedObjectContext *)self executeFetchRequest:v18 error:&v38];
  v32 = v38;
  v33 = v32;
  if (v32)
  {
    [v32 logRecursively];
  }

  objc_autoreleasePoolPop(context);
  v34 = [v31 copy];

  return v34;
}

- (id)copyEntityPropertyArray:(id)a3 fromEntityName:(id)a4 withPredicate:(id)a5 sortBy:(id)a6 ascending:(BOOL)a7
{
  v7 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [NSArray arrayWithObject:a3];
  v16 = [(NSManagedObjectContext *)self copyEntityPropertiesArray:v15 fromEntityName:v14 withPredicate:v13 sortBy:v12 ascending:v7];

  return v16;
}

- (id)copyEntityProperty:(id)a3 fromEntityName:(id)a4 withPredicate:(id)a5
{
  v5 = [(NSManagedObjectContext *)self copyEntityPropertyArray:a3 fromEntityName:a4 withPredicate:a5 sortBy:0 ascending:0];
  if ([v5 count] == &dword_0 + 1 || objc_msgSend(v5, "count") >= 2)
  {
    v6 = [v5 lastObject];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 copy];

  return v7;
}

- (id)newByClass:(Class)a3
{
  v4 = NSStringFromClass(a3);
  v5 = [NSEntityDescription insertNewObjectForEntityForName:v4 inManagedObjectContext:self];

  return v5;
}

- (id)objectIDsWithPredicate:(id)a3 forEntity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(NSFetchRequest);
  v10 = [NSEntityDescription entityForName:v7 inManagedObjectContext:self];
  [v9 setEntity:v10];

  [v9 setPredicate:v6];
  [v9 setResultType:1];
  [v9 setIncludesPropertyValues:0];
  v15 = 0;
  v11 = [(NSManagedObjectContext *)self executeFetchRequest:v9 error:&v15];
  v12 = v15;
  v13 = v12;
  if (v12)
  {
    [v12 logRecursively];
  }

  objc_autoreleasePoolPop(v8);

  return v11;
}

- (id)unbatchedObjectsWithPredicate:(id)a3 forEntity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(NSFetchRequest);
  v10 = [NSEntityDescription entityForName:v7 inManagedObjectContext:self];
  [v9 setEntity:v10];

  [v9 setPredicate:v6];
  [v9 setIncludesPropertyValues:1];
  v15 = 0;
  v11 = [(NSManagedObjectContext *)self executeFetchRequest:v9 error:&v15];
  v12 = v15;
  v13 = v12;
  if (v12)
  {
    [v12 logRecursively];
  }

  objc_autoreleasePoolPop(v8);

  return v11;
}

- (id)entity:(id)a3 withPredicate:(id)a4 sortDescriptors:(id)a5 fetchLimit:(unint64_t)a6 prefetchRelationships:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  v17 = objc_alloc_init(NSFetchRequest);
  v18 = [NSEntityDescription entityForName:v12 inManagedObjectContext:self];
  [v17 setEntity:v18];

  [v17 setPredicate:v13];
  [v17 setSortDescriptors:v14];
  if ([v15 count])
  {
    [v17 setRelationshipKeyPathsForPrefetching:v15];
  }

  if (a6)
  {
    if (a6 <= 0xA)
    {
      [v17 setReturnsObjectsAsFaults:0];
    }

    [v17 setFetchLimit:a6];
  }

  else
  {
    [v17 setFetchBatchSize:100];
  }

  v23 = 0;
  v19 = [(NSManagedObjectContext *)self executeFetchRequest:v17 error:&v23];
  v20 = v23;
  v21 = v20;
  if (v20)
  {
    [v20 logRecursively];
  }

  objc_autoreleasePoolPop(v16);

  return v19;
}

- (id)entity:(id)a3 withPredicate:(id)a4 sortBy:(id)a5 ascending:(BOOL)a6 fetchLimit:(unint64_t)a7 prefetchRelationships:(id)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a8;
  if (a5)
  {
    v17 = a5;
    v18 = [[NSSortDescriptor alloc] initWithKey:v17 ascending:v10];

    v19 = [[NSArray alloc] initWithObjects:{v18, 0}];
  }

  else
  {
    v19 = 0;
  }

  v20 = [(NSManagedObjectContext *)self entity:v14 withPredicate:v15 sortDescriptors:v19 fetchLimit:a7 prefetchRelationships:v16];

  return v20;
}

- (void)im_performSafeAccess:(id)a3
{
  v4 = a3;
  [(NSManagedObjectContext *)self im_pushSafeAccessState];
  v4[2]();
  [(NSManagedObjectContext *)self im_popSafeAccessState];
}

- (void)batchDeleteEntity:(id)a3 matching:(id)a4 prefetchRelationships:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  [(NSManagedObjectContext *)self unbatchedObjectsWithPredicate:v9 forEntity:v8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5A414;
  v12 = v13[3] = &unk_2C8838;
  v14 = v12;
  v15 = self;
  v16 = &v17;
  [(NSManagedObjectContext *)self im_performSafeAccess:v13];
  if (*(v18 + 6))
  {
    [(NSManagedObjectContext *)self save:0];
  }

  _Block_object_dispose(&v17, 8);
  objc_autoreleasePoolPop(v11);
}

@end