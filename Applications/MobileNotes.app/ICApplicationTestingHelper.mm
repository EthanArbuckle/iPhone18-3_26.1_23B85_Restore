@interface ICApplicationTestingHelper
+ (id)sharedHelper;
- (ICAccount)testAccount;
- (ICNoteContainer)testEnglishNotesListContainer;
- (NSString)testNoteIdentifier;
- (id)_testAccountProxy;
- (void)didFinishPostLaunchTasks;
- (void)waitForPostLaunchTasksThenPerformBlock:(id)a3;
@end

@implementation ICApplicationTestingHelper

- (NSString)testNoteIdentifier
{
  v2 = +[ICAppGroupDefaults sharedAppGroupDefaults];
  v3 = [v2 objectForKey:@"PptTestNote"];

  return v3;
}

+ (id)sharedHelper
{
  if (qword_1006CB3E0 != -1)
  {
    sub_10000CF78();
  }

  v3 = qword_1006CB3D8;

  return v3;
}

- (void)didFinishPostLaunchTasks
{
  self->_launchPostTasksCompleted = 1;
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"NotesLaunchPostTasksCompleted" object:self];
}

- (void)waitForPostLaunchTasksThenPerformBlock:(id)a3
{
  v4 = a3;
  if ([(ICApplicationTestingHelper *)self launchPostTasksCompleted])
  {
    v5 = dispatch_time(0, 3000000000);
    dispatch_after(v5, &_dispatch_main_q, v4);
  }

  else
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = +[NSOperationQueue mainQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10010A9FC;
    v9[3] = &unk_10064A2C8;
    v9[4] = self;
    v10 = v4;
    v8 = [v6 addObserverForName:@"NotesLaunchPostTasksCompleted" object:0 queue:v7 usingBlock:v9];
  }
}

- (ICAccount)testAccount
{
  v2 = +[ICNoteContext sharedContext];
  v3 = [v2 managedObjectContext];
  v4 = [ICAccount defaultAccountInContext:v3];

  if (!v4)
  {
    [ICAssert handleFailedAssertWithCondition:"((testAccount) != nil)" functionName:"[ICApplicationTestingHelper testAccount]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "testAccount"];
  }

  return v4;
}

- (id)_testAccountProxy
{
  v2 = [(ICApplicationTestingHelper *)self testAccount];
  v3 = [v2 accountProxy];
  if (!v3)
  {
    [ICAssert handleFailedAssertWithCondition:"((allNotesContainer) != nil)" functionName:"[ICApplicationTestingHelper _testAccountProxy]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "allNotesContainer"];
  }

  return v2;
}

- (ICNoteContainer)testEnglishNotesListContainer
{
  v2 = [(ICApplicationTestingHelper *)self testAccount];
  v3 = [v2 defaultFolder];

  return v3;
}

@end