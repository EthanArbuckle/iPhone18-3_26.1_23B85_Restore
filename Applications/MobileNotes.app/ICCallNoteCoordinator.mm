@interface ICCallNoteCoordinator
+ (void)callRecordingEndedHelperWithNoteID:(id)d recordingID:(id)iD context:(id)context;
+ (void)callRecordingEndedHelperWithNoteID:(id)d recordingID:(id)iD context:(id)context bgTaskIdentifier:(unint64_t)identifier;
+ (void)createNewCallNoteHelperWithNoteID:(id)d recordingID:(id)iD context:(id)context;
+ (void)createNewCallNoteHelperWithNoteID:(id)d recordingID:(id)iD context:(id)context bgTaskIdentifier:(unint64_t)identifier;
+ (void)eventReporterLostSession:(id)session;
+ (void)importAndDeleteCallRecordingFilesIfNeededFromDirectory:(id)directory managedObjectContext:(id)context;
@end

@implementation ICCallNoteCoordinator

+ (void)eventReporterLostSession:(id)session
{
  sessionCopy = session;
  sub_1001D7170(session);
}

+ (void)importAndDeleteCallRecordingFilesIfNeededFromDirectory:(id)directory managedObjectContext:(id)context
{
  v6 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  if (directory)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  contextCopy = context;
  _s11MobileNotes19CallNoteCoordinatorC015importAndDeleteC22RecordingFilesIfNeeded9directory20managedObjectContexty10Foundation3URLVSg_So09NSManagedoP0CtFZ_0(v8, contextCopy);

  sub_1000073B4(v8, &qword_1006BCC20);
}

+ (void)createNewCallNoteHelperWithNoteID:(id)d recordingID:(id)iD context:(id)context
{
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  sub_1001D5764(dCopy, iDCopy, contextCopy, 0, 1);
}

+ (void)callRecordingEndedHelperWithNoteID:(id)d recordingID:(id)iD context:(id)context
{
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  sub_1001D9084(dCopy, iDCopy, contextCopy, &unk_1006504E8, &unk_100538AB8);
}

+ (void)createNewCallNoteHelperWithNoteID:(id)d recordingID:(id)iD context:(id)context bgTaskIdentifier:(unint64_t)identifier
{
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  sub_1001D5764(dCopy, iDCopy, contextCopy, identifier, 0);
}

+ (void)callRecordingEndedHelperWithNoteID:(id)d recordingID:(id)iD context:(id)context bgTaskIdentifier:(unint64_t)identifier
{
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  sub_1001D9084(dCopy, iDCopy, contextCopy, &unk_1006504C0, &unk_100538AB0);
}

@end