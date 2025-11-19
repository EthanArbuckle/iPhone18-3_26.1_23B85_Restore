int main(int argc, const char **argv, const char **envp)
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  v7 = +[ICUIApplicationShim sharedInstance];
  [v7 setDelegate:v6];

  [NSTextAttachment registerTextAttachmentClass:objc_opt_class() forFileType:PKAppleDrawingTypeIdentifier];
  [NSTextAttachment registerTextAttachmentClass:objc_opt_class() forFileType:PKApplePaperTypeIdentifier];
  v8 = +[NSUserDefaults standardUserDefaults];
  if ([v8 BOOLForKey:kICInternalSettingsShowICloudIMAPAccountDefaultKey])
  {

LABEL_4:
    [ICNoteContext setLegacyNotesDisabled:0];
    goto LABEL_5;
  }

  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 BOOLForKey:kICInternalSettingsShowLocalHTMLNotesDefaultKey];

  if (v10)
  {
    goto LABEL_4;
  }

LABEL_5:
  v11 = dispatch_get_global_queue(2, 0);
  dispatch_async(v11, &stru_10064A100);

  v12 = +[ICModelAvailabilityManager sharedInstance];
  [v12 fetchAndCacheAsyncAvailabilities:&stru_10064A140];

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  objc_autoreleasePoolPop(v5);
  v15 = UIApplicationMain(argc, argv, 0, v14);

  return v15;
}

void sub_100004134(id a1)
{
  v1 = +[ICAccount localizedLocalAccountName];
  v2 = +[AccountUtilities sharedAccountUtilities];
  +[UIImage ic_cacheSystemImages];
  +[UIPencilInteraction prefersPencilOnlyDrawing];
  v3 = +[ICAccountUtilities sharedInstance];
  [v3 performBlockInPersonaContext:&stru_10064A120 forAccountIdentifier:0];

  +[UIDevice ic_isLiveTextAvailable];

  +[ICDeviceSupport isWritingToolsAvailable];
}

void sub_100004298(id a1)
{
  v3 = [ICAppDelegate alloc];
  v1 = [(ICAppDelegate *)v3 sharedInstanceInit];
  v2 = qword_1006CB248;
  qword_1006CB248 = v1;
}

void sub_1000045F4(id a1)
{
  v1 = +[ICNAServerEnvironment fallbackDefaultTargetURLFromPrefs];
}

void sub_100004890(id a1)
{
  v1 = objc_alloc_init(NotesApp);
  v2 = qword_1006CB450;
  qword_1006CB450 = v1;
}

void sub_1000049D8(id a1)
{
  v1 = objc_alloc_init(ICNACloudOperationEventReporter);
  v2 = qword_1006CB2B0;
  qword_1006CB2B0 = v1;
}

void sub_100004B68(id a1)
{
  v1 = objc_alloc_init(ICCollaborationUIController);
  v2 = qword_1006CB390;
  qword_1006CB390 = v1;
}

void sub_100004D44(uint64_t a1)
{
  v2 = [ICNASnapshotBackgroundTask alloc];
  v3 = [*(a1 + 32) analyticsController];
  v4 = [*(a1 + 32) eventReporter];
  v5 = +[ICNASnapshotReporter sharedReporter];
  v6 = [v2 initWithAnalyticsController:v3 eventReporter:v4 snapshotReporter:v5];
  v26[0] = v6;
  v7 = [ICPaperSearchIndexerBackgroundTask alloc];
  v8 = +[ICNoteContext sharedContext];
  v9 = [v7 initWithNoteContext:v8];
  v26[1] = v9;
  v10 = [ICCloudSyncBackgroundTask alloc];
  v11 = +[ICCloudContext sharedContext];
  v12 = [v10 initWithCloudContext:v11];
  v26[2] = v12;
  v13 = [NSArray arrayWithObjects:v26 count:3];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * v18);
        v20 = +[ICBackgroundTaskScheduler sharedScheduler];
        [v20 registerTask:v19];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }
}

void sub_100004FE4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100005024(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

Swift::Void __swiftcall ICAppIntentsManager.registerDependencies()()
{

  AnyHashable.init<A>(_:)();
  sub_1000054A4(0, &qword_1006C4660);
  AppDependencyManager.add<A>(key:dependency:)();

  sub_1000067E4(v6);
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes19ICAppIntentsManager_loggingConfiguration);
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes19ICAppIntentsManager_loggingConfiguration + 8);
  v4 = *(v0 + OBJC_IVAR____TtC11MobileNotes19ICAppIntentsManager_loggingConfiguration + 16);
  v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes19ICAppIntentsManager_loggingConfiguration + 24);
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;

  AnyHashable.init<A>(_:)();
  AppDependencyManager.add<A>(key:dependency:)();

  sub_1000067E4(v6);
}

uint64_t sub_1000052C4()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1000053A0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1000053EC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100005408(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100005438(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100005488(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_1000054A4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100005548(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000055A8()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    sub_100005738();
    if (v1 <= 0x3F)
    {
      sub_100005B5C(319, &qword_1006C56F0, &qword_1006BCD80);
      if (v2 <= 0x3F)
      {
        sub_100005B5C(319, &qword_1006C56F8, &qword_1006BCD88);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100005738()
{
  if (!qword_1006C56E8)
  {
    type metadata accessor for FastSyncControllerPool(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C56E8);
    }
  }
}

void sub_100005790()
{
  sub_1000054A4(319, &qword_1006C4DC8);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v1 <= 0x3F)
    {
      sub_1000054A4(319, &qword_1006C4458);
      if (v2 <= 0x3F)
      {
        sub_1000058CC();
        if (v3 <= 0x3F)
        {
          sub_10000A2FC();
          if (v4 <= 0x3F)
          {
            sub_10000A364();
            if (v5 <= 0x3F)
            {
              sub_100006A38();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000058CC()
{
  if (!qword_1006C4DD0)
  {
    type metadata accessor for RealtimeCollaborationController(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C4DD0);
    }
  }
}

void sub_100005924()
{
  if (!qword_1006C47F8)
  {
    type metadata accessor for FastSyncStateMachine();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C47F8);
    }
  }
}

void sub_10000597C()
{
  sub_100005924();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100005A54()
{
  if (!qword_1006BFCC0)
  {
    sub_10017992C(&qword_1006BFCC8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BFCC0);
    }
  }
}

unint64_t sub_100005AB8()
{
  result = qword_1006C4E38;
  if (!qword_1006C4E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4E38);
  }

  return result;
}

uint64_t sub_100005B0C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000054A4(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100005B5C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10017992C(a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100005BD0()
{
  if (!qword_1006C5788)
  {
    type metadata accessor for EditNoteActivity();
    sub_1000054A4(255, &qword_1006C6420);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1006C5788);
    }
  }
}

uint64_t sub_100005FF4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006038(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10015DA04(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000060B4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000613C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A1FC;

  return sub_1000061F4(a1, v4);
}

uint64_t sub_1000061F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000ABC0;

  return v6(a1);
}

uint64_t type metadata accessor for LaunchTaskRunner()
{
  result = qword_1006C20D0;
  if (!qword_1006C20D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = type metadata accessor for FastSyncError();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  v6 = type metadata accessor for CancellationError();
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_100007460, 0, 0);
}

uint64_t sub_1000064DC()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100006658()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_10000AA40;

  return LaunchTaskRunner.run()();
}

uint64_t LaunchTaskRunner.run()()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10000795C, 0, 0);
}

uint64_t sub_1000067E4(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C2AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FastSyncStateMachine()
{
  result = qword_1006BFCB0;
  if (!qword_1006BFCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000068B8()
{
  type metadata accessor for EditNoteActivity();
  if (v0 <= 0x3F)
  {
    sub_100005A54();
    if (v1 <= 0x3F)
    {
      sub_1000054A4(319, &unk_1006BFCD0);
      if (v2 <= 0x3F)
      {
        sub_100006994();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100006994()
{
  if (!qword_1006C0620)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C0620);
    }
  }
}

unint64_t sub_1000069E4()
{
  result = qword_1006C4DE0;
  if (!qword_1006C4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4DE0);
  }

  return result;
}

void sub_100006A38()
{
  if (!qword_1006C4DF0)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C4DF0);
    }
  }
}

void sub_100006A90()
{
  sub_10000A3F8();
  if (v0 <= 0x3F)
  {
    sub_100005BD0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

id sub_100006B04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR___ICFastSyncPresenceController_cloudConfiguration] = 0;
  v11 = OBJC_IVAR___ICFastSyncPresenceController_controllerPool;
  v12 = type metadata accessor for FastSyncControllerPool(0);
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = OBJC_IVAR___ICFastSyncPresenceController_editorActivityChanges;
  v14 = sub_10015DA04(&qword_1006BCD80);
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v15 = OBJC_IVAR___ICFastSyncPresenceController_noteActivityShareChanges;
  v16 = sub_10015DA04(&qword_1006BCD88);
  (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
  v17 = OBJC_IVAR___ICFastSyncPresenceController_logger;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v5[v17], a1, v18);
  *&v5[OBJC_IVAR___ICFastSyncPresenceController_noteContext] = a4;
  v20 = &v5[OBJC_IVAR___ICFastSyncPresenceController_verboseLoggingCategory];
  *v20 = a2;
  *(v20 + 1) = a3;
  v24.receiver = v5;
  v24.super_class = ObjectType;
  v21 = a4;
  v22 = objc_msgSendSuper2(&v24, "init");
  sub_100006DE0();

  (*(v19 + 8))(a1, v18);
  return v22;
}

void *sub_100006D3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100006DE0()
{
  v1 = sub_10015DA04(&qword_1006C57C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v40 - v2;
  v4 = type metadata accessor for Logger();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10015DA04(&qword_1006C57B8);
  v7 = __chkstk_darwin(v6 - 8);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v40 - v9;
  v11 = OBJC_IVAR___ICFastSyncPresenceController_editorActivityChanges;
  swift_beginAccess();
  v12 = v0;
  v46 = v11;
  sub_100006038(v0 + v11, v10, &qword_1006C57B8);
  v13 = sub_10015DA04(&qword_1006BCD80);
  v14 = *(v13 - 8);
  LODWORD(v11) = (*(v14 + 48))(v10, 1, v13);
  result = sub_1000073B4(v10, &qword_1006C57B8);
  if (v11 == 1)
  {
    sub_10015DA04(&qword_1006C57C8);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100539C40;
    v17 = ICNoteEditorNoteWillAppearNotification;
    v18 = ICNoteEditorNoteWillDisappearNotification;
    *(v16 + 32) = ICNoteEditorNoteWillAppearNotification;
    *(v16 + 40) = v18;
    v19 = ICNoteEditorNoteDidDisappearNotification;
    *(v16 + 48) = ICNoteEditorNoteDidDisappearNotification;
    v48 = v16;
    v20 = v44;
    v21 = v45;
    v22 = *(v44 + 16);
    v41 = v12;
    v23 = v12 + OBJC_IVAR___ICFastSyncPresenceController_logger;
    v24 = v43;
    v22(v43, v23, v45);
    v25 = *(v20 + 80);
    v42 = v3;
    v26 = (v25 + 16) & ~v25;
    v40 = swift_allocObject();
    (*(v20 + 32))(v40 + v26, v24, v21);
    type metadata accessor for FastSyncEditorActivityChangeHandler(0);
    v27 = v17;
    v28 = v18;
    v29 = v19;
    sub_10015DA04(&qword_1006C57D0);
    sub_1000060B4(&qword_1006C57D8, &qword_1006C57D0);
    v30 = v47;
    NotificationSource.init<A>(observing:object:transform:)();
    (*(v14 + 56))(v30, 0, 1, v13);
    v31 = v46;
    v32 = v41;
    swift_beginAccess();
    v33 = v32;
    sub_10000A49C(v30, v32 + v31, &qword_1006C57B8);
    swift_endAccess();
    v34 = ICCloudSyncingObjectDidUpdateShareNotification;
    *(swift_allocObject() + 16) = v33;
    v35 = v34;
    v36 = v33;
    sub_10015DA04(&qword_1006C57E0);
    v37 = v42;
    NotificationSource.init(observing:object:transform:)();
    v38 = sub_10015DA04(&qword_1006BCD88);
    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    v39 = OBJC_IVAR___ICFastSyncPresenceController_noteActivityShareChanges;
    swift_beginAccess();
    sub_10000A49C(v37, v36 + v39, &qword_1006C57C0);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000072F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007328()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000073B4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10015DA04(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100007414(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100007460()
{
  *(v0 + 312) = type metadata accessor for MainActor();
  *(v0 + 384) = enum case for FastSyncError.fastSyncDisabled(_:);
  static Logger.fastSyncPresence.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Waiting for delayed launch...", v3, 2u);
  }

  v4 = *(v0 + 304);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);

  v7 = *(v6 + 8);
  *(v0 + 320) = v7;
  v7(v4, v5);
  *(v0 + 328) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000274F4, v9, v8);
}

id _s11MobileNotes16LaunchTaskRunnerC012runImmediateC5Tasks5tasks8delegate17completionHandlerAC17CancellationTokenCSaySo08ICLaunchD0_pG_AA0cdE8Delegate_pSgySbYbctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v6 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.launchTask.getter();
  v13 = type metadata accessor for LaunchTaskRunner();
  v14 = objc_allocWithZone(v13);
  swift_unknownObjectWeakInit();
  *&v14[OBJC_IVAR___ICLaunchTaskRunner_launchTasks] = a1;
  (*(v10 + 16))(&v14[OBJC_IVAR___ICLaunchTaskRunner_logger], v12, v9);
  v27.receiver = v14;
  v27.super_class = v13;

  v15 = objc_msgSendSuper2(&v27, "init");
  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  static TaskPriority.high.getter();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v18 = v25;
  v17[4] = v15;
  v17[5] = v18;
  v17[6] = a4;
  v19 = v15;

  v20 = sub_10023D268(0, 0, v8, &unk_10053E440, v17);
  v21 = type metadata accessor for LaunchTaskRunner.CancellationToken();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR___ICLaunchTaskCancellationToken_task] = v20;
  v26.receiver = v22;
  v26.super_class = v21;

  v23 = objc_msgSendSuper2(&v26, "init");

  return v23;
}

uint64_t sub_100007894(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A1FC;

  return sub_100006690(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10000795C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (([Strong launchTaskRunnerShouldRunLaunchTasks:v0[5]] & 1) == 0)
    {
      v16 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v16, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v16, v19, "LaunchTaskRunner: Skipped running launch tasks in response to delegate.", v20, 2u);
      }

      swift_unknownObjectRelease();
LABEL_23:

      v21 = v0[1];

      return v21();
    }

    swift_unknownObjectRelease();
  }

  v2 = v0[5];
  v0[9] = OBJC_IVAR___ICLaunchTaskRunner_logger;
  v3 = v2;
  v4 = Logger.logObject.getter();
  LOBYTE(v5) = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v4, v5))
  {

    v5 = v0[5];
    v4 = v5;
    goto LABEL_9;
  }

  v6 = v0[5];
  v7 = swift_slowAlloc();
  *v7 = 134217984;
  v8 = *(v6 + OBJC_IVAR___ICLaunchTaskRunner_launchTasks);
  if (v8 >> 62)
  {
    goto LABEL_32;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v10 = v0[5];
    *(v7 + 4) = v9;
    v11 = v7;

    _os_log_impl(&_mh_execute_header, v4, v5, "Starting delayed launch tasks (%ld total).", v11, 0xCu);

    v5 = v0[5];
LABEL_9:

    v12 = *(&v5->isa + OBJC_IVAR___ICLaunchTaskRunner_launchTasks);
    v0[10] = v12;
    if (v12 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
      v0[11] = v7;
      if (!v7)
      {
LABEL_18:
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 134217984;
          *(v18 + 4) = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "Finished running %ld delayed launch tasks.", v18, 0xCu);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v7 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[11] = v7;
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    if (v7 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_32:
    v26 = v7;
    v9 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v26;
  }

  v13 = 0;
  while (1)
  {
    v0[12] = 0;
    v0[13] = v13;
    v14 = v0[10];
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v14 + 8 * v13 + 32);
      swift_unknownObjectRetain();
    }

    v0[14] = v15;
    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      break;
    }

    swift_unknownObjectRelease();
    v13 = v0[13] + 1;
    if (v13 == v0[11])
    {
      goto LABEL_18;
    }
  }

  v23 = v0[8];
  (*(v0[7] + 16))(v23, v0[5] + v0[9], v0[6]);
  v24 = swift_task_alloc();
  v0[15] = v24;
  *(v24 + 16) = v15;
  *(v24 + 24) = v23;
  v25 = swift_task_alloc();
  v0[16] = v25;
  *v25 = v0;
  v25[1] = sub_10000A084;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

void sub_100007D90(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  v5 = sub_10015DA04(&qword_1006C2178);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a3, v9);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v6 + 80) + v14 + 8) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v13, v12, v9);
  v17 = v20;
  *(v16 + v14) = v20;
  (*(v6 + 32))(v16 + v15, v8, v5);
  aBlock[4] = sub_100009AD0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100009A64;
  aBlock[3] = &unk_100652A78;
  v18 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_10000874C(v17, v18);
  _Block_release(v18);
}

