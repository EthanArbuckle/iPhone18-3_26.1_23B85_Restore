@interface ICDatabaseVacuum
+ (NSDate)lastVacuumDate;
+ (id)activeVacuumQueue;
+ (void)setLastVacuumDate:(id)a3;
+ (void)startDatabaseVacuumPolicyWithPreVacuumHandler:(id)a3 postVacuumHandler:(id)a4;
- (ICDatabaseVacuum)init;
- (void)startDatabaseVacuumPolicy;
- (void)stopDatabaseVacuumPolicy;
- (void)timerFired:(id)a3;
- (void)vacuum;
- (void)vacuumHTMLDatabase;
@end

@implementation ICDatabaseVacuum

- (ICDatabaseVacuum)init
{
  v7.receiver = self;
  v7.super_class = ICDatabaseVacuum;
  v2 = [(ICDatabaseVacuum *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.notes.vacuum", 0);
    [(ICDatabaseVacuum *)v2 setQueue:v3];

    v4 = [(ICDatabaseVacuum *)v2 queue];
    v5 = dispatch_get_global_queue(-32768, 0);
    dispatch_set_target_queue(v4, v5);
  }

  return v2;
}

+ (id)activeVacuumQueue
{
  if (qword_1006CB288 != -1)
  {
    sub_1004DBD40();
  }

  v3 = qword_1006CB280;

  return v3;
}

+ (void)startDatabaseVacuumPolicyWithPreVacuumHandler:(id)a3 postVacuumHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 activeVacuumQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009FCF4;
  block[3] = &unk_100647D08;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

+ (NSDate)lastVacuumDate
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 doubleForKey:@"LastVacuumDate"];
  v4 = v3;

  return [NSDate dateWithTimeIntervalSinceReferenceDate:v4];
}

+ (void)setLastVacuumDate:(id)a3
{
  v3 = a3;
  v4 = os_log_create("com.apple.notes", "Vacuum");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DBD90();
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [v3 timeIntervalSinceReferenceDate];
  [v5 setDouble:@"LastVacuumDate" forKey:?];
}

- (void)startDatabaseVacuumPolicy
{
  v3 = [(ICDatabaseVacuum *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009FF68;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)stopDatabaseVacuumPolicy
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A02B0;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)timerFired:(id)a3
{
  v4 = os_log_create("com.apple.notes", "Vacuum");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DBF2C();
  }

  v5 = [(ICDatabaseVacuum *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A03B4;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)vacuum
{
  v3 = os_log_create("com.apple.notes", "Vacuum");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DBF68();
  }

  v4 = +[NSUUID UUID];
  v5 = [(ICDatabaseVacuum *)self preVacuumHandler];

  if (v5)
  {
    v6 = [(ICDatabaseVacuum *)self preVacuumHandler];
    (v6)[2](v6, v4);
  }

  v7 = +[ICNoteContext sharedContext];
  v8 = [v7 persistentContainer];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000A0530;
  v14 = &unk_100645BA0;
  v15 = self;
  v16 = v4;
  v9 = v4;
  [v8 vacuumStoreWithCompletionHandler:&v11];
  [(ICDatabaseVacuum *)self vacuumHTMLDatabase:v11];
  v10 = +[NSDate date];
  [objc_opt_class() setLastVacuumDate:v10];
}

- (void)vacuumHTMLDatabase
{
  v3 = +[NSUUID UUID];
  v4 = [(ICDatabaseVacuum *)self preVacuumHandler];

  if (v4)
  {
    v5 = [(ICDatabaseVacuum *)self preVacuumHandler];
    (v5)[2](v5, v3);
  }

  v6 = +[NoteContext urlForPersistentStore];
  v7 = +[NoteContext sharedContext];
  v8 = [v7 managedObjectContext];

  v9 = os_log_create("com.apple.notes", "Vacuum");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DBFA4();
  }

  [v8 setShouldPerformSecureOperation:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A07CC;
  v13[3] = &unk_100645DB8;
  v14 = v8;
  v15 = v6;
  v16 = self;
  v17 = v3;
  v10 = v3;
  v11 = v6;
  v12 = v8;
  [v12 performBlock:v13];
}

@end