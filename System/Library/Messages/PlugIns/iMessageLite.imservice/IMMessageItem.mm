@interface IMMessageItem
+ (IMMessageItem)messageItemWithLiteIdentifier:(id)identifier liteData:(id)data senderID:(id)d date:(id)date error:(id *)error;
+ (IMMessageItem)messageItemWithLiteRelayIdentifier:(id)identifier liteRelayData:(id)data date:(id)date error:(id *)error;
+ (_NSRange)_rangeOfSingleMessagePartForMessageWithGUID:(id)d;
+ (id)_associatedMessageItemWithGUID:(id)d date:(id)date liteRelayTextMessage:(id)message;
+ (id)_associatedMessageItemWithGUID:(id)d senderID:(id)iD date:(id)date liteTextMessage:(id)message;
+ (id)_expressiveSendStyleIDForBlastDoorLiteTextMessageEffect:(int64_t)effect;
+ (id)_fallbackTextForIMAssociatedMessageItem:(id)item;
+ (id)_messageGUIDForLiteIdentifier:(id)identifier;
+ (id)_threadIdentifierForThreadOriginatorUUID:(id)d;
+ (int64_t)_associatedMessageTypeFromBlastDoorLiteAssociatedMessageType:(int64_t)type;
- (id)liteAssociatedMessageSummaryInfo;
@end

@implementation IMMessageItem

+ (IMMessageItem)messageItemWithLiteIdentifier:(id)identifier liteData:(id)data senderID:(id)d date:(id)date error:(id *)error
{
  identifierCopy = identifier;
  dataCopy = data;
  dCopy = d;
  dateCopy = date;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = identifierCopy;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Attempting to defuse %@", buf, 0xCu);
    }
  }

  v16 = +[IMDChatRegistry sharedInstance];
  v17 = [v16 hasKnownSenderChatWithChatIdentifier:dCopy];

  v18 = [IMSenderContext contextWithKnownSender:v17 serviceName:IMServiceNameiMessageLite];
  v34 = 0;
  v19 = [IMBlastdoor sendLiteData:dataCopy senderContext:v18 error:&v34];
  v20 = v34;
  v21 = v20;
  if (v19)
  {
    v22 = v20 == 0;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    v23 = [self _messageGUIDForLiteIdentifier:identifierCopy];
    tapback = [v19 tapback];
    v25 = tapback == 0;

    if (v25)
    {
      v26 = [[IMMessageItem alloc] initWithSender:dCopy time:v33 guid:v23 type:0];
      plainTextBody = [v19 plainTextBody];
      [v26 setPlainBody:plainTextBody];

      v28 = [self _expressiveSendStyleIDForBlastDoorLiteTextMessageEffect:{objc_msgSend(v19, "effect")}];
      [v26 setExpressiveSendStyleID:v28];

      threadOriginatorUUID = [v19 threadOriginatorUUID];
      v30 = [self _threadIdentifierForThreadOriginatorUUID:threadOriginatorUUID];
      [v26 setThreadIdentifier:v30];
    }

    else
    {
      v26 = [self _associatedMessageItemWithGUID:v23 senderID:dCopy date:v33 liteTextMessage:v19];
    }
  }

  else
  {
    if (!error)
    {
      v26 = 0;
      goto LABEL_19;
    }

    if (v20)
    {
      v35 = NSUnderlyingErrorKey;
      v36 = v20;
      v23 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    }

    else
    {
      v23 = 0;
    }

    [NSError errorWithDomain:@"com.apple.Messages.LiteBlastDoorErrorDomain" code:3 userInfo:v23];
    *error = v26 = 0;
  }

LABEL_19:

  return v26;
}

