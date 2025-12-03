@interface PDDatabase
+ (Class)entityNamed:(id)named;
+ (NSArray)recordTypesOfEntitiesTrackingUserActivity;
+ (NSArray)registeredEntities;
+ (id)nameOfEntity:(Class)entity;
+ (id)whereSQLForArray:(id)array prefix:(id)prefix;
+ (void)registerEntities;
+ (void)registerEntity:(Class)entity;
- (BOOL)_deleteAll:(Class)all where:(id)where bindings:(id)bindings trackDeletes:(BOOL)deletes;
- (BOOL)_insertObject:(id)object;
- (BOOL)_markObject:(id)object as:(int64_t)as;
- (BOOL)_postDidInsertNotificationWithEntity:(id)entity;
- (BOOL)_postWillChangeNotificationWithEntity:(id)entity;
- (BOOL)_pruneAuthTreeAtNodeWithAssignedItemStatusID:(id)d;
- (BOOL)_pruneAuthTreeAtNodeWithContextStatusID:(id)d;
- (BOOL)_setCurrentUser:(id)user withRoleLocations:(id)locations orRole:(unint64_t)role;
- (BOOL)_statusID:(id *)d deniedCount:(int64_t *)count authCount:(int64_t *)authCount forContextPath:(id)path;
- (BOOL)_statusID:(id *)d deniedCount:(int64_t *)count authCount:(int64_t *)authCount forHandoutAssignedItem:(id)item;
- (BOOL)_updateFileProtectionAttribs;
- (BOOL)_updateObject:(id)object;
- (BOOL)childEntitiesExistForClass:(Class)class parentIdentity:(id)identity;
- (BOOL)deleteObject:(id)object;
- (BOOL)entityClass:(Class)class containsColumnNamed:(id)named;
- (BOOL)entityExistsByClass:(Class)class identity:(id)identity;
- (BOOL)insertObject:(id)object;
- (BOOL)insertObjects:(id)objects;
- (BOOL)insertOrUpdateObject:(id)object;
- (BOOL)insertOrUpdateObjects:(id)objects;
- (BOOL)isInSyncBlock;
- (BOOL)isIncompleteHandout:(id)handout;
- (BOOL)isSyncableDataWritten;
- (BOOL)markAll:(Class)all where:(id)where bindings:(id)bindings as:(int64_t)as;
- (BOOL)markObject:(id)object as:(int64_t)as;
- (BOOL)migrate;
- (BOOL)migrateEntity:(Class)entity;
- (BOOL)performFrameworkMigrationIfNeeded;
- (BOOL)performTransaction:(id)transaction forWriting:(BOOL)writing;
- (BOOL)saveAndSyncObjects:(id)objects;
- (BOOL)searchFor:(Class)for predicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit offset:(unint64_t)offset block:(id)block;
- (BOOL)selectAll:(Class)all where:(id)where orderBy:(id)by bindings:(id)bindings block:(id)block;
- (BOOL)selectAll:(Class)all where:(id)where orderBy:(id)by limit:(int64_t)limit offset:(unint64_t)offset bindings:(id)bindings block:(id)block;
- (BOOL)selectColumns:(id)columns of:(Class)of where:(id)where orderBy:(id)by limit:(int64_t)limit offset:(unint64_t)offset bindings:(id)bindings block:(id)self0;
- (BOOL)syncableDatabaseEntityExistsByObjectID:(id)d;
- (BOOL)updateAll:(Class)all set:(id)set where:(id)where bindings:(id)bindings;
- (BOOL)updateObject:(id)object;
- (BOOL)updateObjects:(id)objects;
- (BOOL)withSyncEnabled:(id)enabled;
- (PDDatabase)init;
- (PDSQLiteDatabase)currentDB;
- (id)_databaseFileURLs;
- (id)_progressEventsForContext:(id)context eventType:(int64_t)type activityID:(id)d activityItemID:(id)iD;
- (id)_progressEventsWithAssignedItem:(id)item eventType:(int64_t)type activityID:(id)d activityItemID:(id)iD;
- (id)groupExpansionPredicate:(id)predicate;
- (id)groupSearchPredicate:(id)predicate;
- (id)locationIDsMatchingConstraintsForSearchSpecification:(id)specification;
- (id)locationIDsWithoutPrivilege:(id)privilege onPersonIDs:(id)ds;
- (id)locationSearchPredicateForSearchSpec:(id)spec;
- (id)normalizedValue:(id)value forKeyPath:(id)path;
- (id)objectIDsForSQL:(id)l resultColumnName:(id)name bindings:(id)bindings;
- (id)organizationSearchPredicateForSearchSpec:(id)spec;
- (id)personIDsAnyRoleAtLocationIDs:(id)ds;
- (id)personIDsForClassMembersMatchingConstraintsForSearchSpecification:(id)specification;
- (id)personIDsForGroupMembersMatchingConstraintsForSearchSpecification:(id)specification;
- (id)personIDsMatchingConstraintsForSearchSpecification:(id)specification;
- (id)personIDsToPerson:(id)person;
- (id)personIDsWithRoleID:(id)d atLocationIDs:(id)ds;
- (id)personSearchPredicate:(id)predicate;
- (id)poolItemForPool:(id)pool;
- (id)prlConstraintSQLOnColumn:(id)column andValues:(id)values;
- (id)prlSelectColumn:(id)column havingPrivilege:(id)privilege whereConstraintColumn:(id)constraintColumn hasValues:(id)values;
- (id)prlSelectColumn:(id)column havingRoleType:(int64_t)type whereConstraintColumn:(id)constraintColumn hasValues:(id)values;
- (id)select:(Class)select identity:(id)identity;
- (id)select:(Class)select where:(id)where bindings:(id)bindings;
- (id)selectColumns:(id)columns of:(Class)of where:(id)where bindings:(id)bindings;
- (id)trackDeletedObject:(id)object;
- (unint64_t)count:(Class)count where:(id)where bindings:(id)bindings;
- (void)_delete;
- (void)_notifyOfDataChange:(id)change changeTime:(id)time changedRowCount:(int64_t)count;
- (void)_saveInsightEventsFor:(id)for;
- (void)cleanupAssociatedObjects;
- (void)dealloc;
- (void)generateInsightEventsForClass:(Class)class where:(id)where bindings:(id)bindings;
- (void)generateInsightEventsForObject:(id)object;
- (void)populateSearchField:(id)field bindings:(id)bindings;
- (void)setCurrentDB:(id)b;
- (void)setupDevDB;
- (void)tearDownDevDB;
@end

@implementation PDDatabase

- (BOOL)searchFor:(Class)for predicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit offset:(unint64_t)offset block:(id)block
{
  if (predicate)
  {
    return sub_1000429A0(self, for, predicate, descriptors, limit, offset, block);
  }

  else
  {
    return 1;
  }
}

- (id)objectIDsForSQL:(id)l resultColumnName:(id)name bindings:(id)bindings
{
  lCopy = l;
  nameCopy = name;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100013A38;
  v17[3] = &unk_100202028;
  v17[4] = self;
  v18 = lCopy;
  bindingsCopy = bindings;
  v20 = nameCopy;
  v10 = objc_opt_new();
  v21 = v10;
  v11 = nameCopy;
  v12 = bindingsCopy;
  v13 = lCopy;
  sub_10010BE68(self, v17);
  v14 = v21;
  v15 = v10;

  return v10;
}

