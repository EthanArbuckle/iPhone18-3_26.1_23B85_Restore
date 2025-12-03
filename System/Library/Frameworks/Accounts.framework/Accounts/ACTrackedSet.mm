@interface ACTrackedSet
+ (ACTrackedSet)setWithArray:(id)array;
+ (ACTrackedSet)setWithSet:(id)set;
+ (id)set;
- (ACTrackedSet)initWithArray:(id)array;
- (ACTrackedSet)initWithCoder:(id)coder;
- (ACTrackedSet)initWithObjects:(const void *)objects count:(unint64_t)count;
- (ACTrackedSet)initWithSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTrackedSet:(id)set;
- (id)_initWithEnumerable:(id)enumerable count:(unint64_t)count;
- (id)_initWithUnderlyingSet:(id)set changesDictionary:(id)dictionary;
- (id)allModifications;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ACTrackedSet

+ (id)set
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (ACTrackedSet)setWithSet:(id)set
{
  setCopy = set;
  v5 = [[self alloc] initWithSet:setCopy];

  return v5;
}

+ (ACTrackedSet)setWithArray:(id)array
{
  arrayCopy = array;
  v5 = [[self alloc] initWithArray:arrayCopy];

  return v5;
}

- (ACTrackedSet)initWithObjects:(const void *)objects count:(unint64_t)count
{
  v12.receiver = self;
  v12.super_class = ACTrackedSet;
  v6 = [(ACTrackedSet *)&v12 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:objects count:count];
    underlyingSet = v6->_underlyingSet;
    v6->_underlyingSet = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    changesDictionary = v6->_changesDictionary;
    v6->_changesDictionary = v9;
  }

  return v6;
}

- (ACTrackedSet)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (!coderCopy)
  {
    [ACTrackedSet initWithCoder:];
  }

  v17.receiver = self;
  v17.super_class = ACTrackedSet;
  v5 = [(ACTrackedSet *)&v17 init];
  if (v5)
  {
    allowedClasses = [coderCopy allowedClasses];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v8 = [allowedClasses setByAddingObjectsFromArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_underlyingSet"];
    v10 = [v9 mutableCopy];
    underlyingSet = v5->_underlyingSet;
    v5->_underlyingSet = v10;

    v12 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_changesDictionary"];
    v13 = [v12 mutableCopy];
    changesDictionary = v5->_changesDictionary;
    v5->_changesDictionary = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_initWithUnderlyingSet:(id)set changesDictionary:(id)dictionary
{
  setCopy = set;
  dictionaryCopy = dictionary;
  v8 = dictionaryCopy;
  if (setCopy)
  {
    if (dictionaryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ACTrackedSet _initWithUnderlyingSet:changesDictionary:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [ACTrackedSet _initWithUnderlyingSet:changesDictionary:];
LABEL_3:
  v15.receiver = self;
  v15.super_class = ACTrackedSet;
  v9 = [(ACTrackedSet *)&v15 init];
  if (v9)
  {
    v10 = [setCopy mutableCopy];
    underlyingSet = v9->_underlyingSet;
    v9->_underlyingSet = v10;

    v12 = [v8 mutableCopy];
    changesDictionary = v9->_changesDictionary;
    v9->_changesDictionary = v12;
  }

  return v9;
}

- (ACTrackedSet)initWithSet:(id)set
{
  setCopy = set;
  if (!setCopy)
  {
    [ACTrackedSet initWithSet:];
  }

  v5 = -[ACTrackedSet _initWithEnumerable:count:](self, "_initWithEnumerable:count:", setCopy, [setCopy count]);

  return v5;
}

- (ACTrackedSet)initWithArray:(id)array
{
  arrayCopy = array;
  if (!arrayCopy)
  {
    [ACTrackedSet initWithArray:];
  }

  v5 = -[ACTrackedSet _initWithEnumerable:count:](self, "_initWithEnumerable:count:", arrayCopy, [arrayCopy count]);

  return v5;
}

- (id)_initWithEnumerable:(id)enumerable count:(unint64_t)count
{
  v23 = *MEMORY[0x1E69E9840];
  enumerableCopy = enumerable;
  if (!enumerableCopy)
  {
    [ACTrackedSet _initWithEnumerable:count:];
  }

  if (count >> 61 || (v7 = malloc_type_malloc(8 * count, 0x80040B8603338uLL)) == 0)
  {
    [ACTrackedSet _initWithEnumerable:count:];
  }

  v8 = v7;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = enumerableCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v8[v12++] = *(*(&v18 + 1) + 8 * i);
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [(ACTrackedSet *)self initWithObjects:v8 count:count, v18];
  free(v8);

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)allModifications
{
  v2 = [(NSMutableDictionary *)self->_changesDictionary copy];

  return v2;
}

- (BOOL)isEqualToTrackedSet:(id)set
{
  setCopy = set;
  if (self == setCopy)
  {
    v5 = 1;
  }

  else if ([(NSMutableSet *)self->_underlyingSet isEqualToSet:setCopy->_underlyingSet])
  {
    v5 = [(NSMutableDictionary *)self->_changesDictionary isEqualToDictionary:setCopy->_changesDictionary];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  underlyingSet = self->_underlyingSet;
  coderCopy = coder;
  [coderCopy encodeObject:underlyingSet forKey:@"_underlyingSet"];
  [coderCopy encodeObject:self->_changesDictionary forKey:@"_changesDictionary"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ACTrackedSet allocWithZone:zone];
  underlyingSet = self->_underlyingSet;
  changesDictionary = self->_changesDictionary;

  return [(ACTrackedSet *)v4 _initWithUnderlyingSet:underlyingSet changesDictionary:changesDictionary];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [ACMutableTrackedSet allocWithZone:zone];
  underlyingSet = self->_underlyingSet;
  changesDictionary = self->_changesDictionary;

  return [(ACTrackedSet *)v4 _initWithUnderlyingSet:underlyingSet changesDictionary:changesDictionary];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ACTrackedSet *)self isEqualToTrackedSet:equalCopy];
  }

  return v5;
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"coder" object:? file:? lineNumber:? description:?];
}

- (void)_initWithUnderlyingSet:changesDictionary:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"underlyingSet" object:? file:? lineNumber:? description:?];
}

- (void)_initWithUnderlyingSet:changesDictionary:.cold.2()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"changesDictionary" object:? file:? lineNumber:? description:?];
}

- (void)initWithSet:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"set" object:? file:? lineNumber:? description:?];
}

- (void)initWithArray:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"array" object:? file:? lineNumber:? description:?];
}

- (void)_initWithEnumerable:count:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"enumerable" object:? file:? lineNumber:? description:?];
}

- (void)_initWithEnumerable:count:.cold.2()
{
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Failed to allocate backing set buffer" userInfo:0];
  objc_exception_throw(v0);
}

@end