+ (IMMessageItem)messageItemWithLiteRelayIdentifier:(id)identifier liteRelayData:(id)data date:(id)date error:(id *)error
{
  identifierCopy = identifier;
  dataCopy = data;
  dateCopy = date;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = identifierCopy;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Attempting to defuse %@", buf, 0xCu);
    }
  }

  v14 = [IMSenderContext contextWithKnownSender:1 serviceName:IMServiceNameiMessageLite];
  v29 = 0;
  v15 = [IMBlastdoor sendLiteRelayData:dataCopy senderContext:v14 error:&v29];
  v16 = v29;
  v17 = v16;
  if (v15)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v19 = [self _messageGUIDForLiteIdentifier:identifierCopy];
    tapback = [v15 tapback];
    v21 = tapback == 0;

    if (v21)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v33 = identifierCopy;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Creating text message item for: %@", buf, 0xCu);
        }
      }

      v24 = [IMMessageItem alloc];
      chatIdentifier = [v15 chatIdentifier];
      v22 = [v24 initWithSender:chatIdentifier time:dateCopy guid:v19 type:0];

      plainTextBody = [v15 plainTextBody];
      [v22 setPlainBody:plainTextBody];

      chatIdentifier2 = [v15 chatIdentifier];
      [v22 setCloudKitChatID:chatIdentifier2];
    }

    else
    {
      v22 = [self _associatedMessageItemWithGUID:v19 date:dateCopy liteRelayTextMessage:v15];
    }
  }

  else
  {
    if (!error)
    {
      v22 = 0;
      goto LABEL_23;
    }

    if (v16)
    {
      v30 = NSUnderlyingErrorKey;
      v31 = v16;
      v19 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    }

    else
    {
      v19 = 0;
    }

    [NSError errorWithDomain:@"com.apple.Messages.LiteBlastDoorErrorDomain" code:3 userInfo:v19];
    *error = v22 = 0;
  }

LABEL_23:

  return v22;
}

+ (id)_associatedMessageItemWithGUID:(id)d date:(id)date liteRelayTextMessage:(id)message
{
  dCopy = d;
  dateCopy = date;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = dCopy;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Creating associated message item for: %@", &buf, 0xCu);
    }
  }

  tapback = [messageCopy tapback];
  associatedMessageUUID = [tapback associatedMessageUUID];
  uUIDString = [associatedMessageUUID UUIDString];

  tapback2 = [messageCopy tapback];
  v16 = [self _associatedMessageTypeFromBlastDoorLiteAssociatedMessageType:{objc_msgSend(tapback2, "associatedMessageType")}];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3010000000;
  v42 = 0;
  v43 = 0;
  v41 = "";
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy_;
  v37[4] = __Block_byref_object_dispose_;
  v38 = 0;
  v17 = +[IMDMessageStore sharedInstance];
  v18 = [v17 messageWithGUID:uUIDString];

  plainBody = [v18 plainBody];
  LOBYTE(v17) = plainBody == 0;

  if (v17)
  {
    body = [v18 body];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = __89__IMMessageItem_LiteBlastDoor___associatedMessageItemWithGUID_date_liteRelayTextMessage___block_invoke;
    v33[3] = &unk_65660;
    p_buf = &buf;
    v36 = v37;
    v34 = uUIDString;
    [body __im_visitMessageParts:v33];

    plainBody2 = v34;
  }

  else
  {
    plainBody2 = [v18 plainBody];
    v21 = [plainBody2 length];
    v22 = *(&buf + 1);
    *(*(&buf + 1) + 32) = 0;
    *(v22 + 40) = v21;
  }

  liteAssociatedMessageSummaryInfo = [v18 liteAssociatedMessageSummaryInfo];
  v25 = [IMAssociatedMessageItem alloc];
  chatIdentifier = [messageCopy chatIdentifier];
  v27 = [v25 initWithSender:chatIdentifier time:dateCopy body:0 attributes:0 fileTransferGUIDs:0 flags:0 error:0 guid:dCopy associatedMessageGUID:uUIDString associatedMessageType:v16 associatedMessageRange:*(*(&buf + 1) + 32) messageSummaryInfo:*(*(&buf + 1) + 40) threadIdentifier:{liteAssociatedMessageSummaryInfo, 0}];

  tapback3 = [messageCopy tapback];
  associatedMessageEmoji = [tapback3 associatedMessageEmoji];
  [v27 setAssociatedMessageEmoji:associatedMessageEmoji];

  chatIdentifier2 = [messageCopy chatIdentifier];
  [v27 setCloudKitChatID:chatIdentifier2];

  v31 = [self _fallbackTextForIMAssociatedMessageItem:v27];
  [v27 setPlainBody:v31];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&buf, 8);

  return v27;
}

