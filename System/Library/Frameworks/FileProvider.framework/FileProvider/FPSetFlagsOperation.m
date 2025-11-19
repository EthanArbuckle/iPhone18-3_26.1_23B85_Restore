@interface FPSetFlagsOperation
- (FPSetFlagsOperation)initWithItems:(id)a3 flags:(unint64_t)a4;
- (id)fp_prettyDescription;
- (id)replicateForItems:(id)a3;
@end

@implementation FPSetFlagsOperation

- (id)replicateForItems:(id)a3
{
  v4 = [FPSetFlagsOperation alloc];
  v5 = [(FPTransformOperation *)self items];
  v6 = [(FPSetFlagsOperation *)v4 initWithItems:v5 flags:self->_flags];

  return v6;
}

- (FPSetFlagsOperation)initWithItems:(id)a3 flags:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = FPSetFlagsOperation;
  v5 = [(FPTransformOperation *)&v8 initWithItemsOfDifferentProviders:a3 action:0];
  v6 = v5;
  if (v5)
  {
    v5->_flags = a4;
    [(FPActionOperation *)v5 setSetupRemoteOperationService:1];
  }

  return v6;
}

- (id)fp_prettyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FPTransformOperation *)self items];
  v5 = [v4 fp_itemIdentifiers];
  v6 = FPAbbreviatedArrayDescription(v5);
  v7 = v6;
  flags = self->_flags;
  v9 = 101;
  if ((flags & 0x10) == 0)
  {
    v9 = 45;
  }

  v10 = 104;
  if ((flags & 8) == 0)
  {
    v10 = 45;
  }

  v16 = v10;
  v17 = v9;
  v11 = 120;
  if ((flags & 1) == 0)
  {
    v11 = 45;
  }

  v12 = 119;
  if ((flags & 4) == 0)
  {
    v12 = 45;
  }

  v13 = 114;
  if ((self->_flags & 2) == 0)
  {
    v13 = 45;
  }

  v14 = [v3 stringWithFormat:@"set flags %@ to %c%c%c%c%c", v6, v13, v12, v11, v16, v17];

  return v14;
}

@end