@interface CKCloudTelemetryReporter
+ (void)reportWithEventType:(id)a3 event:(id)a4 bundleIdentifier:(id)a5 completionHandler:(id)a6;
@end

@implementation CKCloudTelemetryReporter

+ (void)reportWithEventType:(id)a3 event:(id)a4 bundleIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v15 = a6;
  if (byte_1EA90C538 == 1)
  {
    v16 = objc_msgSend_sharedXPCConnection(CKXPCConnection, v13, v14);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_188642F04;
    v24[3] = &unk_1E70BFC98;
    v25 = v10;
    v26 = v11;
    v27 = v12;
    v28 = v15;
    objc_msgSend_getAdopterProcessScopedDaemonProxyCreatorSynchronous_completionHandler_(v16, v17, 0, v24);

    v18 = v25;
  }

  else
  {
    if (__sTestOverridesAvailable[0])
    {
      v18 = 0;
    }

    else
    {
      v19 = MEMORY[0x1E6994FF0];
      v20 = v12;
      if (!v12)
      {
        v6 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v13, v14);
        v20 = objc_msgSend_bundleIdentifier(v6, v21, v22);
      }

      v23 = 0;
      objc_msgSend_reportWithTeamID_eventType_event_allowCellularAccess_allowExpensiveAccess_bundleID_error_(v19, v13, @"4K9A2JBQ2X", v10, v11, 0, 0, v20, &v23);
      v18 = v23;
      if (!v12)
      {
      }
    }

    if (v15)
    {
      (*(v15 + 2))(v15, v18);
    }
  }
}

@end