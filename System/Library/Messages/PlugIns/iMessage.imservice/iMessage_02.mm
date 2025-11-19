void sub_6B380(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, int a7, void *a8)
{
  v44 = a2;
  v15 = a3;
  v46 = a4;
  v16 = a5;
  v17 = a8;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      v20 = *(a1 + 32);
      if (a7)
      {
        v19 = @"YES";
      }

      *buf = 138412546;
      v49 = v20;
      v50 = 2112;
      v51 = v19;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Transcode processing complete for transfer: %@  (Attempted Transcode: %@)", buf, 0x16u);
    }
  }

  v21 = IMOSLoggingEnabled();
  if (a6)
  {
    if (v21)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v49 = v15;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "Transcoding succeeded with output URLs: %@", buf, 0xCu);
      }
    }

    v23 = [(__CFString *)v15 lastObject:v44];
    v24 = [NSData dataWithContentsOfURL:v23];
    v25 = v24;
    v26 = *(*(a1 + 64) + 8);
    if (*(v26 + 24))
    {
      v27 = 1;
    }

    else
    {
      v27 = [v24 length] > 0x100000;
      v26 = *(*(a1 + 64) + 8);
    }

    *(v26 + 24) = v27;
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = *(*(*(a1 + 64) + 8) + 24);
        v36 = [v25 length];
        v37 = @"NO";
        if (v35)
        {
          v37 = @"YES";
        }

        *buf = 138412546;
        v49 = v37;
        v50 = 2048;
        v51 = v36;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "useLocalPeersFileAPI: %@ fileSize:%lu", buf, 0x16u);
      }
    }

    [*(a1 + 40) _sendAttachmentToPeerDevice:*(a1 + 72) fileTransferGUID:*(a1 + 48) messageGuid:*(a1 + 56) fileURL:v23 useLocalPeersFileAPI:*(*(*(a1 + 64) + 8) + 24) error:0];
  }

  else
  {
    if (v21)
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "Transcoding Failed for Peer Relay:", buf, 2u);
      }
    }

    v29 = [*(a1 + 32) localURL];
    v23 = [v29 path];

    if (v23)
    {
      v30 = +[NSFileManager defaultManager];
      v31 = [v30 attributesOfItemAtPath:v23 error:0];

      v32 = [v31 objectForKeyedSubscript:NSFileSize];
      v33 = [v32 longValue];

      *(*(*(a1 + 64) + 8) + 24) |= v33 > 0x100000;
    }

    else
    {
      v33 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        if (*(*(*(a1 + 64) + 8) + 24))
        {
          v39 = @"YES";
        }

        else
        {
          v39 = @"NO";
        }

        *buf = 138412546;
        v49 = v39;
        v50 = 2048;
        v51 = v33;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "useLocalPeersFileAPI: %@ fileSize:%ld", buf, 0x16u);
      }
    }

    v40 = *(a1 + 72);
    v42 = *(a1 + 48);
    v41 = *(a1 + 56);
    v43 = *(a1 + 40);
    v25 = [*(a1 + 32) localURL];
    [v43 _sendAttachmentToPeerDevice:v40 fileTransferGUID:v42 messageGuid:v41 fileURL:v25 useLocalPeersFileAPI:*(*(*(a1 + 64) + 8) + 24) error:5];
  }
}

void sub_6B888(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = IMOSLoggingEnabled();
  if (!v6 || v7)
  {
    if (v8)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v7;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "File safe render failed for Peer Relay: %@", &v16, 0xCu);
      }
    }

    v11 = *(a1 + 72);
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = [*(a1 + 56) localURL];
    [v13 _sendAttachmentToPeerDevice:v11 fileTransferGUID:v12 messageGuid:v14 fileURL:v15 useLocalPeersFileAPI:*(*(*(a1 + 64) + 8) + 24) error:5];
  }

  else
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "File safe render success.", &v16, 2u);
      }
    }

    [*(a1 + 32) _sendAttachmentToPeerDevice:*(a1 + 72) fileTransferGUID:*(a1 + 40) messageGuid:*(a1 + 48) fileURL:v6 useLocalPeersFileAPI:*(*(*(a1 + 64) + 8) + 24) error:0];
  }
}

void sub_6BFC4(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = a1[6];
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "PayloadAttachments. Timed out waiting for a payload data from companion for message guid %@", &v5, 0xCu);
      }
    }

    v2[2](v2, 0);
  }
}

void sub_6D79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = 138413058;
      v11 = v9;
      v12 = 2048;
      v13 = a2;
      v14 = 2048;
      v15 = a3;
      v16 = 2048;
      v17 = a4;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Send progress updated to for transferID %@ %lld of %lld (%lld bps)", &v10, 0x2Au);
    }
  }
}

void sub_6D8DC(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10)
{
  v40 = a2;
  v17 = a4;
  v39 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = +[NSFileManager defaultManager];
  v23 = a1[4];
  v41 = 0;
  [v22 removeItemAtPath:v23 error:&v41];
  v24 = v41;

  v25 = IMOSLoggingEnabled();
  if (v24)
  {
    if (!v25)
    {
      goto LABEL_10;
    }

    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = a1[4];
      *buf = 138412546;
      v43 = v27;
      v44 = 2112;
      v45 = v24;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "PayloadAttachments. Could not delete temp payload data file at path %@ error %@", buf, 0x16u);
    }
  }

  else
  {
    if (!v25)
    {
      goto LABEL_10;
    }

    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v28 = a1[4];
      *buf = 138412290;
      v43 = v28;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "deleted temp file at path %@", buf, 0xCu);
    }
  }

LABEL_10:
  v29 = IMOSLoggingEnabled();
  if (a3)
  {
    if (v29)
    {
      v30 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = a1[5];
        *buf = 138414082;
        v43 = v31;
        v44 = 2112;
        v45 = v40;
        v46 = 2112;
        v47 = @"YES";
        v48 = 2112;
        v49 = v17;
        v50 = 2112;
        v51 = v18;
        v52 = 2112;
        v53 = v19;
        v54 = 2112;
        v55 = v20;
        v56 = 2048;
        v57 = a10;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Payload upload completed transferID %@ sent path %@ success %@ error %@ ownerID %@ signature %@ requestURLString %@ outFileSize %ld", buf, 0x52u);
      }
    }

    v32 = objc_alloc_init(NSMutableDictionary);
    v33 = v32;
    if (v18)
    {
      CFDictionarySetValue(v32, @"o", v18);
    }

    if (v19)
    {
      CFDictionarySetValue(v33, @"s", v19);
    }

    if (v20)
    {
      CFDictionarySetValue(v33, @"r", v20);
    }

    if (v21)
    {
      CFDictionarySetValue(v33, @"e", v21);
    }

    v34 = [NSNumber numberWithInteger:a10];
    if (v34)
    {
      CFDictionarySetValue(v33, @"f", v34);
    }
  }

  else
  {
    if (v29)
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = a1[5];
        v37 = a1[6];
        *buf = 138412802;
        v43 = v36;
        v44 = 2112;
        v45 = v17;
        v46 = 2112;
        v47 = v37;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "PayloadAttachments. Failed uploading payload attachment %@ with error %@ msg GUID %@", buf, 0x20u);
      }
    }

    v33 = 0;
  }

  v38 = a1[7];
  if (v38)
  {
    (*(v38 + 16))(v38, v33, a3);
  }
}

void sub_6E2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = 138413058;
      v11 = v9;
      v12 = 2048;
      v13 = a2;
      v14 = 2048;
      v15 = a3;
      v16 = 2048;
      v17 = a4;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Downlaod progress updated to for transferID %@ %lld of %lld (%lld bps)", &v10, 0x2Au);
    }
  }
}

void sub_6E40C(uint64_t a1, void *a2, void *a3, int a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = IMOSLoggingEnabled();
  if (a4)
  {
    if (!v15)
    {
      goto LABEL_10;
    }

    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v23 = 138412546;
      v24 = v17;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Download payload data for message %@ to path %@", &v23, 0x16u);
    }
  }

  else
  {
    if (!v15)
    {
      goto LABEL_10;
    }

    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 32);
      v23 = 138412546;
      v24 = v18;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "PayloadAttachments Failed downloading payload data for message %@ error %@", &v23, 0x16u);
    }
  }

LABEL_10:
  if (*(a1 + 40))
  {
    if ([v12 length])
    {
      v19 = [NSURL fileURLWithPath:v12];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = *(a1 + 32);
          v22 = @"NO";
          v23 = 138412802;
          if (a4)
          {
            v22 = @"YES";
          }

          v24 = v21;
          v25 = 2112;
          v26 = v13;
          v27 = 2112;
          v28 = v22;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "PayloadAttachments: Failed to get path for message %@ with error %@, result %@", &v23, 0x20u);
        }
      }

      v19 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_6E868(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = &MessageDictionaryNicknameIgnoredListVersionKey_ptr;
  if (!v8 || v10)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_BD04C(v11, v13);
    }

    if ((IMIsRunningInAutomation() & 1) == 0)
    {
      v14 = IMSafeTemporaryDirectory();
      v15 = [v14 path];

      if ([v15 length])
      {
        v16 = +[IMLockdownManager sharedInstance];
        v17 = [v16 isInternalInstall];

        v18 = &MessageDictionaryNicknameIgnoredListVersionKey_ptr;
        if (v17)
        {
          v44[0] = v15;
          v44[1] = @"MessagesBlastDoorFailedPayloads";
          v19 = [*(a1 + 32) im_lastPathComponent];
          v20 = [*(a1 + 40) im_lastPathComponent];
          v21 = [NSString stringWithFormat:@"PluginPayloadData-%@-%@.plugindata", v19, v20];
          v44[2] = v21;
          v22 = [NSArray arrayWithObjects:v44 count:3];
          v23 = [NSURL fileURLWithPathComponents:v22];

          v24 = [v8 base64EncodedStringWithOptions:0];
          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v41 = v24;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Incoming plugin message data string: %@", buf, 0xCu);
            }
          }

          v26 = +[NSFileManager defaultManager];
          v27 = [v23 URLByDeletingLastPathComponent];
          [v26 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:0];

          if (([v8 writeToURL:v23 atomically:1] & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v28 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v41 = v23;
                _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "Failed to write error payload to path %@", buf, 0xCu);
              }
            }

            v23 = 0;
          }

          v18 = &MessageDictionaryNicknameIgnoredListVersionKey_ptr;
        }

        else
        {
          v23 = 0;
        }

        v29 = *(a1 + 40);
        v30 = [v18[81] stringWithFormat:@"%@", &off_119410];
        [IMBlastdoor sendBlastDoorError:v11 guid:v29 messageTypeString:v30 senderURI:*(a1 + 48) senderToken:*(a1 + 56) messageContext:0 payloadAttachmentURL:v23];
      }
    }

    (*(*(a1 + 72) + 16))();
    v12 = &MessageDictionaryNicknameIgnoredListVersionKey_ptr;
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }

  v31 = [v12[72] defaultManager];
  v32 = *(a1 + 64);
  v39 = 0;
  v33 = [v31 removeItemAtURL:v32 error:&v39];
  v34 = v39;

  v35 = IMOSLoggingEnabled();
  if (v33)
  {
    if (v35)
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = *(a1 + 64);
        *buf = 138412290;
        v41 = v37;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "deleted temp file at path %@", buf, 0xCu);
      }

LABEL_32:
    }
  }

  else if (v35)
  {
    v36 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v38 = *(a1 + 64);
      *buf = 138412546;
      v41 = v38;
      v42 = 2112;
      v43 = v34;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "PayloadAttachments. Could not delete temp payload data file at path %@ error %@", buf, 0x16u);
    }

    goto LABEL_32;
  }
}

void sub_6F154(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7 = v5;
  if (a3)
  {
    if (v5)
    {
      [*(a1 + 32) _processDownloadedPayload:v5 forMessageGUID:*(a1 + 40) balloonBundleID:*(a1 + 48) fromIdentifier:*(a1 + 56) senderToken:*(a1 + 64) withCompletionBlock:*(a1 + 72)];
      goto LABEL_7;
    }

    v6 = *(*(a1 + 72) + 16);
  }

  else
  {
    v6 = *(*(a1 + 72) + 16);
  }

  v6();
LABEL_7:
}

void sub_6F378(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_6FF80(uint64_t a1, void *a2)
{
  [*(a1 + 32) _checkAndSetUpContext:a2];
  v4 = [[ENStableGroupID alloc] initWithDataRepresentation:*(a1 + 40)];
  if (v4)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_70134;
    v8[3] = &unk_113CC0;
    v8[4] = *(a1 + 56);
    [a2 fetchLatestGroupWithStableID:v4 completion:v8];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [*(a1 + 48) engramID];
        *buf = 138412290;
        v10 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Couldn't create a valid stableID with for engramid: %@", buf, 0xCu);
      }
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_701CC;
    v7[3] = &unk_113CE8;
    v7[4] = *(a1 + 56);
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_70134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_701B0;
  block[3] = &unk_113C98;
  v3 = *(a1 + 32);
  block[5] = a3;
  block[6] = v3;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_701CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:EngramControllerErrorDomain code:3 userInfo:0];
  v3 = *(v1 + 16);

  return v3(v1, 0, 0, v2);
}

id sub_7078C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [*(a1 + 32) engramID];
        v7 = *(a1 + 32);
        *buf = 138412546;
        v35 = v6;
        v36 = 2112;
        v37 = v7;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "We failed to look up the engram group for the id: %@ on chat: %@", buf, 0x16u);
      }
    }

    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    return (*(*(a1 + 96) + 16))(*(a1 + 96));
  }

  else
  {
    v17 = [*(a1 + 32) pendingENGroupParticipantUpdate];
    v18 = IMOSLoggingEnabled();
    if (v17)
    {
      if (v18)
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "We are still pending participants on send so let's try to update the group with destinations", buf, 2u);
        }
      }

      v20 = *(a1 + 80);
      v21 = *(a1 + 88);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_70A50;
      v28[3] = &unk_113D38;
      v22 = *(a1 + 96);
      v23 = *(a1 + 32);
      v29 = vextq_s8(v23, v23, 8uLL);
      v30 = *(a1 + 48);
      v31 = *(a1 + 56);
      v32 = *(a1 + 72);
      v33 = v22;
      return [v20 _createParticipantsAndUpdateGroup:v23.i64[0] addParticipantsURIs:0 removeParticipantURIs:0 fromID:v31 service:v21 completion:v28];
    }

    else
    {
      if (v18)
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [*(a1 + 32) engramID];
          *buf = 138412290;
          v35 = v25;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "We will be sending message to group with engram id: %@", buf, 0xCu);
        }
      }

      if (a3)
      {
        v26 = a2;
      }

      else
      {
        v26 = 0;
      }

      LOBYTE(v27) = 1;
      return (*(*(a1 + 96) + 16))(*(a1 + 96), *(a1 + 40), *(a1 + 32), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), v26, v27);
    }
  }
}

uint64_t sub_70A50(void *a1, uint64_t a2, int a3)
{
  v5 = IMOSLoggingEnabled();
  if (a3)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "We successfully updated the group with our pending participants, sending to the updated group we got back", buf, 2u);
      }
    }
  }

  else if (v5)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "We weren't able to update the participants so sending with device to device crypto", v15, 2u);
    }
  }

  v8 = a1[9];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  v13 = a1[8];
  return (*(a1[10] + 16))(a1[10]);
}

uint64_t sub_70B80(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = IMOSLoggingEnabled();
  if (a3)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "We successfully created the engram group prior to send", buf, 2u);
      }
    }
  }

  else if (v7)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = a4;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "We failed to create the engram group prior to send with error: %@", buf, 0xCu);
    }
  }

  v10 = a1[9];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v15 = a1[8];
  return (*(a1[10] + 16))(a1[10]);
}

void sub_70D68(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [a1[4] engramID];
        *buf = 138412290;
        v18 = v6;
        v7 = "We failed to look up the group for engram id: %@ to compare to the incoming group";
LABEL_5:
        v8 = v5;
LABEL_10:
        v10 = 12;
LABEL_11:
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, v7, buf, v10);
      }
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    [objc_msgSend(a1[5] "groupID")];
    if (v15)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = v15;
          v7 = "There was an error comparing groupIDs on message receive: %@";
          v8 = v9;
          goto LABEL_10;
        }
      }
    }

    else
    {
      if (v16 != 1)
      {
        if (v16)
        {
          if (v16 != -1)
          {
            return;
          }

          if (!IMOSLoggingEnabled())
          {
            return;
          }

          v11 = OSLogHandleForIMFoundationCategory();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            return;
          }

          *buf = 0;
          v7 = "Incoming groupID is older than our current group so we want to bail on converging the participants";
        }

        else
        {
          if (!IMOSLoggingEnabled())
          {
            return;
          }

          v11 = OSLogHandleForIMFoundationCategory();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            return;
          }

          *buf = 0;
          v7 = "Incoming groupID is older than our current group so we want to bail on converging the participants";
        }

        v8 = v11;
        v10 = 2;
        goto LABEL_11;
      }

      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Incoming groupID is newer than our current group's so we want to converge the participants", buf, 2u);
        }
      }

      v13 = [a1[6] _callerURIForChat:a1[4]];
      if ([v13 length])
      {
        [a1[6] _updateLocalParticipantsFromEngroup:a1[5] chat:a1[4] fromID:v13];
        return;
      }

      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v14 = a1[4];
          *buf = 138412290;
          v18 = v14;
          v7 = "We could not update the local chat's participants to the incoming group's participants: %@";
          goto LABEL_5;
        }
      }
    }
  }
}

