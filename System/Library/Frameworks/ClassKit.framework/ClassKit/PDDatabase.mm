@interface PDDatabase
+ (Class)entityNamed:(id)a3;
+ (NSArray)recordTypesOfEntitiesTrackingUserActivity;
+ (NSArray)registeredEntities;
+ (id)nameOfEntity:(Class)a3;
+ (id)whereSQLForArray:(id)a3 prefix:(id)a4;
+ (void)registerEntities;
+ (void)registerEntity:(Class)a3;
- (BOOL)_deleteAll:(Class)a3 where:(id)a4 bindings:(id)a5 trackDeletes:(BOOL)a6;
- (BOOL)_insertObject:(id)a3;
- (BOOL)_markObject:(id)a3 as:(int64_t)a4;
- (BOOL)_postDidInsertNotificationWithEntity:(id)a3;
- (BOOL)_postWillChangeNotificationWithEntity:(id)a3;
- (BOOL)_pruneAuthTreeAtNodeWithAssignedItemStatusID:(id)a3;
- (BOOL)_pruneAuthTreeAtNodeWithContextStatusID:(id)a3;
- (BOOL)_setCurrentUser:(id)a3 withRoleLocations:(id)a4 orRole:(unint64_t)a5;
- (BOOL)_statusID:(id *)a3 deniedCount:(int64_t *)a4 authCount:(int64_t *)a5 forContextPath:(id)a6;
- (BOOL)_statusID:(id *)a3 deniedCount:(int64_t *)a4 authCount:(int64_t *)a5 forHandoutAssignedItem:(id)a6;
- (BOOL)_updateFileProtectionAttribs;
- (BOOL)_updateObject:(id)a3;
- (BOOL)childEntitiesExistForClass:(Class)a3 parentIdentity:(id)a4;
- (BOOL)deleteObject:(id)a3;
- (BOOL)entityClass:(Class)a3 containsColumnNamed:(id)a4;
- (BOOL)entityExistsByClass:(Class)a3 identity:(id)a4;
- (BOOL)insertObject:(id)a3;
- (BOOL)insertObjects:(id)a3;
- (BOOL)insertOrUpdateObject:(id)a3;
- (BOOL)insertOrUpdateObjects:(id)a3;
- (BOOL)isInSyncBlock;
- (BOOL)isIncompleteHandout:(id)a3;
- (BOOL)isSyncableDataWritten;
- (BOOL)markAll:(Class)a3 where:(id)a4 bindings:(id)a5 as:(int64_t)a6;
- (BOOL)markObject:(id)a3 as:(int64_t)a4;
- (BOOL)migrate;
- (BOOL)migrateEntity:(Class)a3;
- (BOOL)performFrameworkMigrationIfNeeded;
- (BOOL)performTransaction:(id)a3 forWriting:(BOOL)a4;
- (BOOL)saveAndSyncObjects:(id)a3;
- (BOOL)searchFor:(Class)a3 predicate:(id)a4 sortDescriptors:(id)a5 limit:(int64_t)a6 offset:(unint64_t)a7 block:(id)a8;
- (BOOL)selectAll:(Class)a3 where:(id)a4 orderBy:(id)a5 bindings:(id)a6 block:(id)a7;
- (BOOL)selectAll:(Class)a3 where:(id)a4 orderBy:(id)a5 limit:(int64_t)a6 offset:(unint64_t)a7 bindings:(id)a8 block:(id)a9;
- (BOOL)selectColumns:(id)a3 of:(Class)a4 where:(id)a5 orderBy:(id)a6 limit:(int64_t)a7 offset:(unint64_t)a8 bindings:(id)a9 block:(id)a10;
- (BOOL)syncableDatabaseEntityExistsByObjectID:(id)a3;
- (BOOL)updateAll:(Class)a3 set:(id)a4 where:(id)a5 bindings:(id)a6;
- (BOOL)updateObject:(id)a3;
- (BOOL)updateObjects:(id)a3;
- (BOOL)withSyncEnabled:(id)a3;
- (PDDatabase)init;
- (PDSQLiteDatabase)currentDB;
- (id)_databaseFileURLs;
- (id)_progressEventsForContext:(id)a3 eventType:(int64_t)a4 activityID:(id)a5 activityItemID:(id)a6;
- (id)_progressEventsWithAssignedItem:(id)a3 eventType:(int64_t)a4 activityID:(id)a5 activityItemID:(id)a6;
- (id)groupExpansionPredicate:(id)a3;
- (id)groupSearchPredicate:(id)a3;
- (id)locationIDsMatchingConstraintsForSearchSpecification:(id)a3;
- (id)locationIDsWithoutPrivilege:(id)a3 onPersonIDs:(id)a4;
- (id)locationSearchPredicateForSearchSpec:(id)a3;
- (id)normalizedValue:(id)a3 forKeyPath:(id)a4;
- (id)objectIDsForSQL:(id)a3 resultColumnName:(id)a4 bindings:(id)a5;
- (id)organizationSearchPredicateForSearchSpec:(id)a3;
- (id)personIDsAnyRoleAtLocationIDs:(id)a3;
- (id)personIDsForClassMembersMatchingConstraintsForSearchSpecification:(id)a3;
- (id)personIDsForGroupMembersMatchingConstraintsForSearchSpecification:(id)a3;
- (id)personIDsMatchingConstraintsForSearchSpecification:(id)a3;
- (id)personIDsToPerson:(id)a3;
- (id)personIDsWithRoleID:(id)a3 atLocationIDs:(id)a4;
- (id)personSearchPredicate:(id)a3;
- (id)poolItemForPool:(id)a3;
- (id)prlConstraintSQLOnColumn:(id)a3 andValues:(id)a4;
- (id)prlSelectColumn:(id)a3 havingPrivilege:(id)a4 whereConstraintColumn:(id)a5 hasValues:(id)a6;
- (id)prlSelectColumn:(id)a3 havingRoleType:(int64_t)a4 whereConstraintColumn:(id)a5 hasValues:(id)a6;
- (id)select:(Class)a3 identity:(id)a4;
- (id)select:(Class)a3 where:(id)a4 bindings:(id)a5;
- (id)selectColumns:(id)a3 of:(Class)a4 where:(id)a5 bindings:(id)a6;
- (id)trackDeletedObject:(id)a3;
- (unint64_t)count:(Class)a3 where:(id)a4 bindings:(id)a5;
- (void)_delete;
- (void)_notifyOfDataChange:(id)a3 changeTime:(id)a4 changedRowCount:(int64_t)a5;
- (void)_saveInsightEventsFor:(id)a3;
- (void)cleanupAssociatedObjects;
- (void)dealloc;
- (void)generateInsightEventsForClass:(Class)a3 where:(id)a4 bindings:(id)a5;
- (void)generateInsightEventsForObject:(id)a3;
- (void)populateSearchField:(id)a3 bindings:(id)a4;
- (void)setCurrentDB:(id)a3;
- (void)setupDevDB;
- (void)tearDownDevDB;
@end

@implementation PDDatabase

- (BOOL)searchFor:(Class)a3 predicate:(id)a4 sortDescriptors:(id)a5 limit:(int64_t)a6 offset:(unint64_t)a7 block:(id)a8
{
  if (a4)
  {
    return sub_1000429A0(self, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 1;
  }
}

- (id)objectIDsForSQL:(id)a3 resultColumnName:(id)a4 bindings:(id)a5
{
  v8 = a3;
  v9 = a4;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100013A38;
  v17[3] = &unk_100202028;
  v17[4] = self;
  v18 = v8;
  v19 = a5;
  v20 = v9;
  v10 = objc_opt_new();
  v21 = v10;
  v11 = v9;
  v12 = v19;
  v13 = v8;
  sub_10010BE68(self, v17);
  v14 = v21;
  v15 = v10;

  return v10;
}

- (id)prlConstraintSQLOnColumn:(id)a3 andValues:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && [v6 count])
  {
    v8 = [NSString stringWithFormat:@"and PRL.%@ in ", v5];
    v9 = [PDDatabase whereSQLForArray:v7 prefix:v8];
  }

  else
  {
    v9 = &stru_100206880;
  }

  return v9;
}

- (id)prlSelectColumn:(id)a3 havingRoleType:(int64_t)a4 whereConstraintColumn:(id)a5 hasValues:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [(PDDatabase *)self prlConstraintSQLOnColumn:a5 andValues:v10];
  v13 = [NSString stringWithFormat:@"select distinct %@ from PDPersonRoleLocation as PRL where PRL.roleType =? %@", v11, v12];;
  v14 = [NSMutableArray alloc];
  v15 = [NSNumber numberWithInteger:a4];
  v16 = [v14 initWithObjects:{v15, 0}];

  [v16 addObjectsFromArray:v10];
  v17 = [(PDDatabase *)self objectIDsForSQL:v13 resultColumnName:v11 bindings:v16];

  return v17;
}

- (id)prlSelectColumn:(id)a3 havingPrivilege:(id)a4 whereConstraintColumn:(id)a5 hasValues:(id)a6
{
  v10 = a4;
  if (!v10)
  {
    v10 = @"❌✋🔒";
  }

  v11 = a6;
  v12 = a3;
  v13 = [(PDDatabase *)self prlConstraintSQLOnColumn:a5 andValues:v11];
  v14 = [NSString stringWithFormat:@"select distinct %@ from PDPersonRoleLocation as PRL join PDRolePrivilege as P on PRL.roleID = P.roleID and P.privilegeName =? %@", v12, v13];;
  v15 = [[NSMutableArray alloc] initWithObjects:{v10, 0}];
  [v15 addObjectsFromArray:v11];

  v16 = [(PDDatabase *)self objectIDsForSQL:v14 resultColumnName:v12 bindings:v15];

  return v16;
}

