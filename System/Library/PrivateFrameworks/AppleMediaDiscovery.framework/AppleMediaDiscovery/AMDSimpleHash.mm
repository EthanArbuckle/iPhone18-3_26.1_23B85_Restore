@interface AMDSimpleHash
+ (unsigned)getBase:(unsigned int)base;
- (AMDSimpleHash)initWithCapacity:(unsigned int)capacity;
- (BOOL)addForKey:(unint64_t)key theValue:(unint64_t)value;
- (BOOL)getValueForKey:(unint64_t)key into:(unint64_t *)into;
- (BOOL)removeKey:(unint64_t)key andSaveValueInto:(unint64_t *)into;
- (void)getAllKeysInto:(unint64_t *)into;
- (void)removeAllKeys;
@end

@implementation AMDSimpleHash

- (AMDSimpleHash)initWithCapacity:(unsigned int)capacity
{
  v18 = a2;
  capacityCopy = capacity;
  v19 = 0;
  v16.receiver = self;
  v16.super_class = AMDSimpleHash;
  v19 = [(AMDSimpleHash *)&v16 init];
  objc_storeStrong(&v19, v19);
  v3 = [AMDSimpleHash getBase:capacityCopy];
  [(AMDSimpleHash *)v19 setModuloBase:v3];
  [(AMDSimpleHash *)v19 setNumEntries:0];
  v15 = 8 * [(AMDSimpleHash *)v19 moduloBase];
  v4 = malloc_type_calloc([(AMDSimpleHash *)v19 moduloBase], 8uLL, 0x100004000313F17uLL);
  [(AMDSimpleHash *)v19 setKeys:v4];
  v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:-[AMDSimpleHash keys](v19 length:{"keys"), v15}];
  [(AMDSimpleHash *)v19 setKeysStorage:?];
  MEMORY[0x277D82BD8](v8);
  v5 = malloc_type_malloc(v15, 0xD6038E91uLL);
  [(AMDSimpleHash *)v19 setValues:v5];
  v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:-[AMDSimpleHash values](v19 length:{"values"), v15}];
  [(AMDSimpleHash *)v19 setValuesStorage:?];
  MEMORY[0x277D82BD8](v9);
  v6 = malloc_type_calloc([(AMDSimpleHash *)v19 moduloBase], 1uLL, 0x100004077774924uLL);
  [(AMDSimpleHash *)v19 setMetadata:v6];
  v11 = MEMORY[0x277CBEA90];
  metadata = [(AMDSimpleHash *)v19 metadata];
  v12 = [v11 dataWithBytesNoCopy:metadata length:{-[AMDSimpleHash moduloBase](v19, "moduloBase")}];
  [(AMDSimpleHash *)v19 setMetadataStorage:?];
  MEMORY[0x277D82BD8](v12);
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(AMDSimpleHash *)v19 setCollisionMap:?];
  MEMORY[0x277D82BD8](v13);
  v14 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&v19, 0);
  return v14;
}

- (BOOL)addForKey:(unint64_t)key theValue:(unint64_t)value
{
  if (!key)
  {
    return 0;
  }

  v15 = key % [(AMDSimpleHash *)self moduloBase];
  v14 = [(AMDSimpleHash *)self metadata][v15];
  if (v14)
  {
    if (v14 == 1)
    {
      collisionMap = [(AMDSimpleHash *)self collisionMap];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[AMDSimpleHash values](self, "values")[8 * v15]}];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[AMDSimpleHash keys](self, "keys")[8 * v15]}];
      [(NSMutableDictionary *)collisionMap setObject:v9 forKey:?];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](collisionMap);
      collisionMap2 = [(AMDSimpleHash *)self collisionMap];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:value];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
      [(NSMutableDictionary *)collisionMap2 setObject:v12 forKey:?];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](collisionMap2);
      [(AMDSimpleHash *)self metadata][v15] = 2;
    }

    else
    {
      collisionMap3 = [(AMDSimpleHash *)self collisionMap];
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:value];
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:key];
      [(NSMutableDictionary *)collisionMap3 setObject:v6 forKey:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](collisionMap3);
    }
  }

  else
  {
    [(AMDSimpleHash *)self values][8 * v15] = value;
    [(AMDSimpleHash *)self metadata][v15] = 1;
    [(AMDSimpleHash *)self keys][8 * v15] = key;
  }

  [(AMDSimpleHash *)self setNumEntries:[(AMDSimpleHash *)self numEntries]+ 1];
  return 1;
}

