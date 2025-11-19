@interface NSConstraintConflict
- (NSConstraintConflict)initWithCoder:(id)a3;
- (NSConstraintConflict)initWithConstraint:(NSArray *)contraint databaseObject:(NSManagedObject *)databaseObject databaseSnapshot:(NSDictionary *)databaseSnapshot conflictingObjects:(NSArray *)conflictingObjects conflictingSnapshots:(NSArray *)conflictingSnapshots;
- (id)description;
- (void)_doCleanupForXPCStore:(id)a3 context:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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
    v13 = [(NSArray *)conflictingObjects lastObject];
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
          v22 = [v13 valueForKey:v19];
          if (!v22)
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
          v22 = 0;
          do
          {
            v23 = [v20 objectAtIndex:v21];
            if (v21)
            {
              v24 = [v22 objectForKey:v23];
            }

            else
            {
              v24 = [v13 valueForKey:v23];
            }

            v22 = v24;
            ++v21;
          }

          while ([v20 count] > v21);
          if (!v22)
          {
LABEL_15:
            v22 = [MEMORY[0x1E695DFB0] null];
          }
        }

        [(NSDictionary *)v12->_conflictedValues setValue:v22 forKey:v19];
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

- (void)encodeWithCoder:(id)a3
{
  if ([a3 delegate] && (objc_msgSend(a3, "delegate"), (objc_opt_respondsToSelector() & 1) != 0))
  {
    [a3 encodeObject:self->_constraint forKey:@"_constraint"];
    [a3 encodeObject:self->_conflictedValues forKey:@"_conflictedValues"];
    [a3 encodeObject:self->_databaseObject forKey:@"_databaseObject"];
    [a3 encodeObject:self->_databaseSnapshot forKey:@"_databaseSnapshot"];
    conflictingObjects = self->_conflictingObjects;

    [a3 encodeObject:conflictingObjects forKey:@"_conflictingObjects"];
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

- (NSConstraintConflict)initWithCoder:(id)a3
{
  if ([a3 requiresSecureCoding] && (objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend(a3, "userInfo") && !objc_msgSend(objc_msgSend(a3, "userInfo"), "valueForKey:", @"PSCKey") || (objc_msgSend(a3, "requiresSecureCoding") & 1) == 0 && !objc_msgSend(a3, "delegate"))
  {
    NSLog(@"This is probably not where you want to be");
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  self->_constraint = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"_constraint"}];
  self->_conflictedValues = [a3 decodeObjectOfClasses:objc_msgSend(a3 forKey:{"allowedClasses"), @"_conflictedValues"}];
  self->_databaseObject = [a3 decodeObjectOfClasses:objc_msgSend(a3 forKey:{"allowedClasses"), @"_databaseObject"}];
  self->_databaseSnapshot = [a3 decodeObjectOfClasses:objc_msgSend(a3 forKey:{"allowedClasses"), @"_databaseSnapshot"}];
  self->_conflictingObjects = [a3 decodeObjectOfClasses:objc_msgSend(a3 forKey:{"allowedClasses"), @"_conflictingObjects"}];
  return self;
}

- (void)_doCleanupForXPCStore:(id)a3 context:(id)a4
{
  v6 = [a4 objectWithID:{-[NSArray firstObject](self->_conflictingObjects, "firstObject", a3)}];

  self->_conflictingObjects = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v6, 0}];
  v7 = [a4 objectWithID:self->_databaseObject];

  self->_databaseObject = v7;
  v8 = objc_alloc(MEMORY[0x1E695DEC8]);
  v9 = [(NSArray *)self->_conflictingObjects firstObject];
  if (v9 && (v10 = v9[6]) != 0)
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