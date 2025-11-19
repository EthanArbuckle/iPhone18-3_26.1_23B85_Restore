@interface CKSQLiteDatabaseActivities
- (BOOL)hasPendingActivities:(id *)a3;
- (id)activitiesStartingBeforeDate:(id)a3;
- (id)deleteCompletedActivities;
- (id)deleteEntriesForDatabase:(id)a3;
- (id)wakeFromDatabase;
@end

@implementation CKSQLiteDatabaseActivities

- (id)wakeFromDatabase
{
  v13.receiver = self;
  v13.super_class = CKSQLiteDatabaseActivities;
  v3 = [(CKSQLiteTable *)&v13 wakeFromDatabase];
  v6 = objc_msgSend_tableGroup(self, v4, v5);
  isFirstInstanceInProcess = objc_msgSend_isFirstInstanceInProcess(v6, v7, v8);

  if (isFirstInstanceInProcess && !v3)
  {
    v3 = objc_msgSend_deleteCompletedActivities(self, v10, v11);
  }

  return v3;
}

- (id)activitiesStartingBeforeDate:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1883EE1EC;
  v18 = sub_1883EF79C;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188677370;
  v10[3] = &unk_1E70BC0C0;
  v5 = v4;
  v11 = v5;
  v12 = self;
  v13 = &v14;
  v7 = objc_msgSend_performInTransaction_(self, v6, v10);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (id)deleteCompletedActivities
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"NOW";
  v4 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, v2);
  v14[0] = v4;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v14, &v13, 1);

  v12 = 0;
  objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v7, v6, off_1EA910C98, &v12, &unk_1EFA30030);
  v8 = v12;
  v9 = v12;

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)deleteEntriesForDatabase:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = @"DATABASEID";
  v15[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v15, &v14, 1);
  v13 = 0;
  objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v8, v7, off_1EA910CB0, &v13, &unk_1EFA30050);
  v9 = v13;
  v10 = v13;

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)hasPendingActivities:(id *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1886777B0;
  v7[3] = &unk_1E70BC218;
  v7[4] = self;
  v7[5] = &v8;
  v4 = objc_msgSend_performInTransaction_(self, a2, v7);
  if (a3 && v4)
  {
    v4 = v4;
    *a3 = v4;
  }

  v5 = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return v5;
}

@end