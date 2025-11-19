@interface EKFrozenReminderObject
+ (id)uniqueIdentifierForREMObject:(id)a3;
- (BOOL)_applyChangesToSaveRequest:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNew;
- (EKFrozenReminderObject)initWithREMObject:(id)a3 inStore:(id)a4 withChanges:(id)a5;
- (id)updateParentToCommitSelf:(id)a3;
- (id)updatedFrozenObjectWithChanges:(id)a3 updatedChildren:(id)a4;
- (id)valueForSingleValueKey:(id)a3 backingValue:(id)a4;
- (unint64_t)hash;
@end

@implementation EKFrozenReminderObject

- (EKFrozenReminderObject)initWithREMObject:(id)a3 inStore:(id)a4 withChanges:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v18.receiver = self;
  v18.super_class = EKFrozenReminderObject;
  v13 = [(EKPersistentObject *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_remObject, a3);
    objc_storeWeak(&v14->_reminderStore, v11);
    v15 = [v11 eventStore];
    [(EKPersistentObject *)v14 _setEventStore:v15];

    objc_storeStrong(&v14->_changeSet, a5);
    changeSet = v14->_changeSet;
    if (changeSet)
    {
      if (![(EKChangeSet *)changeSet skipsPersistentObjectCopy])
      {
        [EKFrozenReminderObject initWithREMObject:a2 inStore:v14 withChanges:?];
      }
    }
  }

  return v14;
}

- (id)updatedFrozenObjectWithChanges:(id)a3 updatedChildren:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    changeSet = self->_changeSet;
    if (!changeSet)
    {
      v10 = [v6 copy];
      [v10 setSkipsPersistentObjectCopy:1];
LABEL_8:
      [v10 replaceUniqueMultiValueObjectsWithUpdatedObjects:v8];
      v11 = objc_alloc(objc_opt_class());
      v12 = [(EKFrozenReminderObject *)self REMObject];
      WeakRetained = objc_loadWeakRetained(&self->_reminderStore);
      v14 = [v11 initWithREMObject:v12 inStore:WeakRetained withChanges:v10];

      goto LABEL_10;
    }

LABEL_6:
    v10 = [(EKChangeSet *)changeSet copy];
    [v10 setSkipsPersistentObjectCopy:1];
    if (v6)
    {
      [v10 addChangesAndUpdateUniqueMultiValueObjects:v6];
    }

    goto LABEL_8;
  }

  if (v7)
  {
    changeSet = self->_changeSet;
    if (changeSet)
    {
      goto LABEL_6;
    }
  }

  v14 = self;
LABEL_10:

  return v14;
}

- (id)valueForSingleValueKey:(id)a3 backingValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(EKChangeSet *)self->_changeSet hasUnsavedChangeForKey:v6])
  {
    [(EKChangeSet *)self->_changeSet valueForSingleValueKey:v6 basedOn:0];
  }

  else
  {
    v7[2](v7);
  }
  v8 = ;

  return v8;
}

- (BOOL)_applyChangesToSaveRequest:(id)a3 error:(id *)a4
{
  v6 = [EKReminderStore log:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [EKFrozenReminderObject _applyChangesToSaveRequest:v6 error:?];
  }

  [(EKFrozenReminderObject *)self doesNotRecognizeSelector:a2];
  return 0;
}

+ (id)uniqueIdentifierForREMObject:(id)a3
{
  v3 = [a3 objectID];
  v4 = [v3 uuid];
  v5 = [v4 UUIDString];

  return v5;
}

- (id)updateParentToCommitSelf:(id)a3
{
  v4 = a3;
  v5 = +[EKReminderStore log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(EKFrozenReminderObject *)self updateParentToCommitSelf:v4, v5];
  }

  return v4;
}

- (BOOL)isNew
{
  v2 = [(EKFrozenReminderObject *)self REMObject];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v7 = 1;
    goto LABEL_12;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v8 = v5;
    v9 = [(EKFrozenReminderObject *)self uniqueIdentifier];
    if (v9 || ([(EKFrozenReminderObject *)v8 uniqueIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = [(EKFrozenReminderObject *)self uniqueIdentifier];
      v11 = [(EKFrozenReminderObject *)v8 uniqueIdentifier];
      v7 = [v10 isEqual:v11];

      if (v9)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (unint64_t)hash
{
  v2 = [(EKFrozenReminderObject *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (void)initWithREMObject:(uint64_t)a1 inStore:(uint64_t)a2 withChanges:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKFrozenReminderObject.m" lineNumber:36 description:@"You must set skipsPersistentObjectCopy on change sets used by EKFrozenReminderObject."];
}

- (void)_applyChangesToSaveRequest:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "_applyChangesToSaveRequest:error: called on a class (%{public}@) that doesn't provide an implementation.", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateParentToCommitSelf:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "This object doesn't know how to update its parent. self=%@, parent=%@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end