uint64_t sub_10000802C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10015DA04(&qword_1006C2178);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10000819C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000081AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000081BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000081CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000081DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000081EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000081FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000821C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000822C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000823C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000824C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000825C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000826C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000827C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000828C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000082AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000082BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000082CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000082DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000082EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000082FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000830C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000831C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000832C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000833C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000834C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000835C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000836C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000837C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000838C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000839C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000083AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000083BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000083CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000083DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000083EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000083FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000840C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000841C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000842C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000843C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000844C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000845C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000846C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000847C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000084AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000084BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000084CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000084DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000084EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000084FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000850C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000851C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000852C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000854C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000855C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000856C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000857C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000858C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000859C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000085AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000085BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000085CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000085DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000085EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000085FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000860C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000862C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000863C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000864C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000865C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000866C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000867C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000868C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000869C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000086AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000086BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000086CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000086EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000086FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000870C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000871C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000872C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000873C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10000874C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v3 shouldAttemptLaunchTask])
  {
    v13 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DF454(v3, v13, v20, v21, v22, v23, v24, v25);
    }

    goto LABEL_12;
  }

  v6 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100008964(v3, v6, v7, v8, v9, v10, v11, v12);
  }

  if (objc_opt_respondsToSelector())
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100009970;
    v26[3] = &unk_100645570;
    v27 = v3;
    v28 = v4;
    [v27 runLaunchTaskWithCompletionHandler:v26];

    objc_autoreleasePoolPop(v5);
    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 runLaunchTask];
    v13 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DF4C0(v3, v13, v14, v15, v16, v17, v18, v19);
    }

LABEL_12:

    goto LABEL_14;
  }

  [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"void _ICLaunchTaskRunWithCompletionHandler(__strong id<ICLaunchTask> _Nonnull simulateCrash:void (^__strong _Nonnull)(NSError * _Nullable __strong))" showAlert:1 format:0, @"Launch task %@ does not implement either -runLaunchTaskWithCompletionHandler: or -runLaunchTask:", v3];
LABEL_14:
  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }

LABEL_16:
}

uint64_t sub_100008B44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008B8C(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C2170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008BF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A1FC;

  return sub_1000061F4(a1, v4);
}

uint64_t sub_100008CAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A600;

  return sub_100008D78(a1, v4, v5, v6);
}

uint64_t sub_100008D78(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000A600;

  return v7();
}

uint64_t sub_100008E60()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000A1FC;

  return sub_100008FCC(v2, v3, v4);
}

uint64_t sub_100008F20()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000A600;

  return sub_1000090B4(v2);
}

uint64_t sub_100008FCC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000A1FC;

  return v6();
}

uint64_t sub_1000090B4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000980C;

  return sub_10000915C();
}

uint64_t sub_10000915C()
{
  v1 = type metadata accessor for URL();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v0[4] = *(v2 + 64);
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100009238, 0, 0);
}

uint64_t sub_100009238()
{
  v1 = ICGroupContainerIdentifier();
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_opt_self() URLForGroupContainerWithIdentifier:v1];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:isDirectory:)();
  v3 = [objc_opt_self() defaultManager];
  v4 = NSFileManager.contentsOfDirectory(at:)();

  v10 = *(v4 + 16);

  if (v10)
  {
    v11 = [objc_opt_self() sharedContext];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 managedObjectContext];
      v0[8] = v13;

      if (v13)
      {
        if (qword_1006BC9D0 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_10002597C(v14, qword_1006C9F00);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, v16, "running app migration post-launch import", v17, 2u);
        }

        v19 = v0[5];
        v18 = v0[6];
        v20 = v0[3];
        v21 = v0[2];

        (*(v20 + 16))(v19, v18, v21);
        v22 = (*(v20 + 80) + 24) & ~*(v20 + 80);
        v23 = swift_allocObject();
        v0[9] = v23;
        *(v23 + 16) = v13;
        (*(v20 + 32))(v23 + v22, v19, v21);
        v13;
        v24 = swift_task_alloc();
        v0[10] = v24;
        *v24 = v0;
        v24[1] = sub_1004A0D4C;

        return NSManagedObjectContext.perform<A>(_:)();
      }
    }

    sub_1004A100C();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    v5 = v0[7];
    v6 = v0[2];
    v7 = *(v0[3] + 8);
    v7(v0[6], v6);
    v7(v5, v6);

    v8 = v0[1];
  }

  else
  {
    if (qword_1006BC9D0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10002597C(v26, qword_1006C9F00);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "nothing found to import; bailing", v29, 2u);
    }

    v30 = v0[7];
    v31 = v0[2];
    v32 = *(v0[3] + 8);
    v32(v0[6], v31);
    v32(v30, v31);

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_100009748()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000980C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

void sub_100009970(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000099F4(a1, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }
}

void sub_100009A64(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100009AD0(uint64_t a1)
{
  type metadata accessor for Logger();
  sub_10015DA04(&qword_1006C2178);

  return sub_100009BC0(a1);
}

uint64_t sub_100009BC0(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    swift_unknownObjectRetain();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v11 = v5;
      *v3 = 136446466;
      swift_unknownObjectRetain();
      sub_10015DA04(&qword_1006C2168);
      v6 = String.init<A>(describing:)();
      v8 = sub_100009D88(v6, v7, &v11);

      *(v3 + 4) = v8;
      *(v3 + 12) = 2112;
      v9 = _convertErrorToNSError(_:)();
      *(v3 + 14) = v9;
      *v4 = v9;
      _os_log_impl(&_mh_execute_header, v1, v2, "LaunchTaskRunner: task %{public}s failed with error: %@", v3, 0x16u);
      sub_10000A01C(v4);

      sub_100009F60(v5);
    }

    else
    {
    }
  }

  sub_10015DA04(&qword_1006C2178);
  return CheckedContinuation.resume(returning:)();
}

unint64_t sub_100009D88(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009E54(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000A2A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009F60(v11);
  return v7;
}

unint64_t sub_100009E54(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10046ABDC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_100009F60(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000A01C(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C1440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A084()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10000A800, 0, 0);
}

uint64_t sub_10000A2A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000A2FC()
{
  if (!qword_1006C4DD8)
  {
    sub_1000069E4();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C4DD8);
    }
  }
}

void sub_10000A364()
{
  if (!qword_1006C4DE8)
  {
    sub_1000054A4(255, &qword_1006C6420);
    sub_100005B0C(&qword_1006C17E0, &qword_1006C6420);
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C4DE8);
    }
  }
}

void sub_10000A3F8()
{
  if (!qword_1006C5780)
  {
    type metadata accessor for EditNoteActivity();
    sub_10017992C(&qword_1006BFC50);
    sub_1000054A4(255, &qword_1006C6420);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006C5780);
    }
  }
}

uint64_t sub_10000A49C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10015DA04(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000A528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A600;

  return sub_100006340(a1, v4, v5, v6);
}

uint64_t sub_10000A600()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10000A7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A800()
{
  v1 = v0[12];
  swift_unknownObjectRelease();
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else
  {
    while (1)
    {
      v3 = v0[13] + 1;
      if (v3 == v0[11])
      {
        break;
      }

      v0[12] = v2;
      v0[13] = v3;
      v4 = v0[10];
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v4 + 8 * v3 + 32);
        swift_unknownObjectRetain();
      }

      v0[14] = v5;
      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
        v11 = v0[8];
        (*(v0[7] + 16))(v11, v0[5] + v0[9], v0[6]);
        v12 = swift_task_alloc();
        v0[15] = v12;
        *(v12 + 16) = v5;
        *(v12 + 24) = v11;
        v13 = swift_task_alloc();
        v0[16] = v13;
        *v13 = v0;
        v13[1] = sub_10000A084;

        return withCheckedContinuation<A>(isolation:function:_:)();
      }

      swift_unknownObjectRelease();
    }

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v6, v7, "Finished running %ld delayed launch tasks.", v8, 0xCu);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10000AA40()
{

  return _swift_task_switch(sub_10000A1F8, 0, 0);
}

