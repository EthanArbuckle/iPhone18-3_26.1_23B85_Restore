@interface MessageAttachmentController
+ (id)_capabilitiesForTransfers:(id)a3 supportsASTC:(BOOL)a4;
+ (id)_combinedTransferUserInfoForAttachmentSendContexts:(id)a3 transfer:(id)a4 message:(id)a5 commonCapabilities:(id)a6;
- (BOOL)_previewAttachmentEnabledForStickers;
- (BOOL)_shouldAutoAccept:(id)a3 transfer:(id)a4 isAltAccountDevice:(BOOL)a5 shouldDownloadFromPeer:(BOOL)a6;
- (BOOL)_shouldDisableFasterDownload:(id)a3 message:(id)a4;
- (BOOL)_shouldUploadPayloadDataOverMMCS:(id)a3;
- (BOOL)sendToLocalPeers:(id)a3;
- (BOOL)sendToLocalPeersFile:(id)a3 dictionary:(id)a4;
- (MessageAttachmentController)initWithSession:(id)a3;
- (double)_stickerUploadTTL;
- (id)_createPayloadRequestDictionaryForMessageGUID:(id)a3 requestKey:(id)a4;
- (id)_createPayloadResponseDictionaryWithDictionary:(id)a3 payloadData:(id)a4 attachments:(id)a5;
- (id)_fileHash:(id)a3;
- (id)_transferInfoFileForKey:(id)a3;
- (id)_transferInfoForKey:(id)a3;
- (id)attachmentRefreshDeliveryController;
- (id)deliveryController;
- (id)eagerUploadKeyForURL:(id)a3 sizes:(id)a4 transcodeDictionary:(id)a5 capabilities:(id)a6;
- (id)eagerUploadStatusForKey:(id)a3;
- (id)localDeviceProductVersion;
- (void)_deleteTransferInfoForKey:(id)a3;
- (void)_processDownloadedPayload:(id)a3 forMessageGUID:(id)a4 balloonBundleID:(id)a5 fromIdentifier:(id)a6 senderToken:(id)a7 withCompletionBlock:(id)a8;
- (void)_sendAttachmentToPeerDevice:(unint64_t)a3 fileTransferGUID:(id)a4 messageGuid:(id)a5 fileURL:(id)a6 useLocalPeersFileAPI:(BOOL)a7 error:(int64_t)a8;
- (void)_sendURL:(id)a3 urlToRemove:(id)a4 topic:(id)a5 sessionInfo:(id)a6 messageGUID:(id)a7 transferID:(id)a8 fileTransferGUID:(id)a9 attachmentSendContexts:(id)a10 failIfError:(BOOL)a11 sendStatus:(id)a12 attachmentStatus:(id)a13 group:(id)a14;
- (void)_setTransferInfo:(id)a3 key:(id)a4;
- (void)_transcodeURL:(id)a3 reason:(unint64_t)a4 transfer:(id)a5 sizes:(id)a6 commonCapabilities:(id)a7 sendStatus:(id)a8 urlGroup:(id)a9 didTranscode:(id)a10 handleURL:(id)a11;
- (void)downloadPayloadDataForMessageGUID:(id)a3 payLoadDictionary:(id)a4 topic:(id)a5 completionBlock:(id)a6;
- (void)eagerUploadCancel:(id)a3;
- (void)eagerUploadTransfer:(id)a3 recipients:(id)a4;
- (void)fetchPayloadDataFromCompanionForGUID:(id)a3 completionBlock:(id)a4;
- (void)findTranscoderCapabilitiesAcrossRecipients:(id)a3 forTransfers:(id)a4 completion:(id)a5;
- (void)handlePayloadDataRequest:(id)a3 attempts:(unint64_t)a4;
- (void)handlePayloadDataResponse:(id)a3;
- (void)handleTranscodeCompletionBlockForMessage:(id)a3 displayIDs:(id)a4 additionalContext:(id)a5 attemptedTranscode:(BOOL)a6 transcodedTransferGUIDs:(id)a7 containsAutoLoopVideo:(BOOL)a8 outputURLs:(id)a9 text:(id)a10 success:(BOOL)a11 error:(id)a12 completionBlock:(id)a13;
- (void)networkMonitorDidUpdate:(id)a3;
- (void)processDownloadedPayloadData:(id)a3 forMessageGUID:(id)a4 balloonBundleID:(id)a5 fromIdentifier:(id)a6 senderToken:(id)a7 withCompletionBlock:(id)a8;
- (void)processMessageAttachmentDictionary:(id)a3 forMessageGUID:(id)a4 balloonBundleID:(id)a5 fromIdentifier:(id)a6 senderToken:(id)a7 withCompletionBlock:(id)a8;
- (void)remoteFileResponse:(id)a3;
- (void)remotefileRequest:(id)a3 attempts:(int64_t)a4 shouldRetry:(BOOL)a5;
- (void)retrieveAttachmentsForMessage:(id)a3 inlineAttachments:(id)a4 displayID:(id)a5 topic:(id)a6 comingFromStorage:(BOOL)a7 shouldForceAutoDownload:(BOOL)a8 senderContext:(id)a9 completionBlock:(id)a10;
- (void)retrieveLocalFileTransfer:(id)a3 attachmentIndex:(unint64_t)a4 path:(id)a5 requestURLString:(id)a6 ownerID:(id)a7 signature:(id)a8 decryptionKey:(id)a9 requestedSize:(id)a10 fileSize:(unint64_t)a11 progressBlock:(id)a12 completionBlock:(id)a13;
- (void)sendAttachmentsForMessage:(id)a3 canSendInline:(BOOL)a4 displayIDs:(id)a5 additionalContext:(id)a6 commonCapabilities:(id)a7 mode:(unint64_t)a8 sessionInfo:(id)a9 topic:(id)a10 completionBlock:(id)a11 uploadFailureBlock:(id)a12;
- (void)sendAttachmentsForMessage:(id)a3 canSendInline:(BOOL)a4 displayIDs:(id)a5 additionalContext:(id)a6 mode:(unint64_t)a7 fromID:(id)a8 recipients:(id)a9 completionBlock:(id)a10 uploadFailureBlock:(id)a11;
- (void)sendFallbackAttachmentsForMessage:(id)a3 displayIDs:(id)a4 additionalContext:(id)a5 completionBlock:(id)a6;
- (void)sendPayloadData:(id)a3 messageGUID:(id)a4 fromID:(id)a5 recipients:(id)a6 completionBlock:(id)a7;
- (void)sendPayloadData:(id)a3 messageGUID:(id)a4 sessionInfo:(id)a5 topic:(id)a6 completionBlock:(id)a7;
- (void)sessionInfoForBusinessReceipients:(id)a3 fromID:(id)a4 completion:(id)a5;
- (void)transcribeMessageIfNeeded:(id)a3 forTransfer:(id)a4 completion:(id)a5;
- (void)updateGroupPhoto:(id)a3 forChat:(id)a4 messageGuid:(id)a5;
@end

@implementation MessageAttachmentController

- (MessageAttachmentController)initWithSession:(id)a3
{
  v10.receiver = self;
  v10.super_class = MessageAttachmentController;
  v3 = [(MessageAttachmentController *)&v10 initWithSession:a3];
  if (v3)
  {
    v4 = +[IMSystemMonitor sharedInstance];
    [v4 setWatchesScreenLightState:1];

    v5 = objc_alloc_init(NSMutableDictionary);
    localPayloadDataRequestGUIDToCompletionBlockMap = v3->_localPayloadDataRequestGUIDToCompletionBlockMap;
    v3->_localPayloadDataRequestGUIDToCompletionBlockMap = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    eagerUploadStatuses = v3->_eagerUploadStatuses;
    v3->_eagerUploadStatuses = v7;
  }

  return v3;
}

- (id)deliveryController
{
  v2 = [(MessageAttachmentController *)self msgSession];
  v3 = [v2 deliveryController];

  return v3;
}

- (id)attachmentRefreshDeliveryController
{
  v2 = [(MessageAttachmentController *)self msgSession];
  v3 = [v2 attachmentRefreshDeliveryController];

  return v3;
}

- (BOOL)_previewAttachmentEnabledForStickers
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"disableStickerPreviewSize"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Not enabling preview size for sticker", v7, 2u);
      }
    }

    return 0;
  }

  else
  {

    return +[IMDAttachmentUtilities isPreviewAttachmentSizeEnabled];
  }
}

- (double)_stickerUploadTTL
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"fast-transfer-ttl"];
  v4 = IMAttachmentsLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      [v3 doubleValue];
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Server bag MMCS parameter TTL %f", &v10, 0xCu);
    }

    [v3 doubleValue];
    v8 = v7;
  }

  else
  {
    if (v5)
    {
      v10 = 134217984;
      v11 = 0x41407AC000000000;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "No server bag MMCS parameter TTL set. Using default value %f", &v10, 0xCu);
    }

    v8 = 2160000.0;
  }

  return v8;
}

- (id)_transferInfoFileForKey:(id)a3
{
  v4 = a3;
  v5 = IMStickerTransferInfoDirectoryURL();
  v6 = [v5 path];
  v7 = [v6 stringByExpandingTildeInPath];

  IMSharedHelperEnsureDirectoryExistsAtPath();
  if ([(MessageAttachmentController *)self _previewAttachmentEnabledForStickers])
  {
    v8 = [v4 stringByAppendingString:@"-preview"];
    v9 = [v8 lastPathComponent];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v9;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "_transferInfoFileForKey _previewAttachmentEnabled computed file name %@ ", &v14, 0xCu);
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v11 = [v7 stringByAppendingPathComponent:v9];
  v12 = [v11 stringByAppendingPathExtension:@"plist"];

  return v12;
}

- (void)_setTransferInfo:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(MessageAttachmentController *)self _transferInfoFileForKey:v7];
    v10 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "_setTransferInfo plistFilePath %@", buf, 0xCu);
    }

    v11 = +[NSFileManager defaultManager];
    v12 = [v11 fileExistsAtPath:v9 isDirectory:0];

    if (v12)
    {
      v13 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v9;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "transferUserInfo plist already present at path %@", buf, 0xCu);
      }

      v14 = +[NSFileManager defaultManager];
      v24 = 0;
      [v14 removeItemAtPath:v9 error:&v24];
      v15 = v24;

      if (v15 && IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v26 = v9;
          v27 = 2112;
          v28 = v15;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Attachments could not delete file at path %@, error %@", buf, 0x16u);
        }
      }
    }

    v17 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "_setTransferInfo key:%@ transferInfo:%@", buf, 0x16u);
    }

    [v6 writeToFile:v9 atomically:1];
    v18 = +[NSFileManager defaultManager];
    v19 = [NSDictionary dictionaryWithObjectsAndKeys:NSFileProtectionCompleteUntilFirstUserAuthentication, NSFileProtectionKey, 0];
    v23 = 0;
    [v18 setAttributes:v19 ofItemAtPath:v9 error:&v23];
    v20 = v23;

    if (v20 && IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v26 = v9;
        v27 = 2112;
        v28 = v20;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Attachments could not make class C for file at path %@ error %@", buf, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v26 = v6;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "_setTransferInfo invalid parameters. transferUserInfo %@, userInfoKey %@", buf, 0x16u);
    }
  }
}

- (id)_transferInfoForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MessageAttachmentController *)self _transferInfoFileForKey:v4];
    v6 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "_transferInfoForKey plistFilePath %@", &v11, 0xCu);
    }

    v7 = [NSDictionary dictionaryWithContentsOfFile:v5];
    v8 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "_transferInfoForKey key:%@ object:%@", &v11, 0x16u);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Attachments nil key passed to _transferInfoForKey ", &v11, 2u);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (void)_deleteTransferInfoForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MessageAttachmentController *)self _transferInfoFileForKey:v4];
    v6 = +[NSFileManager defaultManager];
    v11 = 0;
    [v6 removeItemAtPath:v5 error:&v11];
    v7 = v11;

    v8 = IMOSLoggingEnabled();
    if (v7)
    {
      if (v8)
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v13 = v5;
          v14 = 2112;
          v15 = v7;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "_deleteTransferInfoForKey failed to delete file at path %@ error %@", buf, 0x16u);
        }

LABEL_14:
      }
    }

    else if (v8)
    {
      v9 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "_deleteTransferInfoForKey deleted file at path %@", buf, 0xCu);
      }

      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "_deleteTransferInfoForKey nil key passed in. Not deleting", buf, 2u);
    }
  }

LABEL_16:
}

- (id)_fileHash:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = IMSharedHelperMD5HashOfFileAtPath();
    v5 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "filePath %@ fileHash %@", &v8, 0x16u);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "nil filePath to _fileHash", &v8, 2u);
      }
    }

    v4 = 0;
  }

  return v4;
}

- (void)updateGroupPhoto:(id)a3 forChat:(id)a4 messageGuid:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 groupPhotoGuid];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v34 = v10;
      v35 = 2112;
      v36 = v7;
      v37 = 2112;
      v38 = v8;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Updating group photo from %@ to %@ for chat %@", buf, 0x20u);
    }
  }

  if (IMSharedHelperAreObjectsLogicallySame())
  {
    v12 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, " => Failed to update", buf, 2u);
    }
  }

  else
  {
    v13 = +[IMDFileTransferCenter sharedInstance];
    v12 = [v13 transferForGUID:v7];

    v14 = +[IMDAttachmentStore sharedInstance];
    v15 = [v8 guid];
    [v14 storeAttachment:v12 associateWithMessageWithGUID:v9 chatGUID:v15 storeAtExternalLocation:1];

    v16 = +[IMDChatRegistry sharedInstance];
    v17 = [v8 chatIdentifier];
    v18 = [v16 allExistingChatsWithIdentifier:v17 style:{objc_msgSend(v8, "style")}];

    v19 = +[IMDAttachmentStore sharedInstance];
    [v19 deleteAttachmentWithGUID:v10];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v21)
    {
      v22 = *v29;
      do
      {
        v23 = 0;
        do
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v28 + 1) + 8 * v23) updateGroupPhotoGuid:{v7, v28}];
          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v21);
    }

    v24 = +[IMDFileTransferCenter sharedInstance];
    [v24 removeTransferForGUID:v10];

    [v8 updateGroupPhotoUploadFailureCount:0];
    v25 = +[IMDChatRegistry sharedInstance];
    [v25 updateFaceTimeGroupPhoto:v8];

    v26 = +[IMSafetyMonitorCoordinator sharedCoordinator];
    v27 = [v8 groupID];
    [v26 informOfChangedGroupPhoto:v27];
  }
}

