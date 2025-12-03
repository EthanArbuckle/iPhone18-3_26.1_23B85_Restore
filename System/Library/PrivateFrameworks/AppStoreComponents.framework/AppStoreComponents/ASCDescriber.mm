@interface ASCDescriber
- (ASCDescriber)initWithObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (id)describeObject;
- (id)describeProperties;
- (id)description;
- (id)finalizeDescription;
- (unint64_t)hash;
- (void)addBool:(BOOL)bool withName:(id)name;
- (void)addDouble:(double)double withName:(id)name;
- (void)addInt64:(int64_t)int64 withName:(id)name;
- (void)addInteger:(int64_t)integer withName:(id)name;
- (void)addObject:(id)object withName:(id)name;
- (void)addSensitiveObject:(id)object withName:(id)name;
- (void)addUInt64:(unint64_t)int64 withName:(id)name;
- (void)addUnsignedInteger:(unint64_t)integer withName:(id)name;
@end

@implementation ASCDescriber

- (ASCDescriber)initWithObject:(id)object
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = ASCDescriber;
  v6 = [(ASCDescriber *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, object);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    properties = v7->_properties;
    v7->_properties = v8;
  }

  return v7;
}

- (void)addBool:(BOOL)bool withName:(id)name
{
  nameCopy = name;
  v6 = NSStringFromBOOL();
  [(ASCDescriber *)self addObject:v6 withName:nameCopy];
}

- (void)addInteger:(int64_t)integer withName:(id)name
{
  v6 = MEMORY[0x277CCABB0];
  nameCopy = name;
  v8 = [v6 numberWithInteger:integer];
  [(ASCDescriber *)self addObject:v8 withName:nameCopy];
}

- (void)addUnsignedInteger:(unint64_t)integer withName:(id)name
{
  v6 = MEMORY[0x277CCABB0];
  nameCopy = name;
  v8 = [v6 numberWithUnsignedInteger:integer];
  [(ASCDescriber *)self addObject:v8 withName:nameCopy];
}

- (void)addInt64:(int64_t)int64 withName:(id)name
{
  v6 = MEMORY[0x277CCABB0];
  nameCopy = name;
  v8 = [v6 numberWithLongLong:int64];
  [(ASCDescriber *)self addObject:v8 withName:nameCopy];
}

- (void)addUInt64:(unint64_t)int64 withName:(id)name
{
  v6 = MEMORY[0x277CCABB0];
  nameCopy = name;
  v8 = [v6 numberWithUnsignedLongLong:int64];
  [(ASCDescriber *)self addObject:v8 withName:nameCopy];
}

- (void)addDouble:(double)double withName:(id)name
{
  v6 = MEMORY[0x277CCABB0];
  nameCopy = name;
  v8 = [v6 numberWithDouble:double];
  [(ASCDescriber *)self addObject:v8 withName:nameCopy];
}

- (void)addSensitiveObject:(id)object withName:(id)name
{
  nameCopy = name;
  v6 = AMSHashIfNeeded();
  [(ASCDescriber *)self addObject:v6 withName:nameCopy];
}

- (void)addObject:(id)object withName:(id)name
{
  objectCopy = object;
  nameCopy = name;
  properties = [(ASCDescriber *)self properties];
  v8 = [ASCPair alloc];
  v9 = objectCopy;
  if (!objectCopy)
  {
    v9 = +[ASCDescriber nilObject];
  }

  v10 = [(ASCPair *)v8 initWithFirst:nameCopy second:v9];
  [properties addObject:v10];

  if (!objectCopy)
  {
  }
}

- (id)describeObject
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  object = [(ASCDescriber *)self object];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  object2 = [(ASCDescriber *)self object];
  v8 = [v3 initWithFormat:@"%@:%p", v6, object2];

  return v8;
}

- (id)describeProperties
{
  v21 = *MEMORY[0x277D85DE8];
  properties = [(ASCDescriber *)self properties];
  v4 = [properties count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    properties2 = [(ASCDescriber *)self properties];
    v7 = [properties2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(properties2);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if ([v5 length])
          {
            [v5 appendString:@"; "];
          }

          first = [v11 first];
          second = [v11 second];
          [v5 appendFormat:@"%@ = %@", first, second];
        }

        v8 = [properties2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = [v5 copy];
  }

  else
  {
    v14 = &stru_2827A1458;
  }

  return v14;
}

- (id)finalizeDescription
{
  describeObject = [(ASCDescriber *)self describeObject];
  describeProperties = [(ASCDescriber *)self describeProperties];
  v5 = [describeProperties length];
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  if (v5)
  {
    v7 = [v6 initWithFormat:@"<%@ %@>", describeObject, describeProperties];
  }

  else
  {
    v7 = [v6 initWithFormat:@"<%@>", describeObject, v10];
  }

  v8 = v7;

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  object = [(ASCDescriber *)self object];
  [(ASCHasher *)v3 combineObject:object];

  properties = [(ASCDescriber *)self properties];
  [(ASCHasher *)v3 combineObject:properties];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    object = [(ASCDescriber *)self object];
    object2 = [v7 object];
    v10 = object2;
    if (object && object2)
    {
      if ([object isEqual:object2])
      {
        goto LABEL_10;
      }
    }

    else if (object == object2)
    {
LABEL_10:
      properties = [(ASCDescriber *)self properties];
      properties2 = [v7 properties];
      v13 = properties2;
      if (properties && properties2)
      {
        v14 = [properties isEqual:properties2];
      }

      else
      {
        v14 = properties == properties2;
      }

      goto LABEL_18;
    }

    v14 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v14 = 0;
LABEL_19:

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  object = [(ASCDescriber *)self object];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  object2 = [(ASCDescriber *)self object];
  properties = [(ASCDescriber *)self properties];
  v11 = [v3 stringWithFormat:@"<%@:%p object = <%@:%p> properties = %@>", v5, self, v8, object2, properties];;

  return v11;
}

@end