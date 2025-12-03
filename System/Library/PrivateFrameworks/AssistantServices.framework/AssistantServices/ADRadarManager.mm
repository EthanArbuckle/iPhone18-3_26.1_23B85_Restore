@interface ADRadarManager
+ (id)sharedInstance;
- (id)_init;
- (void)_sharedCreateDraft:(id)draft withDisplayReason:(id)reason reproducibility:(int64_t)reproducibility classification:(int64_t)classification completionHandler:(id)handler;
@end

@implementation ADRadarManager

- (void)_sharedCreateDraft:(id)draft withDisplayReason:(id)reason reproducibility:(int64_t)reproducibility classification:(int64_t)classification completionHandler:(id)handler
{
  draftCopy = draft;
  reasonCopy = reason;
  handlerCopy = handler;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v14 = qword_100590898;
  v42 = qword_100590898;
  if (!qword_100590898)
  {
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_1002F04EC;
    v37 = &unk_10051E1C8;
    v38 = &v39;
    sub_1002F04EC(&v34);
    v14 = v40[3];
  }

  v15 = v14;
  _Block_object_dispose(&v39, 8);
  v16 = objc_alloc_init(v14);
  title = [draftCopy title];
  [v16 setTitle:title];

  problemDescription = [draftCopy problemDescription];
  [v16 setProblemDescription:problemDescription];

  [v16 setIsUserInitiated:{objc_msgSend(draftCopy, "isUserInitiated")}];
  deviceIDs = [draftCopy deviceIDs];
  [v16 setDeviceIDs:deviceIDs];

  componentName = [draftCopy componentName];
  if (componentName)
  {
    componentName2 = componentName;
    componentVersion = [draftCopy componentVersion];
    if (!componentVersion)
    {
LABEL_9:

      goto LABEL_10;
    }

    v23 = componentVersion;
    componentIdentifier = [draftCopy componentIdentifier];

    if (componentIdentifier)
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x2050000000;
      v25 = qword_1005908A0;
      v42 = qword_1005908A0;
      if (!qword_1005908A0)
      {
        v34 = _NSConcreteStackBlock;
        v35 = 3221225472;
        v36 = sub_1002F05B4;
        v37 = &unk_10051E1C8;
        v38 = &v39;
        sub_1002F05B4(&v34);
        v25 = v40[3];
      }

      v26 = v25;
      _Block_object_dispose(&v39, 8);
      v27 = [v25 alloc];
      componentName2 = [draftCopy componentName];
      componentVersion2 = [draftCopy componentVersion];
      v29 = [v27 initWithName:componentName2 version:componentVersion2 identifier:{objc_msgSend(draftCopy, "componentIdentifier")}];
      [v16 setComponent:v29];

      goto LABEL_9;
    }
  }

LABEL_10:
  [v16 setBundleID:@"com.apple.siri"];
  [v16 setReproducibility:reproducibility];
  [v16 setClassification:classification];
  shared = [sub_1002F067C() shared];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1002F075C;
  v32[3] = &unk_10051D2F0;
  v33 = handlerCopy;
  v31 = handlerCopy;
  [shared createDraft:v16 forProcessNamed:@"Siri" withDisplayReason:reasonCopy completionHandler:v32];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = ADRadarManager;
  return [(ADRadarManager *)&v3 init];
}

+ (id)sharedInstance
{
  if (qword_100590880 != -1)
  {
    dispatch_once(&qword_100590880, &stru_10051AEA8);
  }

  v3 = qword_100590878;

  return v3;
}

@end