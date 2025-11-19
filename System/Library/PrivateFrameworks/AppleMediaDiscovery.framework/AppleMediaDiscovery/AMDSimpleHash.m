@interface AMDSimpleHash
+ (unsigned)getBase:(unsigned int)a3;
- (AMDSimpleHash)initWithCapacity:(unsigned int)a3;
- (BOOL)addForKey:(unint64_t)a3 theValue:(unint64_t)a4;
- (BOOL)getValueForKey:(unint64_t)a3 into:(unint64_t *)a4;
- (BOOL)removeKey:(unint64_t)a3 andSaveValueInto:(unint64_t *)a4;
- (void)getAllKeysInto:(unint64_t *)a3;
- (void)removeAllKeys;
@end

@implementation AMDSimpleHash

- (AMDSimpleHash)initWithCapacity:(unsigned int)a3
{
  v18 = a2;
  v17 = a3;
  v19 = 0;
  v16.receiver = self;
  v16.super_class = AMDSimpleHash;
  v19 = [(AMDSimpleHash *)&v16 init];
  objc_storeStrong(&v19, v19);
  v3 = [AMDSimpleHash getBase:v17];
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
  v10 = [(AMDSimpleHash *)v19 metadata];
  v12 = [v11 dataWithBytesNoCopy:v10 length:{-[AMDSimpleHash moduloBase](v19, "moduloBase")}];
  [(AMDSimpleHash *)v19 setMetadataStorage:?];
  MEMORY[0x277D82BD8](v12);
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(AMDSimpleHash *)v19 setCollisionMap:?];
  MEMORY[0x277D82BD8](v13);
  v14 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&v19, 0);
  return v14;
}

- (BOOL)addForKey:(unint64_t)a3 theValue:(unint64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  v15 = a3 % [(AMDSimpleHash *)self moduloBase];
  v14 = [(AMDSimpleHash *)self metadata][v15];
  if (v14)
  {
    if (v14 == 1)
    {
      v10 = [(AMDSimpleHash *)self collisionMap];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[AMDSimpleHash values](self, "values")[8 * v15]}];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[AMDSimpleHash keys](self, "keys")[8 * v15]}];
      [(NSMutableDictionary *)v10 setObject:v9 forKey:?];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      v13 = [(AMDSimpleHash *)self collisionMap];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
      [(NSMutableDictionary *)v13 setObject:v12 forKey:?];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      [(AMDSimpleHash *)self metadata][v15] = 2;
    }

    else
    {
      v7 = [(AMDSimpleHash *)self collisionMap];
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
      [(NSMutableDictionary *)v7 setObject:v6 forKey:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
    }
  }

  else
  {
    [(AMDSimpleHash *)self values][8 * v15] = a4;
    [(AMDSimpleHash *)self metadata][v15] = 1;
    [(AMDSimpleHash *)self keys][8 * v15] = a3;
  }

  [(AMDSimpleHash *)self setNumEntries:[(AMDSimpleHash *)self numEntries]+ 1];
  return 1;
}

- (BOOL)getValueForKey:(unint64_t)a3 into:(unint64_t *)a4
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a3 % [(AMDSimpleHash *)self moduloBase];
  v8 = [(AMDSimpleHash *)v13 metadata][v9];
  if (v8)
  {
    if (v8 == 1)
    {
      if ([(AMDSimpleHash *)v13 keys][8 * v9] == v11)
      {
        *v10 = [(AMDSimpleHash *)v13 values][8 * v9];
        v14 = 1;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v6 = [(AMDSimpleHash *)v13 collisionMap];
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
      location = [(NSMutableDictionary *)v6 objectForKey:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      if (location)
      {
        *v10 = [location longLongValue];
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

- (BOOL)removeKey:(unint64_t)a3 andSaveValueInto:(unint64_t *)a4
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a3 % [(AMDSimpleHash *)self moduloBase];
  v9 = [(AMDSimpleHash *)v14 metadata][v10];
  if (v9)
  {
    if (v9 == 1)
    {
      if ([(AMDSimpleHash *)v14 keys][8 * v10] == v12)
      {
        [(AMDSimpleHash *)v14 metadata][v10] = 0;
        [(AMDSimpleHash *)v14 setNumEntries:[(AMDSimpleHash *)v14 numEntries]- 1];
        if (v11)
        {
          *v11 = [(AMDSimpleHash *)v14 values][8 * v10];
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
      [(AMDSimpleHash *)v14 setNumEntries:[(AMDSimpleHash *)v14 numEntries]- 1];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
      v6 = [(AMDSimpleHash *)v14 collisionMap];
      location = [(NSMutableDictionary *)v6 objectForKey:v8];
      MEMORY[0x277D82BD8](v6);
      if (location)
      {
        v5 = [(AMDSimpleHash *)v14 collisionMap];
        [(NSMutableDictionary *)v5 removeObjectForKey:v8];
        MEMORY[0x277D82BD8](v5);
        if (v11)
        {
          *v11 = [location longLongValue];
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
  v2 = [(AMDSimpleHash *)self collisionMap];
  [(NSMutableDictionary *)v2 removeAllObjects];
  MEMORY[0x277D82BD8](v2);
  [(AMDSimpleHash *)self setNumEntries:0];
}

- (void)getAllKeysInto:(unint64_t *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v15 = a3;
  for (i = 0; i < [(AMDSimpleHash *)v17 moduloBase]; ++i)
  {
    v13 = [(AMDSimpleHash *)v17 metadata][i];
    if (v13 == 1)
    {
      *v15++ = [(AMDSimpleHash *)v17 keys][8 * i];
    }
  }

  memset(__b, 0, sizeof(__b));
  obj = [(AMDSimpleHash *)v17 collisionMap];
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
      v3 = [v12 longLongValue];
      *v15++ = v3;
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

+ (unsigned)getBase:(unsigned int)a3
{
  for (i = 0; i < numPrimes; ++i)
  {
    if (primes[i] >= 2 * a3)
    {
      return primes[i];
    }
  }

  return primes[numPrimes - 1];
}

@end