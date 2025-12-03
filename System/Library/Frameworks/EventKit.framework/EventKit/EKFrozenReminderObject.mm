@interface EKFrozenReminderObject
+ (id)uniqueIdentifierForREMObject:(id)object;
- (BOOL)_applyChangesToSaveRequest:(id)request error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNew;
- (EKFrozenReminderObject)initWithREMObject:(id)object inStore:(id)store withChanges:(id)changes;
- (id)updateParentToCommitSelf:(id)self;
- (id)updatedFrozenObjectWithChanges:(id)changes updatedChildren:(id)children;
- (id)valueForSingleValueKey:(id)key backingValue:(id)value;
- (unint64_t)hash;
@end

@implementation EKFrozenReminderObject

- (EKFrozenReminderObject)initWithREMObject:(id)object inStore:(id)store withChanges:(id)changes
{
  objectCopy = object;
  storeCopy = store;
  changesCopy = changes;
  v18.receiver = self;
  v18.super_class = EKFrozenReminderObject;
  v13 = [(EKPersistentObject *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_remObject, object);
    objc_storeWeak(&v14->_reminderStore, storeCopy);
    eventStore = [storeCopy eventStore];
    [(EKPersistentObject *)v14 _setEventStore:eventStore];

    objc_storeStrong(&v14->_changeSet, changes);
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

- (id)updatedFrozenObjectWithChanges:(id)changes updatedChildren:(id)children
{
  changesCopy = changes;
  childrenCopy = children;
  v8 = childrenCopy;
  if (changesCopy)
  {
    changeSet = self->_changeSet;
    if (!changeSet)
    {
      v10 = [changesCopy copy];
      [v10 setSkipsPersistentObjectCopy:1];
LABEL_8:
      [v10 replaceUniqueMultiValueObjectsWithUpdatedObjects:v8];
      v11 = objc_alloc(objc_opt_class());
      rEMObject = [(EKFrozenReminderObject *)self REMObject];
      WeakRetained = objc_loadWeakRetained(&self->_reminderStore);
      selfCopy = [v11 initWithREMObject:rEMObject inStore:WeakRetained withChanges:v10];

      goto LABEL_10;
    }

LABEL_6:
    v10 = [(EKChangeSet *)changeSet copy];
    [v10 setSkipsPersistentObjectCopy:1];
    if (changesCopy)
    {
      [v10 addChangesAndUpdateUniqueMultiValueObjects:changesCopy];
    }

    goto LABEL_8;
  }

  if (childrenCopy)
  {
    changeSet = self->_changeSet;
    if (changeSet)
    {
      goto LABEL_6;
    }
  }

  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (id)valueForSingleValueKey:(id)key backingValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  if ([(EKChangeSet *)self->_changeSet hasUnsavedChangeForKey:keyCopy])
  {
    [(EKChangeSet *)self->_changeSet valueForSingleValueKey:keyCopy basedOn:0];
  }

  else
  {
    valueCopy[2](valueCopy);
  }
  v8 = ;

  return v8;
}

- (BOOL)_applyChangesToSaveRequest:(id)request error:(id *)error
{
  v6 = [EKReminderStore log:request];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [EKFrozenReminderObject _applyChangesToSaveRequest:v6 error:?];
  }

  [(EKFrozenReminderObject *)self doesNotRecognizeSelector:a2];
  return 0;
}

+ (id)uniqueIdentifierForREMObject:(id)object
{
  objectID = [object objectID];
  uuid = [objectID uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (id)updateParentToCommitSelf:(id)self
{
  selfCopy = self;
  v5 = +[EKReminderStore log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(EKFrozenReminderObject *)self updateParentToCommitSelf:selfCopy, v5];
  }

  return selfCopy;
}

- (BOOL)isNew
{
  rEMObject = [(EKFrozenReminderObject *)self REMObject];
  v3 = rEMObject == 0;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
    goto LABEL_12;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v8 = equalCopy;
    uniqueIdentifier = [(EKFrozenReminderObject *)self uniqueIdentifier];
    if (uniqueIdentifier || ([(EKFrozenReminderObject *)v8 uniqueIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      uniqueIdentifier2 = [(EKFrozenReminderObject *)self uniqueIdentifier];
      uniqueIdentifier3 = [(EKFrozenReminderObject *)v8 uniqueIdentifier];
      v7 = [uniqueIdentifier2 isEqual:uniqueIdentifier3];

      if (uniqueIdentifier)
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
  uniqueIdentifier = [(EKFrozenReminderObject *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

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