- (BOOL)getValueForKey:(unint64_t)key into:(unint64_t *)into
{
  selfCopy = self;
  v12 = a2;
  keyCopy = key;
  intoCopy = into;
  v9 = key % [(AMDSimpleHash *)self moduloBase];
  v8 = [(AMDSimpleHash *)selfCopy metadata][v9];
  if (v8)
  {
    if (v8 == 1)
    {
      if ([(AMDSimpleHash *)selfCopy keys][8 * v9] == keyCopy)
      {
        *intoCopy = [(AMDSimpleHash *)selfCopy values][8 * v9];
        v14 = 1;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      collisionMap = [(AMDSimpleHash *)selfCopy collisionMap];
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:keyCopy];
      location = [(NSMutableDictionary *)collisionMap objectForKey:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](collisionMap);
      if (location)
      {
        *intoCopy = [location longLongValue];
        v14 = 1;
      }

      else
      {
        v14 = 0;
      }

      objc_storeStrong(&location, 0);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (BOOL)removeKey:(unint64_t)key andSaveValueInto:(unint64_t *)into
{
  selfCopy = self;
  v13 = a2;
  keyCopy = key;
  intoCopy = into;
  v10 = key % [(AMDSimpleHash *)self moduloBase];
  v9 = [(AMDSimpleHash *)selfCopy metadata][v10];
  if (v9)
  {
    if (v9 == 1)
    {
      if ([(AMDSimpleHash *)selfCopy keys][8 * v10] == keyCopy)
      {
        [(AMDSimpleHash *)selfCopy metadata][v10] = 0;
        [(AMDSimpleHash *)selfCopy setNumEntries:[(AMDSimpleHash *)selfCopy numEntries]- 1];
        if (intoCopy)
        {
          *intoCopy = [(AMDSimpleHash *)selfCopy values][8 * v10];
        }

        v15 = 1;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      [(AMDSimpleHash *)selfCopy setNumEntries:[(AMDSimpleHash *)selfCopy numEntries]- 1];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:keyCopy];
      collisionMap = [(AMDSimpleHash *)selfCopy collisionMap];
      location = [(NSMutableDictionary *)collisionMap objectForKey:v8];
      MEMORY[0x277D82BD8](collisionMap);
      if (location)
      {
        collisionMap2 = [(AMDSimpleHash *)selfCopy collisionMap];
        [(NSMutableDictionary *)collisionMap2 removeObjectForKey:v8];
        MEMORY[0x277D82BD8](collisionMap2);
        if (intoCopy)
        {
          *intoCopy = [location longLongValue];
        }

        v15 = 1;
      }

      else
      {
        v15 = 0;
      }

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v8, 0);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

- (void)removeAllKeys
{
  [(AMDSimpleHash *)self metadata];
  [(AMDSimpleHash *)self moduloBase];
  __memset_chk();
  [(AMDSimpleHash *)self keys];
  [(AMDSimpleHash *)self moduloBase];
  __memset_chk();
  collisionMap = [(AMDSimpleHash *)self collisionMap];
  [(NSMutableDictionary *)collisionMap removeAllObjects];
  MEMORY[0x277D82BD8](collisionMap);
  [(AMDSimpleHash *)self setNumEntries:0];
}

- (void)getAllKeysInto:(unint64_t *)into
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  intoCopy = into;
  for (i = 0; i < [(AMDSimpleHash *)selfCopy moduloBase]; ++i)
  {
    v13 = [(AMDSimpleHash *)selfCopy metadata][i];
    if (v13 == 1)
    {
      *intoCopy++ = [(AMDSimpleHash *)selfCopy keys][8 * i];
    }
  }

  memset(__b, 0, sizeof(__b));
  obj = [(AMDSimpleHash *)selfCopy collisionMap];
  v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:__b objects:v18 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v7);
      longLongValue = [v12 longLongValue];
      *intoCopy++ = longLongValue;
      ++v7;
      v8 = v4;
      if (v5 + 1 >= v4)
      {
        v7 = 0;
        v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  *MEMORY[0x277D85DE8];
}

+ (unsigned)getBase:(unsigned int)base
{
  for (i = 0; i < numPrimes; ++i)
  {
    if (primes[i] >= 2 * base)
    {
      return primes[i];
    }
  }

  return primes[numPrimes - 1];
}

@end