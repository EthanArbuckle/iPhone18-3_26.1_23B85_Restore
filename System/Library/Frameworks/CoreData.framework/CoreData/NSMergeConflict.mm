@interface NSMergeConflict
- (NSMergeConflict)init;
- (NSMergeConflict)initWithCoder:(id)coder;
- (NSMergeConflict)initWithSource:(NSManagedObject *)srcObject newVersion:(NSUInteger)newvers oldVersion:(NSUInteger)oldvers cachedSnapshot:(NSDictionary *)cachesnap persistedSnapshot:(NSDictionary *)persnap;
- (NSMergeConflict)initWithSource:(id)source newVersion:(unint64_t)version oldVersion:(unint64_t)oldVersion snapshot1:(id)snapshot1 snapshot2:(id)snapshot2 snapshot3:(id)snapshot3;
- (id)description;
- (id)objectForKey:(id)key;
- (id)valueForKey:(id)key;
- (void)_doCleanupForXPCStore:(id)store context:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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
        _newCommittedSnapshotValues = [(NSManagedObject *)srcObject committedValuesForKeys:0];
      }

      else
      {
        _newCommittedSnapshotValues = [(NSManagedObject *)srcObject _newCommittedSnapshotValues];
      }

      v12->_snapshot1 = _newCommittedSnapshotValues;
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

