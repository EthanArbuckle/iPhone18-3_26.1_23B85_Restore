@interface _GCDevicePIDVIDMatchingFilter
- (BOOL)match:(id)a3;
- (_GCDevicePIDVIDMatchingFilter)initWithVendorID:(id)a3 productIDs:(id)a4;
- (id)identifier;
@end

@implementation _GCDevicePIDVIDMatchingFilter

- (_GCDevicePIDVIDMatchingFilter)initWithVendorID:(id)a3 productIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _GCDevicePIDVIDMatchingFilter;
  v9 = [(_GCDevicePIDVIDMatchingFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_vendorID, a3);
    objc_storeStrong(&v10->_productIDs, a4);
  }

  return v10;
}

- (BOOL)match:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 numberPropertyForKey:@"VendorID"];
  v6 = [v4 numberPropertyForKey:@"ProductID"];
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
  v4 = [(NSArray *)self->_productIDs firstObject];
  v5 = [v2 stringWithFormat:@"vid(%@).pid(%@)", vendorID, v4];

  return v5;
}

@end