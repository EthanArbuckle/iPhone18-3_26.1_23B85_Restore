@interface NSMergeConflict
- (NSMergeConflict)init;
- (NSMergeConflict)initWithCoder:(id)a3;
- (NSMergeConflict)initWithSource:(NSManagedObject *)srcObject newVersion:(NSUInteger)newvers oldVersion:(NSUInteger)oldvers cachedSnapshot:(NSDictionary *)cachesnap persistedSnapshot:(NSDictionary *)persnap;
- (NSMergeConflict)initWithSource:(id)a3 newVersion:(unint64_t)a4 oldVersion:(unint64_t)a5 snapshot1:(id)a6 snapshot2:(id)a7 snapshot3:(id)a8;
- (id)description;
- (id)objectForKey:(id)a3;
- (id)valueForKey:(id)a3;
- (void)_doCleanupForXPCStore:(id)a3 context:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSMergeConflict

- (NSMergeConflict)initWithSource:(NSManagedObject *)srcObject newVersion:(NSUInteger)newvers oldVersion:(NSUInteger)oldvers cachedSnapshot:(NSDictionary *)cachesnap persistedSnapshot:(NSDictionary *)persnap
{
  v15.receiver = self;
  v15.super_class = NSMergeConflict;
  v12 = [(NSMergeConflict *)&v15 init];
  if (v12)
  {
    v12->_source = srcObject;
    v12->_snapshot1 = 0;
    if (!persnap)
    {
      if (dword_1ED4BEA64)
      {
        v13 = [(NSManagedObject *)srcObject committedValuesForKeys:0];
      }

      else
      {
        v13 = [(NSManagedObject *)srcObject _newCommittedSnapshotValues];
      }

      v12->_snapshot1 = v13;
    }

    v12->_snapshot2 = cachesnap;
    v12->_snapshot3 = persnap;
    v12->_newVersion = newvers;
    v12->_oldVersion = oldvers;
  }

  return v12;
}

- (NSMergeConflict)init
{
  v3.receiver = self;
  v3.super_class = NSMergeConflict;
  return [(NSMergeConflict *)&v3 init];
}

