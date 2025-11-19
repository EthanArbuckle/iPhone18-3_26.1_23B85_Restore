@interface ICDonateDynamicAppVocabularyLaunchTask
- (BOOL)shouldAttemptLaunchTask;
- (ICDonateDynamicAppVocabularyLaunchTask)init;
- (void)runLaunchTaskWithCompletionHandler:(id)a3;
@end

@implementation ICDonateDynamicAppVocabularyLaunchTask

- (BOOL)shouldAttemptLaunchTask
{
  if (static SiriVocabulary.dynamicVocabularyEnabled.getter())
  {
    v6 = &type metadata for NotesFeature;
    v7 = sub_100025864();
    v4[0] = "SiriDynamicVocabulary";
    v4[1] = 21;
    v5 = 2;
    v2 = isFeatureEnabled(_:)();
    sub_100009F60(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)runLaunchTaskWithCompletionHandler:(id)a3
{
  v5 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100548DE8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100548DF0;
  v12[5] = v11;
  v13 = self;
  sub_1004A09D8(0, 0, v7, &unk_100544850, v12);
}

- (ICDonateDynamicAppVocabularyLaunchTask)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ICDonateDynamicAppVocabularyLaunchTask *)&v3 init];
}

@end