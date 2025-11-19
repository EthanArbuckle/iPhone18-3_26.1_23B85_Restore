@interface _UTTaggedType
+ (void)initialize;
- (BOOL)conformsToType:(id)a3;
- (id)_localizedDescriptionWithPreferredLocalizations:(id)a3;
- (id)_parentTypes;
- (id)_preferredTagOfClass:(id)a3;
- (id)identifier;
- (id)supertypes;
- (id)tags;
@end

@implementation _UTTaggedType

+ (void)initialize
{
  if (qword_1ED40DBF8 != -1)
  {
    dispatch_once(&qword_1ED40DBF8, &__block_literal_global_0);
  }
}

- (id)identifier
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ self;
  v4 = 0xFFFFFFFFFFFFFFLL;
  if ((~v3 & 7) == 0)
  {
    v4 = 0xFFFFFFFFFFFFFLL;
  }

  v9 = v3 >> 35;
  *__s1 = v3 >> 3;
  v10 = (v4 & (v3 >> 3)) >> 48;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:__s1 length:strnlen(__s1 encoding:6uLL) freeWhenDone:{4, 0}];
  DynamicIdentifierForTaggedPointerObject = _UTTypeCreateDynamicIdentifierForTaggedPointerObject();

  return DynamicIdentifierForTaggedPointerObject;
}

- (id)_localizedDescriptionWithPreferredLocalizations:(id)a3
{
  if (!a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UTTaggedType.mm" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"preferredLocalizations != nil"}];
  }

  return 0;
}

- (id)_parentTypes
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 0xC000000000000007;
  }

  v3 = v2 ^ self;
  v4 = objc_alloc(MEMORY[0x1E695DFB8]);
  if ((v3 & 0x8000000000000) != 0)
  {
    v5 = &off_1ED40D260;
  }

  else
  {
    v5 = &off_1ED40C640;
  }

  v6 = [v4 initWithObject:v5];

  return v6;
}

- (id)_preferredTagOfClass:(id)a3
{
  if ([a3 isEqual:@"public.filename-extension"])
  {
    v4 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v4 = 0;
    }

    v5 = v4 ^ self;
    v6 = 0xFFFFFFFFFFFFFFLL;
    if ((~v5 & 7) == 0)
    {
      v6 = 0xFFFFFFFFFFFFFLL;
    }

    v10 = v5 >> 35;
    *__s1 = v5 >> 3;
    v11 = (v6 & (v5 >> 3)) >> 48;
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:__s1 length:strnlen(__s1 encoding:{6uLL), 4}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)conformsToType:(id)a3
{
  if (!a3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UTTaggedType.mm" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];
  }

  if (a3 == self)
  {
    return 1;
  }

  if ([a3 isDynamic])
  {
    v5 = [a3 identifier];
    v6 = [(_UTTaggedType *)self identifier];
    v7 = _UTIdentifiersAreEqual(v5, v6);

    return v7;
  }

  v9 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v9 = 0xC000000000000007;
  }

  if (((v9 ^ self) & 0x8000000000000) != 0)
  {
    v7 = 1;
    if (a3 == &UniformTypeIdentifiers::CoreTypes::constants || a3 == &off_1ED40D260 || a3 == &off_1ED40C660)
    {
      return v7;
    }

    v10 = &off_1ED40D260;
  }

  else
  {
    v7 = 1;
    if (a3 == &off_1ED40C640 || a3 == &UniformTypeIdentifiers::CoreTypes::constants)
    {
      return v7;
    }

    v10 = &off_1ED40C640;
  }

  return [v10 conformsToType:a3];
}

- (id)supertypes
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 0xC000000000000007;
  }

  if (((v2 ^ self) & 0x8000000000000) != 0)
  {
    v7 = &UniformTypeIdentifiers::CoreTypes::constants;
    v12 = &UniformTypeIdentifiers::CoreTypes::constants;
    v8 = &off_1ED40C660;
    v13 = &off_1ED40C660;
    v9 = &off_1ED40D260;
    v14 = &off_1ED40D260;
    v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v12 count:3];
    for (i = 2; i != -1; --i)
    {
    }
  }

  else
  {
    v3 = &UniformTypeIdentifiers::CoreTypes::constants;
    v12 = &UniformTypeIdentifiers::CoreTypes::constants;
    v4 = &off_1ED40C640;
    v13 = &off_1ED40C640;
    v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v12 count:2];
    for (j = 1; j != -1; --j)
    {
    }
  }

  return v5;
}

- (id)tags
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"public.filename-extension";
  v2 = [(UTType *)self preferredFilenameExtension];
  v7 = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end