- (id)personIDsMatchingConstraintsForSearchSpecification:(id)a3
{
  v4 = a3;
  if (![v4 hasPersonConstraints])
  {
    v11 = 0;
    goto LABEL_34;
  }

  v5 = [v4 personLocationIDs];

  if (v5)
  {
    v6 = [v4 personLocationIDs];
    v5 = [(PDDatabase *)self personIDsAnyRoleAtLocationIDs:v6];
  }

  v7 = [v4 requiredRoleID];

  if (v7)
  {
    v8 = [v4 requiredRoleID];
    v9 = [v4 personLocationIDs];
    v10 = [(PDDatabase *)self personIDsWithRoleID:v8 atLocationIDs:v9];

LABEL_9:
    goto LABEL_10;
  }

  if ([v4 requiredRoleType])
  {
    v12 = [v4 requiredRoleType];
    v8 = [v4 personLocationIDs];
    v10 = [(PDDatabase *)self personIDsWithRoleType:v12 atLocationIDs:v8];
    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:
  v13 = [v4 requiredPrivilege];

  if (v13)
  {
    v14 = [v4 requiredPrivilege];
    v15 = [v4 requiredPrivilegeLocationIDs];
    v13 = sub_100014180(self, v14, v15);
  }

  v16 = [v4 prohibitedPrivilege];

  if (v16)
  {
    v17 = [v4 prohibitedPrivilege];
    v18 = [v4 prohibitedPrivilegeLocationIDs];
    v19 = sub_1000141C8(self, v17, v18);
  }

  else
  {
    v19 = 0;
  }

  if (!v5)
  {
    if (!v10)
    {
      if (!v13)
      {
        if (!v19)
        {
          v21 = 0;
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      goto LABEL_28;
    }

    goto LABEL_20;
  }

  v20 = [NSMutableSet setWithArray:v5];
  v21 = v20;
  if (v10)
  {
    if (v20)
    {
      v22 = [NSSet setWithArray:v10];
      [v21 intersectSet:v22];

      goto LABEL_21;
    }

LABEL_20:
    v21 = [NSMutableSet setWithArray:v10];
  }

LABEL_21:
  if (!v13)
  {
    goto LABEL_24;
  }

  if (v21)
  {
    v23 = [NSSet setWithArray:v13];
    [v21 intersectSet:v23];

LABEL_24:
    if (!v19)
    {
      goto LABEL_33;
    }

LABEL_29:
    if (v21)
    {
      v24 = [NSSet setWithArray:v19];
      [v21 intersectSet:v24];

      goto LABEL_33;
    }

LABEL_32:
    v21 = [NSMutableSet setWithArray:v19];
    goto LABEL_33;
  }

LABEL_28:
  v21 = [NSMutableSet setWithArray:v13];
  if (v19)
  {
    goto LABEL_29;
  }

LABEL_33:
  v11 = [v21 allObjects];

LABEL_34:

  return v11;
}

- (id)personIDsAnyRoleAtLocationIDs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [PDDatabase whereSQLForArray:v4 prefix:@"select distinct personID from PDPersonRoleLocation where locationID in "];
    v6 = [(PDDatabase *)self objectIDsForSQL:v5 resultColumnName:@"personID" bindings:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)personIDsWithRoleID:(id)a3 atLocationIDs:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PDDatabase *)self prlConstraintSQLOnColumn:@"locationID" andValues:v6];
  v9 = [NSString stringWithFormat:@"select distinct personID from PDPersonRoleLocation as PRL where PRL.roleID =? %@", v8];;
  v10 = [[NSMutableArray alloc] initWithObjects:{v7, 0}];

  [v10 addObjectsFromArray:v6];
  v11 = [(PDDatabase *)self objectIDsForSQL:v9 resultColumnName:@"personID" bindings:v10];

  return v11;
}

- (id)locationSearchPredicateForSearchSpec:(id)a3
{
  v4 = a3;
  v5 = [(PDDatabase *)self locationIDsMatchingConstraintsForSearchSpecification:v4];
  if (v5)
  {
    v6 = [v4 searchString];

    if (v6)
    {
      v7 = [v4 classLocationIDs];
      v8 = [v4 predicateWithLocationIDs:v7];

      goto LABEL_7;
    }

    v9 = [CLSDataObserver predicateForObjectsWithObjectIDs:v5];
  }

  else
  {
    v9 = [v4 predicate];
  }

  v8 = v9;
LABEL_7:

  return v8;
}

- (id)locationIDsMatchingConstraintsForSearchSpecification:(id)a3
{
  v4 = a3;
  if (![v4 hasLocationConstraints])
  {
    v8 = 0;
    goto LABEL_23;
  }

  if ([v4 requiredLocationRoleType])
  {
    v5 = [v4 requiredLocationRoleType];
    v6 = [v4 locationPersonIDs];
    v7 = [(PDDatabase *)self locationIDsWithRoleType:v5 onPersonIDs:v6];
  }

  else
  {
    v7 = 0;
  }

  v9 = [v4 requiredLocationPrivilege];

  if (v9)
  {
    v10 = [v4 requiredLocationPrivilege];
    v11 = [v4 requiredLocationPersonIDs];
    v9 = [(PDDatabase *)self locationIDsWithPrivilege:v10 onPersonIDs:v11];
  }

  v12 = [v4 prohibitedLocationPrivilege];

  if (v12)
  {
    v13 = [v4 prohibitedLocationPrivilege];
    v14 = [v4 requiredLocationPersonIDs];
    v15 = [(PDDatabase *)self locationIDsWithoutPrivilege:v13 onPersonIDs:v14];
  }

  else
  {
    v15 = 0;
  }

  if (v7)
  {
    v16 = [NSMutableSet setWithArray:v7];
    v17 = v16;
    if (!v9)
    {
      goto LABEL_17;
    }

    if (v16)
    {
      v18 = [NSSet setWithArray:v9];
      [v17 intersectSet:v18];

      goto LABEL_17;
    }
  }

  else if (!v9)
  {
    if (!v15)
    {
      v17 = 0;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v17 = [NSMutableSet setWithArray:v9];
LABEL_17:
  if (v15)
  {
    if (v17)
    {
      v19 = [NSSet setWithArray:v15];
      [v17 intersectSet:v19];

      goto LABEL_22;
    }

LABEL_21:
    v17 = [NSMutableSet setWithArray:v15];
  }

LABEL_22:
  v8 = [v17 allObjects];

LABEL_23:

  return v8;
}

- (id)locationIDsWithoutPrivilege:(id)a3 onPersonIDs:(id)a4
{
  v6 = a3;
  if (!v6)
  {
    v6 = @"❌✋🔒";
  }

  v7 = a4;
  v8 = [(PDDatabase *)self prlConstraintSQLOnColumn:@"personID" andValues:v7];
  v9 = [NSString stringWithFormat:@"select objectID from CLSLocation where CLSLocation.objectid NOT IN( select distinct %@ from PDPersonRoleLocation as PRL  join PDRolePrivilege as P  on PRL.roleID = P.roleID and P.privilegeName =?  %@)", @"locationID", v8];;
  v10 = [[NSMutableArray alloc] initWithObjects:{v6, 0}];
  [v10 addObjectsFromArray:v7];

  v11 = [(PDDatabase *)self objectIDsForSQL:v9 resultColumnName:@"objectID" bindings:v10];

  return v11;
}

- (id)organizationSearchPredicateForSearchSpec:(id)a3
{
  v3 = a3;
  v4 = [v3 requiredOrganizationEmailDomain];

  if (v4)
  {
    v5 = [v3 requiredOrganizationEmailDomain];
    [v3 setSearchString:v5];
  }

  v6 = [v3 predicate];

  return v6;
}

- (id)personIDsForClassMembersMatchingConstraintsForSearchSpecification:(id)a3
{
  v4 = a3;
  v5 = [v4 requiredClassMemberClassIDs];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 requiredClassMemberClassIDs];
    v8 = [NSString stringWithFormat:@"where %@ in ", @"parentObjectID"];
    v9 = [PDDatabase whereSQLForArray:v7 prefix:v8];

    v10 = [NSString stringWithFormat:@"select distinct personID from CLSClassMember %@ AND (roles & ? > 0)", v9];;
    v11 = objc_opt_new();
    if ([v4 requiredClassMemberRole])
    {
      v12 = [NSMutableArray alloc];
      v13 = [v4 requiredClassMemberClassIDs];
      v14 = [v12 initWithArray:v13];

      [v14 addObject:&off_10021B4E0];
      v15 = [(PDDatabase *)self objectIDsForSQL:v10 resultColumnName:@"personID" bindings:v14];
      [v11 addObjectsFromArray:v15];
    }

    if (([v4 requiredClassMemberRole] & 2) != 0)
    {
      v16 = [NSMutableArray alloc];
      v17 = [v4 requiredClassMemberClassIDs];
      v18 = [v16 initWithArray:v17];

      [v18 addObject:&off_10021B4F8];
      v19 = [(PDDatabase *)self objectIDsForSQL:v10 resultColumnName:@"personID" bindings:v18];
      [v11 addObjectsFromArray:v19];
    }

    v20 = [v11 allObjects];
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  return v20;
}

- (id)personIDsForGroupMembersMatchingConstraintsForSearchSpecification:(id)a3
{
  v4 = a3;
  v5 = [v4 requiredGroupMemberGroupIDs];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 requiredGroupMemberGroupIDs];
    v8 = [NSString stringWithFormat:@"where %@ in ", @"parentObjectID"];
    v9 = [PDDatabase whereSQLForArray:v7 prefix:v8];

    v10 = [NSString stringWithFormat:@"select distinct personID from CLSGroupMember %@", v9];
    v11 = objc_opt_new();
    v12 = [v4 requiredGroupMemberGroupIDs];
    v13 = [(PDDatabase *)self objectIDsForSQL:v10 resultColumnName:@"personID" bindings:v12];
    [v11 addObjectsFromArray:v13];

    v14 = [v11 allObjects];
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  return v14;
}