+ (id)_combinedTransferUserInfoForAttachmentSendContexts:(id)a3 transfer:(id)a4 message:(id)a5 commonCapabilities:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v9 handle];
  if ([v13 length])
  {
    v14 = [v9 handle];
    IsBusinessID = IMStringIsBusinessID();
  }

  else
  {
    IsBusinessID = 0;
  }

  v16 = [v12 sortedArrayUsingComparator:&stru_1133D8];

  v17 = v16;
  v18 = v17;
  if ([v17 count] >= 2)
  {
    v19 = [v17 lastObject];
    v20 = [v17 subarrayWithRange:{0, objc_msgSend(v17, "count") - 1}];
    v36 = v19;
    v21 = [NSArray arrayWithObjects:&v36 count:1];
    v18 = [v21 arrayByAddingObjectsFromArray:v20];
  }

  v22 = [IMDAttachmentUtilities shouldEnablePreviewTranscodingQualityForTransfer:v11 isSending:1];
  v23 = [v11 type];

  v24 = UTTypeConformsTo(v23, kUTTypeImage) != 0;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_581EC;
  v30[3] = &unk_113400;
  v33 = v22;
  v34 = v24;
  v35 = IsBusinessID;
  v31 = v10;
  v25 = [[NSMutableDictionary alloc] initWithCapacity:{5 * objc_msgSend(v18, "count")}];
  v32 = v25;
  v26 = v10;
  [v18 enumerateObjectsUsingBlock:v30];
  v27 = v32;
  v28 = v25;

  return v25;
}

- (id)eagerUploadKeyForURL:(id)a3 sizes:(id)a4 transcodeDictionary:(id)a5 capabilities:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [a3 path];
  v13 = IMSharedHelperMD5HashOfFileAtPath();

  if (v10 && [v10 count])
  {
    v14 = IMSharedHelperMD5HashPlist();
    v15 = [v13 stringByAppendingString:v14];

    v13 = v15;
  }

  if (v11 && [v11 count])
  {
    v16 = IMSharedHelperMD5HashPlist();
    v17 = [v13 stringByAppendingString:v16];

    v13 = v17;
  }

  if ([v9 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = v9;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        v22 = 0;
        v23 = v13;
        do
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = [*(*(&v27 + 1) + 8 * v22) stringValue];
          v13 = [v23 stringByAppendingFormat:@"-%@", v24];

          v22 = v22 + 1;
          v23 = v13;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v20);
    }

    v9 = v26;
  }

  return v13;
}

- (id)eagerUploadStatusForKey:(id)a3
{
  v4 = a3;
  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  if (v5 > *&qword_124368)
  {
    *&qword_124368 = v5 + 3600.0;
    v7 = objc_alloc_init(NSMutableArray);
    eagerUploadStatuses = self->_eagerUploadStatuses;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_587D4;
    v15 = &unk_113428;
    v17 = v6;
    v16 = v7;
    v9 = v7;
    [(NSMutableDictionary *)eagerUploadStatuses enumerateKeysAndObjectsUsingBlock:&v12];
    [(NSMutableDictionary *)self->_eagerUploadStatuses removeObjectsForKeys:v9, v12, v13, v14, v15];
  }

  if (v4)
  {
    v10 = [(NSMutableDictionary *)self->_eagerUploadStatuses objectForKeyedSubscript:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)eagerUploadCancel:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  eagerUploadStatuses = self->_eagerUploadStatuses;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_589AC;
  v12 = &unk_113450;
  v13 = v4;
  v14 = v5;
  v7 = v5;
  v8 = v4;
  [(NSMutableDictionary *)eagerUploadStatuses enumerateKeysAndObjectsUsingBlock:&v9];
  [(NSMutableDictionary *)self->_eagerUploadStatuses removeObjectsForKeys:v7, v9, v10, v11, v12];
}

- (void)eagerUploadTransfer:(id)a3 recipients:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([IMCTSMSUtilities IMIsEagerUploadEnabledForPhoneNumber:0 simID:0])
  {
    v8 = objc_alloc_init(IMFileTransfer);
    [v8 _updateWithDictionaryRepresentation:v6];
    [v8 _setNeedsWrapper:0];
    if ([v8 appMessageFallbackImage] & 1) != 0 || (objc_msgSend(v8, "isRecipeBasedSticker") & 1) != 0 || (objc_msgSend(v8, "shouldFastSend") & 1) != 0 || (objc_msgSend(v8, "isDirectory"))
    {
      v9 = 1;
    }

    else if ([v8 isAuxVideo])
    {
      v9 = +[IMDAttachmentUtilities isPreviewAttachmentSizeEnabled];
    }

    else
    {
      v9 = 0;
    }

    v10 = [v8 type];
    if (UTTypeConformsTo(v10, kUTTypeImage) || UTTypeConformsTo(v10, kUTTypeMovie))
    {
      if (v9)
      {
        goto LABEL_10;
      }
    }

    else if (([v8 totalBytes] > 0x1E00000) | v9 & 1)
    {
LABEL_10:
      v11 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "EAGER skip: policy", buf, 2u);
      }

      goto LABEL_14;
    }

    v12 = [IMDAttachmentUtilities fetchSizeLimitsForTransfer:v8 mode:0];
    v13 = [v12 firstObject];
    v14 = [v13 integerValue];

    *buf = 0;
    v32 = buf;
    v33 = 0x3032000000;
    v34 = sub_58FDC;
    v35 = sub_58FEC;
    v36 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_58FF4;
    v24[3] = &unk_1134C8;
    v24[4] = self;
    v11 = v12;
    v25 = v11;
    v15 = v8;
    v29 = buf;
    v30 = v14;
    v26 = v15;
    v27 = @"com.apple.madrid";
    v28 = @"EAGER";
    v16 = objc_retainBlock(v24);
    v37 = v15;
    v17 = [NSArray arrayWithObjects:&v37 count:1];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_59BB0;
    v19[3] = &unk_1134F0;
    v20 = v7;
    v23 = buf;
    v21 = v15;
    v18 = v16;
    v22 = v18;
    [(MessageAttachmentController *)self findTranscoderCapabilitiesAcrossRecipients:v20 forTransfers:v17 completion:v19];

    _Block_object_dispose(buf, 8);
LABEL_14:
  }
}

- (void)sendAttachmentsForMessage:(id)a3 canSendInline:(BOOL)a4 displayIDs:(id)a5 additionalContext:(id)a6 mode:(unint64_t)a7 fromID:(id)a8 recipients:(id)a9 completionBlock:(id)a10 uploadFailureBlock:(id)a11
{
  v16 = a3;
  v17 = a5;
  v39 = a6;
  v40 = a8;
  v18 = a9;
  v19 = a10;
  v42 = a11;
  v37 = v16;
  v38 = v17;
  v41 = v18;
  if (IMGetCachedDomainIntForKeyWithDefaultValue() < 1)
  {
    v35 = a4;
    v60 = 0;
    v61 = &v60;
    v62 = 0x3010000000;
    v64 = 0;
    v65 = 0;
    v63 = &unk_F3CE9;
    v20 = _os_activity_create(&dword_0, "com.apple.messages.MessageAttachmentUploads", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v20, v61 + 2);
    [v18 __im_canonicalIDSIDsFromAddresses];
    v33 = v32 = v20;
    v21 = IMServiceNameForCanonicalIDSAddresses();
    v34 = self;
    v22 = objc_alloc_init(NSMutableArray);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v23 = [v16 fileTransferGUIDs];
    v24 = [v23 countByEnumeratingWithState:&v56 objects:v73 count:16];
    if (v24)
    {
      v25 = *v57;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v57 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v56 + 1) + 8 * i);
          v28 = [IMDFileTransferCenter sharedInstance:v32];
          v29 = [v28 transferForGUID:v27];

          if (v29)
          {
            v30 = v22 != 0;
          }

          else
          {
            v30 = 0;
          }

          if (v30)
          {
            CFArrayAppendValue(v22, v29);
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v56 objects:v73 count:16];
      }

      while (v24);
    }

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_5A214;
    v43[3] = &unk_113590;
    v53 = &v60;
    v51 = v19;
    v31 = v21;
    v44 = v31;
    v45 = v34;
    v46 = v41;
    v47 = v40;
    v48 = v37;
    v55 = v35;
    v49 = v38;
    v50 = v39;
    v54 = a7;
    v52 = v42;
    [(MessageAttachmentController *)v34 findTranscoderCapabilitiesAcrossRecipients:v46 forTransfers:v22 completion:v43];

    _Block_object_dispose(&v60, 8);
  }

  else
  {
    v66 = _NSConcreteStackBlock;
    v67 = 3221225472;
    v68 = sub_5A1F0;
    v69 = &unk_113518;
    v72 = v19;
    v70 = v16;
    v71 = v17;
    im_dispatch_after();
  }
}

- (void)sendAttachmentsForMessage:(id)a3 canSendInline:(BOOL)a4 displayIDs:(id)a5 additionalContext:(id)a6 commonCapabilities:(id)a7 mode:(unint64_t)a8 sessionInfo:(id)a9 topic:(id)a10 completionBlock:(id)a11 uploadFailureBlock:(id)a12
{
  v107 = a4;
  v15 = a3;
  v90 = a5;
  v89 = a6;
  v99 = a7;
  v98 = a9;
  v101 = a10;
  v91 = a11;
  v100 = a12;
  v113 = v15;
  v106 = [v15 guid];
  if (([v15 isTypingMessage] & 1) == 0)
  {
    v16 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v15 fileTransferGUIDs];
      *buf = 138413058;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      *&buf[22] = 2112;
      v174 = v90;
      LOWORD(v175) = 2048;
      *(&v175 + 2) = a8;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Processing file transfers: %@ (Message: %@   to: %@) mode=%llu", buf, 0x2Au);
    }
  }

  v18 = [v15 fileTransferGUIDs];
  theArray = objc_alloc_init(NSMutableArray);
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  obj = v18;
  v19 = [obj countByEnumeratingWithState:&v169 objects:v181 count:16];
  if (v19)
  {
    v20 = *v170;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v170 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v169 + 1) + 8 * i);
        if (theArray && v22)
        {
          CFArrayAppendValue(theArray, *(*(&v169 + 1) + 8 * i));
        }

        v23 = +[IMDFileTransferCenter sharedInstance];
        v24 = [v23 transferForGUID:v22];

        if ([v24 isAuxImage] && (+[IMDAttachmentUtilities isPreviewAttachmentSizeEnabled](IMDAttachmentUtilities, "isPreviewAttachmentSizeEnabled") & 1) == 0)
        {
          v28 = [IMFileTransfer AuxGUIDFromFileTransferGUID:v22];
          v29 = +[IMDFileTransferCenter sharedInstance];
          v30 = [v29 transferForGUID:v28];

          if (v30)
          {
            v31 = IMAttachmentsLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v28;
              _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Adding Aux video to list of transfer %@", buf, 0xCu);
            }

            if (v28)
            {
              v32 = theArray != 0;
            }

            else
            {
              v32 = 0;
            }

            if (v32)
            {
              CFArrayAppendValue(theArray, v28);
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v28;
              _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "Attachment expected to find transfer for Aux video %@ . But we did not find transfer", buf, 0xCu);
            }
          }
        }

        else
        {
          v25 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = +[IMDAttachmentUtilities isPreviewAttachmentSizeEnabled];
            v27 = @"NO";
            if (v26)
            {
              v27 = @"YES";
            }

            *buf = 138412290;
            *&buf[4] = v27;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Not an Aux image or low quality image on %@. Moving on", buf, 0xCu);
          }

          [v24 setIsAuxImage:0];
          [v24 setAuxStateWasDowngraded:1];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v169 objects:v181 count:16];
    }

    while (v19);
  }

  if (([v113 isTypingMessage] & 1) == 0)
  {
    v34 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = theArray;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "File transfer guids to process %@", buf, 0xCu);
    }
  }

  v35 = [v113 balloonBundleID];
  v36 = [v35 isEqualToString:IMBalloonPluginIdentifierRichLinks];

  if (([(__CFArray *)theArray count]== 0) | v36 & 1)
  {
    if (v36 && [(__CFArray *)theArray count])
    {
      v37 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [(__CFArray *)theArray count];
        *buf = 134217984;
        *&buf[4] = v38;
        v39 = "Skipping %tu file transfers due to payload attachments.";
        v40 = v37;
        v41 = 12;
LABEL_84:
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, v39, buf, v41);
      }
    }

    else
    {
      if ([v113 isTypingMessage])
      {
        goto LABEL_86;
      }

      v37 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v39 = "No file transfers, just continuing";
        v40 = v37;
        v41 = 2;
        goto LABEL_84;
      }
    }

