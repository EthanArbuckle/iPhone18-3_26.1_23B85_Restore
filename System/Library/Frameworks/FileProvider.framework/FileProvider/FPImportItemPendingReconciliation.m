@interface FPImportItemPendingReconciliation
- (FPImportItemPendingReconciliation)initWithCoder:(id)a3;
- (FPImportItemPendingReconciliation)initWithItemIdentifier:(id)a3;
- (id)json;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPImportItemPendingReconciliation

- (FPImportItemPendingReconciliation)initWithItemIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FPImportItemPendingReconciliation;
  v6 = [(FPImportItemPendingReconciliation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemIdentifier, a3);
    v7->_itemPendingReconciliationIsLocked = 0;
    v7->_itemPendingReconciliationJobBlockingCode = -1;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  itemIdentifier = self->_itemIdentifier;
  v5 = a3;
  [v5 encodeObject:itemIdentifier forKey:@"_itemIdentifier"];
  [v5 encodeObject:self->_diagnosticAttributes forKey:@"_diagnosticAttributes"];
  [v5 encodeBool:self->_itemPendingReconciliationIsLocked forKey:@"_itemPendingReconciliationIsLocked"];
  [v5 encodeBool:self->_itemPendingReconciliationIsLockedInDB forKey:@"_itemPendingReconciliationIsLockedInDB"];
  [v5 encodeInteger:self->_itemPendingReconciliationJobCode forKey:@"_itemPendingReconciliationJobCode"];
  [v5 encodeInteger:self->_itemPendingReconciliationJobSchedulingState forKey:@"_itemPendingReconciliationJobSchedulingState"];
  [v5 encodeInteger:self->_itemPendingReconciliationJobBlockingCode forKey:@"_itemPendingReconciliationJobBlockingCode"];
}

- (FPImportItemPendingReconciliation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FPImportItemPendingReconciliation;
  v5 = [(FPImportItemPendingReconciliation *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_diagnosticAttributes"];
    diagnosticAttributes = v5->_diagnosticAttributes;
    v5->_diagnosticAttributes = v8;

    v5->_itemPendingReconciliationIsLocked = [v4 decodeBoolForKey:@"_itemPendingReconciliationIsLocked"];
    v5->_itemPendingReconciliationIsLockedInDB = [v4 decodeBoolForKey:@"_itemPendingReconciliationIsLockedInDB"];
    v5->_itemPendingReconciliationJobCode = [v4 decodeIntegerForKey:@"_itemPendingReconciliationJobCode"];
    v5->_itemPendingReconciliationJobSchedulingState = [v4 decodeIntegerForKey:@"_itemPendingReconciliationJobSchedulingState"];
    v5->_itemPendingReconciliationJobBlockingCode = [v4 decodeIntegerForKey:@"_itemPendingReconciliationJobBlockingCode"];
  }

  return v5;
}

- (id)json
{
  v3 = objc_opt_new();
  [v3 setObject:self->_itemIdentifier forKeyedSubscript:@"itemIdentifier"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_itemPendingReconciliationIsLocked];
  [v3 setObject:v4 forKeyedSubscript:@"itemPendingReconciliationIsLocked"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_itemPendingReconciliationIsLockedInDB];
  [v3 setObject:v5 forKeyedSubscript:@"itemPendingReconciliationIsLockedInDB"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingReconciliationJobCode];
  [v3 setObject:v6 forKeyedSubscript:@"itemPendingReconciliationJobCode"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingReconciliationJobSchedulingState];
  [v3 setObject:v7 forKeyedSubscript:@"itemPendingReconciliationJobSchedulingState"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingReconciliationJobBlockingCode];
  [v3 setObject:v8 forKeyedSubscript:@"itemPendingReconciliationJobBlockingCode"];

  return v3;
}

@end