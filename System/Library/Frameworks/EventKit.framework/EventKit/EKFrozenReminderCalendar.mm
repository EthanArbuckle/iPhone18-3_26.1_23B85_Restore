@interface EKFrozenReminderCalendar
- (BOOL)_applyChanges:(id)changes error:(id *)error;
- (BOOL)_applyChangesToSaveRequest:(id)request error:(id *)error;
- (id)REMColorFromEKHexColorString:(id)string;
- (id)_account;
- (id)calendarIdentifier;
- (id)colorStringRaw;
- (id)externalID;
- (id)frozenReminderSource;
- (id)hexColorStringFromREMColor:(id)color;
- (id)initNewListInStore:(id)store;
- (id)remObjectID;
- (id)sharedOwnerName;
- (id)source;
- (id)title;
- (id)updateListWithSaveRequest:(id)request error:(id *)error;
- (int)displayOrder;
- (unint64_t)ekSharingStatusFromREMSharingStatus:(int64_t)status;
- (unint64_t)sharingStatus;
@end

@implementation EKFrozenReminderCalendar

- (id)initNewListInStore:(id)store
{
  storeCopy = store;
  v5 = objc_alloc_init(EKChangeSet);
  [(EKChangeSet *)v5 setSkipsPersistentObjectCopy:1];
  newObjectID = [getREMListClass() newObjectID];
  uuid = [newObjectID uuid];
  uUIDString = [uuid UUIDString];
  [(EKChangeSet *)v5 changeSingleValue:uUIDString forKey:@"UUID" basedOn:0];

  v11.receiver = self;
  v11.super_class = EKFrozenReminderCalendar;
  v9 = [(EKFrozenReminderObject *)&v11 initWithREMObject:0 inStore:storeCopy withChanges:v5];

  return v9;
}

- (id)remObjectID
{
  _list = [(EKFrozenReminderCalendar *)self _list];

  if (_list)
  {
    _list2 = [(EKFrozenReminderCalendar *)self _list];
    objectID = [_list2 objectID];
  }

  else
  {
    _list2 = [(EKFrozenReminderCalendar *)self calendarIdentifier];
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:_list2];
    objectID = [getREMListClass() objectIDWithUUID:v6];
  }

  return objectID;
}

- (id)title
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__EKFrozenReminderCalendar_title__block_invoke;
  v4[3] = &unk_1E77FCF88;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"unlocalizedTitle" backingValue:v4];

  return v2;
}

id __33__EKFrozenReminderCalendar_title__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _list];
  v2 = [v1 name];

  return v2;
}

- (id)colorStringRaw
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__EKFrozenReminderCalendar_colorStringRaw__block_invoke;
  v4[3] = &unk_1E77FCF88;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"colorStringRaw" backingValue:v4];

  return v2;
}

id __42__EKFrozenReminderCalendar_colorStringRaw__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _list];
  v3 = [v2 ekColor];

  v4 = [*(a1 + 32) hexColorStringFromREMColor:v3];

  return v4;
}

- (unint64_t)sharingStatus
{
  _list = [(EKFrozenReminderCalendar *)self _list];
  sharingStatus = [_list sharingStatus];

  return [(EKFrozenReminderCalendar *)self ekSharingStatusFromREMSharingStatus:sharingStatus];
}

- (unint64_t)ekSharingStatusFromREMSharingStatus:(int64_t)status
{
  if (status == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (status == 2);
  }
}

- (id)REMColorFromEKHexColorString:(id)string
{
  uppercaseString = [string uppercaseString];
  v4 = [getREMColorClass() colorWithHexString:uppercaseString];
  if (!v4)
  {
    if ([uppercaseString hasPrefix:@"#"] && objc_msgSend(uppercaseString, "length") == 9)
    {
      REMColorClass = getREMColorClass();
      v6 = [uppercaseString substringToIndex:7];
      v4 = [REMColorClass colorWithHexString:v6];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)hexColorStringFromREMColor:(id)color
{
  hexString = [color hexString];
  if ([hexString length] <= 8)
  {
    v4 = [hexString stringByAppendingString:@"FF"];

    hexString = v4;
  }

  return hexString;
}

- (id)calendarIdentifier
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__EKFrozenReminderCalendar_calendarIdentifier__block_invoke;
  v4[3] = &unk_1E77FCF88;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"UUID" backingValue:v4];

  return v2;
}

id __46__EKFrozenReminderCalendar_calendarIdentifier__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _list];
  v2 = [v1 objectID];
  v3 = [v2 uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (id)source
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__EKFrozenReminderCalendar_source__block_invoke;
  v4[3] = &unk_1E77FCFB0;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"source" backingValue:v4];

  return v2;
}