void __89__IMMessageItem_LiteBlastDoor___associatedMessageItemWithGUID_date_liteRelayTextMessage___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v6 = [v15 messagePartBody];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [v15 messagePartRange];
    v9 = *(a1[5] + 8);
    *(v9 + 32) = v8;
    *(v9 + 40) = v10;
    v11 = [v15 messagePartGUIDForMessageGUID:a1[4]];
    v12 = [v11 encodedMessagePartGUID];
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a4 = 1;
  }
}

+ (id)_fallbackTextForIMAssociatedMessageItem:(id)item
{
  itemCopy = item;
  messageSummaryInfo = [itemCopy messageSummaryInfo];
  +[IMDFileTransferCenter sharedInstance];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __72__IMMessageItem_LiteBlastDoor___fallbackTextForIMAssociatedMessageItem___block_invoke;
  v5 = v17[3] = &unk_65688;
  v18 = v5;
  v6 = objc_retainBlock(v17);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = __72__IMMessageItem_LiteBlastDoor___fallbackTextForIMAssociatedMessageItem___block_invoke_2;
  v15 = &unk_65688;
  v16 = v5;
  v7 = v5;
  v8 = objc_retainBlock(&v12);
  tapback = [itemCopy tapback];

  v10 = [tapback backwardCompatibilityStringWithMessageSummaryInfo:messageSummaryInfo isAdaptiveImageGlyphProvider:v6 isCommSafetySensitiveProvider:v8];

  return v10;
}

id __72__IMMessageItem_LiteBlastDoor___fallbackTextForIMAssociatedMessageItem___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) transferForGUID:a2];
  v3 = [v2 isAdaptiveImageGlyph];

  return v3;
}

BOOL __72__IMMessageItem_LiteBlastDoor___fallbackTextForIMAssociatedMessageItem___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) transferForGUID:a2];
  v3 = [v2 commSafetySensitive] == &dword_0 + 1;

  return v3;
}

+ (id)_associatedMessageItemWithGUID:(id)d senderID:(id)iD date:(id)date liteTextMessage:(id)message
{
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  messageCopy = message;
  tapback = [messageCopy tapback];
  associatedMessageUUID = [tapback associatedMessageUUID];
  uUIDString = [associatedMessageUUID UUIDString];

  tapback2 = [messageCopy tapback];
  v18 = [self _associatedMessageTypeFromBlastDoorLiteAssociatedMessageType:{objc_msgSend(tapback2, "associatedMessageType")}];

  v39 = 0;
  v40 = &v39;
  v41 = 0x3010000000;
  v43 = 0;
  v44 = 0;
  v42 = "";
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy_;
  v37[4] = __Block_byref_object_dispose_;
  v38 = 0;
  v19 = +[IMDMessageStore sharedInstance];
  v20 = [v19 messageWithGUID:uUIDString];

  plainBody = [v20 plainBody];

  if (plainBody)
  {
    plainBody2 = [v20 plainBody];
    v23 = [plainBody2 length];
    v24 = v40;
    v40[4] = 0;
    v24[5] = v23;
  }

  else
  {
    body = [v20 body];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = __93__IMMessageItem_LiteBlastDoor___associatedMessageItemWithGUID_senderID_date_liteTextMessage___block_invoke;
    v33[3] = &unk_65660;
    v35 = &v39;
    v36 = v37;
    v34 = uUIDString;
    [body __im_visitMessageParts:v33];

    plainBody2 = v34;
  }

  liteAssociatedMessageSummaryInfo = [v20 liteAssociatedMessageSummaryInfo];
  v27 = [IMAssociatedMessageItem alloc];
  body2 = [v20 body];
  v29 = [v27 initWithSender:iDCopy time:dateCopy body:body2 attributes:0 fileTransferGUIDs:0 flags:0 error:0 guid:dCopy associatedMessageGUID:uUIDString associatedMessageType:v18 associatedMessageRange:v40[4] messageSummaryInfo:v40[5] threadIdentifier:{liteAssociatedMessageSummaryInfo, 0}];

  tapback3 = [messageCopy tapback];
  associatedMessageEmoji = [tapback3 associatedMessageEmoji];
  [v29 setAssociatedMessageEmoji:associatedMessageEmoji];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&v39, 8);

  return v29;
}

