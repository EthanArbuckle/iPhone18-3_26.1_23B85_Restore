@interface _GCDevicePIDVIDMatchingFilter
- (BOOL)match:(id)match;
- (_GCDevicePIDVIDMatchingFilter)initWithVendorID:(id)d productIDs:(id)ds;
- (id)identifier;
@end

@implementation _GCDevicePIDVIDMatchingFilter

- (_GCDevicePIDVIDMatchingFilter)initWithVendorID:(id)d productIDs:(id)ds
{
  dCopy = d;
  dsCopy = ds;
  v12.receiver = self;
  v12.super_class = _GCDevicePIDVIDMatchingFilter;
  v9 = [(_GCDevicePIDVIDMatchingFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_vendorID, d);
    objc_storeStrong(&v10->_productIDs, ds);
  }

  return v10;
}

- (BOOL)match:(id)match
{
  v19 = *MEMORY[0x1E69E9840];
  matchCopy = match;
  v5 = [matchCopy numberPropertyForKey:@"VendorID"];
  v6 = [matchCopy numberPropertyForKey:@"ProductID"];
  v7 = v6;
  LOBYTE(v8) = 0;
  if (v5 && v6)
  {
    if ([(NSNumber *)self->_vendorID isEqualToNumber:v5])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = self->_productIDs;
      v8 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v10 = *v15;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v9);
            }

            if ([*(*(&v14 + 1) + 8 * i) isEqualToNumber:{v7, v14}])
            {
              LOBYTE(v8) = 1;
              goto LABEL_15;
            }
          }

          v8 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)identifier
{
  v2 = MEMORY[0x1E696AEC0];
  vendorID = self->_vendorID;
  firstObject = [(NSArray *)self->_productIDs firstObject];
  v5 = [v2 stringWithFormat:@"vid(%@).pid(%@)", vendorID, firstObject];

  return v5;
}

@end