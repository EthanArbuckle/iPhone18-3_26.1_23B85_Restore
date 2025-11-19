@interface MessageTranscodeController
+ (id)sharedInstance;
- (void)generateSnapshotForMessageGUID:(id)a3 payloadData:(id)a4 balloonBundleID:(id)a5 senderContext:(id)a6 completionBlock:(id)a7;
- (void)transcodePayloadData:(id)a3 balloonBundleID:(id)a4 attachments:(id)a5 completionBlock:(id)a6;
- (void)transcribeAudioForAudioTransferURL:(id)a3 withCompletion:(id)a4;
@end

@implementation MessageTranscodeController

+ (id)sharedInstance
{
  if (qword_124338 != -1)
  {
    sub_BD444();
  }

  return qword_124320;
}

- (void)transcodePayloadData:(id)a3 balloonBundleID:(id)a4 attachments:(id)a5 completionBlock:(id)a6
{
  if (a6)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 134218242;
        v12 = [a3 length];
        v13 = 2112;
        v14 = a4;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Transcoder received request to fallback data : %lu  balloonBundleID: %@", &v11, 0x16u);
      }
    }

    [+[IMTranscodeController sharedInstance](IMTranscodeController transcodeFallbackFileTransferPayloadData:"transcodeFallbackFileTransferPayloadData:balloonBundleID:attachments:completionBlock:" balloonBundleID:a3 attachments:a4 completionBlock:a5, a6];
  }
}

- (void)generateSnapshotForMessageGUID:(id)a3 payloadData:(id)a4 balloonBundleID:(id)a5 senderContext:(id)a6 completionBlock:(id)a7
{
  PayloadURL = IMSharedHelperExtractPayloadURL();
  v13 = IMOSLoggingEnabled();
  if (PayloadURL)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = 134218242;
        v17 = [a4 length];
        v18 = 2112;
        v19 = a5;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Transcoder received request to snapshot data: %lu  balloonBundleID: %@", &v16, 0x16u);
      }
    }

    [+[IMTranscodeController sharedInstance](IMTranscodeController generateSnapshotForMessageGUID:"generateSnapshotForMessageGUID:payloadURL:balloonBundleID:senderContext:completionBlock:" payloadURL:a3 balloonBundleID:PayloadURL senderContext:a5 completionBlock:a6, a7];
  }

  else
  {
    if (v13)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed to extract URL from payload data!", &v16, 2u);
      }
    }

    (*(a7 + 2))(a7, 0, [NSError errorWithDomain:IMTranscodeErrorDomain code:-3 userInfo:0]);
  }
}

- (void)transcribeAudioForAudioTransferURL:(id)a3 withCompletion:(id)a4
{
  v6 = +[IMTranscodeController sharedInstance];

  [(IMTranscodeController *)v6 transcribeAudioForAudioTransferURL:a3 withCompletion:a4];
}

@end