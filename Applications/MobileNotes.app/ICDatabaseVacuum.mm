@interface ICDatabaseVacuum
+ (NSDate)lastVacuumDate;
+ (id)activeVacuumQueue;
+ (void)setLastVacuumDate:(id)date;
+ (void)startDatabaseVacuumPolicyWithPreVacuumHandler:(id)handler postVacuumHandler:(id)vacuumHandler;
- (ICDatabaseVacuum)init;
- (void)startDatabaseVacuumPolicy;
- (void)stopDatabaseVacuumPolicy;
- (void)timerFired:(id)fired;
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

    queue = [(ICDatabaseVacuum *)v2 queue];
    v5 = dispatch_get_global_queue(-32768, 0);
    dispatch_set_target_queue(queue, v5);
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

+ (void)startDatabaseVacuumPolicyWithPreVacuumHandler:(id)handler postVacuumHandler:(id)vacuumHandler
{
  handlerCopy = handler;
  vacuumHandlerCopy = vacuumHandler;
  activeVacuumQueue = [self activeVacuumQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009FCF4;
  block[3] = &unk_100647D08;
  v13 = vacuumHandlerCopy;
  selfCopy = self;
  v12 = handlerCopy;
  v9 = vacuumHandlerCopy;
  v10 = handlerCopy;
  dispatch_async(activeVacuumQueue, block);
}

+ (NSDate)lastVacuumDate
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 doubleForKey:@"LastVacuumDate"];
  v4 = v3;

  return [NSDate dateWithTimeIntervalSinceReferenceDate:v4];
}

+ (void)setLastVacuumDate:(id)date
{
  dateCopy = date;
  v4 = os_log_create("com.apple.notes", "Vacuum");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DBD90();
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [dateCopy timeIntervalSinceReferenceDate];
  [v5 setDouble:@"LastVacuumDate" forKey:?];
}

- (void)startDatabaseVacuumPolicy
{
  queue = [(ICDatabaseVacuum *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009FF68;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(queue, block);
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

- (void)timerFired:(id)fired
{
  v4 = os_log_create("com.apple.notes", "Vacuum");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DBF2C();
  }

  queue = [(ICDatabaseVacuum *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A03B4;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)vacuum
{
  v3 = os_log_create("com.apple.notes", "Vacuum");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DBF68();
  }

  v4 = +[NSUUID UUID];
  preVacuumHandler = [(ICDatabaseVacuum *)self preVacuumHandler];

  if (preVacuumHandler)
  {
    preVacuumHandler2 = [(ICDatabaseVacuum *)self preVacuumHandler];
    (preVacuumHandler2)[2](preVacuumHandler2, v4);
  }

  v7 = +[ICNoteContext sharedContext];
  persistentContainer = [v7 persistentContainer];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000A0530;
  v14 = &unk_100645BA0;
  selfCopy = self;
  v16 = v4;
  v9 = v4;
  [persistentContainer vacuumStoreWithCompletionHandler:&v11];
  [(ICDatabaseVacuum *)self vacuumHTMLDatabase:v11];
  v10 = +[NSDate date];
  [objc_opt_class() setLastVacuumDate:v10];
}

- (void)vacuumHTMLDatabase
{
  v3 = +[NSUUID UUID];
  preVacuumHandler = [(ICDatabaseVacuum *)self preVacuumHandler];

  if (preVacuumHandler)
  {
    preVacuumHandler2 = [(ICDatabaseVacuum *)self preVacuumHandler];
    (preVacuumHandler2)[2](preVacuumHandler2, v3);
  }

  v6 = +[NoteContext urlForPersistentStore];
  v7 = +[NoteContext sharedContext];
  managedObjectContext = [v7 managedObjectContext];

  v9 = os_log_create("com.apple.notes", "Vacuum");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DBFA4();
  }

  [managedObjectContext setShouldPerformSecureOperation:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A07CC;
  v13[3] = &unk_100645DB8;
  v14 = managedObjectContext;
  v15 = v6;
  selfCopy = self;
  v17 = v3;
  v10 = v3;
  v11 = v6;
  v12 = managedObjectContext;
  [v12 performBlock:v13];
}

@end