- (BOOL)_statusID:(id *)a3 deniedCount:(int64_t *)a4 authCount:(int64_t *)a5 forHandoutAssignedItem:(id)a6
{
  v10 = a6;
  if (![v10 length])
  {
    __assert_rtn("[PDDatabase(CLSHandoutAssignedItem) _statusID:deniedCount:authCount:forHandoutAssignedItem:]", "CLSHandoutAssignedItem+PDDatabaseEntity.m", 231, "objectID.length > 0");
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100015CBC;
  v41 = sub_100015CCC;
  v42 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_100015CBC;
  v35[4] = sub_100015CCC;
  v36 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100015CD4;
  v20[3] = &unk_1002020C8;
  v23 = &v37;
  v11 = v10;
  v21 = v11;
  v22 = self;
  v24 = v35;
  v25 = &v31;
  v26 = &v27;
  if ((sub_10010BE68(self, v20) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!v38[5])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100015F80;
    v15[3] = &unk_1002020F0;
    v18 = v35;
    v19 = &v37;
    v16 = v11;
    v17 = self;
    if (self)
    {
      v12 = [(PDDatabase *)self performTransaction:v15 forWriting:1];

      if (v12)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

LABEL_6:
  if (a3)
  {
    *a3 = v38[5];
  }

  if (a5)
  {
    *a5 = v28[3];
  }

  if (a4)
  {
    *a4 = v32[3];
  }

  v13 = 1;
LABEL_16:

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v35, 8);

  _Block_object_dispose(&v37, 8);
  return v13;
}

- (BOOL)_pruneAuthTreeAtNodeWithAssignedItemStatusID:(id)a3
{
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v28 = v4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100015CBC;
  v18 = sub_100015CCC;
  v19 = 0;
  v5 = [NSArray arrayWithObjects:&v28 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100016BC0;
  v13[3] = &unk_1002020A0;
  v13[4] = &v24;
  v13[5] = &v20;
  v13[6] = &v14;
  if (sub_1000B9298(self, @"select authorizedCount, deniedCount, parentStatusID from AuthStatus where statusID = ? limit 1", 1, v5, v13))
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100016C80;
    v8[3] = &unk_100202190;
    v8[4] = &v9;
    if (sub_1000B9298(self, @"select count(*) as count from AuthStatus where parentStatusID = ? limit 1", 1, v5, v8))
    {
      if (v25[3] || v21[3] || *(v10 + 24) != 1)
      {
        goto LABEL_11;
      }

      if (sub_1000B9714(self, @"AuthStatus", @"statusID = ?", v5))
      {
        if (v15[5])
        {
          v6 = [(PDDatabase *)self _pruneAuthTreeAtNodeWithAssignedItemStatusID:?];
LABEL_12:
          _Block_object_dispose(&v9, 8);
          goto LABEL_13;
        }

LABEL_11:
        v6 = 1;
        goto LABEL_12;
      }
    }

    v6 = 0;
    goto LABEL_12;
  }

  v6 = 0;
LABEL_13:

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v6;
}

- (id)normalizedValue:(id)a3 forKeyPath:(id)a4
{
  v5 = a3;
  v6 = +[CLSCurrentUser magicValue];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (!(v5 | v6) || v5 && v6 && [v5 isEqualToString:v6]))
  {
    v7 = sub_1000712CC(self);
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (id)_progressEventsWithAssignedItem:(id)a3 eventType:(int64_t)a4 activityID:(id)a5 activityItemID:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = [v9 parentObjectID];
  v13 = [(PDDatabase *)self select:v11 identity:v12];

  if (v13 && (sub_100017EA4(self, v13, a4), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    [v14 setActivityID:v10];
    v16 = [v9 objectID];
    [v15 setHandoutAuthorizedObjectID:v16];

    v21 = v15;
    v17 = [NSArray arrayWithObjects:&v21 count:1];
  }

  else
  {
    CLSInitLog();
    v18 = CLSLogUpload;
    if (os_log_type_enabled(CLSLogUpload, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CLSActivity+InsightEvents: failed to build event for assigned item", v20, 2u);
    }

    v17 = &__NSArray0__struct;
  }

  return v17;
}

- (id)_progressEventsForContext:(id)a3 eventType:(int64_t)a4 activityID:(id)a5 activityItemID:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = objc_opt_new();
  v14 = objc_autoreleasePoolPush();
  v15 = [v10 identifierPath];
  v16 = [CLSContext objectIDPathFromIdentifierPath:v15];

  [v16 addObject:v11];
  if (v12)
  {
    [v16 addObject:v12];
  }

  v17 = [v16 componentsJoinedByString:@"/"];

  objc_autoreleasePoolPop(v14);
  v18 = objc_opt_class();
  v35[0] = &off_10021B5D0;
  v19 = [v10 appIdentifier];
  v35[1] = v19;
  v20 = [NSArray arrayWithObjects:v35 count:2];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10004C3D4;
  v28[3] = &unk_1002030E8;
  v29 = v10;
  v30 = self;
  v34 = a4;
  v31 = v11;
  v32 = v17;
  v21 = v13;
  v33 = v21;
  v22 = v17;
  v23 = v11;
  v24 = v10;
  [(PDDatabase *)self selectAll:v18 where:@"type = ? AND bundleIdentifier = ?" bindings:v20 block:v28];

  v25 = v33;
  v26 = v21;

  return v21;
}

- (BOOL)_setCurrentUser:(id)a3 withRoleLocations:(id)a4 orRole:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  [(PDDatabase *)self lock];
  if ((sub_10011E700(self, v8, v9) & 1) == 0)
  {
    [v9 count];
    v12 = 0;
    goto LABEL_5;
  }

  v10 = [v8 objectID];
  if (sub_10016A3F0(self, v10, @"currentUserPersonID"))
  {
    v11 = sub_10016A0C8(self, a5, @"currentUserRole");
  }

  else
  {
    v11 = 0;
  }

  v17 = [v9 count];
  if (v11 && v17)
  {
    v32 = a5;
    v33 = self;
    v12 = [NSMutableDictionary dictionaryWithCapacity:v17];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      do
      {
        v22 = 0;
        do
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v34 + 1) + 8 * v22);
          if (v23)
          {
            v24 = *(v23 + 32);
          }

          else
          {
            v24 = 0;
          }

          v25 = [NSNumber numberWithInteger:v24];
          v26 = [v25 stringValue];

          v27 = [v12 objectForKeyedSubscript:v26];
          if (!v27)
          {
            v27 = objc_opt_new();
            [v12 setObject:v27 forKeyedSubscript:v26];
          }

          if (v23)
          {
            v28 = *(v23 + 24);
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;
          [v27 addObject:v29];

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v30 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
        v20 = v30;
      }

      while (v30);
    }

    self = v33;
    a5 = v32;
    if (sub_10016A76C(v33, v12, @"currentUserLocationIDsByRoleType"))
    {
      goto LABEL_31;
    }

LABEL_5:
    objc_setAssociatedObject(self, off_100203C38, 0, 1);
    objc_setAssociatedObject(self, off_100203C40, 0, 1);
    objc_setAssociatedObject(self, off_100203C48, 0, 1);

    v13 = 0;
    goto LABEL_6;
  }

  v12 = 0;
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_31:
  objc_setAssociatedObject(self, off_100203C38, v8, 1);
  v31 = [NSNumber numberWithUnsignedInteger:a5];
  objc_setAssociatedObject(self, off_100203C40, v31, 1);

  v13 = 1;
  if (v12)
  {
    objc_setAssociatedObject(self, off_100203C48, v12, 1);
  }

  else
  {
    objc_setAssociatedObject(self, off_100203C48, 0, 1);
  }

LABEL_6:
  [(PDDatabase *)self unlock];
  v14 = +[PDUserDefaults sharedDefaults];
  v15 = [v14 enableVerboseLogging];

  if (v15)
  {
    CLSLogDebugCurrentPersona();
  }

  [CLSUtil postNotificationAsync:"com.apple.progressd.accountChanged"];

  return v13;
}

+ (NSArray)recordTypesOfEntitiesTrackingUserActivity
{
  if (qword_10024DA98 != -1)
  {
    dispatch_once(&qword_10024DA98, &stru_100204F88);
  }

  v3 = qword_10024DAA0;

  return v3;
}

+ (NSArray)registeredEntities
{
  if (qword_10024DAB0 != -1)
  {
    dispatch_once(&qword_10024DAB0, &stru_100204FA8);
  }

  v3 = qword_10024DAA8;

  return v3;
}

+ (id)nameOfEntity:(Class)a3
{
  v4 = sub_1000F5CC0();
  v5 = [v4 objectForKey:a3];

  return v5;
}

+ (Class)entityNamed:(id)a3
{
  v3 = a3;
  v4 = sub_1000F5E4C();
  v5 = [v4 objectForKey:v3];

  return v5;
}

