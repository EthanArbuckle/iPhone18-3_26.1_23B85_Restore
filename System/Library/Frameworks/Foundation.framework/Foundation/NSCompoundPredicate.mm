@interface NSCompoundPredicate
+ (NSCompoundPredicate)andPredicateWithSubpredicates:(NSArray *)subpredicates;
+ (NSCompoundPredicate)notPredicateWithSubpredicate:(NSPredicate *)predicate;
+ (NSCompoundPredicate)orPredicateWithSubpredicates:(NSArray *)subpredicates;
+ (id)_operatorForType:(unint64_t)type;
- (BOOL)evaluateWithObject:(id)object substitutionVariables:(id)variables;
- (BOOL)isEqual:(id)equal;
- (NSArray)subpredicates;
- (NSCompoundPredicate)initWithCoder:(NSCoder *)coder;
- (NSCompoundPredicate)initWithType:(NSCompoundPredicateType)type subpredicates:(NSArray *)subpredicates;
- (NSCompoundPredicate)predicateWithSubstitutionVariables:(id)variables;
- (id)_copySubpredicateDescription:(id)description;
- (id)_predicateOperator;
- (id)copyWithZone:(_NSZone *)zone;
- (id)generateMetadataDescription;
- (id)predicateFormat;
- (unint64_t)hash;
- (void)_acceptSubpredicates:(id)subpredicates flags:(unint64_t)flags;
- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags;
- (void)allowEvaluation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSCompoundPredicate

- (NSArray)subpredicates
{
  v2 = self->_subpredicates;

  return v2;
}

- (void)allowEvaluation
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  subpredicates = self->_subpredicates;
  v4 = [(NSArray *)subpredicates countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(subpredicates);
        }

        [*(*(&v10 + 1) + 8 * i) allowEvaluation];
      }

      v5 = [(NSArray *)subpredicates countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = NSCompoundPredicate;
  [(NSPredicate *)&v8 allowEvaluation];
}

- (id)_predicateOperator
{
  v3 = objc_opt_class();
  compoundPredicateType = [(NSCompoundPredicate *)self compoundPredicateType];

  return [v3 _operatorForType:compoundPredicateType];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  self->_subpredicates = 0;
  v3.receiver = self;
  v3.super_class = NSCompoundPredicate;
  [(NSCompoundPredicate *)&v3 dealloc];
}

- (id)predicateFormat
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[NSCompoundPredicate _predicateOperator](self "_predicateOperator")];
  subpredicates = [(NSCompoundPredicate *)self subpredicates];
  v6 = [(NSArray *)subpredicates count];
  compoundPredicateType = [(NSCompoundPredicate *)self compoundPredicateType];
  v8 = compoundPredicateType;
  if (v6 != 1)
  {
    if (v6)
    {
      v25 = v6 - 1;
      v12 = &stru_1EEEFDF90;
      v13 = v12;
      v14 = v6 - 2;
      v26 = v3;
      if (v6 == 2)
      {
        v19 = v12;
      }

      else
      {
        v15 = 0;
        do
        {
          v16 = [(NSArray *)subpredicates objectAtIndex:v15];
          v17 = objc_autoreleasePoolPush();
          v18 = [(NSCompoundPredicate *)self _copySubpredicateDescription:v16];
          objc_autoreleasePoolPop(v17);
          v19 = [[NSString alloc] initWithFormat:@"%@%@ %@ ", v13, v18, v4];

          ++v15;
          v13 = v19;
        }

        while (v14 != v15);
      }

      v22 = [(NSCompoundPredicate *)self _copySubpredicateDescription:[(NSArray *)subpredicates objectAtIndex:v14]];
      v23 = [(NSCompoundPredicate *)self _copySubpredicateDescription:[(NSArray *)subpredicates objectAtIndex:v25]];
      predicateFormat = [[NSString alloc] initWithFormat:@"%@%@ %@ %@", v19, v22, v4, v23];

      v3 = v26;
      goto LABEL_18;
    }

    if (compoundPredicateType == NSAndPredicateType)
    {
      v9 = NSTruePredicate;
    }

    else
    {
      if (compoundPredicateType == NSNotPredicateType)
      {
        objc_autoreleasePoolPop(v3);
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't have a NOT predicate with no subpredicate." userInfo:0]);
      }

      v9 = NSFalsePredicate;
    }

    defaultInstance = [(__objc2_class *)v9 defaultInstance];
    goto LABEL_14;
  }

  defaultInstance = [(NSArray *)subpredicates objectAtIndex:0];
  v11 = defaultInstance;
  if (v8)
  {
LABEL_14:
    predicateFormat = [(__objc2_class *)defaultInstance predicateFormat];
    goto LABEL_18;
  }

  v21 = [(NSCompoundPredicate *)self _copySubpredicateDescription:defaultInstance];
  predicateFormat = [[NSString alloc] initWithFormat:@"%@ %@", v4, v21];