id sub_717D0(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    v4 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_718F0;
    v7[3] = &unk_113DD8;
    v8 = *(a1 + 40);
    v9 = a2;
    v10 = *(a1 + 56);
    return [v4 performGroupTask:v7];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "We didn't get any ENParticipants back from participantsForDestinations --> Not creating engram group", buf, 2u);
      }
    }

    return (*(*(a1 + 64) + 16))();
  }
}

void sub_718F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _checkAndSetUpContext:a2];
  if (a3)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v14 = a2;
        v15 = 2112;
        v16 = a3;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "We failed to performGroupTask to create group with ENGroupContext: %@ error: %@", buf, 0x16u);
      }
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_71A88;
    block[3] = &unk_113CE8;
    block[4] = *(a1 + 64);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);

    [v7 _createGroupFromGroupContext:a2 chat:v8 enparticipants:v9 destinations:v10 completion:v11];
  }
}

void sub_71BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_71C74;
  block[3] = &unk_113E28;
  block[4] = a2;
  block[5] = a3;
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_71C74(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || *(a1 + 40))
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 56);
        v6 = *(a1 + 32);
        v5 = *(a1 + 40);
        v17 = 138412802;
        v18 = v4;
        v19 = 2112;
        v20 = v5;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "We failed to create an engramGroup for engramParticipants: %@ with error: %@ group: %@", &v17, 0x20u);
      }
    }

LABEL_6:
    v7 = *(a1 + 40);
    return (*(*(a1 + 64) + 16))();
  }

  v9 = [objc_msgSend(objc_msgSend(objc_msgSend(v2 "groupID")];
  v10 = [v9 length];
  v11 = IMOSLoggingEnabled();
  if (!v10)
  {
    if (v11)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [objc_msgSend(*(a1 + 32) "groupID")];
        v17 = 138412290;
        v18 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "stableIDStringRepresentation has length 0 for stableID: %@", &v17, 0xCu);
      }
    }

    goto LABEL_6;
  }

  if (v11)
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Successfully created an engramGroup with stableGroupID stringRep: %@", &v17, 0xCu);
    }
  }

  [*(a1 + 48) updateEngramID:v9];
  [*(a1 + 48) setCreateEngramGroupOnMessageSend:0];
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  return (*(*(a1 + 64) + 16))();
}

void sub_72058(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = [a4 code];
  v9 = IMOSLoggingEnabled();
  if (v8 == &dword_0 + 1)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "We tried to add or remove participants to the group, but the group had already been updated", &v19, 2u);
      }
    }

    v11 = [objc_msgSend(*(a1 + 32) _URIsFromApplicationData:{objc_msgSend(a2, "sharedApplicationData")), "count"}] == 0;
    v12 = IMOSLoggingEnabled();
    if (v11)
    {
      if (v12)
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "//**-----We did not get back destinations and cannot update the group!!! Please file a radar!!!-----*///", &v19, 2u);
        }
      }

      [NSError errorWithDomain:EngramControllerErrorDomain code:5 userInfo:0];
      (*(*(a1 + 48) + 16))();
    }

    else if (v12)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 40);
        v19 = 138412290;
        v20 = v14;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Going to retry adding participants: %@", &v19, 0xCu);
      }
    }
  }

  else
  {
    if (v9)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = @"NO";
        if (a3)
        {
          v16 = @"YES";
        }

        v19 = 138412290;
        v20 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Going to call completion on adding participants with success: %@", &v19, 0xCu);
      }
    }

    if (a3)
    {
      v17 = a2;
    }

    else
    {
      v17 = 0;
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v17, a3, a4);
  }
}

id sub_72390(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) _URIsForChatParticipants:*(a1 + 40) fromID:*(a1 + 48)];
    if ([*(a1 + 56) count])
    {
      v4 = [v4 arrayByAddingObjectsFromArray:*(a1 + 56)];
    }

    if ([*(a1 + 64) count])
    {
      v4 = [v4 arrayByExcludingObjectsInArray:*(a1 + 64)];
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_7255C;
    v9[3] = &unk_113EA0;
    v5 = *(a1 + 32);
    v9[4] = *(a1 + 40);
    v9[5] = v4;
    v9[6] = v5;
    v9[7] = a2;
    v10 = *(a1 + 72);
    return [v5 _enparticipantsForDestinations:v4 completion:v9];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [*(a1 + 40) engramID];
        *buf = 138412290;
        v12 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "We failed to look up an engram group for engram id: %@ so not updating engram group", buf, 0xCu);
      }
    }

    return (*(*(a1 + 80) + 16))(*(a1 + 80), 0, 0, [NSError errorWithDomain:EngramControllerErrorDomain code:3 userInfo:0]);
  }
}

id sub_7255C(uint64_t a1, void *a2)
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "We were able to update the destinations", &v13, 2u);
    }
  }

  v5 = [a2 count] == 0;
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [*(a1 + 32) engramID];
        v12 = *(a1 + 40);
        v13 = 138412546;
        v14 = v11;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "We failed to create enparticipants when trying to update group [engram id: %@] with destinations: %@", &v13, 0x16u);
      }
    }

    [NSError errorWithDomain:EngramControllerErrorDomain code:4 userInfo:0];
    return (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a2 count]);
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Participants were are updating to for engroup count: %@", &v13, 0xCu);
      }
    }

    return [*(a1 + 48) _updateGroupWithParticipants:*(a1 + 56) chat:*(a1 + 32) service:*(a1 + 64) participants:a2 destinations:*(a1 + 40) completion:*(a1 + 72)];
  }
}

void sub_7280C(uint64_t a1, void *a2, uint64_t a3)
{
  [*(a1 + 32) _checkAndSetUpContext:a2];
  if (a3)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = a3;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "We failed to perform the group task to update the participants with error: %@", buf, 0xCu);
      }
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_729BC;
    block[3] = &unk_113EF0;
    v7 = *(a1 + 72);
    block[4] = a3;
    block[5] = v7;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v8 = [*(a1 + 32) _createApplicationDataForDestinations:*(a1 + 40)];
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_729D8;
    v12[3] = &unk_113F40;
    v11 = *(a1 + 64);
    v13 = *(a1 + 32);
    v14 = v11;
    [a2 updateGroup:v9 withParticipants:v10 sharedApplicationData:v8 completion:v12];
  }
}

void sub_729D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_72A54;
  v4[3] = &unk_113F18;
  v4[4] = a2;
  v4[5] = a3;
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v3;
  dispatch_async(&_dispatch_main_q, v4);
}

uint64_t sub_72A54(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_14;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v12 = [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) "groupID")];
    *v24 = 138412290;
    *&v24[4] = v12;
    v8 = "We successfully updated the participants for engroup with stable id: %@";
    v9 = v11;
    v10 = 12;
    goto LABEL_13;
  }

  if ([v2 code] != &dword_0 + 1)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_25;
    }

    v15 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    *v24 = 0;
    v16 = "Update failed, will need to retry at some point";
    goto LABEL_24;
  }

  v5 = [objc_msgSend(objc_msgSend(*(a1 + 48) _URIsFromApplicationData:{objc_msgSend(*(a1 + 32), "sharedApplicationData")), "__imSetFromArray"), "isEqualToSet:", objc_msgSend(*(a1 + 56), "__imSetFromArray")}];
  v6 = IMOSLoggingEnabled();
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_25;
    }

    v15 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    *v24 = 0;
    v16 = "We need to retry the update, group has already been updated";
LABEL_24:
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, v16, v24, 2u);
LABEL_25:
    v14 = 0;
    goto LABEL_26;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = OSLogHandleForIMFoundationCategory();
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    goto LABEL_14;
  }

  *v24 = 0;
  v8 = "We got back that we couldn't update the group, but the updated participants match the ones we want to update to so marking as successful";
  v9 = v7;
  v10 = 2;
LABEL_13:
  _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, v8, v24, v10);
LABEL_14:
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "We successfully updated the engram group so we will set pending off", v24, 2u);
    }
  }

  [*(a1 + 64) setPendingENGroupParticipantUpdate:{0, *v24}];
  v14 = 1;
LABEL_26:
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = @"NO";
      v19 = *(a1 + 72);
      if (v14)
      {
        v18 = @"YES";
      }

      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      *v24 = 138413058;
      *&v24[4] = v19;
      *&v24[12] = 2112;
      *&v24[14] = v20;
      v25 = 2112;
      v26 = v18;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "About to call completion: %@ group: %@ success: %@ error: %@", v24, 0x2Au);
    }
  }

  if (v14)
  {
    v22 = *(a1 + 32);
  }

  else
  {
    v22 = 0;
  }

  return (*(*(a1 + 72) + 16))(*(a1 + 72), v22, v14, *(a1 + 40));
}

void sub_72D64(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x72C74);
  }

  _Unwind_Resume(a1);
}

void sub_7348C(uint64_t a1)
{
  v2 = [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) "groupID")];
  v3 = [+[IMDChatRegistry sharedInstance](IMDChatRegistry existingChatWithEngramID:"existingChatWithEngramID:", v2];
  if (!v3)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v10 = 138412290;
    v11 = v2;
    v7 = "We did not find an IMDChat for engramID: %@";
    v8 = v6;
LABEL_12:
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, v7, &v10, 0xCu);
    return;
  }

  v4 = v3;
  v5 = [*(a1 + 40) _callerURIForChat:v3];
  if (![v5 length])
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v10 = 138412290;
    v11 = v4;
    v7 = "We did not get back a callerURI when trying to update the local participants for the chat: %@ ---- PLEASE FILE A RADAR!! -----";
    v8 = v9;
    goto LABEL_12;
  }

  [*(a1 + 40) _updateLocalParticipantsFromEngroup:*(a1 + 48) chat:v4 fromID:v5];

  [v4 setPendingENGroupParticipantUpdate:0];
}

void sub_73B2C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x73AE4);
  }

  _Unwind_Resume(a1);
}

void sub_74044(uint64_t a1, void *a2, int a3, int a4)
{
  objc_initWeak(&location, a2);
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (a3)
      {
        v8 = @"YES";
      }

      *buf = 138412546;
      v24 = v8;
      v25 = 1024;
      LODWORD(v26) = a4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Done sending FTMessage for refresh request. success %@ error %d", buf, 0x12u);
    }
  }

  v9 = [*(a1 + 32) refreshRequests];
  v10 = [*(a1 + 40) guid];
  [v9 removeObject:v10];

  v11 = objc_loadWeakRetained(&location);
  v12 = [v11 responseCode];
  if ([v12 intValue] <= 0)
  {
  }

  else
  {
    v13 = objc_loadWeakRetained(&location);
    v14 = [v13 failReason];
    v15 = [v14 intValue] > 0;

    if (v15)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = objc_loadWeakRetained(&location);
          v18 = [v17 responseCode];
          v19 = objc_loadWeakRetained(&location);
          v20 = [v19 failReason];
          *buf = 138412546;
          v24 = v18;
          v25 = 2112;
          v26 = v20;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Received %@/%@ from server following refresh request. re-uploading asset.", buf, 0x16u);
        }
      }

      v21 = 48;
      goto LABEL_17;
    }
  }

  if (a3)
  {
    v21 = 56;
LABEL_17:
    (*(*(a1 + v21) + 16))();
  }

  objc_destroyWeak(&location);
}

void sub_742B0(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x74248);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(exc_buf);
}

void sub_74400(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MessagePushHandlerCommandHandlerRegistry);
  v4 = qword_124340;
  qword_124340 = v3;

  [*(a1 + 32) addStandardCommandHandlersToRegistry:qword_124340];
  if ([qword_124340 isLockedDown])
  {
    [*(a1 + 32) addLockdownCommandHandlersToRegistry:qword_124340];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_74C6C(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v48 = a2;
  v49 = a3;
  v11 = a4;
  v41 = a5;
  v47 = a6;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v72 = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "_handleIncomingMessageError: %@", buf, 0xCu);
    }
  }

  v46 = [(NSDictionary *)v49 objectForKey:@"IDSIncomingMessageShouldShowPeerErrors"];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = [(MessagePushHandler *)v48 copyHandlersForEnumerating];
  v13 = [obj countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v13)
  {
    v55 = *v68;
    *&v14 = 138412802;
    v40 = v14;
    do
    {
      v15 = 0;
      v56 = v13;
      do
      {
        if (*v68 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v67 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          v17 = objc_opt_class();
          v62 = sub_2328(v17, v11, @"fR");
          v64 = [(NSDictionary *)v11 objectForKey:@"fU"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v18 = [(NSDictionary *)v11 objectForKey:@"fU"];
            v45 = [NSData _IDSDataFromBase64String:v18];
            v52 = v18;
            goto LABEL_15;
          }

          v19 = [(NSDictionary *)v11 objectForKey:@"fU"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSDictionary *)v11 objectForKey:@"fU"];
            v42 = v58 = v19;
LABEL_15:
            v54 = isKindOfClass ^ 1;
          }

          else
          {
            v54 = 0;
            v58 = v19;
          }

          v61 = JWUUIDPushObjectToString();
          v20 = objc_opt_class();
          v60 = sub_2328(v20, v11, @"tP");
          v21 = objc_opt_class();
          v59 = sub_2328(v21, v11, @"sP");
          v63 = [(NSDictionary *)v11 objectForKey:@"t"];
          objc_opt_class();
          v65 = objc_opt_isKindOfClass();
          if (v65)
          {
            v22 = [(NSDictionary *)v11 objectForKey:@"t"];
            v23 = [NSData _IDSDataFromBase64String:v22];
            v44 = v23;
            v51 = v22;
            goto LABEL_21;
          }

          v24 = [(NSDictionary *)v11 objectForKey:@"t"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [(NSDictionary *)v11 objectForKey:@"t"];
            v57 = v24;
            v43 = v23;
LABEL_21:
            v53 = v65 ^ 1;
          }

          else
          {
            v53 = 0;
            v23 = 0;
            v57 = v24;
          }

          v25 = objc_opt_class();
          v26 = sub_2328(v25, v11, @"e");
          v27 = objc_opt_class();
          v28 = sub_2328(v27, v11, @"D");
          v29 = objc_opt_class();
          v30 = sub_2328(v29, v11, @"Dc");
          v31 = objc_opt_class();
          v32 = sub_2328(v31, v11, @"H");
          v33 = [(NSDictionary *)v49 objectForKey:IMMessageBatchContextKey];
          v34 = objc_opt_class();
          v35 = sub_2328(v34, v11, @"aDI");
          if (v46)
          {
            v36 = [v46 BOOLValue];
          }

          else
          {
            v36 = 1;
          }

          LOBYTE(v39) = v36;
          [v16 handler:v48 receivedError:v62 forMessageID:v61 toIdentifier:v60 fromIdentifier:v59 fromToken:v23 timeStamp:v26 fromIDSID:v47 needsDeliveryReceipt:v28 deliveryContext:v30 storageContext:v32 batchContext:v33 additionalInfo:v35 shouldShowPeerErrors:{v39, v40}];

          if (v53)
          {
          }

          v37 = v57;
          if (v65)
          {

            v37 = v51;
          }

          if (v54)
          {
          }

          v38 = v58;
          if (isKindOfClass)
          {

            v38 = v52;
          }
        }

        v15 = v15 + 1;
      }

      while (v56 != v15);
      v13 = [obj countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v13);
  }
}

void sub_75480(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v38 = a2;
  v37 = a3;
  v48 = a4;
  v33 = a5;
  v36 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v54 = v48;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "_handleIncomingDeliveryReceipt: %@", buf, 0xCu);
    }
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [(MessagePushHandler *)v38 copyHandlersForEnumerating];
  v12 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v12)
  {
    v42 = *v50;
    do
    {
      v13 = 0;
      v43 = v12;
      do
      {
        if (*v50 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v49 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v46 = [(NSDictionary *)v48 objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v15 = [(NSDictionary *)v48 objectForKey:@"U"];
            v35 = [NSData _IDSDataFromBase64String:v15];
            v40 = v15;
            goto LABEL_15;
          }

          v16 = [(NSDictionary *)v48 objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSDictionary *)v48 objectForKey:@"U"];
            v34 = v44 = v16;
LABEL_15:
            v41 = isKindOfClass ^ 1;
          }

          else
          {
            v41 = 0;
            v44 = v16;
          }

          v45 = JWUUIDPushObjectToString();
          v17 = objc_opt_class();
          v18 = sub_2328(v17, v48, @"tP");
          v19 = objc_opt_class();
          v20 = sub_2328(v19, v48, @"s");
          v21 = objc_opt_class();
          v22 = sub_2328(v21, v48, @"Dc");
          v23 = objc_opt_class();
          v24 = sub_2328(v23, v48, @"e");
          v25 = objc_opt_class();
          v26 = sub_2328(v25, v48, @"D");
          v27 = objc_opt_class();
          v28 = sub_2328(v27, v48, @"Dc");
          v29 = objc_opt_class();
          v30 = sub_2328(v29, v48, @"H");
          v31 = [(NSDictionary *)v37 objectForKey:IMMessageBatchContextKey];
          [v14 handler:v38 messageIDDelivered:v45 toIdentifier:v18 status:v20 deliveryContext:v22 timeStamp:v24 fromIDSID:v36 needsDeliveryReceipt:v26 deliveryContext:v28 storageContext:v30 batchContext:v31];

          if (v41)
          {
          }

          v32 = v44;
          if (isKindOfClass)
          {

            v32 = v40;
          }
        }

        v13 = v13 + 1;
      }

      while (v43 != v13);
      v12 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v12);
  }
}

