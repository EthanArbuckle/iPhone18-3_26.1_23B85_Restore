@interface MessageTranscodeController
+ (id)sharedInstance;
- (void)generateSnapshotForMessageGUID:(id)d payloadData:(id)data balloonBundleID:(id)iD senderContext:(id)context completionBlock:(id)block;
- (void)transcodePayloadData:(id)data balloonBundleID:(id)d attachments:(id)attachments completionBlock:(id)block;
- (void)transcribeAudioForAudioTransferURL:(id)l withCompletion:(id)completion;
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

- (void)transcodePayloadData:(id)data balloonBundleID:(id)d attachments:(id)attachments completionBlock:(id)block
{
  if (block)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 134218242;
        v12 = [data length];
        v13 = 2112;
        dCopy = d;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Transcoder received request to fallback data : %lu  balloonBundleID: %@", &v11, 0x16u);
      }
    }

    [+[IMTranscodeController sharedInstance](IMTranscodeController transcodeFallbackFileTransferPayloadData:"transcodeFallbackFileTransferPayloadData:balloonBundleID:attachments:completionBlock:" balloonBundleID:data attachments:d completionBlock:attachments, block];
  }
}

- (void)generateSnapshotForMessageGUID:(id)d payloadData:(id)data balloonBundleID:(id)iD senderContext:(id)context completionBlock:(id)block
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
        v17 = [data length];
        v18 = 2112;
        iDCopy = iD;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Transcoder received request to snapshot data: %lu  balloonBundleID: %@", &v16, 0x16u);
      }
    }

    [+[IMTranscodeController sharedInstance](IMTranscodeController generateSnapshotForMessageGUID:"generateSnapshotForMessageGUID:payloadURL:balloonBundleID:senderContext:completionBlock:" payloadURL:d balloonBundleID:PayloadURL senderContext:iD completionBlock:context, block];
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

    (*(block + 2))(block, 0, [NSError errorWithDomain:IMTranscodeErrorDomain code:-3 userInfo:0]);
  }
}

- (void)transcribeAudioForAudioTransferURL:(id)l withCompletion:(id)completion
{
  v6 = +[IMTranscodeController sharedInstance];

  [(IMTranscodeController *)v6 transcribeAudioForAudioTransferURL:l withCompletion:completion];
}

@end