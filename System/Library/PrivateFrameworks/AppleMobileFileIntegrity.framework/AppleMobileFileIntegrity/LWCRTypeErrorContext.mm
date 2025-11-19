@interface LWCRTypeErrorContext
- (LWCRTypeErrorContext)init;
- (id)synthesizeError;
@end

@implementation LWCRTypeErrorContext

- (LWCRTypeErrorContext)init
{
  v6.receiver = self;
  v6.super_class = LWCRTypeErrorContext;
  v2 = [(LWCRTypeErrorContext *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    keyContext = v2->keyContext;
    v2->keyContext = v3;

    v2->code = 0;
  }

  return v2;
}

- (id)synthesizeError
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 appendFormat:@"Error: %s, Context: ", LWCRTypeVerificationBackend_errorStringForCode(self->code)];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->keyContext;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        if (v10 < 1)
        {
          [v3 appendString:*(*(&v15 + 1) + 8 * v9)];
        }

        else
        {
          [v3 appendFormat:@" -> %@", *(*(&v15 + 1) + 8 * v9)];
        }

        ++v10;
        ++v9;
      }

      while (v6 != v9);
      v7 += v6;
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = objc_opt_new();
  [v11 setObject:v3 forKeyedSubscript:*MEMORY[0x277CCA450]];
  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"LWCRVerificationError" code:self->code userInfo:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end