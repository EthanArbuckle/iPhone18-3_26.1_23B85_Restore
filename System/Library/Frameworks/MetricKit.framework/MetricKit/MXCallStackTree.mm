@interface MXCallStackTree
- (MXCallStackTree)initWithCoder:(id)coder;
- (MXCallStackTree)initWithThreadArray:(id)array aggregatedByProcess:(BOOL)process;
- (NSData)JSONRepresentation;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXCallStackTree

- (MXCallStackTree)initWithThreadArray:(id)array aggregatedByProcess:(BOOL)process
{
  arrayCopy = array;
  v11.receiver = self;
  v11.super_class = MXCallStackTree;
  v8 = [(MXCallStackTree *)&v11 init];
  if (v8)
  {
    if (![arrayCopy count])
    {
      v9 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v8->_callStackThreads, array);
    v8->_callStackPerThread = !process;
  }

  v9 = v8;
LABEL_6:

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  callStackThreads = self->_callStackThreads;
  coderCopy = coder;
  [coderCopy encodeObject:callStackThreads forKey:@"callStacks"];
  [coderCopy encodeBool:self->_callStackPerThread forKey:@"callStackPerThread"];
}

- (MXCallStackTree)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MXCallStackTree;
  v5 = [(MXCallStackTree *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"callStacks"];
    callStackThreads = v5->_callStackThreads;
    v5->_callStackThreads = v9;

    v5->_callStackPerThread = [coderCopy decodeBoolForKey:@"callStackPerThread"];
  }

  return v5;
}

- (id)toDictionary
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_callStackPerThread];
  [v3 setObject:v4 forKey:@"callStackPerThread"];

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  callStackThreads = self->_callStackThreads;
  if (callStackThreads)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = callStackThreads;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          toDictionary = [*(*(&v17 + 1) + 8 * i) toDictionary];
          v13 = toDictionary;
          if (!self->_callStackPerThread)
          {
            v14 = [toDictionary mutableCopy];
            [v14 removeObjectForKey:@"threadAttributed"];

            v13 = v14;
          }

          [v5 addObject:v13];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [v3 setObject:v5 forKey:@"callStacks"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSData)JSONRepresentation
{
  toDictionary = [(MXCallStackTree *)self toDictionary];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:toDictionary])
  {
    v5 = 0;
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:toDictionary options:1 error:&v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end