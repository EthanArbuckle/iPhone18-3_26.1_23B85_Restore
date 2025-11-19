@interface ADRadarManager
+ (id)sharedInstance;
- (id)_init;
- (void)_sharedCreateDraft:(id)a3 withDisplayReason:(id)a4 reproducibility:(int64_t)a5 classification:(int64_t)a6 completionHandler:(id)a7;
@end

@implementation ADRadarManager

- (void)_sharedCreateDraft:(id)a3 withDisplayReason:(id)a4 reproducibility:(int64_t)a5 classification:(int64_t)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
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
  v17 = [v11 title];
  [v16 setTitle:v17];

  v18 = [v11 problemDescription];
  [v16 setProblemDescription:v18];

  [v16 setIsUserInitiated:{objc_msgSend(v11, "isUserInitiated")}];
  v19 = [v11 deviceIDs];
  [v16 setDeviceIDs:v19];

  v20 = [v11 componentName];
  if (v20)
  {
    v21 = v20;
    v22 = [v11 componentVersion];
    if (!v22)
    {
LABEL_9:

      goto LABEL_10;
    }

    v23 = v22;
    v24 = [v11 componentIdentifier];

    if (v24)
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
      v21 = [v11 componentName];
      v28 = [v11 componentVersion];
      v29 = [v27 initWithName:v21 version:v28 identifier:{objc_msgSend(v11, "componentIdentifier")}];
      [v16 setComponent:v29];

      goto LABEL_9;
    }
  }

LABEL_10:
  [v16 setBundleID:@"com.apple.siri"];
  [v16 setReproducibility:a5];
  [v16 setClassification:a6];
  v30 = [sub_1002F067C() shared];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1002F075C;
  v32[3] = &unk_10051D2F0;
  v33 = v13;
  v31 = v13;
  [v30 createDraft:v16 forProcessNamed:@"Siri" withDisplayReason:v12 completionHandler:v32];
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