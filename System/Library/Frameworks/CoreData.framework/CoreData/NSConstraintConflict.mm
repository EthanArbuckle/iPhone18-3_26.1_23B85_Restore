@interface NSConstraintConflict
- (NSConstraintConflict)initWithCoder:(id)coder;
- (NSConstraintConflict)initWithConstraint:(NSArray *)contraint databaseObject:(NSManagedObject *)databaseObject databaseSnapshot:(NSDictionary *)databaseSnapshot conflictingObjects:(NSArray *)conflictingObjects conflictingSnapshots:(NSArray *)conflictingSnapshots;
- (id)description;
- (void)_doCleanupForXPCStore:(id)store context:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSConstraintConflict

- (void)dealloc
{
  self->_constraint = 0;

  self->_databaseSnapshot = 0;
  self->_databaseObject = 0;

  self->_conflictingSnapshots = 0;
  self->_conflictingObjects = 0;

  self->_conflictedValues = 0;
  v3.receiver = self;
  v3.super_class = NSConstraintConflict;
  [(NSConstraintConflict *)&v3 dealloc];
}

- (NSConstraintConflict)initWithConstraint:(NSArray *)contraint databaseObject:(NSManagedObject *)databaseObject databaseSnapshot:(NSDictionary *)databaseSnapshot conflictingObjects:(NSArray *)conflictingObjects conflictingSnapshots:(NSArray *)conflictingSnapshots
{
  v35 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = NSConstraintConflict;
  v12 = [(NSConstraintConflict *)&v33 init];
  if (v12)
  {
    v28 = conflictingSnapshots;
    v12->_constraint = contraint;
    v12->_databaseObject = databaseObject;
    v12->_databaseSnapshot = databaseSnapshot;
    v12->_conflictingObjects = conflictingObjects;
    v12->_conflictedValues = [[NSKnownKeysDictionary alloc] initForKeys:contraint];
    lastObject = [(NSArray *)conflictingObjects lastObject];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = [(NSArray *)contraint countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = v14;
    v16 = *v30;
    while (1)
    {
      v17 = contraint;
      v18 = 0;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v17);
        }

        v19 = *(*(&v29 + 1) + 8 * v18);
        v20 = [v19 componentsSeparatedByString:@"."];
        if ([v20 count] < 2)
        {
          null = [lastObject valueForKey:v19];
          if (!null)
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (![v20 count])
          {
            goto LABEL_15;
          }

          v21 = 0;
          null = 0;
          do
          {
            v23 = [v20 objectAtIndex:v21];
            if (v21)
            {
              v24 = [null objectForKey:v23];
            }

            else
            {
              v24 = [lastObject valueForKey:v23];
            }

            null = v24;
            ++v21;
          }

          while ([v20 count] > v21);
          if (!null)
          {
LABEL_15:
            null = [MEMORY[0x1E695DFB0] null];
          }
        }

        [(NSDictionary *)v12->_conflictedValues setValue:null forKey:v19];
        ++v18;
      }

      while (v18 != v15);
      contraint = v17;
      v25 = [(NSArray *)v17 countByEnumeratingWithState:&v29 objects:v34 count:16];
      v15 = v25;
      if (!v25)
      {
LABEL_21:
        v12->_conflictingSnapshots = v28;
        break;
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  if ([coder delegate] && (objc_msgSend(coder, "delegate"), (objc_opt_respondsToSelector() & 1) != 0))
  {
    [coder encodeObject:self->_constraint forKey:@"_constraint"];
    [coder encodeObject:self->_conflictedValues forKey:@"_conflictedValues"];
    [coder encodeObject:self->_databaseObject forKey:@"_databaseObject"];
    [coder encodeObject:self->_databaseSnapshot forKey:@"_databaseSnapshot"];
    conflictingObjects = self->_conflictingObjects;

    [coder encodeObject:conflictingObjects forKey:@"_conflictingObjects"];
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

- (NSConstraintConflict)initWithCoder:(id)coder
{
  if ([coder requiresSecureCoding] && (objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend(coder, "userInfo") && !objc_msgSend(objc_msgSend(coder, "userInfo"), "valueForKey:", @"PSCKey") || (objc_msgSend(coder, "requiresSecureCoding") & 1) == 0 && !objc_msgSend(coder, "delegate"))
  {
    NSLog(@"This is probably not where you want to be");
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  self->_constraint = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"_constraint"}];
  self->_conflictedValues = [coder decodeObjectOfClasses:objc_msgSend(coder forKey:{"allowedClasses"), @"_conflictedValues"}];
  self->_databaseObject = [coder decodeObjectOfClasses:objc_msgSend(coder forKey:{"allowedClasses"), @"_databaseObject"}];
  self->_databaseSnapshot = [coder decodeObjectOfClasses:objc_msgSend(coder forKey:{"allowedClasses"), @"_databaseSnapshot"}];
  self->_conflictingObjects = [coder decodeObjectOfClasses:objc_msgSend(coder forKey:{"allowedClasses"), @"_conflictingObjects"}];
  return self;
}

- (void)_doCleanupForXPCStore:(id)store context:(id)context
{
  v6 = [context objectWithID:{-[NSArray firstObject](self->_conflictingObjects, "firstObject", store)}];

  self->_conflictingObjects = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v6, 0}];
  v7 = [context objectWithID:self->_databaseObject];

  self->_databaseObject = v7;
  v8 = objc_alloc(MEMORY[0x1E695DEC8]);
  firstObject = [(NSArray *)self->_conflictingObjects firstObject];
  if (firstObject && (v10 = firstObject[6]) != 0)
  {
    v11 = *(v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  self->_conflictingSnapshots = [v8 initWithObjects:{v11, 0}];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [_PFRoutines newArrayOfObjectIDsFromCollection:?];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%p) for constraint %@: database: %@, conflictedObjects: %@", objc_opt_class(), self, -[NSConstraintConflict constraint](self, "constraint"), -[NSManagedObject objectID](-[NSConstraintConflict databaseObject](self, "databaseObject"), "objectID"), v4];
  objc_autoreleasePoolPop(v3);

  return v5;
}

@end