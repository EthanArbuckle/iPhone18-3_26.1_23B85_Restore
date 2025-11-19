@interface FPSetLastOpenDateOperation
- (FPSetLastOpenDateOperation)initWithItems:(id)a3 date:(id)a4;
- (id)fp_prettyDescription;
- (id)replicateForItems:(id)a3;
@end

@implementation FPSetLastOpenDateOperation

- (id)replicateForItems:(id)a3
{
  v4 = a3;
  v5 = [[FPSetLastOpenDateOperation alloc] initWithItems:v4 date:self->_date];

  return v5;
}

- (FPSetLastOpenDateOperation)initWithItems:(id)a3 date:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = FPSetLastOpenDateOperation;
  v9 = [(FPTransformOperation *)&v13 initWithItemsOfDifferentProviders:v7 action:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_items, a3);
    v11 = v8;
    if (!v8)
    {
      v11 = [MEMORY[0x1E695DF00] date];
    }

    objc_storeStrong(&v10->_date, v11);
    if (!v8)
    {
    }

    [(FPActionOperation *)v10 setSetupRemoteOperationService:1];
  }

  return v10;
}

- (id)fp_prettyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FPTransformOperation *)self items];
  v5 = [v4 fp_itemIdentifiers];
  v6 = FPAbbreviatedArrayDescription(v5);
  v7 = [v3 stringWithFormat:@"set last used date %@ to %@", v6, self->_date];

  return v7;
}

@end