LABEL_86:
    if (v91)
    {
      v91[2](v91, v113, v90, v89, 1, 0);
    }

    goto LABEL_129;
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v42 = [v113 fileTransferGUIDs];
  v43 = [v42 countByEnumeratingWithState:&v165 objects:v180 count:16];
  if (v43)
  {
    v44 = *v166;
    v45 = 1;
    do
    {
      for (j = 0; j != v43; j = j + 1)
      {
        if (*v166 != v44)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v165 + 1) + 8 * j);
        v48 = +[IMDFileTransferCenter sharedInstance];
        v49 = [v48 transferForGUID:v47];

        if (v49 && ![v49 appMessageFallbackImage])
        {
          v45 = 0;
        }

        else
        {
          [v49 setAppMessageFallbackImage:0];
        }
      }

      v43 = [v42 countByEnumeratingWithState:&v165 objects:v180 count:16];
    }

    while (v43);

    if ((v45 & 1) == 0)
    {
      v50 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v106;
        _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEFAULT, "Uploading attachments for app msg %@", buf, 0xCu);
      }

      v112 = objc_alloc_init(MessageAttachmentOverallStatus);
      [(MessageAttachmentOverallStatus *)v112 setError:0];
      [(MessageAttachmentOverallStatus *)v112 setFailed:0];
      v114 = +[IMDFileTransferCenter sharedInstance];
      group = dispatch_group_create();
      if (v107)
      {
        Mutable = [v89 mutableCopy];
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        v51 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = [(__CFArray *)theArray count];
          *buf = 134217984;
          *&buf[4] = v52;
          _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "We can send inline. Trying to inline %lu transfers.", buf, 0xCu);
        }

        v163 = 0u;
        v164 = 0u;
        v161 = 0u;
        v162 = 0u;
        v97 = theArray;
        v108 = [(__CFArray *)v97 countByEnumeratingWithState:&v161 objects:v179 count:16];
        if (v108)
        {
          v53 = 0;
          v104 = *v162;
          do
          {
            for (k = 0; k != v108; k = k + 1)
            {
              if (*v162 != v104)
              {
                objc_enumerationMutation(v97);
              }

              v55 = *(*(&v161 + 1) + 8 * k);
              v56 = [v114 transferForGUID:v55];
              if (v56)
              {
                dispatch_group_enter(group);
                v57 = [v56 localURL];
                v58 = [NSData dataWithContentsOfURL:v57];

                [v56 _setNeedsWrapper:0];
                [v114 startTransfer:v55];
                v59 = [v113 accountID];
                v60 = [v113 handle];
                if (v60)
                {
                  v61 = [v113 handle];
                  [v114 assignTransfer:v55 toAccount:v59 otherPerson:v61];
                }

                else
                {
                  [v114 assignTransfer:v55 toAccount:v59 otherPerson:0];
                }

                v151[0] = _NSConcreteStackBlock;
                v151[1] = 3221225472;
                v151[2] = sub_5B880;
                v151[3] = &unk_1135B8;
                v152 = v58;
                v63 = v56;
                v153 = v63;
                v160 = v53;
                v154 = v106;
                v155 = v114;
                v156 = v55;
                v157 = Mutable;
                v158 = v112;
                v159 = group;
                v64 = v58;
                [(MessageAttachmentController *)self transcribeMessageIfNeeded:v113 forTransfer:v63 completion:v151];
              }

              else
              {
                if (IMOSLoggingEnabled())
                {
                  v62 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    *&buf[4] = v55;
                    _os_log_impl(&dword_0, v62, OS_LOG_TYPE_INFO, "No transfer found for guid: %@", buf, 0xCu);
                  }
                }

                [(MessageAttachmentOverallStatus *)v112 setFailed:1];
                [(MessageAttachmentOverallStatus *)v112 setError:34];
              }

              ++v53;
            }

            v108 = [(__CFArray *)v97 countByEnumeratingWithState:&v161 objects:v179 count:16];
          }

          while (v108);
        }

        v65 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_5BA58;
        block[3] = &unk_1135E0;
        v145 = v97;
        v146 = v112;
        v150 = v91;
        v147 = v113;
        v148 = v90;
        v149 = Mutable;
        v66 = Mutable;
        dispatch_group_notify(group, v65, block);
      }

      else
      {
        v95 = objc_alloc_init(NSFileCoordinator);
        v177[0] = kAttachmentsAutomationTransferGUIDsKey;
        v177[1] = kAttachmentsAutomationMessageGUIDKey;
        v68 = &__NSArray0__struct;
        if (theArray)
        {
          v68 = theArray;
        }

        v178[0] = v68;
        v178[1] = v106;
        v69 = [NSDictionary dictionaryWithObjects:v178 forKeys:v177 count:2];
        AttachmentsAutomationLogMilestoneWithOptionFlags();

        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v92 = theArray;
        v103 = [(__CFArray *)v92 countByEnumeratingWithState:&v140 objects:v176 count:16];
        if (v103)
        {
          v70 = 0;
          v94 = *v141;
          do
          {
            for (m = 0; m != v103; m = m + 1)
            {
              if (*v141 != v94)
              {
                objc_enumerationMutation(v92);
              }

              v72 = *(*(&v140 + 1) + 8 * m);
              v73 = [v114 transferForGUID:v72];
              v125[0] = _NSConcreteStackBlock;
              v125[1] = 3221225472;
              v125[2] = sub_5BB7C;
              v125[3] = &unk_113720;
              v74 = v73;
              v126 = v74;
              v127 = v106;
              v75 = v114;
              v128 = v75;
              v129 = v72;
              v105 = group;
              v130 = v105;
              v131 = self;
              v109 = v112;
              v132 = v109;
              v139 = a8;
              v133 = v99;
              v76 = v113;
              v134 = v76;
              v138 = v100;
              v135 = v101;
              v136 = v98;
              v93 = v95;
              v137 = v93;
              v77 = objc_retainBlock(v125);
              if (v74)
              {
                v78 = IMAttachmentsLogHandle();
                if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                {
                  v79 = [v74 guid];
                  if ([v74 isAuxImage])
                  {
                    v80 = @"YES";
                  }

                  else
                  {
                    v80 = @"NO";
                  }

                  if ([v74 isSticker])
                  {
                    v81 = @"YES";
                  }

                  else
                  {
                    v81 = @"NO";
                  }

                  v82 = [v74 isAnimojiV2];
                  *buf = 138413058;
                  v83 = @"NO";
                  if (v82)
                  {
                    v83 = @"YES";
                  }

                  *&buf[4] = v79;
                  *&buf[12] = 2112;
                  *&buf[14] = v80;
                  *&buf[22] = 2112;
                  v174 = v81;
                  LOWORD(v175) = 2112;
                  *(&v175 + 2) = v83;
                  _os_log_impl(&dword_0, v78, OS_LOG_TYPE_DEFAULT, "Transfer %@ Is Aux image %@, is Sticker %@, is Animoji %@", buf, 0x2Au);
                }

                dispatch_group_enter(v105);
                [v74 _setNeedsWrapper:0];
                [v75 startTransfer:v72];
                [v75 endTransfer:v72];
                v84 = IMAttachmentsLogHandle();
                if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v84, OS_LOG_TYPE_DEFAULT, "Overriding transfer to end", buf, 2u);
                }

                v85 = [v76 accountID];
                v86 = [v76 handle];
                if (v86)
                {
                  v87 = [v76 handle];
                  [v75 assignTransfer:v72 toAccount:v85 otherPerson:v87];
                }

                else
                {
                  [v75 assignTransfer:v72 toAccount:v85 otherPerson:0];
                }

                [(MessageAttachmentController *)self transcribeMessageIfNeeded:v76 forTransfer:v74 completion:v77];
                v70 = 1;
              }

              else
              {
                if (IMOSLoggingEnabled())
                {
                  v88 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    *&buf[4] = v72;
                    _os_log_impl(&dword_0, v88, OS_LOG_TYPE_INFO, "No transfer found for guid: %@", buf, 0xCu);
                  }
                }

                [(MessageAttachmentOverallStatus *)v109 setFailed:1];
                [(MessageAttachmentOverallStatus *)v109 setError:34];
              }
            }

            v103 = [(__CFArray *)v92 countByEnumeratingWithState:&v140 objects:v176 count:16];
          }

          while (v103);

          if (v70)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v174 = sub_58FDC;
            *&v175 = sub_58FEC;
            *(&v175 + 1) = [[IMPowerAssertion alloc] initWithIdentifier:@"OutgoingMessagesPowerAssertion" timeout:120.0];
            v117[0] = _NSConcreteStackBlock;
            v117[1] = 3221225472;
            v117[2] = sub_5EEB8;
            v117[3] = &unk_113748;
            v118 = v92;
            v119 = v109;
            v123 = v91;
            v120 = v76;
            v121 = v90;
            v122 = v89;
            v124 = buf;
            dispatch_group_notify(v105, &_dispatch_main_q, v117);

            _Block_object_dispose(buf, 8);
          }

          v66 = v93;
        }

        else
        {

          v66 = v95;
        }
      }

      goto LABEL_129;
    }
  }

  else
  {
  }

  v67 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v113;
    _os_log_impl(&dword_0, v67, OS_LOG_TYPE_DEFAULT, "All attachments for msg guid %@ already uploaded. Not re-uploading", buf, 0xCu);
  }

  if (v91)
  {
    v91[2](v91, v113, v90, v89, 1, 0);
  }

LABEL_129:
}

- (void)transcribeMessageIfNeeded:(id)a3 forTransfer:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 isAudioMessage] && (objc_msgSend(v8, "shouldNotTranscribeAudio") & 1) == 0)
  {
    v10 = +[MessageTranscodeController sharedInstance];
    v11 = [v8 localURL];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_5F228;
    v12[3] = &unk_113770;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    [v10 transcribeAudioForAudioTransferURL:v11 withCompletion:v12];
  }

  else
  {
    v9[2](v9);
  }
}

- (void)_transcodeURL:(id)a3 reason:(unint64_t)a4 transfer:(id)a5 sizes:(id)a6 commonCapabilities:(id)a7 sendStatus:(id)a8 urlGroup:(id)a9 didTranscode:(id)a10 handleURL:(id)a11
{
  v36 = a3;
  v15 = a5;
  v16 = a6;
  v37 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  dispatch_group_enter(v18);
  v21 = [IMDAttachmentUtilities shouldEnablePreviewTranscodingQualityForTransfer:v15 isSending:1];
  v33 = +[MessageTranscodeController sharedInstance];
  v32 = [v15 type];
  v31 = [v15 isSticker];
  v22 = [v15 transcoderUserInfo];
  v30 = (+[IMDAttachmentUtilities shouldSendLowResolutionOnly](IMDAttachmentUtilities, "shouldSendLowResolutionOnly") & 1) == 0 && [v16 count] > 1;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_5F5F8;
  v38[3] = &unk_1137C0;
  v39 = v15;
  v40 = v36;
  v47 = v21;
  v41 = v16;
  v42 = v18;
  v43 = v17;
  v44 = v20;
  v45 = v19;
  v46 = a4;
  v35 = v19;
  v23 = v17;
  v24 = v18;
  v25 = v20;
  v26 = v16;
  v27 = v36;
  v28 = v15;
  LOBYTE(v29) = v21;
  [v33 transcodeFileTransferContents:v27 utiType:v32 isSticker:v31 transcoderUserInfo:v22 sizes:v26 commonCapabilities:v37 representations:v30 isLQMEnabled:v29 completionBlock:v38];
}

- (void)_sendURL:(id)a3 urlToRemove:(id)a4 topic:(id)a5 sessionInfo:(id)a6 messageGUID:(id)a7 transferID:(id)a8 fileTransferGUID:(id)a9 attachmentSendContexts:(id)a10 failIfError:(BOOL)a11 sendStatus:(id)a12 attachmentStatus:(id)a13 group:(id)a14
{
  v19 = a3;
  v20 = a4;
  v46 = a5;
  v45 = a6;
  v21 = a7;
  v44 = a8;
  v48 = a9;
  v47 = a10;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  dispatch_group_enter(v24);
  v25 = +[IMDFileTransferCenter sharedInstance];
  if (v19)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v27 = v26;
    v64 = kAttachmentsAutomationURLKey;
    v28 = [v19 path];
    v41 = v20;
    v29 = v28;
    v30 = &stru_115E20;
    if (v28)
    {
      v30 = v28;
    }

    v65 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    AttachmentsAutomationLogMilestone();

    v42 = [IMNetworkMonitor createNetworkMonitorWithRemoteHost:0 delegate:0 allowsUltraConstrainedNetwork:1];
    [(MessageAttachmentController *)self networkMonitorDidUpdate:v42];
    v32 = +[IMTransferServicesController sharedInstance];
    v40 = [v19 path];
    [v40 stringByResolvingAndStandardizingPath];
    v33 = v22;
    v35 = v34 = v21;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_60530;
    v61[3] = &unk_1137E8;
    v62 = v25;
    v63 = v48;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_6067C;
    v49[3] = &unk_113810;
    v50 = v34;
    v51 = v19;
    v52 = v63;
    v53 = v62;
    v59 = v27;
    v60 = a11;
    v54 = v33;
    v55 = v23;
    v56 = v47;
    v36 = v41;
    v57 = v41;
    v58 = v24;
    v37 = v44;
    [v32 sendFilePath:v35 topic:v46 userInfo:v45 transferID:v44 encryptFile:1 progressBlock:v61 completionBlock:v49];

    v21 = v34;
    v22 = v33;

    v38 = v46;
    v39 = v45;
  }

  else
  {
    dispatch_group_leave(v24);
    v36 = v20;
    v39 = v45;
    v38 = v46;
    v37 = v44;
  }
}

+ (id)_capabilitiesForTransfers:(id)a3 supportsASTC:(BOOL)a4
{
  v4 = a4;
  v5 = objc_alloc_init(NSMutableArray);
  v12[0] = IDSRegistrationPropertySupportsHDRVideo;
  v12[1] = IDSRegistrationPropertyPrefersSDRVideo;
  v6 = [NSArray arrayWithObjects:v12 count:2];
  [v5 addObject:v6];

  if (v4)
  {
    v11 = IDSRegistrationPropertySupportsHEIFEncoding;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    [v5 addObject:v7];
  }

  v8 = +[IMFeatureFlags sharedFeatureFlags];
  v9 = [v8 isHighQualityPhotosEnabled];

  if (v9)
  {
    [v5 addObject:&off_119650];
  }

  return v5;
}