+ (void)registerEntity:(Class)a3
{
  v4 = sub_1000F5E4C();
  v5 = [(objc_class *)a3 entityName];
  [v4 setObject:a3 forKey:v5];

  v7 = sub_1000F5CC0();
  v6 = [(objc_class *)a3 entityName];
  [v7 setObject:v6 forKey:a3];
}

+ (id)whereSQLForArray:(id)a3 prefix:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v5 count])
  {
    __assert_rtn("+[PDDatabase(Entities) whereSQLForArray:prefix:]", "PDDatabase+Entities.m", 111, "array.count > 0");
  }

  v7 = [[NSMutableString alloc] initWithString:v6];
  objc_msgSend(v7, "appendString:", @"(");
  v8 = [v5 count];
  if (v8 >= 2)
  {
    v9 = v8 - 1;
    do
    {
      [v7 appendString:{@"?, "}];
      --v9;
    }

    while (v9);
  }

  [v7 appendString:@"?"]);

  return v7;
}

- (void)populateSearchField:(id)a3 bindings:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 tokenizableColumnNames];
  v35 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v37 = v5;
  obj = [v5 searchableColumnNames];
  v8 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    do
    {
      v11 = 0;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        if (v6)
        {
          v13 = *(v6 + 2);
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v15 = [v14 indexOfObject:v12];

        v16 = [v7 containsObject:v12];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = v16;
          if (v6)
          {
            v18 = *(v6 + 3);
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;
          v20 = [v19 objectAtIndexedSubscript:v15];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v17)
            {
              v21 = [v20 _cls_searchableTokens];
              [v35 addObjectsFromArray:v21];
            }

            else
            {
              [v35 addObject:v20];
            }
          }

          if (objc_opt_respondsToSelector())
          {
            v22 = [v37 tokensForSearchableColumn:v12 withValue:v20 tokenize:v17];
            if (v22)
            {
              [v35 unionSet:v22];
            }
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v23 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      v9 = v23;
    }

    while (v23);
  }

  v24 = [objc_opt_class() searchColumnName];
  v25 = [v35 allObjects];
  v26 = [v25 componentsJoinedByString:@"\n"];
  v27 = [v26 lowercaseString];

  if (v6)
  {
    v28 = *(v6 + 2);
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  v30 = [v29 indexOfObject:v24];

  if (v30 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v6)
    {
      v31 = *(v6 + 2);
      [v31 addObject:v24];

      v32 = *(v6 + 3);
    }

    else
    {
      [0 addObject:v24];
      v32 = 0;
    }

    v33 = v32;
    [v33 addObject:v27];
  }

  else
  {
    if (v6)
    {
      v34 = *(v6 + 3);
    }

    else
    {
      v34 = 0;
    }

    v33 = v34;
    [v33 setObject:v27 atIndexedSubscript:v30];
  }
}

- (BOOL)_insertObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [objc_opt_class() entityName];
    v6 = [v4 identityValue];
    v14 = v6;
    v7 = [NSArray arrayWithObjects:&v14 count:1];
    sub_1000B9714(self, v5, @"entityIdentity = ?", v7);
  }

  v8 = objc_alloc_init(NSMutableArray);
  v9 = objc_alloc_init(NSMutableArray);
  v10 = sub_100098260([PDDatabaseBindings alloc], v8, v9);
  [v4 bindTo:v10];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PDSearchableDatabaseEntity])
  {
    [(PDDatabase *)self populateSearchField:v4 bindings:v10];
  }

  v11 = [objc_opt_class() entityName];
  if (!sub_1000B90F8(self, v11, v9, v8))
  {
    goto LABEL_10;
  }

  if (sub_10010C5DC(self, v11))
  {
    sub_1000F568C(self, v4, 1);
  }

  if ([(PDDatabase *)self markObject:v4 as:1])
  {
    [(PDDatabase *)self generateInsightEventsForObject:v4];
    v12 = 1;
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  return v12;
}

- (BOOL)insertObject:(id)a3
{
  v3 = self;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000F6634;
  v9 = &unk_100202140;
  v10 = self;
  v4 = a3;
  v11 = v4;
  if (v10)
  {
    if ([(PDDatabase *)v3 performTransaction:&v6 forWriting:1])
    {
      [(PDDatabase *)v3 _postDidInsertNotificationWithEntity:v4, v6, v7, v8, v9, v10, v11];
      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)insertObjects:(id)a3
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F67C0;
  v15[3] = &unk_100202140;
  v4 = a3;
  v16 = v4;
  v17 = self;
  if (self)
  {
    if ([(PDDatabase *)self performTransaction:v15 forWriting:1])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [(PDDatabase *)self _postDidInsertNotificationWithEntity:*(*(&v11 + 1) + 8 * i), v11];
          }

          v7 = [v5 countByEnumeratingWithState:&v11 objects:v18 count:16];
        }

        while (v7);
      }

      LOBYTE(self) = 1;
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (BOOL)_postDidInsertNotificationWithEntity:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0) && ([v5 entityDidInsertNotificationName], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v12 = @"currentEntity";
    v13 = v4;
    v8 = 1;
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:v7 object:self userInfo:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_updateObject:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() identityColumnName];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = objc_alloc_init(NSMutableArray);
    v19 = v6;
    v8 = sub_100098260([PDDatabaseBindings alloc], v6, v7);
    [v4 bindTo:v8];
    if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PDSearchableDatabaseEntity])
    {
      [(PDDatabase *)self populateSearchField:v4 bindings:v8];
    }

    if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PDDatabaseEntityWithImmutability])
    {
      v9 = v4;
      if ([v9 isImmutabilityEnforced])
      {
        v10 = [v9 immutableColumnNames];
        sub_1000983A8(v8, v10);
      }
    }

    v11 = objc_alloc_init(NSMutableString);
    v12 = [objc_opt_class() identityColumnName];
    [v11 appendString:v12];

    [v11 appendString:@" = ?"];
    v13 = [objc_opt_class() entityName];
    v14 = [v4 identityValue];
    v20 = v14;
    v15 = [NSArray arrayWithObjects:&v20 count:1];
    v16 = sub_1000B9548(self, v13, v19, v7, v11, v15);

    if (!v16)
    {
      goto LABEL_13;
    }

    if (sub_10010C5DC(self, v13))
    {
      sub_1000F568C(self, v4, 2);
    }

    if ([(PDDatabase *)self markObject:v4 as:2])
    {
      [(PDDatabase *)self generateInsightEventsForObject:v4];
      v17 = 1;
    }

    else
    {
LABEL_13:
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)updateObject:(id)a3
{
  v4 = a3;
  [(PDDatabase *)self _postWillChangeNotificationWithEntity:v4];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F6D24;
  v9[3] = &unk_100202140;
  v9[4] = self;
  v10 = v4;
  v5 = v4;
  v6 = v5;
  if (self)
  {
    LOBYTE(self) = [(PDDatabase *)self performTransaction:v9 forWriting:1];
    v7 = v10;
  }

  else
  {
    v7 = v5;
  }

  return self;
}

- (BOOL)updateObjects:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PDDatabase *)self _postWillChangeNotificationWithEntity:*(*(&v14 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F6E94;
  v11[3] = &unk_100202140;
  v12 = v4;
  v13 = self;
  v9 = v4;
  if (self)
  {
    LOBYTE(self) = [(PDDatabase *)self performTransaction:v11 forWriting:1];
  }

  return self;
}

- (BOOL)_postWillChangeNotificationWithEntity:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0) && ([v5 entityWillChangeNotificationName], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v12 = @"newEntity";
    v13 = v4;
    v8 = 1;
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:v7 object:self userInfo:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)insertOrUpdateObject:(id)a3
{
  v5 = a3;
  v6 = self;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = objc_opt_class();
    v9 = [v8 identityColumnName];
    if (v9)
    {
      v10 = [v5 identityValue];
      v11 = [(PDDatabase *)v6 entityExistsByClass:v8 identity:v10];

      if (v11)
      {
        if (![(PDDatabase *)v6 updateObject:v5])
        {
LABEL_5:
          v12 = 0;
LABEL_27:

          objc_autoreleasePoolPop(v7);
          goto LABEL_28;
        }
      }

      else if (![(PDDatabase *)v6 insertObject:v5])
      {
        goto LABEL_5;
      }
    }

    else if (![(PDDatabase *)v6 insertObject:v5])
    {
      goto LABEL_5;
    }

    if (![v5 isMemberOfClass:objc_opt_class()])
    {
LABEL_26:
      v12 = 1;
      goto LABEL_27;
    }

    v13 = v5;
    v14 = sub_1000711FC(v6);
    if ([v13 roles] != 1)
    {
      goto LABEL_25;
    }

    v15 = [v13 personID];
    if (!v15)
    {
      v3 = [v14 objectID];
      if (!v3)
      {
        goto LABEL_24;
      }
    }

    v16 = [v13 personID];
    if (v16)
    {
      v17 = v16;
      v18 = [v14 objectID];
      if (v18)
      {
        v22 = v3;
        v23 = v18;
        v19 = [v13 personID];
        v20 = [v14 objectID];
        v24 = [v19 isEqualToString:v20];

        if (v15)
        {

          if (!v24)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (v24)
        {
LABEL_24:
          [CLSUtil postNotificationAsync:CLSStudentClassMembershipChangedDarwinNotificationName];
        }

LABEL_25:

        goto LABEL_26;
      }
    }

    if (v15)
    {
    }

    else
    {
    }

    goto LABEL_25;
  }

  v12 = 0;
LABEL_28:

  return v12;
}