void sub_75B04(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v38 = a2;
  v43 = a3;
  v51 = a4;
  v34 = a5;
  v37 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v57 = v51;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "_handleIncomingReflectedDeliveryReceipt: %@", buf, 0xCu);
    }
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [(MessagePushHandler *)v38 copyHandlersForEnumerating];
  v12 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v12)
  {
    v42 = *v53;
    do
    {
      v13 = 0;
      v44 = v12;
      do
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v52 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v49 = [(NSDictionary *)v51 objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v15 = [(NSDictionary *)v51 objectForKey:@"U"];
            v36 = [NSData _IDSDataFromBase64String:v15];
            v40 = v15;
            goto LABEL_15;
          }

          v16 = [(NSDictionary *)v51 objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSDictionary *)v51 objectForKey:@"U"];
            v35 = v45 = v16;
LABEL_15:
            v41 = isKindOfClass ^ 1;
          }

          else
          {
            v41 = 0;
            v45 = v16;
          }

          v48 = JWUUIDPushObjectToString();
          v47 = [(NSDictionary *)v43 objectForKey:@"IDSIncomingMessageDecryptedData"];
          v17 = objc_opt_class();
          v46 = sub_2328(v17, v51, @"tP");
          v18 = objc_opt_class();
          v19 = sub_2328(v18, v51, @"sP");
          v20 = objc_opt_class();
          v21 = sub_2328(v20, v51, @"s");
          v22 = objc_opt_class();
          v23 = sub_2328(v22, v51, @"Dc");
          v24 = objc_opt_class();
          v25 = sub_2328(v24, v51, @"e");
          v26 = objc_opt_class();
          v27 = sub_2328(v26, v51, @"D");
          v28 = objc_opt_class();
          v29 = sub_2328(v28, v51, @"Dc");
          v30 = objc_opt_class();
          v31 = sub_2328(v30, v51, @"H");
          v32 = [(NSDictionary *)v43 objectForKey:IMMessageBatchContextKey];
          [v14 handler:v38 messageIDReflectedDelivered:v48 incomingMessage:v47 toIdentifier:v46 fromIdentifier:v19 status:v21 deliveryContext:v23 timeStamp:v25 fromIDSID:v37 needsDeliveryReceipt:v27 deliveryContext:v29 storageContext:v31 batchContext:v32];

          if (v41)
          {
          }

          v33 = v45;
          if (isKindOfClass)
          {

            v33 = v40;
          }
        }

        v13 = v13 + 1;
      }

      while (v44 != v13);
      v12 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v12);
  }
}

void sub_761D0(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v42 = a2;
  v41 = a3;
  v57 = a4;
  v35 = a5;
  v40 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v63 = v57;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "_handleIncomingReadReceipt: %@", buf, 0xCu);
    }
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = [(MessagePushHandler *)v42 copyHandlersForEnumerating];
  v12 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v12)
  {
    v47 = *v59;
    do
    {
      v13 = 0;
      v48 = v12;
      do
      {
        if (*v59 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v58 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v55 = [(NSDictionary *)v57 objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v15 = [(NSDictionary *)v57 objectForKey:@"U"];
            v39 = [NSData _IDSDataFromBase64String:v15];
            v45 = v15;
            goto LABEL_15;
          }

          v16 = [(NSDictionary *)v57 objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSDictionary *)v57 objectForKey:@"U"];
            v36 = v50 = v16;
LABEL_15:
            v46 = isKindOfClass ^ 1;
          }

          else
          {
            v46 = 0;
            v50 = v16;
          }

          v53 = JWUUIDPushObjectToString();
          v17 = objc_opt_class();
          v52 = sub_2328(v17, v57, @"tP");
          v18 = objc_opt_class();
          v51 = sub_2328(v18, v57, @"sP");
          v54 = [(NSDictionary *)v57 objectForKey:@"t"];
          objc_opt_class();
          v19 = objc_opt_isKindOfClass();
          if (v19)
          {
            v20 = [(NSDictionary *)v57 objectForKey:@"t"];
            v21 = [NSData _IDSDataFromBase64String:v20];
            v38 = v21;
            v44 = v20;
            goto LABEL_21;
          }

          v22 = [(NSDictionary *)v57 objectForKey:@"t"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [(NSDictionary *)v57 objectForKey:@"t"];
            v49 = v22;
            v37 = v21;
LABEL_21:
            v23 = v19 ^ 1;
          }

          else
          {
            v23 = 0;
            v21 = 0;
            v49 = v22;
          }

          v24 = objc_opt_class();
          v25 = sub_2328(v24, v57, @"e");
          v26 = objc_opt_class();
          v27 = sub_2328(v26, v57, @"D");
          v28 = objc_opt_class();
          v29 = sub_2328(v28, v57, @"Dc");
          v30 = objc_opt_class();
          v31 = sub_2328(v30, v57, @"H");
          v32 = [(NSDictionary *)v41 objectForKey:IMMessageBatchContextKey];
          [v14 handler:v42 messageIDRead:v53 toIdentifier:v52 fromIdentifier:v51 fromToken:v21 timeStamp:v25 fromIDSID:v40 needsDeliveryReceipt:v27 deliveryContext:v29 storageContext:v31 batchContext:v32];

          if (v23)
          {
          }

          v33 = v49;
          if (v19)
          {

            v33 = v44;
          }

          if (v46)
          {
          }

          v34 = v50;
          if (isKindOfClass)
          {

            v34 = v45;
          }
        }

        v13 = v13 + 1;
      }

      while (v48 != v13);
      v12 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v12);
  }
}

void sub_7694C(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v43 = a2;
  v50 = a3;
  v62 = a4;
  v37 = a5;
  v42 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v68 = v62;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "_handleIncomingUpdateAttachments: %@", buf, 0xCu);
    }
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = [(MessagePushHandler *)v43 copyHandlersForEnumerating];
  v12 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v12)
  {
    v49 = *v64;
    *&v13 = 138412802;
    v36 = v13;
    do
    {
      v14 = 0;
      v51 = v12;
      do
      {
        if (*v64 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v63 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          v59 = [(NSDictionary *)v62 objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v16 = [(NSDictionary *)v62 objectForKey:@"U"];
            v41 = [NSData _IDSDataFromBase64String:v16];
            v46 = v16;
            goto LABEL_15;
          }

          v17 = [(NSDictionary *)v62 objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSDictionary *)v62 objectForKey:@"U"];
            v38 = v54 = v17;
LABEL_15:
            v48 = isKindOfClass ^ 1;
          }

          else
          {
            v48 = 0;
            v54 = v17;
          }

          v57 = JWUUIDPushObjectToString();
          v18 = objc_opt_class();
          v56 = sub_2328(v18, v62, @"tP");
          v19 = objc_opt_class();
          v55 = sub_2328(v19, v62, @"sP");
          v58 = [(NSDictionary *)v62 objectForKey:@"t"];
          objc_opt_class();
          v60 = objc_opt_isKindOfClass();
          if (v60)
          {
            v20 = [(NSDictionary *)v62 objectForKey:@"t"];
            v53 = [NSData _IDSDataFromBase64String:v20];
            v40 = v53;
            v45 = v20;
            goto LABEL_21;
          }

          v21 = [(NSDictionary *)v62 objectForKey:@"t"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v53 = [(NSDictionary *)v62 objectForKey:@"t"];
            v52 = v21;
            v39 = v53;
LABEL_21:
            v47 = v60 ^ 1;
          }

          else
          {
            v47 = 0;
            v52 = v21;
            v53 = 0;
          }

          v22 = objc_opt_class();
          v23 = sub_2328(v22, v62, @"e");
          v24 = objc_opt_class();
          v25 = sub_2328(v24, v62, @"D");
          v26 = objc_opt_class();
          v27 = sub_2328(v26, v62, @"Dc");
          v28 = objc_opt_class();
          v29 = sub_2328(v28, v62, @"H");
          v30 = [(NSDictionary *)v50 objectForKey:IMMessageBatchContextKey];
          v31 = [(NSDictionary *)v50 objectForKey:@"IDSIncomingMessageDecryptedData"];
          v32 = JWDecodeDictionary();
          v33 = [v32 objectForKeyedSubscript:@"fileTransferUpdates"];
          [v15 handler:v43 updateAttachments:v57 toIdentifier:v56 fromIdentifier:v55 fromToken:v53 timeStamp:v23 fromIDSID:v42 needsDeliveryReceipt:v25 deliveryContext:v27 storageContext:v29 batchContext:v30 fileTransferUpdates:{v33, v36}];

          if (v47)
          {
          }

          v34 = v52;
          if (v60)
          {

            v34 = v45;
          }

          if (v48)
          {
          }

          v35 = v54;
          if (isKindOfClass)
          {

            v35 = v46;
          }
        }

        v14 = v14 + 1;
      }

      while (v51 != v14);
      v12 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v12);
  }
}

void sub_77120(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v42 = a2;
  v41 = a3;
  v57 = a4;
  v35 = a5;
  v40 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v63 = v57;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "_handleIncomingPlayedReceipt: %@", buf, 0xCu);
    }
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = [(MessagePushHandler *)v42 copyHandlersForEnumerating];
  v12 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v12)
  {
    v47 = *v59;
    do
    {
      v13 = 0;
      v48 = v12;
      do
      {
        if (*v59 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v58 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v55 = [(NSDictionary *)v57 objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v15 = [(NSDictionary *)v57 objectForKey:@"U"];
            v39 = [NSData _IDSDataFromBase64String:v15];
            v45 = v15;
            goto LABEL_15;
          }

          v16 = [(NSDictionary *)v57 objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSDictionary *)v57 objectForKey:@"U"];
            v36 = v50 = v16;
LABEL_15:
            v46 = isKindOfClass ^ 1;
          }

          else
          {
            v46 = 0;
            v50 = v16;
          }

          v53 = JWUUIDPushObjectToString();
          v17 = objc_opt_class();
          v52 = sub_2328(v17, v57, @"tP");
          v18 = objc_opt_class();
          v51 = sub_2328(v18, v57, @"sP");
          v54 = [(NSDictionary *)v57 objectForKey:@"t"];
          objc_opt_class();
          v19 = objc_opt_isKindOfClass();
          if (v19)
          {
            v20 = [(NSDictionary *)v57 objectForKey:@"t"];
            v21 = [NSData _IDSDataFromBase64String:v20];
            v38 = v21;
            v44 = v20;
            goto LABEL_21;
          }

          v22 = [(NSDictionary *)v57 objectForKey:@"t"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [(NSDictionary *)v57 objectForKey:@"t"];
            v49 = v22;
            v37 = v21;
LABEL_21:
            v23 = v19 ^ 1;
          }

          else
          {
            v23 = 0;
            v21 = 0;
            v49 = v22;
          }

          v24 = objc_opt_class();
          v25 = sub_2328(v24, v57, @"e");
          v26 = objc_opt_class();
          v27 = sub_2328(v26, v57, @"D");
          v28 = objc_opt_class();
          v29 = sub_2328(v28, v57, @"Dc");
          v30 = objc_opt_class();
          v31 = sub_2328(v30, v57, @"H");
          v32 = [(NSDictionary *)v41 objectForKey:IMMessageBatchContextKey];
          [v14 handler:v42 messageIDPlayed:v53 toIdentifier:v52 fromIdentifier:v51 fromToken:v21 timeStamp:v25 fromIDSID:v40 needsDeliveryReceipt:v27 deliveryContext:v29 storageContext:v31 batchContext:v32];

          if (v23)
          {
          }

          v33 = v49;
          if (v19)
          {

            v33 = v44;
          }

          if (v46)
          {
          }

          v34 = v50;
          if (isKindOfClass)
          {

            v34 = v45;
          }
        }

        v13 = v13 + 1;
      }

      while (v48 != v13);
      v12 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v12);
  }
}

void sub_7789C(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v44 = a2;
  v43 = a3;
  v11 = a4;
  v37 = a5;
  v42 = a6;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v67 = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "_handleIncomingSavedReceipt: %@", buf, 0xCu);
    }
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [(MessagePushHandler *)v44 copyHandlersForEnumerating];
  v13 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v13)
  {
    v50 = *v63;
    do
    {
      v14 = 0;
      v51 = v13;
      do
      {
        if (*v63 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v62 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          v60 = [(NSDictionary *)v11 objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v16 = [(NSDictionary *)v11 objectForKey:@"U"];
            v41 = [NSData _IDSDataFromBase64String:v16];
            v47 = v16;
            goto LABEL_15;
          }

          v17 = [(NSDictionary *)v11 objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSDictionary *)v11 objectForKey:@"U"];
            v38 = v53 = v17;
LABEL_15:
            v49 = isKindOfClass ^ 1;
          }

          else
          {
            v49 = 0;
            v53 = v17;
          }

          v58 = JWUUIDPushObjectToString();
          v18 = objc_opt_class();
          v57 = sub_2328(v18, v11, @"aT");
          v19 = objc_opt_class();
          v56 = sub_2328(v19, v11, @"tP");
          v20 = objc_opt_class();
          v55 = sub_2328(v20, v11, @"sP");
          v21 = objc_opt_class();
          v54 = sub_2328(v21, v11, @"p");
          v59 = [(NSDictionary *)v11 objectForKey:@"t"];
          objc_opt_class();
          v22 = objc_opt_isKindOfClass();
          if (v22)
          {
            v23 = [(NSDictionary *)v11 objectForKey:@"t"];
            v24 = [NSData _IDSDataFromBase64String:v23];
            v40 = v24;
            v46 = v23;
            goto LABEL_21;
          }

          v25 = [(NSDictionary *)v11 objectForKey:@"t"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [(NSDictionary *)v11 objectForKey:@"t"];
            v52 = v25;
            v39 = v24;
LABEL_21:
            v48 = v22 ^ 1;
          }

          else
          {
            v48 = 0;
            v24 = 0;
            v52 = v25;
          }

          v26 = objc_opt_class();
          v27 = sub_2328(v26, v11, @"e");
          v28 = objc_opt_class();
          v29 = sub_2328(v28, v11, @"D");
          v30 = objc_opt_class();
          v31 = sub_2328(v30, v11, @"Dc");
          v32 = objc_opt_class();
          v33 = sub_2328(v32, v11, @"H");
          v34 = [(NSDictionary *)v43 objectForKey:IMMessageBatchContextKey];
          [v15 handler:v44 messageIDSaved:v58 ofType:v57 toIdentifier:v56 fromIdentifier:v55 groupContext:v54 fromToken:v24 timeStamp:v27 fromIDSID:v42 needsDeliveryReceipt:v29 deliveryContext:v31 storageContext:v33 batchContext:v34];

          if (v48)
          {
          }

          v35 = v52;
          if (v22)
          {

            v35 = v46;
          }

          if (v49)
          {
          }

          v36 = v53;
          if (isKindOfClass)
          {

            v36 = v47;
          }
        }

        v14 = v14 + 1;
      }

      while (v51 != v14);
      v13 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v13);
  }
}

void sub_78070(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v49 = a2;
  v70 = a3;
  v71 = a4;
  v48 = a5;
  v47 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v77 = v71;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "_handleIncomingTextMessage: %@", buf, 0xCu);
    }
  }

  v12 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Processing in MessagePushHandler because BlastDoor is not enabled for this message yet", buf, 2u);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = [(MessagePushHandler *)v49 copyHandlersForEnumerating];
  v13 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
  if (v13)
  {
    v55 = *v73;
    v45 = IDSIncomingMessageEngramGroupKey;
    *&v14 = 138412802;
    v40 = v14;
    do
    {
      v15 = 0;
      v56 = v13;
      do
      {
        if (*v73 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v72 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          v65 = [(NSDictionary *)v70 objectForKey:@"IDSIncomingMessageDecryptedData"];
          v64 = [(NSDictionary *)v70 objectForKey:@"IDSIncomingMessageOriginalEncryptionType"];
          v67 = [(NSDictionary *)v71 objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v17 = [(NSDictionary *)v71 objectForKey:@"U"];
            v44 = [NSData _IDSDataFromBase64String:v17];
            v52 = v17;
            goto LABEL_17;
          }

          v18 = [(NSDictionary *)v71 objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSDictionary *)v71 objectForKey:@"U"];
            v41 = v59 = v18;
LABEL_17:
            v54 = isKindOfClass ^ 1;
          }

          else
          {
            v54 = 0;
            v59 = v18;
          }

          v63 = JWUUIDPushObjectToString();
          v19 = objc_opt_class();
          v62 = sub_2328(v19, v71, @"tP");
          v20 = objc_opt_class();
          v61 = sub_2328(v20, v71, @"sP");
          v66 = [(NSDictionary *)v71 objectForKey:@"t"];
          objc_opt_class();
          v68 = objc_opt_isKindOfClass();
          if (v68)
          {
            v21 = [(NSDictionary *)v71 objectForKey:@"t"];
            v58 = [NSData _IDSDataFromBase64String:v21];
            v43 = v58;
            v51 = v21;
            goto LABEL_23;
          }

          v22 = [(NSDictionary *)v71 objectForKey:@"t"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v58 = [(NSDictionary *)v71 objectForKey:@"t"];
            v57 = v22;
            v42 = v58;
LABEL_23:
            v53 = v68 ^ 1;
          }

          else
          {
            v53 = 0;
            v57 = v22;
            v58 = 0;
          }

          v23 = objc_opt_class();
          v60 = sub_2328(v23, v71, @"e");
          v24 = [(NSDictionary *)v70 objectForKey:v45];
          v25 = objc_opt_class();
          v26 = sub_2328(v25, v71, @"D");
          v27 = objc_opt_class();
          v28 = sub_2328(v27, v71, @"Dc");
          v29 = objc_opt_class();
          v30 = sub_2328(v29, v71, @"H");
          v31 = [(NSDictionary *)v70 objectForKey:IMMessageBatchContextKey];
          v32 = [(NSDictionary *)v70 objectForKey:@"mid"];
          v33 = objc_opt_class();
          v34 = sub_2328(v33, v71, @"mc");
          v35 = [v34 BOOLValue];
          BYTE1(v39) = [(NSDictionary *)v71 BOOLValueForKey:@"stu" withDefault:1];
          LOBYTE(v39) = v35;
          LOBYTE(v38) = a7;
          [v16 handler:v49 incomingMessage:v65 originalEncryptionType:v64 messageID:v63 toIdentifier:v62 fromIdentifier:v61 fromToken:v58 timeStamp:v60 fromIDSID:v47 incomingEngroup:v24 needsDeliveryReceipt:v26 deliveryContext:v28 storageContext:v30 batchContext:v31 messageContext:v48 isBeingReplayed:v38 mergeID:v32 wantsCheckpointing:v39 isSnapTrustedUser:v40];

          if (v53)
          {
          }

          v36 = v57;
          if (v68)
          {

            v36 = v51;
          }

          if (v54)
          {
          }

          v37 = v59;
          if (isKindOfClass)
          {

            v37 = v52;
          }
        }

        v15 = v15 + 1;
      }

      while (v56 != v15);
      v13 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
    }

    while (v13);
  }
}