- (void)findTranscoderCapabilitiesAcrossRecipients:(id)a3 forTransfers:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v12 = [v9 __im_canonicalIDSIDsFromAddresses];
  v10 = IMServiceNameForCanonicalIDSAddresses();
  v11 = [MessageAttachmentController _capabilitiesForTransfers:v8 supportsASTC:IMSupportsASTC()];

  [IMIDSUtilities findCommonCapabilitiesAcrossRecipients:v9 serviceName:v10 capsToCheck:v11 completion:v7];
}

- (void)sessionInfoForBusinessReceipients:(id)a3 fromID:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 __im_canonicalIDSIDsFromAddresses];
  v11 = IMServiceNameForCanonicalIDSAddresses();
  v12 = v11;
  if (v9)
  {
    v13 = IDSServiceNameiMessageForBusiness;
    if ([v11 isEqualToString:IDSServiceNameiMessageForBusiness])
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_61384;
      v17[3] = &unk_113888;
      v14 = v9;
      v19 = v14;
      v18 = v8;
      if (([IMIDSIDQueryController currentRemoteDevicesForDestinations:v7 service:v13 listenerID:@"MessageAttachmentController" queue:&_dispatch_main_q completionBlock:v17]& 1) == 0)
      {
        v15 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "-sessionInfoForBusinessReceipients:completion: success == NO when querying for business session info", v16, 2u);
        }

        (*(v14 + 2))(v14, 0);
      }
    }
  }
}

- (void)sendFallbackAttachmentsForMessage:(id)a3 displayIDs:(id)a4 additionalContext:(id)a5 completionBlock:(id)a6
{
  v45 = a3;
  v44 = a4;
  v42 = a5;
  v43 = a6;
  v49 = +[IMDFileTransferCenter sharedInstance];
  v51 = objc_alloc_init(NSMutableArray);
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v9 = [v45 fileTransferGUIDs];
  v10 = [v9 countByEnumeratingWithState:&v76 objects:v83 count:16];
  if (v10)
  {
    v46 = 0;
    v11 = 0;
    v12 = *v77;
    v13 = IMStickerUserInfoStickerRecipeKey;
    v14 = IMStickerUserInfoStickerPackGUIDKey;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v77 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = [v49 transferForGUID:*(*(&v76 + 1) + 8 * i)];
        if ([v16 isRecipeBasedSticker])
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "sendFallbackAttachmentsForMessage sending recipe based sticker", buf, 2u);
            }
          }

          v18 = [v16 stickerUserInfo];
          v19 = [v18 objectForKey:v13];
          v48 = [v19 _FTDataFromHexString];

          v20 = [v16 stickerUserInfo];
          v47 = [v20 objectForKey:v14];

          if (v48)
          {

            goto LABEL_26;
          }

          if (IMOSLoggingEnabled())
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = [v45 guid];
              v23 = [v16 stickerUserInfo];
              *buf = 138412546;
              *&buf[4] = v22;
              *&buf[12] = 2112;
              *&buf[14] = v23;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "sendFallbackAttachmentsForMessage found recipe based transfer but no recipe in it for msg guid %@ %@", buf, 0x16u);
            }
          }

          v11 = v47;
        }

        else if ([v16 isAutoloopVideo])
        {
          [v51 addObject:v16];
          v46 = 1;
        }

        else if ([v16 isOpusAudioMessage])
        {
          [v51 addObject:v16];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v76 objects:v83 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v47 = v11;
    v48 = 0;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
  }

LABEL_26:

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v82 = 0;
  v53 = objc_alloc_init(NSMutableDictionary);
  v24 = dispatch_group_create();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v51;
  v25 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v25)
  {
    v52 = *v73;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v73 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v72 + 1) + 8 * j);
        dispatch_group_enter(v24);
        v28 = [IMDAttachmentUtilities shouldEnablePreviewTranscodingQualityForTransfer:v27 isSending:1];
        v29 = +[MessageTranscodeController sharedInstance];
        v30 = [v27 localURL];
        v31 = [v27 type];
        v32 = [v27 transcoderUserInfo];
        v67[0] = _NSConcreteStackBlock;
        v67[1] = 3221225472;
        v67[2] = sub_620C4;
        v67[3] = &unk_1138B0;
        v68 = v53;
        v69 = v27;
        v71 = buf;
        v70 = v24;
        LOBYTE(v40) = v28;
        [v29 transcodeFallbackFileTransferContents:v30 utiType:v31 transcoderUserInfo:v32 sizes:0 commonCapabilities:0 representations:0 isLQMEnabled:v40 completionBlock:v67];
      }

      v25 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v25);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_622C4;
  block[3] = &unk_113928;
  v64 = v43;
  v65 = buf;
  v56 = v45;
  v57 = v44;
  v58 = v42;
  v59 = v48;
  v60 = v47;
  v61 = v49;
  v62 = self;
  v63 = v53;
  v66 = v46 & 1;
  v33 = v53;
  v54 = v49;
  v34 = v47;
  v35 = v48;
  v36 = v42;
  v37 = v44;
  v38 = v45;
  v39 = v43;
  dispatch_group_notify(v24, &_dispatch_main_q, block);

  _Block_object_dispose(buf, 8);
}

- (void)handleTranscodeCompletionBlockForMessage:(id)a3 displayIDs:(id)a4 additionalContext:(id)a5 attemptedTranscode:(BOOL)a6 transcodedTransferGUIDs:(id)a7 containsAutoLoopVideo:(BOOL)a8 outputURLs:(id)a9 text:(id)a10 success:(BOOL)a11 error:(id)a12 completionBlock:(id)a13
{
  v13 = a8;
  v70 = a6;
  v78 = a3;
  v73 = a4;
  v74 = a5;
  v72 = a7;
  v75 = a9;
  v76 = a10;
  v71 = a12;
  v77 = a13;
  v17 = +[IMDFileTransferCenter sharedInstance];
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v78 guid];
      v20 = [v78 balloonBundleID];
      v21 = v20;
      v22 = @"NO";
      *buf = 138413826;
      v101 = v19;
      if (a11)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      if (v70)
      {
        v22 = @"YES";
      }

      v102 = 2112;
      v103 = v20;
      v104 = 2112;
      v105 = v75;
      v106 = 2112;
      v107 = v76;
      v108 = 2112;
      v109 = v71;
      v110 = 2112;
      v111 = v23;
      v112 = 2112;
      v113 = v22;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Fallback transcoded version msg %@ bid %@ outputURLs %@ text %@ error %@ success %@ attemptedTranscode %@", buf, 0x48u);
    }
  }

  v24 = [v78 balloonBundleID];
  v25 = IMBalloonExtensionIDWithSuffix();
  v26 = [v24 isEqualToString:v25];

  if (((v77 != 0) & v26) == 1)
  {
    v27 = [v75 lastObject];
    v28 = [NSData dataWithContentsOfURL:v27];

    v95 = 0;
    v29 = IMSharedHelperPayloadFromCombinedPluginPayloadData();
    v30 = 0;

    v31 = +[IMDFileTransferCenter sharedInstance];
    v32 = [v78 guid];
    v33 = [v31 guidsForStoredAttachmentPayloadData:v30 messageGUID:v32];

    v34 = [v78 copyForBackwardsCompatibility];
    v35 = [[NSAttributedString alloc] initWithString:v76];

    [v34 setBody:v35];
    [v34 setPayloadData:v29];
    [v34 setFileTransferGUIDs:v33];
    [v34 setBalloonBundleID:IMBalloonPluginIdentifierRichLinks];
    [v34 addTelemetryMetricForKey:1];
    v77[2](v77, v34, v73, v74, a11, 0);
    goto LABEL_74;
  }

  if (v77)
  {
    v29 = +[NSMutableArray array];
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v36 = v75;
    v37 = [v36 countByEnumeratingWithState:&v91 objects:v99 count:16];
    if (v37)
    {
      v38 = *v92;
      do
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v92 != v38)
          {
            objc_enumerationMutation(v36);
          }

          v40 = [v17 createNewOutgoingTransferWithLocalFileURL:*(*(&v91 + 1) + 8 * i)];
          [v29 addObject:v40];
        }

        v37 = [v36 countByEnumeratingWithState:&v91 objects:v99 count:16];
      }

      while (v37);
    }

    if (v13)
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v41 = [v78 fileTransferGUIDs];
      v42 = [v41 countByEnumeratingWithState:&v87 objects:v98 count:16];
      if (v42)
      {
        v43 = *v88;
        do
        {
          for (j = 0; j != v42; j = j + 1)
          {
            if (*v88 != v43)
            {
              objc_enumerationMutation(v41);
            }

            v45 = *(*(&v87 + 1) + 8 * j);
            v46 = [v17 transferForGUID:v45];
            if (([v46 isAutoloopVideo] & 1) == 0)
            {
              [v29 addObject:v45];
            }
          }

          v42 = [v41 countByEnumeratingWithState:&v87 objects:v98 count:16];
        }

        while (v42);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v47 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v101 = v72;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "Got transcoded strings: %@", buf, 0xCu);
      }
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v48 = v72;
    v49 = [v48 countByEnumeratingWithState:&v83 objects:v97 count:16];
    if (v49)
    {
      v50 = *v84;
      do
      {
        for (k = 0; k != v49; k = k + 1)
        {
          if (*v84 != v50)
          {
            objc_enumerationMutation(v48);
          }

          v52 = *(*(&v83 + 1) + 8 * k);
          v53 = [v48 objectForKey:v52];
          v54 = [v17 createNewOutgoingTransferWithLocalFileURL:v53];

          v55 = [v29 indexOfObject:v52];
          if (v55 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v29 addObject:v54];
          }

          else
          {
            [v29 replaceObjectAtIndex:v55 withObject:v54];
          }
        }

        v49 = [v48 countByEnumeratingWithState:&v83 objects:v97 count:16];
      }

      while (v49);
    }

    if (IMOSLoggingEnabled())
    {
      v56 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = [v78 guid];
        *buf = 138412546;
        v101 = v57;
        v102 = 2112;
        v103 = v29;
        _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "Msg guid %@, FallBack GUIDs attempted to upload %@", buf, 0x16u);
      }
    }

    if (!v70 && ![v48 count])
    {
      goto LABEL_75;
    }

    v58 = [v78 balloonBundleID];
    v59 = [v58 containsString:IMBalloonPluginIdentifierMessageExtension];

    if (v59)
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v60 = [v78 fileTransferGUIDs];
      v61 = [v60 countByEnumeratingWithState:&v79 objects:v96 count:16];
      if (v61)
      {
        v62 = *v80;
        do
        {
          for (m = 0; m != v61; m = m + 1)
          {
            if (*v80 != v62)
            {
              objc_enumerationMutation(v60);
            }

            v64 = *(*(&v79 + 1) + 8 * m);
            v65 = +[IMDFileTransferCenter sharedInstance];
            v66 = [v65 transferForGUID:v64];

            [v66 setAppMessageFallbackImage:1];
          }

          v61 = [v60 countByEnumeratingWithState:&v79 objects:v96 count:16];
        }

        while (v61);
      }
    }

    v33 = [v78 copyForBackwardsCompatibility];
    [v33 addTelemetryMetricForKey:1];
    if ([v29 count])
    {
      [v33 setFileTransferGUIDs:v29];
    }

    v34 = [NSAttributedString __im_attributedStringWithFileTransfers:v29];
    v35 = [v34 mutableCopy];
    if (v76)
    {
      v67 = [[NSAttributedString alloc] initWithString:v76];
      [v35 appendAttributedString:v67];
    }

    v68 = [v35 __im_attributedStringByAssigningMessagePartNumbers];
    if ([v68 length])
    {
      [v33 setBody:v68];
    }

    if (IMOSLoggingEnabled())
    {
      v69 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v101 = v33;
        _os_log_impl(&dword_0, v69, OS_LOG_TYPE_INFO, "New Message %@", buf, 0xCu);
      }
    }

    if (!v70 && !a11)
    {
      [v48 count];
    }

    (v77[2])(v77, v33, v73, v74);

LABEL_74:
LABEL_75:
  }
}

- (BOOL)_shouldAutoAccept:(id)a3 transfer:(id)a4 isAltAccountDevice:(BOOL)a5 shouldDownloadFromPeer:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v9 = a3;
  v10 = a4;
  if (IMGetCachedDomainBoolForKey())
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "DownloadAttachmentInDemoMode ", &v31, 2u);
      }
    }

    v12 = 1;
  }

  else
  {
    v13 = +[IMMobileNetworkManager sharedInstance];
    v14 = [v13 isWiFiUsable];

    v15 = [v9 isSticker];
    if (v7)
    {
      v16 = +[IMMobileNetworkManager sharedInstance];
      v17 = [v16 hasLTEDataConnection];

      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = @"NO";
          if (v14)
          {
            v20 = @"YES";
          }

          else
          {
            v20 = @"NO";
          }

          if (v17)
          {
            v21 = @"YES";
          }

          else
          {
            v21 = @"NO";
          }

          v31 = 138412802;
          v32 = v20;
          v33 = 2112;
          v34 = v21;
          if (v15)
          {
            v19 = @"YES";
          }

          v35 = 2112;
          v36 = v19;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "isWifiUsable %@, isOnHighCellularBandwidth %@, isSticker: %@", &v31, 0x20u);
        }
      }

      v12 = v17 | v14 | v15;
    }

    else
    {
      if ([v10 isLocation])
      {
        v22 = [v9 isFromMe] ^ 1;
      }

      else
      {
        v22 = 0;
      }

      v12 = v22 | v6 | v14 | v15;
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = @"NO";
          if (v14)
          {
            v25 = @"YES";
          }

          else
          {
            v25 = @"NO";
          }

          if (v6)
          {
            v26 = @"YES";
          }

          else
          {
            v26 = @"NO";
          }

          v31 = 138413058;
          v32 = v25;
          if (v22)
          {
            v27 = @"YES";
          }

          else
          {
            v27 = @"NO";
          }

          v33 = 2112;
          v34 = v26;
          v35 = 2112;
          v36 = v27;
          if (v15)
          {
            v24 = @"YES";
          }

          v37 = 2112;
          v38 = v24;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "isWifiUsable %@, shouldDownloadFromPeer %@, autoDownloadLocationFile %@, isSticker: %@", &v31, 0x2Au);
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = @"NO";
        if (v12)
        {
          v29 = @"YES";
        }

        v31 = 138412290;
        v32 = v29;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "shouldAutoAcceptFile %@,", &v31, 0xCu);
      }
    }
  }

  return v12 & 1;
}