id __34__EKFrozenReminderCalendar_source__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _list];
  v3 = [v2 account];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v5 = [WeakRetained eventStore];
  v6 = [v3 objectID];
  v7 = [v6 uuid];
  v8 = [v7 UUIDString];
  v9 = [v5 eventSourceIDForReminderSourceID:v8];

  if (!v9)
  {
    goto LABEL_3;
  }

  v10 = objc_loadWeakRetained((*(a1 + 32) + 128));
  v11 = [v10 eventStore];
  v12 = [v11 sourceWithIdentifier:v9];

  v13 = [v12 backingObject];

  if (!v13)
  {
LABEL_3:
    v14 = objc_loadWeakRetained((*(a1 + 32) + 128));
    v13 = [v14 frozenObjectForReminderObject:v3];
  }

  return v13;
}

- (id)_account
{
  frozenReminderSource = [(EKFrozenReminderCalendar *)self frozenReminderSource];
  v4 = frozenReminderSource;
  if (frozenReminderSource)
  {
    remAccount = [frozenReminderSource remAccount];
  }

  else
  {
    _list = [(EKFrozenReminderCalendar *)self _list];
    remAccount = [_list account];
  }

  return remAccount;
}

- (BOOL)_applyChanges:(id)changes error:(id *)error
{
  changesCopy = changes;
  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"unlocalizedTitle"])
  {
    v7 = [(EKChangeSet *)self->super._changeSet valueForSingleValueKey:@"unlocalizedTitle" basedOn:0];
    [changesCopy setName:v7];
  }

  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"colorStringRaw"])
  {
    v8 = [(EKChangeSet *)self->super._changeSet valueForSingleValueKey:@"colorStringRaw" basedOn:0];
    v9 = [(EKFrozenReminderCalendar *)self REMColorFromEKHexColorString:v8];
    [changesCopy setColor:v9];
  }

  if (![(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"source"])
  {
    goto LABEL_8;
  }

  frozenReminderSource = [(EKFrozenReminderCalendar *)self frozenReminderSource];
  if (frozenReminderSource)
  {
    v11 = frozenReminderSource;
    rEMObject = [frozenReminderSource REMObject];
    saveRequest = [changesCopy saveRequest];
    v14 = [saveRequest updateAccount:rEMObject];

    [v14 addListChangeItem:changesCopy];
LABEL_8:
    v15 = 1;
    goto LABEL_9;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithEKErrorCode:24];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_9:

  return v15;
}

- (BOOL)_applyChangesToSaveRequest:(id)request error:(id *)error
{
  v6 = [(EKFrozenReminderCalendar *)self updateListWithSaveRequest:request error:?];
  if (v6)
  {
    v7 = [(EKFrozenReminderCalendar *)self _applyChanges:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)frozenReminderSource
{
  v2 = [(EKChangeSet *)self->super._changeSet valueForSingleValueKey:@"source" basedOn:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    reminderSource = v2;
  }

  else
  {
    reminderSource = [v2 reminderSource];
  }

  v4 = reminderSource;

  return v4;
}

- (id)updateListWithSaveRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if ([(EKFrozenReminderObject *)self isNew])
  {
    listChange = self->_listChange;
    if (!listChange)
    {
      frozenReminderSource = [(EKFrozenReminderCalendar *)self frozenReminderSource];
      rEMObject = [frozenReminderSource REMObject];
      v9 = [requestCopy updateAccount:rEMObject];
      title = [(EKFrozenReminderCalendar *)self title];
      v11 = title;
      v12 = &stru_1F1B49D68;
      if (title)
      {
        v12 = title;
      }

      v13 = v12;

      remObjectID = [(EKFrozenReminderCalendar *)self remObjectID];
      v15 = [requestCopy addListWithName:v13 toAccountChangeItem:v9 listObjectID:remObjectID];

      v16 = self->_listChange;
      self->_listChange = v15;

      listChange = self->_listChange;
    }

    v17 = listChange;
  }

  else
  {
    _list = [(EKFrozenReminderCalendar *)self _list];
    v17 = [requestCopy updateList:_list];
  }

  return v17;
}

- (int)displayOrder
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__EKFrozenReminderCalendar_displayOrder__block_invoke;
  v5[3] = &unk_1E77FCF40;
  v5[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"displayOrder" backingValue:v5];
  intValue = [v2 intValue];

  return intValue;
}

id __40__EKFrozenReminderCalendar_displayOrder__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) _list];
  v3 = [v1 numberWithInteger:{objc_msgSend(v2, "daDisplayOrder")}];

  return v3;
}

- (id)externalID
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__EKFrozenReminderCalendar_externalID__block_invoke;
  v4[3] = &unk_1E77FCF88;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"UUID" backingValue:v4];

  return v2;
}

id __38__EKFrozenReminderCalendar_externalID__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _list];
  v2 = [v1 externalIdentifier];

  return v2;
}

- (id)sharedOwnerName
{
  _list = [(EKFrozenReminderCalendar *)self _list];
  sharedOwnerName = [_list sharedOwnerName];

  return sharedOwnerName;
}

@end