- (BOOL)insertOrUpdateObjects:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(PDDatabase *)v5 _postWillChangeNotificationWithEntity:*(*(&v30 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000F7560;
  v26[3] = &unk_1002038B0;
  v13 = v8;
  v27 = v13;
  v28 = v5;
  v14 = v7;
  v29 = v14;
  if (v5 && [(PDDatabase *)v5 performTransaction:v26 forWriting:1])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(PDDatabase *)v5 _postDidInsertNotificationWithEntity:*(*(&v22 + 1) + 8 * j), v22];
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v34 count:16];
      }

      while (v17);
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v20;
}

- (id)trackDeletedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [PDDeletedEntityID alloc];
    v7 = [v5 identityValue];
    v8 = objc_opt_class();
    v9 = [v5 surveyID];

    v10 = sub_100173C88(&v6->super.isa, v7, v8, v9);
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v4 parentObjectID];

    if (v11)
    {
      v7 = v4;
      if ([v7 parentEntityType] == 4)
      {
        v12 = [v7 parentObjectID];
        v13 = sub_1001740C4(self, v12);

        if (v13)
        {
          v14 = [PDDeletedEntityID alloc];
          v15 = [v7 identityValue];
          v16 = objc_opt_class();
          v10 = sub_100173C88(&v14->super.isa, v15, v16, v13);

          goto LABEL_10;
        }
      }
    }
  }

  v17 = [PDDeletedEntityID alloc];
  v7 = [v4 identityValue];
  v18 = objc_opt_class();
  v10 = sub_100173C88(&v17->super.isa, v7, v18, 0);
LABEL_10:

  return v10;
}

- (BOOL)deleteObject:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() identityColumnName];
  if (v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F79F0;
    v8[3] = &unk_1002038B0;
    v9 = v4;
    v10 = self;
    v6 = v5;
    v11 = v6;
    if (self)
    {
      LOBYTE(self) = [(PDDatabase *)self performTransaction:v8 forWriting:1];
      v6 = v11;
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (id)select:(Class)a3 identity:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = self;
    if (v7)
    {
      v8 = [(objc_class *)a3 identityColumnName];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 stringByAppendingString:@" = ?"];
        v14 = v6;
        v11 = [NSArray arrayWithObjects:&v14 count:1];
        v12 = [(PDDatabase *)v7 select:a3 where:v10 bindings:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)select:(Class)a3 where:(id)a4 bindings:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = self;
  v11 = v10;
  if (v10)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_1000F7E14;
    v19 = sub_1000F7E24;
    v20 = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000F7E2C;
    v14[3] = &unk_100205010;
    v14[4] = &v15;
    if ([(PDDatabase *)v10 selectAll:a3 where:v8 orderBy:0 limit:1 offset:0 bindings:v9 block:v14])
    {
      v12 = v16[5];
    }

    else
    {
      v12 = 0;
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)selectAll:(Class)a3 where:(id)a4 orderBy:(id)a5 bindings:(id)a6 block:(id)a7
{
  if (self)
  {
    LOBYTE(self) = [(PDDatabase *)self selectAll:a3 where:a4 orderBy:a5 limit:0 offset:0 bindings:a6 block:a7];
  }

  return self;
}

- (BOOL)selectAll:(Class)a3 where:(id)a4 orderBy:(id)a5 limit:(int64_t)a6 offset:(unint64_t)a7 bindings:(id)a8 block:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = a9;
  if (self)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000F8018;
    v21[3] = &unk_100205060;
    v26 = a3;
    v21[4] = self;
    v22 = v15;
    v23 = v16;
    v27 = a6;
    v28 = a7;
    v24 = v17;
    v25 = v18;
    v19 = self;
    LOBYTE(self) = sub_10010BE68(v19, v21);
  }

  return self;
}

- (BOOL)updateAll:(Class)a3 set:(id)a4 where:(id)a5 bindings:(id)a6
{
  v10 = a4;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F82A0;
  v16[3] = &unk_1002050B0;
  v17 = a5;
  v18 = self;
  v20 = v10;
  v21 = a3;
  v19 = a6;
  v11 = v10;
  v12 = v19;
  v13 = v17;
  if (self)
  {
    LOBYTE(self) = [(PDDatabase *)self performTransaction:v16 forWriting:1];
    v14 = v20;
  }

  else
  {
    v14 = v11;
  }

  return self;
}

- (BOOL)_deleteAll:(Class)a3 where:(id)a4 bindings:(id)a5 trackDeletes:(BOOL)a6
{
  v9 = self;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000F8928;
  v14[3] = &unk_100205100;
  v15 = self;
  v16 = a4;
  v17 = a5;
  v18 = a3;
  v19 = a6;
  v10 = v17;
  v11 = v16;
  if (v15)
  {
    LOBYTE(v9) = [(PDDatabase *)v9 performTransaction:v14 forWriting:1];
    v12 = v17;
  }

  else
  {
    v12 = v10;
  }

  return v9;
}

- (unint64_t)count:(Class)a3 where:(id)a4 bindings:(id)a5
{
  v8 = a4;
  v9 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000F8E2C;
  v14[3] = &unk_100205128;
  v19 = a3;
  v10 = v8;
  v15 = v10;
  v16 = self;
  v11 = v9;
  v17 = v11;
  v18 = &v20;
  sub_10010BE68(self, v14);
  v12 = v21[3];

  _Block_object_dispose(&v20, 8);
  return v12;
}

- (id)selectColumns:(id)a3 of:(Class)a4 where:(id)a5 bindings:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000F7E14;
  v20 = sub_1000F7E24;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F90F4;
  v15[3] = &unk_100205150;
  v15[4] = &v16;
  if ([(PDDatabase *)self selectColumns:v10 of:a4 where:v11 orderBy:0 limit:1 offset:0 bindings:v12 block:v15])
  {
    v13 = v17[5];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v13;
}

- (BOOL)selectColumns:(id)a3 of:(Class)a4 where:(id)a5 orderBy:(id)a6 limit:(int64_t)a7 offset:(unint64_t)a8 bindings:(id)a9 block:(id)a10
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000F9288;
  v22[3] = &unk_1002051A0;
  v23 = a3;
  v24 = self;
  v25 = a5;
  v26 = a6;
  v29 = a4;
  v30 = a7;
  v31 = a8;
  v27 = a9;
  v28 = a10;
  v16 = v28;
  v17 = v27;
  v18 = v26;
  v19 = v25;
  v20 = v23;
  LOBYTE(self) = sub_10010BE68(self, v22);

  return self;
}

- (BOOL)entityClass:(Class)a3 containsColumnNamed:(id)a4
{
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  [(objc_class *)a3 entityName];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F9640;
  v10[3] = &unk_1002051C8;
  v13 = &v14;
  v7 = v10[4] = self;
  v11 = v7;
  v8 = v6;
  v12 = v8;
  sub_10010BE68(self, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

- (BOOL)entityExistsByClass:(Class)a3 identity:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && [v6 length])
  {
    v8 = [NSString alloc];
    v9 = [(objc_class *)a3 identityColumnName];
    v10 = [v8 initWithFormat:@"%@ = ?", v9];

    v15 = v7;
    v11 = [NSArray arrayWithObjects:&v15 count:1];
    v12 = [(PDDatabase *)self count:a3 where:v10 bindings:v11];

    v13 = v12 != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)childEntitiesExistForClass:(Class)a3 parentIdentity:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && [v6 length])
  {
    v12 = v7;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    v9 = [(PDDatabase *)self count:a3 where:@"parentObjectID = ?" bindings:v8];

    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)syncableDatabaseEntityExistsByObjectID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  if (qword_10024DAC0 != -1)
  {
    dispatch_once(&qword_10024DAC0, &stru_1002051E8);
  }

  if (dword_10024DA90 >= 1)
  {
    v6 = 0;
    do
    {
      [v5 addObject:v4];
      ++v6;
    }

    while (v6 < dword_10024DA90);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F9C40;
  v10[3] = &unk_100203410;
  v10[4] = self;
  v7 = v5;
  v11 = v7;
  v12 = &v13;
  sub_10010BE68(self, v10);
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (BOOL)saveAndSyncObjects:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F9D78;
  v6[3] = &unk_100202140;
  v7 = self;
  v8 = a3;
  v3 = v8;
  v4 = [(PDDatabase *)v7 withSyncEnabled:v6];

  return v4;
}

- (BOOL)withSyncEnabled:(id)a3
{
  v4 = a3;
  if ([(PDDatabase *)self isInSyncBlock])
  {
    if (self)
    {
      v5 = [(PDDatabase *)self performTransaction:v4 forWriting:1];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    [(PDDatabase *)self setInSyncBlock:1];
    [(PDDatabase *)self setSyncableDataWritten:0];
    if (self)
    {
      v5 = [(PDDatabase *)self performTransaction:v4 forWriting:1];
    }

    else
    {
      v5 = 0;
    }

    if ([(PDDatabase *)self isSyncableDataWritten])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000FB1DC;
      block[3] = &unk_100202D40;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }

    [(PDDatabase *)self setSyncableDataWritten:0];
    [(PDDatabase *)self setInSyncBlock:0];
  }

  return v5;
}

- (BOOL)isSyncableDataWritten
{
  v2 = +[NSThread currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKeyedSubscript:@"syncDataWritten"];

  LOBYTE(v2) = [v4 BOOLValue];
  return v2;
}

- (BOOL)isInSyncBlock
{
  v2 = +[NSThread currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKeyedSubscript:@"isInSync"];

  LOBYTE(v2) = [v4 BOOLValue];
  return v2;
}