- (BOOL)_shouldDisableFasterDownload:(id)a3 message:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKey:@"should-disable-faster-download"];
  if ([v6 BOOLValue])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 balloonBundleID];
    v7 = [v8 length] != 0;
  }

  return v7;
}

- (void)retrieveAttachmentsForMessage:(id)a3 inlineAttachments:(id)a4 displayID:(id)a5 topic:(id)a6 comingFromStorage:(BOOL)a7 shouldForceAutoDownload:(BOOL)a8 senderContext:(id)a9 completionBlock:(id)a10
{
  v132 = a3;
  v125 = a4;
  v123 = a5;
  v119 = a6;
  v121 = a9;
  v120 = a10;
  kdebug_trace();
  v13 = +[IMUnlockMonitor sharedInstance];
  v14 = [v13 isUnderFirstDataProtectionLock];

  if (v14 && IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v132;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Not downloading attachments for message %@ as we are under first unlock", &buf, 0xCu);
    }
  }

  v170 = 0;
  v171 = &v170;
  v172 = 0x2020000000;
  v173 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v185 = 0x3032000000;
  v186 = sub_58FDC;
  v187 = sub_58FEC;
  v188 = 0;
  v16 = [v132 balloonBundleID];
  if ([v16 isEqualToString:IMBalloonPluginIdentifierRichLinks])
  {
    goto LABEL_109;
  }

  v17 = [v132 fileTransferGUIDs];
  if (![v17 count])
  {

LABEL_109:
    goto LABEL_110;
  }

  v18 = [v132 balloonBundleID];
  v19 = [v18 containsString:IMBalloonPluginIdentifierSurf];

  if ((v19 | v14))
  {
LABEL_110:
    if (IMOSLoggingEnabled())
    {
      v94 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
      {
        v95 = [v132 fileTransferGUIDs];
        v96 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v95 count]);
        v97 = [v132 balloonBundleID];
        v98 = v97;
        v99 = @"NO";
        *v180 = 138412802;
        *&v180[4] = v96;
        *&v180[12] = 2112;
        if (v14)
        {
          v99 = @"YES";
        }

        *&v180[14] = v97;
        *&v180[22] = 2112;
        v181 = v99;
        _os_log_impl(&dword_0, v94, OS_LOG_TYPE_INFO, "Not downloading attachments, transfer count:%@, bundle ID:%@ isUnderFirstDataProtectionLock %@", v180, 0x20u);
      }
    }

    if (v120)
    {
      kdebug_trace();
      (*(v120 + 2))(v120, v132, v123, 1, 0, 0, v171[3], *(*(&buf + 1) + 40), 0);
    }

    goto LABEL_142;
  }

  *v180 = 0;
  *&v180[8] = v180;
  *&v180[16] = 0x3010000000;
  v182 = 0;
  v183 = 0;
  v181 = &unk_F3CE9;
  v113 = _os_activity_create(&dword_0, "com.apple.messages.MessageAttachmentDownloads", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v113, (*&v180[8] + 32));
  v135 = +[IMDFileTransferCenter sharedInstance];
  v166 = 0;
  v167 = &v166;
  v168 = 0x2020000000;
  v169 = 1;
  v162 = 0;
  v163 = &v162;
  v164 = 0x2020000000;
  v165 = 0;
  v20 = +[IMDMessageStore sharedInstance];
  v21 = [v132 guid];
  v22 = [v20 messageWithGUID:v21];

  v23 = [v22 fileTransferGUIDs];
  v24 = [v23 firstObject];
  v114 = [v135 transferForGUID:v24];

  v25 = [v114 userInfo];
  v26 = [v25 objectForKey:@"isHQTransfer"];
  v122 = [v26 stringValue];

  v27 = +[IMFeatureFlags sharedFeatureFlags];
  LODWORD(v26) = [v27 isLQMHQEnabled];

  if (v26 && [v22 isHQTransfer])
  {

    v22 = 0;
  }

  v28 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *v174 = 138412290;
    v175 = v22;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Found already stored message? %@", v174, 0xCu);
  }

  v29 = v132;
  if (v22)
  {
    v29 = v22;
  }

  v117 = v29;

  v30 = [(MessageAttachmentController *)self msgSession];
  if (![v30 isReplicating])
  {
    goto LABEL_21;
  }

  v31 = +[IMDMessageStore sharedInstance];
  v32 = [v132 guid];
  v33 = [v31 wasMessageDeduplicatedWithGUID:v32];

  if ((v33 & 1) == 0)
  {
    v34 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *v174 = 0;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Session is replicating and stored message was not deduplicated, using passed-in message instead", v174, 2u);
    }

    v30 = v117;
    v117 = v132;
LABEL_21:
  }

  if ([v117 scheduleType] == &dword_0 + 2 && (objc_msgSend(v117, "scheduleState") == &dword_0 + 1 || objc_msgSend(v117, "scheduleState") == &dword_0 + 2 || objc_msgSend(v117, "scheduleState") == &dword_0 + 3) && objc_msgSend(v132, "isFromMe"))
  {
    v35 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *v174 = 0;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "Using passed-in message instead of stored message as it might be an edited scheduled message", v174, 2u);
    }

    v36 = [v117 fileTransferGUIDs];
    if ([v36 count])
    {
      v37 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *v174 = 138412290;
        v175 = v36;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "Deleteing old stored attachments %@, since we've now received the self-delivered message", v174, 0xCu);
      }
    }

    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v38 = v36;
    v39 = [v38 countByEnumeratingWithState:&v158 objects:v179 count:16];
    if (v39)
    {
      v40 = *v159;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v159 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = *(*(&v158 + 1) + 8 * i);
          v43 = +[IMDAttachmentStore sharedInstance];
          [v43 deleteAttachmentWithGUID:v42];
        }

        v39 = [v38 countByEnumeratingWithState:&v158 objects:v179 count:16];
      }

      while (v39);
    }

    v44 = v132;
    v117 = v44;
  }

  if (!v117)
  {
    goto LABEL_127;
  }

  v45 = [v117 fileTransferGUIDs];
  v46 = [v45 count];
  v127 = v46 != 0;

  v47 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = @"YES";
    if (!v46)
    {
      v48 = @"NO";
    }

    *v174 = 138412290;
    v175 = v48;
    _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "   Has attachments present: %@", v174, 0xCu);
  }

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v49 = [v117 fileTransferGUIDs];
  v50 = [v49 countByEnumeratingWithState:&v154 objects:v178 count:16];
  if (!v50)
  {
    v124 = 0;
    goto LABEL_119;
  }

  v124 = 0;
  v133 = *v155;
  obj = v49;
  do
  {
    v134 = v50;
    for (j = 0; j != v134; j = j + 1)
    {
      if (*v155 != v133)
      {
        objc_enumerationMutation(obj);
      }

      v52 = *(*(&v154 + 1) + 8 * j);
      v53 = [v135 transferForGUID:v52];
      if (v53)
      {
        v54 = [v132 guid];
        [v53 setMessageGUID:v54];

        v55 = [v53 localURL];
        v56 = [v53 userInfo];
        if (UTTypeConformsTo([v53 type], kUTTypeImage))
        {
          v57 = +[IMTipKitEventReporter sharedInstance];
          [v57 sendReceivedPhotoEvent];
        }

        v58 = +[IMFeatureFlags sharedFeatureFlags];
        v59 = [v58 isLQMHQEnabled];

        if (v59)
        {
          if (v55)
          {
            v60 = +[NSFileManager defaultManager];
            v61 = [v55 path];
            if ([v60 fileExistsAtPath:v61])
            {
              v62 = [v122 isEqual:@"YES"];

              if ((v62 & 1) == 0)
              {
LABEL_104:

                goto LABEL_105;
              }
            }

            else
            {
            }
          }
        }

        else if (v55)
        {
          v63 = +[NSFileManager defaultManager];
          v64 = [v55 path];
          v65 = [v63 fileExistsAtPath:v64];

          if (v65)
          {
            goto LABEL_104;
          }
        }

        v66 = [v56 _stringForKey:@"inline-attachment"];
        v67 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *v174 = 138412290;
          v175 = v66;
          _os_log_impl(&dword_0, v67, OS_LOG_TYPE_DEFAULT, "   Checking for inline attachment. Inline file? %@", v174, 0xCu);
        }

        if (v66)
        {
          v68 = [v125 _dataForKey:v66];
          v130 = [v68 length];
          v69 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *v174 = 138412290;
            v175 = v53;
            _os_log_impl(&dword_0, v69, OS_LOG_TYPE_DEFAULT, " inline transfer: %@", v174, 0xCu);
          }

          v70 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *v174 = 138412290;
            v175 = v56;
            _os_log_impl(&dword_0, v70, OS_LOG_TYPE_DEFAULT, "       user info: %@", v174, 0xCu);
          }

          v71 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            v72 = v130;
            if (!v68)
            {
              v72 = -1;
            }

            *v174 = 134217984;
            v175 = v72;
            _os_log_impl(&dword_0, v71, OS_LOG_TYPE_DEFAULT, " Found data size: %ld", v174, 0xCu);
          }

          if (v68)
          {
            v73 = [v132 accountID];
            [v135 assignTransfer:v52 toAccount:v73 otherPerson:v123];

            v74 = [v53 filename];
            v128 = [v74 lastPathComponent];

            v75 = +[NSFileManager defaultManager];
            v76 = [v75 im_randomTemporaryFileURLWithFileName:v128];
            v77 = [v76 path];

            [v135 acceptTransfer:v52 path:v77];
            v129 = [v77 stringByResolvingAndStandardizingPath];

            v131 = [NSURL fileURLWithPath:v129];
            v78 = objc_autoreleasePoolPush();
            LODWORD(v75) = [v68 writeToURL:v131 atomically:1];
            objc_autoreleasePoolPop(v78);
            if (v75)
            {
              v79 = +[IMDFileTransferCenter sharedInstance];
              [v79 updateTransfer:v52 currentBytes:v130 totalBytes:v130];

              if (v131 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v80 = objc_claimAutoreleasedReturnValue(), [v131 path], v81 = objc_claimAutoreleasedReturnValue(), v82 = objc_msgSend(v80, "fileExistsAtPath:", v81), v81, v80, v82))
              {
                v83 = IMAttachmentsLogHandle();
                if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                {
                  *v174 = 138412290;
                  v175 = v131;
                  _os_log_impl(&dword_0, v83, OS_LOG_TYPE_DEFAULT, "Adding gatekeeper properties to: %@", v174, 0xCu);
                }

                v84 = +[IMDFileTransferCenter sharedInstance];
                [v84 addDefaultGatekeeperPropertiesToDirectory:v129];

                [v53 _setLocalURL:v131];
                v85 = IMAttachmentsLogHandle();
                if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                {
                  *v174 = 138412290;
                  v175 = v131;
                  _os_log_impl(&dword_0, v85, OS_LOG_TYPE_DEFAULT, "Set transfer local url to: %@", v174, 0xCu);
                }

                v86 = [v53 guid];
                [v135 startFinalizingTransfer:v86];

                v87 = IMAttachmentsLogHandle();
                if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
                {
                  *v174 = 0;
                  _os_log_impl(&dword_0, v87, OS_LOG_TYPE_DEFAULT, "Generating preview for in-line attachment", v174, 2u);
                }

                if ([v121 isTrustedSender])
                {
                  v88 = +[IMDFileTransferCenter sharedInstance];
                  [v88 generatePreviewForTransfer:v53 messageItem:v132 senderContext:v121];
                }
              }

              else
              {
                if (IMOSLoggingEnabled())
                {
                  v92 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
                  {
                    *v174 = 138412290;
                    v175 = v53;
                    _os_log_impl(&dword_0, v92, OS_LOG_TYPE_INFO, "Could not locate file for transfer: %@", v174, 0xCu);
                  }
                }

                v93 = [[NSError alloc] initWithDomain:@"com.apple.MessageAttachmentControllerErrorDomain" code:41 userInfo:0];

                *(v167 + 24) = 0;
                *(v163 + 6) = 35;
                v171[3] = v130;
                v124 = v93;
              }
            }

            else
            {
              v89 = [NSError errorWithDomain:@"com.apple.MessageAttachmentControllerErrorDomain" code:35 userInfo:0];
              v90 = [v89 copy];

              if (IMOSLoggingEnabled())
              {
                v91 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
                {
                  *v174 = 138412546;
                  v175 = v53;
                  v176 = 2112;
                  v177 = v89;
                  _os_log_impl(&dword_0, v91, OS_LOG_TYPE_INFO, "Failed retrieving file transfer: %@   error: %@", v174, 0x16u);
                }
              }

              [v135 failTransfer:v52 error:v89];
              *(v167 + 24) = 0;
              *(v163 + 6) = 35;
              v171[3] = v130;

              v124 = v90;
            }
          }
        }

        else
        {
          v68 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            *v174 = 138412290;
            v175 = v55;
            _os_log_impl(&dword_0, v68, OS_LOG_TYPE_DEFAULT, "   We're missing an attachment at path: %@", v174, 0xCu);
          }

          v127 = 0;
        }

        goto LABEL_104;
      }

      v55 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *v174 = 138412290;
        v175 = v52;
        _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "   We're missing a transfer for guid: %@", v174, 0xCu);
      }

      v127 = 0;
