@interface SRCarPlayUIUtilities
+ (BOOL)flexibleFollowupEnabled;
+ (BOOL)isJarvis;
+ (double)flexibleFollowupAdditonalDelay;
+ (id)carPlayBluetoothMACAddress;
@end

@implementation SRCarPlayUIUtilities

+ (BOOL)isJarvis
{
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 attributeForKey:AVSystemController_CarPlayAuxStreamSupportAttribute];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)flexibleFollowupEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

+ (double)flexibleFollowupAdditonalDelay
{
  v2 = +[AFPreferences sharedPreferences];
  [v2 autoDismissalIdleTimeout];
  v4 = v3;

  return v4;
}

+ (id)carPlayBluetoothMACAddress
{
  v19 = +[AVSystemController sharedAVSystemController];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v2 = qword_10018F1C0;
  v33 = qword_10018F1C0;
  if (!qword_10018F1C0)
  {
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10004BED8;
    v28 = &unk_1001679F8;
    v29 = &v30;
    v3 = sub_10004BF28();
    v31[3] = dlsym(v3, "AVSystemController_PickableRoutesAttribute");
    qword_10018F1C0 = *(v29[1] + 24);
    v2 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v2)
  {
    sub_1000CC048();
    goto LABEL_27;
  }

  [v19 attributeForKey:*v2];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v34 count:16];
  if (!v4)
  {
    v18 = &stru_10016AE90;
    goto LABEL_21;
  }

  v5 = *v22;
  v18 = &stru_10016AE90;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v22 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v21 + 1) + 8 * i);
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v8 = qword_10018F1D0;
      v33 = qword_10018F1D0;
      if (!qword_10018F1D0)
      {
        v25 = _NSConcreteStackBlock;
        v26 = 3221225472;
        v27 = sub_10004C09C;
        v28 = &unk_1001679F8;
        v29 = &v30;
        v9 = sub_10004BF28();
        v10 = dlsym(v9, "AVSystemController_RouteDescriptionKey_RouteName");
        *(v29[1] + 24) = v10;
        qword_10018F1D0 = *(v29[1] + 24);
        v8 = v31[3];
      }

      _Block_object_dispose(&v30, 8);
      if (!v8)
      {
        goto LABEL_26;
      }

      v11 = [v7 objectForKey:*v8];
      if ([v11 rangeOfString:@"CarPlay"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v30 = 0;
        v31 = &v30;
        v32 = 0x2020000000;
        v12 = qword_10018F1D8;
        v33 = qword_10018F1D8;
        if (!qword_10018F1D8)
        {
          v25 = _NSConcreteStackBlock;
          v26 = 3221225472;
          v27 = sub_10004C0EC;
          v28 = &unk_1001679F8;
          v29 = &v30;
          v13 = sub_10004BF28();
          v14 = dlsym(v13, "AVSystemController_RouteDescriptionKey_RouteUID");
          *(v29[1] + 24) = v14;
          qword_10018F1D8 = *(v29[1] + 24);
          v12 = v31[3];
        }

        _Block_object_dispose(&v30, 8);
        if (v12)
        {
          v15 = [v7 objectForKey:*v12];
          v16 = [v15 componentsSeparatedByString:@"-"];
          v18 = [v16 objectAtIndex:0];

          goto LABEL_21;
        }

LABEL_26:
        sub_1000CC048();
LABEL_27:
        __break(1u);
      }
    }

    v4 = [obj countByEnumeratingWithState:&v21 objects:v34 count:16];
  }

  while (v4);
LABEL_21:

  return v18;
}

@end