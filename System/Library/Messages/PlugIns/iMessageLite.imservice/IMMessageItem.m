@interface IMMessageItem
+ (IMMessageItem)messageItemWithLiteIdentifier:(id)a3 liteData:(id)a4 senderID:(id)a5 date:(id)a6 error:(id *)a7;
+ (IMMessageItem)messageItemWithLiteRelayIdentifier:(id)a3 liteRelayData:(id)a4 date:(id)a5 error:(id *)a6;
+ (_NSRange)_rangeOfSingleMessagePartForMessageWithGUID:(id)a3;
+ (id)_associatedMessageItemWithGUID:(id)a3 date:(id)a4 liteRelayTextMessage:(id)a5;
+ (id)_associatedMessageItemWithGUID:(id)a3 senderID:(id)a4 date:(id)a5 liteTextMessage:(id)a6;
+ (id)_expressiveSendStyleIDForBlastDoorLiteTextMessageEffect:(int64_t)a3;
+ (id)_fallbackTextForIMAssociatedMessageItem:(id)a3;
+ (id)_messageGUIDForLiteIdentifier:(id)a3;
+ (id)_threadIdentifierForThreadOriginatorUUID:(id)a3;
+ (int64_t)_associatedMessageTypeFromBlastDoorLiteAssociatedMessageType:(int64_t)a3;
- (id)liteAssociatedMessageSummaryInfo;
@end

@implementation IMMessageItem

+ (IMMessageItem)messageItemWithLiteIdentifier:(id)a3 liteData:(id)a4 senderID:(id)a5 date:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v32 = a6;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = v12;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Attempting to defuse %@", buf, 0xCu);
    }
  }

  v16 = +[IMDChatRegistry sharedInstance];
  v17 = [v16 hasKnownSenderChatWithChatIdentifier:v14];

  v18 = [IMSenderContext contextWithKnownSender:v17 serviceName:IMServiceNameiMessageLite];
  v34 = 0;
  v19 = [IMBlastdoor sendLiteData:v13 senderContext:v18 error:&v34];
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
    v23 = [a1 _messageGUIDForLiteIdentifier:v12];
    v24 = [v19 tapback];
    v25 = v24 == 0;

    if (v25)
    {
      v26 = [[IMMessageItem alloc] initWithSender:v14 time:v33 guid:v23 type:0];
      v27 = [v19 plainTextBody];
      [v26 setPlainBody:v27];

      v28 = [a1 _expressiveSendStyleIDForBlastDoorLiteTextMessageEffect:{objc_msgSend(v19, "effect")}];
      [v26 setExpressiveSendStyleID:v28];

      v29 = [v19 threadOriginatorUUID];
      v30 = [a1 _threadIdentifierForThreadOriginatorUUID:v29];
      [v26 setThreadIdentifier:v30];
    }

    else
    {
      v26 = [a1 _associatedMessageItemWithGUID:v23 senderID:v14 date:v33 liteTextMessage:v19];
    }
  }

  else
  {
    if (!a7)
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
    *a7 = v26 = 0;
  }

LABEL_19:

  return v26;
}

+ (IMMessageItem)messageItemWithLiteRelayIdentifier:(id)a3 liteRelayData:(id)a4 date:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v10;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Attempting to defuse %@", buf, 0xCu);
    }
  }

  v14 = [IMSenderContext contextWithKnownSender:1 serviceName:IMServiceNameiMessageLite];
  v29 = 0;
  v15 = [IMBlastdoor sendLiteRelayData:v11 senderContext:v14 error:&v29];
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
    v19 = [a1 _messageGUIDForLiteIdentifier:v10];
    v20 = [v15 tapback];
    v21 = v20 == 0;

    if (v21)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v33 = v10;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Creating text message item for: %@", buf, 0xCu);
        }
      }

      v24 = [IMMessageItem alloc];
      v25 = [v15 chatIdentifier];
      v22 = [v24 initWithSender:v25 time:v12 guid:v19 type:0];

      v26 = [v15 plainTextBody];
      [v22 setPlainBody:v26];

      v27 = [v15 chatIdentifier];
      [v22 setCloudKitChatID:v27];
    }

    else
    {
      v22 = [a1 _associatedMessageItemWithGUID:v19 date:v12 liteRelayTextMessage:v15];
    }
  }

  else
  {
    if (!a6)
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
    *a6 = v22 = 0;
  }

LABEL_23:

  return v22;
}