LABEL_105:
    }

    v49 = obj;
    v50 = [obj countByEnumeratingWithState:&v154 objects:v178 count:16];
  }

  while (v50);
LABEL_119:

  if (v127)
  {
    v100 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      *v174 = 0;
      _os_log_impl(&dword_0, v100, OS_LOG_TYPE_DEFAULT, "   We already have all these transfers, just moving along as a success!", v174, 2u);
    }

    os_activity_scope_leave((*&v180[8] + 32));
    if (v120)
    {
      kdebug_trace();
      v101 = v124;
      (*(v120 + 2))(v120, v117, v123, *(v167 + 24), *(v163 + 6), v124, v171[3], *(*(&buf + 1) + 40), 0, v113);
    }

    else
    {
      v101 = v124;
    }

    goto LABEL_141;
  }

  v102 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    *v174 = 0;
    _os_log_impl(&dword_0, v102, OS_LOG_TYPE_DEFAULT, "   We don't have all the attachments yet, we'll just re-download.", v174, 2u);
  }

LABEL_127:
  v138[0] = _NSConcreteStackBlock;
  v138[1] = 3221225472;
  v138[2] = sub_64B38;
  v138[3] = &unk_113A40;
  v139 = v132;
  v140 = v135;
  v141 = v123;
  v142 = self;
  v152 = a8;
  v147 = &v166;
  v148 = &v162;
  v149 = &v170;
  v143 = v121;
  v153 = a7;
  v144 = v119;
  v145 = v122;
  p_buf = &buf;
  v151 = v180;
  v146 = v120;
  v103 = objc_retainBlock(v138);
  if (IMIsRunningInUnitTesting() & 1) != 0 || (+[FTUserConfiguration sharedInstance](FTUserConfiguration, "sharedInstance"), v104 = objc_claimAutoreleasedReturnValue(), v105 = [v104 allowAnyNetwork], v104, (v105))
  {
    v106 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      *v174 = 0;
      _os_log_impl(&dword_0, v106, OS_LOG_TYPE_DEFAULT, "Allowing any network, bypassing check", v174, 2u);
    }

    (v103[2])(v103, 0);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v107 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
      {
        *v174 = 0;
        _os_log_impl(&dword_0, v107, OS_LOG_TYPE_INFO, "Starting network availablity check...", v174, 2u);
      }
    }

    v108 = +[IMSystemMonitor sharedInstance];
    v109 = [v108 isScreenLit];

    v110 = [IMNetworkAvailability alloc];
    if (v109)
    {
      v111 = 0;
    }

    else
    {
      v111 = 9;
    }

    v136[0] = _NSConcreteStackBlock;
    v136[1] = 3221225472;
    v136[2] = sub_68D10;
    v136[3] = &unk_113A68;
    v137 = v103;
    v112 = [v110 initWithFlags:3 options:v111 timeout:v136 wifiTimeout:20.0 completionBlock:5.0];
    [v112 start];
  }

  v101 = v139;
LABEL_141:

  _Block_object_dispose(&v162, 8);
  _Block_object_dispose(&v166, 8);

  _Block_object_dispose(v180, 8);
LABEL_142:
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v170, 8);
}

- (BOOL)sendToLocalPeers:(id)a3
{
  v4 = a3;
  v5 = [(MessageAttachmentController *)self deliveryController];
  v6 = [v5 sendToLocalPeers:v4];

  return v6;
}

- (BOOL)sendToLocalPeersFile:(id)a3 dictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MessageAttachmentController *)self deliveryController];
  v9 = [v8 sendToLocalPeersFile:v7 dictionary:v6];

  return v9;
}

- (id)localDeviceProductVersion
{
  v2 = [(MessageAttachmentController *)self deliveryController];
  v3 = [v2 localDevice];
  v4 = [v3 productVersion];

  return v4;
}

- (void)retrieveLocalFileTransfer:(id)a3 attachmentIndex:(unint64_t)a4 path:(id)a5 requestURLString:(id)a6 ownerID:(id)a7 signature:(id)a8 decryptionKey:(id)a9 requestedSize:(id)a10 fileSize:(unint64_t)a11 progressBlock:(id)a12 completionBlock:(id)a13
{
  v18 = a3;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a12;
  v22 = a13;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL || ![v18 length])
  {
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v50 = a4;
        *&v50[4] = 2112;
        *&v50[6] = v18;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "Trying to retrieve attachment at index: %u for transfer ID: %@, failing", buf, 0x12u);
      }
    }

    (*(v22 + 2))(v22, v18, a4, 0, 0, 0, 0);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v50 = v18;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, " Requesting file attachments for transfer %@", buf, 0xCu);
      }
    }

    v48[0] = v18;
    v47[0] = IMDRelayLocalMessageDictionaryGUIDKey;
    v47[1] = IMDRelayLocalMessageDictionaryAttachmentIndexKey;
    v24 = [NSNumber numberWithUnsignedInteger:a4];
    v48[1] = v24;
    v47[2] = IMDRelayLocalMessageDictionarySupportsDirectMMCSDownloadKey;
    v48[2] = &__kCFBooleanTrue;
    v35 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:3];

    v45[0] = IMDRelayLocalMessageDictionaryTypeKey;
    v45[1] = IMDRelayLocalMessageDictionaryDictKey;
    v46[0] = IMDRelayLocalMessageTypeRemoteFileRequest;
    v46[1] = v35;
    v25 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
    if ([(MessageAttachmentController *)self sendToLocalPeers:v25])
    {
      if (!qword_124370)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v27 = qword_124370;
        qword_124370 = Mutable;
      }

      v28 = [v18 stringByAppendingFormat:@"_%lu", a4];
      v29 = qword_124370;
      v30 = objc_retainBlock(v22);
      [v29 setObject:v30 forKey:v28];

      v31 = dispatch_time(0, 600000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_6949C;
      block[3] = &unk_113A90;
      v42 = v28;
      v43 = v18;
      v44 = a4;
      v32 = v28;
      dispatch_after(v31, &_dispatch_main_q, block);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v50 = v18;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, " Failed to send message to local device for Transfer %@, Failing", buf, 0xCu);
        }
      }

      (*(v22 + 2))(v22, v18, a4, 0, 0, 0, 0);
    }
  }
}

- (void)remoteFileResponse:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, " Incomming response for file attachment %@ ", buf, 0xCu);
    }
  }

  v5 = [v3 objectForKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
  v6 = [v3 objectForKeyedSubscript:IMDRelayLocalMessageDictionaryAttachmentIndexKey];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v3 objectForKeyedSubscript:IMDRelayLocalMessageDictionaryFileDataKey];
  v9 = [v3 objectForKeyedSubscript:IMDRelayLocalMessageDictionaryFilePathKey];
  v10 = [v3 objectForKeyedSubscript:iMessageLocalFileErrorCodeKey];
  v11 = [v10 integerValue];

  v12 = 0;
  if (v11)
  {
    v13 = v11 == &dword_4 + 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  if (v11 && v11 != &dword_4 + 1)
  {
    v12 = [NSError errorWithDomain:IMPeerAttachmentMessageErrorDomain code:v11 userInfo:0];
  }

  if ([v5 length])
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v8 length];
        *buf = 138413058;
        v26 = v5;
        v27 = 2048;
        v28 = v7;
        v29 = 2048;
        v30 = v16;
        v31 = 2048;
        v32 = v11;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, " Incomming response for message %@ attachmentIndex %lu data of length %lu errorCode %lu", buf, 0x2Au);
      }
    }

    v17 = [v5 stringByAppendingFormat:@"_%lu", v7];
    v18 = [qword_124370 objectForKey:v17];
    v19 = IMOSLoggingEnabled();
    if (v18)
    {
      if (v19)
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, " Found completion block for attachment", buf, 2u);
        }
      }

      (v18)[2](v18, v5, v7, v9, v8, v14, v12);
      [qword_124370 removeObjectForKey:v17];
    }

    else
    {
      if (v19)
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v26 = v17;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, " No completion block for attachment found: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [qword_124370 allKeys];
          *buf = 138412290;
          v26 = v23;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "     In list of blocks: %@", buf, 0xCu);
        }
      }
    }

    if (![qword_124370 count])
    {
      v24 = qword_124370;
      qword_124370 = 0;
    }
  }
}

- (void)_sendAttachmentToPeerDevice:(unint64_t)a3 fileTransferGUID:(id)a4 messageGuid:(id)a5 fileURL:(id)a6 useLocalPeersFileAPI:(BOOL)a7 error:(int64_t)a8
{
  v9 = a7;
  v33 = a4;
  v35 = a5;
  v13 = a6;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v41 = v33;
      v42 = 2048;
      v43 = a8;
      v44 = 2112;
      v45 = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Forwarding Attachment with guid %@ to local peer. Error: %lu. fileURL %@", buf, 0x20u);
    }
  }

  v15 = +[NSFileManager defaultManager];
  v16 = [v13 path];
  v17 = [v15 attributesOfItemAtPath:v16 error:0];

  v18 = [v17 objectForKeyedSubscript:NSFileSize];
  v19 = [v18 longValue];

  v20 = v19 > 0x100000 || v9;
  if (v20)
  {
    +[NSData data];
  }

  else
  {
    [NSData dataWithContentsOfURL:v13];
  }
  v21 = ;
  v39[0] = v35;
  v38[0] = IMDRelayLocalMessageDictionaryGUIDKey;
  v38[1] = IMDRelayLocalMessageDictionaryAttachmentIndexKey;
  v22 = [NSNumber numberWithUnsignedInteger:a3];
  v39[1] = v22;
  v38[2] = IMDRelayLocalMessageDictionaryFileDataKey;
  v23 = v21;
  if (!v21)
  {
    v23 = +[NSData data];
  }

  v39[2] = v23;
  v38[3] = iMessageLocalFileErrorCodeKey;
  v24 = [NSNumber numberWithInteger:a8];
  v39[3] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];

  if (!v21)
  {
  }

  v36[0] = IMDRelayLocalMessageDictionaryDictKey;
  v36[1] = IMDRelayLocalMessageDictionaryTypeKey;
  v37[0] = v25;
  v37[1] = IMDRelayLocalMessageTypeRemoteFileResponse;
  v26 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
  if (v20)
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Sending attachment with file url api", buf, 2u);
      }
    }

    v28 = [(MessageAttachmentController *)self deliveryController];
    [v28 sendToLocalPeersFile:v13 dictionary:v26];
  }

  else
  {
    v29 = [(MessageAttachmentController *)self deliveryController];
    v30 = [v29 localDevice];
    v28 = [v30 productVersion];

    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = v28;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "Using legacy api to send attachment running on product version: %@", buf, 0xCu);
      }
    }

    v32 = [(MessageAttachmentController *)self deliveryController];
    [v32 sendToLocalPeers:v26];
  }
}

- (void)remotefileRequest:(id)a3 attempts:(int64_t)a4 shouldRetry:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
  v10 = [v8 objectForKeyedSubscript:IMDRelayLocalMessageDictionaryAttachmentIndexKey];
  v82 = [v10 unsignedIntegerValue];

  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v11 = [v8 objectForKeyedSubscript:iMessageLocalFileUseFileURLAPI];
  v12 = [v11 BOOLValue];

  v110 = v12;
  v13 = [v8 objectForKeyedSubscript:IMDRelayLocalMessageDictionarySupportsDirectMMCSDownloadKey];
  v14 = [v13 BOOLValue];

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (v5)
      {
        v16 = @"YES";
      }

      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Attempting to locate message with Message Guid %@ shouldRetry %@", buf, 0x16u);
    }
  }

  v17 = +[IMDMessageStore sharedInstance];
  v18 = [v17 itemWithGUID:v9];

  if (!v18)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Unable To locate Message with GUID %@, adding to pending requests to retry later", buf, 0xCu);
      }
    }

    v23 = [(MessageAttachmentController *)self pendingRemoteFileRequests];
    if (!v23)
    {
      v23 = +[NSMutableSet set];
      [(MessageAttachmentController *)self setPendingRemoteFileRequests:v23];
    }

    [v23 addObject:v8];
    if (v5)
    {
      if (a4 <= 39)
      {
        if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v9;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Message with Guid  is not found %@, Retrying it a bit ", buf, 0xCu);
          }
        }

        v83 = v8;
        im_dispatch_after();

        goto LABEL_85;
      }

      if (IMOSLoggingEnabled())
      {
        v57 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v9;
          _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, "Message with Guid is not found %@, No retried remain ", buf, 0xCu);
        }
      }
    }

    v53 = 1;
    goto LABEL_131;
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Located Mesage with Message Guid %@", buf, 0xCu);
    }
  }

  v20 = [(MessageAttachmentController *)self pendingRemoteFileRequests];
  [v20 removeObject:v8];

  v21 = [(MessageAttachmentController *)self pendingRemoteFileRequests];
  v22 = [v21 count] == 0;

  if (v22)
  {
    [(MessageAttachmentController *)self setPendingRemoteFileRequests:0];
  }

  if (![v18 type])
  {
    v23 = v18;
    if ([v23 isFinished])
    {
      goto LABEL_30;
    }

    if (a4 > 39)
    {
      if (IMOSLoggingEnabled())
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v9;
          _os_log_impl(&dword_0, v59, OS_LOG_TYPE_INFO, "Message with Guid is unfinished %@, No retried remain ", buf, 0xCu);
        }
      }

      v53 = 2;
      goto LABEL_131;
    }

    if (IMOSLoggingEnabled())
    {
      v56 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "Message with Guid  is unfinished %@, Retrying it a bit ", buf, 0xCu);
      }
    }

    v100 = _NSConcreteStackBlock;
    v101 = 3221225472;
    v102 = sub_6B368;
    v103 = &unk_113A90;
    v104 = self;
    v105 = v8;
    v106 = a4;
    im_dispatch_after();

