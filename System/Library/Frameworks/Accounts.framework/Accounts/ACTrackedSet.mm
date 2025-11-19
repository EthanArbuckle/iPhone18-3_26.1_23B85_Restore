@interface ACTrackedSet
+ (ACTrackedSet)setWithArray:(id)a3;
+ (ACTrackedSet)setWithSet:(id)a3;
+ (id)set;
- (ACTrackedSet)initWithArray:(id)a3;
- (ACTrackedSet)initWithCoder:(id)a3;
- (ACTrackedSet)initWithObjects:(const void *)a3 count:(unint64_t)a4;
- (ACTrackedSet)initWithSet:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTrackedSet:(id)a3;
- (id)_initWithEnumerable:(id)a3 count:(unint64_t)a4;
- (id)_initWithUnderlyingSet:(id)a3 changesDictionary:(id)a4;
- (id)allModifications;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ACTrackedSet

+ (id)set
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (ACTrackedSet)setWithSet:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSet:v4];

  return v5;
}

+ (ACTrackedSet)setWithArray:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithArray:v4];

  return v5;
}

- (ACTrackedSet)initWithObjects:(const void *)a3 count:(unint64_t)a4
{
  v12.receiver = self;
  v12.super_class = ACTrackedSet;
  v6 = [(ACTrackedSet *)&v12 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:a3 count:a4];
    underlyingSet = v6->_underlyingSet;
    v6->_underlyingSet = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    changesDictionary = v6->_changesDictionary;
    v6->_changesDictionary = v9;
  }

  return v6;
}

- (ACTrackedSet)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [ACTrackedSet initWithCoder:];
  }

  v17.receiver = self;
  v17.super_class = ACTrackedSet;
  v5 = [(ACTrackedSet *)&v17 init];
  if (v5)
  {
    v6 = [v4 allowedClasses];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v8 = [v6 setByAddingObjectsFromArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_underlyingSet"];
    v10 = [v9 mutableCopy];
    underlyingSet = v5->_underlyingSet;
    v5->_underlyingSet = v10;

    v12 = [v4 decodeObjectOfClasses:v8 forKey:@"_changesDictionary"];
    v13 = [v12 mutableCopy];
    changesDictionary = v5->_changesDictionary;
    v5->_changesDictionary = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_initWithUnderlyingSet:(id)a3 changesDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
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
    v10 = [v6 mutableCopy];
    underlyingSet = v9->_underlyingSet;
    v9->_underlyingSet = v10;

    v12 = [v8 mutableCopy];
    changesDictionary = v9->_changesDictionary;
    v9->_changesDictionary = v12;
  }

  return v9;
}

- (ACTrackedSet)initWithSet:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [ACTrackedSet initWithSet:];
  }

  v5 = -[ACTrackedSet _initWithEnumerable:count:](self, "_initWithEnumerable:count:", v4, [v4 count]);

  return v5;
}

- (ACTrackedSet)initWithArray:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [ACTrackedSet initWithArray:];
  }

  v5 = -[ACTrackedSet _initWithEnumerable:count:](self, "_initWithEnumerable:count:", v4, [v4 count]);

  return v5;
}

- (id)_initWithEnumerable:(id)a3 count:(unint64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    [ACTrackedSet _initWithEnumerable:count:];
  }

  if (a4 >> 61 || (v7 = malloc_type_malloc(8 * a4, 0x80040B8603338uLL)) == 0)
  {
    [ACTrackedSet _initWithEnumerable:count:];
  }

  v8 = v7;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
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

  v15 = [(ACTrackedSet *)self initWithObjects:v8 count:a4, v18];
  free(v8);

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)allModifications
{
  v2 = [(NSMutableDictionary *)self->_changesDictionary copy];

  return v2;
}

- (BOOL)isEqualToTrackedSet:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else if ([(NSMutableSet *)self->_underlyingSet isEqualToSet:v4->_underlyingSet])
  {
    v5 = [(NSMutableDictionary *)self->_changesDictionary isEqualToDictionary:v4->_changesDictionary];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  underlyingSet = self->_underlyingSet;
  v5 = a3;
  [v5 encodeObject:underlyingSet forKey:@"_underlyingSet"];
  [v5 encodeObject:self->_changesDictionary forKey:@"_changesDictionary"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ACTrackedSet allocWithZone:a3];
  underlyingSet = self->_underlyingSet;
  changesDictionary = self->_changesDictionary;

  return [(ACTrackedSet *)v4 _initWithUnderlyingSet:underlyingSet changesDictionary:changesDictionary];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [ACMutableTrackedSet allocWithZone:a3];
  underlyingSet = self->_underlyingSet;
  changesDictionary = self->_changesDictionary;

  return [(ACTrackedSet *)v4 _initWithUnderlyingSet:underlyingSet changesDictionary:changesDictionary];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ACTrackedSet *)self isEqualToTrackedSet:v4];
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