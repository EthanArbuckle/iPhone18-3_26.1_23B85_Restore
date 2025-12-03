@interface CKCloudTelemetryReporter
+ (void)reportWithEventType:(id)type event:(id)event bundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation CKCloudTelemetryReporter

+ (void)reportWithEventType:(id)type event:(id)event bundleIdentifier:(id)identifier completionHandler:(id)handler
{
  typeCopy = type;
  eventCopy = event;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (byte_1EA90C538 == 1)
  {
    v16 = objc_msgSend_sharedXPCConnection(CKXPCConnection, v13, v14);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_188642F04;
    v24[3] = &unk_1E70BFC98;
    v25 = typeCopy;
    v26 = eventCopy;
    v27 = identifierCopy;
    v28 = handlerCopy;
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
      v20 = identifierCopy;
      if (!identifierCopy)
      {
        v6 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v13, v14);
        v20 = objc_msgSend_bundleIdentifier(v6, v21, v22);
      }

      v23 = 0;
      objc_msgSend_reportWithTeamID_eventType_event_allowCellularAccess_allowExpensiveAccess_bundleID_error_(v19, v13, @"4K9A2JBQ2X", typeCopy, eventCopy, 0, 0, v20, &v23);
      v18 = v23;
      if (!identifierCopy)
      {
      }
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v18);
    }
  }
}

@end