void sub_78934(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v38 = a2;
  v37 = a3;
  v48 = a4;
  v33 = a5;
  v36 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v54 = v48;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "_handleLocationShareCommandPush: %@", buf, 0xCu);
    }
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [(MessagePushHandler *)v38 copyHandlersForEnumerating];
  v12 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v12)
  {
    v41 = *v50;
    do
    {
      v13 = 0;
      v42 = v12;
      do
      {
        if (*v50 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v49 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = objc_opt_class();
          v46 = sub_2328(v15, v48, @"p");
          v16 = objc_opt_class();
          v45 = sub_2328(v16, v48, @"tP");
          v17 = objc_opt_class();
          v44 = sub_2328(v17, v48, @"sP");
          v47 = [(NSDictionary *)v48 objectForKey:@"t"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v19 = [(NSDictionary *)v48 objectForKey:@"t"];
            v20 = [NSData _IDSDataFromBase64String:v19];
            v35 = v20;
            v40 = v19;
            goto LABEL_15;
          }

          v21 = [(NSDictionary *)v48 objectForKey:@"t"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [(NSDictionary *)v48 objectForKey:@"t"];
            v43 = v21;
            v34 = v20;
LABEL_15:
            v22 = isKindOfClass ^ 1;
          }

          else
          {
            v22 = 0;
            v20 = 0;
            v43 = v21;
          }

          v23 = objc_opt_class();
          v24 = sub_2328(v23, v48, @"e");
          v25 = objc_opt_class();
          v26 = sub_2328(v25, v48, @"D");
          v27 = objc_opt_class();
          v28 = sub_2328(v27, v48, @"Dc");
          v29 = objc_opt_class();
          v30 = sub_2328(v29, v48, @"H");
          v31 = [(NSDictionary *)v37 objectForKey:IMMessageBatchContextKey];
          [v14 handler:v38 locationShareInfo:v46 toIdentifier:v45 fromIdentifier:v44 fromToken:v20 timeStamp:v24 fromIDSID:v36 needsDeliveryReceipt:v26 deliveryContext:v28 storageContext:v30 batchContext:v31];

          if (v22)
          {
          }

          v32 = v43;
          if (isKindOfClass)
          {

            v32 = v40;
          }
        }

        v13 = v13 + 1;
      }

      while (v42 != v13);
      v12 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v12);
  }
}

void sub_78FA0(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v37 = a2;
  v42 = a3;
  v11 = a4;
  v33 = a5;
  v36 = a6;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v55 = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "_handleGenericCommandPush: %@", buf, 0xCu);
    }
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [(MessagePushHandler *)v37 copyHandlersForEnumerating];
  v13 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v13)
  {
    v41 = *v51;
    do
    {
      v14 = 0;
      v43 = v13;
      do
      {
        if (*v51 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v50 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          v16 = objc_opt_class();
          v48 = sub_2328(v16, v11, @"Dc");
          v47 = [(NSDictionary *)v42 objectForKey:@"IDSIncomingMessageDecryptedData"];
          v17 = objc_opt_class();
          v46 = sub_2328(v17, v11, @"tP");
          v18 = objc_opt_class();
          v45 = sub_2328(v18, v11, @"sP");
          v49 = [(NSDictionary *)v11 objectForKey:@"t"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v20 = [(NSDictionary *)v11 objectForKey:@"t"];
            v21 = [NSData _IDSDataFromBase64String:v20];
            v35 = v21;
            v39 = v20;
            goto LABEL_15;
          }

          v22 = [(NSDictionary *)v11 objectForKey:@"t"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [(NSDictionary *)v11 objectForKey:@"t"];
            v44 = v22;
            v34 = v21;
LABEL_15:
            v40 = isKindOfClass ^ 1;
          }

          else
          {
            v40 = 0;
            v21 = 0;
            v44 = v22;
          }

          v23 = objc_opt_class();
          v24 = sub_2328(v23, v11, @"e");
          v25 = objc_opt_class();
          v26 = sub_2328(v25, v11, @"D");
          v27 = objc_opt_class();
          v28 = sub_2328(v27, v11, @"Dc");
          v29 = objc_opt_class();
          v30 = sub_2328(v29, v11, @"H");
          v31 = [(NSDictionary *)v42 objectForKey:IMMessageBatchContextKey];
          [v15 handler:v37 genericNotification:v48 incomingMessage:v47 userInfo:v11 toIdentifier:v46 fromIdentifier:v45 fromToken:v21 timeStamp:v24 fromIDSID:v36 needsDeliveryReceipt:v26 deliveryContext:v28 storageContext:v30 batchContext:v31];

          if (v40)
          {
          }

          v32 = v44;
          if (isKindOfClass)
          {

            v32 = v39;
          }
        }

        v14 = v14 + 1;
      }

      while (v43 != v14);
      v13 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v13);
  }
}

void sub_79628(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v38 = a2;
  v42 = a3;
  v49 = a4;
  v34 = a5;
  v37 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v55 = v49;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "_handleNicknameCommand: %@", buf, 0xCu);
    }
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [(MessagePushHandler *)v38 copyHandlersForEnumerating];
  v12 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v12)
  {
    v41 = *v51;
    *&v13 = 138412802;
    v33 = v13;
    do
    {
      v14 = 0;
      v43 = v12;
      do
      {
        if (*v51 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v50 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          v47 = [(NSDictionary *)v42 objectForKey:@"IDSIncomingMessageDecryptedData"];
          v16 = objc_opt_class();
          v46 = sub_2328(v16, v49, @"tP");
          v17 = objc_opt_class();
          v45 = sub_2328(v17, v49, @"sP");
          v48 = [(NSDictionary *)v49 objectForKey:@"t"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v19 = [(NSDictionary *)v49 objectForKey:@"t"];
            v20 = [NSData _IDSDataFromBase64String:v19];
            v36 = v20;
            v40 = v19;
            goto LABEL_15;
          }

          v21 = [(NSDictionary *)v49 objectForKey:@"t"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [(NSDictionary *)v49 objectForKey:@"t"];
            v44 = v21;
            v35 = v20;
LABEL_15:
            v22 = isKindOfClass ^ 1;
          }

          else
          {
            v22 = 0;
            v20 = 0;
            v44 = v21;
          }

          v23 = objc_opt_class();
          v24 = sub_2328(v23, v49, @"e");
          v25 = objc_opt_class();
          v26 = sub_2328(v25, v49, @"D");
          v27 = objc_opt_class();
          v28 = sub_2328(v27, v49, @"Dc");
          v29 = objc_opt_class();
          v30 = sub_2328(v29, v49, @"H");
          v31 = [(NSDictionary *)v42 objectForKey:IMMessageBatchContextKey];
          [v15 handler:v38 nicknameInfoReceived:v47 userInfo:v49 toIdentifier:v46 fromIdentifier:v45 fromToken:v20 timeStamp:v24 fromIDSID:v37 needsDeliveryReceipt:v26 deliveryContext:v28 storageContext:v30 batchContext:{v31, v33}];

          if (v22)
          {
          }

          v32 = v44;
          if (isKindOfClass)
          {

            v32 = v40;
          }
        }

        v14 = v14 + 1;
      }

      while (v43 != v14);
      v12 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v12);
  }
}

void sub_79C84(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v36 = a2;
  v40 = a3;
  v47 = a4;
  v32 = a5;
  v35 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v53 = v47;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "_handleDeleteCommand: %@", buf, 0xCu);
    }
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [(MessagePushHandler *)v36 copyHandlersForEnumerating];
  v12 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v12)
  {
    v39 = *v49;
    do
    {
      v13 = 0;
      v41 = v12;
      do
      {
        if (*v49 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v48 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v45 = [(NSDictionary *)v40 objectForKey:@"IDSIncomingMessageDecryptedData"];
          v15 = objc_opt_class();
          v44 = sub_2328(v15, v47, @"tP");
          v16 = objc_opt_class();
          v43 = sub_2328(v16, v47, @"sP");
          v46 = [(NSDictionary *)v47 objectForKey:@"t"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v18 = [(NSDictionary *)v47 objectForKey:@"t"];
            v19 = [NSData _IDSDataFromBase64String:v18];
            v34 = v19;
            v38 = v18;
            goto LABEL_15;
          }

          v20 = [(NSDictionary *)v47 objectForKey:@"t"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [(NSDictionary *)v47 objectForKey:@"t"];
            v42 = v20;
            v33 = v19;
LABEL_15:
            v21 = isKindOfClass ^ 1;
          }

          else
          {
            v21 = 0;
            v19 = 0;
            v42 = v20;
          }

          v22 = objc_opt_class();
          v23 = sub_2328(v22, v47, @"e");
          v24 = objc_opt_class();
          v25 = sub_2328(v24, v47, @"D");
          v26 = objc_opt_class();
          v27 = sub_2328(v26, v47, @"Dc");
          v28 = objc_opt_class();
          v29 = sub_2328(v28, v47, @"H");
          v30 = [(NSDictionary *)v40 objectForKey:IMMessageBatchContextKey];
          [v14 handler:v36 deleteCommand:v45 toIdentifier:v44 fromIdentifier:v43 fromToken:v19 timeStamp:v23 fromIDSID:v35 needsDeliveryReceipt:v25 deliveryContext:v27 storageContext:v29 batchContext:v30];

          if (v21)
          {
          }

          v31 = v42;
          if (isKindOfClass)
          {

            v31 = v38;
          }
        }

        v13 = v13 + 1;
      }

      while (v41 != v13);
      v12 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v12);
  }
}

void sub_7A2E0(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v36 = a2;
  v40 = a3;
  v47 = a4;
  v32 = a5;
  v35 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v53 = v47;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "_handleRecoverCommand: %@", buf, 0xCu);
    }
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [(MessagePushHandler *)v36 copyHandlersForEnumerating];
  v12 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v12)
  {
    v39 = *v49;
    do
    {
      v13 = 0;
      v41 = v12;
      do
      {
        if (*v49 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v48 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v45 = [(NSDictionary *)v40 objectForKey:@"IDSIncomingMessageDecryptedData"];
          v15 = objc_opt_class();
          v44 = sub_2328(v15, v47, @"tP");
          v16 = objc_opt_class();
          v43 = sub_2328(v16, v47, @"sP");
          v46 = [(NSDictionary *)v47 objectForKey:@"t"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v18 = [(NSDictionary *)v47 objectForKey:@"t"];
            v19 = [NSData _IDSDataFromBase64String:v18];
            v34 = v19;
            v38 = v18;
            goto LABEL_15;
          }

          v20 = [(NSDictionary *)v47 objectForKey:@"t"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [(NSDictionary *)v47 objectForKey:@"t"];
            v42 = v20;
            v33 = v19;
LABEL_15:
            v21 = isKindOfClass ^ 1;
          }

          else
          {
            v21 = 0;
            v19 = 0;
            v42 = v20;
          }

          v22 = objc_opt_class();
          v23 = sub_2328(v22, v47, @"e");
          v24 = objc_opt_class();
          v25 = sub_2328(v24, v47, @"D");
          v26 = objc_opt_class();
          v27 = sub_2328(v26, v47, @"Dc");
          v28 = objc_opt_class();
          v29 = sub_2328(v28, v47, @"H");
          v30 = [(NSDictionary *)v40 objectForKey:IMMessageBatchContextKey];
          [v14 handler:v36 recoverCommand:v45 toIdentifier:v44 fromIdentifier:v43 fromToken:v19 timeStamp:v23 fromIDSID:v35 needsDeliveryReceipt:v25 deliveryContext:v27 storageContext:v29 batchContext:v30];

          if (v21)
          {
          }

          v31 = v42;
          if (isKindOfClass)
          {

            v31 = v38;
          }
        }

        v13 = v13 + 1;
      }

      while (v41 != v13);
      v12 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v12);
  }
}

void sub_7A93C(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v42 = a2;
  v49 = a3;
  v11 = a4;
  v36 = a5;
  v41 = a6;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v66 = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "_handleGroupMessageCommand: %@", buf, 0xCu);
    }
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = [(MessagePushHandler *)v42 copyHandlersForEnumerating];
  v13 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v13)
  {
    v48 = *v62;
    do
    {
      v14 = 0;
      v50 = v13;
      do
      {
        if (*v62 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v61 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          v16 = objc_opt_class();
          v56 = sub_2328(v16, v11, @"p");
          v57 = [(NSDictionary *)v49 objectForKey:@"IDSIncomingMessageDecryptedData"];
          v59 = [(NSDictionary *)v11 objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v17 = [(NSDictionary *)v11 objectForKey:@"U"];
            v40 = [NSData _IDSDataFromBase64String:v17];
            v45 = v17;
            goto LABEL_15;
          }

          v18 = [(NSDictionary *)v11 objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSDictionary *)v11 objectForKey:@"U"];
            v37 = v52 = v18;
LABEL_15:
            v47 = isKindOfClass ^ 1;
          }

          else
          {
            v47 = 0;
            v52 = v18;
          }

          v55 = JWUUIDPushObjectToString();
          v19 = objc_opt_class();
          v54 = sub_2328(v19, v11, @"tP");
          v20 = objc_opt_class();
          v53 = sub_2328(v20, v11, @"sP");
          v58 = [(NSDictionary *)v11 objectForKey:@"t"];
          objc_opt_class();
          v21 = objc_opt_isKindOfClass();
          if (v21)
          {
            v22 = [(NSDictionary *)v11 objectForKey:@"t"];
            v23 = [NSData _IDSDataFromBase64String:v22];
            v39 = v23;
            v44 = v22;
            goto LABEL_21;
          }

          v24 = [(NSDictionary *)v11 objectForKey:@"t"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [(NSDictionary *)v11 objectForKey:@"t"];
            v51 = v24;
            v38 = v23;
LABEL_21:
            v46 = v21 ^ 1;
          }

          else
          {
            v46 = 0;
            v23 = 0;
            v51 = v24;
          }

          v25 = objc_opt_class();
          v26 = sub_2328(v25, v11, @"e");
          v27 = objc_opt_class();
          v28 = sub_2328(v27, v11, @"D");
          v29 = objc_opt_class();
          v30 = sub_2328(v29, v11, @"Dc");
          v31 = objc_opt_class();
          v32 = sub_2328(v31, v11, @"H");
          v33 = [(NSDictionary *)v49 objectForKey:IMMessageBatchContextKey];
          [v15 handler:v42 groupMessageCommand:v56 encryptedGroupCommand:v57 messageID:v55 toIdentifier:v54 fromIdentifier:v53 fromToken:v23 timeStamp:v26 fromIDSID:v41 needsDeliveryReceipt:v28 deliveryContext:v30 storageContext:v32 batchContext:v33];

          if (v46)
          {
          }

          v34 = v51;
          if (v21)
          {

            v34 = v44;
          }

          if (v47)
          {
          }

          v35 = v52;
          if (isKindOfClass)
          {

            v35 = v45;
          }
        }

        v14 = v14 + 1;
      }

      while (v50 != v14);
      v13 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v13);
  }
}