+ (id)_associatedMessageItemWithGUID:(id)a3 date:(id)a4 liteRelayTextMessage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Creating associated message item for: %@", &buf, 0xCu);
    }
  }

  v12 = [v10 tapback];
  v13 = [v12 associatedMessageUUID];
  v14 = [v13 UUIDString];

  v15 = [v10 tapback];
  v16 = [a1 _associatedMessageTypeFromBlastDoorLiteAssociatedMessageType:{objc_msgSend(v15, "associatedMessageType")}];

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
  v18 = [v17 messageWithGUID:v14];

  v19 = [v18 plainBody];
  LOBYTE(v17) = v19 == 0;

  if (v17)
  {
    v23 = [v18 body];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = __89__IMMessageItem_LiteBlastDoor___associatedMessageItemWithGUID_date_liteRelayTextMessage___block_invoke;
    v33[3] = &unk_65660;
    p_buf = &buf;
    v36 = v37;
    v34 = v14;
    [v23 __im_visitMessageParts:v33];

    v20 = v34;
  }

  else
  {
    v20 = [v18 plainBody];
    v21 = [v20 length];
    v22 = *(&buf + 1);
    *(*(&buf + 1) + 32) = 0;
    *(v22 + 40) = v21;
  }

  v24 = [v18 liteAssociatedMessageSummaryInfo];
  v25 = [IMAssociatedMessageItem alloc];
  v26 = [v10 chatIdentifier];
  v27 = [v25 initWithSender:v26 time:v9 body:0 attributes:0 fileTransferGUIDs:0 flags:0 error:0 guid:v8 associatedMessageGUID:v14 associatedMessageType:v16 associatedMessageRange:*(*(&buf + 1) + 32) messageSummaryInfo:*(*(&buf + 1) + 40) threadIdentifier:{v24, 0}];

  v28 = [v10 tapback];
  v29 = [v28 associatedMessageEmoji];
  [v27 setAssociatedMessageEmoji:v29];

  v30 = [v10 chatIdentifier];
  [v27 setCloudKitChatID:v30];

  v31 = [a1 _fallbackTextForIMAssociatedMessageItem:v27];
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

+ (id)_fallbackTextForIMAssociatedMessageItem:(id)a3
{
  v3 = a3;
  v4 = [v3 messageSummaryInfo];
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
  v9 = [v3 tapback];

  v10 = [v9 backwardCompatibilityStringWithMessageSummaryInfo:v4 isAdaptiveImageGlyphProvider:v6 isCommSafetySensitiveProvider:v8];

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

+ (id)_associatedMessageItemWithGUID:(id)a3 senderID:(id)a4 date:(id)a5 liteTextMessage:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 tapback];
  v15 = [v14 associatedMessageUUID];
  v16 = [v15 UUIDString];

  v17 = [v13 tapback];
  v18 = [a1 _associatedMessageTypeFromBlastDoorLiteAssociatedMessageType:{objc_msgSend(v17, "associatedMessageType")}];

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
  v20 = [v19 messageWithGUID:v16];

  v21 = [v20 plainBody];

  if (v21)
  {
    v22 = [v20 plainBody];
    v23 = [v22 length];
    v24 = v40;
    v40[4] = 0;
    v24[5] = v23;
  }

  else
  {
    v25 = [v20 body];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = __93__IMMessageItem_LiteBlastDoor___associatedMessageItemWithGUID_senderID_date_liteTextMessage___block_invoke;
    v33[3] = &unk_65660;
    v35 = &v39;
    v36 = v37;
    v34 = v16;
    [v25 __im_visitMessageParts:v33];

    v22 = v34;
  }

  v26 = [v20 liteAssociatedMessageSummaryInfo];
  v27 = [IMAssociatedMessageItem alloc];
  v28 = [v20 body];
  v29 = [v27 initWithSender:v11 time:v12 body:v28 attributes:0 fileTransferGUIDs:0 flags:0 error:0 guid:v10 associatedMessageGUID:v16 associatedMessageType:v18 associatedMessageRange:v40[4] messageSummaryInfo:v40[5] threadIdentifier:{v26, 0}];

  v30 = [v13 tapback];
  v31 = [v30 associatedMessageEmoji];
  [v29 setAssociatedMessageEmoji:v31];

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

+ (id)_messageGUIDForLiteIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[NSUUID alloc] initWithUUIDString:v3];
  v5 = [v4 UUIDString];

  if ([v5 length])
  {
    v6 = v5;
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
        v10 = v3;
        v11 = 2112;
        v12 = v6;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Invalid iMessage Lite identifier %@, replaced with %@ (de-duplication may fail!)", &v9, 0x16u);
      }
    }
  }

  return v6;
}

+ (id)_expressiveSendStyleIDForBlastDoorLiteTextMessageEffect:(int64_t)a3
{
  if ((a3 - 1) > 0xC)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&off_656D0 + a3 - 1);
  }

  return v4;
}

+ (id)_threadIdentifierForThreadOriginatorUUID:(id)a3
{
  if (a3)
  {
    v4 = [a3 UUIDString];
    if ([v4 length])
    {
      [a1 _rangeOfSingleMessagePartForMessageWithGUID:v4];
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

+ (_NSRange)_rangeOfSingleMessagePartForMessageWithGUID:(id)a3
{
  v3 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3010000000;
  v19 = 0;
  v20 = 0;
  v18 = "";
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 messageWithGUID:v3];

  if (v5)
  {
    v6 = [v5 plainBody];

    if (v6)
    {
      v7 = [v5 plainBody];
      v8 = [v7 length];
      v9 = v16;
      v16[4] = 0;
      v9[5] = v8;
    }

    else
    {
      v7 = [v5 body];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __76__IMMessageItem_LiteBlastDoor___rangeOfSingleMessagePartForMessageWithGUID___block_invoke;
      v14[3] = &unk_656B0;
      v14[4] = &v15;
      [v7 __im_visitMessageParts:v14];
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

+ (int64_t)_associatedMessageTypeFromBlastDoorLiteAssociatedMessageType:(int64_t)a3
{
  if (a3 > 0xD)
  {
    return 2001;
  }

  else
  {
    return qword_531D8[a3];
  }
}

- (id)liteAssociatedMessageSummaryInfo
{
  v2 = self;
  IMMessageItem.liteAssociatedMessageSummaryInfo()();

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

@end