LABEL_18:
  objc_autoreleasePoolPop(v3);

  return predicateFormat;
}

- (unint64_t)hash
{
  subpredicates = [(NSCompoundPredicate *)self subpredicates];

  return [(NSArray *)subpredicates hash];
}

+ (NSCompoundPredicate)andPredicateWithSubpredicates:(NSArray *)subpredicates
{
  v3 = [[self alloc] initWithType:1 subpredicates:subpredicates];

  return v3;
}

+ (NSCompoundPredicate)orPredicateWithSubpredicates:(NSArray *)subpredicates
{
  v3 = [[self alloc] initWithType:2 subpredicates:subpredicates];

  return v3;
}

+ (NSCompoundPredicate)notPredicateWithSubpredicate:(NSPredicate *)predicate
{
  v4 = [self alloc];
  v5 = [v4 initWithType:0 subpredicates:{objc_msgSend(MEMORY[0x1E695DF70], "arrayWithObject:", predicate)}];

  return v5;
}

+ (id)_operatorForType:(unint64_t)type
{
  if (type == 2)
  {
    return +[NSCompoundPredicateOperator orPredicateOperator];
  }

  if (type == 1)
  {
    return +[NSCompoundPredicateOperator andPredicateOperator];
  }

  if (type)
  {
    return 0;
  }

  return +[NSCompoundPredicateOperator notPredicateOperator];
}