void sub_7B100(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v43 = a2;
  v49 = a3;
  v60 = a4;
  v37 = a5;
  v42 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v66 = v60;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "bubblePayloadMessage: %@", buf, 0xCu);
    }
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = [(MessagePushHandler *)v43 copyHandlersForEnumerating];
  v12 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v12)
  {
    v48 = *v62;
    *&v13 = 138412802;
    v36 = v13;
    do
    {
      v14 = 0;
      v50 = v12;
      do
      {
        if (*v62 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v61 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          v56 = [(NSDictionary *)v49 objectForKey:@"IDSIncomingMessageDecryptedData"];
          v58 = [(NSDictionary *)v60 objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v16 = [(NSDictionary *)v60 objectForKey:@"U"];
            v41 = [NSData _IDSDataFromBase64String:v16];
            v46 = v16;
            goto LABEL_15;
          }

          v17 = [(NSDictionary *)v60 objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSDictionary *)v60 objectForKey:@"U"];
            v38 = v52 = v17;
LABEL_15:
            v47 = isKindOfClass ^ 1;
          }

          else
          {
            v47 = 0;
            v52 = v17;
          }

          v55 = JWUUIDPushObjectToString();
          v18 = objc_opt_class();
          v54 = sub_2328(v18, v60, @"tP");
          v19 = objc_opt_class();
          v53 = sub_2328(v19, v60, @"sP");
          v57 = [(NSDictionary *)v60 objectForKey:@"t"];
          objc_opt_class();
          v20 = objc_opt_isKindOfClass();
          if (v20)
          {
            v21 = [(NSDictionary *)v60 objectForKey:@"t"];
            v22 = [NSData _IDSDataFromBase64String:v21];
            v40 = v22;
            v45 = v21;
            goto LABEL_21;
          }

          v23 = [(NSDictionary *)v60 objectForKey:@"t"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = [(NSDictionary *)v60 objectForKey:@"t"];
            v51 = v23;
            v39 = v22;
LABEL_21:
            v24 = v20 ^ 1;
          }

          else
          {
            v24 = 0;
            v22 = 0;
            v51 = v23;
          }

          v25 = objc_opt_class();
          v26 = sub_2328(v25, v60, @"e");
          v27 = objc_opt_class();
          v28 = sub_2328(v27, v60, @"D");
          v29 = objc_opt_class();
          v30 = sub_2328(v29, v60, @"Dc");
          v31 = objc_opt_class();
          v32 = sub_2328(v31, v60, @"H");
          v33 = [(NSDictionary *)v49 objectForKey:IMMessageBatchContextKey];
          [v15 handler:v43 bubblePayloadData:v56 forMessageID:v55 toIdentifier:v54 fromIdentifier:v53 fromToken:v22 timeStamp:v26 fromIDSID:v42 needsDeliveryReceipt:v28 deliveryContext:v30 storageContext:v32 batchContext:{v33, v36}];

          if (v24)
          {
          }

          v34 = v51;
          if (v20)
          {

            v34 = v45;
          }

          if (v47)
          {
          }

          v35 = v52;
          if (isKindOfClass)
          {

            v35 = v46;
          }
        }

        v14 = v14 + 1;
      }

      while (v50 != v14);
      v12 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v12);
  }
}

void sub_7B9A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(LocalMessagePushHandlerCommandHandlerRegistry);
  v4 = qword_124380;
  qword_124380 = v3;

  [*(a1 + 32) addLocalStandardCommandHandlersToRegistry:qword_124380];
  if ([qword_124380 isLockedDown])
  {
    [*(a1 + 32) addLocalLockdownCommandHandlersToRegistry:qword_124380];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_7BC8C(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v11 = a2;
  v12 = a3;
  v19 = a4;
  v20 = a5;
  v13 = a6;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [(MessagePushHandler *)v11 copyHandlersForEnumerating];
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v18 handler:v11 remoteFileRequest:v12];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }
}

void sub_7BF20(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 buf)
{
  if (a2 == 1)
  {
    v25 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Exception handling incomming Remote File Request push: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x7BE9CLL);
  }

  _Unwind_Resume(a1);
}

void sub_7BFDC(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v11 = a2;
  v12 = a3;
  v19 = a4;
  v20 = a5;
  v13 = a6;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [(MessagePushHandler *)v11 copyHandlersForEnumerating];
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v18 handler:v11 remoteFileResponse:v12];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }
}

void sub_7C270(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 buf)
{
  if (a2 == 1)
  {
    v25 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Exception handling incomming Remote File response push: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x7C1ECLL);
  }

  _Unwind_Resume(a1);
}

void sub_7C32C(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v11 = a2;
  v12 = a3;
  v19 = a4;
  v20 = a5;
  v13 = a6;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [(MessagePushHandler *)v11 copyHandlersForEnumerating];
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v18 handler:v11 payloadDataRequest:v12];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }
}

void sub_7C5C0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 buf)
{
  if (a2 == 1)
  {
    v25 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Exception handling incoming local payload data request push: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x7C53CLL);
  }

  _Unwind_Resume(a1);
}

void sub_7C67C(id a1, MessagePushHandler *a2, NSDictionary *a3, NSDictionary *a4, id a5, NSString *a6, BOOL a7)
{
  v11 = a2;
  v12 = a3;
  v19 = a4;
  v20 = a5;
  v13 = a6;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [(MessagePushHandler *)v11 copyHandlersForEnumerating];
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v18 handler:v11 payloadDataResponse:v12];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }
}

void sub_7C910(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 buf)
{
  if (a2 == 1)
  {
    v25 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Exception handling incoming local payload data response push: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x7C88CLL);
  }

  _Unwind_Resume(a1);
}

id incrementParticipantVersionForChat(void *a1)
{
  v2 = [a1 groupParticipantVersion];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 138412546;
      v6 = [a1 groupID];
      v7 = 2048;
      v8 = v2;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Incrementing participant version of chat %@ to %ld", &v5, 0x16u);
    }
  }

  return [a1 setGroupParticipantVersion:v2 + 1];
}

void setParticipantVersionForChat(void *a1, uint64_t a2)
{
  v4 = IMOSLoggingEnabled();
  if (a2 < 0)
  {
    if (v4)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Received a negative participant version. This is not right!", &v7, 2u);
      }
    }
  }

  else
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412546;
        v8 = [a1 groupID];
        v9 = 2048;
        v10 = a2;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Setting participant version of chat %@ to %ld", &v7, 0x16u);
      }
    }

    [a1 setGroupParticipantVersion:a2];
  }
}

void sub_7E65C(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Received a negative last group photo participant version. This is not right!", &v9, 2u);
      }
    }
  }

  else
  {
    v4 = [[NSNumber alloc] initWithInteger:a2];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = 138412546;
        v10 = [a1 groupID];
        v11 = 2048;
        v12 = a2;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Setting last group photo-related participant version of chat %@ to %ld", &v9, 0x16u);
      }
    }

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = Mutable;
    if (v4)
    {
      CFDictionarySetValue(Mutable, off_123D00[0], v4);
    }

    [a1 updateProperties:v7];
  }
}

__CFArray *sub_7EAF0(__CFArray *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = objc_alloc_init(NSMutableArray);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(__CFArray *)v3 participants];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (v4)
          {
            v10 = *(*(&v11 + 1) + 8 * i);
            if ([v10 ID])
            {
              CFArrayAppendValue(v4, [v10 ID]);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    if (a2 && v4)
    {
      if ([a2 _stripFZIDPrefix])
      {
        CFArrayAppendValue(v4, [a2 _stripFZIDPrefix]);
      }
    }

    return v4;
  }

  return result;
}

void *sub_80964(uint64_t a1, void *a2)
{
  if ([a2 isEqualToString:*(a1 + 32)])
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

void sub_80C9C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x80BD8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_80F70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = IMOSLoggingEnabled();
  if (a2)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v14 = 138412290;
    v15 = a2;
    v10 = "Successfully found engroup: %@";
  }

  else
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v11 = [*(a1 + 32) engramID];
    v14 = 138412290;
    v15 = v11;
    v10 = "We failed to look up an engroup for engram id: %@";
  }

  _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, v10, &v14, 0xCu);
LABEL_9:
  if (a3)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0;
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), *(a1 + 32), v12, a3, a4);
}

void sub_810AC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x81054);
  }

  _Unwind_Resume(a1);
}

void sub_81A4C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x817A8);
  }

  _Block_object_dispose(&v3, 8);
  _Unwind_Resume(a1);
}

void sub_81AF0(void *a1, void *a2)
{
  if (a2)
  {
    v4 = [NSNumber alloc];
    [a2 doubleValue];
    v6 = v5 / 1000000000.0;
    v7 = v4;
  }

  else
  {
    [+[NSDate date](NSDate timeIntervalSince1970];
    v9 = v8;
    v7 = [NSNumber alloc];
    v6 = v9;
  }

  v10 = [v7 initWithDouble:v6];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = [a1 groupID];
      v16 = 2048;
      v17 = [v10 longLongValue];
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Updating timestamp for chat gid: %@ to %lld", &v14, 0x16u);
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v13 = Mutable;
  if (v10)
  {
    CFDictionarySetValue(Mutable, off_123D08[0], v10);
  }

  [a1 updateProperties:v13];
}

void sub_81C94(uint64_t a1, void *a2, int a3, void *a4)
{
  if (a3)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v15 = 138412546;
        v16 = a2;
        v17 = 2048;
        v18 = a4;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "We added participants to the engroup: %@ with error: %lu", &v15, 0x16u);
      }
    }

    *(*(*(a1 + 88) + 8) + 24) = 0;
    goto LABEL_7;
  }

  if ([a4 code] == &dword_0 + 3)
  {
LABEL_7:
    if (*(a1 + 56))
    {
      if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        v10 = *(a1 + 48);
        (*(*(a1 + 80) + 16))();
        [*(a1 + 56) _forwardP2PGroupCommand:*(a1 + 64) fromPerson:*(a1 + 72) toPerson:objc_msgSend(*(a1 + 72) toGroup:{"_stripFZIDPrefix"), a2}];
      }
    }

    return;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = 134217984;
      v16 = a4;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "We failed to add participants to the engroup with error: %lu", &v15, 0xCu);
    }
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  (*(*(a1 + 80) + 16))();
}

void sub_823CC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x82214);
  }

  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(exc_buf);
}

void sub_82478(uint64_t a1, void *a2, int a3, void *a4)
{
  if (a3)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = a2;
        v22 = 2048;
        v23 = a4;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "We removed participants to our engroup: %@ with error: %lu", &v20, 0x16u);
      }
    }

    *(*(*(a1 + 88) + 8) + 24) = 0;
    goto LABEL_7;
  }

  if ([a4 code] == &dword_0 + 3)
  {
LABEL_7:
    if (*(a1 + 56) && (*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      (*(*(a1 + 80) + 16))();
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 48);
          v13 = [objc_msgSend(*(a1 + 32) "session")];
          v14 = *(a1 + 40);
          v15 = *(a1 + 64);
          v20 = 138413058;
          v21 = v12;
          v22 = 2112;
          v23 = v13;
          v24 = 2112;
          v25 = v14;
          v26 = 2112;
          v27 = v15;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "* Removing engroup participants: %@    groupID: %@   chat: %@   dictionary: %@", &v20, 0x2Au);
        }
      }

      [*(a1 + 56) _forwardP2PGroupCommand:*(a1 + 64) fromPerson:*(a1 + 72) toPerson:objc_msgSend(*(a1 + 72) toGroup:{"_stripFZIDPrefix"), a2}];
    }

    return;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = 134217984;
      v21 = a4;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "we failed to remove participants to the engroup with error: %lu", &v20, 0xCu);
    }
  }

  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  (*(*(a1 + 80) + 16))();
}

void sub_82CDC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x829E0);
  }

  _Unwind_Resume(exception_object);
}

void sub_82D8C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = IMOSLoggingEnabled();
  if (a3)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "We got an engroup back to send the P2P leave command to", buf, 2u);
      }
    }

    v8 = [NSNumber numberWithBool:1];
    if (v8)
    {
      CFDictionarySetValue(*(a1 + 32), off_123D18[0], v8);
    }

    *(*(*(a1 + 80) + 8) + 24) = 0;
    v9 = *(a1 + 72);
    if (v9)
    {
      (*(v9 + 16))(v9, *(a1 + 40), *(a1 + 48), 1, 0);
    }

    [*(a1 + 56) _forwardP2PGroupCommand:*(a1 + 32) fromPerson:*(a1 + 64) toPerson:objc_msgSend(*(a1 + 64) toGroup:{"_stripFZIDPrefix"), a2}];
  }

  else if (v6)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "We failed to look up an engroup, so sending w/ legacy methods", v11, 2u);
    }
  }
}

id sub_83FE0(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) guid];
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Removing %@ from inflight photo requests list.", &v5, 0xCu);
    }
  }

  return [objc_msgSend(*(a1 + 40) "groupPhotoRequestsInFlight")];
}

void sub_84488(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x842F8);
  }

  _Unwind_Resume(a1);
}

id sub_84620(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 objectForKey:@"chat"];
  v6 = [a3 objectForKey:@"fromIdentifier"];
  v7 = [a3 objectForKey:@"toIdentifier"];
  v8 = [a3 objectForKey:@"session"];

  return [v4 _requestGroupPhotoUpdate:v5 fromIdentifier:v6 toIdentifier:v7 session:v8];
}

void sub_84EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_84EC8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0 || (objc_opt_class(), result = objc_opt_isKindOfClass(), (result & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void sub_86AF8(uint64_t a1, uint64_t a2)
{
  IMWeakLinkClass();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    a2 = 0;
  }

  v4 = [[IMBlastDoorTranscriptBackgroundCommand alloc] initWith:a2];
  [*(a1 + 32) receiveIncomingBlastdoorBackgroundCommand:v4 for:*(a1 + 40) sender:*(a1 + 48) senderContext:*(a1 + 56)];
}

void sub_871B8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = IMOSLoggingEnabled();
  if (a3)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v13 = 138412546;
        v14 = v7;
        v15 = 2112;
        v16 = v7;
        v8 = "We successfully removed the participant: %@ from the engroup after %@ left the chat";
        v9 = v6;
        v10 = 22;
LABEL_8:
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, v8, &v13, v10);
      }
    }
  }

  else if (v5)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = 138412290;
      v14 = v12;
      v8 = "We failed to remove the participant from the engroup after: %@ left the chat";
      v9 = v11;
      v10 = 12;
      goto LABEL_8;
    }
  }
}

void sub_874F8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x8749CLL);
  }

  _Unwind_Resume(a1);
}

void sub_8752C(id a1, ENGroup *a2, BOOL a3, NSError *a4)
{
  v5 = a3;
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        v8 = "Successfully added participants from legacy device";
        v9 = v7;
        v10 = 2;
LABEL_8:
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, v8, &v12, v10);
      }
    }
  }

  else if (v6)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = a4;
      v8 = "We did not update the group -- add: %@";
      v9 = v11;
      v10 = 12;
      goto LABEL_8;
    }
  }
}

void sub_87674(id a1, ENGroup *a2, BOOL a3, NSError *a4)
{
  v5 = a3;
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        v8 = "Successfully removed participants from legacy device";
        v9 = v7;
        v10 = 2;
LABEL_8:
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, v8, &v12, v10);
      }
    }
  }

  else if (v6)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = a4;
      v8 = "We did not update the group -- remove: %@";
      v9 = v11;
      v10 = 12;
      goto LABEL_8;
    }
  }
}

uint64_t sub_883DC(uint64_t a1, void *a2)
{
  if (qword_1243A0 != -1)
  {
    sub_BD458();
  }

  v4 = [objc_msgSend(a2 "userInfo")];
  if (v4)
  {
    a2 = v4;
  }

  if (a2)
  {
    if ([objc_msgSend(a2 "domain")])
    {
      v5 = [a2 code] + 1020;
      if (v5 < 0x15 && ((0x1ADA07u >> v5) & 1) != 0)
      {
        v6 = &unk_CE2B0;
        return v6[v5];
      }
    }

    else
    {
      v7 = [a2 domain];
      if ([v7 isEqualToString:FTErrorDomain])
      {
        [a2 code];

        return _FZErrorTypeFromResponseCodeAndError();
      }

      if (qword_124350)
      {
        v9 = [a2 domain];
        if ([v9 isEqualToString:qword_124350])
        {
          v5 = [a2 code] - 2;
          if (v5 < 5)
          {
            v6 = &unk_CE304;
            return v6[v5];
          }
        }
      }
    }
  }

  result = 0;
  if (a1 > 1)
  {
    if (a1 == 28)
    {
      return result;
    }
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    if (a1 == 1)
    {
      return 22;
    }
  }

  return 4;
}

void sub_88550(id a1)
{
  v1 = IMWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  qword_124350 = v2;
}

id *sub_88E38(id *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    [result[4] setMessageDeliveryContext:a2];
    [v2[5] _handleIsMeToMeForMessage:v2[6] withContext:v2[4]];
    [v2[5] _handleDeliveryFailureForMessage:v2[6] withContext:v2[4]];
    [v2[5] _handleUpdateNotificationTimeManagerForMessage:v2[6] withContext:v2[4]];
    [v2[5] _stopTimingMessageSend];
    [v2[5] _notifyDidSendMessage:v2[6] withContext:v2[4]];
    [v2[5] _logCompletedMessage:v2[6] withContext:v2[4]];
    v4 = v2[4];
    v3 = v2[5];

    return [v3 _deactivateServiceIfNeededForContext:v4];
  }

  return result;
}

void sub_89438(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ([*(a1 + 32) isHQTransfer])
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (a4)
    {
      return;
    }

    v15 = +[IMMetricsCollector sharedInstance];
    v7 = IMMetricsCollectorEventSendFullQuality;
    v19 = IMMetricsCollectorEventSendFullQualityButtonPressSuccess;
    v20 = &off_1195D8;
    v17 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [v15 trackEvent:v7 withDictionary:v17];
  }

  else
  {
    v8 = +[IMMetricsCollector sharedInstance];
    v9 = IMMetricsCollectorEventSendFullQuality;
    v21 = IMMetricsCollectorEventSendFullQualityButtonPressSuccess;
    v22 = &off_1195C0;
    v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v8 trackEvent:v9 withDictionary:v10];

    [*(a1 + 32) setIsFailedHQTransfer:0];
    v11 = +[IMDMessageStore sharedInstance];
    v12 = [v11 storeMessage:*(a1 + 32) forceReplace:1 modifyError:1 modifyFlags:0 flagMask:0];

    v13 = +[IMDMessageStore sharedInstance];
    v14 = [*(a1 + 32) guid];
    v15 = [v13 messageWithGUID:v14];

    v16 = +[IMDBroadcastController sharedProvider];
    v17 = [v16 broadcasterForChatListeners];

    v18 = [v15 accountID];
    [v17 account:v18 chat:0 style:0 messageUpdated:v15];
  }
}

