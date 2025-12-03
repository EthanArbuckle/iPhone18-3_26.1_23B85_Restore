@interface PDBoolProperty
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDBoolProperty)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation PDBoolProperty

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___PDBoolProperty;
  v9 = objc_msgSendSuper2(&v13, "migrateFromVersion:finalVersion:inDatabase:", version, finalVersion, databaseCopy);
  if (v9)
  {
    v10 = [NSString stringWithFormat:@"INSERT INTO PDBoolProperty(name, value) SELECT %@, 1 WHERE NOT EXISTS(SELECT 1 FROM PDBoolProperty WHERE name=%@)", @"syncTeacherContexts", @"syncTeacherContexts"];
    if ((sub_1000B9298(databaseCopy, v10, 0, 0, 0) & 1) == 0)
    {
      CLSInitLog();
      v11 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = @"syncTeacherContexts";
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to set a default value for %@", buf, 0xCu);
      }
    }
  }

  return v9;
}

- (PDBoolProperty)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v8.receiver = self;
  v8.super_class = PDBoolProperty;
  v5 = [(PDProperty *)&v8 initWithDatabaseRow:rowCopy];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"value");
    v5->_value = [v6 BOOLValue];
  }

  return v5;
}

- (void)bindTo:(id)to
{
  v6.receiver = self;
  v6.super_class = PDBoolProperty;
  toCopy = to;
  [(PDProperty *)&v6 bindTo:toCopy];
  v5 = [NSNumber numberWithBool:self->_value, v6.receiver, v6.super_class];
  sub_1000982FC(toCopy, v5, @"value");
}

@end