- (NSCompoundPredicate)initWithType:(NSCompoundPredicateType)type subpredicates:(NSArray *)subpredicates
{
  v11 = *MEMORY[0x1E69E9840];
  if (type == NSNotPredicateType && (!subpredicates || ![(NSArray *)subpredicates count]))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Tried to construct NSCompoundPredicate for NSNotPredicateType with %@", subpredicates), 0}]);
  }

  v10.receiver = self;
  v10.super_class = NSCompoundPredicate;
  v7 = [(NSCompoundPredicate *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v7->_subpredicates = [(NSArray *)subpredicates copy];
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSCompoundPredicate;
  [(NSPredicate *)&v5 encodeWithCoder:coder];
  [coder encodeObject:-[NSCompoundPredicate subpredicates](self forKey:{"subpredicates"), @"NSSubpredicates"}];
  [coder encodeInteger:-[NSCompoundPredicate compoundPredicateType](self forKey:{"compoundPredicateType"), @"NSCompoundPredicateType"}];
}

- (NSCompoundPredicate)initWithCoder:(NSCoder *)coder
{
  v22 = *MEMORY[0x1E69E9840];
  if (![(NSCoder *)coder allowsKeyedCoding])
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v16.receiver = self;
  v16.super_class = NSCompoundPredicate;
  v5 = [(NSPredicate *)&v16 initWithCoder:coder];
  if (v5)
  {
    allowedClasses = [(NSCoder *)coder allowedClasses];
    v7 = [(NSSet *)allowedClasses count];
    if (v7)
    {
      v8 = [(NSSet *)allowedClasses mutableCopy];
      [v8 unionSet:{+[_NSPredicateUtilities _compoundPredicateClassesForSecureCoding](_NSPredicateUtilities, "_compoundPredicateClassesForSecureCoding")}];
    }

    else
    {
      v8 = +[_NSPredicateUtilities _compoundPredicateClassesForSecureCoding];
    }

    v5->_type = [(NSCoder *)coder decodeIntegerForKey:@"NSCompoundPredicateType"];
    v5->_subpredicates = [(NSCoder *)coder decodeObjectOfClasses:v8 forKey:@"NSSubpredicates"];
    if ((_NSIsNSSet() & 1) != 0 || (_NSIsNSArray() & 1) != 0 || (_NSIsNSOrderedSet() & 1) != 0 || (v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"Malformed set expression (bad subpredicatees)" userInfo:0]) == 0)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      subpredicates = v5->_subpredicates;
      v11 = [(NSArray *)subpredicates countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
LABEL_12:
        v14 = 0;
        while (1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(subpredicates);
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          if (v12 == ++v14)
          {
            v12 = [(NSArray *)subpredicates countByEnumeratingWithState:&v18 objects:v17 count:16];
            if (v12)
            {
              goto LABEL_12;
            }

            goto LABEL_18;
          }
        }

        v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"Malformed set expression (bad subpredicate)" userInfo:0];
        if (v7)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }

LABEL_18:
      v9 = 0;
    }

    if (v7)
    {
LABEL_20:
    }

LABEL_21:
    if (v9)
    {

      objc_exception_throw(v9);
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x1E69E9840];
  subpredicates = [(NSCompoundPredicate *)self subpredicates];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NSArray *)subpredicates countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(subpredicates);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) copy];
        [v5 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)subpredicates countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v7);
  }

  v11 = [objc_alloc(objc_opt_class()) initWithType:-[NSCompoundPredicate compoundPredicateType](self subpredicates:{"compoundPredicateType"), v5}];

  return v11;
}

- (id)_copySubpredicateDescription:(id)description
{
  if (objc_opt_isKindOfClass())
  {
    return -[NSString initWithFormat:]([NSString alloc], "initWithFormat:", @"(%@)", [description description]);
  }

  v5 = [description description];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  compoundPredicateType = [(NSCompoundPredicate *)self compoundPredicateType];
  if (compoundPredicateType != [equal compoundPredicateType])
  {
    return 0;
  }

  subpredicates = [(NSCompoundPredicate *)self subpredicates];
  subpredicates2 = [equal subpredicates];

  return [(NSArray *)subpredicates isEqual:subpredicates2];
}

- (BOOL)evaluateWithObject:(id)object substitutionVariables:(id)variables
{
  v21 = *MEMORY[0x1E69E9840];
  if (![(NSPredicate *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This predicate has evaluation disabled" userInfo:0]);
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  if (!variables || (v9 = variables, object_getClass(variables) != _NSNestedDictionary))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = objc_opt_class();
    v9 = &v15;
    object_setClass(&v15, v10);
    *&v16 = variables;
  }

  _predicateOperator = [(NSCompoundPredicate *)self _predicateOperator];
  subpredicates = [(NSCompoundPredicate *)self subpredicates];
  v13 = 0;
  if (_predicateOperator && subpredicates)
  {
    v13 = [_predicateOperator evaluatePredicates:subpredicates withObject:object substitutionVariables:v9];
  }

  if (v9 != variables)
  {
  }

  if (v8)
  {
    [(_NSPerformanceMeter *)v8 invalidate];
  }

  objc_autoreleasePoolPop(v7);
  return v13;
}

- (void)_acceptSubpredicates:(id)subpredicates flags:(unint64_t)flags
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subpredicates = [(NSCompoundPredicate *)self subpredicates];
  v7 = [(NSArray *)subpredicates countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(subpredicates);
        }

        [*(*(&v12 + 1) + 8 * v10++) acceptVisitor:subpredicates flags:flags];
      }

      while (v8 != v10);
      v8 = [(NSArray *)subpredicates countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v8);
  }
}

- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags
{
  v7 = objc_autoreleasePoolPush();
  if ((flags & 4) != 0)
  {
    [visitor visitPredicate:self];
    [(NSCompoundPredicate *)self _acceptSubpredicates:visitor flags:flags];
  }

  else
  {
    [(NSCompoundPredicate *)self _acceptSubpredicates:visitor flags:flags];
    [visitor visitPredicate:self];
  }

  objc_autoreleasePoolPop(v7);
}

- (NSCompoundPredicate)predicateWithSubstitutionVariables:(id)variables
{
  v19 = *MEMORY[0x1E69E9840];
  if (!variables)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot substitute a nil substitution dictionary." userInfo:0]);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_autoreleasePoolPush();
  subpredicates = [(NSCompoundPredicate *)self subpredicates];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(NSArray *)subpredicates countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(subpredicates);
        }

        [v5 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * v11++), "predicateWithSubstitutionVariables:", variables)}];
      }

      while (v9 != v11);
      v9 = [(NSArray *)subpredicates countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v6);
  v12 = [objc_alloc(objc_opt_class()) initWithType:-[NSCompoundPredicate compoundPredicateType](self subpredicates:{"compoundPredicateType"), v5}];

  return v12;
}

- (id)generateMetadataDescription
{
  v32 = *MEMORY[0x1E69E9840];
  compoundPredicateType = [(NSCompoundPredicate *)self compoundPredicateType];
  subpredicates = [(NSCompoundPredicate *)self subpredicates];
  v5 = subpredicates;
  if (compoundPredicateType == NSOrPredicateType)
  {
    if ([(NSArray *)subpredicates count]<= 1)
    {
      v20 = [NSString stringWithFormat:@"NSOrPredicateType NSCompoundPredicate with wrong number (%ld) of subpredicates given to NSMetadataQuery (%@)", [(NSArray *)v5 count], self];
      goto LABEL_32;
    }

    v7 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v5);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          if (v16)
          {
            [v7 appendString:@" || "];
          }

          [v7 appendFormat:@"(%@)", objc_msgSend(v19, "generateMetadataDescription")];
          v16 = 1;
        }

        v15 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v22 count:16];
      }

      while (v15);
    }
  }

  else
  {
    if (compoundPredicateType != NSAndPredicateType)
    {
      if (compoundPredicateType)
      {
        v20 = [NSString stringWithFormat:@"Unknown type of NSCompoundPredicate given to NSMetadataQuery (%@)", self, v21];
      }

      else
      {
        if ([(NSArray *)subpredicates count]== 1)
        {
          return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"! (%@)", [-[NSArray objectAtIndex:](v5 objectAtIndex:{0), "generateMetadataDescription"}]);
        }

        v20 = [NSString stringWithFormat:@"NSNotPredicateType NSCompoundPredicate with wrong number (%ld) of subpredicates given to NSMetadataQuery (%@)", [(NSArray *)v5 count], self];
      }

LABEL_32:
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0]);
    }

    if ([(NSArray *)subpredicates count]<= 1)
    {
      v20 = [NSString stringWithFormat:@"NSAndPredicateType NSCompoundPredicate with wrong number (%ld) of subpredicates given to NSMetadataQuery (%@)", [(NSArray *)v5 count], self];
      goto LABEL_32;
    }

    v7 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v29;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v28 + 1) + 8 * j);
          if (v10)
          {
            [v7 appendString:@" && "];
          }

          [v7 appendFormat:@"(%@)", objc_msgSend(v13, "generateMetadataDescription")];
          v10 = 1;
        }

        v9 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v27 count:16];
      }

      while (v9);
    }
  }

  return [NSString stringWithString:v7];
}

@end