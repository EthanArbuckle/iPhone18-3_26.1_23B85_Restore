@interface EKFrozenReminderCalendar
- (BOOL)_applyChanges:(id)a3 error:(id *)a4;
- (BOOL)_applyChangesToSaveRequest:(id)a3 error:(id *)a4;
- (id)REMColorFromEKHexColorString:(id)a3;
- (id)_account;
- (id)calendarIdentifier;
- (id)colorStringRaw;
- (id)externalID;
- (id)frozenReminderSource;
- (id)hexColorStringFromREMColor:(id)a3;
- (id)initNewListInStore:(id)a3;
- (id)remObjectID;
- (id)sharedOwnerName;
- (id)source;
- (id)title;
- (id)updateListWithSaveRequest:(id)a3 error:(id *)a4;
- (int)displayOrder;
- (unint64_t)ekSharingStatusFromREMSharingStatus:(int64_t)a3;
- (unint64_t)sharingStatus;
@end

@implementation EKFrozenReminderCalendar

- (id)initNewListInStore:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(EKChangeSet);
  [(EKChangeSet *)v5 setSkipsPersistentObjectCopy:1];
  v6 = [getREMListClass() newObjectID];
  v7 = [v6 uuid];
  v8 = [v7 UUIDString];
  [(EKChangeSet *)v5 changeSingleValue:v8 forKey:@"UUID" basedOn:0];

  v11.receiver = self;
  v11.super_class = EKFrozenReminderCalendar;
  v9 = [(EKFrozenReminderObject *)&v11 initWithREMObject:0 inStore:v4 withChanges:v5];

  return v9;
}

- (id)remObjectID
{
  v3 = [(EKFrozenReminderCalendar *)self _list];

  if (v3)
  {
    v4 = [(EKFrozenReminderCalendar *)self _list];
    v5 = [v4 objectID];
  }

  else
  {
    v4 = [(EKFrozenReminderCalendar *)self calendarIdentifier];
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
    v5 = [getREMListClass() objectIDWithUUID:v6];
  }

  return v5;
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
  v3 = [(EKFrozenReminderCalendar *)self _list];
  v4 = [v3 sharingStatus];

  return [(EKFrozenReminderCalendar *)self ekSharingStatusFromREMSharingStatus:v4];
}

- (unint64_t)ekSharingStatusFromREMSharingStatus:(int64_t)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 2);
  }
}

- (id)REMColorFromEKHexColorString:(id)a3
{
  v3 = [a3 uppercaseString];
  v4 = [getREMColorClass() colorWithHexString:v3];
  if (!v4)
  {
    if ([v3 hasPrefix:@"#"] && objc_msgSend(v3, "length") == 9)
    {
      REMColorClass = getREMColorClass();
      v6 = [v3 substringToIndex:7];
      v4 = [REMColorClass colorWithHexString:v6];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)hexColorStringFromREMColor:(id)a3
{
  v3 = [a3 hexString];
  if ([v3 length] <= 8)
  {
    v4 = [v3 stringByAppendingString:@"FF"];

    v3 = v4;
  }

  return v3;
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
  v3 = [(EKFrozenReminderCalendar *)self frozenReminderSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 remAccount];
  }

  else
  {
    v6 = [(EKFrozenReminderCalendar *)self _list];
    v5 = [v6 account];
  }

  return v5;
}

- (BOOL)_applyChanges:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"unlocalizedTitle"])
  {
    v7 = [(EKChangeSet *)self->super._changeSet valueForSingleValueKey:@"unlocalizedTitle" basedOn:0];
    [v6 setName:v7];
  }

  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"colorStringRaw"])
  {
    v8 = [(EKChangeSet *)self->super._changeSet valueForSingleValueKey:@"colorStringRaw" basedOn:0];
    v9 = [(EKFrozenReminderCalendar *)self REMColorFromEKHexColorString:v8];
    [v6 setColor:v9];
  }

  if (![(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"source"])
  {
    goto LABEL_8;
  }

  v10 = [(EKFrozenReminderCalendar *)self frozenReminderSource];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 REMObject];
    v13 = [v6 saveRequest];
    v14 = [v13 updateAccount:v12];

    [v14 addListChangeItem:v6];
LABEL_8:
    v15 = 1;
    goto LABEL_9;
  }

  if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithEKErrorCode:24];
    *a4 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_9:

  return v15;
}

- (BOOL)_applyChangesToSaveRequest:(id)a3 error:(id *)a4
{
  v6 = [(EKFrozenReminderCalendar *)self updateListWithSaveRequest:a3 error:?];
  if (v6)
  {
    v7 = [(EKFrozenReminderCalendar *)self _applyChanges:v6 error:a4];
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
    v3 = v2;
  }

  else
  {
    v3 = [v2 reminderSource];
  }

  v4 = v3;

  return v4;
}

- (id)updateListWithSaveRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([(EKFrozenReminderObject *)self isNew])
  {
    listChange = self->_listChange;
    if (!listChange)
    {
      v7 = [(EKFrozenReminderCalendar *)self frozenReminderSource];
      v8 = [v7 REMObject];
      v9 = [v5 updateAccount:v8];
      v10 = [(EKFrozenReminderCalendar *)self title];
      v11 = v10;
      v12 = &stru_1F1B49D68;
      if (v10)
      {
        v12 = v10;
      }

      v13 = v12;

      v14 = [(EKFrozenReminderCalendar *)self remObjectID];
      v15 = [v5 addListWithName:v13 toAccountChangeItem:v9 listObjectID:v14];

      v16 = self->_listChange;
      self->_listChange = v15;

      listChange = self->_listChange;
    }

    v17 = listChange;
  }

  else
  {
    v18 = [(EKFrozenReminderCalendar *)self _list];
    v17 = [v5 updateList:v18];
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
  v3 = [v2 intValue];

  return v3;
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
  v2 = [(EKFrozenReminderCalendar *)self _list];
  v3 = [v2 sharedOwnerName];

  return v3;
}

@end