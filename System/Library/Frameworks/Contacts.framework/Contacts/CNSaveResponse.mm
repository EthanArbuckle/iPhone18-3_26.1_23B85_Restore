@interface CNSaveResponse
- (CNSaveResponse)init;
- (CNSaveResponse)initWithCoder:(id)a3;
- (void)applySnapshotsToSaveRequest:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNSaveResponse

- (CNSaveResponse)init
{
  v10.receiver = self;
  v10.super_class = CNSaveResponse;
  v2 = [(CNSaveResponse *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    contactSnapshotsByIndexPath = v2->_contactSnapshotsByIndexPath;
    v2->_contactSnapshotsByIndexPath = v3;

    v5 = objc_opt_new();
    groupSnapshotsByIndexPath = v2->_groupSnapshotsByIndexPath;
    v2->_groupSnapshotsByIndexPath = v5;

    v7 = objc_opt_new();
    containerSnapshotsByIndexPath = v2->_containerSnapshotsByIndexPath;
    v2->_containerSnapshotsByIndexPath = v7;
  }

  return v2;
}

- (CNSaveResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CNSaveResponse;
  v5 = [(CNSaveResponse *)&v29 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_contactSnapshotsByIndexPath"];
    contactSnapshotsByIndexPath = v5->_contactSnapshotsByIndexPath;
    v5->_contactSnapshotsByIndexPath = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"_groupSnapshotsByIndexPath"];
    groupSnapshotsByIndexPath = v5->_groupSnapshotsByIndexPath;
    v5->_groupSnapshotsByIndexPath = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v20 setWithObjects:{v21, v22, v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"_containerSnapshotsByIndexPath"];
    containerSnapshotsByIndexPath = v5->_containerSnapshotsByIndexPath;
    v5->_containerSnapshotsByIndexPath = v25;

    v5->_didAffectMeCard = [v4 decodeBoolForKey:@"_didAffectMeCard"];
    v27 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contactSnapshotsByIndexPath = self->_contactSnapshotsByIndexPath;
  v5 = a3;
  [v5 encodeObject:contactSnapshotsByIndexPath forKey:@"_contactSnapshotsByIndexPath"];
  [v5 encodeObject:self->_groupSnapshotsByIndexPath forKey:@"_groupSnapshotsByIndexPath"];
  [v5 encodeObject:self->_containerSnapshotsByIndexPath forKey:@"_containerSnapshotsByIndexPath"];
  [v5 encodeBool:self->_didAffectMeCard forKey:@"_didAffectMeCard"];
}

- (void)applySnapshotsToSaveRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 allContacts];
  contactSnapshotsByIndexPath = self->_contactSnapshotsByIndexPath;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__CNSaveResponse_applySnapshotsToSaveRequest___block_invoke;
  v18[3] = &unk_1E7415C20;
  v19 = v5;
  v7 = v5;
  [(NSMutableDictionary *)contactSnapshotsByIndexPath enumerateKeysAndObjectsUsingBlock:v18];
  v8 = [v4 allGroups];
  groupSnapshotsByIndexPath = self->_groupSnapshotsByIndexPath;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__CNSaveResponse_applySnapshotsToSaveRequest___block_invoke_2;
  v16[3] = &unk_1E7415C48;
  v17 = v8;
  v10 = v8;
  [(NSMutableDictionary *)groupSnapshotsByIndexPath enumerateKeysAndObjectsUsingBlock:v16];
  v11 = [v4 allContainers];

  containerSnapshotsByIndexPath = self->_containerSnapshotsByIndexPath;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__CNSaveResponse_applySnapshotsToSaveRequest___block_invoke_3;
  v14[3] = &unk_1E7415C70;
  v15 = v11;
  v13 = v11;
  [(NSMutableDictionary *)containerSnapshotsByIndexPath enumerateKeysAndObjectsUsingBlock:v14];
}

void __46__CNSaveResponse_applySnapshotsToSaveRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectAtIndex:{objc_msgSend(v11, "indexAtPosition:", 0)}];
  if ([v11 length] < 2)
  {
    v9 = v6;
  }

  else
  {
    v7 = [v11 indexAtPosition:1];
    v8 = [v6 linkedContacts];
    v9 = [v8 objectAtIndex:v7];
  }

  v10 = (*(*MEMORY[0x1E6996590] + 16))();
  [v9 updateStateFromContact:v10];
}

void __46__CNSaveResponse_applySnapshotsToSaveRequest___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [v4 objectAtIndex:{objc_msgSend(a2, "indexAtPosition:", 0)}];
  v6 = (*(*MEMORY[0x1E6996590] + 16))();

  [v7 adoptValuesFromAndSetSnapshot:v6];
}

void __46__CNSaveResponse_applySnapshotsToSaveRequest___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [v4 objectAtIndex:{objc_msgSend(a2, "indexAtPosition:", 0)}];
  v6 = (*(*MEMORY[0x1E6996590] + 16))();

  [v7 adoptValuesFromAndSetSnapshot:v6];
}

@end