- (NSMergeConflict)initWithSource:(id)source newVersion:(unint64_t)version oldVersion:(unint64_t)oldVersion snapshot1:(id)snapshot1 snapshot2:(id)snapshot2 snapshot3:(id)snapshot3
{
  v16.receiver = self;
  v16.super_class = NSMergeConflict;
  v14 = [(NSMergeConflict *)&v16 init];
  if (v14)
  {
    v14->_source = source;
    v14->_snapshot1 = snapshot1;
    v14->_snapshot2 = snapshot2;
    v14->_snapshot3 = snapshot3;
    v14->_newVersion = version;
    v14->_oldVersion = oldVersion;
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
  objectID = self->_source;
  if ((isKindOfClass & 1) == 0)
  {
    objectID = [self->_source objectID];
  }

  newVersion = self->_newVersion;
  v13 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v15 = self->_source;
  oldVersion_low = LODWORD(self->_oldVersion);
  if (newVersion)
  {
    v17 = [v13 stringWithFormat:@"%@ (%p) for NSManagedObject (%p) with objectID '%@' with oldVersion = %d and newVersion = %d and old %@ = %@ and new %@ = %@", v14, self, v15, objectID, oldVersion_low, self->_newVersion, v7, snapshot1, v6, v8];
  }

  else
  {
    v17 = [v13 stringWithFormat:@"%@ (%p) for NSManagedObject (%p) with objectID '%@' with oldVersion = %d and newVersion = <deleted> and old %@ = %@", v14, self, v15, objectID, oldVersion_low, v7, snapshot1, v21, v22, v23];
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

- (void)encodeWithCoder:(id)coder
{
  if ([coder delegate] && (objc_msgSend(coder, "delegate"), (objc_opt_respondsToSelector() & 1) != 0))
  {
    [coder encodeObject:self->_source forKey:@"_source"];
    [coder encodeObject:self->_snapshot1 forKey:@"_snapshot1"];
    [coder encodeObject:self->_snapshot2 forKey:@"_snapshot2"];
    [coder encodeObject:self->_snapshot3 forKey:@"_snapshot3"];
    [coder encodeInteger:self->_oldVersion forKey:@"_oldVersion"];
    newVersion = self->_newVersion;

    [coder encodeInteger:newVersion forKey:@"_newVersion"];
  }

  else
  {
    v6 = objc_opt_class();
    NSLog(@"Coder = %@ (%@)", coder, v6);
    delegate = [coder delegate];
    [coder delegate];
    v8 = objc_opt_class();
    NSLog(@"Delegate = %@ (%@)", delegate, v8);
    NSLog(@"CoreData does not support encoding of conflict objects. Conflicts need to be resolved within the scope of a valid managed object context and should not be archived or serialized: %@", self);
    __break(1u);
  }
}

- (NSMergeConflict)initWithCoder:(id)coder
{
  if ([coder requiresSecureCoding] && (objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend(coder, "userInfo") && !objc_msgSend(objc_msgSend(coder, "userInfo"), "valueForKey:", @"PSCKey") || (objc_msgSend(coder, "requiresSecureCoding") & 1) == 0 && !objc_msgSend(coder, "delegate"))
  {
    NSLog(@"This is probably not where you want to be");
  }

  v5 = [coder decodeObjectOfClasses:objc_msgSend(coder forKey:{"allowedClasses"), @"_source"}];
  v6 = [coder decodeObjectOfClasses:objc_msgSend(coder forKey:{"allowedClasses"), @"_snapshot1"}];
  v7 = [coder decodeObjectOfClasses:objc_msgSend(coder forKey:{"allowedClasses"), @"_snapshot2"}];
  v8 = [coder decodeObjectOfClasses:objc_msgSend(coder forKey:{"allowedClasses"), @"_snapshot3"}];
  v9 = [coder decodeIntegerForKey:@"_oldVersion"];
  v10 = [coder decodeIntegerForKey:@"_newVersion"];

  return [(NSMergeConflict *)self initWithSource:v5 newVersion:v10 oldVersion:v9 snapshot1:v6 snapshot2:v7 snapshot3:v8];
}

- (void)_doCleanupForXPCStore:(id)store context:(id)context
{
  v7 = -[_NSQueryGenerationToken _generationalComponentForStore:]([context _queryGenerationToken], store);
  v8 = [(NSXPCStore *)store _cachedRowForObjectWithID:v7 generation:?];
  v9 = [context objectWithID:self->_source];

  self->_source = v9;
  self->_snapshot3 = self->_snapshot2;
  self->_snapshot2 = [v8 _propertyCache];

  self->_snapshot1 = 0;
}

- (id)objectForKey:(id)key
{
  if (key == @"object")
  {
    return self->_source;
  }

  if (key == @"snapshot")
  {
    return self->_snapshot1;
  }

  if (key == @"cachedRow")
  {
    return self->_snapshot2;
  }

  if (key == @"databaseRow")
  {
    return self->_snapshot3;
  }

  if (key == @"newVersion")
  {
    goto LABEL_16;
  }

  if (key == @"oldVersion")
  {
LABEL_18:
    v6 = MEMORY[0x1E696AD98];
    oldVersion = self->_oldVersion;
    goto LABEL_19;
  }

  if ([key isEqual:@"object"])
  {
    return self->_source;
  }

  if ([key isEqual:@"snapshot"])
  {
    return self->_snapshot1;
  }

  if ([key isEqual:@"cachedRow"])
  {
    return self->_snapshot2;
  }

  if ([key isEqual:@"databaseRow"])
  {
    return self->_snapshot3;
  }

  if (![key isEqual:@"newVersion"])
  {
    if (![key isEqual:@"oldVersion"])
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

- (id)valueForKey:(id)key
{
  if (key == @"object")
  {
    return self->_source;
  }

  if (key == @"snapshot")
  {
    return self->_snapshot1;
  }

  if (key == @"cachedRow")
  {
    return self->_snapshot2;
  }

  if (key == @"databaseRow")
  {
    return self->_snapshot3;
  }

  if (key == @"newVersion")
  {
    goto LABEL_17;
  }

  if (key == @"oldVersion")
  {
LABEL_19:
    v6 = MEMORY[0x1E696AD98];
    oldVersion = self->_oldVersion;
    goto LABEL_20;
  }

  if ([key isEqual:@"object"])
  {
    return self->_source;
  }

  if ([key isEqual:@"snapshot"])
  {
    return self->_snapshot1;
  }

  if ([key isEqual:@"cachedRow"])
  {
    return self->_snapshot2;
  }

  if ([key isEqual:@"databaseRow"])
  {
    return self->_snapshot3;
  }

  if (![key isEqual:@"newVersion"])
  {
    if (![key isEqual:@"oldVersion"])
    {
      v8.receiver = self;
      v8.super_class = NSMergeConflict;
      return [(NSMergeConflict *)&v8 valueForKey:key];
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