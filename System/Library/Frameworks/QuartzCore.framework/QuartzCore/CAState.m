@interface CAState
+ (void)CAMLParserStartElement:(id)a3;
- (CAState)init;
- (CAState)initWithCoder:(id)a3;
- (id)CAMLTypeForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)addElement:(id)a3;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)foreachLayer:(id)a3;
- (void)removeElement:(id)a3;
- (void)setElements:(id)a3;
@end

@implementation CAState

- (CAState)init
{
  v4 = *MEMORY[0x1E69E9840];
  self->_enabled = 1;
  *&self->_nextDelay = vdupq_n_s64(0x7FF0000000000000uLL);
  v3.receiver = self;
  v3.super_class = CAState;
  return [(CAState *)&v3 init];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CAState;
  [(CAState *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = "";
  if (self->_initial)
  {
    v6 = " initial";
  }

  else
  {
    v6 = "";
  }

  if (self->_locked)
  {
    v5 = " locked";
  }

  return [v3 stringWithFormat:@"{%@:%p %@ basedOn %@ %@%s%s}", v4, self, *&self->_name, self->_elements, v6, v5];
}

- (CAState)initWithCoder:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CAState;
  v4 = [(CAState *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_enabled = 1;
    *&v4->_nextDelay = vdupq_n_s64(0x7FF0000000000000uLL);
    v4->_name = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v5->_basedOn = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"basedOn"];
    v5->_elements = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"elements", "mutableCopy"}];
    if ([a3 containsValueForKey:@"nextDelay"])
    {
      [a3 decodeDoubleForKey:@"nextDelay"];
      v5->_nextDelay = v6;
    }

    if ([a3 containsValueForKey:@"previousDelay"])
    {
      [a3 decodeDoubleForKey:@"previousDelay"];
      v5->_previousDelay = v7;
    }

    if ([a3 containsValueForKey:@"enabled"])
    {
      v5->_enabled = [a3 decodeBoolForKey:@"enabled"];
    }

    if ([a3 containsValueForKey:@"locked"])
    {
      v5->_locked = [a3 decodeBoolForKey:@"locked"];
    }

    if ([a3 containsValueForKey:@"initial"])
    {
      v5->_initial = [a3 decodeBoolForKey:@"initial"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  if (name)
  {
    [a3 encodeObject:name forKey:@"name"];
  }

  basedOn = self->_basedOn;
  if (basedOn)
  {
    [a3 encodeObject:basedOn forKey:@"basedOn"];
  }

  elements = self->_elements;
  if (elements)
  {
    [a3 encodeObject:elements forKey:@"elements"];
  }

  if ((*&self->_nextDelay & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    [a3 encodeDouble:@"nextDelay" forKey:?];
  }

  if ((*&self->_previousDelay & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    [a3 encodeDouble:@"previousDelay" forKey:?];
  }

  if (!self->_enabled)
  {
    [a3 encodeBool:0 forKey:@"enabled"];
  }

  if (self->_locked)
  {
    [a3 encodeBool:1 forKey:@"locked"];
  }

  if (self->_initial)
  {

    [a3 encodeBool:1 forKey:@"initial"];
  }
}

- (id)CAMLTypeForKey:(id)a3
{
  v4 = [CAState CAMLTypeForKey:]::dict;
  if (![CAState CAMLTypeForKey:]::dict)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"name", @"string", @"basedOn", @"BOOL", @"enabled", @"NSArray", @"elements", @"real", @"nextDelay", @"real", @"previousDelay", @"BOOL", @"locked", @"BOOL", @"initial", 0}];
    [CAState CAMLTypeForKey:]::dict = v4;
  }

  return [v4 objectForKey:a3];
}

- (void)encodeWithCAMLWriter:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  name = self->_name;
  if (name)
  {
    [a3 setElementAttribute:name forKey:@"name"];
  }

  basedOn = self->_basedOn;
  if (basedOn)
  {
    [a3 setElementAttribute:basedOn forKey:@"basedOn"];
  }

  if (!self->_enabled)
  {
    [a3 setElementAttribute:@"false" forKey:@"enabled"];
  }

  if (self->_locked)
  {
    [a3 setElementAttribute:@"true" forKey:@"locked"];
  }

  if (self->_initial)
  {
    [a3 setElementAttribute:@"true" forKey:@"initial"];
  }

  if ((*&self->_nextDelay & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v11[0] = *&self->_nextDelay;
    v7 = CACreateStringWithDoubleArray(v11, 1uLL, 0.001);
    if (v7)
    {
      v8 = v7;
      [a3 setElementAttribute:v7 forKey:@"nextDelay"];
      CFRelease(v8);
    }
  }

  if ((*&self->_previousDelay & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v11[0] = *&self->_previousDelay;
    v9 = CACreateStringWithDoubleArray(v11, 1uLL, 0.001);
    if (v9)
    {
      v10 = v9;
      [a3 setElementAttribute:v9 forKey:@"previousDelay"];
      CFRelease(v10);
    }
  }

  if (self->_elements)
  {
    [a3 beginPropertyElement:@"elements"];
    [a3 encodeObject:self->_elements];

    [a3 endElement];
  }
}

- (void)foreachLayer:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  elements = self->_elements;
  v5 = [(NSMutableArray *)elements countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(elements);
        }

        [*(*(&v10 + 1) + 8 * i) foreachLayer:a3];
      }

      v6 = [(NSMutableArray *)elements countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (void)removeElement:(id)a3
{
  elements = self->_elements;
  if (elements)
  {
    [(NSMutableArray *)elements removeObjectIdenticalTo:a3];
  }
}

- (void)addElement:(id)a3
{
  elements = self->_elements;
  if (!elements)
  {
    elements = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_elements = elements;
  }

  [(NSMutableArray *)elements addObject:a3];
}

- (void)setElements:(id)a3
{
  elements = self->_elements;
  if (elements != a3)
  {

    self->_elements = [a3 mutableCopy];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    *(v4 + 1) = [(NSString *)self->_name copy];
    *(v4 + 2) = [(NSString *)self->_basedOn copy];
    *(v4 + 48) = self->_enabled;
    *(v4 + 49) = self->_locked;
    *(v4 + 50) = self->_initial;
    if (self->_elements)
    {
      *(v4 + 3) = objc_alloc_init(MEMORY[0x1E695DF70]);
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      elements = self->_elements;
      v6 = [(NSMutableArray *)elements countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(elements);
            }

            v10 = [*(*(&v13 + 1) + 8 * i) copy];
            [*(v4 + 3) addObject:v10];
          }

          v7 = [(NSMutableArray *)elements countByEnumeratingWithState:&v13 objects:v12 count:16];
        }

        while (v7);
      }
    }

    *(v4 + 4) = *&self->_nextDelay;
    *(v4 + 5) = *&self->_previousDelay;
  }

  return v4;
}

+ (void)CAMLParserStartElement:(id)a3
{
  v4 = objc_alloc_init(a1);
  [a3 setElementValue:v4];
}

@end