- (BOOL)markObject:(id)a3 as:(int64_t)a4
{
  v6 = a3;
  if (![(PDDatabase *)self isInSyncBlock])
  {
    goto LABEL_10;
  }

  if (![objc_opt_class() conformsToProtocol:&OBJC_PROTOCOL___PDSyncableItem])
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 state] == 2)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    v11 = [(PDDatabase *)self _markObject:v6 as:a4];
    goto LABEL_11;
  }

  v7 = v6;
  if ([v7 parentEntityType] != 4)
  {
LABEL_13:

    goto LABEL_14;
  }

  v8 = objc_opt_class();
  v9 = [v7 parentObjectID];
  v10 = [(PDDatabase *)self select:v8 identity:v9];

  if (v10 && [v10 state] != 2)
  {

    goto LABEL_13;
  }

LABEL_10:
  v11 = 1;
LABEL_11:

  return v11;
}

- (BOOL)markAll:(Class)a3 where:(id)a4 bindings:(id)a5 as:(int64_t)a6
{
  v10 = a4;
  v11 = a5;
  if ([(PDDatabase *)self isInSyncBlock]&& [(objc_class *)a3 conformsToProtocol:&OBJC_PROTOCOL___PDSyncableItem])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000FB658;
    v14[3] = &unk_100205278;
    v14[4] = self;
    v14[5] = a6;
    v12 = [(PDDatabase *)self selectAll:a3 where:v10 orderBy:0 bindings:v11 block:v14];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)generateInsightEventsForObject:(id)a3
{
  v4 = a3;
  if (-[PDDatabase isInSyncBlock](self, "isInSyncBlock") && [objc_opt_class() conformsToProtocol:&OBJC_PROTOCOL___PDInsightEventGenerating] && +[PDEndpointRequestOperation isEndpointAvailable:inDatabase:](PDEndpointRequestOperation, "isEndpointAvailable:inDatabase:", @"uploadEvents", self))
  {
    [(PDDatabase *)self _saveInsightEventsFor:v4];
  }
}

- (void)generateInsightEventsForClass:(Class)a3 where:(id)a4 bindings:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([(PDDatabase *)self isInSyncBlock]&& [(objc_class *)a3 conformsToProtocol:&OBJC_PROTOCOL___PDInsightEventGenerating]&& [PDEndpointRequestOperation isEndpointAvailable:@"uploadEvents" inDatabase:self])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000FB7E8;
    v10[3] = &unk_1002052A0;
    v10[4] = self;
    [(PDDatabase *)self selectAll:a3 where:v8 orderBy:0 bindings:v9 block:v10];
  }
}

- (BOOL)_markObject:(id)a3 as:(int64_t)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    if ([v8 type] == 3)
    {
      v9 = [v8 parentObjectID];

      if (!v9)
      {
        if (a4 == 3)
        {
          sub_10012DB64(PDFileSyncManager, v8, self, &stru_1002052E0);
        }

        LOBYTE(v13) = 1;
        [(PDDatabase *)self setSyncableDataWritten:1];
        goto LABEL_16;
      }
    }
  }

  v10 = [v6 syncBackend:self];
  if (v10 != -1)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        v12 = 0;
        goto LABEL_13;
      }

      v11 = off_100200D38;
    }

    else
    {
      v11 = off_100200D40;
    }

    v12 = [objc_alloc(*v11) initWithObject:v6 state:a4];
LABEL_13:
    v14 = objc_opt_class();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000FBAAC;
    v16[3] = &unk_100205308;
    v8 = v12;
    v17 = v8;
    [(PDDatabase *)self selectColumns:&off_10021BA30 of:v14 where:0 orderBy:@"position desc" limit:1 offset:0 bindings:0 block:v16];
    v13 = [(PDDatabase *)self insertObject:v8];
    if (v13)
    {
      [(PDDatabase *)self setSyncableDataWritten:1];
    }

LABEL_16:
    objc_autoreleasePoolPop(v7);
    goto LABEL_17;
  }

  objc_autoreleasePoolPop(v7);
  LOBYTE(v13) = 1;
LABEL_17:

  return v13;
}

- (void)_saveInsightEventsFor:(id)a3
{
  v4 = [a3 generateInsightEventsWithDatabase:self];
  if ([v4 count])
  {
    [(PDDatabase *)self insertOrUpdateObjects:v4];
  }
}

+ (void)registerEntities
{
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  [PDDatabase registerEntity:objc_opt_class()];
  v2 = objc_opt_class();

  [PDDatabase registerEntity:v2];
}

- (PDDatabase)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  v5 = [NSString stringWithFormat:@"The method [%@ %@] is not available.", v3, v4];
  v6 = [NSException exceptionWithName:NSInvalidArgumentException reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PDDatabase;
  [(PDDatabase *)&v2 dealloc];
}

- (void)setCurrentDB:(id)a3
{
  v4 = a3;
  v6 = +[NSThread currentThread];
  v5 = [v6 threadDictionary];
  [v5 setObject:v4 forKeyedSubscript:self->_threadDBKey];
}

- (PDSQLiteDatabase)currentDB
{
  v3 = +[NSThread currentThread];
  v4 = [v3 threadDictionary];
  v5 = [v4 objectForKeyedSubscript:self->_threadDBKey];

  return v5;
}

- (void)cleanupAssociatedObjects
{
  [(PDDatabase *)self lock];
  objc_removeAssociatedObjects(self);

  [(PDDatabase *)self unlock];
}

- (BOOL)performFrameworkMigrationIfNeeded
{
  v2 = self;
  v3 = v2;
  if (!v2)
  {
    CLSInitLog();
    v10 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PDDatabase went away during operation", &v13, 2u);
    }

    goto LABEL_13;
  }

  v4 = sub_10016A160(v2, @"PDClassKitVersion");
  if (v4 <= 2)
  {
    v5 = v4;
    CLSInitLog();
    v6 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEBUG))
    {
      v13 = 134218240;
      v14 = v5;
      v15 = 2048;
      v16 = 3;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Migrating framework from version %ld to %ld", &v13, 0x16u);
    }

    if (sub_1000EAC18(v3, @"bootstrap"))
    {
      v7 = [[PDClassZoneGetChanges alloc] initWithDatabase:v3];
      v8 = sub_100100970(v7);

      if (v8)
      {
        sub_10016A0C8(v3, 3, @"PDClassKitVersion");
        goto LABEL_8;
      }
    }

    CLSInitLog();
    v11 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "framework migration failed", &v13, 2u);
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

LABEL_8:
  v9 = 1;
LABEL_14:

  return v9;
}

- (void)setupDevDB
{
  v2 = self;
  v3 = v2;
  if (v2)
  {
    [(PDDatabase *)v2 lock];
    v4 = sub_1000731E4(v3[4]);
    [v3 setCurrentDB:v4];
    [v3 unlock];
  }

  else
  {
    CLSInitLog();
    v5 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDDatabase went away during operation", v6, 2u);
    }
  }
}

- (void)tearDownDevDB
{
  v2 = self;
  v3 = v2;
  if (v2)
  {
    [(PDDatabase *)v2 lock];
    v4 = [v3 currentDB];
    sub_100073330(v3[4], v4);
    [v3 setCurrentDB:0];
    [v3 unlock];
  }

  else
  {
    CLSInitLog();
    v5 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDDatabase went away during operation", v6, 2u);
    }
  }
}

- (BOOL)performTransaction:(id)a3 forWriting:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  v8 = v7;
  if (v7)
  {
    [(PDDatabase *)v7 lock];
    v9 = v8;
    [(PDDatabase *)v9 lock];
    invalidated = v9->_invalidated;
    [(PDDatabase *)v9 unlock];

    if (invalidated)
    {
      [(PDDatabase *)v9 unlock];
LABEL_6:
      v12 = 0;
      goto LABEL_28;
    }

    v13 = [(PDDatabase *)v9 currentDB];
    v14 = v13;
    if (v13)
    {
      v15 = 0;
      v16 = v13;
    }

    else
    {
      v16 = sub_1000731E4(v9->_dbPool);
      if (!v16)
      {
        CLSInitLog();
        v27 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Failed to acquire database from dbPool", buf, 2u);
        }

        [(PDDatabase *)v9 unlock];
        goto LABEL_6;
      }

      [(PDDatabase *)v9 setCurrentDB:v16];
      v15 = [v16 totalChangesCount];
    }

    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    *buf = 0;
    v35 = buf;
    v36 = 0x3032000000;
    v37 = sub_10010C41C;
    v38 = sub_10010C42C;
    v39 = objc_opt_new();
    if (!v14 && [(NSSet *)v9->_changeTrackedTableNames count])
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10010C434;
      v33[3] = &unk_100205668;
      v33[4] = v9;
      v33[5] = &v40;
      v33[6] = buf;
      [v16 onRowUpdate:v33];
    }

    v32 = 0;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10010C4F0;
    v30[3] = &unk_100205690;
    v31 = v6;
    v12 = [v16 performTransactionWithType:0 error:&v32 usingBlock:v30];
    v17 = v32;
    v18 = v17;
    if (v12)
    {
      if (v4)
      {
        v28 = v15;
        v29 = v17;
        v19 = [v16 incrementalVacuumDatabaseIfNeeded:0 error:&v29];
        v20 = v29;

        if ((v19 & 1) == 0)
        {
          CLSInitLog();
          v21 = CLSLogDatabase;
          if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
          {
            *v44 = 138543362;
            v45 = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Failed to vacuum db: %{public}@", v44, 0xCu);
          }
        }

        v18 = v20;
        v15 = v28;
      }
    }

    else
    {
      CLSInitLog();
      v22 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
      {
        *v44 = 138543362;
        v45 = v18;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "DB Transaction failed: %{public}@", v44, 0xCu);
      }
    }

    if (!v14)
    {
      [(PDDatabase *)v9 setCurrentDB:0];
      v23 = v41[3];
      [v16 onRowUpdate:0];
      if (!v23)
      {
        v23 = [v16 totalChangesCount] - v15;
      }

      sub_100073330(v9->_dbPool, v16);
      if (v23)
      {
        v24 = *(v35 + 5);
        v25 = +[NSDate date];
        [(PDDatabase *)v9 _notifyOfDataChange:v24 changeTime:v25 changedRowCount:v23];
      }
    }

    [(PDDatabase *)v9 unlock];

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    CLSInitLog();
    v11 = CLSLogDatabase;
    v12 = 0;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PDDatabase went away during operation", buf, 2u);
      goto LABEL_6;
    }
  }

