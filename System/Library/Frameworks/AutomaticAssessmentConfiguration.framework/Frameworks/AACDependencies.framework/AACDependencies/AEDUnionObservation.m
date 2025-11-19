@interface AEDUnionObservation
- (void)dealloc;
- (void)invalidate;
@end

@implementation AEDUnionObservation

- (void)dealloc
{
  [(AEDUnionObservation *)self invalidate];
  v3.receiver = self;
  v3.super_class = AEDUnionObservation;
  [(AEDUnionObservation *)&v3 dealloc];
}

- (void)invalidate
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (self)
  {
    observations = self->_observations;
  }

  else
  {
    observations = 0;
  }

  v3 = observations;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end