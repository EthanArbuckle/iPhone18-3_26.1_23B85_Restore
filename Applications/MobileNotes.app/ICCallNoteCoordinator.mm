@interface ICCallNoteCoordinator
+ (void)callRecordingEndedHelperWithNoteID:(id)a3 recordingID:(id)a4 context:(id)a5;
+ (void)callRecordingEndedHelperWithNoteID:(id)a3 recordingID:(id)a4 context:(id)a5 bgTaskIdentifier:(unint64_t)a6;
+ (void)createNewCallNoteHelperWithNoteID:(id)a3 recordingID:(id)a4 context:(id)a5;
+ (void)createNewCallNoteHelperWithNoteID:(id)a3 recordingID:(id)a4 context:(id)a5 bgTaskIdentifier:(unint64_t)a6;
+ (void)eventReporterLostSession:(id)a3;
+ (void)importAndDeleteCallRecordingFilesIfNeededFromDirectory:(id)a3 managedObjectContext:(id)a4;
@end

@implementation ICCallNoteCoordinator

+ (void)eventReporterLostSession:(id)a3
{
  v4 = a3;
  sub_1001D7170(a3);
}

+ (void)importAndDeleteCallRecordingFilesIfNeededFromDirectory:(id)a3 managedObjectContext:(id)a4
{
  v6 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  if (a3)
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

  v11 = a4;
  _s11MobileNotes19CallNoteCoordinatorC015importAndDeleteC22RecordingFilesIfNeeded9directory20managedObjectContexty10Foundation3URLVSg_So09NSManagedoP0CtFZ_0(v8, v11);

  sub_1000073B4(v8, &qword_1006BCC20);
}

+ (void)createNewCallNoteHelperWithNoteID:(id)a3 recordingID:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  sub_1001D5764(v7, v8, v9, 0, 1);
}

+ (void)callRecordingEndedHelperWithNoteID:(id)a3 recordingID:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  sub_1001D9084(v7, v8, v9, &unk_1006504E8, &unk_100538AB8);
}

+ (void)createNewCallNoteHelperWithNoteID:(id)a3 recordingID:(id)a4 context:(id)a5 bgTaskIdentifier:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  sub_1001D5764(v9, v10, v11, a6, 0);
}

+ (void)callRecordingEndedHelperWithNoteID:(id)a3 recordingID:(id)a4 context:(id)a5 bgTaskIdentifier:(unint64_t)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sub_1001D9084(v8, v9, v10, &unk_1006504C0, &unk_100538AB0);
}

@end