LABEL_28:

  return v12;
}

- (void)_notifyOfDataChange:(id)a3 changeTime:(id)a4 changedRowCount:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v19[0] = v9;
    v18[0] = @"PDDataWrittenTime";
    v18[1] = @"PDDataWrittenRowsChangedCount";
    v10 = [NSNumber numberWithInteger:a5];
    v19[1] = v10;
    v18[2] = @"PDDataWrittenTablesChanged";
    v11 = [v8 copy];
    v19[2] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  }

  else
  {
    v16[0] = @"PDDataWrittenTime";
    v16[1] = @"PDDataWrittenRowsChangedCount";
    v17[0] = v9;
    v10 = [NSNumber numberWithInteger:a5];
    v17[1] = v10;
    v12 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010C80C;
  block[3] = &unk_1002029E8;
  block[4] = self;
  v15 = v12;
  v13 = v12;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_databaseFileURLs
{
  v2 = self;
  if (v2)
  {
    v3 = [NSMutableArray arrayWithObject:v2->_databaseURL];
    v4 = [(NSURL *)v2->_databaseURL lastPathComponent];
    v5 = [(NSURL *)v2->_databaseURL URLByDeletingLastPathComponent];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [&off_10021BA60 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(&off_10021BA60);
          }

          v10 = [v4 stringByAppendingString:*(*(&v14 + 1) + 8 * i)];
          v11 = [v5 URLByAppendingPathComponent:v10 isDirectory:0];
          [v3 addObject:v11];
        }

        v7 = [&off_10021BA60 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    CLSInitLog();
    v12 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PDDatabase went away during operation", buf, 2u);
    }

    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (void)_delete
{
  v2 = self;
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    [(PDDatabase *)v2 lock];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [(PDDatabase *)v2 _databaseFileURLs];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * v8);
          v14 = 0;
          v10 = [v3 removeItemAtURL:v9 error:&v14];
          v11 = v14;
          if ((v10 & 1) == 0)
          {
            CLSInitLog();
            v12 = CLSLogDatabase;
            if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v20 = v9;
              v21 = 2114;
              v22 = v11;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to delete file at URL %{public}@: %{public}@", buf, 0x16u);
            }
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v6);
    }

    [(PDDatabase *)v2 unlock];
  }

  else
  {
    CLSInitLog();
    v13 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PDDatabase went away during operation", buf, 2u);
    }
  }
}

- (BOOL)_updateFileProtectionAttribs
{
  v2 = self;
  if (!v2)
  {
    CLSInitLog();
    v24 = CLSLogDatabase;
    v23 = 0;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PDDatabase went away during operation", buf, 2u);
      v23 = 0;
    }

    goto LABEL_35;
  }

  v31 = +[NSFileManager defaultManager];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(PDDatabase *)v2 _databaseFileURLs];
  v3 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (!v3)
  {
    v23 = 1;
    goto LABEL_34;
  }

  v4 = v3;
  v28 = v2;
  v5 = *v36;
  v6 = NSFileProtectionKey;
  v29 = *v36;
  while (2)
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v36 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v35 + 1) + 8 * i);
      if ([v8 cls_fileExists])
      {
        v9 = [v8 absoluteURL];
        v10 = [v9 path];

        v34 = 0;
        v11 = [v31 attributesOfItemAtPath:v10 error:&v34];
        v12 = v34;
        v13 = [v11 mutableCopy];

        if (v13)
        {
          v32 = v10;
          v14 = [v13 objectForKeyedSubscript:v6];
          if (!(v14 | NSFileProtectionCompleteUntilFirstUserAuthentication))
          {
LABEL_18:
            v10 = v32;
LABEL_21:

            continue;
          }

          v15 = v14;
          v16 = [v13 objectForKeyedSubscript:v6];
          v17 = v6;
          v18 = v16;
          if (v16)
          {
            v19 = NSFileProtectionCompleteUntilFirstUserAuthentication == 0;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
          }

          else
          {
            v20 = [v13 objectForKeyedSubscript:v17];
            v21 = [v20 isEqualToString:NSFileProtectionCompleteUntilFirstUserAuthentication];

            v5 = v29;
            if (v21)
            {
              v6 = NSFileProtectionKey;
              goto LABEL_18;
            }
          }

          v6 = NSFileProtectionKey;
          [v13 setObject:NSFileProtectionCompleteUntilFirstUserAuthentication forKeyedSubscript:NSFileProtectionKey];
          v33 = v12;
          v10 = v32;
          [v31 setAttributes:v13 ofItemAtPath:v32 error:&v33];
          v22 = v33;

          if (!v22)
          {
            v12 = 0;
            goto LABEL_21;
          }

          CLSInitLog();
          v26 = CLSLogDatabase;
          if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v40 = v8;
            v41 = 2114;
            v42 = v22;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to set file protection attribute for file at URL %{public}@: %{public}@", buf, 0x16u);
          }

          v12 = v22;
        }

        else
        {
          CLSInitLog();
          v25 = CLSLogDatabase;
          if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v40 = v8;
            v41 = 2114;
            v42 = v12;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to get file attributes for file at URL %{public}@: %{public}@", buf, 0x16u);
          }
        }

        v2 = v28;

        v23 = 0;
        goto LABEL_34;
      }
    }

    v4 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

  v23 = 1;
  v2 = v28;
LABEL_34:

LABEL_35:
  return v23;
}

- (BOOL)migrate
{
  v2 = self;
  v3 = v2;
  if (v2)
  {
    v4 = [(PDDatabase *)v2 currentDB];
    v33 = 0;
    v5 = [v4 executeUncachedSQL:@"                   create table if not exists migrations(     tableName text not null error:{version integer not null            )                                        ", &v33}];
    v6 = v33;
    v7 = v6;
    if (v5)
    {
      v32 = v6;
      v8 = [v4 executeUncachedSQL:@"create unique index if not exists migrations_tableName on migrations (tableName)" error:&v32];
      v9 = v32;

      if ((v8 & 1) == 0)
      {
        CLSInitLog();
        v23 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v36 = v9;
          v24 = "Failed to create migrations table indexes; %{public}@";
LABEL_23:
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, v24, buf, 0xCu);
        }

LABEL_25:
        v19 = 0;
        goto LABEL_26;
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = [objc_opt_class() registeredEntities];
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v29;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v28 + 1) + 8 * i);
            v16 = objc_autoreleasePoolPush();
            LODWORD(v15) = [(PDDatabase *)v3 migrateEntity:v15];
            objc_autoreleasePoolPop(v16);
            if (!v15)
            {

              goto LABEL_25;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v27 = v9;
      v17 = [v4 executeUncachedSQL:@"drop table if exists PDBlacklistedApp" error:&v27];
      v7 = v27;

      if (v17)
      {
        v26 = v7;
        v18 = [v4 executeUncachedSQL:@"drop table if exists PDWhitelistedHost" error:&v26];
        v9 = v26;

        if (v18)
        {
          v19 = 1;
LABEL_26:
          v7 = v9;
          goto LABEL_27;
        }

        CLSInitLog();
        v23 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v36 = v9;
          v24 = "Failed to remove obsolete table; %{public}@";
          goto LABEL_23;
        }

        goto LABEL_25;
      }

      CLSInitLog();
      v21 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v36 = v7;
        v22 = "Failed to remove obsolete table; %{public}@";
        goto LABEL_19;
      }
    }

    else
    {
      CLSInitLog();
      v21 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v36 = v7;
        v22 = "Failed to create migrations table; %{public}@";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, v22, buf, 0xCu);
      }
    }

    v19 = 0;
LABEL_27:

    goto LABEL_28;
  }

  CLSInitLog();
  v20 = CLSLogDatabase;
  v19 = 0;
  if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "PDDatabase went away during operation", buf, 2u);
    v19 = 0;
  }

LABEL_28:

  return v19;
}