- (NSMergeConflict)initWithSource:(id)a3 newVersion:(unint64_t)a4 oldVersion:(unint64_t)a5 snapshot1:(id)a6 snapshot2:(id)a7 snapshot3:(id)a8
{
  v16.receiver = self;
  v16.super_class = NSMergeConflict;
  v14 = [(NSMergeConflict *)&v16 init];
  if (v14)
  {
    v14->_source = a3;
    v14->_snapshot1 = a6;
    v14->_snapshot2 = a7;
    v14->_snapshot3 = a8;
    v14->_newVersion = a4;
    v14->_oldVersion = a5;
  }

  return v14;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  snapshot1 = self->_snapshot1;
  if (snapshot1)
  {
    p_snapshot2 = &self->_snapshot2;
    v6 = @"cached row";
    v7 = @"object snapshot";
  }

  else
  {
    snapshot1 = self->_snapshot2;
    p_snapshot2 = &self->_snapshot3;
    v6 = @"database row";
    v7 = @"cached row";
  }

  v8 = *p_snapshot2;
  source = self->_source;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = self->_source;
  if ((isKindOfClass & 1) == 0)
  {
    v11 = [self->_source objectID];
  }

  newVersion = self->_newVersion;
  v13 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v15 = self->_source;
  oldVersion_low = LODWORD(self->_oldVersion);
  if (newVersion)
  {
    v17 = [v13 stringWithFormat:@"%@ (%p) for NSManagedObject (%p) with objectID '%@' with oldVersion = %d and newVersion = %d and old %@ = %@ and new %@ = %@", v14, self, v15, v11, oldVersion_low, self->_newVersion, v7, snapshot1, v6, v8];
  }

  else
  {
    v17 = [v13 stringWithFormat:@"%@ (%p) for NSManagedObject (%p) with objectID '%@' with oldVersion = %d and newVersion = <deleted> and old %@ = %@", v14, self, v15, v11, oldVersion_low, v7, snapshot1, v21, v22, v23];
  }

  v18 = v17;
  v19 = v17;
  objc_autoreleasePoolPop(v3);

  return v18;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSMergeConflict;
  [(NSMergeConflict *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  if ([a3 delegate] && (objc_msgSend(a3, "delegate"), (objc_opt_respondsToSelector() & 1) != 0))
  {
    [a3 encodeObject:self->_source forKey:@"_source"];
    [a3 encodeObject:self->_snapshot1 forKey:@"_snapshot1"];
    [a3 encodeObject:self->_snapshot2 forKey:@"_snapshot2"];
    [a3 encodeObject:self->_snapshot3 forKey:@"_snapshot3"];
    [a3 encodeInteger:self->_oldVersion forKey:@"_oldVersion"];
    newVersion = self->_newVersion;

    [a3 encodeInteger:newVersion forKey:@"_newVersion"];
  }

  else
  {
    v6 = objc_opt_class();
    NSLog(@"Coder = %@ (%@)", a3, v6);
    v7 = [a3 delegate];
    [a3 delegate];
    v8 = objc_opt_class();
    NSLog(@"Delegate = %@ (%@)", v7, v8);
    NSLog(@"CoreData does not support encoding of conflict objects. Conflicts need to be resolved within the scope of a valid managed object context and should not be archived or serialized: %@", self);
    __break(1u);
  }
}

- (NSMergeConflict)initWithCoder:(id)a3
{
  if ([a3 requiresSecureCoding] && (objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend(a3, "userInfo") && !objc_msgSend(objc_msgSend(a3, "userInfo"), "valueForKey:", @"PSCKey") || (objc_msgSend(a3, "requiresSecureCoding") & 1) == 0 && !objc_msgSend(a3, "delegate"))
  {
    NSLog(@"This is probably not where you want to be");
  }

  v5 = [a3 decodeObjectOfClasses:objc_msgSend(a3 forKey:{"allowedClasses"), @"_source"}];
  v6 = [a3 decodeObjectOfClasses:objc_msgSend(a3 forKey:{"allowedClasses"), @"_snapshot1"}];
  v7 = [a3 decodeObjectOfClasses:objc_msgSend(a3 forKey:{"allowedClasses"), @"_snapshot2"}];
  v8 = [a3 decodeObjectOfClasses:objc_msgSend(a3 forKey:{"allowedClasses"), @"_snapshot3"}];
  v9 = [a3 decodeIntegerForKey:@"_oldVersion"];
  v10 = [a3 decodeIntegerForKey:@"_newVersion"];

  return [(NSMergeConflict *)self initWithSource:v5 newVersion:v10 oldVersion:v9 snapshot1:v6 snapshot2:v7 snapshot3:v8];
}

- (void)_doCleanupForXPCStore:(id)a3 context:(id)a4
{
  v7 = -[_NSQueryGenerationToken _generationalComponentForStore:]([a4 _queryGenerationToken], a3);
  v8 = [(NSXPCStore *)a3 _cachedRowForObjectWithID:v7 generation:?];
  v9 = [a4 objectWithID:self->_source];

  self->_source = v9;
  self->_snapshot3 = self->_snapshot2;
  self->_snapshot2 = [v8 _propertyCache];

  self->_snapshot1 = 0;
}

- (id)objectForKey:(id)a3
{
  if (a3 == @"object")
  {
    return self->_source;
  }

  if (a3 == @"snapshot")
  {
    return self->_snapshot1;
  }

  if (a3 == @"cachedRow")
  {
    return self->_snapshot2;
  }

  if (a3 == @"databaseRow")
  {
    return self->_snapshot3;
  }

  if (a3 == @"newVersion")
  {
    goto LABEL_16;
  }

  if (a3 == @"oldVersion")
  {
LABEL_18:
    v6 = MEMORY[0x1E696AD98];
    oldVersion = self->_oldVersion;
    goto LABEL_19;
  }

  if ([a3 isEqual:@"object"])
  {
    return self->_source;
  }

  if ([a3 isEqual:@"snapshot"])
  {
    return self->_snapshot1;
  }

  if ([a3 isEqual:@"cachedRow"])
  {
    return self->_snapshot2;
  }

  if ([a3 isEqual:@"databaseRow"])
  {
    return self->_snapshot3;
  }

  if (![a3 isEqual:@"newVersion"])
  {
    if (![a3 isEqual:@"oldVersion"])
    {
      return 0;
    }

    goto LABEL_18;
  }

LABEL_16:
  v6 = MEMORY[0x1E696AD98];
  oldVersion = self->_newVersion;
LABEL_19:

  return [v6 numberWithUnsignedInteger:oldVersion];
}

- (id)valueForKey:(id)a3
{
  if (a3 == @"object")
  {
    return self->_source;
  }

  if (a3 == @"snapshot")
  {
    return self->_snapshot1;
  }

  if (a3 == @"cachedRow")
  {
    return self->_snapshot2;
  }

  if (a3 == @"databaseRow")
  {
    return self->_snapshot3;
  }

  if (a3 == @"newVersion")
  {
    goto LABEL_17;
  }

  if (a3 == @"oldVersion")
  {
LABEL_19:
    v6 = MEMORY[0x1E696AD98];
    oldVersion = self->_oldVersion;
    goto LABEL_20;
  }

  if ([a3 isEqual:@"object"])
  {
    return self->_source;
  }

  if ([a3 isEqual:@"snapshot"])
  {
    return self->_snapshot1;
  }

  if ([a3 isEqual:@"cachedRow"])
  {
    return self->_snapshot2;
  }

  if ([a3 isEqual:@"databaseRow"])
  {
    return self->_snapshot3;
  }

  if (![a3 isEqual:@"newVersion"])
  {
    if (![a3 isEqual:@"oldVersion"])
    {
      v8.receiver = self;
      v8.super_class = NSMergeConflict;
      return [(NSMergeConflict *)&v8 valueForKey:a3];
    }

    goto LABEL_19;
  }

LABEL_17:
  v6 = MEMORY[0x1E696AD98];
  oldVersion = self->_newVersion;
LABEL_20:

  return [v6 numberWithUnsignedInteger:oldVersion];
}

@end