- (id)prlConstraintSQLOnColumn:(id)column andValues:(id)values
{
  columnCopy = column;
  valuesCopy = values;
  v7 = valuesCopy;
  if (columnCopy && [valuesCopy count])
  {
    columnCopy = [NSString stringWithFormat:@"and PRL.%@ in ", columnCopy];
    v9 = [PDDatabase whereSQLForArray:v7 prefix:columnCopy];
  }

  else
  {
    v9 = &stru_100206880;
  }

  return v9;
}

- (id)prlSelectColumn:(id)column havingRoleType:(int64_t)type whereConstraintColumn:(id)constraintColumn hasValues:(id)values
{
  valuesCopy = values;
  columnCopy = column;
  v12 = [(PDDatabase *)self prlConstraintSQLOnColumn:constraintColumn andValues:valuesCopy];
  v13 = [NSString stringWithFormat:@"select distinct %@ from PDPersonRoleLocation as PRL where PRL.roleType =? %@", columnCopy, v12];;
  v14 = [NSMutableArray alloc];
  v15 = [NSNumber numberWithInteger:type];
  v16 = [v14 initWithObjects:{v15, 0}];

  [v16 addObjectsFromArray:valuesCopy];
  v17 = [(PDDatabase *)self objectIDsForSQL:v13 resultColumnName:columnCopy bindings:v16];

  return v17;
}

- (id)prlSelectColumn:(id)column havingPrivilege:(id)privilege whereConstraintColumn:(id)constraintColumn hasValues:(id)values
{
  privilegeCopy = privilege;
  if (!privilegeCopy)
  {
    privilegeCopy = @"❌✋🔒";
  }

  valuesCopy = values;
  columnCopy = column;
  v13 = [(PDDatabase *)self prlConstraintSQLOnColumn:constraintColumn andValues:valuesCopy];
  v14 = [NSString stringWithFormat:@"select distinct %@ from PDPersonRoleLocation as PRL join PDRolePrivilege as P on PRL.roleID = P.roleID and P.privilegeName =? %@", columnCopy, v13];;
  v15 = [[NSMutableArray alloc] initWithObjects:{privilegeCopy, 0}];
  [v15 addObjectsFromArray:valuesCopy];

  v16 = [(PDDatabase *)self objectIDsForSQL:v14 resultColumnName:columnCopy bindings:v15];

  return v16;
}

