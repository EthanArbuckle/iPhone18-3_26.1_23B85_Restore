@interface NSPersonNameComponents
+ (id)__componentsRequiredForScriptDetectionWithPhoneticDesired:(BOOL)desired;
+ (id)_allComponents;
+ (id)_allProperties;
- (BOOL)_isEmpty;
- (BOOL)isEqualToComponents:(id)components;
- (NSPersonNameComponents)init;
- (NSPersonNameComponents)initWithCoder:(id)coder;
- (id)_scriptDeterminingStringRepresentationWithPhoneticDesired:(BOOL)desired;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSPersonNameComponents

- (NSPersonNameComponents)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSPersonNameComponents;
  v2 = [(NSPersonNameComponents *)&v4 init];
  if (v2)
  {
    v2->_private = objc_alloc_init(_NSPersonNameComponentsData);
  }

  return v2;
}

- (BOOL)_isEmpty
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 1;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  _allProperties = [objc_opt_class() _allProperties];
  v4 = [_allProperties countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = *v15;
  v7 = 1;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(_allProperties);
      }

      v9 = [(NSPersonNameComponents *)self valueForKeyPath:*(*(&v14 + 1) + 8 * i)];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 length] == 0;
      }

      else
      {
        v10 = v9 == 0;
      }

      v11 = v10;
      v7 &= v11;
    }

    v5 = [_allProperties countByEnumeratingWithState:&v14 objects:v13 count:16];
  }

  while (v5);
  return v7;
}

+ (id)_allProperties
{
  v3[7] = *MEMORY[0x1E69E9840];
  v3[0] = @"givenName";
  v3[1] = @"familyName";
  v3[2] = @"middleName";
  v3[3] = @"namePrefix";
  v3[4] = @"nameSuffix";
  v3[5] = @"nickname";
  v3[6] = @"phoneticRepresentation";
  return [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v3, 7)}];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSPersonNameComponents;
  [(NSPersonNameComponents *)&v3 dealloc];
}

+ (id)_allComponents
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = @"givenName";
  v3[1] = @"familyName";
  v3[2] = @"middleName";
  v3[3] = @"namePrefix";
  v3[4] = @"nameSuffix";
  v3[5] = @"nickname";
  return [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v3, 6)}];
}

- (unint64_t)hash
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v3 = +[NSPersonNameComponents _allProperties];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__NSPersonNameComponents_hash__block_invoke;
  v6[3] = &unk_1E69F3F80;
  v6[4] = self;
  v6[5] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __30__NSPersonNameComponents_hash__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) valueForKey:a2];
  v4 = *(*(*(a1 + 40) + 8) + 24);
  result = [v3 hash];
  *(*(*(a1 + 40) + 8) + 24) = result - v4 + 32 * v4;
  return result;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSPersonNameComponents;
  return [NSString stringWithFormat:@"%@ {givenName = %@, familyName = %@, middleName = %@, namePrefix = %@, nameSuffix = %@, nickname = %@ phoneticRepresentation = %@ }", [(NSPersonNameComponents *)&v3 description], [(NSPersonNameComponents *)self givenName], [(NSPersonNameComponents *)self familyName], [(NSPersonNameComponents *)self middleName], [(NSPersonNameComponents *)self namePrefix], [(NSPersonNameComponents *)self nameSuffix], [(NSPersonNameComponents *)self nickname], [(NSPersonNameComponents *)self phoneticRepresentation]];
}

- (NSPersonNameComponents)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPersonNameComponents cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  if (self && [coder containsValueForKey:@"NS.nameComponentsPrivate"])
  {
    self->_private = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NS.nameComponentsPrivate", "copy"}];
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPersonNameComponents cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5 = self->_private;

  [coder encodeObject:v5 forKey:@"NS.nameComponentsPrivate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  v5[1] = [self->_private copyWithZone:zone];
  return v5;
}

- (BOOL)isEqualToComponents:(id)components
{
  componentsCopy = components;
  v12 = *MEMORY[0x1E69E9840];
  if (components)
  {
    v5 = +[NSPersonNameComponents _allProperties];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__NSPersonNameComponents_isEqualToComponents___block_invoke;
    v7[3] = &unk_1E69F3F58;
    v7[4] = self;
    v7[5] = componentsCopy;
    v7[6] = &v8;
    [v5 enumerateObjectsUsingBlock:v7];
    LOBYTE(componentsCopy) = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return componentsCopy & 1;
}

uint64_t __46__NSPersonNameComponents_isEqualToComponents___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) valueForKey:a2];
  result = [*(a1 + 40) valueForKey:a2];
  if (result)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || v6 && (!result || (result = [v6 isEqual:result], (result & 1) == 0)))
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

+ (id)__componentsRequiredForScriptDetectionWithPhoneticDesired:(BOOL)desired
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (desired)
  {
    v6[0] = @"phoneticRepresentation.givenName";
    v6[1] = @"phoneticRepresentation.middleName";
    v6[2] = @"phoneticRepresentation.familyName";
    v3 = v6;
  }

  else
  {
    v5[0] = @"givenName";
    v5[1] = @"middleName";
    v5[2] = @"familyName";
    v3 = v5;
  }

  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
}

- (id)_scriptDeterminingStringRepresentationWithPhoneticDesired:(BOOL)desired
{
  desiredCopy = desired;
  v18 = *MEMORY[0x1E69E9840];
  v5 = +[(NSString *)NSMutableString];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [NSPersonNameComponents __componentsRequiredForScriptDetectionWithPhoneticDesired:desiredCopy];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSPersonNameComponents *)self valueForKeyPath:*(*(&v14 + 1) + 8 * v10)];
        if (v11)
        {
          [(NSString *)v5 appendString:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }

  return v5;
}

@end