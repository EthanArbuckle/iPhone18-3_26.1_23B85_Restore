@interface FPImportItemPendingScanningDisk
- (FPImportItemPendingScanningDisk)initWithCoder:(id)a3;
- (id)json;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPImportItemPendingScanningDisk

- (void)encodeWithCoder:(id)a3
{
  itemIdentifier = self->_itemIdentifier;
  v5 = a3;
  [v5 encodeObject:itemIdentifier forKey:@"_itemIdentifier"];
  [v5 encodeObject:self->_diagnosticAttributes forKey:@"_diagnosticAttributes"];
  [v5 encodeInteger:self->_itemPendingScanningDiskEnumerationStatus forKey:@"_itemPendingScanningDiskEnumerationStatus"];
  [v5 encodeBool:self->_itemPendingScanningDiskHasMultiplePagesEnumeration forKey:@"_itemPendingScanningDiskHasMultiplePagesEnumeration"];
  [v5 encodeInteger:self->_itemPendingScanningDiskNumberOfChildrenPendingReconciliation forKey:@"_itemPendingScanningDiskNumberOfChildrenPendingReconciliation"];
  [v5 encodeInteger:self->_itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation forKey:@"_itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation"];
  [v5 encodeInteger:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion forKey:@"_itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion"];
  [v5 encodeInteger:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion forKey:@"_itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion"];
  [v5 encodeInteger:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent forKey:@"_itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent"];
  [v5 encodeInteger:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUp forKey:@"_itemPendingScanningDiskNumberOfChildrenPendingSyncUp"];
  [v5 encodeInteger:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent forKey:@"_itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent"];
  [v5 encodeInteger:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDown forKey:@"_itemPendingScanningDiskNumberOfChildrenPendingSyncDown"];
  [v5 encodeInteger:self->_itemPendingScanningDiskNumberOfChildrenPendingRejection forKey:@"_itemPendingScanningDiskNumberOfChildrenPendingRejection"];
}

- (FPImportItemPendingScanningDisk)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FPImportItemPendingScanningDisk;
  v5 = [(FPImportItemPendingScanningDisk *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_diagnosticAttributes"];
    diagnosticAttributes = v5->_diagnosticAttributes;
    v5->_diagnosticAttributes = v8;

    v5->_itemPendingScanningDiskEnumerationStatus = [v4 decodeIntegerForKey:@"_itemPendingScanningDiskEnumerationStatus"];
    v5->_itemPendingScanningDiskHasMultiplePagesEnumeration = [v4 decodeBoolForKey:@"_itemPendingScanningDiskHasMultiplePagesEnumeration"];
    v5->_itemPendingScanningDiskNumberOfChildrenPendingReconciliation = [v4 decodeIntegerForKey:@"_itemPendingScanningDiskNumberOfChildrenPendingReconciliation"];
    v5->_itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation = [v4 decodeIntegerForKey:@"_itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation"];
    v5->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion = [v4 decodeIntegerForKey:@"_itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion"];
    v5->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion = [v4 decodeIntegerForKey:@"_itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion"];
    v5->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent = [v4 decodeIntegerForKey:@"_itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent"];
    v5->_itemPendingScanningDiskNumberOfChildrenPendingSyncUp = [v4 decodeIntegerForKey:@"_itemPendingScanningDiskNumberOfChildrenPendingSyncUp"];
    v5->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent = [v4 decodeIntegerForKey:@"_itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent"];
    v5->_itemPendingScanningDiskNumberOfChildrenPendingSyncDown = [v4 decodeIntegerForKey:@"_itemPendingScanningDiskNumberOfChildrenPendingSyncDown"];
    v5->_itemPendingScanningDiskNumberOfChildrenPendingRejection = [v4 decodeIntegerForKey:@"_itemPendingScanningDiskNumberOfChildrenPendingRejection"];
  }

  return v5;
}

- (id)json
{
  v3 = objc_opt_new();
  [v3 setObject:self->_itemIdentifier forKeyedSubscript:@"itemIdentifier"];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingScanningDiskEnumerationStatus];
  [v3 setObject:v4 forKeyedSubscript:@"itemPendingScanningDiskEnumerationStatus"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_itemPendingScanningDiskHasMultiplePagesEnumeration];
  [v3 setObject:v5 forKeyedSubscript:@"itemPendingScanningDiskHasMultiplePagesEnumeration"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingScanningDiskNumberOfChildrenPendingReconciliation];
  [v3 setObject:v6 forKeyedSubscript:@"itemPendingScanningDiskNumberOfChildrenPendingReconciliation"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation];
  [v3 setObject:v7 forKeyedSubscript:@"itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion];
  [v3 setObject:v8 forKeyedSubscript:@"itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion];
  [v3 setObject:v9 forKeyedSubscript:@"itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent];
  [v3 setObject:v10 forKeyedSubscript:@"itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUp];
  [v3 setObject:v11 forKeyedSubscript:@"itemPendingScanningDiskNumberOfChildrenPendingSyncUp"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent];
  [v3 setObject:v12 forKeyedSubscript:@"itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDown];
  [v3 setObject:v13 forKeyedSubscript:@"itemPendingScanningDiskNumberOfChildrenPendingSyncDown"];

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingScanningDiskNumberOfChildrenPendingRejection];
  [v3 setObject:v14 forKeyedSubscript:@"itemPendingScanningDiskNumberOfChildrenPendingRejection"];

  return v3;
}

@end