- (id)personIDsMatchingConstraintsForSearchSpecification:(id)specification
{
  specificationCopy = specification;
  if (![specificationCopy hasPersonConstraints])
  {
    allObjects = 0;
    goto LABEL_34;
  }

  personLocationIDs = [specificationCopy personLocationIDs];

  if (personLocationIDs)
  {
    personLocationIDs2 = [specificationCopy personLocationIDs];
    personLocationIDs = [(PDDatabase *)self personIDsAnyRoleAtLocationIDs:personLocationIDs2];
  }

  requiredRoleID = [specificationCopy requiredRoleID];

  if (requiredRoleID)
  {
    requiredRoleID2 = [specificationCopy requiredRoleID];
    personLocationIDs3 = [specificationCopy personLocationIDs];
    v10 = [(PDDatabase *)self personIDsWithRoleID:requiredRoleID2 atLocationIDs:personLocationIDs3];

LABEL_9:
    goto LABEL_10;
  }

  if ([specificationCopy requiredRoleType])
  {
    requiredRoleType = [specificationCopy requiredRoleType];
    requiredRoleID2 = [specificationCopy personLocationIDs];
    v10 = [(PDDatabase *)self personIDsWithRoleType:requiredRoleType atLocationIDs:requiredRoleID2];
    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:
  requiredPrivilege = [specificationCopy requiredPrivilege];

  if (requiredPrivilege)
  {
    requiredPrivilege2 = [specificationCopy requiredPrivilege];
    requiredPrivilegeLocationIDs = [specificationCopy requiredPrivilegeLocationIDs];
    requiredPrivilege = sub_100014180(self, requiredPrivilege2, requiredPrivilegeLocationIDs);
  }

  prohibitedPrivilege = [specificationCopy prohibitedPrivilege];

  if (prohibitedPrivilege)
  {
    prohibitedPrivilege2 = [specificationCopy prohibitedPrivilege];
    prohibitedPrivilegeLocationIDs = [specificationCopy prohibitedPrivilegeLocationIDs];
    v19 = sub_1000141C8(self, prohibitedPrivilege2, prohibitedPrivilegeLocationIDs);
  }

  else
  {
    v19 = 0;
  }

  if (!personLocationIDs)
  {
    if (!v10)
    {
      if (!requiredPrivilege)
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

  v20 = [NSMutableSet setWithArray:personLocationIDs];
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
  if (!requiredPrivilege)
  {
    goto LABEL_24;
  }

  if (v21)
  {
    v23 = [NSSet setWithArray:requiredPrivilege];
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
  v21 = [NSMutableSet setWithArray:requiredPrivilege];
  if (v19)
  {
    goto LABEL_29;
  }

LABEL_33:
  allObjects = [v21 allObjects];

LABEL_34:

  return allObjects;
}

- (id)personIDsAnyRoleAtLocationIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v5 = [PDDatabase whereSQLForArray:dsCopy prefix:@"select distinct personID from PDPersonRoleLocation where locationID in "];
    v6 = [(PDDatabase *)self objectIDsForSQL:v5 resultColumnName:@"personID" bindings:dsCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)personIDsWithRoleID:(id)d atLocationIDs:(id)ds
{
  dsCopy = ds;
  dCopy = d;
  v8 = [(PDDatabase *)self prlConstraintSQLOnColumn:@"locationID" andValues:dsCopy];
  v9 = [NSString stringWithFormat:@"select distinct personID from PDPersonRoleLocation as PRL where PRL.roleID =? %@", v8];;
  v10 = [[NSMutableArray alloc] initWithObjects:{dCopy, 0}];

  [v10 addObjectsFromArray:dsCopy];
  v11 = [(PDDatabase *)self objectIDsForSQL:v9 resultColumnName:@"personID" bindings:v10];

  return v11;
}

- (id)locationSearchPredicateForSearchSpec:(id)spec
{
  specCopy = spec;
  v5 = [(PDDatabase *)self locationIDsMatchingConstraintsForSearchSpecification:specCopy];
  if (v5)
  {
    searchString = [specCopy searchString];

    if (searchString)
    {
      classLocationIDs = [specCopy classLocationIDs];
      v8 = [specCopy predicateWithLocationIDs:classLocationIDs];

      goto LABEL_7;
    }

    predicate = [CLSDataObserver predicateForObjectsWithObjectIDs:v5];
  }

  else
  {
    predicate = [specCopy predicate];
  }

  v8 = predicate;
LABEL_7:

  return v8;
}

- (id)locationIDsMatchingConstraintsForSearchSpecification:(id)specification
{
  specificationCopy = specification;
  if (![specificationCopy hasLocationConstraints])
  {
    allObjects = 0;
    goto LABEL_23;
  }

  if ([specificationCopy requiredLocationRoleType])
  {
    requiredLocationRoleType = [specificationCopy requiredLocationRoleType];
    locationPersonIDs = [specificationCopy locationPersonIDs];
    v7 = [(PDDatabase *)self locationIDsWithRoleType:requiredLocationRoleType onPersonIDs:locationPersonIDs];
  }

  else
  {
    v7 = 0;
  }

  requiredLocationPrivilege = [specificationCopy requiredLocationPrivilege];

  if (requiredLocationPrivilege)
  {
    requiredLocationPrivilege2 = [specificationCopy requiredLocationPrivilege];
    requiredLocationPersonIDs = [specificationCopy requiredLocationPersonIDs];
    requiredLocationPrivilege = [(PDDatabase *)self locationIDsWithPrivilege:requiredLocationPrivilege2 onPersonIDs:requiredLocationPersonIDs];
  }

  prohibitedLocationPrivilege = [specificationCopy prohibitedLocationPrivilege];

  if (prohibitedLocationPrivilege)
  {
    prohibitedLocationPrivilege2 = [specificationCopy prohibitedLocationPrivilege];
    requiredLocationPersonIDs2 = [specificationCopy requiredLocationPersonIDs];
    v15 = [(PDDatabase *)self locationIDsWithoutPrivilege:prohibitedLocationPrivilege2 onPersonIDs:requiredLocationPersonIDs2];
  }

  else
  {
    v15 = 0;
  }

  if (v7)
  {
    v16 = [NSMutableSet setWithArray:v7];
    v17 = v16;
    if (!requiredLocationPrivilege)
    {
      goto LABEL_17;
    }

    if (v16)
    {
      v18 = [NSSet setWithArray:requiredLocationPrivilege];
      [v17 intersectSet:v18];

      goto LABEL_17;
    }
  }

  else if (!requiredLocationPrivilege)
  {
    if (!v15)
    {
      v17 = 0;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v17 = [NSMutableSet setWithArray:requiredLocationPrivilege];
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
  allObjects = [v17 allObjects];

LABEL_23:

  return allObjects;
}

- (id)locationIDsWithoutPrivilege:(id)privilege onPersonIDs:(id)ds
{
  privilegeCopy = privilege;
  if (!privilegeCopy)
  {
    privilegeCopy = @"❌✋🔒";
  }

  dsCopy = ds;
  v8 = [(PDDatabase *)self prlConstraintSQLOnColumn:@"personID" andValues:dsCopy];
  v9 = [NSString stringWithFormat:@"select objectID from CLSLocation where CLSLocation.objectid NOT IN( select distinct %@ from PDPersonRoleLocation as PRL  join PDRolePrivilege as P  on PRL.roleID = P.roleID and P.privilegeName =?  %@)", @"locationID", v8];;
  v10 = [[NSMutableArray alloc] initWithObjects:{privilegeCopy, 0}];
  [v10 addObjectsFromArray:dsCopy];

  v11 = [(PDDatabase *)self objectIDsForSQL:v9 resultColumnName:@"objectID" bindings:v10];

  return v11;
}

- (id)organizationSearchPredicateForSearchSpec:(id)spec
{
  specCopy = spec;
  requiredOrganizationEmailDomain = [specCopy requiredOrganizationEmailDomain];

  if (requiredOrganizationEmailDomain)
  {
    requiredOrganizationEmailDomain2 = [specCopy requiredOrganizationEmailDomain];
    [specCopy setSearchString:requiredOrganizationEmailDomain2];
  }

  predicate = [specCopy predicate];

  return predicate;
}

- (id)personIDsForClassMembersMatchingConstraintsForSearchSpecification:(id)specification
{
  specificationCopy = specification;
  requiredClassMemberClassIDs = [specificationCopy requiredClassMemberClassIDs];
  v6 = [requiredClassMemberClassIDs count];

  if (v6)
  {
    requiredClassMemberClassIDs2 = [specificationCopy requiredClassMemberClassIDs];
    v8 = [NSString stringWithFormat:@"where %@ in ", @"parentObjectID"];
    v9 = [PDDatabase whereSQLForArray:requiredClassMemberClassIDs2 prefix:v8];

    v10 = [NSString stringWithFormat:@"select distinct personID from CLSClassMember %@ AND (roles & ? > 0)", v9];;
    v11 = objc_opt_new();
    if ([specificationCopy requiredClassMemberRole])
    {
      v12 = [NSMutableArray alloc];
      requiredClassMemberClassIDs3 = [specificationCopy requiredClassMemberClassIDs];
      v14 = [v12 initWithArray:requiredClassMemberClassIDs3];

      [v14 addObject:&off_10021B4E0];
      v15 = [(PDDatabase *)self objectIDsForSQL:v10 resultColumnName:@"personID" bindings:v14];
      [v11 addObjectsFromArray:v15];
    }

    if (([specificationCopy requiredClassMemberRole] & 2) != 0)
    {
      v16 = [NSMutableArray alloc];
      requiredClassMemberClassIDs4 = [specificationCopy requiredClassMemberClassIDs];
      v18 = [v16 initWithArray:requiredClassMemberClassIDs4];

      [v18 addObject:&off_10021B4F8];
      v19 = [(PDDatabase *)self objectIDsForSQL:v10 resultColumnName:@"personID" bindings:v18];
      [v11 addObjectsFromArray:v19];
    }

    allObjects = [v11 allObjects];
  }

  else
  {
    allObjects = &__NSArray0__struct;
  }

  return allObjects;
}

- (id)personIDsForGroupMembersMatchingConstraintsForSearchSpecification:(id)specification
{
  specificationCopy = specification;
  requiredGroupMemberGroupIDs = [specificationCopy requiredGroupMemberGroupIDs];
  v6 = [requiredGroupMemberGroupIDs count];

  if (v6)
  {
    requiredGroupMemberGroupIDs2 = [specificationCopy requiredGroupMemberGroupIDs];
    v8 = [NSString stringWithFormat:@"where %@ in ", @"parentObjectID"];
    v9 = [PDDatabase whereSQLForArray:requiredGroupMemberGroupIDs2 prefix:v8];

    v10 = [NSString stringWithFormat:@"select distinct personID from CLSGroupMember %@", v9];
    v11 = objc_opt_new();
    requiredGroupMemberGroupIDs3 = [specificationCopy requiredGroupMemberGroupIDs];
    v13 = [(PDDatabase *)self objectIDsForSQL:v10 resultColumnName:@"personID" bindings:requiredGroupMemberGroupIDs3];
    [v11 addObjectsFromArray:v13];

    allObjects = [v11 allObjects];
  }

  else
  {
    allObjects = &__NSArray0__struct;
  }

  return allObjects;
}

- (BOOL)_statusID:(id *)d deniedCount:(int64_t *)count authCount:(int64_t *)authCount forHandoutAssignedItem:(id)item
{
  itemCopy = item;
  if (![itemCopy length])
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
  v11 = itemCopy;
  v21 = v11;
  selfCopy = self;
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
    selfCopy2 = self;
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
  if (d)
  {
    *d = v38[5];
  }

  if (authCount)
  {
    *authCount = v28[3];
  }

  if (count)
  {
    *count = v32[3];
  }

  v13 = 1;
LABEL_16:

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v35, 8);

  _Block_object_dispose(&v37, 8);
  return v13;
}

- (BOOL)_pruneAuthTreeAtNodeWithAssignedItemStatusID:(id)d
{
  dCopy = d;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v28 = dCopy;
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

- (id)normalizedValue:(id)value forKeyPath:(id)path
{
  valueCopy = value;
  v6 = +[CLSCurrentUser magicValue];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (!(valueCopy | v6) || valueCopy && v6 && [valueCopy isEqualToString:v6]))
  {
    v7 = sub_1000712CC(self);
  }

  else
  {
    v7 = valueCopy;
  }

  v8 = v7;

  return v8;
}

- (id)_progressEventsWithAssignedItem:(id)item eventType:(int64_t)type activityID:(id)d activityItemID:(id)iD
{
  itemCopy = item;
  dCopy = d;
  v11 = objc_opt_class();
  parentObjectID = [itemCopy parentObjectID];
  v13 = [(PDDatabase *)self select:v11 identity:parentObjectID];

  if (v13 && (sub_100017EA4(self, v13, type), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    [v14 setActivityID:dCopy];
    objectID = [itemCopy objectID];
    [v15 setHandoutAuthorizedObjectID:objectID];

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

- (id)_progressEventsForContext:(id)context eventType:(int64_t)type activityID:(id)d activityItemID:(id)iD
{
  contextCopy = context;
  dCopy = d;
  iDCopy = iD;
  v13 = objc_opt_new();
  v14 = objc_autoreleasePoolPush();
  identifierPath = [contextCopy identifierPath];
  v16 = [CLSContext objectIDPathFromIdentifierPath:identifierPath];

  [v16 addObject:dCopy];
  if (iDCopy)
  {
    [v16 addObject:iDCopy];
  }

  v17 = [v16 componentsJoinedByString:@"/"];

  objc_autoreleasePoolPop(v14);
  v18 = objc_opt_class();
  v35[0] = &off_10021B5D0;
  appIdentifier = [contextCopy appIdentifier];
  v35[1] = appIdentifier;
  v20 = [NSArray arrayWithObjects:v35 count:2];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10004C3D4;
  v28[3] = &unk_1002030E8;
  v29 = contextCopy;
  selfCopy = self;
  typeCopy = type;
  v31 = dCopy;
  v32 = v17;
  v21 = v13;
  v33 = v21;
  v22 = v17;
  v23 = dCopy;
  v24 = contextCopy;
  [(PDDatabase *)self selectAll:v18 where:@"type = ? AND bundleIdentifier = ?" bindings:v20 block:v28];

  v25 = v33;
  v26 = v21;

  return v21;
}

- (BOOL)_setCurrentUser:(id)user withRoleLocations:(id)locations orRole:(unint64_t)role
{
  userCopy = user;
  locationsCopy = locations;
  [(PDDatabase *)self lock];
  if ((sub_10011E700(self, userCopy, locationsCopy) & 1) == 0)
  {
    [locationsCopy count];
    v12 = 0;
    goto LABEL_5;
  }

  objectID = [userCopy objectID];
  if (sub_10016A3F0(self, objectID, @"currentUserPersonID"))
  {
    v11 = sub_10016A0C8(self, role, @"currentUserRole");
  }

  else
  {
    v11 = 0;
  }

  v17 = [locationsCopy count];
  if (v11 && v17)
  {
    roleCopy = role;
    selfCopy = self;
    v12 = [NSMutableDictionary dictionaryWithCapacity:v17];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = locationsCopy;
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
          stringValue = [v25 stringValue];

          v27 = [v12 objectForKeyedSubscript:stringValue];
          if (!v27)
          {
            v27 = objc_opt_new();
            [v12 setObject:v27 forKeyedSubscript:stringValue];
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

    self = selfCopy;
    role = roleCopy;
    if (sub_10016A76C(selfCopy, v12, @"currentUserLocationIDsByRoleType"))
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
  objc_setAssociatedObject(self, off_100203C38, userCopy, 1);
  v31 = [NSNumber numberWithUnsignedInteger:role];
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
  enableVerboseLogging = [v14 enableVerboseLogging];

  if (enableVerboseLogging)
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

+ (id)nameOfEntity:(Class)entity
{
  v4 = sub_1000F5CC0();
  v5 = [v4 objectForKey:entity];

  return v5;
}

+ (Class)entityNamed:(id)named
{
  namedCopy = named;
  v4 = sub_1000F5E4C();
  v5 = [v4 objectForKey:namedCopy];

  return v5;
}

+ (void)registerEntity:(Class)entity
{
  v4 = sub_1000F5E4C();
  entityName = [(objc_class *)entity entityName];
  [v4 setObject:entity forKey:entityName];

  v7 = sub_1000F5CC0();
  entityName2 = [(objc_class *)entity entityName];
  [v7 setObject:entityName2 forKey:entity];
}

+ (id)whereSQLForArray:(id)array prefix:(id)prefix
{
  arrayCopy = array;
  prefixCopy = prefix;
  if (![arrayCopy count])
  {
    __assert_rtn("+[PDDatabase(Entities) whereSQLForArray:prefix:]", "PDDatabase+Entities.m", 111, "array.count > 0");
  }

  v7 = [[NSMutableString alloc] initWithString:prefixCopy];
  objc_msgSend(v7, "appendString:", @"(");
  v8 = [arrayCopy count];
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

- (void)populateSearchField:(id)field bindings:(id)bindings
{
  fieldCopy = field;
  bindingsCopy = bindings;
  tokenizableColumnNames = [fieldCopy tokenizableColumnNames];
  v35 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v37 = fieldCopy;
  obj = [fieldCopy searchableColumnNames];
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
        if (bindingsCopy)
        {
          v13 = *(bindingsCopy + 2);
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v15 = [v14 indexOfObject:v12];

        v16 = [tokenizableColumnNames containsObject:v12];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = v16;
          if (bindingsCopy)
          {
            v18 = *(bindingsCopy + 3);
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
              _cls_searchableTokens = [v20 _cls_searchableTokens];
              [v35 addObjectsFromArray:_cls_searchableTokens];
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

  searchColumnName = [objc_opt_class() searchColumnName];
  allObjects = [v35 allObjects];
  v26 = [allObjects componentsJoinedByString:@"\n"];
  lowercaseString = [v26 lowercaseString];

  if (bindingsCopy)
  {
    v28 = *(bindingsCopy + 2);
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  v30 = [v29 indexOfObject:searchColumnName];

  if (v30 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (bindingsCopy)
    {
      v31 = *(bindingsCopy + 2);
      [v31 addObject:searchColumnName];

      v32 = *(bindingsCopy + 3);
    }

    else
    {
      [0 addObject:searchColumnName];
      v32 = 0;
    }

    v33 = v32;
    [v33 addObject:lowercaseString];
  }

  else
  {
    if (bindingsCopy)
    {
      v34 = *(bindingsCopy + 3);
    }

    else
    {
      v34 = 0;
    }

    v33 = v34;
    [v33 setObject:lowercaseString atIndexedSubscript:v30];
  }
}

- (BOOL)_insertObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    entityName = [objc_opt_class() entityName];
    identityValue = [objectCopy identityValue];
    v14 = identityValue;
    v7 = [NSArray arrayWithObjects:&v14 count:1];
    sub_1000B9714(self, entityName, @"entityIdentity = ?", v7);
  }

  v8 = objc_alloc_init(NSMutableArray);
  v9 = objc_alloc_init(NSMutableArray);
  v10 = sub_100098260([PDDatabaseBindings alloc], v8, v9);
  [objectCopy bindTo:v10];
  if ([objectCopy conformsToProtocol:&OBJC_PROTOCOL___PDSearchableDatabaseEntity])
  {
    [(PDDatabase *)self populateSearchField:objectCopy bindings:v10];
  }

  entityName2 = [objc_opt_class() entityName];
  if (!sub_1000B90F8(self, entityName2, v9, v8))
  {
    goto LABEL_10;
  }

  if (sub_10010C5DC(self, entityName2))
  {
    sub_1000F568C(self, objectCopy, 1);
  }

  if ([(PDDatabase *)self markObject:objectCopy as:1])
  {
    [(PDDatabase *)self generateInsightEventsForObject:objectCopy];
    v12 = 1;
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  return v12;
}

- (BOOL)insertObject:(id)object
{
  selfCopy = self;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000F6634;
  v9 = &unk_100202140;
  selfCopy2 = self;
  objectCopy = object;
  v11 = objectCopy;
  if (selfCopy2)
  {
    if ([(PDDatabase *)selfCopy performTransaction:&v6 forWriting:1])
    {
      [(PDDatabase *)selfCopy _postDidInsertNotificationWithEntity:objectCopy, v6, v7, v8, v9, selfCopy2, v11];
      LOBYTE(selfCopy) = 1;
    }

    else
    {
      LOBYTE(selfCopy) = 0;
    }
  }

  return selfCopy;
}

- (BOOL)insertObjects:(id)objects
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F67C0;
  v15[3] = &unk_100202140;
  objectsCopy = objects;
  v16 = objectsCopy;
  selfCopy = self;
  if (self)
  {
    if ([(PDDatabase *)self performTransaction:v15 forWriting:1])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v5 = objectsCopy;
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

- (BOOL)_postDidInsertNotificationWithEntity:(id)entity
{
  entityCopy = entity;
  if (entityCopy && (v5 = objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0) && ([v5 entityDidInsertNotificationName], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v12 = @"currentEntity";
    v13 = entityCopy;
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

- (BOOL)_updateObject:(id)object
{
  objectCopy = object;
  identityColumnName = [objc_opt_class() identityColumnName];
  if (identityColumnName)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = objc_alloc_init(NSMutableArray);
    v19 = v6;
    v8 = sub_100098260([PDDatabaseBindings alloc], v6, v7);
    [objectCopy bindTo:v8];
    if ([objectCopy conformsToProtocol:&OBJC_PROTOCOL___PDSearchableDatabaseEntity])
    {
      [(PDDatabase *)self populateSearchField:objectCopy bindings:v8];
    }

    if ([objectCopy conformsToProtocol:&OBJC_PROTOCOL___PDDatabaseEntityWithImmutability])
    {
      v9 = objectCopy;
      if ([v9 isImmutabilityEnforced])
      {
        immutableColumnNames = [v9 immutableColumnNames];
        sub_1000983A8(v8, immutableColumnNames);
      }
    }

    v11 = objc_alloc_init(NSMutableString);
    identityColumnName2 = [objc_opt_class() identityColumnName];
    [v11 appendString:identityColumnName2];

    [v11 appendString:@" = ?"];
    entityName = [objc_opt_class() entityName];
    identityValue = [objectCopy identityValue];
    v20 = identityValue;
    v15 = [NSArray arrayWithObjects:&v20 count:1];
    v16 = sub_1000B9548(self, entityName, v19, v7, v11, v15);

    if (!v16)
    {
      goto LABEL_13;
    }

    if (sub_10010C5DC(self, entityName))
    {
      sub_1000F568C(self, objectCopy, 2);
    }

    if ([(PDDatabase *)self markObject:objectCopy as:2])
    {
      [(PDDatabase *)self generateInsightEventsForObject:objectCopy];
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

- (BOOL)updateObject:(id)object
{
  objectCopy = object;
  [(PDDatabase *)self _postWillChangeNotificationWithEntity:objectCopy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F6D24;
  v9[3] = &unk_100202140;
  v9[4] = self;
  v10 = objectCopy;
  v5 = objectCopy;
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

- (BOOL)updateObjects:(id)objects
{
  objectsCopy = objects;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [objectsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(objectsCopy);
        }

        [(PDDatabase *)self _postWillChangeNotificationWithEntity:*(*(&v14 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [objectsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F6E94;
  v11[3] = &unk_100202140;
  v12 = objectsCopy;
  selfCopy = self;
  v9 = objectsCopy;
  if (self)
  {
    LOBYTE(self) = [(PDDatabase *)self performTransaction:v11 forWriting:1];
  }

  return self;
}

- (BOOL)_postWillChangeNotificationWithEntity:(id)entity
{
  entityCopy = entity;
  if (entityCopy && (v5 = objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0) && ([v5 entityWillChangeNotificationName], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v12 = @"newEntity";
    v13 = entityCopy;
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

- (BOOL)insertOrUpdateObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  if (selfCopy)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = objc_opt_class();
    identityColumnName = [v8 identityColumnName];
    if (identityColumnName)
    {
      identityValue = [objectCopy identityValue];
      v11 = [(PDDatabase *)selfCopy entityExistsByClass:v8 identity:identityValue];

      if (v11)
      {
        if (![(PDDatabase *)selfCopy updateObject:objectCopy])
        {
LABEL_5:
          v12 = 0;
LABEL_27:

          objc_autoreleasePoolPop(v7);
          goto LABEL_28;
        }
      }

      else if (![(PDDatabase *)selfCopy insertObject:objectCopy])
      {
        goto LABEL_5;
      }
    }

    else if (![(PDDatabase *)selfCopy insertObject:objectCopy])
    {
      goto LABEL_5;
    }

    if (![objectCopy isMemberOfClass:objc_opt_class()])
    {
LABEL_26:
      v12 = 1;
      goto LABEL_27;
    }

    v13 = objectCopy;
    v14 = sub_1000711FC(selfCopy);
    if ([v13 roles] != 1)
    {
      goto LABEL_25;
    }

    personID = [v13 personID];
    if (!personID)
    {
      objectID = [v14 objectID];
      if (!objectID)
      {
        goto LABEL_24;
      }
    }

    personID2 = [v13 personID];
    if (personID2)
    {
      v17 = personID2;
      objectID2 = [v14 objectID];
      if (objectID2)
      {
        v22 = objectID;
        v23 = objectID2;
        personID3 = [v13 personID];
        objectID3 = [v14 objectID];
        v24 = [personID3 isEqualToString:objectID3];

        if (personID)
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

    if (personID)
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

- (BOOL)insertOrUpdateObjects:(id)objects
{
  objectsCopy = objects;
  selfCopy = self;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = objectsCopy;
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

        [(PDDatabase *)selfCopy _postWillChangeNotificationWithEntity:*(*(&v30 + 1) + 8 * i)];
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
  v28 = selfCopy;
  v14 = v7;
  v29 = v14;
  if (selfCopy && [(PDDatabase *)selfCopy performTransaction:v26 forWriting:1])
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

          [(PDDatabase *)selfCopy _postDidInsertNotificationWithEntity:*(*(&v22 + 1) + 8 * j), v22];
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

- (id)trackDeletedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    v6 = [PDDeletedEntityID alloc];
    identityValue = [v5 identityValue];
    v8 = objc_opt_class();
    surveyID = [v5 surveyID];

    v10 = sub_100173C88(&v6->super.isa, identityValue, v8, surveyID);
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    parentObjectID = [objectCopy parentObjectID];

    if (parentObjectID)
    {
      identityValue = objectCopy;
      if ([identityValue parentEntityType] == 4)
      {
        parentObjectID2 = [identityValue parentObjectID];
        v13 = sub_1001740C4(self, parentObjectID2);

        if (v13)
        {
          v14 = [PDDeletedEntityID alloc];
          v7IdentityValue = [identityValue identityValue];
          v16 = objc_opt_class();
          v10 = sub_100173C88(&v14->super.isa, v7IdentityValue, v16, v13);

          goto LABEL_10;
        }
      }
    }
  }

  v17 = [PDDeletedEntityID alloc];
  identityValue = [objectCopy identityValue];
  v18 = objc_opt_class();
  v10 = sub_100173C88(&v17->super.isa, identityValue, v18, 0);
LABEL_10:

  return v10;
}

- (BOOL)deleteObject:(id)object
{
  objectCopy = object;
  identityColumnName = [objc_opt_class() identityColumnName];
  if (identityColumnName)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F79F0;
    v8[3] = &unk_1002038B0;
    v9 = objectCopy;
    selfCopy = self;
    v6 = identityColumnName;
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

- (id)select:(Class)select identity:(id)identity
{
  identityCopy = identity;
  if (identityCopy)
  {
    selfCopy = self;
    if (selfCopy)
    {
      identityColumnName = [(objc_class *)select identityColumnName];
      v9 = identityColumnName;
      if (identityColumnName)
      {
        v10 = [identityColumnName stringByAppendingString:@" = ?"];
        v14 = identityCopy;
        v11 = [NSArray arrayWithObjects:&v14 count:1];
        v12 = [(PDDatabase *)selfCopy select:select where:v10 bindings:v11];
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

- (id)select:(Class)select where:(id)where bindings:(id)bindings
{
  whereCopy = where;
  bindingsCopy = bindings;
  selfCopy = self;
  v11 = selfCopy;
  if (selfCopy)
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
    if ([(PDDatabase *)selfCopy selectAll:select where:whereCopy orderBy:0 limit:1 offset:0 bindings:bindingsCopy block:v14])
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

- (BOOL)selectAll:(Class)all where:(id)where orderBy:(id)by bindings:(id)bindings block:(id)block
{
  if (self)
  {
    LOBYTE(self) = [(PDDatabase *)self selectAll:all where:where orderBy:by limit:0 offset:0 bindings:bindings block:block];
  }

  return self;
}

- (BOOL)selectAll:(Class)all where:(id)where orderBy:(id)by limit:(int64_t)limit offset:(unint64_t)offset bindings:(id)bindings block:(id)block
{
  whereCopy = where;
  byCopy = by;
  bindingsCopy = bindings;
  blockCopy = block;
  if (self)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000F8018;
    v21[3] = &unk_100205060;
    allCopy = all;
    v21[4] = self;
    v22 = whereCopy;
    v23 = byCopy;
    limitCopy = limit;
    offsetCopy = offset;
    v24 = bindingsCopy;
    v25 = blockCopy;
    selfCopy = self;
    LOBYTE(self) = sub_10010BE68(selfCopy, v21);
  }

  return self;
}

- (BOOL)updateAll:(Class)all set:(id)set where:(id)where bindings:(id)bindings
{
  setCopy = set;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F82A0;
  v16[3] = &unk_1002050B0;
  whereCopy = where;
  selfCopy = self;
  v20 = setCopy;
  allCopy = all;
  bindingsCopy = bindings;
  v11 = setCopy;
  v12 = bindingsCopy;
  v13 = whereCopy;
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

- (BOOL)_deleteAll:(Class)all where:(id)where bindings:(id)bindings trackDeletes:(BOOL)deletes
{
  selfCopy = self;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000F8928;
  v14[3] = &unk_100205100;
  selfCopy2 = self;
  whereCopy = where;
  bindingsCopy = bindings;
  allCopy = all;
  deletesCopy = deletes;
  v10 = bindingsCopy;
  v11 = whereCopy;
  if (selfCopy2)
  {
    LOBYTE(selfCopy) = [(PDDatabase *)selfCopy performTransaction:v14 forWriting:1];
    v12 = bindingsCopy;
  }

  else
  {
    v12 = v10;
  }

  return selfCopy;
}

- (unint64_t)count:(Class)count where:(id)where bindings:(id)bindings
{
  whereCopy = where;
  bindingsCopy = bindings;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000F8E2C;
  v14[3] = &unk_100205128;
  countCopy = count;
  v10 = whereCopy;
  v15 = v10;
  selfCopy = self;
  v11 = bindingsCopy;
  v17 = v11;
  v18 = &v20;
  sub_10010BE68(self, v14);
  v12 = v21[3];

  _Block_object_dispose(&v20, 8);
  return v12;
}

- (id)selectColumns:(id)columns of:(Class)of where:(id)where bindings:(id)bindings
{
  columnsCopy = columns;
  whereCopy = where;
  bindingsCopy = bindings;
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
  if ([(PDDatabase *)self selectColumns:columnsCopy of:of where:whereCopy orderBy:0 limit:1 offset:0 bindings:bindingsCopy block:v15])
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

- (BOOL)selectColumns:(id)columns of:(Class)of where:(id)where orderBy:(id)by limit:(int64_t)limit offset:(unint64_t)offset bindings:(id)bindings block:(id)self0
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000F9288;
  v22[3] = &unk_1002051A0;
  columnsCopy = columns;
  selfCopy = self;
  whereCopy = where;
  byCopy = by;
  ofCopy = of;
  limitCopy = limit;
  offsetCopy = offset;
  bindingsCopy = bindings;
  blockCopy = block;
  v16 = blockCopy;
  v17 = bindingsCopy;
  v18 = byCopy;
  v19 = whereCopy;
  v20 = columnsCopy;
  LOBYTE(self) = sub_10010BE68(self, v22);

  return self;
}

- (BOOL)entityClass:(Class)class containsColumnNamed:(id)named
{
  namedCopy = named;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  [(objc_class *)class entityName];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F9640;
  v10[3] = &unk_1002051C8;
  v13 = &v14;
  v7 = v10[4] = self;
  v11 = v7;
  v8 = namedCopy;
  v12 = v8;
  sub_10010BE68(self, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

- (BOOL)entityExistsByClass:(Class)class identity:(id)identity
{
  identityCopy = identity;
  v7 = identityCopy;
  if (identityCopy && [identityCopy length])
  {
    v8 = [NSString alloc];
    identityColumnName = [(objc_class *)class identityColumnName];
    v10 = [v8 initWithFormat:@"%@ = ?", identityColumnName];

    v15 = v7;
    v11 = [NSArray arrayWithObjects:&v15 count:1];
    v12 = [(PDDatabase *)self count:class where:v10 bindings:v11];

    v13 = v12 != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)childEntitiesExistForClass:(Class)class parentIdentity:(id)identity
{
  identityCopy = identity;
  v7 = identityCopy;
  if (identityCopy && [identityCopy length])
  {
    v12 = v7;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    v9 = [(PDDatabase *)self count:class where:@"parentObjectID = ?" bindings:v8];

    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)syncableDatabaseEntityExistsByObjectID:(id)d
{
  dCopy = d;
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
      [v5 addObject:dCopy];
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

- (BOOL)saveAndSyncObjects:(id)objects
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F9D78;
  v6[3] = &unk_100202140;
  selfCopy = self;
  objectsCopy = objects;
  v3 = objectsCopy;
  v4 = [(PDDatabase *)selfCopy withSyncEnabled:v6];

  return v4;
}

- (BOOL)withSyncEnabled:(id)enabled
{
  enabledCopy = enabled;
  if ([(PDDatabase *)self isInSyncBlock])
  {
    if (self)
    {
      v5 = [(PDDatabase *)self performTransaction:enabledCopy forWriting:1];
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
      v5 = [(PDDatabase *)self performTransaction:enabledCopy forWriting:1];
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
  threadDictionary = [v2 threadDictionary];
  v4 = [threadDictionary objectForKeyedSubscript:@"syncDataWritten"];

  LOBYTE(v2) = [v4 BOOLValue];
  return v2;
}

- (BOOL)isInSyncBlock
{
  v2 = +[NSThread currentThread];
  threadDictionary = [v2 threadDictionary];
  v4 = [threadDictionary objectForKeyedSubscript:@"isInSync"];

  LOBYTE(v2) = [v4 BOOLValue];
  return v2;
}

- (BOOL)markObject:(id)object as:(int64_t)as
{
  objectCopy = object;
  if (![(PDDatabase *)self isInSyncBlock])
  {
    goto LABEL_10;
  }

  if (![objc_opt_class() conformsToProtocol:&OBJC_PROTOCOL___PDSyncableItem])
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [objectCopy state] == 2)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    v11 = [(PDDatabase *)self _markObject:objectCopy as:as];
    goto LABEL_11;
  }

  v7 = objectCopy;
  if ([v7 parentEntityType] != 4)
  {
LABEL_13:

    goto LABEL_14;
  }

  v8 = objc_opt_class();
  parentObjectID = [v7 parentObjectID];
  v10 = [(PDDatabase *)self select:v8 identity:parentObjectID];

  if (v10 && [v10 state] != 2)
  {

    goto LABEL_13;
  }

LABEL_10:
  v11 = 1;
LABEL_11:

  return v11;
}

- (BOOL)markAll:(Class)all where:(id)where bindings:(id)bindings as:(int64_t)as
{
  whereCopy = where;
  bindingsCopy = bindings;
  if ([(PDDatabase *)self isInSyncBlock]&& [(objc_class *)all conformsToProtocol:&OBJC_PROTOCOL___PDSyncableItem])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000FB658;
    v14[3] = &unk_100205278;
    v14[4] = self;
    v14[5] = as;
    v12 = [(PDDatabase *)self selectAll:all where:whereCopy orderBy:0 bindings:bindingsCopy block:v14];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)generateInsightEventsForObject:(id)object
{
  objectCopy = object;
  if (-[PDDatabase isInSyncBlock](self, "isInSyncBlock") && [objc_opt_class() conformsToProtocol:&OBJC_PROTOCOL___PDInsightEventGenerating] && +[PDEndpointRequestOperation isEndpointAvailable:inDatabase:](PDEndpointRequestOperation, "isEndpointAvailable:inDatabase:", @"uploadEvents", self))
  {
    [(PDDatabase *)self _saveInsightEventsFor:objectCopy];
  }
}

- (void)generateInsightEventsForClass:(Class)class where:(id)where bindings:(id)bindings
{
  whereCopy = where;
  bindingsCopy = bindings;
  if ([(PDDatabase *)self isInSyncBlock]&& [(objc_class *)class conformsToProtocol:&OBJC_PROTOCOL___PDInsightEventGenerating]&& [PDEndpointRequestOperation isEndpointAvailable:@"uploadEvents" inDatabase:self])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000FB7E8;
    v10[3] = &unk_1002052A0;
    v10[4] = self;
    [(PDDatabase *)self selectAll:class where:whereCopy orderBy:0 bindings:bindingsCopy block:v10];
  }
}

- (BOOL)_markObject:(id)object as:(int64_t)as
{
  objectCopy = object;
  v7 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objectCopy;
    if ([v8 type] == 3)
    {
      parentObjectID = [v8 parentObjectID];

      if (!parentObjectID)
      {
        if (as == 3)
        {
          sub_10012DB64(PDFileSyncManager, v8, self, &stru_1002052E0);
        }

        LOBYTE(v13) = 1;
        [(PDDatabase *)self setSyncableDataWritten:1];
        goto LABEL_16;
      }
    }
  }

  v10 = [objectCopy syncBackend:self];
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

    v12 = [objc_alloc(*v11) initWithObject:objectCopy state:as];
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

- (void)_saveInsightEventsFor:(id)for
{
  v4 = [for generateInsightEventsWithDatabase:self];
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

- (void)setCurrentDB:(id)b
{
  bCopy = b;
  v6 = +[NSThread currentThread];
  threadDictionary = [v6 threadDictionary];
  [threadDictionary setObject:bCopy forKeyedSubscript:self->_threadDBKey];
}

- (PDSQLiteDatabase)currentDB
{
  v3 = +[NSThread currentThread];
  threadDictionary = [v3 threadDictionary];
  v5 = [threadDictionary objectForKeyedSubscript:self->_threadDBKey];

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
  selfCopy = self;
  v3 = selfCopy;
  if (!selfCopy)
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

  v4 = sub_10016A160(selfCopy, @"PDClassKitVersion");
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
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy)
  {
    [(PDDatabase *)selfCopy lock];
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
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy)
  {
    [(PDDatabase *)selfCopy lock];
    currentDB = [v3 currentDB];
    sub_100073330(v3[4], currentDB);
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

- (BOOL)performTransaction:(id)transaction forWriting:(BOOL)writing
{
  writingCopy = writing;
  transactionCopy = transaction;
  selfCopy = self;
  v8 = selfCopy;
  if (selfCopy)
  {
    [(PDDatabase *)selfCopy lock];
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

    currentDB = [(PDDatabase *)v9 currentDB];
    v14 = currentDB;
    if (currentDB)
    {
      totalChangesCount = 0;
      v16 = currentDB;
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
      totalChangesCount = [v16 totalChangesCount];
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
    v31 = transactionCopy;
    v12 = [v16 performTransactionWithType:0 error:&v32 usingBlock:v30];
    v17 = v32;
    v18 = v17;
    if (v12)
    {
      if (writingCopy)
      {
        v28 = totalChangesCount;
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
        totalChangesCount = v28;
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
        v23 = [v16 totalChangesCount] - totalChangesCount;
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

- (void)_notifyOfDataChange:(id)change changeTime:(id)time changedRowCount:(int64_t)count
{
  changeCopy = change;
  timeCopy = time;
  if ([changeCopy count])
  {
    v19[0] = timeCopy;
    v18[0] = @"PDDataWrittenTime";
    v18[1] = @"PDDataWrittenRowsChangedCount";
    v10 = [NSNumber numberWithInteger:count];
    v19[1] = v10;
    v18[2] = @"PDDataWrittenTablesChanged";
    v11 = [changeCopy copy];
    v19[2] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  }

  else
  {
    v16[0] = @"PDDataWrittenTime";
    v16[1] = @"PDDataWrittenRowsChangedCount";
    v17[0] = timeCopy;
    v10 = [NSNumber numberWithInteger:count];
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
  selfCopy = self;
  if (selfCopy)
  {
    v3 = [NSMutableArray arrayWithObject:selfCopy->_databaseURL];
    lastPathComponent = [(NSURL *)selfCopy->_databaseURL lastPathComponent];
    uRLByDeletingLastPathComponent = [(NSURL *)selfCopy->_databaseURL URLByDeletingLastPathComponent];
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

          v10 = [lastPathComponent stringByAppendingString:*(*(&v14 + 1) + 8 * i)];
          v11 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v10 isDirectory:0];
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
  selfCopy = self;
  if (selfCopy)
  {
    v3 = +[NSFileManager defaultManager];
    [(PDDatabase *)selfCopy lock];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    _databaseFileURLs = [(PDDatabase *)selfCopy _databaseFileURLs];
    v5 = [_databaseFileURLs countByEnumeratingWithState:&v15 objects:v23 count:16];
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
            objc_enumerationMutation(_databaseFileURLs);
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
        v6 = [_databaseFileURLs countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v6);
    }

    [(PDDatabase *)selfCopy unlock];
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
  selfCopy = self;
  if (!selfCopy)
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
  obj = [(PDDatabase *)selfCopy _databaseFileURLs];
  v3 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (!v3)
  {
    v23 = 1;
    goto LABEL_34;
  }

  v4 = v3;
  v28 = selfCopy;
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
        absoluteURL = [v8 absoluteURL];
        path = [absoluteURL path];

        v34 = 0;
        v11 = [v31 attributesOfItemAtPath:path error:&v34];
        v12 = v34;
        v13 = [v11 mutableCopy];

        if (v13)
        {
          v32 = path;
          v14 = [v13 objectForKeyedSubscript:v6];
          if (!(v14 | NSFileProtectionCompleteUntilFirstUserAuthentication))
          {
LABEL_18:
            path = v32;
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
          path = v32;
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

        selfCopy = v28;

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
  selfCopy = v28;
LABEL_34:

LABEL_35:
  return v23;
}

- (BOOL)migrate
{
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy)
  {
    currentDB = [(PDDatabase *)selfCopy currentDB];
    v33 = 0;
    v5 = [currentDB executeUncachedSQL:@"                   create table if not exists migrations(     tableName text not null error:{version integer not null            )                                        ", &v33}];
    v6 = v33;
    v7 = v6;
    if (v5)
    {
      v32 = v6;
      v8 = [currentDB executeUncachedSQL:@"create unique index if not exists migrations_tableName on migrations (tableName)" error:&v32];
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
      registeredEntities = [objc_opt_class() registeredEntities];
      v11 = [registeredEntities countByEnumeratingWithState:&v28 objects:v34 count:16];
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
              objc_enumerationMutation(registeredEntities);
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

          v12 = [registeredEntities countByEnumeratingWithState:&v28 objects:v34 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v27 = v9;
      v17 = [currentDB executeUncachedSQL:@"drop table if exists PDBlacklistedApp" error:&v27];
      v7 = v27;

      if (v17)
      {
        v26 = v7;
        v18 = [currentDB executeUncachedSQL:@"drop table if exists PDWhitelistedHost" error:&v26];
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

- (BOOL)migrateEntity:(Class)entity
{
  selfCopy = self;
  if (selfCopy)
  {
    v5 = objc_autoreleasePoolPush();
    entityName = [(objc_class *)entity entityName];
    *buf = 0;
    v33 = buf;
    v34 = 0x2020000000;
    v35 = 0;
    currentDB = [(PDDatabase *)selfCopy currentDB];
    v31 = 0;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10010D89C;
    v29[3] = &unk_100204570;
    v8 = entityName;
    v30 = v8;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10010D8AC;
    v28[3] = &unk_1002056B8;
    v28[4] = buf;
    v9 = [currentDB executeUncachedSQL:@"select version from migrations where tableName = ?" error:&v31 bindingHandler:v29 enumerationHandler:v28];
    v10 = v31;
    if (v9)
    {
      v27 = *(v33 + 3);
      if (([objc_class migrateFromVersion:entity finalVersion:"migrateFromVersion:finalVersion:inDatabase:" inDatabase:?]& 1) != 0)
      {
        if (*(v33 + 3) == v27)
        {
          v11 = 1;
        }

        else
        {
          v26 = v10;
          v18 = [currentDB validateForeignKeysForTable:v8 databaseName:0 error:&v26];
          v19 = v26;

          if ((v18 & 1) == 0)
          {
            CLSInitLog();
            v20 = CLSLogDatabase;
            if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
            {
              *v36 = 138412290;
              entityCopy3 = entity;
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
          v11 = [currentDB executeUncachedSQL:@"insert or replace into migrations (version error:tableName) values (? bindingHandler:?)" enumerationHandler:{&v25, v22, 0}];
          v10 = v25;

          if ((v11 & 1) == 0)
          {
            CLSInitLog();
            v21 = CLSLogDatabase;
            if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
            {
              *v36 = 138412290;
              entityCopy3 = entity;
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
        entityCopy3 = entity;
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
        entityCopy3 = v10;
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

- (id)poolItemForPool:(id)pool
{
  poolCopy = pool;
  selfCopy = self;
  v6 = selfCopy;
  if (selfCopy)
  {
    v7 = selfCopy->_databaseURL;
    if (v6->_invalidated)
    {
      CLSInitLog();
      v8 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        v21 = v8;
        path = [(NSURL *)v7 path];
        *buf = 138543362;
        *v27 = path;
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
          path2 = [(NSURL *)v7 path];
          *buf = 67109378;
          *v27 = v12;
          *&v27[4] = 2114;
          *&v27[6] = path2;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Database corruption detected: [%d, %{public}@]; nuking db; and retrying;", buf, 0x12u);
        }

        [(PDDatabase *)v6 _delete];
        v15 = [(PDDatabase *)v6 poolItemForPool:poolCopy];
        goto LABEL_17;
      }

      CLSInitLog();
      v16 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        path3 = [(NSURL *)v7 path];
        *buf = 67109634;
        *v27 = v12;
        *&v27[4] = 2114;
        *&v27[6] = path3;
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

- (id)personIDsToPerson:(id)person
{
  personCopy = person;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = personCopy;
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

- (BOOL)_statusID:(id *)d deniedCount:(int64_t *)count authCount:(int64_t *)authCount forContextPath:(id)path
{
  pathCopy = path;
  v11 = [pathCopy count];
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
  v13 = pathCopy;
  v29 = &v48;
  v30 = v46;
  v27 = v13;
  selfCopy = self;
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
    selfCopy2 = self;
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
  if (d)
  {
    *d = v49[5];
  }

  if (authCount)
  {
    *authCount = v39[3];
  }

  if (count)
  {
    *count = v43[3];
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

- (BOOL)_pruneAuthTreeAtNodeWithContextStatusID:(id)d
{
  dCopy = d;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v28 = dCopy;
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

- (BOOL)isIncompleteHandout:(id)handout
{
  handoutCopy = handout;
  v5 = objc_opt_class();
  objectID = [handoutCopy objectID];
  v15 = objectID;
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
      objectID2 = [handoutCopy objectID];
      v13 = 138543362;
      v14 = objectID2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PDUserNotificationTrigger: collaboration state for handout with id: %{public}@ not available.", &v13, 0xCu);

      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (id)personSearchPredicate:(id)predicate
{
  predicateCopy = predicate;
  v4 = objc_opt_new();
  [v4 appendString:@"(%K BEGINSWITH %@ || %K LIKE %@)"];
  [v4 appendString:@" && isSearchable == 1"];
  keyword = [predicateCopy keyword];
  keyword2 = [predicateCopy keyword];

  v7 = [@"\n" stringByAppendingString:keyword2];
  v8 = [NSPredicate predicateWithFormat:v4, @"searchText", keyword, @"searchText", v7];

  return v8;
}

- (id)groupSearchPredicate:(id)predicate
{
  predicateCopy = predicate;
  v4 = objc_opt_new();
  [v4 appendString:@"(%K LIKE %@)"];
  keyword = [predicateCopy keyword];

  v6 = [NSPredicate predicateWithFormat:v4, @"searchText", keyword];

  return v6;
}

- (id)groupExpansionPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = objc_opt_new();
  if (([predicateCopy rosterSearchOptions] & 2) != 0)
  {
    v6 = @"select personID from CLSClassMember where parentObjectID=?";
  }

  else
  {
    v6 = (@"select personID from CLSGroupMember where parentObjectID=?" & (([predicateCopy rosterSearchOptions] << 61) >> 63));
  }

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10017C4E8;
  v14 = &unk_1002028D0;
  selfCopy = self;
  v16 = v6;
  v7 = predicateCopy;
  v17 = v7;
  v8 = v5;
  v18 = v8;
  sub_10010BE68(self, &v11);
  if ([v8 count])
  {
    v9 = [NSPredicate predicateWithFormat:@"%K IN %@", CLSPredicateKeyPathObjectID, v8, v11, v12, v13, v14, selfCopy, v16, v17];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end