uint64_t sub_10000AB3C()
{
  v1 = *(v0 + 16);
  v2 = static Task<>.isCancelled.getter();
  v1(v2 & 1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000ABC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000ACC0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10000B128(id a1)
{
  v1 = objc_alloc_init(ICApplicationTestingHelper);
  v2 = qword_1006CB3D8;
  qword_1006CB3D8 = v1;
}

uint64_t sub_10000B474()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_10000B568(void *a1)
{
  v40 = a1;
  ObjectType = swift_getObjectType();
  v43 = type metadata accessor for NSNotificationCenter.Publisher();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v38 - 8);
  __chkstk_darwin(v38);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  swift_unknownObjectWeakInit();
  v37 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
  v36[1] = sub_1000054A4(0, &qword_1006BE9E0);
  v36[0] = "lectionStateController";
  static DispatchQoS.unspecified.getter();
  *&v46[0] = _swiftEmptyArrayStorage;
  sub_10000BF3C(&qword_1006BCB80, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10015DA04(&unk_1006BFD50);
  sub_1000060B4(&qword_1006BCB90, &unk_1006BFD50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
  *&v1[v37] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = &v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue];
  sub_10000BFCC(0, 0, 0, 0, v46);
  v9 = v46[3];
  *(v8 + 2) = v46[2];
  *(v8 + 3) = v9;
  *(v8 + 4) = v46[4];
  *(v8 + 10) = v47;
  v10 = v46[1];
  *v8 = v46[0];
  *(v8 + 1) = v10;
  *&v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_observers] = _swiftEmptyArrayStorage;
  static Logger.ui.getter();
  v11 = &v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  v12 = v40;
  *&v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_persistenceConfiguration] = v40;
  v45.receiver = v1;
  v45.super_class = ObjectType;
  v13 = v12;
  v14 = objc_msgSendSuper2(&v45, "init");
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = v14;
  v18 = [v13 modernBackgroundContext];
  v19 = [v13 legacyBackgroundContext];
  v20 = [v13 makeModernBackgroundContext];
  if (v20)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v20 = sub_10000F860;
  }

  else
  {
    v21 = 0;
  }

  v40 = v13;
  v22 = [v13 makeLegacyBackgroundContext];
  v23 = v43;
  if (v22)
  {
    v24 = v22;
    v22 = swift_allocObject();
    v22[2] = v24;
    v25 = sub_10000F860;
  }

  else
  {
    v25 = 0;
  }

  v26 = v41;
  v27 = &v17[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
  v44[0] = *&v17[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
  v28 = *&v17[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
  v30 = *&v17[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
  v29 = *&v17[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
  v44[3] = *&v17[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
  v44[4] = v28;
  v44[1] = v30;
  v44[2] = v29;
  *v27 = sub_1000142C4;
  v27[1] = v15;
  v27[2] = sub_100013920;
  v27[3] = v16;
  v27[4] = v18;
  v27[5] = v19;
  v27[6] = v20;
  v27[7] = v21;
  v27[8] = v25;
  v27[9] = v22;
  sub_1000073B4(v44, &unk_1006C4328);
  v41 = objc_opt_self();
  v31 = [v41 defaultCenter];
  if (qword_1006BC858 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = sub_10000BF3C(&qword_1006C43D0, &type metadata accessor for NSNotificationCenter.Publisher);
  v33 = v17;
  ObjectType = v32;
  Publisher<>.sink(receiveValue:)();

  v42 = *(v42 + 8);
  (v42)(v26, v23);
  swift_beginAccess();
  sub_10015DA04(&qword_1006C43D8);
  sub_1000060B4(&qword_1006C43E0, &qword_1006C43D8);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v34 = [v41 defaultCenter];
  if (qword_1006BC860 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  Publisher<>.sink(receiveValue:)();

  (v42)(v26, v23);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  return v33;
}

uint64_t sub_10000BE3C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BE74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BEAC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BEF4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BF3C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BF84(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10000BFCC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a3;
  v20 = a4;
  v17 = a1;
  v18 = a2;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v16 - 8);
  __chkstk_darwin(v16);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000054A4(0, &qword_1006BE9E0);
  v15[0] = " will be appended to the note";
  v15[1] = v11;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000BF3C(&qword_1006BCB80, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10015DA04(&unk_1006BFD50);
  sub_1000060B4(&qword_1006BCB90, &unk_1006BFD50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *a5 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&result = 50;
  *(a5 + 8) = xmmword_100543330;
  *(a5 + 56) = _swiftEmptyArrayStorage;
  *(a5 + 64) = 0;
  *(a5 + 72) = 1;
  *(a5 + 80) = _swiftEmptyArrayStorage;
  v13 = v18;
  *(a5 + 24) = v17;
  *(a5 + 32) = v13;
  v14 = v20;
  *(a5 + 40) = v19;
  *(a5 + 48) = v14;
  return result;
}

NSManagedObjectContext *__cdecl sub_10000C27C(id a1)
{
  v1 = +[NotesApp sharedNotesApp];
  v2 = [v1 backgroundNoteContext];
  v3 = [v2 managedObjectContext];

  return v3;
}

NSString sub_10000C2E8()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.TagCollectionViewWillRenameTag = result;
  return result;
}

void sub_10000C57C()
{
  if (!qword_1006BEE00)
  {
    sub_10017992C(&qword_1006BCC20);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1006BEE00);
    }
  }
}

void sub_10000C5F4()
{
  sub_10000C57C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_10000E9B8(319, &qword_1006BEE08, &qword_1006BEE10);
      if (v2 <= 0x3F)
      {
        sub_10000E9B8(319, &qword_1006BEE20, &unk_1006C4300);
        if (v3 <= 0x3F)
        {
          sub_10000E9B8(319, &unk_1006BEE28, &unk_1006BFED0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10000C73C()
{
  if (!qword_1006BEED8)
  {
    type metadata accessor for URL();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1006BEED8);
    }
  }
}

void sub_10000C7A4()
{
  if (!qword_1006BEEE0)
  {
    sub_10017992C(&unk_1006BFED0);
    sub_10017992C(&qword_1006BEEE8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006BEEE0);
    }
  }
}

uint64_t sub_10000C840(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000C850(void *a1, char a2, char a3)
{
  v7 = *v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = v3;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100010878;
  *(v9 + 24) = v8;
  v14[4] = sub_10032D13C;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10000EAF8;
  v14[3] = &unk_100656930;
  v10 = _Block_copy(v14);
  v11 = v7;
  v12 = a1;

  dispatch_sync(v11, v10);

  _Block_release(v10);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000C9CC()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10000CA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006BCC20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CA78(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000CA90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10000CEEC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[ICWindowSceneDelegate archiveForLaunchingPPT]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s", &v1, 0xCu);
}

id sub_10000D07C()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 BOOLForKey:@"DebuggingGreyParrotUI"];

  return v1;
}

NSManagedObjectContext *__cdecl sub_10000D2C0(id a1)
{
  v1 = +[ICNoteContext sharedContext];
  v2 = [v1 workerManagedObjectContext];

  return v2;
}

uint64_t sub_10000D324(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

NSString sub_10000D36C()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.TagCollectionViewDidRenameTag = result;
  return result;
}

void sub_10000D3C0(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() defaultCenter];
    [v4 removeObserver:v1 name:ICWindowRootViewControllerDidChangeNotification object:v3];

    v5 = [v3 rootViewController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 view];
      if (!v7)
      {
        __break(1u);
        goto LABEL_15;
      }

      v8 = v7;
      sub_1001E3768(v7);
    }
  }

  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 rootViewController];
    if (!v11)
    {
LABEL_10:
      v15 = [objc_opt_self() defaultCenter];
      v16 = ICWindowRootViewControllerDidChangeNotification;
      v17 = v10;
      [v15 addObserver:v1 selector:"rootViewControllerDidChange:" name:v16 object:v17];

      goto LABEL_11;
    }

    v12 = v11;
    v13 = [v11 view];
    if (v13)
    {
      v14 = v13;
      sub_1000204AC(v13);

      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
    return;
  }

LABEL_11:
}

void sub_10000D818(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10015DA04(&qword_1006BEF28);
  __chkstk_darwin(v4 - 8);
  v123 = (v116 - v5);
  v6 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v6 - 8);
  v118 = (v116 - v7);
  v8 = sub_10015DA04(&qword_1006BCC20);
  v9 = __chkstk_darwin(v8 - 8);
  v130 = v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v133 = v116 - v12;
  v13 = __chkstk_darwin(v11);
  v131 = v116 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = v116 - v16;
  __chkstk_darwin(v15);
  v19 = v116 - v18;
  v132 = type metadata accessor for URL();
  v135 = *(v132 - 8);
  v20 = __chkstk_darwin(v132);
  v127 = v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v120 = v116 - v23;
  v24 = __chkstk_darwin(v22);
  v119 = v116 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = v116 - v27;
  __chkstk_darwin(v26);
  v128 = v116 - v29;
  v124 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
  v30 = *&v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  *(v31 + 24) = v1;
  *(v31 + 32) = ObjectType;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_10000C834;
  *(v32 + 24) = v31;
  v134 = v31;
  *&v143 = sub_10032D13C;
  *(&v143 + 1) = v32;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v142 = sub_10000EAF8;
  *(&v142 + 1) = &unk_100657BA0;
  v33 = _Block_copy(&aBlock);
  v136 = a1;
  v34 = v30;
  v125 = v1;
  v35 = v1;

  dispatch_sync(v34, v33);

  _Block_release(v33);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
    goto LABEL_71;
  }

  if (!a1)
  {
    v40 = v135[7];
    v41 = v132;
    v40(v19, 1, 1, v132);
    sub_1000073B4(v19, &qword_1006BCC20);
    v42 = v133;
    v40(v133, 1, 1, v41);
    sub_1000073B4(v42, &qword_1006BCC20);
    goto LABEL_6;
  }

  v36 = v136;
  v37 = [v136 currentObjectIDURL];
  v117 = v28;
  if (v37)
  {
    v38 = v37;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v43 = v135;
  v44 = (v135 + 7);
  v45 = v135[7];
  v46 = v132;
  v45(v17, v39, 1, v132);
  sub_10000CA08(v17, v19);
  v121 = v43[6];
  v122 = v43 + 6;
  v47 = v121(v19, 1, v46);
  v129 = v35;
  v126 = v45;
  if (v47 == 1)
  {
    sub_1000073B4(v19, &qword_1006BCC20);
    v48 = 0;
    v49 = v130;
    goto LABEL_25;
  }

  v50 = v128;
  (v43[4])(v128, v19, v46);
  v51 = v131;
  (v43[2])(v131, v50, v46);
  v116[1] = v44;
  v45(v51, 0, 1, v46);
  v52 = &v35[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
  aBlock = *&v35[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
  v53 = *&v35[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
  v55 = *&v35[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
  v54 = *&v35[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
  v144 = *&v35[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
  v145 = v53;
  v142 = v55;
  v143 = v54;
  sub_100006038(&aBlock, v140, &unk_1006C4328);
  v56 = sub_10000F54C(v51, &aBlock);
  v57 = v43;
  v58 = sub_10000F864(v56, &aBlock);

  sub_1000073B4(&aBlock, &unk_1006C4328);
  sub_1000073B4(v51, &qword_1006BCC20);
  if (!v58)
  {
    (v57[1])(v50, v46);
    v43 = v57;
    v48 = 0;
    v36 = v136;
    v49 = v130;
    goto LABEL_25;
  }

  v48 = [objc_allocWithZone(type metadata accessor for ICSelectionStateModel(0)) init];
  if (([v58 ic_isContainerType] & 1) == 0)
  {
    if ([v58 ic_isNoteType])
    {
      v49 = v130;
      v60 = v128;
      if (v48)
      {
        v61 = [v58 ic_isNoteType];
        (v135[1])(v60, v46);
        v36 = v136;
        if (v61)
        {
          goto LABEL_22;
        }

        goto LABEL_63;
      }

      v43 = v135;
      (v135[1])(v60, v46);
    }

    else
    {
      v62 = [v58 ic_isInvitationType];
      v49 = v130;
      v63 = v128;
      if (v62)
      {
        v36 = v136;
        if (!v48)
        {

          v43 = v135;
          (v135[1])(v63, v46);
          goto LABEL_25;
        }

        v64 = [v58 ic_isInvitationType];
        (v135[1])(v63, v46);
        if (v64)
        {
LABEL_22:
          v65 = v118;
          *v118 = v58;
          *(v65 + 8) = 0;
          v66 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
          v67 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
          swift_beginAccess();
          sub_10000A49C(v65, v48 + v67, &unk_1006BFEA0);
          swift_endAccess();
          v43 = v135;
          goto LABEL_25;
        }

LABEL_63:

        v43 = v135;
        goto LABEL_25;
      }

      if (![v58 ic_isBaseAttachmentType] || (v140[0] = *v52, v110 = *(v52 + 1), v111 = *(v52 + 2), v112 = *(v52 + 4), v140[3] = *(v52 + 3), v140[4] = v112, v140[1] = v110, v140[2] = v111, sub_100006038(v140, v139, &unk_1006C4328), v113 = sub_1001F70FC(v58, v140), v115 = v114, v63 = v128, sub_1000073B4(v140, &unk_1006C4328), !v113))
      {

        v43 = v135;
        (v135[1])(v63, v46);
        v48 = 0;
        v36 = v136;
        goto LABEL_25;
      }

      if (v48)
      {
        sub_1001BA988(v113, v115, 0);
      }

      else
      {
      }

      v43 = v135;
      (v135[1])(v63, v46);
    }

    v36 = v136;
    goto LABEL_25;
  }

  v36 = v136;
  v49 = v130;
  if (v48)
  {
    v59 = v58;
    sub_10000FE7C(v58, 0);
  }

  else
  {
  }

  v43 = v135;
  (v135[1])(v128, v46);
LABEL_25:
  v68 = [v36 currentContainerObjectIDURLs];
  if (v68)
  {
    v69 = v68;
    v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v70 + 16))
    {
      v135 = v48;
      v71 = v43[2];
      v72 = v120;
      v71(v120, v70 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v46);

      v73 = v43[4];
      (v73)(v119, v72, v46);
      v74 = v117;
      v73();
      v75 = v131;
      v71(v131, v74, v46);
      v126(v75, 0, 1, v46);
      v139[0] = *&v129[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
      v76 = *&v129[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
      v78 = *&v129[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
      v77 = *&v129[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
      v139[3] = *&v129[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
      v139[4] = v76;
      v139[1] = v78;
      v139[2] = v77;
      sub_100006038(v139, v138, &unk_1006C4328);
      v79 = sub_10000F54C(v75, v139);
      v80 = sub_10000F864(v79, v139);

      sub_1000073B4(v139, &unk_1006C4328);
      sub_1000073B4(v75, &qword_1006BCC20);
      if (v80)
      {
        v81 = [v80 ic_isContainerType];
        v48 = v135;
        v36 = v136;
        if (v81)
        {
          if (v135 || (v48 = [objc_allocWithZone(type metadata accessor for ICSelectionStateModel(0)) init]) != 0)
          {
            v82 = v80;
            sub_10000FE7C(v80, 0);
          }

          (v43[1])(v74, v46);
        }

        else
        {
          (v43[1])(v74, v46);
        }
      }

      else
      {
        (v43[1])(v74, v46);
        v48 = v135;
        v36 = v136;
      }

      v49 = v130;
    }

    else
    {
    }
  }

  v83 = [v36 currentNoteObjectIDURL];
  if (v83)
  {
    v84 = v83;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v85 = 0;
  }

  else
  {
    v85 = 1;
  }

  v86 = v126;
  v126(v49, v85, 1, v46);
  v87 = v133;
  sub_10000CA08(v49, v133);
  if (v121(v87, 1, v46) == 1)
  {
    sub_1000073B4(v87, &qword_1006BCC20);
  }

  else
  {
    v135 = v48;
    v88 = v127;
    (v43[4])(v127, v87, v46);
    v89 = v131;
    (v43[2])(v131, v88, v46);
    v86(v89, 0, 1, v46);
    v138[0] = *&v129[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
    v90 = *&v129[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
    v92 = *&v129[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
    v91 = *&v129[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
    v138[3] = *&v129[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
    v138[4] = v90;
    v138[1] = v92;
    v138[2] = v91;
    sub_100006038(v138, v137, &unk_1006C4328);
    v93 = sub_10000F54C(v89, v138);
    v94 = sub_10000F864(v93, v138);

    sub_1000073B4(v138, &unk_1006C4328);
    sub_1000073B4(v89, &qword_1006BCC20);
    if (v94)
    {
      v95 = [v94 ic_isNoteType];
      v48 = v135;
      v36 = v136;
      if ((v95 & 1) != 0 || [v94 ic_isInvitationType])
      {
        v96 = v127;
        if (v48 || (v48 = [objc_allocWithZone(type metadata accessor for ICSelectionStateModel(0)) init]) != 0)
        {
          sub_100013994(v94, 0);
        }

        (v43[1])(v96, v46);
      }

      else
      {
        (v43[1])(v127, v46);
      }
    }

    else
    {
      (v43[1])(v88, v46);
      v48 = v135;
      v36 = v136;
    }
  }

  v97 = [v36 currentVirtualSmartFolderIdentifier];
  if (!v97)
  {
    if (v48)
    {
      goto LABEL_56;
    }

LABEL_6:

    return;
  }

  if (!v48)
  {
    v98 = v97;
    v48 = [objc_allocWithZone(type metadata accessor for ICSelectionStateModel(0)) init];
    v97 = v98;
    if (!v48)
    {

      return;
    }
  }

  v99 = v123;
  *v123 = v97;
  *(v99 + 8) = 0;
  v100 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v100 - 8) + 56))(v99, 0, 1, v100);
  v101 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
  swift_beginAccess();
  sub_10000A49C(v99, v48 + v101, &qword_1006BEF28);
  swift_endAccess();
LABEL_56:
  v102 = *&v125[v124];
  v103 = swift_allocObject();
  v104 = v129;
  *(v103 + 16) = v129;
  *(v103 + 24) = v48;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_100013B9C;
  *(v105 + 24) = v103;
  v137[4] = sub_10032D13C;
  v137[5] = v105;
  v137[0] = _NSConcreteStackBlock;
  v137[1] = 1107296256;
  v137[2] = sub_10000EAF8;
  v137[3] = &unk_100657C18;
  v106 = _Block_copy(v137);
  v107 = v104;
  v108 = v102;
  v109 = v48;

  dispatch_sync(v108, v106);

  _Block_release(v106);
  LOBYTE(v109) = swift_isEscapingClosureAtFileLocation();

  if (v109)
  {
LABEL_71:
    __break(1u);
  }
}

uint64_t sub_10000E928()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E968()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10000E9B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10017992C(a3);
    sub_10017992C(&qword_1006BEE18);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10000EA38()
{
  sub_10000C73C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_10000C7A4();
      if (v2 <= 0x3F)
      {
        sub_1001BD9BC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10000EB20(void *a1, char *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = [a1 selectionState];
    if (v5)
    {
      v6 = v5;
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_10015DA04(&qword_1006C42D0);
      sub_1000060B4(&unk_1006BFF00, &qword_1006C42D0);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10019671C(v7, v9);

      v31 = v39;
      v32 = v40;
      v33 = v41;
      v10 = &a2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue];
      v29 = aBlock;
      v30 = v37;
      swift_beginAccess();
      v11 = *(v10 + 2);
      v12 = *(v10 + 4);
      v34[3] = *(v10 + 3);
      v34[4] = v12;
      v13 = *(v10 + 1);
      v34[0] = *v10;
      v35 = *(v10 + 10);
      v34[1] = v13;
      v34[2] = v11;
      *(v10 + 2) = v38;
      *(v10 + 3) = v31;
      *(v10 + 4) = v32;
      *(v10 + 10) = v33;
      *v10 = v29;
      *(v10 + 1) = v30;
      sub_1000073B4(v34, &qword_1006C42D0);
    }
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100010888;
  *(v15 + 24) = v14;
  v16 = &a2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue];
  swift_beginAccess();
  v17 = *(v16 + 3);
  *(v16 + 3) = sub_100010898;
  *(v16 + 4) = v15;
  v18 = a2;
  sub_10000C840(v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a3;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10032CDF8;
  *(v20 + 24) = v19;
  v21 = *(v16 + 5);
  *(v16 + 5) = sub_10032CE00;
  *(v16 + 6) = v20;
  v22 = v18;
  sub_10000C840(v21);
  v23 = *v16;
  v24 = swift_allocObject();
  *(v24 + 16) = v16;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10000F4C8;
  *(v25 + 24) = v24;
  *&v38 = sub_10032D13C;
  *(&v38 + 1) = v25;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v37 = sub_10000EAF8;
  *(&v37 + 1) = &unk_100657D30;
  v26 = _Block_copy(&aBlock);
  v27 = v23;

  dispatch_sync(v27, v26);

  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10000EF24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EF5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F068(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v6 = (a1 + 80);
  v5 = *(a1 + 80);
  if (v5 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      return result;
    }
  }

  v8 = *(a1 + 56);
  if (v8 >> 62)
  {
    goto LABEL_48;
  }

  for (result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); result >= 1; result = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = *(a1 + 56);
    if (v9 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v10 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        return result;
      }
    }

    if (v10 < 1)
    {
      __break(1u);
      return result;
    }

    v35 = v9 & 0xC000000000000001;

    v11 = 0;
    v12 = 0;
    v33 = v10;
    v34 = a1;
    v32 = v9;
    while (1)
    {
      if (v35)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v9 + 8 * v11 + 32);
      }

      v13 = v15;
      v16 = sub_10001566C(1, 1);
      v17 = v16;
      v39 = v16;
      v18 = *(a1 + 24);
      if (v18)
      {
        v38 = v16;
        v16 = v18(&v38);
      }

      v36 = &v32;
      __chkstk_darwin(v16);
      *(&v32 - 2) = a1;
      *(&v32 - 1) = &v39;
      v19 = sub_100016DD8(sub_10032D120, (&v32 - 4));
      v20 = v19;
      v37 = v12;
      v21 = *(a1 + 80);
      if (v21 >> 62)
      {
        break;
      }

      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = v22 - v19;
      if (v22 < v19)
      {
        goto LABEL_44;
      }

LABEL_20:
      if (v20 < 0)
      {
        goto LABEL_45;
      }

      v24 = v4;
      a1 = *v6;
      v4 = (*v6 >> 62);
      if (v4)
      {
        if (_CocoaArrayWrapper.endIndex.getter() < v22)
        {
LABEL_42:
          __break(1u);
        }
      }

      else if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < v22)
      {
        goto LABEL_42;
      }

      v25 = __OFSUB__(0, v23);
      v26 = -v23;
      if (v25)
      {
        goto LABEL_46;
      }

      if (v4)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a1 = v27 + v26;
      if (__OFADD__(v27, v26))
      {
        goto LABEL_47;
      }

      v4 = v24;
      v28 = *v6;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v6 = v28;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
        {
LABEL_35:
          _CocoaArrayWrapper.endIndex.getter();
        }

LABEL_36:
        *v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_37;
      }

      if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
      {
        goto LABEL_35;
      }

      if (a1 > *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_36;
      }

LABEL_37:
      sub_1000172D0(v20, v22, 0);
      v30 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
      swift_beginAccess();
      sub_100006038(&v17[v30], v24, &unk_1006BFEA0);
      v31 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
      if ((*(*(v31 - 8) + 48))(v24, 1, v31) == 1)
      {

        sub_1000073B4(v24, &unk_1006BFEA0);
        v13 = v17;
      }

      else
      {
        sub_1000073B4(v24, &unk_1006BFEA0);
        sub_10015DA04(&unk_1006C42C0);
        Array.prepend(_:)();
      }

      v14 = v33;
      a1 = v34;
      v12 = v37;
      ++v11;

      v9 = v32;
      if (v14 == v11)
      {
      }
    }

    v22 = _CocoaArrayWrapper.endIndex.getter();
    v23 = v22 - v20;
    if (v22 >= v20)
    {
      goto LABEL_20;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  return result;
}

id sub_10000F54C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v6 = *(a2 + 64);
  v5 = *(a2 + 72);
  v31[0] = *(a2 + 40);
  v31[1] = v5;
  v7 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v7 - 8);
  v9 = v31 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006038(a1, v9, &qword_1006BCC20);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000073B4(v9, &qword_1006BCC20);
  }

  else
  {
    v14 = (*(v11 + 32))(v13, v9, v10);
    if (*a2)
    {
      v15 = *(a2 + 48);
      if (!v15 || (v16 = v15(v14)) == 0)
      {
        v17 = v4;
        v16 = v4;
      }

      if (!v6 || (v18 = v6()) == 0)
      {
        v18 = v31[0];
        v19 = v31[0];
      }

      if (v16)
      {
        v20 = v16;
        URL._bridgeToObjectiveC()(v21);
        v23 = v22;
        v24 = [v20 ic_objectIDFromURL:v22];

        if (v24)
        {

          (*(v11 + 8))(v13, v10);
          return v24;
        }
      }

      if (v18)
      {
        v26 = v18;
        URL._bridgeToObjectiveC()(v27);
        v29 = v28;
        v30 = [v26 ic_objectIDFromURL:v28];

        (*(v11 + 8))(v13, v10);
        return v30;
      }
    }

    else
    {
      v16 = 0;
    }

    (*(v11 + 8))(v13, v10);
  }

  return 0;
}

id sub_10000F828()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

void *sub_10000F864(void *result, void *a2)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  if (!*a2)
  {
    v8 = 0;
    v7 = 0;
    v3 = result;
LABEL_13:
    v12 = v3;
    goto LABEL_14;
  }

  v4 = a2[4];
  v3 = a2[5];
  v5 = a2[8];
  v6 = a2[6];
  if (v6)
  {
    v7 = v6(result);
    if (v7)
    {
      if (!v5)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v9 = result;
  }

  v10 = v4;
  v7 = v4;
  if (!v5)
  {
LABEL_12:
    v8 = v3;
    goto LABEL_13;
  }

LABEL_10:
  v11 = v5();
  if (!v11)
  {
    goto LABEL_12;
  }

  v8 = v11;
LABEL_14:
  v13 = [v2 ic_isModernType];
  if (v13)
  {
    v14 = v7 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    __chkstk_darwin(v13);
    sub_10015DA04(&unk_1006BFED0);
    NSManagedObjectContext.performAndWait<A>(_:)();

    return v16;
  }

  v15 = [v2 ic_isLegacyType];
  if (v15)
  {
    if (v8)
    {
      __chkstk_darwin(v15);
      sub_10015DA04(&unk_1006BFED0);
      NSManagedObjectContext.performAndWait<A>(_:)();

      return v16;
    }
  }

  else
  {
  }

  return 0;
}

void sub_10000FA8C()
{
  sub_10000FC0C(319, &qword_1006BEC58, type metadata accessor for ICSelectionStateModel.ObjectSelection);
  if (v0 <= 0x3F)
  {
    sub_10000FC0C(319, &qword_1006BEC60, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    if (v1 <= 0x3F)
    {
      sub_10000FC0C(319, &qword_1006BEC68, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10000FC0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_10000FC60()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  v3 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
  v5 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  v0[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_selectionReason] = 0;
  *&v0[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentFirstVisibleObjectIDURLForContainerObjectIDURL] = 0;
  *&v0[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentActivityStreamSelection] = 0;
  *&v0[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentActivityStreamViewMode] = 0;
  *&v0[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = 0;
  v6 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectIDURL;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  *&v0[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentFirstVisibleObjectIDForContainerObjectID] = 0;
  *&v0[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID] = 0;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_10000FE7C(uint64_t a1, void *a2)
{
  v5 = sub_10015DA04(&qword_1006BEF28);
  result = __chkstk_darwin(v5 - 8);
  v8 = (&v16 - v7);
  if (a1)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      if ([v9 ic_isContainerType])
      {
        *v8 = v10;
        v8[1] = a2;
        v11 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
LABEL_7:
        swift_storeEnumTagMultiPayload();
        (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
        v13 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
        swift_beginAccess();
        v14 = a2;
        sub_10000A49C(v8, v2 + v13, &qword_1006BEF28);
        return swift_endAccess();
      }
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        *v8 = v12;
        v8[1] = a2;
        v11 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        sub_1001BAC68(v15, a2);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100010104(char a1, uint64_t a2, void *a3, unint64_t a4)
{
  if (a1)
  {

    *(a2 + 16) = a3;

    v8 = a3;
    return;
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    v4 = *(a2 + 32);
    v69 = a3;
    v5 = a4;
    v10 = a3;
    sub_100010854(v9);
    v9(&v69);
    sub_10000C840(v9);

    LOBYTE(a4) = v5;
  }

  if (a4 & 1) == 0 || (*(a2 + 72))
  {
    goto LABEL_31;
  }

  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  if (v11 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_108;
    }
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 < v13)
  {
    v4 = *(a2 + 56);
    v14 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = v4 >> 62;
    if (!(v4 >> 62))
    {
      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > v12)
      {
        goto LABEL_14;
      }

      goto LABEL_113;
    }

LABEL_108:
    if (v4 < 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = v14;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      return;
    }

    if (_CocoaArrayWrapper.endIndex.getter() > v12)
    {
LABEL_14:
      if ((v4 & 0xC000000000000001) != 0)
      {
        type metadata accessor for ICSelectionStateModel(0);

        v15 = 0;
        do
        {
          v16 = v15 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v15);
          v15 = v16;
        }

        while (v12 + 1 != v16);
        v17 = v12 + 1;
        if (!v5)
        {
LABEL_18:
          v9 = 0;
          v4 &= 0xFFFFFFFFFFFFFF8uLL;
          v18 = v4 + 32;
          v12 = (2 * v17) | 1;
          if (v12)
          {
LABEL_23:
            v6 = v18;
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v23 = swift_dynamicCastClass();
            if (!v23)
            {
              swift_unknownObjectRelease();
              v23 = _swiftEmptyArrayStorage;
            }

            v24 = v23[2];

            if (!__OFSUB__(v12 >> 1, v9))
            {
              if (v24 == (v12 >> 1) - v9)
              {
                v22 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (v22)
                {
LABEL_30:
                  *(a2 + 56) = v22;

                  goto LABEL_31;
                }

                v22 = _swiftEmptyArrayStorage;
LABEL_29:
                swift_unknownObjectRelease();
                goto LABEL_30;
              }

              goto LABEL_115;
            }

LABEL_114:
            __break(1u);
LABEL_115:
            swift_unknownObjectRelease();
            v18 = v6;
          }

LABEL_22:
          sub_100374ECC(v4, v18, v9, v12);
          v22 = v21;
          goto LABEL_29;
        }
      }

      else
      {

        v17 = v12 + 1;
        if (!v5)
        {
          goto LABEL_18;
        }
      }

      v4 = _CocoaArrayWrapper.subscript.getter();
      v9 = v19;
      v12 = v20;
      if (v20)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

LABEL_31:
  v25 = *(a2 + 40) == 0;
  while (1)
  {
    v26 = *(a2 + 56);
    v27 = v26 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27 == 0 || v25)
    {
      break;
    }

    v28 = *(a2 + 56);
    if (v28 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
      if (v29)
      {
LABEL_38:
        v30 = v29 - 1;
        if (__OFSUB__(v29, 1))
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        if ((v28 & 0xC000000000000001) != 0)
        {

          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v30 & 0x8000000000000000) != 0)
          {
            goto LABEL_94;
          }

          if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_95;
          }

          v31 = *(v28 + 8 * v30 + 32);
        }

        goto LABEL_46;
      }
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_38;
      }
    }

    v31 = 0;
LABEL_46:
    v32 = a3;
    v69 = v31;
    v33 = *(a2 + 24);
    if (v33)
    {

      v33(&v69);
      sub_10000C840(v33);
      v32 = a3;
    }

    v34 = *(a2 + 40);
    if (v34 && (v68 = v32, v35 = v32, sub_100010854(v34), v36 = v34(&v68, &v69), sub_10000C840(v34), v35, (v36 & 1) != 0))
    {
      v37 = *(a2 + 56);
      if (v37 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_61:
          __break(1u);
          break;
        }
      }

      else if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v38 = *(a2 + 56);
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(a2 + 56) = v38;
      if (!isUniquelyReferenced_nonNull_bridgeObject || v38 < 0 || (v38 & 0x4000000000000000) != 0)
      {
        v38 = sub_10030FFBC(v38);
        *(a2 + 56) = v38;
      }

      v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        goto LABEL_96;
      }

      v41 = v40 - 1;
      v42 = *((v38 & 0xFFFFFFFFFFFFFF8) + 8 * v41 + 0x20);
      *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) = v41;
      *(a2 + 56) = v38;

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }
  }

  v43 = *(a2 + 56);
  if (!(v43 >> 62))
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_64;
  }

LABEL_99:
  v44 = _CocoaArrayWrapper.endIndex.getter();
LABEL_64:
  if (v44 >= *(a2 + 8))
  {
    goto LABEL_73;
  }

LABEL_65:
  v45 = a3;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100015450();
  v46 = *(a2 + 56);
  if (v46 >> 62)
  {
    v47 = _CocoaArrayWrapper.endIndex.getter();
    if (!v47)
    {
      goto LABEL_101;
    }

LABEL_69:
    v48 = *(a2 + 56);
    if (v48 >> 62)
    {
      v66 = _CocoaArrayWrapper.endIndex.getter();
      v50 = v66 - 1;
      if (!__OFSUB__(v66, 1))
      {
        goto LABEL_102;
      }
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v50 = v49 - 1;
      if (!__OFSUB__(v49, 1))
      {
        goto LABEL_102;
      }
    }

    __break(1u);
LABEL_73:
    type metadata accessor for ICSelectionStateModel(0);
    while (1)
    {

      v51 = Array.firstIndex(matching:)();
      v53 = v52;

      v54 = *(a2 + 56);
      if ((v53 & 1) == 0)
      {
        break;
      }

      v51 = Array.firstIndex(matching:)();
      v56 = v55;

      if ((v56 & 1) == 0)
      {
        v54 = *(a2 + 56);
        v57 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(a2 + 56) = v54;
        if (!v57 || v54 < 0 || (v54 & 0x4000000000000000) != 0)
        {
          v54 = sub_10030FFBC(v54);
          *(a2 + 56) = v54;
        }

        v58 = v54 & 0xFFFFFFFFFFFFFF8;
        v59 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v51 >= v59)
        {
          goto LABEL_98;
        }

LABEL_87:
        v61 = v59 - 1;
        v62 = v58 + 8 * v51;
        v63 = *(v62 + 32);
        memmove((v62 + 32), (v62 + 40), 8 * (v59 - 1 - v51));
        *(v58 + 16) = v61;
        *(a2 + 56) = v54;
      }

      v64 = *(a2 + 56);
      if (v64 >> 62)
      {
        v65 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v65 < *(a2 + 8))
      {
        goto LABEL_65;
      }
    }

    v60 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(a2 + 56) = v54;
    if (!v60 || v54 < 0 || (v54 & 0x4000000000000000) != 0)
    {
      v54 = sub_10030FFBC(v54);
      *(a2 + 56) = v54;
    }

    v58 = v54 & 0xFFFFFFFFFFFFFF8;
    v59 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51 >= v59)
    {
      goto LABEL_97;
    }

    goto LABEL_87;
  }

  v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v47)
  {
    goto LABEL_69;
  }

LABEL_101:
  v50 = 0;
LABEL_102:
  *(a2 + 64) = v50;
  *(a2 + 72) = v47 == 0;

  *(a2 + 16) = 0;
}

uint64_t sub_100010854(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1000108C4(char *a1, void *a2, void *a3)
{
  v6 = sub_10015DA04(&qword_1006BCC20);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v98 - v10;
  v12 = type metadata accessor for URL();
  v108 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v110 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v103 = &v98 - v16;
  __chkstk_darwin(v15);
  v102 = &v98 - v17;
  v18 = sub_10015DA04(&qword_1006BFEB0);
  v19 = __chkstk_darwin(v18 - 8);
  v117 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v98 - v21;
  sub_1000112E0(a1, a3);
  v113 = a3;
  sub_100011DE4(a1, a2, a3);
  v111 = a1;
  v23 = *&a1[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentFirstVisibleObjectIDURLForContainerObjectIDURL];
  v109 = v11;
  if (!v23 || !*(v23 + 16))
  {
    v87 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentFirstVisibleObjectIDForContainerObjectID;
    v88 = v111;
    swift_beginAccess();
    *&v88[v87] = 0;

LABEL_48:
    v89 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectIDURL;
    v90 = v111;
    swift_beginAccess();
    sub_100006038(&v90[v89], v9, &qword_1006BCC20);
    LODWORD(v90) = (*(v108 + 48))(v9, 1, v12);
    sub_1000073B4(v9, &qword_1006BCC20);
    if (v90 != 1)
    {
      v91 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID;
      if (!*&v111[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID])
      {
        v92 = &v111[v89];
        v93 = v109;
        sub_100006038(v92, v109, &qword_1006BCC20);
        v94 = v113;
        v95 = sub_10000F54C(v93, v113);
        v96 = sub_10000F864(v95, v94);

        sub_1000073B4(v93, &qword_1006BCC20);
        if (v96)
        {
          v97 = *&v111[v91];
          *&v111[v91] = v96;
        }
      }
    }

    return;
  }

  v98 = v9;

  v24 = sub_100190314(_swiftEmptyArrayStorage);
  v25 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentFirstVisibleObjectIDForContainerObjectID;
  v26 = v111;
  swift_beginAccess();
  v101 = v25;
  *&v26[v25] = v24;

  v27 = 0;
  v100 = v23;
  v28 = v23 + 64;
  v29 = 1 << *(v23 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v23 + 64);
  v32 = (v29 + 63) >> 6;
  v112 = (v108 + 16);
  v115 = (v108 + 32);
  v116 = v12;
  v106 = v23 + 64;
  v107 = (v108 + 56);
  v104 = (v108 + 8);
  v105 = v32;
  v33 = v110;
  v34 = v117;
  v114 = v22;
  if (!v31)
  {
    goto LABEL_10;
  }

  do
  {
    while (1)
    {
      v35 = v27;
LABEL_18:
      v38 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v39 = v100;
      v40 = v108;
      v41 = *(v108 + 72) * (v38 | (v35 << 6));
      v42 = *(v108 + 16);
      v43 = v102;
      v44 = v116;
      v42(v102, *(v100 + 48) + v41, v116);
      v45 = v103;
      v42(v103, *(v39 + 56) + v41, v44);
      v46 = sub_10015DA04(&qword_1006BFEB8);
      v47 = *(v46 + 48);
      v48 = *(v40 + 32);
      v34 = v117;
      v48(v117, v43, v44);
      v48((v34 + v47), v45, v44);
      (*(*(v46 - 8) + 56))(v34, 0, 1, v46);
      v11 = v109;
      v33 = v110;
      v22 = v114;
LABEL_19:
      sub_1001F7498(v34, v22, &qword_1006BFEB0);
      v49 = sub_10015DA04(&qword_1006BFEB8);
      if ((*(*(v49 - 8) + 48))(v22, 1, v49) == 1)
      {

        v9 = v98;
        v12 = v116;
        goto LABEL_48;
      }

      v50 = *(v49 + 48);
      v51 = v116;
      v52 = *v115;
      (*v115)(v33, &v22[v50], v116);
      v52(v11, v22, v51);
      v53 = *v107;
      (*v107)(v11, 0, 1, v51);
      v54 = sub_10000F54C(v11, v113);
      v55 = v33;
      sub_1000073B4(v11, &qword_1006BCC20);
      if (v54)
      {
        break;
      }

      (*v104)(v33, v51);
LABEL_8:
      v22 = v114;
      v32 = v105;
      v28 = v106;
      v34 = v117;
      v33 = v55;
      if (!v31)
      {
        goto LABEL_10;
      }
    }

    (*v112)(v11, v33, v51);
    v53(v11, 0, 1, v51);
    v56 = sub_10000F54C(v11, v113);
    sub_1000073B4(v11, &qword_1006BCC20);
    if (!v56)
    {
      (*v104)(v55, v51);

      goto LABEL_8;
    }

    v57 = v101;
    v58 = v111;
    swift_beginAccess();
    v59 = *&v58[v57];
    v34 = v117;
    if (v59)
    {
      v99 = v56;
      if ((v59 & 0xC000000000000001) != 0)
      {
        if (v59 >= 0)
        {
          v60 = v59 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          v60 = v59;
        }

        v61 = v54;
        v62 = v56;
        v63 = __CocoaDictionary.count.getter();
        v64 = v101;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_55;
        }

        v65 = sub_1001F6768(v60, v63 + 1);
        v66 = v111;
        *&v111[v64] = v65;
      }

      else
      {
        v68 = v54;
        v69 = v56;
        v66 = v111;
        v64 = v101;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = *&v66[v64];
      v71 = v118;
      *&v66[v64] = 0x8000000000000000;
      v73 = sub_1002DF354(v54);
      v74 = v71[2];
      v75 = (v72 & 1) == 0;
      v76 = v74 + v75;
      if (__OFADD__(v74, v75))
      {
        goto LABEL_54;
      }

      v77 = v72;
      if (v71[3] >= v76)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002E812C();
        }
      }

      else
      {
        sub_1002E25D8(v76, isUniquelyReferenced_nonNull_native);
        v78 = sub_1002DF354(v54);
        if ((v77 & 1) != (v79 & 1))
        {
          goto LABEL_57;
        }

        v73 = v78;
      }

      v80 = v118;
      v81 = v99;
      if (v77)
      {
        v82 = v118[7];
        v83 = *(v82 + 8 * v73);
        *(v82 + 8 * v73) = v99;
      }

      else
      {
        v118[(v73 >> 6) + 8] |= 1 << v73;
        *(v80[6] + 8 * v73) = v54;
        *(v80[7] + 8 * v73) = v81;
        v84 = v80[2];
        v85 = __OFADD__(v84, 1);
        v86 = v84 + 1;
        if (v85)
        {
          goto LABEL_56;
        }

        v80[2] = v86;
      }

      *&v111[v101] = v80;
      swift_endAccess();

      v33 = v110;
      (*v104)(v110, v51);
      v11 = v109;
    }

    else
    {
      swift_endAccess();

      v33 = v55;
      (*v104)(v55, v51);
    }

    v22 = v114;
    v32 = v105;
    v28 = v106;
  }

  while (v31);
LABEL_10:
  if (v32 <= v27 + 1)
  {
    v36 = v27 + 1;
  }

  else
  {
    v36 = v32;
  }

  v37 = v36 - 1;
  while (1)
  {
    v35 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v35 >= v32)
    {
      v67 = sub_10015DA04(&qword_1006BFEB8);
      (*(*(v67 - 8) + 56))(v34, 1, 1, v67);
      v31 = 0;
      v27 = v37;
      goto LABEL_19;
    }

    v31 = *(v28 + 8 * v35);
    ++v27;
    if (v31)
    {
      v27 = v35;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  sub_1000054A4(0, &qword_1006BFEC0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000112E0(uint64_t a1, void *a2)
{
  v100 = a2;
  v3 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v3 - 8);
  v95 = &v88 - v4;
  v5 = type metadata accessor for URL();
  v96 = *(v5 - 8);
  v97 = v5;
  v6 = __chkstk_darwin(v5);
  v92 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v88 - v9;
  v11 = __chkstk_darwin(v8);
  v94 = &v88 - v12;
  __chkstk_darwin(v11);
  v93 = &v88 - v13;
  v14 = sub_10015DA04(&unk_1006BFEA0);
  v15 = __chkstk_darwin(v14 - 8);
  v98 = (&v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v18 = &v88 - v17;
  v19 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = (&v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v25 = &v88 - v24;
  v26 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  v99 = a1;
  sub_100006038(a1 + v26, v18, &unk_1006BFEA0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_1000073B4(v18, &unk_1006BFEA0);
  }

  sub_100011D7C(v18, v25, type metadata accessor for ICSelectionStateModel.ObjectSelection);
  sub_100013DC8(v25, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v35 = *v23;

        v38 = sub_10000F864(v35, v100);
        if (v38)
        {
          v39 = "ic_isNoteType";
          goto LABEL_31;
        }
      }

      else
      {
        v35 = *v23;

        v38 = sub_10000F864(v35, v100);
        if (v38)
        {
          v39 = "ic_isInvitationType";
LABEL_31:
          v80 = v38;
          v81 = [v38 v39];

          result = sub_100013E2C(v25);
          if (v81)
          {
            return result;
          }

          goto LABEL_47;
        }
      }

      sub_100013E2C(v25);
LABEL_34:

LABEL_47:
      v37 = v98;
      (*(v20 + 56))(v98, 1, 1, v19);
      goto LABEL_48;
    }

    v64 = v25;
    v65 = v26;
    v66 = *v23;
    v67 = v23[1];

    if (v66)
    {
      v68 = v66;
      v69 = sub_10000F864(v66, v100);

      if (!v69)
      {

        sub_100013E2C(v64);
LABEL_46:
        v26 = v65;
        goto LABEL_47;
      }

      v70 = [v69 ic_isBaseAttachmentType];

      if (v70)
      {
        if (v67)
        {
          v71 = v67;
          v72 = sub_10000F864(v67, v100);

          if (v72)
          {
            v73 = [v72 ic_isNoteType];

            result = sub_100013E2C(v64);
            v26 = v65;
            if (v73)
            {
              return result;
            }

            goto LABEL_47;
          }

          sub_100013E2C(v64);
        }

        else
        {
          sub_100013E2C(v64);
        }

        goto LABEL_46;
      }

      sub_100013E2C(v64);
    }

    else
    {
      sub_100013E2C(v64);
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload)
  {
    v29 = v96;
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v23;
      v31 = v97;
      (*(v96 + 32))(v10, v30, v97);
      v32 = v95;
      (*(v29 + 16))(v95, v10, v31);
      (*(v29 + 56))(v32, 0, 1, v31);
      v33 = v100;
      v34 = sub_10000F54C(v32, v100);
      v35 = sub_10000F864(v34, v33);

      sub_1000073B4(v32, &qword_1006BCC20);
      if (v35)
      {
        v36 = [v35 ic_isNoteType];
        (*(v29 + 8))(v10, v31);
        sub_100013E2C(v25);
        if (v36)
        {
          v37 = v98;
          *v98 = v35;
          v37[1] = 0;
LABEL_28:
          swift_storeEnumTagMultiPayload();
          (*(v20 + 56))(v37, 0, 1, v19);
LABEL_48:
          v86 = v99;
          swift_beginAccess();
          v62 = v86 + v26;
          v63 = v37;
          goto LABEL_49;
        }

        goto LABEL_34;
      }

      (*(v29 + 8))(v10, v31);
    }

    else
    {
      v74 = v92;
      v75 = v97;
      (*(v96 + 32))(v92, v23, v97);
      v76 = v95;
      (*(v29 + 16))(v95, v74, v75);
      (*(v29 + 56))(v76, 0, 1, v75);
      v77 = v100;
      v78 = sub_10000F54C(v76, v100);
      v35 = sub_10000F864(v78, v77);

      sub_1000073B4(v76, &qword_1006BCC20);
      if (v35)
      {
        v79 = [v35 ic_isInvitationType];
        (*(v29 + 8))(v74, v75);
        sub_100013E2C(v25);
        if (v79)
        {
          v37 = v98;
          *v98 = v35;
          v37[1] = 0;
          goto LABEL_28;
        }

        goto LABEL_34;
      }

      (*(v29 + 8))(v74, v75);
    }

    sub_100013E2C(v25);
    goto LABEL_47;
  }

  v91 = v26;
  v92 = v25;
  v40 = *(sub_10015DA04(&unk_1006C43C0) + 48);
  v41 = v96;
  v42 = v97;
  v43 = *(v96 + 32);
  v44 = v93;
  v43(v93, v23, v97);
  v43(v94, (v23 + v40), v42);
  v45 = v95;
  v90 = v41[2];
  v90(v95, v44, v42);
  v89 = v41[7];
  v89(v45, 0, 1, v42);
  v46 = v100;
  v47 = sub_10000F54C(v45, v100);
  v48 = sub_10000F864(v47, v46);

  sub_1000073B4(v45, &qword_1006BCC20);
  if (!v48)
  {
    v82 = v41[1];
    v82(v94, v42);
    v82(v44, v42);
LABEL_41:
    v85 = v92;
LABEL_42:
    sub_100013E2C(v85);
    v26 = v91;
    goto LABEL_47;
  }

  if (([v48 ic_isBaseAttachmentType] & 1) == 0)
  {

    v83 = v97;
    v84 = *(v96 + 8);
    v84(v94, v97);
    v84(v93, v83);
    goto LABEL_41;
  }

  v88 = v48;
  v50 = v94;
  v49 = v95;
  v51 = v97;
  v90(v95, v94, v97);
  v89(v49, 0, 1, v51);
  v52 = v100;
  v53 = sub_10000F54C(v49, v100);
  v54 = sub_10000F864(v53, v52);

  sub_1000073B4(v49, &qword_1006BCC20);
  v56 = v92;
  v55 = v93;
  if (!v54)
  {

    v87 = *(v96 + 8);
    v87(v50, v51);
    v87(v55, v51);
    v85 = v56;
    goto LABEL_42;
  }

  v57 = [v54 ic_isNoteType];
  v58 = *(v96 + 8);
  v58(v50, v51);
  v58(v55, v51);
  sub_100013E2C(v56);
  if ((v57 & 1) == 0)
  {

    v26 = v91;
    goto LABEL_47;
  }

  v59 = v98;
  *v98 = v88;
  v59[1] = v54;
  v59[2] = 0;
  swift_storeEnumTagMultiPayload();
  (*(v20 + 56))(v59, 0, 1, v19);
  v60 = v99;
  v61 = v91;
  swift_beginAccess();
  v62 = v60 + v61;
  v63 = v59;
LABEL_49:
  sub_10000A49C(v63, v62, &unk_1006BFEA0);
  return swift_endAccess();
}

uint64_t sub_100011D7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100011DE4(void *a1, void *a2, uint64_t a3)
{
  v247 = a2;
  v249 = a1;
  v4 = *a3;
  v5 = *(a3 + 40);
  v7 = *(a3 + 48);
  v6 = *(a3 + 56);
  v241 = *(a3 + 32);
  v242 = v6;
  v8 = *(a3 + 72);
  v243 = *(a3 + 64);
  v244 = v7;
  v239 = v5;
  v240 = v8;
  v231 = type metadata accessor for URL();
  v233 = *(v231 - 8);
  __chkstk_darwin(v231);
  v235 = &v226[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10015DA04(&qword_1006BCC20);
  v11 = __chkstk_darwin(v10 - 8);
  v230 = &v226[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v236 = &v226[-v13];
  v14 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
  v245 = *(v14 - 8);
  v246 = v14;
  v15 = __chkstk_darwin(v14);
  v232 = &v226[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v234 = &v226[-v18];
  __chkstk_darwin(v17);
  v20 = &v226[-v19];
  v21 = sub_10015DA04(&qword_1006BEF28);
  v22 = __chkstk_darwin(v21 - 8);
  v237 = &v226[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v238 = &v226[-v25];
  v26 = __chkstk_darwin(v24);
  v28 = &v226[-v27];
  v29 = __chkstk_darwin(v26);
  v31 = &v226[-v30];
  v32 = __chkstk_darwin(v29);
  v34 = &v226[-v33];
  v35 = __chkstk_darwin(v32);
  v37 = &v226[-v36];
  v38 = __chkstk_darwin(v35);
  v40 = &v226[-v39];
  if (v4)
  {
    v248 = a3;
    if ((*(a3 + 16))(v38))
    {
      v41 = sub_100013FA4();
      v228 = v31;
      if (v41 || (v41 = sub_1001B9EA4()) != 0)
      {
        v229 = v41;
        if (v4())
        {
          v227 = 0;
        }

        else
        {
          v46 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
          v47 = v249;
          swift_beginAccess();
          v48 = v47 + v46;
          v31 = v228;
          sub_100006038(v48, v40, &qword_1006BEF28);
          v227 = (*(v245 + 48))(v40, 1, v246) == 1;
          sub_1000073B4(v40, &qword_1006BEF28);
        }
      }

      else
      {
        v229 = 0;
        v227 = 1;
      }

      v49 = v4();
      v50 = v249;
      if (v49)
      {
        v51 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
        swift_beginAccess();
        sub_100006038(v50 + v51, v37, &qword_1006BEF28);
        v52 = (*(v245 + 48))(v37, 1, v246);
        sub_1000073B4(v37, &qword_1006BEF28);
        v53 = v52 == 1;
        v50 = v249;
        if (v53)
        {
          if (v227)
          {
            goto LABEL_51;
          }

          v54 = v229;
          if (v229)
          {
            v55 = v229;
            sub_1001F6D70(v54, v248);
            v57 = v56;

            v31 = v228;
            v58 = v245;
            if (v57)
            {
              objc_opt_self();
              v59 = swift_dynamicCastObjCClass();
              if (v59 || (objc_opt_self(), (v59 = swift_dynamicCastObjCClass()) != 0))
              {
                v201 = v246;
                v202 = v247;
                *v34 = v59;
                v34[1] = v202;
                swift_storeEnumTagMultiPayload();
                v203 = *(v58 + 56);
                v203(v34, 0, 1, v201);
                sub_100011D7C(v34, v20, type metadata accessor for ICSelectionStateModel.ContainerSelection);
                v204 = v20;
                v205 = v228;
                sub_100011D7C(v204, v228, type metadata accessor for ICSelectionStateModel.ContainerSelection);
                v203(v205, 0, 1, v201);
                swift_beginAccess();
                v206 = v202;
                v207 = v50 + v51;
                v208 = v205;
LABEL_133:
                sub_10000A49C(v208, v207, &qword_1006BEF28);
LABEL_140:
                swift_endAccess();
                return;
              }

              swift_unknownObjectRelease();
            }

            v223 = *(v58 + 56);
            v224 = v246;
            v223(v34, 1, 1, v246);
            sub_1000073B4(v34, &qword_1006BEF28);
            v223(v31, 1, 1, v224);
          }

          else
          {
            (*(v245 + 56))(v31, 1, 1, v246);
          }

          swift_beginAccess();
          v207 = v50 + v51;
LABEL_132:
          v208 = v31;
          goto LABEL_133;
        }
      }

      if (v244 && (v60 = (v244)()) != 0)
      {
        v61 = v60;
        v62 = v246;
        v63 = v243;
        if (!v243)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v64 = v241;
        v65 = v241;
        v62 = v246;
        if (!v64)
        {
          goto LABEL_50;
        }

        v61 = v65;
        v63 = v243;
        if (!v243)
        {
LABEL_34:
          v67 = v239;
          v66 = v239;
          if (v67)
          {
LABEL_35:
            v68 = v66;
            v69 = objc_allocWithZone(type metadata accessor for FolderListSelectionValidator());
            v70 = objc_opt_self();
            v71 = v61;
            v72 = v68;
            v73 = [v70 hidesSystemPaperNotesInCustomFolders];
            v74 = [v70 hidesMathNotesInCustomFolders];
            v75 = v70;
            v76 = v71;
            v77 = [v69 initWithModernContext:v71 htmlContext:v72 hidesSystemPaperNotesInCustomFolders:v73 hidesMathNotesInCustomFolders:v74 hidesCallNotesInCustomFolders:{objc_msgSend(v75, "hidesCallNotesInCustomFolders")}];

            v78 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
            swift_beginAccess();
            sub_100006038(v78 + v50, v28, &qword_1006BEF28);
            if ((*(v245 + 48))(v28, 1, v62) == 1)
            {

LABEL_37:
              v79 = v247;
              goto LABEL_38;
            }

            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload <= 2)
            {
              if (!EnumCaseMultiPayload)
              {
                v125 = *v28;
                v124 = *(v28 + 1);
                v126 = v76;
                sub_1001C4E38(v125, v124);
                isa = Data._bridgeToObjectiveC()().super.isa;
                v128 = [objc_opt_self() tagSelectionWithData:isa managedObjectContext:v126];

                sub_10019671C(v125, v124);
                if (v128)
                {
                  if ([v128 isNonEmpty])
                  {
                    v243 = v72;
                    v244 = v126;
                    v129 = v228;
                    v131 = v246;
                    v130 = v247;
                    *v228 = v128;
                    v129[1] = v130;
                    swift_storeEnumTagMultiPayload();
                    (*(v245 + 56))(v129, 0, 1, v131);
                    swift_beginAccess();
                    v132 = v130;
                    v133 = v128;
                    sub_10000A49C(v129, v78 + v50, &qword_1006BEF28);
                    swift_endAccess();
                    if (v229)
                    {
                      v134 = v132;
                      v135 = v229;
                      v136 = sub_100014954(v135);
                      if (!v136)
                      {

                        sub_10019671C(v125, v124);
                        v79 = v134;
                        goto LABEL_39;
                      }

                      v137 = v136;
                      v138 = sub_100014A9C(v136, 0, v128);

                      v104 = v135;
                      sub_10019671C(v125, v124);

                      v50 = v249;
                      v79 = v134;
                      v80 = v228;
                      v62 = v246;
                      if (v138)
                      {
LABEL_39:

                        goto LABEL_51;
                      }

LABEL_113:
                      v209 = v104;
                      sub_1001F6D70(v229, v248);
                      v211 = v210;

                      v212 = v245;
                      v213 = v247;
                      if (v211)
                      {
                        objc_opt_self();
                        v214 = swift_dynamicCastObjCClass();
                        if (v214 || (objc_opt_self(), (v214 = swift_dynamicCastObjCClass()) != 0))
                        {
                          v215 = v238;
                          *v238 = v214;
                          v215[1] = v213;
                          swift_storeEnumTagMultiPayload();
                          v216 = *(v212 + 56);
                          v216(v215, 0, 1, v62);
                          v217 = v215;
                          v218 = v234;
                          sub_100011D7C(v217, v234, type metadata accessor for ICSelectionStateModel.ContainerSelection);
                          sub_100011D7C(v218, v80, type metadata accessor for ICSelectionStateModel.ContainerSelection);
                          v216(v80, 0, 1, v62);
LABEL_139:
                          swift_beginAccess();
                          sub_10000A49C(v80, v78 + v50, &qword_1006BEF28);
                          goto LABEL_140;
                        }

                        swift_unknownObjectRelease();
                      }

                      v219 = *(v212 + 56);
                      v220 = v238;
                      v219(v238, 1, 1, v62);
                      sub_1000073B4(v220, &qword_1006BEF28);
                      v219(v80, 1, 1, v62);
                      goto LABEL_139;
                    }

                    sub_10019671C(v125, v124);
                    v79 = v132;
                    goto LABEL_137;
                  }

                  sub_10019671C(v125, v124);
                }

                else
                {

                  sub_10019671C(v125, v124);
                }

                goto LABEL_105;
              }

              if (EnumCaseMultiPayload == 1)
              {
                v244 = v76;
                v82 = sub_10015DA04(&qword_1006BF058);
                sub_1001F7498(&v28[*(v82 + 48)], v236, &qword_1006BCC20);
                v83 = String._bridgeToObjectiveC()();

                v84 = [objc_opt_self() allTypes];
                type metadata accessor for VirtualSmartFolderItemIdentifierTypes(0);
                v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v250 = v83;
                __chkstk_darwin(v86);
                *&v226[-16] = &v250;
                LOBYTE(v84) = sub_100474ED0(sub_1001F7500, &v226[-32], v85);

                if (v84)
                {
                  v87 = objc_opt_self();
                  v88 = v83;
                  v89 = [v87 systemSectionIdentifier];
                  v90 = sub_10000F54C(v236, v248);
                  v91 = [objc_allocWithZone(ICVirtualSmartFolderItemIdentifier) initWithType:v88 parentIdentifier:v89 accountObjectID:v90];

                  v92 = v228;
                  v93 = v246;
                  v94 = v247;
                  *v228 = v91;
                  v92[1] = v94;
                  swift_storeEnumTagMultiPayload();
                  (*(v245 + 56))(v92, 0, 1, v93);
                  swift_beginAccess();
                  v95 = v94;
                  v96 = v91;
                  sub_10000A49C(v92, v78 + v50, &qword_1006BEF28);
                  swift_endAccess();
                  v97 = v229;
                  if (v229)
                  {
                    v249 = v95;
                    v243 = v72;
                    sub_10015DA04(&unk_1006BD390);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_100534670;
                    *(inited + 32) = v96;
                    v99 = v97;
                    v100 = v96;
                    v101 = sub_1000143C4(inited);
                    swift_setDeallocating();
                    swift_arrayDestroy();
                    v102 = sub_100014954(v99);
                    if (v102)
                    {
                      v103 = v102;
                      LODWORD(v242) = sub_100014A9C(v102, v101, 0);

                      v104 = v99;

                      sub_1000073B4(v236, &qword_1006BCC20);
                      v79 = v249;
                      v80 = v228;
                      v62 = v246;
                      if (v242)
                      {
                        goto LABEL_39;
                      }

                      goto LABEL_113;
                    }

                    sub_1000073B4(v236, &qword_1006BCC20);
                    v225 = v249;
LABEL_148:
                    v79 = v225;
                    goto LABEL_39;
                  }

                  sub_1000073B4(v236, &qword_1006BCC20);

                  v79 = v95;
LABEL_137:
                  v80 = v228;
                  v62 = v246;
                  if (v227)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_138;
                }

                sub_1000073B4(v236, &qword_1006BCC20);

LABEL_105:
                v79 = v247;
                goto LABEL_106;
              }

              v243 = v78;
              v249 = v77;
              v155 = v233;
              v156 = v235;
              v157 = v231;
              (*(v233 + 32))(v235, v28, v231);
              v158 = v230;
              (*(v155 + 16))(v230, v156, v157);
              (*(v155 + 56))(v158, 0, 1, v157);
              v159 = v248;
              v160 = sub_10000F54C(v158, v248);
              v161 = sub_10000F864(v160, v159);

              sub_1000073B4(v158, &qword_1006BCC20);
              if (v161)
              {
                v162 = v157;
                v163 = [v161 ic_isContainerType];
                v164 = v247;
                if (v163)
                {
                  v244 = v76;
                  v165 = v228;
                  *v228 = v161;
                  v165[1] = v164;
                  swift_storeEnumTagMultiPayload();
                  (*(v245 + 56))(v165, 0, 1, v62);
                  v78 = v243;
                  swift_beginAccess();
                  v166 = v164;
                  v167 = v161;
                  sub_10000A49C(v165, v78 + v50, &qword_1006BEF28);
                  swift_endAccess();
                  v168 = v229;
                  v169 = v249;
                  if (!v229)
                  {
                    (*(v233 + 8))(v235, v162);

                    v79 = v166;
                    v80 = v228;
                    if (v227)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_138;
                  }

                  v242 = v166;
                  sub_10015DA04(&unk_1006BD390);
                  v170 = swift_initStackObject();
                  *(v170 + 16) = xmmword_100534670;
                  *(v170 + 32) = v167;
                  v171 = v168;
                  v172 = v167;
                  v173 = sub_1000143C4(v170);
                  swift_setDeallocating();
                  swift_arrayDestroy();
                  v174 = v171;
                  v175 = sub_100014954(v171);
                  if (!v175)
                  {

                    (*(v233 + 8))(v235, v231);
                    v225 = v242;
                    goto LABEL_148;
                  }

                  v176 = v175;
                  v177 = sub_100014A9C(v175, v173, 0);

                  v104 = v174;

                  (*(v233 + 8))(v235, v231);
                  v79 = v242;
LABEL_92:
                  v80 = v228;
                  v62 = v246;
                  if (v177)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_113;
                }

                (*(v233 + 8))(v235, v157);

                v79 = v164;
              }

              else
              {
                (*(v155 + 8))(v235, v157);

                v79 = v247;
              }

              v80 = v228;
              v78 = v243;
              if (v227)
              {
                goto LABEL_39;
              }

              goto LABEL_111;
            }

            if (EnumCaseMultiPayload == 3)
            {
              v140 = *v28;
              v139 = *(v28 + 1);
              if (!*v28)
              {

                goto LABEL_37;
              }

              v141 = [*v28 isNonEmpty];
              v142 = v247;
              if (v141)
              {
                v244 = v76;
                v115 = v247;
                if (!v247)
                {
                  v143 = v139;
                  v115 = v139;
                }

                v243 = v139;
                v144 = v228;
                *v228 = v140;
                v144[1] = v115;
                v145 = v246;
                swift_storeEnumTagMultiPayload();
                (*(v245 + 56))(v144, 0, 1, v145);
                v146 = v249;
                swift_beginAccess();
                v242 = v115;
                v147 = v142;
                v148 = v140;
                sub_10000A49C(v144, v78 + v146, &qword_1006BEF28);
                swift_endAccess();
                if (v229)
                {
                  v149 = v229;
                  v150 = v244;
                  v151 = [v148 copyWithManagedObjectContext:v244];
                  v152 = v149;
                  v153 = sub_100014954(v149);
                  if (v153)
                  {
                    v154 = v153;
                    LODWORD(v241) = sub_100014A9C(v153, 0, v151);

                    v104 = v152;
                    v247 = v115;
                    v79 = v242;
                    v50 = v249;
                    v80 = v228;
                    v62 = v246;
                    if (v241)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_113;
                  }

                  goto LABEL_146;
                }

LABEL_136:
                v247 = v115;
                v79 = v242;
                v50 = v249;
                goto LABEL_137;
              }
            }

            else
            {
              v243 = v72;
              if (EnumCaseMultiPayload == 4)
              {
                v112 = *v28;
                v113 = *(v28 + 1);
                if (*v28)
                {
                  v244 = v76;
                  v114 = v247;
                  v115 = v247;
                  v116 = v245;
                  if (!v247)
                  {
                    v117 = v113;
                    v115 = v113;
                  }

                  v118 = v228;
                  *v228 = v112;
                  v118[1] = v115;
                  v119 = v246;
                  swift_storeEnumTagMultiPayload();
                  (*(v116 + 56))(v118, 0, 1, v119);
                  v120 = v249;
                  swift_beginAccess();
                  v242 = v115;
                  v121 = v114;
                  v122 = v112;
                  sub_10000A49C(v118, v78 + v120, &qword_1006BEF28);
                  swift_endAccess();
                  v123 = v229;
                  if (v229)
                  {
LABEL_90:
                    sub_10015DA04(&unk_1006BD390);
                    v188 = swift_initStackObject();
                    *(v188 + 16) = xmmword_100534670;
                    *(v188 + 32) = v122;
                    v189 = v123;
                    v190 = v122;
                    v191 = sub_1000143C4(v188);
                    swift_setDeallocating();
                    swift_arrayDestroy();
                    v192 = v189;
                    v193 = sub_100014954(v189);
                    if (v193)
                    {
                      v194 = v193;
                      v177 = sub_100014A9C(v193, v191, 0);

                      v104 = v192;

                      v247 = v115;
                      v79 = v242;
                      v50 = v249;
                      goto LABEL_92;
                    }

LABEL_146:
                    v79 = v242;
                    goto LABEL_39;
                  }

                  goto LABEL_117;
                }

LABEL_94:

                goto LABEL_37;
              }

              v178 = *v28;
              v113 = *(v28 + 1);
              if (!*v28)
              {
                goto LABEL_94;
              }

              v122 = v178;
              v179 = sub_10000F864(v178, v248);
              v142 = v247;
              if (v179)
              {
                v244 = v76;
                v180 = v179;
                v181 = [v179 ic_isContainerType];

                if ((v181 & 1) == 0)
                {

                  v79 = v142;
LABEL_106:
                  v80 = v228;
                  v62 = v246;
                  if (v227)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_111;
                }

                v115 = v142;
                v182 = v245;
                if (!v142)
                {
                  v183 = v113;
                  v115 = v113;
                }

                v184 = v228;
                *v228 = v178;
                v184[1] = v115;
                v185 = v246;
                swift_storeEnumTagMultiPayload();
                (*(v182 + 56))(v184, 0, 1, v185);
                v186 = v249;
                swift_beginAccess();
                v242 = v115;
                v187 = v142;
                sub_10000A49C(v184, v78 + v186, &qword_1006BEF28);
                swift_endAccess();
                v123 = v229;
                if (v229)
                {
                  goto LABEL_90;
                }

LABEL_117:

                goto LABEL_136;
              }
            }

            v79 = v142;
LABEL_38:
            v80 = v228;
            if (v227)
            {
              goto LABEL_39;
            }

LABEL_111:
            if (v229)
            {
              v104 = v229;
              goto LABEL_113;
            }

LABEL_138:

            (*(v245 + 56))(v80, 1, 1, v62);
            goto LABEL_139;
          }

LABEL_50:
          v105 = v229;
          if (v227)
          {
LABEL_51:

            return;
          }

          if (v229)
          {
            v106 = v229;
            sub_1001F6D70(v105, v248);
            v108 = v107;

            v109 = v245;
            if (v108)
            {
              objc_opt_self();
              v110 = swift_dynamicCastObjCClass();
              if (v110)
              {
                v111 = v247;
LABEL_96:
                v195 = v237;
                *v237 = v110;
                v195[1] = v111;
                swift_storeEnumTagMultiPayload();
                v196 = *(v109 + 56);
                v196(v195, 0, 1, v62);
                v197 = v195;
                v198 = v232;
                sub_100011D7C(v197, v232, type metadata accessor for ICSelectionStateModel.ContainerSelection);
                sub_100011D7C(v198, v31, type metadata accessor for ICSelectionStateModel.ContainerSelection);
                v196(v31, 0, 1, v62);
                v199 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
                swift_beginAccess();
                v200 = v111;
LABEL_125:
                v207 = v50 + v199;
                goto LABEL_132;
              }

              objc_opt_self();
              v110 = swift_dynamicCastObjCClass();
              v111 = v247;
              if (v110)
              {
                goto LABEL_96;
              }

              swift_unknownObjectRelease();
            }

            v221 = *(v109 + 56);
            v222 = v237;
            v221(v237, 1, 1, v62);
            sub_1000073B4(v222, &qword_1006BEF28);
            v221(v31, 1, 1, v62);
          }

          else
          {
            (*(v245 + 56))(v31, 1, 1, v62);
          }

          v199 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
          swift_beginAccess();
          goto LABEL_125;
        }
      }

      v66 = v63();
      if (v66)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  v42 = sub_1000167F8();
  v43 = v247;
  if (v42)
  {
    objc_opt_self();
    v44 = swift_dynamicCastObjCClass();
    if (v44)
    {
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

  if (!sub_1000167F8())
  {
LABEL_13:
    v44 = sub_100016590();
    goto LABEL_14;
  }

  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (!v44)
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

LABEL_14:
  v248 = v44;
  sub_10000FE7C(v44, v43);
  v45 = v248;
}

uint64_t type metadata accessor for ICSelectionStateController()
{
  result = qword_1006C42B0;
  if (!qword_1006C42B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100013994(void *a1, void *a2)
{
  v5 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v13 - v6);
  if ([a1 ic_isNoteType])
  {
    result = [a1 ic_isNoteType];
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  result = [a1 ic_isInvitationType];
  if (result)
  {
    result = [a1 ic_isInvitationType];
    if (result)
    {
LABEL_6:
      *v7 = a1;
      v7[1] = a2;
      v9 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
      v10 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
      swift_beginAccess();
      v11 = a2;
      v12 = a1;
      sub_10000A49C(v7, v2 + v10, &unk_1006BFEA0);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100013B2C(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  sub_10000C850(a2, a3, 0);
  return swift_endAccess();
}

uint64_t sub_100013BBC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48);
  v24 = *(a2 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32);
  v25 = v2;
  v26 = *(a2 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64);
  v3 = *(a2 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16);
  v22 = *(a2 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration);
  v23 = v3;
  if (result)
  {
    v4 = result;
    v5 = variable initialization expression of AsyncChannel.Iterator.active;
    v6 = variable initialization expression of AsyncChannel.Iterator.active;
    if (v22)
    {
      v7 = *(&v22 + 1);
      v8 = *(&v23 + 1);
      v10 = *(&v24 + 1);
      v9 = v24;
      v12 = *(&v25 + 1);
      v11 = v25;
      v14 = *(&v26 + 1);
      v13 = v26;
      v15 = *(&v24 + 1);

      v16 = v24;
      sub_100010854(v25);
      sub_100010854(v26);
      v5 = v23;
      v6 = v22;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v11 = 0;
      v12 = 0;
      v10 = 0;
      v9 = 0;
      v7 = 0;
      v8 = 0;
    }

    v21[0] = v6;
    v21[1] = v7;
    v21[2] = v5;
    v21[3] = v8;
    v21[4] = v9;
    v21[5] = v10;
    v21[6] = v11;
    v21[7] = v12;
    v21[8] = v13;
    v21[9] = v14;
    sub_100006038(&v22, v20, &unk_1006C4328);
    v17 = v10;
    v18 = v4;

    v19 = v9;
    sub_100010854(v11);
    sub_100010854(v13);
    sub_1000108C4(v18, 0, v21);

    sub_10000C840(v11);
    sub_10000C840(v13);

    sub_10000C840(v11);
    sub_10000C840(v13);

    return sub_1000073B4(&v22, &unk_1006C4328);
  }

  return result;
}

uint64_t sub_100013DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013E2C(uint64_t a1)
{
  v2 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100013E88(uint64_t a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = [Strong *a2];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_100013FA4()
{
  v1 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(v0 + v11, v3, &unk_1006BFEA0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000073B4(v3, &unk_1006BFEA0);
  }

  else
  {
    sub_10001425C(v3, v10, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    sub_10001425C(v10, v8, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v18 = *v8;
        v19 = *(v8 + 1);

        return v19;
      }

      if (EnumCaseMultiPayload == 4)
      {
        v13 = *v8;

        return v13;
      }
    }

    else if (!EnumCaseMultiPayload)
    {
      v15 = *(sub_10015DA04(&unk_1006C43C0) + 48);
      v16 = type metadata accessor for URL();
      v17 = *(*(v16 - 8) + 8);
      v17(&v8[v15], v16);
      v17(v8, v16);
      return 0;
    }

    sub_1000160E4(v8, type metadata accessor for ICSelectionStateModel.ObjectSelection);
  }

  return 0;
}

uint64_t sub_10001425C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000143C4(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000054A4(0, &qword_1006C1730);
    sub_100005B0C(&qword_1006C0750, &qword_1006C1730);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = NSObject_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100014550(&v9, v7, &qword_1006C1730, NSObject_ptr, &unk_1006C1740, &unk_10053D0F8);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100014550(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = __CocoaSet.member(for:)();

    if (v16)
    {

      sub_1000054A4(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_100266E0C(v14, result + 1, a5, a6, a3);
        v27 = v26[2];
        if (v26[3] <= v27)
        {
          sub_1000222DC(v27 + 1, a5);
        }

        v28 = v15;
        sub_100269330(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_1000054A4(0, a3);
    v18 = NSObject._rawHashValue(seed:)(*(v13 + 40));
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = static NSObject.== infix(_:_:)();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_1000147C4(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

void sub_1000147C4(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_1000222DC(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_10026C228(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_1000220D0(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_1000054A4(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100014954(void *a1)
{
  v2 = [a1 ic_isModernType];
  if (!v2)
  {
    v2 = [a1 ic_isLegacyType];
    if (!v2)
    {
      return 0;
    }
  }

  __chkstk_darwin(v2);
  sub_1000054A4(0, &qword_1006C2D00);
  NSManagedObjectContext.performAndWait<A>(_:)();
  return v4;
}

uint64_t sub_100014A9C(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = [a1 managedObjectContext];
  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = v8;
  __chkstk_darwin(v8);
  NSManagedObjectContext.performAndWait<A>(_:)();

  if (v46)
  {
    goto LABEL_3;
  }

  if (a3)
  {
    v12 = a3;
    if ([v12 isNonEmpty])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for ICQuery();
        v13 = a1;
        v14 = static ICQuery.makeQueryForNotesMatching(_:)();
        __chkstk_darwin(v14);
        NSManagedObjectContext.performAndWait<A>(_:)();

        v10 = v42;
        return v10 & 1;
      }

      goto LABEL_35;
    }
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      v15 = __CocoaSet.count.getter();
      goto LABEL_15;
    }

LABEL_21:
    v10 = 1;
    return v10 & 1;
  }

  v15 = *(a2 + 16);
  if (!v15)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v15 != 1)
  {
LABEL_27:
    v24 = [objc_opt_self() sharedItemIdentifier];
    v25 = sub_10033AC38(v24, a2);

    if (v25)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v26 = *(v4 + OBJC_IVAR___ICFolderListSelectionValidator_modernContext);
        v27 = objc_allocWithZone(ICTagSelection);
        v28 = a1;
        v29 = [v27 initWithManagedObjectContext:v26 mode:1];
        type metadata accessor for ICQuery();
        v30 = static ICQuery.makeQueryForNotesMatching(_:)();
        __chkstk_darwin(v30);
        NSManagedObjectContext.performAndWait<A>(_:)();

        v10 = v44;
        return v10 & 1;
      }
    }

    else
    {
      sub_100224868(a2);
      sub_10026F190(v31);

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v32 = *(v4 + OBJC_IVAR___ICFolderListSelectionValidator_modernContext);
        v33 = objc_allocWithZone(ICTagSelection);
        sub_1000054A4(0, &qword_1006BFEC0);
        sub_100005B0C(&qword_1006C63A0, &qword_1006BFEC0);
        v34 = a1;
        v35 = v32;
        isa = Set._bridgeToObjectiveC()().super.isa;
        v37 = [v33 initWithManagedObjectContext:v35 includedObjectIDs:isa];

        type metadata accessor for ICQuery();
        v38 = static ICQuery.makeQueryForNotesMatching(_:)();
        __chkstk_darwin(v38);
        NSManagedObjectContext.performAndWait<A>(_:)();

        v10 = v45;
        return v10 & 1;
      }
    }

    goto LABEL_3;
  }

  v16 = sub_100015098(a2);
  if (!v16)
  {
LABEL_23:
    v21 = sub_100015098(a2);
    if (v21)
    {
      v22 = v21;
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v10 = sub_100225028(a1, v23);

        return v10 & 1;
      }
    }

    goto LABEL_27;
  }

  v12 = v16;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17 || (v18 = v17, ![v17 ic_isContainerType]))
  {

    goto LABEL_23;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    __chkstk_darwin(v19);
    v20 = a1;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v10 = v43;
    return v10 & 1;
  }

  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (v39)
  {
    v40 = v39;
    v41 = a1;
    v10 = sub_100225400(v40, v18);

    return v10 & 1;
  }

LABEL_35:

LABEL_3:
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1000150AC(uint64_t a1, unint64_t *a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.startIndex.getter();
    v7 = v6;
    v8 = __CocoaSet.endIndex.getter();
    v10 = v9;
    v11 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000153F8(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_1000153F8(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = _HashTable.startBucket.getter();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1000151E0(v5, v7, v4 != 0, a1, a2);
  v14 = v13;
  sub_1000153F8(v5, v7, v4 != 0);
  return v14;
}

void sub_1000151E0(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000054A4(0, a5);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000054A4(0, a5);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v5 = v16;
    v9 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v10 = -1 << *(a4 + 32);
    a1 = v9 & ~v10;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * a1);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v11;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v14 = *(*(a4 + 48) + 8 * a1);

  v15 = v14;
}

uint64_t sub_1000153F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_100015450()
{
  v1 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_10001566C(1, 1);
  v5 = v4;
  v15 = v4;
  v6 = *(v0 + 24);
  if (v6)
  {
    v14 = v4;
    v4 = v6(&v14);
  }

  __chkstk_darwin(v4);
  *(&v13 - 2) = v0;
  *(&v13 - 1) = &v15;
  v7 = sub_100016DD8(sub_10032B1DC, (&v13 - 4));
  v8 = *(v0 + 80);
  if (v8 >> 62)
  {
    v12 = v7;
    v9 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v12;
    if (v9 >= v12)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 < v7)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_100017154(v7, v9);
  v10 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(&v5[v10], v3, &unk_1006BFEA0);
  v11 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  LODWORD(v10) = (*(*(v11 - 8) + 48))(v3, 1, v11);
  sub_1000073B4(v3, &unk_1006BFEA0);
  if (v10 != 1)
  {
    sub_10015DA04(&unk_1006C42C0);
    Array.prepend(_:)();
  }
}

char *sub_10001566C(int a1, int a2)
{
  v3 = v2;
  v44 = a2;
  v46 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10015DA04(&qword_1006BEF28);
  __chkstk_darwin(v8 - 8);
  v47 = &v43[-v9];
  v10 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v14 - 8);
  v16 = &v43[-v15];
  v17 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  v18 = 1;
  if (!(*(v11 + 48))(v3 + v17, 1, v10))
  {
    sub_100015C8C(v3 + v17, v13, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    sub_100015CF4(v16);
    sub_1000160E4(v13, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    v18 = 0;
  }

  v19 = 1;
  (*(v11 + 56))(v16, v18, 1, v10);
  v20 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
  swift_beginAccess();
  if (!(*(v5 + 48))(v3 + v20, 1, v4))
  {
    sub_100015C8C(v3 + v20, v7, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    sub_100016144(v47);
    sub_1000160E4(v7, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    v19 = 0;
  }

  (*(v5 + 56))(v47, v19, 1, v4);
  v21 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentFirstVisibleObjectIDForContainerObjectID;
  swift_beginAccess();
  v22 = *(v3 + v21);
  v23 = *(v3 + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentActivityStreamSelection);
  if (v23)
  {

    [v23 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000054A4(0, &qword_1006BF078);
    if (swift_dynamicCast())
    {
      v24 = v48;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {

    v24 = 0;
  }

  v25 = *(v3 + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentActivityStreamViewMode);
  v26 = *(v3 + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult);
  if (v26)
  {
    [v26 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000054A4(0, &qword_1006BF080);
    if (swift_dynamicCast())
    {
      v27 = v48;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = *(v3 + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID);
  v29 = objc_allocWithZone(ObjectType);
  v30 = v28;
  v31 = [v29 init];
  v32 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  v33 = v31;
  sub_10000A49C(v16, v31 + v32, &unk_1006BFEA0);
  swift_endAccess();
  v34 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
  swift_beginAccess();
  sub_10000A49C(v47, &v33[v34], &qword_1006BEF28);
  swift_endAccess();
  v35 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentFirstVisibleObjectIDForContainerObjectID;
  swift_beginAccess();
  *&v33[v35] = v22;

  v36 = *&v33[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentActivityStreamSelection];
  *&v33[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentActivityStreamSelection] = v24;

  *&v33[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentActivityStreamViewMode] = v25;
  v37 = *&v33[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult];
  *&v33[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = v27;

  v38 = *&v33[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID];
  *&v33[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID] = v28;

  if (v46)
  {
    v39 = sub_100016590();
    if (v39)
    {
      v40 = v39;
      sub_1001BAC68(v39, 0);
LABEL_26:

      sub_100016A60(v44 & 1);
      return v33;
    }

    if (sub_1000167F8())
    {
      objc_opt_self();
      v41 = swift_dynamicCastObjCClass();
      if (v41)
      {
        goto LABEL_25;
      }

      swift_unknownObjectRelease();
    }

    if (!sub_1000167F8())
    {
LABEL_24:
      v41 = sub_100016590();
      goto LABEL_25;
    }

    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    if (!v41)
    {
      swift_unknownObjectRelease();
      goto LABEL_24;
    }

LABEL_25:
    v40 = v41;
    sub_10000FE7C(v41, 0);
    goto LABEL_26;
  }

  return v33;
}

uint64_t sub_100015C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100015CF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  __chkstk_darwin(v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015C8C(v2, v13, type metadata accessor for ICSelectionStateModel.ObjectSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v23 = *v13;
      v24 = *(v13 + 2);
      if (v24)
      {
        v25 = *(v13 + 2);
        v33 = *v13;
        [v25 copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();

        type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
        v26 = swift_dynamicCast();
        v23 = v33;
        v27 = v34;
        if (!v26)
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }

      *a1 = v23;
      *(a1 + 16) = v27;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v16 = *v13;
      v15 = *(v13 + 1);
      if (v15)
      {
        [*(v13 + 1) copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();

        type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
        v17 = swift_dynamicCast();
        v18 = v34;
        if (!v17)
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      *a1 = v16;
      *(a1 + 8) = v18;
    }

    else
    {
      v29 = *v13;
      v28 = *(v13 + 1);
      if (v28)
      {
        [*(v13 + 1) copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();

        type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
        v30 = swift_dynamicCast();
        v31 = v34;
        if (!v30)
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 0;
      }

      *a1 = v29;
      *(a1 + 8) = v31;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v5 + 32))(a1, v13, v4);
  }

  else
  {
    v19 = sub_10015DA04(&unk_1006C43C0);
    v20 = *(v19 + 48);
    v21 = *(v5 + 32);
    v21(v10, v13, v4);
    v21(v8, &v13[v20], v4);
    v22 = *(v19 + 48);
    v21(a1, v10, v4);
    v21((a1 + v22), v8, v4);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000160E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100016144@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015C8C(v2, v9, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = *v9;
        v12 = *(v9 + 1);
        v13 = sub_10015DA04(&qword_1006BF058);
        sub_10000CA08(&v9[*(v13 + 48)], v6);
        v14 = *(v13 + 48);
        *a1 = v11;
        a1[1] = v12;
        sub_10000CA08(v6, a1 + v14);
      }

      else
      {
        v25 = type metadata accessor for URL();
        (*(*(v25 - 8) + 32))(a1, v9, v25);
      }
    }

    else
    {
      *a1 = *v9;
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 3)
  {
    v20 = *v9;
    v21 = *(v9 + 1);
    if (v20)
    {
      [v20 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000054A4(0, &qword_1006C4310);
      if (swift_dynamicCast())
      {
        v22 = v32;
      }

      else
      {
        v22 = 0;
      }

      if (v21)
      {
LABEL_21:
        [v21 copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();

        type metadata accessor for ICSelectionStateModel.ContainerSelectionOptions();
        v23 = swift_dynamicCast();
        v24 = v32;
        if (!v23)
        {
          v24 = 0;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v22 = 0;
      if (v21)
      {
        goto LABEL_21;
      }
    }

    v24 = 0;
LABEL_31:
    *a1 = v22;
    a1[1] = v24;
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 4)
  {
    v15 = *v9;
    v16 = *(v9 + 1);
    if (v15)
    {
      [v15 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000054A4(0, &qword_1006BFBD0);
      if (swift_dynamicCast())
      {
        v17 = v32;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v17 = 0;
      if (v16)
      {
LABEL_12:
        [v16 copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();

        type metadata accessor for ICSelectionStateModel.ContainerSelectionOptions();
        v18 = swift_dynamicCast();
        v19 = v32;
        if (!v18)
        {
          v19 = 0;
        }

        goto LABEL_34;
      }
    }

    v19 = 0;
LABEL_34:
    *a1 = v17;
    a1[1] = v19;
    return swift_storeEnumTagMultiPayload();
  }

  v27 = *v9;
  v26 = *(v9 + 1);
  if (v26)
  {
    [*(v9 + 1) copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for ICSelectionStateModel.ContainerSelectionOptions();
    v28 = swift_dynamicCast();
    v29 = v32;
    if (!v28)
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  *a1 = v27;
  a1[1] = v29;
  return swift_storeEnumTagMultiPayload();
}

id sub_100016590()
{
  v1 = sub_10015DA04(&qword_1006BEF28);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
  swift_beginAccess();
  sub_100006038(v0 + v11, v3, &qword_1006BEF28);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v12 = &qword_1006BEF28;
    v13 = v3;
LABEL_3:
    sub_1000073B4(v13, v12);
    return 0;
  }

  sub_10001425C(v3, v10, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  sub_10001425C(v10, v8, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v15 = sub_10015DA04(&qword_1006BF058);
      v12 = &qword_1006BCC20;
      v13 = v8 + *(v15 + 48);
      goto LABEL_3;
    }

LABEL_8:
    sub_1000160E4(v8, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    return 0;
  }

  if (EnumCaseMultiPayload != 3)
  {
    goto LABEL_8;
  }

  v17 = *v8;

  return v17;
}

id sub_1000167F8()
{
  v1 = sub_10015DA04(&qword_1006BEF28);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
  swift_beginAccess();
  sub_100006038(v0 + v11, v3, &qword_1006BEF28);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    sub_10001425C(v3, v10, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    sub_10001425C(v10, v8, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v16 = *v8;

        return v16;
      }
    }

    else if (EnumCaseMultiPayload == 1)
    {

      v15 = sub_10015DA04(&qword_1006BF058);
      v12 = &qword_1006BCC20;
      v13 = v8 + *(v15 + 48);
      goto LABEL_3;
    }

    sub_1000160E4(v8, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    return 0;
  }

  v12 = &qword_1006BEF28;
  v13 = v3;
LABEL_3:
  sub_1000073B4(v13, v12);
  return 0;
}

void sub_100016A60(char a1)
{
  v3 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v27 - v4);
  v6 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(v1 + v6, v5, &unk_1006BFEA0);
  v7 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1000160E4(v5, type metadata accessor for ICSelectionStateModel.ObjectSelection);
      }

      else
      {
        v16 = *(sub_10015DA04(&unk_1006C43C0) + 48);
        v17 = type metadata accessor for URL();
        v18 = *(*(v17 - 8) + 8);
        v18(v5 + v16, v17);
        v18(v5, v17);
      }

      return;
    }

    if (EnumCaseMultiPayload != 3)
    {
      v9 = *v5;
      v10 = v5[1];
      if (!*v5)
      {

        return;
      }

      if (v10)
      {
        if (a1)
        {
          v11 = *&v10[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState];
          v12 = type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
          v13 = objc_allocWithZone(v12);
          *&v13[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = v11;
          v13[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = 0;
          v13[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = 0;
          v13[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = 1;
          v13[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = 1;
          v13[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = 1;
          v13[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = 1;
          v29.receiver = v13;
          v29.super_class = v12;
          v14 = v11;
          v15 = objc_msgSendSuper2(&v29, "init");

LABEL_20:
          sub_100013994(v9, v15);

          return;
        }
      }

      v15 = 0;
      goto LABEL_20;
    }

    v20 = *v5;
    v19 = v5[1];
    v21 = v5[2];
    if (*v5)
    {
      if (v19)
      {
        v22 = 0;
        if (v21 && (a1 & 1) != 0)
        {
          v23 = *&v21[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState];
          v24 = type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
          v25 = objc_allocWithZone(v24);
          *&v25[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = v23;
          v25[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = 0;
          v25[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = 0;
          v25[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = 1;
          v25[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = 1;
          v25[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = 1;
          v25[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = 1;
          v28.receiver = v25;
          v28.super_class = v24;
          v26 = v23;
          v22 = objc_msgSendSuper2(&v28, "init");
        }

        sub_1001BA988(v20, v19, v22);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100016DD8(uint64_t (*a1)(id *), uint64_t a2)
{
  v6 = *v2;
  sub_100017040(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v4;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v25 = v12;
    v14 = a1(&v25);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v4 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v4++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v17 = *(v6 + 32 + 8 * v10);
    v24 = *(v6 + 32 + 8 * v4);
    v15 = v17;
  }

  v18 = v15;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_10030FFBC(v6);
    v19 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v19)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_10030FFBC(v6);
  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v20 + 16))
    {
      goto LABEL_44;
    }

    v22 = v20 + 8 * v10;
    v23 = *(v22 + 32);
    *(v22 + 32) = v24;

    *v2 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

void sub_100017040(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_100017154(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_10001722C(result, 1);

  return sub_1000172D0(v4, v2, 0);
}

uint64_t sub_100017230(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1000172D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ICSelectionStateModel(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100017560(uint64_t a1, char a2, uint64_t (*a3)(), uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong willAdoptModelForSelectionStateController:v4 isNavigating:0];
    swift_unknownObjectRelease();
  }

  v8 = *&v4[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100017A44;
  *(v10 + 24) = v9;
  v23 = sub_10032D13C;
  v24 = v10;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10000EAF8;
  v22 = &unk_100657A88;
  v11 = _Block_copy(&aBlock);
  v12 = v8;
  v13 = v4;

  dispatch_sync(v12, v11);

  _Block_release(v11);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      if (a3)
      {
        v23 = a3;
        v24 = a4;
        aBlock = _NSConcreteStackBlock;
        v20 = 1107296256;
        v21 = sub_10028DCE8;
        v22 = &unk_100657AB0;
        a3 = _Block_copy(&aBlock);
      }

      [v16 selectionStateController:v13 didAdoptModelFromArchive:a1 systemPaperAlert:a2 & 1 completion:a3];
      swift_unknownObjectRelease();
      _Block_release(a3);
    }
  }

  return result;
}

uint64_t sub_1000177DC(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v2;
  v13[4] = *(v1 + 64);
  v14 = *(v1 + 80);
  v3 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v3;
  v4 = *&v13[0];
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  *(v5 + 96) = *(v1 + 80);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100017D20;
  *(v8 + 24) = v5;
  aBlock[4] = sub_10032D13C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000EAF8;
  aBlock[3] = &unk_100657B28;
  v9 = _Block_copy(aBlock);
  sub_100006038(v13, v11, &qword_1006C42D0);
  sub_100006038(v13, v11, &qword_1006C42D0);

  dispatch_sync(v4, v9);
  _Block_release(v9);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  result = sub_1000073B4(v13, &qword_1006C42D0);
  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000179D0()
{
  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

void sub_100017A6C()
{
  sub_1000054A4(319, &qword_1006BE9E0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v1 <= 0x3F)
    {
      sub_100017B60();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Array();
        if (v3 <= 0x3F)
        {
          sub_100017BC4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100017B60()
{
  if (!qword_1006BFE08)
  {
    sub_10017992C(&qword_1006BFE10);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BFE08);
    }
  }
}

void sub_100017BC4()
{
  if (!qword_1006BFE18[0])
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_1006BFE18);
    }
  }
}

void sub_100017C14(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 >> 62)
  {
    v7 = a1;
    v8 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v7;
    if (!v8)
    {
      return;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (*(a1 + 72))
  {
    return;
  }

  v3 = *(a1 + 64);
  if (v2 >> 62)
  {
    v5 = a1;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v5;
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < v4)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      if ((v2 & 0xC000000000000001) == 0)
      {
        if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v6 = *(v2 + 8 * v3 + 32);
        goto LABEL_12;
      }

LABEL_17:
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
      v9 = v6;
      v1(&v9);
    }
  }
}

void sub_100017D20()
{
  v1 = *(v0 + 64);
  v3[2] = *(v0 + 48);
  v3[3] = v1;
  v3[4] = *(v0 + 80);
  v4 = *(v0 + 96);
  v2 = *(v0 + 32);
  v3[0] = *(v0 + 16);
  v3[1] = v2;
  sub_100017C14(v3);
}

void sub_100017DBC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

id sub_100017E04(char *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
  v5 = a1;
  v6 = v4;
  sub_10015DA04(a3);
  OS_dispatch_queue.sync<A>(execute:)();

  return v8;
}

void sub_100017ED0(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  v5 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v9 = v8;
  v23 = v5[2];
  v24 = v8;
  v25 = v5[4];
  v11 = *v5;
  v10 = v5[1];
  v22[0] = v6;
  v22[1] = v10;
  v18 = v23;
  v19 = v9;
  v20 = v5[4];
  v26 = *(v5 + 10);
  v21 = *(v5 + 10);
  v16 = v11;
  v17 = v7;
  sub_100006038(v22, &v15, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  v12 = sub_1000073B4(v22, &qword_1006C42D0);
  v13 = v15;
  v14 = a2(v12);

  *a3 = v14;
}

unint64_t sub_100018040(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >> 62)
  {
    v4 = a1;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v4;
    if (!v5)
    {
      return [objc_allocWithZone(type metadata accessor for ICSelectionStateModel(0)) init];
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return [objc_allocWithZone(type metadata accessor for ICSelectionStateModel(0)) init];
  }

  if (*(a1 + 72))
  {
    return [objc_allocWithZone(type metadata accessor for ICSelectionStateModel(0)) init];
  }

  v2 = *(a1 + 64);
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      return specialized _ArrayBuffer._getElementSlowPath(_:)();
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 >= result)
  {
    return [objc_allocWithZone(type metadata accessor for ICSelectionStateModel(0)) init];
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  if (v2 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v1 + 8 * v2 + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_100018130@<X0>(unint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v4 + 48);
  v8[2] = *(v4 + 32);
  v8[3] = v5;
  v8[4] = *(v4 + 64);
  v9 = *(v4 + 80);
  v6 = *(v4 + 16);
  v8[0] = *v4;
  v8[1] = v6;
  result = sub_100018040(v8);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_100018200(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = v6;
  v21 = v3[2];
  v22 = v6;
  v23 = v3[4];
  v9 = *v3;
  v8 = v3[1];
  v20[0] = v4;
  v20[1] = v8;
  v16 = v21;
  v17 = v7;
  v18 = v3[4];
  v24 = *(v3 + 10);
  v19 = *(v3 + 10);
  v14 = v9;
  v15 = v5;
  sub_100006038(v20, &v13, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v20, &qword_1006C42D0);
  v10 = v13;
  v11 = sub_1000167F8();

  if (v11)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      *a2 = v12;
      return;
    }

    swift_unknownObjectRelease();
  }

  *a2 = 0;
}

void sub_100018500(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = v6;
  v19 = v3[2];
  v20 = v6;
  v21 = v3[4];
  v9 = *v3;
  v8 = v3[1];
  v18[0] = v4;
  v18[1] = v8;
  v14 = v19;
  v15 = v7;
  v16 = v3[4];
  v22 = *(v3 + 10);
  v17 = *(v3 + 10);
  v12 = v9;
  v13 = v5;
  sub_100006038(v18, &v11, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v18, &qword_1006C42D0);
  v10 = v11;
  *a2 = *&v11[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentFirstVisibleObjectIDURLForContainerObjectIDURL];
}

void sub_100018678(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = v6;
  v20 = v3[2];
  v21 = v6;
  v22 = v3[4];
  v9 = *v3;
  v8 = v3[1];
  v19[0] = v4;
  v19[1] = v8;
  v15 = v20;
  v16 = v7;
  v17 = v3[4];
  v23 = *(v3 + 10);
  v18 = *(v3 + 10);
  v13 = v9;
  v14 = v5;
  sub_100006038(v19, &v12, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v19, &qword_1006C42D0);
  v10 = v12;
  v11 = sub_100016590();

  if (!v11 || ([v11 copy], v11, _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_1000054A4(0, &qword_1006C4310), (swift_dynamicCast() & 1) == 0))
  {
    *a2 = 0;
  }
}

void sub_100018B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100018F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&a29);
  objc_destroyWeak((v31 - 120));
  objc_destroyWeak((v31 - 112));
  _Unwind_Resume(a1);
}

void sub_10001956C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001979C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001A284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001ACF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001AE64(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_existingObjectWithID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10001B578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001B594(uint64_t a1)
{
  v5 = [*(a1 + 32) noteContainer];
  v2 = [v5 customNoteSortType];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10001B84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001B864(uint64_t a1)
{
  v3 = [*(a1 + 32) noteContainer];
  if ([v3 supportsDateHeaders])
  {
    v2 = [*(a1 + 32) noteContainer];
    *(*(*(a1 + 40) + 8) + 24) = [v2 dateHeadersType];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

id sub_10001BC30(uint64_t a1)
{
  v3 = sub_10015DA04(&unk_1006CA290);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  v14 = &type metadata for AppIntentsFeature;
  v15 = sub_10001BDA4();
  v12[0] = "viewActions";
  v12[1] = 11;
  v13 = 2;
  v6 = isFeatureEnabled(_:)();
  result = sub_100009F60(v12);
  if (v6)
  {
    if (!a1)
    {
      goto LABEL_8;
    }

    v11[2] = &OBJC_PROTOCOL___ICFolderObject;
    v8 = swift_dynamicCastObjCProtocolConditional();
    if (v8)
    {
      return [v1 ic_annotateWithFolder:v8];
    }

    v11[1] = &OBJC_PROTOCOL___ICAccountObject;
    v9 = swift_dynamicCastObjCProtocolConditional();
    if (v9)
    {
      return [v1 ic_annotateWithAccount:v9];
    }

    else
    {
LABEL_8:
      v10 = type metadata accessor for EntityIdentifier();
      (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
      return UIView.appEntityIdentifier.setter();
    }
  }

  return result;
}

unint64_t sub_10001BDA4()
{
  result = qword_1006BDF70;
  if (!qword_1006BDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BDF70);
  }

  return result;
}

void sub_10001BE8C(void *a1)
{
  v2 = type metadata accessor for AccountID();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10015DA04(&unk_1006CA290);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-1] - v4;
  v13 = &type metadata for AppIntentsFeature;
  v14 = sub_10001BDA4();
  v11[0] = "viewActions";
  v11[1] = 11;
  v12 = 2;
  v6 = isFeatureEnabled(_:)();
  sub_100009F60(v11);
  if (v6)
  {
    if (a1)
    {
      type metadata accessor for AccountEntity();
      swift_getObjectType();
      v7 = a1;
      ICAccountObject<>.entityIdentifier.getter();
      sub_10001C21C(&qword_1006C4160, type metadata accessor for AccountEntity);
      EntityIdentifier.init<A>(for:identifier:)();
      v8 = type metadata accessor for EntityIdentifier();
      (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
      UIView.appEntityIdentifier.setter();
    }

    else
    {
      v9 = type metadata accessor for EntityIdentifier();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      UIView.appEntityIdentifier.setter();
    }
  }
}

uint64_t type metadata accessor for AccountEntity()
{
  result = qword_1006C41C0;
  if (!qword_1006C41C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001C100()
{
  result = type metadata accessor for AccountID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001C18C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001C1D4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001C21C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001C264(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10001C70C(void *a1)
{
  v2 = type metadata accessor for AttachmentID();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10015DA04(&unk_1006CA290);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-1] - v4;
  v13 = &type metadata for AppIntentsFeature;
  v14 = sub_10001BDA4();
  v11[0] = "viewActions";
  v11[1] = 11;
  v12 = 2;
  v6 = isFeatureEnabled(_:)();
  sub_100009F60(v11);
  if (v6)
  {
    if (a1)
    {
      type metadata accessor for AttachmentEntity();
      swift_getObjectType();
      v7 = a1;
      ICAttachmentObject<>.entityIdentifier.getter();
      sub_10001C21C(&qword_1006BCCF0, type metadata accessor for AttachmentEntity);
      EntityIdentifier.init<A>(for:identifier:)();
      v8 = type metadata accessor for EntityIdentifier();
      (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
      UIView.appEntityIdentifier.setter();
    }

    else
    {
      v9 = type metadata accessor for EntityIdentifier();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      UIView.appEntityIdentifier.setter();
    }
  }
}

uint64_t type metadata accessor for AttachmentEntity()
{
  result = qword_1006C0610;
  if (!qword_1006C0610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001C980()
{
  type metadata accessor for AttachmentID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_100006994();
      if (v2 <= 0x3F)
      {
        sub_100221FEC(319, &qword_1006BEC68, &type metadata accessor for URL);
        if (v3 <= 0x3F)
        {
          sub_100221FEC(319, qword_1006C0630, sub_100222040);
          if (v4 <= 0x3F)
          {
            sub_10001CA9C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10001CA9C()
{
  if (!qword_1006BEBB0[0])
  {
    sub_10001CAF8();
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, qword_1006BEBB0);
    }
  }
}

unint64_t sub_10001CAF8()
{
  result = qword_1006C2F90;
  if (!qword_1006C2F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2F90);
  }

  return result;
}

void sub_10001CB4C()
{
  if (!qword_1006BEC68)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BEC68);
    }
  }
}

uint64_t sub_10001CBA4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for NoteEditorActionMenu()
{
  result = qword_1006C8F98;
  if (!qword_1006C8F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001CED8()
{
  sub_10001CB4C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10001D0B4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

Class sub_10001D0F0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = type metadata accessor for NoteEditorActionMenu();
  v8 = objc_allocWithZone(v26);
  v9 = OBJC_IVAR___ICNoteEditorActionMenu_note;
  *&v8[OBJC_IVAR___ICNoteEditorActionMenu_note] = 0;
  v10 = OBJC_IVAR___ICNoteEditorActionMenu_invitation;
  *&v8[OBJC_IVAR___ICNoteEditorActionMenu_invitation] = 0;
  v11 = OBJC_IVAR___ICNoteEditorActionMenu_isMathEnabled;
  v8[v11] = ICInternalSettingsIsMathEnabled();
  v12 = OBJC_IVAR___ICNoteEditorActionMenu_temporaryExportURLToRemove;
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 56))(&v8[v12], 1, 1, v13);
  swift_unknownObjectWeakInit();
  v14 = &v8[OBJC_IVAR___ICNoteEditorActionMenu_completion];
  *v14 = 0;
  v14[1] = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem;
  *&v8[OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem] = 0;
  swift_unknownObjectWeakInit();
  v16 = *&v8[v9];
  *&v8[v9] = a1;
  v17 = a1;

  v18 = *&v8[v10];
  *&v8[v10] = a2;
  v19 = a2;

  swift_unknownObjectWeakAssign();
  v20 = *&v8[v15];
  *&v8[v15] = 0;

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v21 = *v14;
  *v14 = a6;
  v14[1] = a7;
  sub_100010854(a6);
  sub_10000C840(v21);
  v29.receiver = v8;
  v29.super_class = v26;
  v22 = objc_msgSendSuper2(&v29, "init");
  sub_10001D2C8();
  isa = ActionMenuProvider.makeDeferredMenuElement()().super.super.isa;

  return isa;
}

unint64_t sub_10001D2C8()
{
  result = qword_1006C9028;
  if (!qword_1006C9028)
  {
    type metadata accessor for NoteEditorActionMenu();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9028);
  }

  return result;
}

void sub_10001D3F4(void *a1)
{
  v2 = type metadata accessor for NoteID();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10015DA04(&unk_1006CA290);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-1] - v4;
  v13 = &type metadata for AppIntentsFeature;
  v14 = sub_10001BDA4();
  v11[0] = "viewActions";
  v11[1] = 11;
  v12 = 2;
  v6 = isFeatureEnabled(_:)();
  sub_100009F60(v11);
  if (v6)
  {
    if (a1)
    {
      type metadata accessor for NoteEntity(0);
      swift_getObjectType();
      v7 = a1;
      ICSearchIndexableNote<>.entityIdentifier.getter();
      sub_10001C21C(&qword_1006BCAD0, type metadata accessor for NoteEntity);
      EntityIdentifier.init<A>(for:identifier:)();
      v8 = type metadata accessor for EntityIdentifier();
      (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
      UIView.appEntityIdentifier.setter();
    }

    else
    {
      v9 = type metadata accessor for EntityIdentifier();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      UIView.appEntityIdentifier.setter();
    }
  }
}

void sub_10001D63C()
{
  type metadata accessor for NoteID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_10001D858(319, qword_1006C0630, &qword_1006C4660);
      if (v2 <= 0x3F)
      {
        sub_10001CA9C();
        if (v3 <= 0x3F)
        {
          sub_10001D8B0(319, &qword_1006C53F8, &unk_1006C5400, &unk_100545A50, sub_10001D920);
          if (v4 <= 0x3F)
          {
            sub_10001D8B0(319, &qword_1006C5418, &unk_1006BF9D0, &unk_100531EE0, sub_10001DAC0);
            if (v5 <= 0x3F)
            {
              sub_10001D8B0(319, &qword_1006C5428, &qword_1006C5430, &unk_100539F90, sub_10001DCF0);
              if (v6 <= 0x3F)
              {
                sub_10001D8B0(319, &qword_1006C5438, &unk_1006C1710, &unk_10053BA80, sub_10001DDA4);
                if (v7 <= 0x3F)
                {
                  sub_10001D858(319, &qword_1006C5448, &unk_1006C5450);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10001D858(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1000054A4(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10001D8B0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_10017992C(a3);
    a5();
    v7 = type metadata accessor for EntityProperty();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_10001D920()
{
  result = qword_1006C18F0;
  if (!qword_1006C18F0)
  {
    sub_10017992C(&unk_1006C5400);
    sub_100271144(&qword_1006C5410, &type metadata accessor for AttributedString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C18F0);
  }

  return result;
}

uint64_t type metadata accessor for FolderEntity()
{
  result = qword_1006C9128;
  if (!qword_1006C9128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001DA20()
{
  result = type metadata accessor for FolderID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10001DAC0()
{
  result = qword_1006C19A0;
  if (!qword_1006C19A0)
  {
    sub_10017992C(&unk_1006BF9D0);
    sub_10001DB74(&qword_1006C5420, type metadata accessor for FolderEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C19A0);
  }

  return result;
}

uint64_t sub_10001DB74(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001DBBC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for TagEntity()
{
  result = qword_1006C4C30;
  if (!qword_1006C4C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001DC50()
{
  result = type metadata accessor for TagID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10001DCF0()
{
  result = qword_1006C00D8;
  if (!qword_1006C00D8)
  {
    sub_10017992C(&qword_1006C5430);
    sub_10001DB74(&qword_1006C18A0, type metadata accessor for TagEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C00D8);
  }

  return result;
}

unint64_t sub_10001DDA4()
{
  result = qword_1006C1960;
  if (!qword_1006C1960)
  {
    sub_10017992C(&unk_1006C1710);
    sub_100271144(&qword_1006C5440, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1960);
  }

  return result;
}

uint64_t sub_10001DE58(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001DEA0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10001E2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t type metadata accessor for ActivityStreamNavigationController()
{
  result = qword_1006C8098;
  if (!qword_1006C8098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001E5B8()
{
  if (!qword_1006C0EE8)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C0EE8);
    }
  }
}

void sub_10001E610()
{
  sub_10001E5B8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_10001E74C(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamNavigationController_sheetController] = 0;
  if (_UISolariumEnabled())
  {
    v5 = [objc_opt_self() ic_isVision];
  }

  else
  {
    v5 = 1;
  }

  v2[OBJC_IVAR___ICActivityStreamNavigationController_isNonSolarium] = v5;
  *&v2[OBJC_IVAR___ICActivityStreamNavigationController_preferredCompactContentWidth] = 0x4081C00000000000;
  *&v2[OBJC_IVAR___ICActivityStreamNavigationController_additionalSafeAreaTopInset] = 0x4038000000000000;
  v2[OBJC_IVAR___ICActivityStreamNavigationController_isCapturingActivityStreamSummaryEvent] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamNavigationController_object] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamNavigationController_selection] = 0;
  v6 = OBJC_IVAR___ICActivityStreamNavigationController_viewModeDurations;
  *&v2[v6] = sub_10001ED40(_swiftEmptyArrayStorage);
  v7 = OBJC_IVAR___ICActivityStreamNavigationController_timeOfLastViewModeChange;
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  *&v2[OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___unfilteredHeaderView] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___filteredHeaderView] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___dockedDetent] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamNavigationController_halfHeightRatio] = 0x400599999999999ALL;
  *&v2[OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___halfHeightDetent] = 0;
  swift_unknownObjectWeakAssign();
  v2[OBJC_IVAR___ICActivityStreamNavigationController_hasInteractiveSizing] = a2 & 1;
  *&v2[OBJC_IVAR___ICActivityStreamNavigationController_indexOfCurrentDetent] = -1;
  v25.receiver = v2;
  v25.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  v10 = objc_opt_self();
  v11 = v9;
  if ([v10 ic_isVision])
  {
    v12 = -2;
  }

  else
  {
    v12 = 2;
  }

  [v11 setModalPresentationStyle:v12];
  v13 = [v11 sheetPresentationController];

  if (v13)
  {
    [v13 setDelegate:v11];
  }

  if ((_UISolariumEnabled() & 1) == 0 && ([v10 ic_isVision] & 1) == 0)
  {
    v14 = [objc_allocWithZone(UINavigationBarAppearance) init];
    [v14 configureWithOpaqueBackground];
    v21 = [objc_opt_self() clearColor];
    [v14 setShadowColor:v21];

    v22 = [v11 navigationBar];
    [v22 setPrefersLargeTitles:0];

    v23 = [v11 navigationBar];
    [v23 setStandardAppearance:v14];

    v20.super.isa = [v11 navigationBar];
    [(objc_class *)v20.super.isa setCompactAppearance:v14];
LABEL_16:

    goto LABEL_17;
  }

  if (_UISolariumEnabled())
  {
    v14 = [v11 navigationBar];
    sub_10015DA04(&unk_1006C8190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = NSFontAttributeName;
    v16 = objc_opt_self();
    v17 = NSFontAttributeName;
    v18 = [v16 preferredFontForTextStyle:UIFontTextStyleTitle2];
    v19 = [v18 ic_fontWithSymbolicBoldTrait];

    *(inited + 64) = sub_1000054A4(0, &unk_1006C95C0);
    if (!v19)
    {
      v19 = [v16 preferredFontForTextStyle:UIFontTextStyleTitle2];
    }

    *(inited + 40) = v19;
    sub_1001901EC(inited);
    swift_setDeallocating();
    sub_1000073B4(inited + 32, &qword_1006C81A0);
    type metadata accessor for Key(0);
    sub_10041BE90(&qword_1006C95D0, type metadata accessor for Key);
    v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v14 setTitleTextAttributes:v20.super.isa];
    goto LABEL_16;
  }

LABEL_17:
  sub_1000054A4(0, &qword_1006BDAB0);
  static UITraitCollection.traitsAffectingSizeAndColor.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_10001ED08()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10001ED40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10015DA04(&qword_1006BDC60);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1002ED08C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10001EF8C(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___ICActivityStreamNavigationController_object;
  v4 = *&v1[OBJC_IVAR___ICActivityStreamNavigationController_object];
  *&v2[OBJC_IVAR___ICActivityStreamNavigationController_object] = a1;
  v5 = a1;

  v6 = sub_10001F27C();
  v7 = *&v2[v3];
  ActivityStreamDockView.object.setter();

  if ([v2 ic_isViewVisible])
  {
    v8 = *&v2[OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController];
    if (v8)
    {
      v9 = *&v2[v3];
      v10 = v9;
      v11 = v8;
      sub_100193AF0(v9);
    }

    sub_10001F06C();

    sub_100419564();
  }
}