id sub_8A248(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, " ** FailSendingMessages is enabled, failing send message", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, " ** FailSendingMessages is enabled, failing send message", v5, 2u);
    }
  }

  [*(a1 + 32) setErrorCode:5];
  if ([*(a1 + 32) scheduleType] == &dword_0 + 2)
  {
    [*(a1 + 40) _handleScheduledMessageSendFailure:*(a1 + 32)];
  }

  return [*(a1 + 40) _didSendMessage:*(a1 + 32) withContext:*(a1 + 48) forceDate:0 fromStorage:0];
}

void sub_8AADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_8AAF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_8AB0C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 scheduleType] == &dword_0 + 2 || objc_msgSend(v5, "scheduleType") == &dword_0 + 2)
  {
    v6 = [*(a1 + 32) scheduledMessageCoordinator];
    [v6 handleMessageDidReplace:v7 newMessage:v5];
  }
}

void sub_8ABA0(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 40);
  v6 = v4;
  if ([*(a1 + 32) _handleDeviceRegistrationForMessage:? withContext:?] && (objc_msgSend(*(a1 + 32), "_failSendingMessageIfNeeded:withContext:", v6, *(a1 + 40)) & 1) == 0 && objc_msgSend(*(a1 + 32), "_handleTypingIndicatorMessage:withContext:", v6, *(a1 + 40)))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }
}

void sub_8B048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8B060(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, char a9, unsigned int a10)
{
  v39 = a2;
  v42 = a3;
  v17 = a4;
  v40 = a5;
  v41 = a6;
  v18 = a7;
  v19 = a8;
  if (a9)
  {
    v20 = [*(a1 + 40) groupController];
    v21 = [*(a1 + 32) chat];
    v22 = [*(a1 + 32) fromURI];
    v23 = [v20 newGroupMessagePayloadForChat:v21 fromID:v22];

    if (v19 && IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [*(a1 + 48) guid];
        *buf = 138412546;
        v46 = v25;
        v47 = 2112;
        v48 = v19;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "We will be sending message with guid: %@ to engram group: %@", buf, 0x16u);
      }
    }

    v26 = [*(a1 + 32) chat];
    v27 = [v26 style] != 45;

    v28 = [[GroupMessageContext alloc] initWithGroupPayload:v23 additionalPayload:v18 isGroupChat:v27];
    v29 = *(*(a1 + 56) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v46 = v42;
        v47 = 1024;
        LODWORD(v48) = a10;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "Group message controler failed to prepare chat: %@  error: %d", buf, 0x12u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v38 = [v17 body];
        v33 = [v38 string];
        v34 = MarcoLoggingStringForMessageData();
        v35 = [v17 guid];
        v36 = [*(a1 + 32) participantURIs];
        *buf = 138413058;
        v46 = v34;
        v47 = 2112;
        v48 = v35;
        v49 = 2112;
        v50 = v36;
        v51 = 1024;
        v52 = a10;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "Failed sending message: %@  withGUID: %@  to people: %@   error: %d", buf, 0x26u);
      }
    }

    [v17 setErrorCode:a10];
    if ([v17 scheduleType] == &dword_0 + 2)
    {
      [*(a1 + 40) _handleScheduledMessageSendFailure:v17];
    }

    [*(a1 + 40) _didSendMessage:v17 withContext:*(a1 + 32) forceDate:0 fromStorage:0];
    v43 = IMMetricsCollectorError;
    v37 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", sub_904FC([v17 errorCode]));
    v44 = v37;
    v23 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];

    v30 = +[IMMetricsCollector sharedInstance];
    [v30 trackEvent:IMMetricsCollectorEventOutgoingMessage withDictionary:v23];
  }
}

void sub_8B968(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [*(a1 + 40) guid];
  v3 = [*(a1 + 48) guid];
  v4 = [*(a1 + 48) chatIdentifier];
  v5 = [*(a1 + 48) style];
  v6 = [*(a1 + 48) accountID];
  [v2 sendGroupPhotoUpdate:v7 toChatID:v3 identifier:v4 style:v5 account:v6 isPhotoRefresh:1];
}

void sub_8BA2C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NSDate date];
  [v2 setRefreshDate:v3];

  v6 = +[IMDAttachmentStore sharedInstance];
  v4 = *(a1 + 32);
  v5 = [v4 messageGUID];
  [v6 storeAttachment:v4 associateWithMessageWithGUID:v5];
}

void sub_8C040(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [[NSURL alloc] initFileURLWithPath:*(a1 + 40)];
  v3 = [*(a1 + 48) chatIdentifier];
  v4 = [*(a1 + 48) style];
  v5 = [*(a1 + 56) objectForKeyedSubscript:IMTranscriptBackgroundTransferIDKey];
  [v2 setTranscriptBackground:v6 andSendToChatIdentifier:v3 chatStyle:v4 transferID:v5 isRefresh:1];
}

void sub_8C0FC(uint64_t a1)
{
  v3 = [*(a1 + 32) mutableCopy];
  v2 = +[NSDate date];
  [v3 setObject:v2 forKeyedSubscript:IMTranscriptBackgroundRefreshDateKey];

  [*(a1 + 40) updateTranscriptBackgroundProperties:v3];
}

void sub_8C378(uint64_t a1)
{
  v16 = [*(a1 + 32) serviceSession];
  v12 = [v16 deliveryController];
  v13 = *(a1 + 40);
  v15 = [*(a1 + 32) groupMessageContext];
  v11 = [v15 additionalPayload];
  v14 = [*(a1 + 32) groupMessageContext];
  v2 = [v14 groupPayload];
  v3 = [*(a1 + 32) participantURIs];
  v4 = [*(a1 + 32) originalParticipantURIs];
  v5 = [*(a1 + 32) fromURI];
  v6 = [*(a1 + 32) idsAccount];
  v7 = [*(a1 + 32) chat];
  v8 = [v7 chatIdentifier];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_8C5E8;
  v21[3] = &unk_114600;
  v21[4] = *(a1 + 48);
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_8C5FC;
  v17[3] = &unk_114628;
  v18 = *(a1 + 32);
  v10 = *(a1 + 40);
  v9 = v10.i64[0];
  v19 = vextq_s8(v10, v10, 8uLL);
  v20 = *(a1 + 56);
  [v12 sendMessage:v13 context:v11 groupContext:v2 toGroup:0 toParticipants:v3 originallyToParticipants:v4 fromID:v5 fromAccount:v6 chatIdentifier:v8 originalPayload:0 replyToMessageGUID:0 fakeSavedReceiptBlock:v21 completionBlock:v17];
}

void sub_8C5FC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v12 = a3;
  if ([v12 count] == &dword_0 + 1)
  {
    v13 = [*(a1 + 32) fromURI];
    v14 = [v12 __imFirstObject];
    v15 = [v13 isEqualToString:v14];
  }

  else
  {
    v15 = 0;
  }

  [*(a1 + 40) _updateOffGridStatusIfNeededWithMessage:*(a1 + 48) context:*(a1 + 32)];
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = @"NO";
      if (a6)
      {
        v17 = @"YES";
      }

      v19 = 138412290;
      v20 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "isBackwardsCompatibleMessage %@", &v19, 0xCu);
    }
  }

  v18 = [[MessageDeliveryContext alloc] initWithDisplayIDs:v12 didSucceed:a4 error:a5 isFromMeToMe:v15 shouldDeactivate:0 isBackwardsCompatibleMessage:a6];
  (*(*(a1 + 56) + 16))();
}

void sub_8CB5C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x8CAE8);
  }

  _Unwind_Resume(a1);
}

void sub_8CB90(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8CC70;
  block[3] = &unk_114678;
  v13 = a2;
  v3 = (a1 + 40);
  v4 = *(a1 + 32);
  v14 = *(a1 + 64);
  *&v5 = v4;
  *(&v5 + 1) = *v3;
  v9 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_8CC70(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      if (*(a1 + 64))
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Got off grid mode %@ for %@", &v7, 0x16u);
    }
  }

  if (*(a1 + 64))
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a1 + 65);
  }

  return [*(a1 + 40) didReceiveOffGridStatus:v5 & 1 forID:*(a1 + 32) messageGUID:*(a1 + 48) account:*(a1 + 56)];
}

void sub_8D748(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x8D690);
  }

  _Unwind_Resume(a1);
}

void sub_8E2F8(uint64_t a1)
{
  v20 = [*(a1 + 32) copy];
  v2 = [*(a1 + 40) chat];
  v3 = [v2 chatIdentifier];
  [v20 setSender:v3];

  v4 = +[NSString stringGUID];
  [v20 setGuid:v4];

  [v20 setFlags:1];
  if ((*(a1 + 48) & 1) == 0)
  {
    [v20 setFlags:{objc_msgSend(v20, "flags") | 0x2000}];
  }

  v5 = [*(a1 + 40) serviceSession];
  v6 = [*(a1 + 40) chat];
  v7 = [v6 chatIdentifier];
  v8 = [*(a1 + 40) chat];
  v9 = [v8 style];
  v10 = [*(a1 + 40) imdAccount];
  [v5 didReceiveMessage:v20 forChat:v7 style:v9 account:v10 fromIDSID:0];

  v11 = [*(a1 + 40) chat];
  LODWORD(v6) = [v11 style];

  if (v6 == 45)
  {
    v12 = [*(a1 + 40) serviceSession];
    v13 = [*(a1 + 32) guid];
    v14 = +[NSDate date];
    v15 = [*(a1 + 40) imdAccount];
    [v12 didReceiveMessageDeliveryReceiptForMessageID:v13 date:v14 account:v15];
  }

  v16 = [*(a1 + 40) chat];
  if ([v16 style] == 45 && *(a1 + 49) == 1)
  {
    v17 = *(a1 + 48);

    if (v17 != 1)
    {
      goto LABEL_10;
    }

    v16 = [*(a1 + 40) serviceSession];
    v18 = [*(a1 + 32) guid];
    v19 = [*(a1 + 40) imdAccount];
    [v16 didSendMessageReadReceiptForMessageID:v18 account:v19];
  }

LABEL_10:
}

void sub_8ECB8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x8E9C4);
  }

  _Unwind_Resume(a1);
}

id sub_8ED5C(id a1, IMDHandle *a2)
{
  v2 = [(IMDHandle *)a2 ID];
  v3 = [TUHandle normalizedHandleWithDestinationID:v2];

  return v3;
}

id sub_8EDBC(id a1, TUHandle *a2)
{
  v2 = a2;
  v3 = [[TUConversationMember alloc] initWithHandle:v2];

  return v3;
}

id AttachmentRefreshUtilGetMMCSRefreshHeaders()
{
  if (qword_1243B0 != -1)
  {
    sub_BD46C();
  }

  if (!off_1243A8)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "AttachmentRefreshUtilGetMMCSRefreshHeaders could not load MMCS function", buf, 2u);
      }
    }

    return 0;
  }

  v0 = objc_alloc_init(NSMutableString);
  v1 = off_1243A8;
  if (qword_1243C0[0] != -1)
  {
    sub_BD480();
  }

  v2 = v1(qword_1243B8);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [v0 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%@\n", *(*(&v13 + 1) + 8 * i), objc_msgSend(v2, "objectForKey:", *(*(&v13 + 1) + 8 * i)))}];
      }

      v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v3);
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v2;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Got mmcs header info dict%@", buf, 0xCu);
    }
  }

  v7 = [v0 length] == 0;
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "AttachmentRefreshUtilGetMMCSRefreshHeaders could not get mmcs headers", buf, 2u);
      }
    }

    return 0;
  }

  if (v8)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Got mmcs header %@", buf, 0xCu);
    }
  }

  return v0;
}

id AttachmentRefreshUtilConfigureStickerToken(void *a1, void *a2)
{
  if ([a2 objectForKey:@"mmcs-url"])
  {
    v4 = +[NSURL URLWithString:](NSURL, "URLWithString:", [a2 objectForKey:@"mmcs-url"]);
    v5 = [NSString stringWithFormat:@"%@://%@", [(NSURL *)v4 scheme], [(NSURL *)v4 host]];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "AttachmentRefreshUtilConfigureStickerToken dictionary has not auth url", buf, 2u);
      }
    }

    v5 = 0;
  }

  [a1 setAuthURL:v5];
  [a1 setOwner:{objc_msgSend(a2, "objectForKey:", @"mmcs-owner"}];
  [a1 setFileLength:{objc_msgSend(a2, "objectForKey:", @"file-size"}];
  [a1 setSignature:{objc_msgSend(objc_msgSend(a2, "objectForKey:", @"mmcs-signature-hex", "_FTDataFromHexString")}];
  return [a1 setRequestContentHeaders:AttachmentRefreshUtilGetMMCSRefreshHeaders()];
}

id PeopleSetByAddingMyID(void *a1, void *a2)
{
  if (![a1 length] || !objc_msgSend(a2, "count"))
  {
    return a2;
  }

  if ([a2 count])
  {
    v4 = [[NSMutableSet alloc] initWithArray:a2];
  }

  else
  {
    v4 = 0;
  }

  [v4 addObject:a1];
  v6 = [v4 allObjects];

  return v6;
}

id URIsFromHandles(void *a1)
{
  v1 = [a1 arrayByApplyingSelector:"ID"];

  return [v1 _URIsFromIDs];
}

id _LastAddressedURIForChatLogMetricIfNeeded(void *a1, id a2, void *a3, void *a4, int a5)
{
  if ([a3 isReplicating])
  {
    v8 = [objc_msgSend(a3 "mainSession")];
    v9 = [objc_msgSend(IMChatCanonicalIDSIDsForAddress() "_stripFZIDPrefix")];
    v10 = [a3 idsAccountForFromURI:v9 toURI:{objc_msgSend(a1, "chatIdentifier")}];
    if ([v10 _validateIDSAccount])
    {
      if (a4)
      {
        *a4 = v10;
      }

      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          v75 = v9;
          v76 = 2112;
          v77 = v8;
          v78 = 2112;
          v79 = [v10 uniqueID];
          v80 = 2112;
          v81 = [v10 im_registeredURIs];
          v12 = "Using caller URI %@ to replicate caller ID %@ idsAccount %@, idsAccount im_registeredURIs: %@";
          v13 = v11;
          v14 = 42;
LABEL_43:
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
          return v9;
        }
      }

      return v9;
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v75 = v8;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Did not find valid IDS Account for replication caller ID %@", buf, 0xCu);
      }
    }

    return 0;
  }

  v15 = [a3 messageServiceTypeForURI:{objc_msgSend(a1, "chatIdentifier")}];
  if (!a2)
  {
    a2 = [a1 lastAddressedLocalHandle];
  }

  v16 = [objc_opt_class() idsAccounts];
  if (![a2 length])
  {
    v9 = [a3 callerURIForMessageServiceType:v15];
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_35;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_35;
    }

    *buf = 138412290;
    v75 = v9;
    v23 = "lastAddressedLocalHandle was nil, falling back to [session callerURI] %@";