LABEL_85:
    v53 = 0;
    goto LABEL_131;
  }

  v23 = 0;
LABEL_30:
  v26 = [v18 fileTransferGUIDs];

  if (!v26)
  {
    v53 = 3;
    goto LABEL_131;
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Located message with guid %@ attachments,  ", buf, 0xCu);
    }
  }

  v28 = [v18 fileTransferGUIDs];
  v29 = v82 < [v28 count];

  if (v29)
  {
    v30 = [v18 fileTransferGUIDs];
    v80 = [v30 objectAtIndex:v82];

    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v80;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "Attempting to locate file transfer with guid %@ ", buf, 0xCu);
      }
    }

    v32 = +[IMDFileTransferCenter sharedInstance];
    v81 = [v32 transferForGUID:v80];

    if (!v81)
    {
      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "Transfer not found in transfer center, checking attachment store", buf, 2u);
        }
      }

      v34 = +[IMDAttachmentStore sharedInstance];
      v81 = [v34 attachmentWithGUID:v80];

      if (!v81)
      {
        if (IMOSLoggingEnabled())
        {
          v68 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v9;
            *&buf[12] = 2112;
            *&buf[14] = v80;
            _os_log_impl(&dword_0, v68, OS_LOG_TYPE_INFO, "Did not find file transfer for message GUID %@ transfer guid %@", buf, 0x16u);
          }
        }

        v69 = 0;
        v53 = 3;
        goto LABEL_130;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v80;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "Located Transfer with Guid %@ ", buf, 0xCu);
      }
    }

    if (![v81 isFinished])
    {
      if (a4 > 39)
      {
        if (IMOSLoggingEnabled())
        {
          v60 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v80;
            *&buf[12] = 2112;
            *&buf[14] = v9;
            _os_log_impl(&dword_0, v60, OS_LOG_TYPE_INFO, "Transfer Guid %@ for Message with %@ is not yet complete, no retries remain ", buf, 0x16u);
          }
        }

        v53 = 4;
        goto LABEL_129;
      }

      if (IMOSLoggingEnabled())
      {
        v58 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v80;
          *&buf[12] = 2112;
          *&buf[14] = v9;
          _os_log_impl(&dword_0, v58, OS_LOG_TYPE_INFO, "Transfer Guid %@ for Message with %@ is not yet complete, Retrying it a bit ", buf, 0x16u);
        }
      }

      v84 = v8;
      im_dispatch_after();

LABEL_128:
      v53 = 0;
LABEL_129:
      v69 = v81;
LABEL_130:

      goto LABEL_131;
    }

    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v80;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "Located Completed transfer with %@ ", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "Attempting to transcode attachment for peer relay", buf, 2u);
      }
    }

    v38 = +[IMDChatStore sharedInstance];
    v39 = [v38 chatsGUIDsForMessageWithGUID:v9];
    v78 = [v39 lastObject];

    v40 = +[IMDChatStore sharedInstance];
    v77 = [v40 chatWithGUID:v78];

    v41 = [v77 isFiltered];
    if ((v41 == 0) | (v14 ^ 1) & 1)
    {
      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = [NSNumber numberWithBool:v41 == 0];
          v44 = [NSNumber numberWithBool:v14 ^ 1];
          *buf = 138412546;
          *&buf[4] = v43;
          *&buf[12] = 2112;
          *&buf[14] = v44;
          _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "Attempting to transcode attachment for peer relay, this is a known sender (%@) or old watch (%@)", buf, 0x16u);
        }
      }

      inUTI = [v81 type];
      v45 = [v81 transcoderUserInfo];
      Mutable = [v45 mutableCopy];

      v46 = v81;
      if (UTTypeConformsTo(inUTI, kUTTypeAudiovisualContent))
      {
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        if (IMOSLoggingEnabled())
        {
          v47 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "Found an a/v type, adding transcoder options to remove alpha and check for hevc+alpha", buf, 2u);
          }
        }

        v48 = [NSNumber numberWithBool:1];
        [(__CFDictionary *)Mutable setObject:v48 forKey:IMFileTransferAVTranscodeOptionRemoveAlpha];

        v49 = [NSNumber numberWithBool:1];
        [(__CFDictionary *)Mutable setObject:v49 forKey:IMFileTransferAVTranscodeOptionCheckForAnimojiV2];

        v46 = v81;
      }

      v75 = [IMDAttachmentUtilities shouldEnablePreviewTranscodingQualityForTransfer:v46 isSending:1];
      v50 = +[MessageTranscodeController sharedInstance];
      v51 = [v46 localURL];
      v52 = [v46 isSticker];
      v93[0] = _NSConcreteStackBlock;
      v93[1] = 3221225472;
      v93[2] = sub_6B380;
      v93[3] = &unk_113AB8;
      v94 = v46;
      v95 = self;
      v98 = &v107;
      v99 = v82;
      v96 = v80;
      v97 = v9;
      LOBYTE(v74) = v75;
      [v50 transcodeFileTransferContents:v51 utiType:inUTI isSticker:v52 transcoderUserInfo:Mutable sizes:&off_119668 commonCapabilities:0 representations:0 isLQMEnabled:v74 completionBlock:v93];

      goto LABEL_127;
    }

    v61 = [v81 type];
    v62 = v61 == 0;

    v63 = v81;
    if (v62)
    {
      goto LABEL_120;
    }

    v64 = [v81 type];
    inUTI = [UTType typeWithIdentifier:v64];

    v63 = v81;
    if ([(__CFString *)inUTI conformsToType:UTTypeImage])
    {
      v65 = [v81 localURL];
      v66 = IMFileURLIsActuallyAnimated();

      v63 = v81;
      if ((v66 & 1) == 0)
      {
        v112 = 0;
        memset(buf, 0, sizeof(buf));
        IMPreviewConstraintsZero();
        *buf = xmmword_CE250;
        *&buf[16] = xmmword_CE260;
        LOBYTE(v112) = [v81 isSticker];
        BYTE2(v112) = [v81 isAdaptiveImageGlyph];
        BYTE1(v112) = 0;
        v72 = +[IMTranscodeController sharedInstance];
        v73 = [v81 localURL];
        v87[0] = _NSConcreteStackBlock;
        v87[1] = 3221225472;
        v87[2] = sub_6B888;
        v87[3] = &unk_113AE0;
        v87[4] = self;
        v92 = v82;
        v88 = v80;
        v89 = v9;
        v91 = &v107;
        v90 = v81;
        v85[0] = *buf;
        v85[1] = *&buf[16];
        v86 = v112;
        [v72 generateSafeRender:v73 constraints:v85 completionBlock:v87];

        goto LABEL_127;
      }
    }

    if (!inUTI)
    {
LABEL_120:
      if (!IMOSLoggingEnabled())
      {
        inUTI = 0;
        goto LABEL_126;
      }

      v70 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v70, OS_LOG_TYPE_INFO, "File safe render failed for Peer Relay because the filetype was not found", buf, 2u);
      }

      inUTI = 0;
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_126:
        v71 = [v63 localURL];
        [(MessageAttachmentController *)self _sendAttachmentToPeerDevice:v82 fileTransferGUID:v80 messageGuid:v9 fileURL:v71 useLocalPeersFileAPI:*(v108 + 24) error:5];

LABEL_127:
        goto LABEL_128;
      }

      v67 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = inUTI;
        _os_log_impl(&dword_0, v67, OS_LOG_TYPE_INFO, "File safe render failed for Peer Relay because the filetype was not supported: %@", buf, 0xCu);
      }
    }

    v63 = v81;
    goto LABEL_126;
  }

  if (IMOSLoggingEnabled())
  {
    v54 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = [v18 fileTransferGUIDs];
      *buf = 134218242;
      *&buf[4] = v82;
      *&buf[12] = 2112;
      *&buf[14] = v55;
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, "Attachment index out of bounds. attachment index: %lu file transfer guids: %@", buf, 0x16u);
    }
  }

  v53 = 6;
LABEL_131:

  if (v53)
  {
    [(MessageAttachmentController *)self _sendAttachmentToPeerDevice:v82 fileTransferGUID:0 messageGuid:v9 fileURL:0 useLocalPeersFileAPI:*(v108 + 24) error:v53];
  }

  _Block_object_dispose(&v107, 8);
}

- (id)_createPayloadRequestDictionaryForMessageGUID:(id)a3 requestKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, @"guid", v5);
    CFDictionarySetValue(Mutable, @"request-key", v7);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "PayoadAttachments _createPayloadRequestDictionaryForMessageGUID invalid parameters guid %@ key %@", &v11, 0x16u);
      }
    }

    Mutable = 0;
  }

  return Mutable;
}

- (void)fetchPayloadDataFromCompanionForGUID:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  if (v7 && v8)
  {
    v9 = +[NSString stringGUID];
    v10 = [(MessageAttachmentController *)self _createPayloadRequestDictionaryForMessageGUID:v6 requestKey:v9];
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, IMDRelayLocalMessageDictionaryTypeKey, @"payload-data-request");
    v12 = v10;
    if (v12)
    {
      CFDictionarySetValue(Mutable, IMDRelayLocalMessageDictionaryDictKey, v12);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_BCF38();
    }

    v15 = [(MessageAttachmentController *)self deliveryController];
    v16 = [v15 sendToLocalPeers:Mutable];

    v17 = IMOSLoggingEnabled();
    if (v16)
    {
      if (v17)
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v28 = v12;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Sent payload-data-request to companion successfully with dict %@", buf, 0xCu);
        }
      }

      if (!self->_localPayloadDataRequestGUIDToCompletionBlockMap)
      {
        v19 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        localPayloadDataRequestGUIDToCompletionBlockMap = self->_localPayloadDataRequestGUIDToCompletionBlockMap;
        self->_localPayloadDataRequestGUIDToCompletionBlockMap = v19;
      }

      v21 = _Block_copy(v7);
      v22 = self->_localPayloadDataRequestGUIDToCompletionBlockMap;
      v23 = objc_retainBlock(v21);
      [(NSMutableDictionary *)v22 setObject:v23 forKey:v9];

      v25 = v9;
      v26 = v6;
      im_dispatch_after();
    }

    else
    {
      if (v17)
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v28 = v6;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "PayloadAttachments failed to send payload-data-request for message guid %@", buf, 0xCu);
        }
      }

      (*(v7 + 2))(v7, 0);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_retainBlock(v7);
      *buf = 138412546;
      v28 = v6;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "PayloadAttachments Invalid parameters to fetchPayloadDataFromCompanionForGUID %@ %@", buf, 0x16u);
    }
  }
}

- (void)handlePayloadDataResponse:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "HandlePayloadDataresponse", buf, 2u);
    }
  }

  v6 = [v4 objectForKey:@"request-key"];
  v7 = [v4 objectForKey:@"payload-data"];
  if (v6)
  {
    v8 = [(NSMutableDictionary *)self->_localPayloadDataRequestGUIDToCompletionBlockMap objectForKey:v6];
    if (v8)
    {
      v9 = +[NSString stringGUID];
      v21 = [v9 stringByAppendingPathExtension:IMFileTransferCombinedPluginPayloadExtension];

      v10 = +[NSFileManager defaultManager];
      v11 = [v10 im_randomTemporaryFileURLWithFileName:v21];
      v12 = [v11 path];

      v13 = [v12 stringByResolvingAndStandardizingPath];

      v14 = [NSURL fileURLWithPath:v13 isDirectory:0];
      v22 = 0;
      v15 = [v7 writeToURL:v14 options:1 error:&v22];
      v16 = v22;
      if ((v15 & 1) == 0)
      {

        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v24 = v16;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "IMiMessageAppPayloadDecoder Failed writing attachment to disk on incoming: %@", buf, 0xCu);
          }
        }

        v14 = 0;
      }

      (v8)[2](v8, v14);
      [(NSMutableDictionary *)self->_localPayloadDataRequestGUIDToCompletionBlockMap removeObjectForKey:v6];
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v6;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Dequeue completion block for key %@", buf, 0xCu);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v6;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "PayloadAttachments no completion block found for key %@", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "PayloadAttachments handlePayloadDataResponse. No request key present. No completion block to call", buf, 2u);
    }
  }
}

- (id)_createPayloadResponseDictionaryWithDictionary:(id)a3 payloadData:(id)a4 attachments:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 mutableCopy];
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v12 = Mutable;
  if (v8)
  {
    CFDictionarySetValue(Mutable, IMCombinedPayloadDictionaryPayloadKey, v8);
  }

  if (v9)
  {
    CFDictionarySetValue(v12, IMCombinedPayloadDictionaryAttachmentsKey, v9);
  }

  v13 = JWEncodeDictionary();
  v14 = [v13 _FTCopyGzippedData];

  v15 = v14;
  if (v15)
  {
    CFDictionarySetValue(v10, @"payload-data", v15);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_BCFC4();
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Created response dictionary", v18, 2u);
    }
  }

  return v10;
}

- (void)handlePayloadDataRequest:(id)a3 attempts:(unint64_t)a4
{
  v44 = a3;
  v45 = [v44 objectForKey:@"guid"];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v61 = v45;
      v62 = 2048;
      v63 = a4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "handlePayloadDataRequest for guid %@ attempts %lu", buf, 0x16u);
    }
  }

  v6 = [v45 length];
  if (a4 > 2 || !v6)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v61 = v45;
        v62 = 2048;
        v63 = a4;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "PayloadAttachments did not find data for messageGUID %@ in attempts %lu", buf, 0x16u);
      }
    }

    v29 = 0;
    v28 = 0;
