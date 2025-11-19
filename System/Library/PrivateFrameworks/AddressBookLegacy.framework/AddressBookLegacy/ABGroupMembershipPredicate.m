@interface ABGroupMembershipPredicate
- (id)description;
- (id)queryWhereStringForPredicateIdentifier:(int)a3;
- (void)ab_bindWhereClauseComponentOfStatement:(CPSqliteStatement *)a3 withBindingOffset:(int *)a4 predicateIdentifier:(int)a5;
- (void)dealloc;
- (void)setGroup:(void *)a3;
- (void)setStore:(void *)a3;
@end

@implementation ABGroupMembershipPredicate

- (void)dealloc
{
  group = self->_group;
  if (group)
  {
    CFRelease(group);
  }

  store = self->_store;
  if (store)
  {
    CFRelease(store);
  }

  v5.receiver = self;
  v5.super_class = ABGroupMembershipPredicate;
  [(ABPredicate *)&v5 dealloc];
}

- (void)setGroup:(void *)a3
{
  group = self->_group;
  if (group != a3)
  {
    if (group)
    {
      CFRelease(group);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    self->_group = a3;
  }
}

- (void)setStore:(void *)a3
{
  store = self->_store;
  if (store != a3)
  {
    if (store)
    {
      CFRelease(store);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    self->_store = a3;
  }
}

- (id)queryWhereStringForPredicateIdentifier:(int)a3
{
  if ([(ABGroupMembershipPredicate *)self group])
  {
    v4 = ABRecordGetRecordID([(ABGroupMembershipPredicate *)self group]) == -1;
  }

  else
  {
    v4 = 1;
  }

  if (![(ABGroupMembershipPredicate *)self store])
  {
    v7 = objc_opt_new();
    if (v4)
    {
      goto LABEL_9;
    }

    v8 = @" abp.ROWID IN (select member_id FROM ABGroupMembers WHERE group_id = ? AND member_type = 0)";
    goto LABEL_15;
  }

  RecordID = ABRecordGetRecordID([(ABGroupMembershipPredicate *)self store]);
  v6 = objc_opt_new();
  v7 = v6;
  if (!v4)
  {
    CFStringAppend(v6, @" abp.ROWID IN (select member_id FROM ABGroupMembers WHERE group_id = ? AND member_type = 0)");
    if (RecordID == -1)
    {
LABEL_16:
      if (!self->_accountIdentifier)
      {
        goto LABEL_19;
      }

      CFStringAppend(v7, @" AND");
      goto LABEL_18;
    }

    CFStringAppend(v7, @" AND");
    goto LABEL_13;
  }

  if (RecordID != -1)
  {
LABEL_13:
    v8 = @" StoreID = ?";
LABEL_15:
    CFStringAppend(v7, v8);
    goto LABEL_16;
  }

LABEL_9:
  if (self->_accountIdentifier)
  {
LABEL_18:
    CFStringAppend(v7, @" StoreID IN (SELECT abs.RowID FROM ABStore abs, ABAccount aba WHERE abs.AccountID = aba.ROWID AND aba.AccountIdentifier = ?)");
  }

LABEL_19:

  return v7;
}

- (void)ab_bindWhereClauseComponentOfStatement:(CPSqliteStatement *)a3 withBindingOffset:(int *)a4 predicateIdentifier:(int)a5
{
  if ([(ABGroupMembershipPredicate *)self group:a3])
  {
    RecordID = ABRecordGetRecordID([(ABGroupMembershipPredicate *)self group]);
  }

  else
  {
    RecordID = -1;
  }

  if ([(ABGroupMembershipPredicate *)self store])
  {
    v9 = ABRecordGetRecordID([(ABGroupMembershipPredicate *)self store]);
  }

  else
  {
    v9 = -1;
  }

  if (RecordID != -1)
  {
    sqlite3_bind_int(a3->var1, *a4, RecordID);
    ++*a4;
  }

  if (v9 != -1)
  {
    sqlite3_bind_int(a3->var1, *a4, v9);
    ++*a4;
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    v11.receiver = self;
    v11.super_class = ABGroupMembershipPredicate;
    [(ABPredicate *)&v11 bindString:accountIdentifier toStatement:a3 withBindingOffset:a4];
  }
}

- (id)description
{
  if ([(ABGroupMembershipPredicate *)self group])
  {
    RecordID = ABRecordGetRecordID([(ABGroupMembershipPredicate *)self group]);
  }

  else
  {
    RecordID = 0xFFFFFFFFLL;
  }

  if ([(ABGroupMembershipPredicate *)self store])
  {
    v4 = ABRecordGetRecordID([(ABGroupMembershipPredicate *)self store]);
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  if ([(ABGroupMembershipPredicate *)self group])
  {
    v5 = ABRecordCopyValue([(ABGroupMembershipPredicate *)self group], kABGroupNameProperty);
  }

  else
  {
    v5 = 0;
  }

  if ([(ABGroupMembershipPredicate *)self store])
  {
    v6 = ABRecordCopyValue([(ABGroupMembershipPredicate *)self store], kABSourceNameProperty);
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ABPredicate %p - person in group (%i %@), store (%i %@), account (%@)", self, RecordID, v5, v4, v6, self->_accountIdentifier];

  return v7;
}

@end