LABEL_33:
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, v23, buf, 0xCu);
    goto LABEL_35;
  }

  if (![a2 isEqualToIgnoringCase:kFZServiceDefaultsSentinelAlias])
  {
    v9 = [a2 _bestGuessURI];
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_35;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_35;
    }

    *buf = 138412290;
    v75 = v9;
    v23 = "lastAddressedLocalHandle is %@";
    goto LABEL_33;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v17)
  {
    v18 = *v67;
LABEL_14:
    v19 = 0;
    while (1)
    {
      if (*v67 != v18)
      {
        objc_enumerationMutation(v16);
      }

      v20 = *(*(&v66 + 1) + 8 * v19);
      if (![v20 accountType])
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [v16 countByEnumeratingWithState:&v66 objects:v73 count:16];
        v9 = 0;
        if (v17)
        {
          goto LABEL_14;
        }

        goto LABEL_35;
      }
    }

    v9 = [a3 callerURIForIDSAccount:v20];
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v75 = v9;
        v23 = "lastAddressedLocalHandle was sentinel alias, falling back to [session callerURI] %@";
        goto LABEL_33;
      }
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_35:
  v24 = [a3 idsAccountForFromURI:v9 toURI:{objc_msgSend(a1, "chatIdentifier")}];
  [v9 _stripFZIDPrefix];
  if (IMStringIsPhoneNumber())
  {
    [v9 _stripFZIDPrefix];
    v9 = [IMCanonicalizeFormattedString() _URIFromCanonicalizedPhoneNumber];
  }

  if (![v24 _validateIDSAccount])
  {
    v9 = [a3 callerURIForMessageServiceType:v15];
    v28 = [a3 idsAccountForFromURI:v9 toURI:{objc_msgSend(a1, "chatIdentifier")}];
    if ([v28 _validateIDSAccount])
    {
      if (a4)
      {
        *a4 = v28;
      }

      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v75 = v9;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "Ultimately decided the caller id was after falling back to session URI %@", buf, 0xCu);
        }
      }

      if (a5)
      {
        v30 = +[IMMetricsCollector sharedInstance];
        [(IMMetricsCollector *)v30 trackEvent:IMMetricsCollectorEventCallerIDSwitched];
      }

      return v9;
    }

    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v75 = a2;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "First try was no good based on lastAddressedHandle %@", buf, 0xCu);
      }
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v32 = [v16 countByEnumeratingWithState:&v62 objects:v72 count:16];
    if (v32)
    {
      v33 = *v63;
LABEL_57:
      v34 = 0;
      while (1)
      {
        if (*v63 != v33)
        {
          objc_enumerationMutation(v16);
        }

        v35 = *(*(&v62 + 1) + 8 * v34);
        if (v15 == [v35 serviceType])
        {
          v9 = [a3 callerURIForIDSAccount:v35];
          if ([v35 _validateIDSAccount])
          {
            break;
          }
        }

        if (v32 == ++v34)
        {
          v32 = [v16 countByEnumeratingWithState:&v62 objects:v72 count:16];
          if (v32)
          {
            goto LABEL_57;
          }

          goto LABEL_64;
        }
      }

      if (a4)
      {
        *a4 = v35;
      }

      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v75 = v9;
          _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "Ultimately decided the caller id was %@", buf, 0xCu);
        }
      }

      if (a5)
      {
        v43 = +[IMMetricsCollector sharedInstance];
        [(IMMetricsCollector *)v43 trackEvent:IMMetricsCollectorEventCallerIDSwitched];
      }

      if (v9)
      {
        return v9;
      }

      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "******** Did not find a callerURI ********. Logging accounts", buf, 2u);
        }
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v45 = [a3 accounts];
      v46 = [v45 countByEnumeratingWithState:&v58 objects:v71 count:16];
      if (v46)
      {
        v47 = *v59;
        do
        {
          for (i = 0; i != v46; i = i + 1)
          {
            if (*v59 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v58 + 1) + 8 * i);
            if (IMOSLoggingEnabled())
            {
              v50 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v75 = v49;
                _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
              }
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v58 objects:v71 count:16];
          v9 = 0;
        }

        while (v46);
        return v9;
      }
    }

    else
    {
LABEL_64:
      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "******** Did not find a callerURI ********. Logging accounts", buf, 2u);
        }
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v37 = [v16 countByEnumeratingWithState:&v54 objects:v70 count:16];
      if (v37)
      {
        v38 = *v55;
        do
        {
          for (j = 0; j != v37; j = j + 1)
          {
            if (*v55 != v38)
            {
              objc_enumerationMutation(v16);
            }

            v40 = *(*(&v54 + 1) + 8 * j);
            if (IMOSLoggingEnabled())
            {
              v41 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v75 = v40;
                _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
              }
            }
          }

          v37 = [v16 countByEnumeratingWithState:&v54 objects:v70 count:16];
        }

        while (v37);
      }
    }

    return 0;
  }

  if (a4)
  {
    *a4 = v24;
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v24 uniqueID];
      v27 = [v24 im_registeredURIs];
      *buf = 138412802;
      v75 = v9;
      v76 = 2112;
      v77 = v26;
      v78 = 2112;
      v79 = v27;
      v12 = "Ultimately decided the caller id was %@ using idsAccount %@, idsAccount im_registeredURIs: %@";
      v13 = v25;
      v14 = 32;
      goto LABEL_43;
    }
  }

  return v9;
}

void *IMDAccountForIDSAccount(id a1, void *a2, void *a3)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 idsAccount] == a1)
        {
          IMDInconsistencyResolved();
          return v10;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if ([a3 isActive])
  {
    IMDNoticedInconsistency();
  }

  return 0;
}

void sub_91DBC(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = a2;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      v24[0] = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "    Delivered FTMessage: %@", &v23, 0xCu);
    }
  }

  v12 = _FZErrorTypeFromResponseCodeAndError();
  v13 = v12;
  if (a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12 == 0;
  }

  v15 = v14;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v23 = 67109376;
      LODWORD(v24[0]) = a4;
      WORD2(v24[0]) = 1024;
      *(v24 + 6) = v13;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "    Result code: %d, errorType = %d", &v23, 0xEu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      v24[0] = a5;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "    Result dictionary: %@", &v23, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      v24[0] = a3;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "    Error: %@", &v23, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = @"NO";
      if (v15)
      {
        v20 = @"YES";
      }

      v23 = 138412290;
      v24[0] = v20;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "  Success: %@", &v23, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Sending callback for FTMessage send", &v23, 2u);
    }
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    (*(v22 + 16))(v22, a2, v15, v13);
  }
}

void sub_92518(uint64_t a1, void *a2, char a3)
{
  v6 = IMOSLoggingEnabled();
  if (a3)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        Weak = objc_loadWeak((a1 + 48));
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Got a successful reply for message %@", buf, 0xCu);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v6)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        Weak = a2;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "AttachmentRefreshDeliveryController failed to refresh sticker using message %@", buf, 0xCu);
      }
    }

    v9 = *(a1 + 56);
    v11 = *(a1 + 32);
    objc_copyWeak(v12, (a1 + 48));
    v10 = *(a1 + 40);
    v12[1] = *(a1 + 56);
    im_dispatch_after();
    objc_destroyWeak(v12);
  }
}

id sub_92734(uint64_t a1)
{
  v2 = *(a1 + 32);
  Weak = objc_loadWeak((a1 + 48));
  v4 = *(a1 + 40);
  v5 = *(a1 + 56) + 1;

  return [v2 sendFTMessage:Weak attempts:v5 withCompletionBlock:v4];
}

id sub_927A4(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, "initWithServiceSession:", a1);

  return v4;
}

void sub_92848()
{
  v1 = [v0 serviceSession];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [objc_opt_self() sharedAccountController];
  if (!v3)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v4 = v3;
  v5 = [v2 service];
  v6 = [v4 accountsForService:v5];

  if (!v6)
  {
LABEL_33:
    __break(1u);
    return;
  }

  sub_7610(0, &qword_123D30, IMDAccount_ptr);
  v7 = sub_BD954();

  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v9 = 0;
  v10 = v7 >> 62;
  while (1)
  {
    v11 = v10 ? sub_BDCC4() : *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (v9 == v11)
    {
      break;
    }

    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = sub_BDC34();
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_31;
        }

        v12 = *(v7 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_30;
      }

      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        break;
      }

      ++v9;
      if (v14 == v11)
      {
        goto LABEL_27;
      }
    }

    v16 = v15;
    v17 = [v15 idsAccount];
    if (v17)
    {
      v23 = v8;
      v18 = v17;
      v19 = [v17 canSend];

      if (v19)
      {
        v20 = v13;
        v21 = [v16 aliases];
        v22 = sub_BD954();

        sub_93AB8(v22);
      }

      else
      {
      }

      v9 = v14;
      v8 = v23;
      v10 = v7 >> 62;
    }

    else
    {

      v9 = v14;
      v10 = v7 >> 62;
    }
  }

LABEL_27:
  swift_bridgeObjectRelease_n();
}

uint64_t sub_92ADC()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 areDualSIMDevicesExceptionsDisabled];

  return v1 ^ 1;
}

void sub_92B38(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4, NSString a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, void), uint64_t a12)
{
  sub_7610(0, &qword_123D38, NSUserDefaults_ptr);
  if (static NSUserDefaults.forceUnreachable.getter())
  {
    v16 = *(a1 + 16);
    if (v16)
    {
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_940E0(0, v16, 0);
      v17 = _swiftEmptyArrayStorage;
      v18 = (a1 + 40);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;
        v21 = objc_allocWithZone(IDSIDInfoResult);

        v22 = sub_BD884();
        sub_7610(0, &qword_123D40, IDSEndpoint_ptr);
        isa = sub_BD944().super.isa;
        v24 = [v21 initWithURI:v22 status:2 endpoints:isa ktData:0 gameCenterData:0];

        aBlock[0] = v17;
        v26 = v17[2];
        v25 = v17[3];
        if (v26 >= v25 >> 1)
        {
          sub_940E0((v25 > 1), v26 + 1, 1);
          v17 = aBlock[0];
        }

        v17[2] = v26 + 1;
        v27 = &v17[3 * v26];
        v27[4] = v19;
        v27[5] = v20;
        v27[6] = v24;
        v18 += 2;
        --v16;
      }

      while (v16);
    }

    else if (!_swiftEmptyArrayStorage[2])
    {
      v32 = &_swiftEmptyDictionarySingleton;
      goto LABEL_15;
    }

    sub_94950(&qword_123D48, &qword_CE330);
    v32 = sub_BDCF4();
LABEL_15:
    aBlock[0] = v32;

    sub_93CB8(v33, 1, aBlock);

    v34 = sub_92EEC(aBlock[0]);

    a11(v34, 0);

    return;
  }

  sub_931BC(a1);
  v28.super.isa = sub_BD944().super.isa;

  if (a3)
  {
    a3 = sub_BD884();
  }

  if (a5)
  {
    a5 = sub_BD884();
  }

  v29 = objc_opt_self();
  v30 = sub_BD884();
  aBlock[4] = a11;
  aBlock[5] = a12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_932BC;
  aBlock[3] = &unk_114A78;
  v31 = _Block_copy(aBlock);

  [v29 idInfoForDestinations:v28.super.isa service:a3 fromID:a5 infoTypes:a6 options:a7 listenerID:v30 queue:a10 completionBlock:v31];
  _Block_release(v31);
}