- (BOOL)migrateEntity:(Class)a3
{
  v4 = self;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(objc_class *)a3 entityName];
    *buf = 0;
    v33 = buf;
    v34 = 0x2020000000;
    v35 = 0;
    v7 = [(PDDatabase *)v4 currentDB];
    v31 = 0;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10010D89C;
    v29[3] = &unk_100204570;
    v8 = v6;
    v30 = v8;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10010D8AC;
    v28[3] = &unk_1002056B8;
    v28[4] = buf;
    v9 = [v7 executeUncachedSQL:@"select version from migrations where tableName = ?" error:&v31 bindingHandler:v29 enumerationHandler:v28];
    v10 = v31;
    if (v9)
    {
      v27 = *(v33 + 3);
      if (([objc_class migrateFromVersion:a3 finalVersion:"migrateFromVersion:finalVersion:inDatabase:" inDatabase:?]& 1) != 0)
      {
        if (*(v33 + 3) == v27)
        {
          v11 = 1;
        }

        else
        {
          v26 = v10;
          v18 = [v7 validateForeignKeysForTable:v8 databaseName:0 error:&v26];
          v19 = v26;

          if ((v18 & 1) == 0)
          {
            CLSInitLog();
            v20 = CLSLogDatabase;
            if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
            {
              *v36 = 138412290;
              v37 = a3;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Failed to validate foreign key for %@", v36, 0xCu);
            }
          }

          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_10010D8E8;
          v22[3] = &unk_1002056E0;
          v24 = v27;
          v25 = v19;
          v23 = v8;
          v11 = [v7 executeUncachedSQL:@"insert or replace into migrations (version error:tableName) values (? bindingHandler:?)" enumerationHandler:{&v25, v22, 0}];
          v10 = v25;

          if ((v11 & 1) == 0)
          {
            CLSInitLog();
            v21 = CLSLogDatabase;
            if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
            {
              *v36 = 138412290;
              v37 = a3;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Failed to set new migration version for %@", v36, 0xCu);
            }
          }
        }

        goto LABEL_14;
      }

      CLSInitLog();
      v16 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
      {
        *v36 = 138412290;
        v37 = a3;
        v14 = "Failed to execute migrations for %@";
        v15 = v16;
        goto LABEL_12;
      }
    }

    else
    {
      CLSInitLog();
      v13 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
      {
        *v36 = 138543362;
        v37 = v10;
        v14 = "Failed to turn ON foreign_keys support; %{public}@";
        v15 = v13;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v14, v36, 0xCu);
      }
    }

    v11 = 0;
LABEL_14:

    _Block_object_dispose(buf, 8);
    objc_autoreleasePoolPop(v5);
    goto LABEL_15;
  }

  CLSInitLog();
  v12 = CLSLogDatabase;
  v11 = 0;
  if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PDDatabase went away during operation", buf, 2u);
    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (id)poolItemForPool:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = v5;
  if (v5)
  {
    v7 = v5->_databaseURL;
    if (v6->_invalidated)
    {
      CLSInitLog();
      v8 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        v21 = v8;
        v22 = [(NSURL *)v7 path];
        *buf = 138543362;
        *v27 = v22;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Cannot create new connection, database invalidated: %{public}@", buf, 0xCu);
      }

      v9 = 0;
      goto LABEL_24;
    }

    v11 = [[PDSQLiteDatabase alloc] initWithDatabaseURL:v7];
    v25 = 0;
    v12 = [(PDSQLiteDatabase *)v11 openWithError:&v25];
    v13 = v25;
    if (v12)
    {
      [(PDSQLiteDatabase *)v11 close];
      if (v12 == 26 || v12 == 11)
      {
        CLSInitLog();
        v14 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          v23 = v14;
          v24 = [(NSURL *)v7 path];
          *buf = 67109378;
          *v27 = v12;
          *&v27[4] = 2114;
          *&v27[6] = v24;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Database corruption detected: [%d, %{public}@]; nuking db; and retrying;", buf, 0x12u);
        }

        [(PDDatabase *)v6 _delete];
        v15 = [(PDDatabase *)v6 poolItemForPool:v4];
        goto LABEL_17;
      }

      CLSInitLog();
      v16 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = [(NSURL *)v7 path];
        *buf = 67109634;
        *v27 = v12;
        *&v27[4] = 2114;
        *&v27[6] = v18;
        v28 = 2114;
        v29 = v13;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unable to open database: [%d, %{public}@]; %{public}@", buf, 0x1Cu);
      }
    }

    else
    {
      if ([(PDDatabase *)v6 _updateFileProtectionAttribs])
      {
        v15 = v11;
LABEL_17:
        v9 = v15;
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      [(PDSQLiteDatabase *)v11 close];
      CLSInitLog();
      v19 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to update file protection attributes of database", buf, 2u);
      }
    }

    v9 = 0;
    goto LABEL_23;
  }

  CLSInitLog();
  v10 = CLSLogDatabase;
  if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PDDatabase went away during operation", buf, 2u);
  }

  v9 = 0;
LABEL_25:

  return v9;
}

- (id)personIDsToPerson:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PDDatabase *)self select:objc_opt_class() identity:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)_statusID:(id *)a3 deniedCount:(int64_t *)a4 authCount:(int64_t *)a5 forContextPath:(id)a6
{
  v10 = a6;
  v11 = [v10 count];
  if (!v11)
  {
    __assert_rtn("[PDDatabase(CLSContext) _statusID:deniedCount:authCount:forContextPath:]", "CLSContext+PDDatabaseEntity.m", 508, "pathLength > 0");
  }

  v12 = v11;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_10014AF40;
  v52 = sub_10014AF50;
  v53 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = sub_10014AF40;
  v46[4] = sub_10014AF50;
  v47 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10014AF58;
  v26[3] = &unk_100206140;
  v13 = v10;
  v29 = &v48;
  v30 = v46;
  v27 = v13;
  v28 = self;
  v31 = &v42;
  v32 = &v38;
  v33 = &v34;
  if ((sub_10010BE68(self, v26) & 1) == 0)
  {
    goto LABEL_18;
  }

  v14 = v35[3];
  if (v14 < v12)
  {
    if (v14)
    {
      v15 = [v13 count];
      v16 = [v13 subarrayWithRange:{v14, &v15[-v35[3]]}];
    }

    else
    {
      v16 = v13;
    }

    v43[3] = 0;
    v39[3] = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10014B2E8;
    v21[3] = &unk_100206168;
    v17 = v16;
    v24 = v46;
    v25 = &v48;
    v22 = v17;
    v23 = self;
    if (self)
    {
      v18 = [(PDDatabase *)self performTransaction:v21 forWriting:1];

      if (v18)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

LABEL_9:
  if (a3)
  {
    *a3 = v49[5];
  }

  if (a5)
  {
    *a5 = v39[3];
  }

  if (a4)
  {
    *a4 = v43[3];
  }

  v19 = 1;
LABEL_19:

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(v46, 8);

  _Block_object_dispose(&v48, 8);
  return v19;
}

- (BOOL)_pruneAuthTreeAtNodeWithContextStatusID:(id)a3
{
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v28 = v4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10014AF40;
  v18 = sub_10014AF50;
  v19 = 0;
  v5 = [NSArray arrayWithObjects:&v28 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10014C04C;
  v13[3] = &unk_1002020A0;
  v13[4] = &v24;
  v13[5] = &v20;
  v13[6] = &v14;
  if (sub_1000B9298(self, @"select authorizedCount, deniedCount, parentStatusID from AuthStatus where statusID = ? limit 1", 1, v5, v13))
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10014C10C;
    v8[3] = &unk_100202190;
    v8[4] = &v9;
    if (sub_1000B9298(self, @"select count(*) as count from AuthStatus where parentStatusID = ? limit 1", 1, v5, v8))
    {
      if (v25[3] || v21[3] || *(v10 + 24) != 1)
      {
        goto LABEL_11;
      }

      if (sub_1000B9714(self, @"AuthStatus", @"statusID = ?", v5))
      {
        if (v15[5])
        {
          v6 = [(PDDatabase *)self _pruneAuthTreeAtNodeWithContextStatusID:?];
LABEL_12:
          _Block_object_dispose(&v9, 8);
          goto LABEL_13;
        }

LABEL_11:
        v6 = 1;
        goto LABEL_12;
      }
    }

    v6 = 0;
    goto LABEL_12;
  }

  v6 = 0;
LABEL_13:

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v6;
}

- (BOOL)isIncompleteHandout:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 objectID];
  v15 = v6;
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  v8 = [(PDDatabase *)self select:v5 where:@"parentObjectID = ?" bindings:v7];

  if (v8)
  {
    LODWORD(v9) = [v8 isCompletedHandout] ^ 1;
  }

  else
  {
    CLSInitLog();
    v10 = CLSLogDefault;
    LOBYTE(v9) = 0;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v10;
      v11 = [v4 objectID];
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PDUserNotificationTrigger: collaboration state for handout with id: %{public}@ not available.", &v13, 0xCu);

      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (id)personSearchPredicate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 appendString:@"(%K BEGINSWITH %@ || %K LIKE %@)"];
  [v4 appendString:@" && isSearchable == 1"];
  v5 = [v3 keyword];
  v6 = [v3 keyword];

  v7 = [@"\n" stringByAppendingString:v6];
  v8 = [NSPredicate predicateWithFormat:v4, @"searchText", v5, @"searchText", v7];

  return v8;
}

- (id)groupSearchPredicate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 appendString:@"(%K LIKE %@)"];
  v5 = [v3 keyword];

  v6 = [NSPredicate predicateWithFormat:v4, @"searchText", v5];

  return v6;
}

- (id)groupExpansionPredicate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if (([v4 rosterSearchOptions] & 2) != 0)
  {
    v6 = @"select personID from CLSClassMember where parentObjectID=?";
  }

  else
  {
    v6 = (@"select personID from CLSGroupMember where parentObjectID=?" & (([v4 rosterSearchOptions] << 61) >> 63));
  }

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10017C4E8;
  v14 = &unk_1002028D0;
  v15 = self;
  v16 = v6;
  v7 = v4;
  v17 = v7;
  v8 = v5;
  v18 = v8;
  sub_10010BE68(self, &v11);
  if ([v8 count])
  {
    v9 = [NSPredicate predicateWithFormat:@"%K IN %@", CLSPredicateKeyPathObjectID, v8, v11, v12, v13, v14, v15, v16, v17];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end