@interface FPImportItemPendingReconciliation
- (FPImportItemPendingReconciliation)initWithCoder:(id)coder;
- (FPImportItemPendingReconciliation)initWithItemIdentifier:(id)identifier;
- (id)json;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPImportItemPendingReconciliation

- (FPImportItemPendingReconciliation)initWithItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = FPImportItemPendingReconciliation;
  v6 = [(FPImportItemPendingReconciliation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemIdentifier, identifier);
    v7->_itemPendingReconciliationIsLocked = 0;
    v7->_itemPendingReconciliationJobBlockingCode = -1;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  itemIdentifier = self->_itemIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:itemIdentifier forKey:@"_itemIdentifier"];
  [coderCopy encodeObject:self->_diagnosticAttributes forKey:@"_diagnosticAttributes"];
  [coderCopy encodeBool:self->_itemPendingReconciliationIsLocked forKey:@"_itemPendingReconciliationIsLocked"];
  [coderCopy encodeBool:self->_itemPendingReconciliationIsLockedInDB forKey:@"_itemPendingReconciliationIsLockedInDB"];
  [coderCopy encodeInteger:self->_itemPendingReconciliationJobCode forKey:@"_itemPendingReconciliationJobCode"];
  [coderCopy encodeInteger:self->_itemPendingReconciliationJobSchedulingState forKey:@"_itemPendingReconciliationJobSchedulingState"];
  [coderCopy encodeInteger:self->_itemPendingReconciliationJobBlockingCode forKey:@"_itemPendingReconciliationJobBlockingCode"];
}

- (FPImportItemPendingReconciliation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FPImportItemPendingReconciliation;
  v5 = [(FPImportItemPendingReconciliation *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_diagnosticAttributes"];
    diagnosticAttributes = v5->_diagnosticAttributes;
    v5->_diagnosticAttributes = v8;

    v5->_itemPendingReconciliationIsLocked = [coderCopy decodeBoolForKey:@"_itemPendingReconciliationIsLocked"];
    v5->_itemPendingReconciliationIsLockedInDB = [coderCopy decodeBoolForKey:@"_itemPendingReconciliationIsLockedInDB"];
    v5->_itemPendingReconciliationJobCode = [coderCopy decodeIntegerForKey:@"_itemPendingReconciliationJobCode"];
    v5->_itemPendingReconciliationJobSchedulingState = [coderCopy decodeIntegerForKey:@"_itemPendingReconciliationJobSchedulingState"];
    v5->_itemPendingReconciliationJobBlockingCode = [coderCopy decodeIntegerForKey:@"_itemPendingReconciliationJobBlockingCode"];
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