LABEL_48:
    v31 = v28;
    v32 = v29;
    v33 = [MessageAttachmentController _createPayloadResponseDictionaryWithDictionary:"_createPayloadResponseDictionaryWithDictionary:payloadData:attachments:" payloadData:v44 attachments:?];
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, IMDRelayLocalMessageDictionaryTypeKey, @"payload-data-response");
    v35 = v33;
    if (v35)
    {
      CFDictionarySetValue(Mutable, IMDRelayLocalMessageDictionaryDictKey, v35);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_BCF38();
    }

    v36 = [(MessageAttachmentController *)self deliveryController];
    v37 = [v36 sendToLocalPeers:Mutable];

    v38 = IMOSLoggingEnabled();
    if (v37)
    {
      if (v38)
      {
        v39 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v61 = v45;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "Sent message payload successfully for guid %@", buf, 0xCu);
        }

LABEL_60:
      }
    }

    else if (v38)
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v61 = v45;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "PayloadAttachments Sent message payload successfully for guid %@", buf, 0xCu);
      }

      goto LABEL_60;
    }

    goto LABEL_62;
  }

  v7 = +[IMDMessageStore sharedInstance];
  v42 = [v7 messageWithGUID:v45];

  v8 = [v42 payloadData];
  LODWORD(v7) = v8 == 0;

  v9 = IMOSLoggingEnabled();
  if (!v7)
  {
    v10 = v42;
    if (v9)
    {
      v11 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v61 = v45;
        v62 = 2048;
        v63 = a4;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Found messageitem %@ with payload attempt %lul ", buf, 0x16u);
      }

      v10 = v42;
    }

    v12 = [v10 payloadData];
    v41 = [v12 _FTCopyGzippedData];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = [v42 fileTransferGUIDs];
    v13 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
    if (v13)
    {
      v14 = 0;
      v15 = *v49;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v49 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v48 + 1) + 8 * i);
          v18 = +[IMDFileTransferCenter sharedInstance];
          v19 = [v18 transferForGUID:v17];

          if (v19)
          {
            v20 = [v19 localURL];
            if (v20)
            {
              v47 = 0;
              v21 = [NSData dataWithContentsOfURL:v20 options:1 error:&v47];
              v22 = v47;
              if ([v21 length])
              {
                v23 = v22 == 0;
              }

              else
              {
                v23 = 0;
              }

              if (v23)
              {
                v27 = v14;
                if (!v14)
                {
                  v27 = objc_alloc_init(NSMutableArray);
                }

                v14 = v27;
                [v27 addObject:v21];
              }

              else if (IMOSLoggingEnabled())
              {
                v24 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v61 = v17;
                  v62 = 2112;
                  v63 = v22;
                  _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "PayloadAttachments Missing attachment data for attachment with file transfer GUID %@, possible read error %@", buf, 0x16u);
                }
              }
            }

            else if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v61 = v17;
                _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "PayloadAttachments Missing attachment URL for attachment with file transfer GUID %@", buf, 0xCu);
              }
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v61 = v17;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "PayloadAttachments Did not find file transfer with GUID %@", buf, 0xCu);
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
      }

      while (v13);

      v28 = v41;
      v29 = v14;
    }

    else
    {

      v29 = 0;
      v28 = v41;
    }

    goto LABEL_48;
  }

  if (v9)
  {
    v40 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v61 = v45;
      v62 = 2112;
      v63 = v42;
      v64 = 2048;
      v65 = a4;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "PayloadAttachments Did not find data for guid %@ messageItem %@ attempts %lu", buf, 0x20u);
    }
  }

  v52 = _NSConcreteStackBlock;
  v53 = 3221225472;
  v54 = sub_6CF10;
  v55 = &unk_113A90;
  v56 = self;
  v57 = v44;
  v58 = a4;
  im_dispatch_after();

  v31 = v42;
LABEL_62:
}

- (BOOL)_shouldUploadPayloadDataOverMMCS:(id)a3
{
  v4 = a3;
  v5 = [v4 _FTCopyGzippedData];
  v6 = [(MessageAttachmentController *)self _maxCompressedPayloadDataLength];
  if (IMGetCachedDomainBoolForKey())
  {
    v7 = +[IMLockdownManager sharedInstance];
    v8 = [v7 isInternalInstall];

    if (v8)
    {
      v6 = 0;
    }
  }

  v9 = [v5 length];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v5 length];
      v12 = [v4 length];
      v13 = @"NO";
      v15 = 134218754;
      v16 = v11;
      v17 = 2048;
      if (v9 > v6)
      {
        v13 = @"YES";
      }

      v18 = v12;
      v19 = 2048;
      v20 = v6;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Should upload compressed payload data length %lu, uncompressed data length %lu, maxLenght %lu  result %@", &v15, 0x2Au);
    }
  }

  return v9 > v6;
}

- (void)sendPayloadData:(id)a3 messageGUID:(id)a4 fromID:(id)a5 recipients:(id)a6 completionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v15 __im_canonicalIDSIDsFromAddresses];
  v18 = IMServiceNameForCanonicalIDSAddresses();
  if ([v18 isEqualToString:IDSServiceNameiMessageForBusiness])
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_6D254;
    v19[3] = &unk_113B30;
    v19[4] = self;
    v20 = v12;
    v21 = v13;
    v22 = v18;
    v23 = v16;
    [(MessageAttachmentController *)self sessionInfoForBusinessReceipients:v15 fromID:v14 completion:v19];
  }

  else
  {
    [(MessageAttachmentController *)self sendPayloadData:v12 messageGUID:v13 sessionInfo:0 topic:v18 completionBlock:v16];
  }
}

- (void)sendPayloadData:(id)a3 messageGUID:(id)a4 sessionInfo:(id)a5 topic:(id)a6 completionBlock:(id)a7
{
  v12 = a3;
  v31 = a4;
  v29 = a5;
  v30 = a6;
  v13 = a7;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v31;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Request to upload payload data for message guid %@", buf, 0xCu);
    }
  }

  if ([(MessageAttachmentController *)self _shouldUploadPayloadDataOverMMCS:v12])
  {
    v15 = +[NSFileManager defaultManager];
    v16 = +[NSString stringGUID];
    v17 = [v16 stringByAppendingPathExtension:@"txt"];
    v18 = [v15 im_randomTemporaryFileURLWithFileName:v17];
    v19 = [v18 path];

    v20 = [v19 stringByResolvingAndStandardizingPath];

    [v12 writeToFile:v20 atomically:1];
    v21 = +[NSFileManager defaultManager];
    LOBYTE(v18) = [v21 fileExistsAtPath:v20];

    if (v18)
    {
      v22 = +[NSString stringGUID];
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v40 = v31;
          v41 = 2112;
          v42 = v20;
          v43 = 2112;
          v44 = v22;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Wrote payload data for message %@ to file %@ transferID %@", buf, 0x20u);
        }
      }

      v24 = [IMNetworkMonitor createNetworkMonitorWithRemoteHost:0 delegate:0 allowsUltraConstrainedNetwork:1];
      [(MessageAttachmentController *)self networkMonitorDidUpdate:v24];
      v25 = +[IMTransferServicesController sharedInstance];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_6D79C;
      v37[3] = &unk_113B58;
      v38 = v22;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_6D8DC;
      v32[3] = &unk_113B80;
      v33 = v20;
      v34 = v38;
      v35 = v31;
      v36 = v13;
      v26 = v38;
      [v25 sendFilePath:v33 topic:v30 userInfo:v29 transferID:v26 encryptFile:1 progressBlock:v37 completionBlock:v32];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v40 = v31;
          v41 = 2112;
          v42 = v20;
          _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "Could not write payload data for msg guid %@ to filepath %@", buf, 0x16u);
        }
      }

      if (v13)
      {
        (*(v13 + 2))(v13, 0, 0);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Not uploading payload data to MMCS", buf, 2u);
      }
    }

    if (v13)
    {
      (*(v13 + 2))(v13, 0, 1);
    }
  }
}

- (void)downloadPayloadDataForMessageGUID:(id)a3 payLoadDictionary:(id)a4 topic:(id)a5 completionBlock:(id)a6
{
  v33 = a3;
  v10 = a4;
  v32 = a5;
  v11 = a6;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v40 = v33;
      v41 = 2112;
      v42 = v10;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Request to download payload data for message %@ payload dictionary %@", buf, 0x16u);
    }
  }

  if (v10)
  {
    v31 = [v10 objectForKey:@"o"];
    v30 = [v10 objectForKey:@"s"];
    v29 = [v10 objectForKey:@"r"];
    v13 = [v10 objectForKey:@"e"];
    v28 = [v10 objectForKey:@"f"];
    if (v31 && v30 && v29 && v13 && v28)
    {
      v14 = +[NSFileManager defaultManager];
      v15 = +[NSString stringGUID];
      v16 = [v15 stringByAppendingPathExtension:@"txt"];
      v17 = [v14 im_randomTemporaryFileURLWithFileName:v16];
      v27 = [v17 path];

      v18 = +[NSString stringGUID];
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v40 = v27;
          v41 = 2112;
          v42 = v18;
          v43 = 2112;
          v44 = v33;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "About to start download payload to file %@ with fileTransferID %@ message GUID %@", buf, 0x20u);
        }
      }

      v20 = [IMNetworkMonitor createNetworkMonitorWithRemoteHost:0 delegate:0 allowsUltraConstrainedNetwork:1];
      [(MessageAttachmentController *)self networkMonitorDidUpdate:v20];
      v21 = +[IMTransferServicesController sharedInstance];
      v22 = [v27 stringByResolvingAndStandardizingPath];
      v23 = [v28 unsignedIntegerValue];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_6E2CC;
      v37[3] = &unk_113B58;
      v38 = v18;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_6E40C;
      v34[3] = &unk_113BA8;
      v35 = v33;
      v36 = v11;
      v24 = v18;
      [v21 receiveFileTransfer:v24 topic:v32 path:v22 requestURLString:v29 ownerID:v31 signature:v30 decryptionKey:v13 fileSize:v23 progressBlock:v37 completionBlock:v34];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138413314;
          v40 = v31;
          v41 = 2112;
          v42 = v30;
          v43 = 2112;
          v44 = v29;
          v45 = 2112;
          v46 = v13;
          v47 = 2112;
          v48 = v28;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "PayloadAttachments. Payload data dictionary is incomplete. Cannot download file ownerID %@ signature %@ requestURLString %@ decryptionKey %@ fileSize %@", buf, 0x34u);
        }
      }

      if (v11)
      {
        (*(v11 + 2))(v11, 0, 0);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "No payload data to download from MMCS", buf, 2u);
      }
    }

    if (v11)
    {
      (*(v11 + 2))(v11, 0, 1);
    }
  }
}

- (void)_processDownloadedPayload:(id)a3 forMessageGUID:(id)a4 balloonBundleID:(id)a5 fromIdentifier:(id)a6 senderToken:(id)a7 withCompletionBlock:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = +[IMDChatRegistry sharedInstance];
  v20 = [v19 hasKnownSenderChatWithChatIdentifier:v16];

  v21 = [IMSenderContext contextWithKnownSender:v20];
  v22 = +[IMTranscodeController sharedInstance];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_6E868;
  v29[3] = &unk_113BD0;
  v30 = v15;
  v31 = v14;
  v32 = v16;
  v33 = v17;
  v34 = v13;
  v35 = v18;
  v23 = v13;
  v24 = v17;
  v25 = v16;
  v26 = v14;
  v27 = v15;
  v28 = v18;
  [v22 decodeiMessageAppPayload:v23 senderContext:v21 bundleID:v27 completionBlock:v29 blockUntilReply:1];
}

- (void)processDownloadedPayloadData:(id)a3 forMessageGUID:(id)a4 balloonBundleID:(id)a5 fromIdentifier:(id)a6 senderToken:(id)a7 withCompletionBlock:(id)a8
{
  v14 = a3;
  v25 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = +[NSString stringGUID];
  v20 = [v19 stringByAppendingPathComponent:IMFileTransferPluginPayloadAttachmentExtension];

  v21 = +[NSFileManager defaultManager];
  v22 = [v21 im_randomTemporaryFileURLWithFileName:v20];

  v26 = 0;
  LOBYTE(a8) = [v14 writeToURL:v22 options:1 error:&v26];
  v23 = v26;
  if (a8)
  {
    [(MessageAttachmentController *)self _processDownloadedPayload:v22 forMessageGUID:v25 balloonBundleID:v15 fromIdentifier:v16 senderToken:v17 withCompletionBlock:v18];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v28 = v22;
        v29 = 2112;
        v30 = v23;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "PayloadAttachments. Failed writing payload data to path %@ error %@", buf, 0x16u);
      }
    }

    (*(v18 + 2))(v18, 0, 0, 0);
  }
}

- (void)processMessageAttachmentDictionary:(id)a3 forMessageGUID:(id)a4 balloonBundleID:(id)a5 fromIdentifier:(id)a6 senderToken:(id)a7 withCompletionBlock:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v33 = v16;
  v19 = a3;
  v20 = [NSArray arrayWithObjects:&v33 count:1];
  v21 = IMServiceNameForCanonicalIDSAddresses();
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_6F154;
  v27[3] = &unk_113BF8;
  v27[4] = self;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  [(MessageAttachmentController *)self downloadPayloadDataForMessageGUID:v26 payLoadDictionary:v19 topic:v21 completionBlock:v27];
}

- (void)networkMonitorDidUpdate:(id)a3
{
  v6 = a3;
  v3 = +[IMTransferServicesController sharedInstance];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = +[IMTransferServicesController sharedInstance];
    [v5 updateUltraConstrainedAttachments:{objc_msgSend(v6, "attachmentPolicy") == &dword_0 + 2}];
  }
}

@end