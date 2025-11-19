@interface MXCallStackThread
- (MXCallStackThread)initWithCoder:(id)a3;
- (MXCallStackThread)initWithTopCallStackFrames:(id)a3 isAttributedThread:(BOOL)a4;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXCallStackThread

- (MXCallStackThread)initWithTopCallStackFrames:(id)a3 isAttributedThread:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = MXCallStackThread;
  v8 = [(MXCallStackThread *)&v12 init];
  v9 = v8;
  if (v8)
  {
    if (!v7)
    {
      v10 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v8->_topFrames, a3);
    v9->_attributedThread = a4;
  }

  v10 = v9;
LABEL_6:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  topFrames = self->_topFrames;
  v5 = a3;
  [v5 encodeObject:topFrames forKey:@"callStackRootFrames"];
  [v5 encodeBool:self->_attributedThread forKey:@"threadAttributed"];
}

- (MXCallStackThread)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MXCallStackThread;
  v5 = [(MXCallStackThread *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"callStackRootFrames"];
    topFrames = v5->_topFrames;
    v5->_topFrames = v9;

    v5->_attributedThread = [v4 decodeBoolForKey:@"threadAttributed"];
  }

  return v5;
}

- (id)toDictionary
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_attributedThread];
  [v3 setObject:v4 forKey:@"threadAttributed"];

  if (self->_topFrames)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_topFrames;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) toDictionary];
          [v5 addObject:v11];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"callStackRootFrames"];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

@end