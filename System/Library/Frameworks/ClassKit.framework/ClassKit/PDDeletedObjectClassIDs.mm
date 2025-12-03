@interface PDDeletedObjectClassIDs
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDDeletedObjectClassIDs)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation PDDeletedObjectClassIDs

- (PDDeletedObjectClassIDs)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v14.receiver = self;
  v14.super_class = PDDeletedObjectClassIDs;
  v5 = [(PDDeletedObjectClassIDs *)&v14 init];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"objectID");
    objectID = v5->_objectID;
    v5->_objectID = v6;

    v8 = sub_10016D778(rowCopy, @"classIDs");
    if (v8)
    {
      v9 = objc_opt_class();
      v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
      v11 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v10 withData:v8];
      classIDs = v5->_classIDs;
      v5->_classIDs = v11;
    }
  }

  return v5;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  sub_1000982FC(toCopy, self->_objectID, @"objectID");
  classIDs = self->_classIDs;
  if (classIDs)
  {
    v9 = 0;
    v6 = [NSKeyedArchiver archivedDataWithRootObject:classIDs requiringSecureCoding:1 error:&v9];
    v7 = v9;
    v8 = v7;
    if (v7)
    {
      [v7 cls_debug:CLSLogDatabase];
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1000982FC(toCopy, v6, @"classIDs");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table PDDeletedObjectClassIDs(   objectID text not null,    classIDs blob not null)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDDeletedObjectClassIDs_objectID on PDDeletedObjectClassIDs (objectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    version = 1;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_7:

  return v9;
}

@end