uint64_t sub_92EEC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_94950(&qword_123E58, &unk_CE860);
    v2 = sub_BDCF4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_7610(0, &qword_123E60, IDSIDInfoResult_ptr);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_94D98(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_94D98(v31, v32);
    result = sub_BDBA4(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_94D98(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t *sub_931BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = &_swiftEmptyArrayStorage;
    sub_940C0(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_940C0((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_94D98(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_932BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_BD844();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_933A0()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 ctSubscriptionInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_BD884();
  v4 = [v2 __im_subscriptionContextForPhoneNumber:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = [v0 sharedInstance];
  v6 = [v5 copyIsoCountryCodeForSubscriptionContext:v4];

  v7 = sub_BD8B4();
  return v7;
}

uint64_t sub_934B4()
{
  sub_BD9B4();
  *(v0 + 16) = sub_BD9A4();
  v2 = sub_BD994();

  return _swift_task_switch(sub_93548, v2, v1);
}

uint64_t sub_93548()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(0);
}

id sub_9360C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageServiceReachabilityDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_936C8(uint64_t a1)
{
  v4 = *(&stru_68.reloff + (swift_isaMask & *v1));
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_937F8;

  return v8(a1);
}

uint64_t sub_937F8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_93970()
{
  v1 = sub_BD884();
  v2 = [v0 phoneNumberOnSubscriptionWithSIMID:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_BD8B4();

  return v3;
}

uint64_t sub_93A6C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [v3 *a3];
  v5 = sub_BD954();

  return v5;
}

uint64_t sub_93AB8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_93BAC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_93BAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_94950(&qword_123E90, &qword_CE9B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_93CB8(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_94048(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_9457C(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_94048(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_BDD64();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_94410();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_94950(&qword_123E68, &qword_CE400);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_BDC24(30);
    v41._object = 0x80000000000DC8B0;
    v41._countAndFlagsBits = 0xD00000000000001BLL;
    sub_BD8F4(v41);
    sub_BDCA4();
    v42._countAndFlagsBits = 39;
    v42._object = 0xE100000000000000;
    sub_BD8F4(v42);
    result = sub_BDCB4();
    __break(1u);
    return result;
  }

  v22[2] = v25;
  if (v40 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_94048(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_9457C(v33, 1);
        v34 = *a3;
        v29 = sub_94048(v7, v6);
        if ((v17 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v7;
      v37[1] = v6;
      *(v36[7] + 8 * v29) = v10;
      v38 = v36[2];
      v15 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v36[2] = v39;
      v5 += 3;
      if (v40 == v26)
      {
      }
    }

    goto LABEL_25;
  }
}

unint64_t sub_94048(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_BDDC4();
  sub_BD8E4();
  v6 = sub_BDDE4();

  return sub_94358(a1, a2, v6);
}

char *sub_940C0(char *a1, int64_t a2, char a3)
{
  result = sub_94100(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_940E0(void *a1, int64_t a2, char a3)
{
  result = sub_94210(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_94100(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_94950(&qword_123E80, &qword_CEEA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_94210(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_94950(&qword_123E70, &qword_CE408);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_94950(&qword_123E78, &unk_CE410);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_94358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_BDD24())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_94410()
{
  v1 = v0;
  sub_94950(&qword_123D48, &qword_CE330);
  v2 = *v0;
  v3 = sub_BDCD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_9457C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_94950(&qword_123D48, &qword_CE330);
  v39 = a2;
  result = sub_BDCE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_BDDC4();
      sub_BD8E4();
      result = sub_BDDE4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_94938(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_94950(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_94998()
{
  sub_7610(0, &qword_123E40, &off_110DB8);
  v0 = [swift_getObjCClassFromMetadata() idsAccounts];
  if (v0)
  {
    v1 = v0;
    sub_7610(0, &qword_123E48, IDSAccount_ptr);
    sub_94D30();
    v2 = sub_BDA14();

    if ((v2 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_BDB64();
      sub_BDA44();
      v2 = v26;
      v3 = v27;
      v4 = v28;
      v5 = v29;
      v6 = v30;
    }

    else
    {
      v7 = -1 << *(v2 + 32);
      v3 = v2 + 56;
      v4 = ~v7;
      v8 = -v7;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      else
      {
        v9 = -1;
      }

      v6 = v9 & *(v2 + 56);

      v5 = 0;
    }

    v23 = v4;
    v10 = (v4 + 64) >> 6;
    v24 = v2;
    while (1)
    {
      while (1)
      {
        if (v2 < 0)
        {
          if (!sub_BDB94())
          {
            goto LABEL_31;
          }

          swift_dynamicCast();
          v13 = v25;
          if (!v25)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v11 = v5;
          v12 = v6;
          if (!v6)
          {
            while (1)
            {
              v5 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                break;
              }

              if (v5 >= v10)
              {
                goto LABEL_31;
              }

              v12 = *(v3 + 8 * v5);
              ++v11;
              if (v12)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_34;
          }

LABEL_17:
          v6 = (v12 - 1) & v12;
          v13 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));
          if (!v13)
          {
            goto LABEL_31;
          }
        }

        if ([v13 canSend])
        {
          break;
        }

LABEL_11:
      }

      v14 = [v13 serviceName];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = sub_BD8B4();
      v18 = v17;

      v19 = sub_BD8B4();
      if (!v18)
      {
        goto LABEL_10;
      }

      if (v16 == v19 && v18 == v20)
      {

LABEL_31:
        sub_75A8();

        return;
      }

      v22 = sub_BDD24();

      v2 = v24;
      if (v22)
      {
        goto LABEL_31;
      }
    }

    sub_BD8B4();
LABEL_10:

    v2 = v24;
    goto LABEL_11;
  }

LABEL_34:
  __break(1u);
}

unint64_t sub_94CB4(uint64_t a1)
{
  result = sub_94CDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_94CDC()
{
  result = qword_123D50;
  if (!qword_123D50)
  {
    type metadata accessor for MessageServiceReachabilityDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123D50);
  }

  return result;
}

unint64_t sub_94D30()
{
  result = qword_123E50;
  if (!qword_123E50)
  {
    sub_7610(255, &qword_123E48, IDSAccount_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123E50);
  }

  return result;
}

_OWORD *sub_94D98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_94DA8(uint64_t a1)
{
  v2 = sub_94950(&qword_123E88, qword_CE420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_94E10()
{
  v0 = sub_BD7B4();
  sub_97E5C(v0, qword_1244D8);
  sub_96A28(v0, qword_1244D8);
  sub_BD784();
  return sub_BD7A4();
}

void sub_94E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_1244D0 != -1)
    {
      swift_once();
    }

    v6 = sub_BD7B4();
    sub_96A28(v6, qword_1244D8);

    v7 = v3;
    v8 = sub_BD794();
    v9 = sub_BDA84();

    oslog = v7;
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v137 = v12;
      *v10 = 136315650;
      if (!a1)
      {
        sub_97B60(_swiftEmptyArrayStorage);
      }

      v13 = sub_BD854();
      v15 = v14;

      v16 = sub_96A60(v13, v15, &v137);

      *(v10 + 4) = v16;
      *(v10 + 12) = 2048;
      *(v10 + 14) = a2;
      *(v10 + 22) = 2112;
      *(v10 + 24) = v7;
      *v11 = v7;
      v17 = v7;
      _os_log_impl(&dword_0, v8, v9, "Setting transferInfo: %s and background version: %llu for chat: %@.", v10, 0x20u);
      sub_75B0(v11, &qword_123E98, &unk_CEE80);

      sub_97C9C(v12);
    }

    if (a1)
    {
      *&v139[0] = sub_BD8B4();
      *(&v139[0] + 1) = v18;
      sub_BDBC4();
      if (*(a1 + 16) && (v19 = sub_97008(&v137), (v20 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v19, v139);
        sub_97CE8(&v137);
        v21 = swift_dynamicCast();
        v22 = v134;
        if (!v21)
        {
          v22 = 0;
        }

        v124 = v22;
        if (v21)
        {
          v23 = v136;
        }

        else
        {
          v23 = 0;
        }

        v128 = v23;
      }

      else
      {
        sub_97CE8(&v137);
        v124 = 0;
        v128 = 0;
      }

      *&v139[0] = sub_BD8B4();
      *(&v139[0] + 1) = v30;
      sub_BDBC4();
      if (*(a1 + 16) && (v31 = sub_97008(&v137), (v32 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v31, v139);
        sub_97CE8(&v137);
        sub_97AB0();
        if (swift_dynamicCast())
        {
          v33 = v134;
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {
        sub_97CE8(&v137);
        v33 = 0;
      }

      *&v139[0] = sub_BD8B4();
      *(&v139[0] + 1) = v34;
      sub_BDBC4();
      if (*(a1 + 16) && (v35 = sub_97008(&v137), (v36 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v35, v139);
        sub_97CE8(&v137);
        v37 = swift_dynamicCast();
        v38 = v134;
        if (!v37)
        {
          v38 = 0;
        }

        v126 = v38;
        if (v37)
        {
          v39 = v136;
        }

        else
        {
          v39 = 0;
        }

        v130 = v39;
      }

      else
      {
        sub_97CE8(&v137);
        v126 = 0;
        v130 = 0;
      }

      *&v139[0] = sub_BD8B4();
      *(&v139[0] + 1) = v40;
      sub_BDBC4();
      if (*(a1 + 16) && (v41 = sub_97008(&v137), (v42 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v41, v139);
        sub_97CE8(&v137);
        v43 = swift_dynamicCast();
        v44 = v134;
        if (!v43)
        {
          v44 = 0;
        }

        v125 = v44;
        if (v43)
        {
          v45 = v136;
        }

        else
        {
          v45 = 0;
        }

        v129 = v45;
      }

      else
      {
        sub_97CE8(&v137);
        v125 = 0;
        v129 = 0;
      }

      *&v139[0] = sub_BD8B4();
      *(&v139[0] + 1) = v46;
      sub_BDBC4();
      if (*(a1 + 16) && (v47 = sub_97008(&v137), (v48 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v47, v139);
        sub_97CE8(&v137);
        v49 = swift_dynamicCast();
        v50 = v134;
        if (!v49)
        {
          v50 = 0;
        }

        v122 = v50;
        if (v49)
        {
          v51 = v136;
        }

        else
        {
          v51 = 0;
        }
      }

      else
      {
        sub_97CE8(&v137);
        v122 = 0;
        v51 = 0;
      }

      *&v139[0] = sub_BD8B4();
      *(&v139[0] + 1) = v52;
      sub_BDBC4();
      if (*(a1 + 16) && (v53 = sub_97008(&v137), (v54 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v53, v139);
        sub_97CE8(&v137);
        v55 = swift_dynamicCast();
        v56 = v134;
        if (!v55)
        {
          v56 = 0;
        }

        v123 = v56;
        if (v55)
        {
          v57 = v136;
        }

        else
        {
          v57 = 0;
        }

        v127 = v57;
      }

      else
      {
        sub_97CE8(&v137);
        v123 = 0;
        v127 = 0;
      }

      *&v139[0] = sub_BD8B4();
      *(&v139[0] + 1) = v58;
      sub_BDBC4();
      if (*(a1 + 16) && (v59 = sub_97008(&v137), (v60 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v59, v139);
        sub_97CE8(&v137);
        sub_97AB0();
        if (swift_dynamicCast())
        {
          v61 = v134;
        }

        else
        {
          v61 = 0;
        }
      }

      else
      {
        sub_97CE8(&v137);
        v61 = 0;
      }

      *&v139[0] = sub_BD8B4();
      *(&v139[0] + 1) = v62;
      sub_BDBC4();
      if (*(a1 + 16) && (v63 = sub_97008(&v137), (v64 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v63, v139);
        sub_97CE8(&v137);
        sub_97AB0();
        if (swift_dynamicCast())
        {
          v65 = v134;
        }

        else
        {
          v65 = 0;
        }
      }

      else
      {
        sub_97CE8(&v137);
        v65 = 0;
      }

      v66 = sub_97980(_swiftEmptyArrayStorage);
      v135 = v66;
      if (v128)
      {
        v67 = sub_BD8B4();
        v69 = v68;
        v138 = &type metadata for String;
        *&v137 = v124;
        *(&v137 + 1) = v128;
        sub_94D98(&v137, v139);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v139, v67, v69, isUniquelyReferenced_nonNull_native);

        v135 = v66;
      }

      if (v51)
      {
        v71 = sub_BD8B4();
        v73 = v72;
        v138 = &type metadata for String;
        *&v137 = v122;
        *(&v137 + 1) = v51;
        sub_94D98(&v137, v139);
        v74 = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v139, v71, v73, v74);

        v135 = v66;
      }

      v75 = sub_BD8B4();
      v77 = v75;
      v78 = v76;
      if (v33)
      {
        v138 = sub_97AB0();
        *&v137 = v33;
        sub_94D98(&v137, v139);
        v79 = v33;
        v80 = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v139, v77, v78, v80);

        v135 = v66;
      }

      else
      {
        sub_9704C(v75, v76, &v137);

        sub_75B0(&v137, &qword_123E88, qword_CE420);
      }

      v81 = sub_BD8B4();
      v83 = v81;
      v84 = v82;
      if (v130)
      {
        v138 = &type metadata for String;
        *&v137 = v126;
        *(&v137 + 1) = v130;
        sub_94D98(&v137, v139);
        v85 = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v139, v83, v84, v85);
      }

      else
      {
        sub_9704C(v81, v82, &v137);

        sub_75B0(&v137, &qword_123E88, qword_CE420);
      }

      v86 = sub_BD8B4();
      v88 = v86;
      v89 = v87;
      if (v129)
      {
        v138 = &type metadata for String;
        *&v137 = v125;
        *(&v137 + 1) = v129;
        sub_94D98(&v137, v139);
        v90 = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v139, v88, v89, v90);
      }

      else
      {
        sub_9704C(v86, v87, &v137);

        sub_75B0(&v137, &qword_123E88, qword_CE420);
      }

      v91 = sub_BD8B4();
      v93 = v91;
      v94 = v92;
      if (v127)
      {
        v138 = &type metadata for String;
        *&v137 = v123;
        *(&v137 + 1) = v127;
        sub_94D98(&v137, v139);
        v95 = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v139, v93, v94, v95);
      }

      else
      {
        sub_9704C(v91, v92, &v137);

        sub_75B0(&v137, &qword_123E88, qword_CE420);
      }

      v96 = sub_BD8B4();
      v98 = v96;
      v99 = v97;
      if (v61)
      {
        v138 = sub_97AB0();
        *&v137 = v61;
        sub_94D98(&v137, v139);
        v100 = v61;
        v101 = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v139, v98, v99, v101);
      }

      else
      {
        sub_9704C(v96, v97, &v137);

        sub_75B0(&v137, &qword_123E88, qword_CE420);
      }

      v102 = sub_BD8B4();
      v104 = v102;
      v105 = v103;
      if (v65)
      {
        v138 = sub_97AB0();
        *&v137 = v65;
        sub_94D98(&v137, v139);
        v106 = v65;
        v107 = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v139, v104, v105, v107);

        v7 = oslog;
        if (v135)
        {
LABEL_101:
          v108 = sub_BD8B4();
          v110 = v109;
          v111 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:a2];
          v138 = sub_97AB0();
          *&v137 = v111;
          sub_94D98(&v137, v139);
          v112 = swift_isUniquelyReferenced_nonNull_native();
          sub_97558(v139, v108, v110, v112);

          v113 = sub_BD8B4();
          v115 = v114;
          v138 = sub_BD5F4();
          sub_97AFC(&v137);
          sub_BD5E4();
          sub_94D98(&v137, v139);
          v116 = swift_isUniquelyReferenced_nonNull_native();
          sub_97558(v139, v113, v115, v116);

          v117 = sub_BD8B4();
          v119 = v118;
          v138 = &type metadata for Int;
          *&v137 = a3;
          sub_94D98(&v137, v139);
          v120 = swift_isUniquelyReferenced_nonNull_native();
          sub_97558(v139, v117, v119, v120);

          isa = sub_BD834().super.isa;

          [v7 updateTranscriptBackgroundProperties:isa];

          return;
        }
      }

      else
      {
        sub_9704C(v102, v103, &v137);

        sub_75B0(&v137, &qword_123E88, qword_CE420);
        v7 = oslog;
        if (v135)
        {
          goto LABEL_101;
        }
      }
    }

    sub_97980(_swiftEmptyArrayStorage);
    goto LABEL_101;
  }

  if (qword_1244D0 != -1)
  {
    swift_once();
  }

  v24 = sub_BD7B4();
  sub_96A28(v24, qword_1244D8);
  v25 = v3;
  osloga = sub_BD794();
  v26 = sub_BDA84();

  if (os_log_type_enabled(osloga, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 134218242;
    *(v27 + 4) = 0;
    *(v27 + 12) = 2112;
    *(v27 + 14) = v25;
    *v28 = v25;
    v29 = v25;
    _os_log_impl(&dword_0, osloga, v26, "Tried to set a non-valid background version (%llu for chat %@", v27, 0x16u);
    sub_75B0(v28, &qword_123E98, &unk_CEE80);
  }
}

id IMDChat.backgroundVersion.getter()
{
  v1 = v0;
  v2 = [v0 properties];
  if (v2)
  {
    v3 = v2;
    v4 = sub_BD844();
  }

  else
  {
    v4 = sub_97B60(_swiftEmptyArrayStorage);
  }

  v19 = sub_BD8B4();
  sub_BDBC4();
  if (!*(v4 + 16) || (v5 = sub_97008(v21), (v6 & 1) == 0))
  {

    sub_97CE8(v21);
    goto LABEL_9;
  }

  sub_97D3C(*(v4 + 56) + 32 * v5, v22);
  sub_97CE8(v21);

  sub_94950(&qword_123EA8, &qword_CE438);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v7 = sub_97B60(_swiftEmptyArrayStorage);
    goto LABEL_10;
  }

  v7 = v19;
LABEL_10:
  v20 = sub_BD8B4();
  sub_BDBC4();
  if (*(v7 + 16) && (v8 = sub_97008(v21), (v9 & 1) != 0))
  {
    sub_97D3C(*(v7 + 56) + 32 * v8, v22);
    sub_97CE8(v21);

    sub_97AB0();
    if (swift_dynamicCast())
    {
      v10 = [v20 unsignedLongLongValue];

      goto LABEL_16;
    }
  }

  else
  {

    sub_97CE8(v21);
  }

  v10 = 0;
LABEL_16:
  if (qword_1244D0 != -1)
  {
    swift_once();
  }

  v11 = sub_BD7B4();
  sub_96A28(v11, qword_1244D8);
  v12 = v1;
  v13 = sub_BD794();
  v14 = sub_BDA54();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 134218242;
    *(v15 + 4) = v10;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_0, v13, v14, "Got background version: %llu for chat: %@", v15, 0x16u);
    sub_75B0(v16, &qword_123E98, &unk_CEE80);
  }

  return [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v10];
}

Swift::OpaquePointer_optional __swiftcall IMDChat.backgroundPropertiesForNewGroupParticipant()()
{
  v1 = [v0 transcriptBackgroundProperties];
  if (v1)
  {
    v3 = v1;
    v4 = sub_BD844();

    v91 = &_swiftEmptyDictionarySingleton;
    v5 = sub_BD8B4();
    v7 = v6;
    v8 = sub_BD8B4();
    if (*(v4 + 16))
    {
      v10 = sub_94048(v8, v9);
      v12 = v11;

      if (v12)
      {
        sub_97D3C(*(v4 + 56) + 32 * v10, &v89);
        sub_94D98(&v89, v88);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v88, v5, v7, isUniquelyReferenced_nonNull_native);

        v91 = &_swiftEmptyDictionarySingleton;
        goto LABEL_7;
      }
    }

    else
    {
    }

    sub_9704C(v5, v7, &v89);

    sub_75B0(&v89, &qword_123E88, qword_CE420);
LABEL_7:
    v14 = sub_BD8B4();
    v16 = v15;
    v17 = sub_BD8B4();
    if (*(v4 + 16))
    {
      v19 = sub_94048(v17, v18);
      v21 = v20;

      if (v21)
      {
        sub_97D3C(*(v4 + 56) + 32 * v19, &v89);
        sub_94D98(&v89, v88);
        v22 = v91;
        v23 = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v88, v14, v16, v23);

        v91 = v22;
        goto LABEL_12;
      }
    }

    else
    {
    }

    sub_9704C(v14, v16, &v89);

    sub_75B0(&v89, &qword_123E88, qword_CE420);
LABEL_12:
    v24 = sub_BD8B4();
    v26 = v25;
    v27 = sub_BD8B4();
    if (*(v4 + 16))
    {
      v29 = sub_94048(v27, v28);
      v31 = v30;

      if (v31)
      {
        sub_97D3C(*(v4 + 56) + 32 * v29, &v89);
        sub_94D98(&v89, v88);
        v32 = v91;
        v33 = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v88, v24, v26, v33);

        v91 = v32;
        goto LABEL_17;
      }
    }

    else
    {
    }

    sub_9704C(v24, v26, &v89);

    sub_75B0(&v89, &qword_123E88, qword_CE420);
LABEL_17:
    v34 = sub_BD8B4();
    v36 = v35;
    v37 = sub_BD8B4();
    if (*(v4 + 16))
    {
      v39 = sub_94048(v37, v38);
      v41 = v40;

      if (v41)
      {
        sub_97D3C(*(v4 + 56) + 32 * v39, &v89);
        sub_94D98(&v89, v88);
        v42 = v91;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v88, v34, v36, v43);

        v91 = v42;
        goto LABEL_22;
      }
    }

    else
    {
    }

    sub_9704C(v34, v36, &v89);

    sub_75B0(&v89, &qword_123E88, qword_CE420);
LABEL_22:
    v44 = sub_BD8B4();
    v46 = v45;
    v47 = sub_BD8B4();
    if (*(v4 + 16))
    {
      v49 = sub_94048(v47, v48);
      v51 = v50;

      if (v51)
      {
        sub_97D3C(*(v4 + 56) + 32 * v49, &v89);
        sub_94D98(&v89, v88);
        v52 = v91;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v88, v44, v46, v53);

        v91 = v52;
        goto LABEL_27;
      }
    }

    else
    {
    }

    sub_9704C(v44, v46, &v89);

    sub_75B0(&v89, &qword_123E88, qword_CE420);
LABEL_27:
    v54 = sub_BD8B4();
    v56 = v55;
    v57 = sub_BD8B4();
    if (*(v4 + 16))
    {
      v59 = sub_94048(v57, v58);
      v61 = v60;

      if (v61)
      {
        sub_97D3C(*(v4 + 56) + 32 * v59, &v89);
        sub_94D98(&v89, v88);
        v62 = v91;
        v63 = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v88, v54, v56, v63);

        v91 = v62;
        goto LABEL_32;
      }
    }

    else
    {
    }

    sub_9704C(v54, v56, &v89);

    sub_75B0(&v89, &qword_123E88, qword_CE420);
LABEL_32:
    v64 = sub_BD8B4();
    v66 = v65;
    v67 = sub_BD8B4();
    if (*(v4 + 16))
    {
      v69 = sub_94048(v67, v68);
      v71 = v70;

      if (v71)
      {
        sub_97D3C(*(v4 + 56) + 32 * v69, &v89);
        sub_94D98(&v89, v88);
        v72 = v91;
        v73 = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v88, v64, v66, v73);

        v91 = v72;
        goto LABEL_37;
      }
    }

    else
    {
    }

    sub_9704C(v64, v66, &v89);

    sub_75B0(&v89, &qword_123E88, qword_CE420);
LABEL_37:
    v74 = sub_BD8B4();
    v76 = v75;
    v77 = sub_BD8B4();
    if (*(v4 + 16))
    {
      v79 = sub_94048(v77, v78);
      v81 = v80;

      if (v81)
      {
        sub_97D3C(*(v4 + 56) + 32 * v79, &v89);

        sub_94D98(&v89, v88);
        v82 = v91;
        v83 = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v88, v74, v76, v83);

        v91 = v82;
LABEL_42:
        v84 = sub_BD8B4();
        v86 = v85;
        v90 = &type metadata for Int;
        *&v89 = 2;
        sub_94D98(&v89, v88);
        v87 = swift_isUniquelyReferenced_nonNull_native();
        sub_97558(v88, v84, v86, v87);

        v1 = v82;
        goto LABEL_43;
      }
    }

    else
    {
    }

    sub_9704C(v74, v76, &v89);

    sub_75B0(&v89, &qword_123E88, qword_CE420);
    v82 = v91;
    goto LABEL_42;
  }

LABEL_43:
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_96A28(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_96A60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_96B2C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_97D3C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_97C9C(v11);
  return v7;
}

unint64_t sub_96B2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_96C38(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_BDC44();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_96C38(uint64_t a1, unint64_t a2)
{
  v4 = sub_96C84(a1, a2);
  sub_96DB4(&off_114BB8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_96C84(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_96EA0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_BDC44();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_BD904();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_96EA0(v10, 0);
        result = sub_BDC14();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_96DB4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_96F14(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_96EA0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_94950(&qword_123EB8, &qword_CE880);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_96F14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_94950(&qword_123EB8, &qword_CE880);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_97008(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BDBA4(*(v2 + 40));

  return sub_97714(a1, v4);
}

double sub_9704C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_94048(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_977DC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_94D98((*(v12 + 56) + 32 * v9), a3);
    sub_973A8(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_970F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_94950(&qword_123EB0, &qword_CE448);
  v36 = a2;
  result = sub_BDCE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_94D98(v25, v37);
      }

      else
      {
        sub_97D3C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_BDDC4();
      sub_BD8E4();
      result = sub_BDDE4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_94D98(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_973A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_BDB44() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_BDDC4();

      sub_BD8E4();
      v14 = sub_BDDE4();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_97558(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_94048(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_977DC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_970F0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_94048(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_BDD64();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_97C9C(v23);

    return sub_94D98(a1, v23);
  }

  else
  {
    sub_976A8(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_976A8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_94D98(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_97714(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_97D98(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_BDBB4();
      sub_97CE8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_977DC()
{
  v1 = v0;
  sub_94950(&qword_123EB0, &qword_CE448);
  v2 = *v0;
  v3 = sub_BDCD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_97D3C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_94D98(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}