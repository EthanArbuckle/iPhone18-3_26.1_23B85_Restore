@interface MechanismKofNReorganizer
- (MechanismKofNReorganizer)initWithMin:(int64_t)a3 max:(int64_t)a4 k:(id)a5 request:(id)a6 apply:(id)a7;
- (id)reorganizeMechanisms:(id)a3 k:(int64_t)a4 error:(id *)a5;
@end

@implementation MechanismKofNReorganizer

- (MechanismKofNReorganizer)initWithMin:(int64_t)a3 max:(int64_t)a4 k:(id)a5 request:(id)a6 apply:(id)a7
{
  v13 = a5;
  v14 = a7;
  v20.receiver = self;
  v20.super_class = MechanismKofNReorganizer;
  v15 = [(MechanismBase *)&v20 initWithEventIdentifier:0 remoteViewController:0 cachedExternalizationDelegate:0 request:a6];
  v16 = v15;
  if (v15)
  {
    v15->_min = a3;
    v15->_max = a4;
    objc_storeStrong(&v15->_k, a5);
    v17 = MEMORY[0x23EE73C30](v14);
    apply = v16->_apply;
    v16->_apply = v17;
  }

  return v16;
}

- (id)reorganizeMechanisms:(id)a3 k:(int64_t)a4 error:(id *)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_opt_new();
  if ([v8 count] >= self->_min && objc_msgSend(v8, "count") <= self->_max)
  {
    k = self->_k;
    if (k && [(NSNumber *)k integerValue]!= a4)
    {
      v30 = MEMORY[0x277CD47F0];
      v31 = MEMORY[0x277CCACA8];
      v32 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      v33 = [v31 stringWithFormat:@"k is %@, but should be %@", v32, self->_k];
      v16 = [v30 internalErrorWithMessage:v33];
    }

    else
    {
      if ([v8 count])
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v23 = v8;
        v24 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v36;
          do
          {
            v27 = 0;
            do
            {
              if (*v36 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v35 + 1) + 8 * v27);
              v29 = (*(self->_apply + 2))();
              if (v29)
              {
                [v9 addObject:v29];
              }

              ++v27;
            }

            while (v25 != v27);
            v25 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v25);
        }
      }

      else
      {
        v34 = (*(self->_apply + 2))();
        if (v34)
        {
          [v9 addObject:v34];
        }
      }

      v16 = 0;
    }
  }

  else
  {
    v10 = MEMORY[0x277CD47F0];
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_min];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_max];
    v15 = [v11 stringWithFormat:@"number of mechanisms to reorganize is %@, but should be in [%@-%@]", v12, v13, v14];
    v16 = [v10 internalErrorWithMessage:v15];
  }

  if (a5)
  {
    v17 = v16;
    *a5 = v16;
  }

  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = v9;
  }

  v19 = v18;

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

@end