void __93__IMMessageItem_LiteBlastDoor___associatedMessageItemWithGUID_senderID_date_liteTextMessage___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v6 = [v15 messagePartBody];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [v15 messagePartRange];
    v9 = *(a1[5] + 8);
    *(v9 + 32) = v8;
    *(v9 + 40) = v10;
    v11 = [v15 messagePartGUIDForMessageGUID:a1[4]];
    v12 = [v11 encodedMessagePartGUID];
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a4 = 1;
  }
}

+ (id)_messageGUIDForLiteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[NSUUID alloc] initWithUUIDString:identifierCopy];
  uUIDString = [v4 UUIDString];

  if ([uUIDString length])
  {
    v6 = uUIDString;
  }

  else
  {
    v6 = +[NSString stringGUID];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138412546;
        v10 = identifierCopy;
        v11 = 2112;
        v12 = v6;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Invalid iMessage Lite identifier %@, replaced with %@ (de-duplication may fail!)", &v9, 0x16u);
      }
    }
  }

  return v6;
}

+ (id)_expressiveSendStyleIDForBlastDoorLiteTextMessageEffect:(int64_t)effect
{
  if ((effect - 1) > 0xC)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&off_656D0 + effect - 1);
  }

  return v4;
}

+ (id)_threadIdentifierForThreadOriginatorUUID:(id)d
{
  if (d)
  {
    uUIDString = [d UUIDString];
    if ([uUIDString length])
    {
      [self _rangeOfSingleMessagePartForMessageWithGUID:uUIDString];
      ThreadIdentifierWithOriginatorGUID = IMMessageCreateThreadIdentifierWithOriginatorGUID();
    }

    else
    {
      ThreadIdentifierWithOriginatorGUID = 0;
    }
  }

  else
  {
    ThreadIdentifierWithOriginatorGUID = 0;
  }

  return ThreadIdentifierWithOriginatorGUID;
}

+ (_NSRange)_rangeOfSingleMessagePartForMessageWithGUID:(id)d
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3010000000;
  v19 = 0;
  v20 = 0;
  v18 = "";
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 messageWithGUID:dCopy];

  if (v5)
  {
    plainBody = [v5 plainBody];

    if (plainBody)
    {
      plainBody2 = [v5 plainBody];
      v8 = [plainBody2 length];
      v9 = v16;
      v16[4] = 0;
      v9[5] = v8;
    }

    else
    {
      plainBody2 = [v5 body];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __76__IMMessageItem_LiteBlastDoor___rangeOfSingleMessagePartForMessageWithGUID___block_invoke;
      v14[3] = &unk_656B0;
      v14[4] = &v15;
      [plainBody2 __im_visitMessageParts:v14];
    }
  }

  v11 = v16[4];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);
  v12 = v11;
  v13 = v10;
  result.length = v13;
  result.location = v12;
  return result;
}

void __76__IMMessageItem_LiteBlastDoor___rangeOfSingleMessagePartForMessageWithGUID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 messagePartBody];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [v11 messagePartRange];
    v9 = *(*(a1 + 32) + 8);
    *(v9 + 32) = v8;
    *(v9 + 40) = v10;
    *a4 = 1;
  }
}

+ (int64_t)_associatedMessageTypeFromBlastDoorLiteAssociatedMessageType:(int64_t)type
{
  if (type > 0xD)
  {
    return 2001;
  }

  else
  {
    return qword_531D8[type];
  }
}

- (id)liteAssociatedMessageSummaryInfo
{
  selfCopy = self;
  IMMessageItem.liteAssociatedMessageSummaryInfo()();

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

@end