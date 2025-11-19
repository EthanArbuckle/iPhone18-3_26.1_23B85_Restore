void sub_2A40(id a1)
{
  v1 = IMSharedHelperAppDisabledBundleIDsForAppCardSwipeGesture();
  v2 = qword_57190;
  qword_57190 = v1;

  if (!qword_57190)
  {
    qword_57190 = &off_4EA60;
  }
}

void sub_2C5C(uint64_t a1)
{
  v2 = [*(a1 + 32) balloonPlugin];

  if (v2)
  {
    v6 = CKRemoteViewPluginKey;
    v3 = [*(a1 + 32) balloonPlugin];
    v7 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:CKMessageExtensionBrowserViewControllerDidPrepareForDisplay object:0 userInfo:v4];
}

void sub_2F40(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 72) & 1) != 0 || *(a1 + 32) == *(*(a1 + 40) + 32))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_30D4;
    block[3] = &unk_4CE30;
    block[4] = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }

  v4 = +[_MSStickerSendManager sharedInstance];
  v5 = [v4 hostBundleID];

  if (!v5)
  {
    v6 = +[NSBundle mainBundle];
    v5 = [v6 bundleIdentifier];
  }

  v7 = [*(a1 + 40) remoteProxy];
  [v7 _setHostBundleID:v5];

  v8 = *(a1 + 56);
  if (v8)
  {
    (*(v8 + 16))(v8, a2);
  }

  v9 = *(a1 + 48);
  v10 = v9;
  v11 = *(a1 + 64);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_INTERVAL_END, v11, "extensionLoading", "", v12, 2u);
  }
}

id sub_368C(uint64_t a1)
{
  result = [*(a1 + 32) isInDeferredTeardown];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 forceTearDownRemoteView];
  }

  return result;
}

void sub_48B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_48E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_48F8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_5608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_5634(uint64_t a1)
{
  [*(a1 + 32) _addRemoteViewControllerAndConfigureExtension];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_568C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5798;
  block[3] = &unk_4CED0;
  objc_copyWeak(v18, (a1 + 32));
  v15 = v7;
  v16 = v8;
  v10 = *(a1 + 40);
  v17 = v9;
  v18[1] = v10;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(v18);
}

void sub_5798(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));

  if (!WeakRetained)
  {
    return;
  }

  v3 = ms_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_loadWeakRetained((a1 + 56));
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = v4;
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 extensionLoadRequestCount]);

    *buf = 138413314;
    v41 = v4;
    v42 = 2112;
    v43 = v6;
    v44 = 2112;
    v45 = v5;
    v46 = 2112;
    v47 = v7;
    v48 = 2112;
    v49 = v9;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "instantiateViewControllerWithInputItems returned with request %@ remoteVC self %@ %@ error %@ extensionLoad request count %@", buf, 0x34u);
  }

  v10 = objc_loadWeakRetained((a1 + 56));
  [v10 setExtensionLoadRequestInFlight:0];

  v11 = objc_loadWeakRetained((a1 + 56));
  [v11 setSessionUUID:*(a1 + 32)];

  if (*(a1 + 48))
  {
    goto LABEL_5;
  }

  v23 = objc_loadWeakRetained((a1 + 56));
  if (![v23 extensionLoadRequestCount])
  {

    goto LABEL_5;
  }

  v24 = *(a1 + 40) == 0;

  if (v24)
  {
LABEL_5:
    v12 = ms_defaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_loadWeakRetained((a1 + 56));
      v14 = *(a1 + 48);
      *buf = 138412546;
      v41 = v13;
      v42 = 2112;
      v43 = v14;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%@ extensionLoadRequestCount hit error case. Force tearing down extension %@ ", buf, 0x16u);
    }

    v15 = objc_loadWeakRetained((a1 + 56));
    [v15 _callAndDequeueLoadCompletionBlocks:0];

    v16 = objc_loadWeakRetained((a1 + 56));
    [v16 forceTearDownRemoteView];

    v17 = ms_defaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Posting CKRemoteViewFailedInstantiationNotification", buf, 2u);
    }

    v18 = +[NSNotificationCenter defaultCenter];
    v38 = IMExtensionRemoteConnectionInterruptedBundleIdentifier;
    v19 = objc_loadWeakRetained((a1 + 56));
    v20 = [v19 balloonExtensionPlugin];
    v21 = [v20 identifier];
    v39 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    [v18 postNotificationName:CKRemoteViewFailedInstantiationNotification object:0 userInfo:v22];

    return;
  }

  v25 = objc_loadWeakRetained((a1 + 56));
  v26 = [v25 extension];
  v27 = objc_loadWeakRetained((a1 + 56));
  v28 = [v27 sessionUUID];
  v29 = [v26 _extensionContextForUUID:v28];

  v30 = objc_loadWeakRetained((a1 + 56));
  [v29 setDelegate:v30];

  v31 = objc_loadWeakRetained((a1 + 56));
  v32 = [v31 remoteViewController];
  v33 = [v32 parentViewController];

  if (v33)
  {
    v34 = objc_loadWeakRetained((a1 + 56));
    [v34 _removeRemoteViewController];
  }

  v35 = objc_loadWeakRetained((a1 + 56));
  [v35 setRemoteViewController:*(a1 + 40)];

  if ((CKIsAppCardsEnabled() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 40) setServiceViewShouldShareTouchesWithHost:1];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) setIntent:*(a1 + 64)];
  }

  v36 = objc_loadWeakRetained((a1 + 56));
  [v36 _addRemoteViewControllerAndConfigureExtension];

  v37 = objc_loadWeakRetained((a1 + 56));
  [v37 _callAndDequeueLoadCompletionBlocks:1];
}

void sub_5C1C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(a1);
    v13 = ms_defaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((v11 + 56));
      v15 = WeakRetained;
      v16 = [v15 balloonExtensionPlugin];
      v17 = [v16 identifier];
      LODWORD(buf) = 134218240;
      *(&buf + 4) = WeakRetained;
      WORD6(buf) = 2048;
      *(&buf + 14) = v17;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Posting CKRemoteViewFailedInstantiationNotification  weakSelf %p or the extension %p is null", &buf, 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x5A50);
  }

  _Unwind_Resume(a1);
}

void sub_6628(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  [v2 _presentationDidChangeToPresentationState:*(a1 + 40)];
}

void sub_7610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

id sub_7638(uint64_t a1)
{
  v2 = [*(a1 + 32) requestSnapshotDataForPersistance];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_76F8;
  v7[3] = &unk_4CF48;
  v8 = *(a1 + 40);
  dispatch_sync(&_dispatch_main_q, v7);
  v5 = *(*(*(a1 + 48) + 8) + 40);

  return v5;
}

void sub_76F8(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = +[UIScreen mainScreen];
  [v3 scale];
  v7 = [UIImage imageWithData:v2 scale:?];

  v4 = [[UIImageView alloc] initWithImage:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_77A8(uint64_t a1)
{
  v2 = [*(a1 + 32) snapshotCache];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = [*(a1 + 40) stringValue];
  [v2 setCachedPreview:v3 key:v4];

  v5 = [*(a1 + 32) snapshotCache];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_78C4;
  v12 = &unk_4CF98;
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v13 = v6;
  v14 = v7;
  [v5 enqueueSaveBlock:&v9 withPriority:-1];

  v8 = [NSNotificationCenter defaultCenter:v9];
  [v8 __mainThreadPostNotificationName:CKBalloonPluginManagerSnapshotsDidChange object:0];
}

void sub_78C4(uint64_t a1)
{
  v2 = [*(a1 + 32) stringValue];
  v4 = CKBrowserSnapshotPreviewURL();

  CKFreeSpaceWriteDataToURL();
  v3 = [*(a1 + 32) keyWithOppositeInterfaceStyle];
  [MSMessageExtensionBrowserViewController invalidateSnapshotForKey:v3];
}

void sub_82E8(uint64_t a1)
{
  if (+[_MSPresentationState isRunningInCameraContext])
  {
    v2 = *(a1 + 48);
    v34 = [NSError errorWithDomain:MSMessagesErrorDomain code:11 userInfo:0];
    (*(v2 + 16))(v2, v34);
  }

  else
  {
    v3 = [MSMessageExtensionUtilities isValidMessagePayload:*(a1 + 32)];
    if (v3)
    {
      v4 = ms_defaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_2C57C();
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v5 = [*(a1 + 32) layout];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = *(a1 + 40);
        v7 = v5;
        v8 = [v7 imageTitle];
        v9 = [v6 substituteNameInString:v8];
        [v7 setImageTitle:v9];

        v10 = *(a1 + 40);
        v11 = [v7 imageSubtitle];
        v12 = [v10 substituteNameInString:v11];
        [v7 setImageSubtitle:v12];

        v13 = *(a1 + 40);
        v14 = [v7 caption];
        v15 = [v13 substituteNameInString:v14];
        [v7 setCaption:v15];

        v16 = *(a1 + 40);
        v17 = [v7 subcaption];
        v18 = [v16 substituteNameInString:v17];
        [v7 setSubcaption:v18];

        v19 = *(a1 + 40);
        v20 = [v7 trailingCaption];
        v21 = [v19 substituteNameInString:v20];
        [v7 setTrailingCaption:v21];

        v22 = *(a1 + 40);
        v23 = [v7 trailingSubcaption];
        v24 = [v22 substituteNameInString:v23];
        [v7 setTrailingSubcaption:v24];
      }

      v25 = *(a1 + 40);
      v26 = [*(a1 + 32) summaryText];
      v27 = [v25 substituteNameInString:v26];
      [*(a1 + 32) setSummaryText:v27];

      v28 = *(a1 + 40);
      v29 = [*(a1 + 32) accessibilityLabel];
      v30 = [v28 substituteNameInString:v29];
      [*(a1 + 32) setAccessibilityLabel:v30];

      v31 = [*(a1 + 40) _itemPayloadFromMSMessage:*(a1 + 32)];
      v32 = *(a1 + 40);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_86A8;
      v35[3] = &unk_4D010;
      v38 = *(a1 + 56);
      v35[4] = v32;
      v36 = v31;
      v37 = *(a1 + 48);
      v33 = v31;
      [v32 checkForTouchInRemoteProcessIfNecessaryWithCompletion:v35];
    }
  }
}

void sub_86A8(uint64_t a1, int a2)
{
  v3 = [*(a1 + 32) allowAllPayloadCommits] | a2;
  v4 = *(a1 + 32);
  if (*(a1 + 56) == 1 && v3 != 0)
  {
    v24 = [v4 sendDelegate];
    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) balloonPlugin];
    v13 = [v12 identifier];
    [v24 commitPayload:v11 forPlugin:v13 allowAllCommits:1 completionHandler:*(a1 + 48)];
LABEL_9:

    return;
  }

  v6 = [v4 balloonPlugin];
  v7 = [v6 showInBrowser];

  v8 = [*(a1 + 32) sendDelegate];
  if ((v7 & 1) == 0)
  {
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      return;
    }

    v24 = [*(a1 + 32) sendDelegate];
    v15 = *(a1 + 40);
    v12 = [*(a1 + 32) balloonPlugin];
    v13 = [v12 identifier];
    [v24 startEditingPayloadBypassingValidation:v15 forPlugin:v13 completion:*(a1 + 48)];
    goto LABEL_9;
  }

  v9 = objc_opt_respondsToSelector();

  v24 = [*(a1 + 32) sendDelegate];
  if (v9)
  {
    v10 = *(a1 + 40);
    v12 = [*(a1 + 32) balloonPlugin];
    v13 = [v12 identifier];
    [v24 startEditingPayload:v10 dismiss:0 forPlugin:v13 completion:*(a1 + 48)];
    goto LABEL_9;
  }

  v16 = objc_opt_respondsToSelector();

  v17 = [*(a1 + 32) sendDelegate];
  v18 = v17;
  v19 = *(a1 + 40);
  if (v16)
  {
    v20 = [*(a1 + 32) balloonPlugin];
    v21 = [v20 identifier];
    [v18 startEditingPayload:v19 dismiss:0 forPlugin:v21];
  }

  else
  {
    [v17 startEditingPayload:*(a1 + 40) dismiss:0];
  }

  v22 = *(a1 + 48);
  if (v22)
  {
    v23 = *(v22 + 16);

    v23();
  }
}

void sub_8D84(uint64_t a1)
{
  if (!+[_MSPresentationState isRunningInCameraContext](_MSPresentationState, "isRunningInCameraContext") || (*(a1 + 56) & 1) == 0 && (([*(a1 + 32) isSticker] & 1) != 0 || (objc_msgSend(*(a1 + 32), "mediaURL"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "__ms_conformsToUTI:", kUTTypeImage), v3, (v4 & 1) != 0)))
  {
    if ([*(a1 + 32) isSticker])
    {
      v5 = [*(a1 + 40) currentDragPayload];
      if (v5)
      {
        v6 = *(a1 + 57);

        if (v6 != 1)
        {
          v8 = ms_defaultLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Already dragging a sticker, bailing out of single tap sticker commit", buf, 2u);
          }

          goto LABEL_64;
        }
      }

      v7 = [MSMessageExtensionUtilities isValidSticker:*(a1 + 32)];
      if (v7)
      {
        v8 = v7;
        v9 = ms_defaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Invalid sticker", buf, 2u);
        }

        (*(*(a1 + 48) + 16))();
        goto LABEL_15;
      }

      v14 = [*(a1 + 40) balloonPlugin];
      v8 = [v14 identifier];

      v15 = IMStickersExtensionIdentifier();
      v16 = IMBalloonExtensionIDWithSuffix();

      v17 = [*(a1 + 32) stickerPackGUID];
      v18 = 0;
      if ([v8 isEqualToString:v16]&& v17)
      {
        if ([v17 isEqualToString:v16])
        {
          v18 = 0;
        }

        else
        {
          v43 = +[IMBalloonPluginManager sharedInstance];
          v18 = [v43 balloonPluginForBundleID:v17];

          if (v18)
          {
            v44 = v17;

            v8 = v44;
          }
        }
      }

      v45 = [*(a1 + 32) convertToStickerWithExtensionIdentifier:v8];
      v46 = [v45 attributionInfo];

      if (!v46 && v18)
      {
        v47 = [v18 attributionInfo];
        [v45 setAttributionInfo:v47];
      }

      v48 = [*(a1 + 40) sendDelegate];
      v49 = objc_opt_respondsToSelector();

      if (v49)
      {
        v50 = &stru_4E2A0;
        if (v8)
        {
          v50 = v8;
        }

        v51 = *(a1 + 40);
        v52 = v50;
        v53 = [v51 sendDelegate];
        [*(a1 + 32) sourceFrame];
        [v53 commitSticker:v45 forPlugin:v52 stickerFrame:?];
      }

      else
      {
        v53 = [*(a1 + 40) sendDelegate];
        [*(a1 + 32) sourceFrame];
        [v53 commitSticker:v45 stickerFrame:?];
      }

      goto LABEL_62;
    }

    v10 = [*(a1 + 32) generativePlaygroundRecipeData];

    v11 = [MSMessageExtensionUtilities isValidMediaPayload:*(a1 + 32)];
    v12 = v11;
    if (v10)
    {
      if (!v11)
      {
        v19 = [*(a1 + 40) balloonExtensionPlugin];
        v20 = [v19 identifier];

        v21 = IMBalloonExtensionIDWithSuffix();
        v22 = [v20 isEqualToString:v21];

        if (v22)
        {
          if (([*(a1 + 32) isSticker] & 1) == 0)
          {
            v23 = [*(a1 + 32) attributionInfo];
            v24 = [*(a1 + 40) balloonExtensionPlugin];
            v25 = [v24 attributionInfo];
            v26 = [v25 mutableCopy];

            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v27 = v23;
            v28 = [v27 countByEnumeratingWithState:&v79 objects:v85 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v80;
              do
              {
                for (i = 0; i != v29; i = i + 1)
                {
                  if (*v80 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v79 + 1) + 8 * i);
                  v33 = [v27 objectForKeyedSubscript:v32];
                  [v26 setValue:v33 forKey:v32];
                }

                v29 = [v27 countByEnumeratingWithState:&v79 objects:v85 count:16];
              }

              while (v29);
            }

            [*(a1 + 32) setAttributionInfo:v26];
          }

          v34 = [MSMessageExtensionDataSource pluginPayloadFromMediaPayload:*(a1 + 32)];
          v35 = [*(a1 + 40) sendDelegate];
          v36 = objc_opt_respondsToSelector();

          if (v36)
          {
            v37 = [*(a1 + 40) sendDelegate];
            [v37 appendMediaPayloadToText:v34];
          }

          (*(*(a1 + 48) + 16))();

          v12 = 0;
        }

        else
        {
          v12 = [NSError errorWithDomain:MSMessagesErrorDomain code:11 userInfo:0];
          v42 = ms_defaultLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_2C6B4();
          }

          (*(*(a1 + 48) + 16))();
        }

        goto LABEL_50;
      }

      v13 = ms_defaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v11)
    {
      v13 = ms_defaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_22:
        sub_2C64C();
      }

LABEL_23:

      (*(*(a1 + 48) + 16))();
LABEL_50:

      return;
    }

    if ([*(a1 + 32) isSticker])
    {
LABEL_76:
      v8 = [MSMessageExtensionDataSource pluginPayloadFromMediaPayload:*(a1 + 32)];
      if (*(a1 + 56) == 1)
      {
        v66 = [*(a1 + 40) recipients];
        v67 = [v66 count];

        if (v67)
        {
          v68 = [*(a1 + 40) sendDelegate];
          v69 = [*(a1 + 40) balloonPlugin];
          v70 = [v69 identifier];
          [v68 commitPayload:v8 forPlugin:v70 allowAllCommits:objc_msgSend(*(a1 + 40) completionHandler:{"allowAllPayloadCommits"), *(a1 + 48)}];

LABEL_15:
          return;
        }
      }

      v71 = [*(a1 + 40) sendDelegate];
      v72 = objc_opt_respondsToSelector();

      v73 = [*(a1 + 40) sendDelegate];
      v16 = v73;
      if ((v72 & 1) == 0)
      {
        [v73 startEditingPayload:v8 dismiss:0];
        goto LABEL_63;
      }

      v17 = [*(a1 + 40) balloonPlugin];
      v18 = [v17 identifier];
      [v16 startEditingPayload:v8 dismiss:0 forPlugin:v18];
LABEL_62:

LABEL_63:
LABEL_64:

      (*(*(a1 + 48) + 16))();
      return;
    }

    v38 = [*(a1 + 32) attributionInfo];
    v39 = [*(a1 + 40) balloonExtensionPlugin];
    v40 = [v39 identifier];

    v41 = IMBalloonExtensionIDWithSuffix();
    if ([v40 isEqualToString:v41])
    {
    }

    else
    {
      v54 = IMBalloonExtensionIDWithSuffix();
      v55 = [v40 isEqualToString:v54];

      if ((v55 & 1) == 0)
      {
        v56 = [*(a1 + 40) balloonExtensionPlugin];
        v57 = [v56 attributionInfo];
        v58 = [v57 mutableCopy];

        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v59 = v38;
        v60 = [v59 countByEnumeratingWithState:&v75 objects:v84 count:16];
        if (v60)
        {
          v61 = v60;
          v62 = *v76;
          do
          {
            for (j = 0; j != v61; j = j + 1)
            {
              if (*v76 != v62)
              {
                objc_enumerationMutation(v59);
              }

              v64 = *(*(&v75 + 1) + 8 * j);
              v65 = [v59 objectForKeyedSubscript:v64];
              [v58 setValue:v65 forKey:v64];
            }

            v61 = [v59 countByEnumeratingWithState:&v75 objects:v84 count:16];
          }

          while (v61);
        }

        [*(a1 + 32) setAttributionInfo:v58];
        goto LABEL_75;
      }
    }

    [*(a1 + 32) setAttributionInfo:v38];
LABEL_75:

    goto LABEL_76;
  }

  v2 = *(a1 + 48);
  v74 = [NSError errorWithDomain:MSMessagesErrorDomain code:11 userInfo:0];
  (*(v2 + 16))(v2);
}

void sub_9804(uint64_t a1)
{
  if (+[_MSPresentationState isRunningInCameraContext])
  {
    v2 = *(a1 + 48);
    v15 = [NSError errorWithDomain:MSMessagesErrorDomain code:11 userInfo:0];
    (*(v2 + 16))(v2, v15);
  }

  else
  {
    v15 = objc_alloc_init(CKBrowserItemPayload);
    v3 = [*(a1 + 32) _linkMetadata];
    v4 = [v3 dataRepresentation];
    [v15 setData:v4];

    v5 = [*(a1 + 32) _linkMetadata];
    v6 = [v5 originalURL];
    [v15 setUrl:v6];

    [v15 setPluginBundleID:IMBalloonPluginIdentifierRichLinks];
    LODWORD(v6) = *(a1 + 56);
    v7 = [*(a1 + 40) sendDelegate];
    if (v6 == 1)
    {
      v8 = [*(a1 + 40) balloonPlugin];
      v9 = [v8 identifier];
      [v7 commitPayload:v15 forPlugin:v9 allowAllCommits:objc_msgSend(*(a1 + 40) completionHandler:{"allowAllPayloadCommits"), *(a1 + 48)}];
    }

    else
    {
      v10 = objc_opt_respondsToSelector();

      v11 = [*(a1 + 40) sendDelegate];
      v12 = v11;
      if (v10)
      {
        v13 = [*(a1 + 40) balloonPlugin];
        v14 = [v13 identifier];
        [v12 startEditingPayload:v15 dismiss:0 forPlugin:v14];
      }

      else
      {
        [v11 startEditingPayload:v15 dismiss:0];
      }

      (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
    }
  }
}

void sub_9B24(uint64_t a1)
{
  v2 = [*(a1 + 32) currentDragPayload];

  if (v2)
  {
    (*(*(a1 + 56) + 16))();
    goto LABEL_21;
  }

  v3 = [*(a1 + 40) mediaURL];
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 40) macDragImageData];
    v5 = v4;
    if (!v3)
    {
      if (!v4)
      {
        v7 = 0;
        goto LABEL_10;
      }

      v6 = [[CKImageData alloc] initWithData:v4];
      goto LABEL_9;
    }

LABEL_8:
    v6 = [[CKImageData alloc] initWithURL:v3];
LABEL_9:
    v7 = v6;
    goto LABEL_10;
  }

  v5 = 0;
  v7 = 0;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_10:
  v8 = [v7 durationsWithMaxCount:0x7FFFFFFFLL];
  v9 = +[NSMutableArray array];
  if ([v7 count])
  {
    v10 = 0;
    do
    {
      v11 = [v7 thumbnailAtIndex:v10 fillToSize:0x7FFFFFFFLL maxCount:{1.79769313e308, 1.79769313e308}];
      if (v11)
      {
        [v9 addObject:v11];
      }

      ++v10;
    }

    while (v10 < [v7 count]);
  }

  v12 = [[CKAnimatedImage alloc] initWithImages:v9 durations:v8];
  if (v12)
  {
    [*(a1 + 32) setCurrentDragPayload:*(a1 + 40)];
    [*(a1 + 32) setCompletionHandler:*(a1 + 56)];
    v14 = *(a1 + 64);
    v13 = *(a1 + 72);
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    v17 = [*(a1 + 32) extension];

    if (!v17)
    {
      v18 = [*(a1 + 32) view];
      v19 = [*(a1 + 32) view];
      v20 = [v19 window];
      [v18 convertRect:v20 fromView:{v14, v13, v15, v16}];
      v14 = v21;
      v13 = v22;
      v15 = v23;
      v16 = v24;
    }

    v25 = [*(a1 + 32) browserDragManager];
    [v25 beginDraggingItem:*(a1 + 40) withAnimatedDragImage:v12 fromRect:{v14, v13, v15, v16}];
  }

  else
  {
    v25 = [NSError errorWithDomain:@"CKAppBrowserViewController" code:-1 userInfo:0];
    (*(*(a1 + 56) + 16))();
  }

LABEL_21:
  if (*(a1 + 48))
  {

    [UIWindow _synchronizeDrawingWithFence:?];
  }
}

void sub_9EB0(uint64_t a1)
{
  v2 = [*(a1 + 32) sendDelegate];
  v3 = objc_opt_respondsToSelector();

  v4 = [*(a1 + 32) sendDelegate];
  if ((v3 & 1) == 0)
  {
    v9 = v4;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = [*(a1 + 32) sendDelegate];
    v6 = [v5 appContext];
    v7 = [v6 conformsToProtocol:&OBJC_PROTOCOL____MSMessageComposeExtensionImplProtocol];

    if (!v7)
    {
      return;
    }

    v8 = [*(a1 + 32) sendDelegate];
    v10 = [v8 appContext];

    v4 = v10;
  }

  v9 = v4;
  [v4 stickerDruidDragStarted];
LABEL_6:
}

void sub_A05C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) balloonPlugin];
  v4 = [v3 identifier];
  v15 = [v2 convertToStickerWithExtensionIdentifier:v4];

  v5 = [*(a1 + 40) sendDelegate];
  LOBYTE(v3) = objc_opt_respondsToSelector();

  v6 = [*(a1 + 40) sendDelegate];
  v7 = v6;
  if (v3)
  {
    [v6 stickerDruidDragEndedWithIMSticker:v15];
  }

  else if (objc_opt_respondsToSelector())
  {
    v8 = [*(a1 + 40) sendDelegate];
    v9 = [v8 appContext];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

    v11 = [*(a1 + 40) sendDelegate];
    v7 = [v11 appContext];

    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) balloonPlugin];
    v14 = [v13 identifier];
    [v7 stickerDruidDragEndedWithPayload:v12 pluginIdentifier:v14];
  }

LABEL_7:
}

void sub_A294(uint64_t a1)
{
  v2 = [*(a1 + 32) convertToStickerWithExtensionIdentifier:*(a1 + 40)];
  if (v2)
  {
    v6 = v2;
    v3 = [*(a1 + 48) sendDelegate];
    v4 = objc_opt_respondsToSelector();

    v2 = v6;
    if (v4)
    {
      v5 = [*(a1 + 48) sendDelegate];
      [v5 stickerDruidDragEndedWithIMSticker:v6];

      v2 = v6;
    }
  }
}

void sub_A498(uint64_t a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_2C7A4(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = *(a1 + 40);
  if (*(a1 + 48) != 1 || v10 > 1)
  {
    if (v10 <= 1)
    {
      v12 = [*(a1 + 32) sendDelegate];
      v13 = objc_opt_respondsToSelector();

      v14 = [*(a1 + 32) sendDelegate];
      v15 = v14;
      if ((v13 & 1) == 0)
      {
        [v14 requestPresentationStyleExpanded:v10 == 1];
        goto LABEL_19;
      }

      v16 = v10 == 1;
      v17 = [*(a1 + 32) balloonPlugin];
      v18 = [v17 identifier];
      [v15 requestPresentationStyleExpanded:v16 forPlugin:v18];
      goto LABEL_13;
    }

    if (v10 == 3)
    {
      v22 = [*(a1 + 32) sendDelegate];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        v15 = [*(a1 + 32) sendDelegate];
        v17 = [*(a1 + 32) balloonPlugin];
        v24 = [v17 identifier];
        [v15 requestPresentationStyleFullScreenModalForPlugin:v24 preferredContentSize:{CGSizeZero.width, CGSizeZero.height}];

        goto LABEL_14;
      }
    }
  }

  else
  {
    v19 = [*(a1 + 32) sendDelegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = v10 == 1;
      v15 = [*(a1 + 32) sendDelegate];
      v17 = [*(a1 + 32) balloonPlugin];
      v18 = [v17 identifier];
      [v15 requestTransitionPluginFromFullScreen:v18 toExpanded:v21];
LABEL_13:

LABEL_14:
LABEL_19:
    }
  }
}

void sub_A734(uint64_t a1)
{
  v2 = [*(a1 + 32) sendDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) sendDelegate];
    v4 = [*(a1 + 32) balloonPlugin];
    v5 = [v4 identifier];
    [v6 requestPresentationStyleFullScreenModalForPlugin:v5 preferredContentSize:{*(a1 + 40), *(a1 + 48)}];
  }
}

void sub_A870(uint64_t a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_2C894(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  [*(a1 + 32) setDismissing:1];
  v10 = [*(a1 + 32) sendDelegate];
  v11 = objc_opt_respondsToSelector();

  v12 = *(a1 + 32);
  if (v11)
  {
    v13 = [v12 balloonPlugin];
    v14 = [v13 identifier];
    if ([v14 containsString:IMBalloonPluginIdentifierSurf])
    {
      v15 = 1;
    }

    else
    {
      v17 = [*(a1 + 32) balloonPlugin];
      v18 = [v17 identifier];
      v15 = [v18 containsString:IMBalloonPluginIdentifierSurfDeprecated];
    }

    if ([*(a1 + 32) inFullScreenModalPresentation])
    {
      v19 = 0;
    }

    else
    {
      v19 = +[CKUtilities isIpad]^ 1 | v15;
    }

    v16 = [*(a1 + 32) sendDelegate];
    v20 = [*(a1 + 32) balloonPlugin];
    v21 = [v20 identifier];
    [v16 dismissAndReloadInputViews:v19 & 1 forPlugin:v21];
  }

  else
  {
    v16 = [v12 sendDelegate];
    [v16 dismissAndReloadInputViews:1];
  }
}

void sub_AA70(uint64_t a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_2C90C(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  [*(a1 + 32) setDismissing:1];
  v10 = [*(a1 + 32) sendDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [*(a1 + 32) sendDelegate];
    [v12 dismissAndPresentPhotosApp];
  }
}

void sub_AC4C(uint64_t a1)
{
  v2 = [UIAlertController alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  v3 = v2;
  if (*(a1 + 48))
  {
    [v2 setImage:?];
  }

  v4 = *(a1 + 56);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_AD64;
  v10 = &unk_4D128;
  v11 = v3;
  v12 = *(a1 + 72);
  v5 = v3;
  v6 = [UIAlertAction actionWithTitle:v4 style:0 handler:&v7];
  [v5 addAction:{v6, v7, v8, v9, v10}];

  [*(a1 + 64) presentViewController:v5 animated:1 completion:0];
}

void sub_AEC0(uint64_t a1)
{
  v2 = [UIAlertController alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  v3 = *(a1 + 48);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_B064;
  v15[3] = &unk_4D128;
  v4 = v2;
  v16 = v4;
  v17 = *(a1 + 72);
  v5 = [UIAlertAction actionWithTitle:v3 style:0 handler:v15];
  [v4 addAction:v5];

  v6 = *(a1 + 56);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_B104;
  v12 = &unk_4D128;
  v13 = v4;
  v14 = *(a1 + 72);
  v7 = v4;
  v8 = [UIAlertAction actionWithTitle:v6 style:2 handler:&v9];
  [v7 addAction:{v8, v9, v10, v11, v12}];

  [*(a1 + 64) presentViewController:v7 animated:1 completion:0];
}

void sub_B064(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_B0F0;
  v2[3] = &unk_4CFE8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 dismissViewControllerAnimated:1 completion:v2];
}

void sub_B104(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_B190;
  v2[3] = &unk_4CFE8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 dismissViewControllerAnimated:1 completion:v2];
}

void sub_B2C4(uint64_t a1)
{
  if ([*(a1 + 32) isInDeferredTeardown])
  {
    v2 = [*(a1 + 32) balloonExtensionPlugin];

    if (v2)
    {
      [*(a1 + 40) size];
      v4 = v3;
      v6 = v5;
      if (qword_571A8 != -1)
      {
        sub_2C984();
      }

      v7 = *&qword_571A0;
      if (*&qword_571A0 == 0.0)
      {
        v7 = 1.0;
      }

      v8 = round(v4 * v7) / v7;
      v9 = round(v6 * v7) / v7;
      v10 = [*(a1 + 32) view];
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      if (qword_571A8 != -1)
      {
        sub_2C984();
      }

      v15 = *&qword_571A0;
      if (*&qword_571A0 == 0.0)
      {
        v15 = 1.0;
      }

      v16 = round(v12 * v15) / v15;
      v17 = round(v14 * v15) / v15;

      if (v8 == v16 && v9 == v17)
      {
        v19 = +[CKBalloonPluginManager sharedInstance];
        v20 = [*(a1 + 32) balloonExtensionPlugin];
        v21 = [v20 identifier];

        if (v21)
        {
          v22 = [*(a1 + 32) traitCollection];
          v23 = [v22 userInterfaceStyle];
          v24 = [*(a1 + 32) view];
          [v24 bounds];
          v25 = [CKSnapshotCacheKey keyWithIdentifier:v21 interfaceStyle:v23 bounds:?];
        }

        else
        {
          v25 = 0;
        }

        v26 = [[UIImageView alloc] initWithImage:*(a1 + 40)];
        v27 = [v19 snapshotCache];
        v28 = [v25 stringValue];
        [v27 setCachedPreview:v26 key:v28];

        v29 = +[NSNotificationCenter defaultCenter];
        [v29 postNotificationName:CKBalloonPluginManagerSnapshotsDidChange object:0];

        v33 = _NSConcreteStackBlock;
        v34 = 3221225472;
        v35 = sub_B5D4;
        v36 = &unk_4CF20;
        v30 = v25;
        v37 = v30;
        v38 = *(a1 + 40);
        v31 = objc_retainBlock(&v33);
        if ([CKApplicationState isApplicationActive:v33])
        {
          v32 = [v19 snapshotCache];
          [v32 enqueueSaveBlock:v31 withPriority:-1];
        }

        else
        {
          (v31[2])(v31);
        }
      }
    }
  }
}

void sub_B5D4(uint64_t a1)
{
  v2 = [*(a1 + 32) stringValue];
  v4 = CKBrowserSnapshotPreviewURL();

  v3 = UIImagePNGRepresentation(*(a1 + 40));
  CKFreeSpaceWriteDataToURL();
}

void sub_B6FC(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  v5 = [v4 _identifier];

  v6 = ms_defaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "MSMessageExtensionBrowserViewController returning hostSceneIdentifier %@", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_B960(uint64_t a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_2CA10(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) remoteProxy];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [*(a1 + 32) remoteProxy];
    [v12 _requestStickerExtensionMetadataDictionary:*(a1 + 40)];
  }
}

void sub_C184(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [MSMessageExtensionDataSource messagePayloadFromPluginPayload:*(a1 + 32)];
    v4 = [*(a1 + 40) currentConversationState];
    v5 = ms_traceLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_2CB78(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = [v3 _sanitizedCopy];
    [*(a1 + 40) setIsWaitingForReply:1];
    v14 = ms_defaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 40) remoteProxy];
      v16 = *(a1 + 40);
      v17 = *(v16 + 32);
      v18 = *(v16 + 80);
      *buf = 138412802;
      v26 = v15;
      v27 = 2112;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "requesting validation for proxy %@, remoteViewConroller %@, sessionUUID %@", buf, 0x20u);
    }

    v19 = [*(a1 + 40) remoteProxy];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_C394;
    v22[3] = &unk_4D1A0;
    v20 = *(a1 + 48);
    v22[4] = *(a1 + 40);
    v23 = v3;
    v24 = *(a1 + 56);
    v21 = v3;
    [v19 _canSendMessage:v13 conversationState:v4 associatedText:v20 completion:v22];
  }
}

void sub_C394(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  [*(a1 + 32) setIsWaitingForReply:0];
  v9 = ms_defaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSNumber numberWithBool:a2];
    v11 = [v7 session];
    v12 = [v11 identifier];
    v16 = 136316162;
    v17 = "[MSMessageExtensionBrowserViewController validatePayloadForSending:associatedText:completionHandler:]_block_invoke";
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%s shouldSend %@. modifiedMessage %@. localizedInvalidationDescription %@ sessionUUID %@", &v16, 0x34u);
  }

  v13 = [*(a1 + 32) hasEntitlement:@"com.apple.messages.private.AllowMessageSanitizationOverride"];
  v14 = *(a1 + 40);
  if (v13)
  {
    [v7 _mergeSanitizedKeepingModifiedMessage:v14];
  }

  else
  {
    [v7 _mergeSanitizedDataFromMessage:v14];
  }

  v15 = [*(a1 + 32) _itemPayloadFromMSMessage:v7];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) _removeRemoteViewControllerAndCancelExtensionRequestIfNeeded];
}

id sub_C674(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [MSMessageExtensionDataSource messagePayloadFromPluginPayload:*(a1 + 32)];
    v4 = [*(a1 + 40) currentConversationState];
    v5 = ms_traceLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_2CBF0(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = [*(a1 + 40) remoteProxy];
    v14 = [v3 _sanitizedCopy];
    [v13 _didStartSendingMessage:v14 conversationState:v4];
  }

  v15 = ms_defaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "didStartSendingPluginPayload _removeRemoteViewControllerAndCancelExtensionRequestIfNeeded ", v17, 2u);
  }

  return [*(a1 + 40) _removeRemoteViewControllerAndCancelExtensionRequestIfNeeded];
}

id sub_C8AC(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [MSMessageExtensionDataSource messagePayloadFromPluginPayload:*(a1 + 32)];
    v4 = [*(a1 + 40) currentConversationState];
    v5 = ms_traceLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_2CC68(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = [*(a1 + 40) remoteProxy];
    v14 = [v3 _sanitizedCopy];
    [v13 _didCancelSendingMessage:v14 conversationState:v4];
  }

  v15 = +[_MSRemoteBalloonViewControllerManager sharedInstance];
  [v15 removeShelfBalloonViewController];

  v16 = ms_defaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "didCancelSendingPluginPayload _removeRemoteViewControllerAndCancelExtensionRequestIfNeeded ", v18, 2u);
  }

  return [*(a1 + 40) _removeRemoteViewControllerAndCancelExtensionRequestIfNeeded];
}

void sub_CAC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 32) && ([*(a1 + 40) remoteViewController], v3 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v3, (isKindOfClass & 1) != 0))
    {
      v15 = 0u;
      v16 = 0u;
      v5 = [*(a1 + 40) remoteViewController];
      v6 = v5;
      if (v5)
      {
        [v5 serviceAuditToken];
      }

      else
      {
        v15 = 0u;
        v16 = 0u;
      }

      v8 = [[IMSandboxedFileURL alloc] initWithFileURL:*(a1 + 32)];
      v14[0] = v15;
      v14[1] = v16;
      [v8 authorizeForAuditToken:v14];
      v7 = [v8 sandboxExtension];
    }

    else
    {
      v7 = 0;
    }

    v9 = [*(a1 + 40) remoteProxy];
    v10 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_CC44;
    v12[3] = &unk_4D218;
    v11 = *(a1 + 48);
    v13 = *(a1 + 56);
    [v9 _didSelectGPAsset:v10 sandboxExtension:v7 recipeData:v11 completion:v12];
  }
}

uint64_t sub_CDE0(uint64_t a1)
{
  v2 = [*(a1 + 32) balloonExtensionPlugin];
  v3 = [v2 showInBrowser];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) _removeRemoteViewControllerAndCancelExtensionRequestIfNeeded];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_CE68(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) remoteProxy];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_CF50;
    v7[3] = &unk_4D268;
    v8 = *(a1 + 56);
    [v3 _handleTextInputPayload:v4 withPayloadID:v5 completion:v7];
  }

  else
  {
    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

void sub_D028(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) remoteProxy];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_D0F8;
    v5[3] = &unk_4D268;
    v6 = *(a1 + 40);
    [v3 _prepareForPresentationWithCompletionHandler:v5];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void sub_D2F0(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  [v2 _setPluginIdentifierToShow:*(a1 + 40) completion:*(a1 + 48)];
}

void sub_D404(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  [v2 _addStickerToStoreWithRepresentations:*(a1 + 40) completionHandler:*(a1 + 48)];
}

void sub_D518(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  [v2 _addStickerToStoreWithRepresentations:*(a1 + 40) completionWithStickerIDs:*(a1 + 48)];
}

void sub_D654(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  [v2 _addStickerToStoreWithRepresentations:*(a1 + 40) sourceRect:*(a1 + 48) completion:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
}

void sub_D7A0(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  [v2 _addStickerToStoreWithRepresentations:*(a1 + 40) sourceRect:*(a1 + 88) effect:*(a1 + 48) completion:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
}

void sub_D8E8(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  [v2 _addStickerToStoreWithUISticker:*(a1 + 40) sourceRect:*(a1 + 48) completion:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
}

void sub_D9B0(uint64_t a1)
{
  v1 = [*(a1 + 32) remoteProxy];
  [v1 _prepareForAddStickerFromSubjectLift];
}

void sub_DA88(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  [v2 _addStickerAnimationDidFinishWithCompletion:*(a1 + 40)];
}

void sub_DB48(uint64_t a1)
{
  v1 = [*(a1 + 32) remoteProxy];
  [v1 _didRemoveStickerPreview];
}

void sub_DC30(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  [v2 _animatedStickerCreationProgressChanged:*(a1 + 40) progress:*(a1 + 48)];
}

void sub_DDEC(uint64_t a1)
{
  if ([*(a1 + 32) _canCurrentPluginShowInBrowserPluginIdentifier:*(a1 + 40)])
  {
    v4 = [*(a1 + 32) sendDelegate];
    [v4 showBrowserForPluginIdentifier:*(a1 + 40) style:*(a1 + 56) completion:*(a1 + 48)];
  }

  else
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }
  }
}

void sub_E55C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_E578(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_E598(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_FD24(id a1)
{
  qword_571B0 = objc_alloc_init(_MSRemoteBalloonViewControllerManager);

  _objc_release_x1();
}

void sub_10404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10468(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1059C;
  v15[3] = &unk_4D3C8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v8;
  v20 = v7;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  objc_copyWeak(&v22, (a1 + 56));
  v23 = *(a1 + 64);
  v21 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, v15);

  objc_destroyWeak(&v22);
}

void sub_1059C(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = ms_defaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_2CE68(v2, v3);
    }

    [*(*(a1 + 40) + 8) removeObjectForKey:*(a1 + 48)];
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  v4 = (a1 + 56);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = ms_defaultLog();
  v7 = v6;
  if ((isKindOfClass & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_2CEE4((a1 + 56), v7);
    }

    v16 = [NSString stringWithFormat:@"Remote View Controller is not of type _MSMessageExtensionRemoteViewController: %@", *v4];
    v17 = [NSException exceptionWithName:NSInvalidArgumentException reason:v16 userInfo:0];
    [v17 raise];

    goto LABEL_14;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *buf = 134218498;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "LiveBubble. %p Finished loading remote view for messageGUID: %@ remoteViewController %p", buf, 0x20u);
  }

  v11 = *(a1 + 56);
  [v11 setRequestUUID:*(a1 + 64)];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [v11 setWeakExtension:WeakRetained];

  v13 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:*(a1 + 48)];
  v14 = +[NSNull null];
  if ([v13 isEqual:v14])
  {
    v15 = *(a1 + 88);

    if (v15 == 1)
    {
      [*(*(a1 + 40) + 8) setObject:v11 forKeyedSubscript:*(a1 + 48)];
    }
  }

  else
  {
  }

LABEL_15:
  (*(*(a1 + 72) + 16))();
}

void sub_11114(uint64_t a1)
{
  [*(a1 + 32) _updateBackwardsCompatibilityConstraintsWithInsets:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = [*(a1 + 32) remoteProxy];
  [v2 _becomeActiveWithConversationState:*(a1 + 40) presentationState:*(a1 + 48)];
}

void sub_119C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_119F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained((a1 + 56));
    [v8 setRemoteViewController:v6];
  }

  else
  {
    v9 = ms_defaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "LiveBubble. Completed a remoteViewController request but %@ nil'ed out. messageGUID: %@", &v14, 0x16u);
    }

    if (v5)
    {
      [*(a1 + 48) cancelExtensionRequestWithIdentifier:v5];
    }

    else
    {
      v12 = ms_defaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "LiveBubble. but nil ID %@", &v14, 0xCu);
      }
    }
  }
}

void sub_13174(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_13190(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v7 = [WeakRetained payload];
    v8 = [v7 pluginBundleID];
    LODWORD(v6) = [v6 isEqualToString:v8];

    if (v6)
    {
      if (!v3)
      {
        v9 = [v5 payload];
        v10 = [v9 payloadDictionary];

        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_132C4;
        v11[3] = &unk_4D470;
        v11[4] = v5;
        v3 = [IMBalloonPlugin __ck_appIconFromPayloadDictionary:v10 withCompletionBlock:v11];
      }

      [v5[7] setImage:v3];
    }
  }
}

void sub_132C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_13368;
    v5[3] = &unk_4CF20;
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

void sub_13DB8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  if (!v12 && a6 && (a5 & 1) != 0)
  {
    v38 = a2;
    v37 = IMExtensionPayloadUnarchivingClasses();
    v13 = [NSKeyedUnarchiver unarchivedObjectOfClasses:"unarchivedObjectOfClasses:fromData:error:" fromData:? error:?];
    v35 = 0;
    v14 = objc_alloc_init(LPLinkMetadata);
    v36 = v11;
    v15 = [NSURL URLWithString:v11];
    [v14 setURL:v15];

    v39 = v13;
    v16 = [v13 objectForKeyedSubscript:IMExtensionPayloadLocalizedDescriptionTextKey];
    [v14 setTitle:v16];

    v17 = [*(a1 + 40) firstObject];
    v18 = [NSData dataWithContentsOfURL:v17];
    if (v18)
    {
      PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, [v17 pathExtension], 0);
      v20 = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, kUTTagClassMIMEType);
      v21 = [[LPImage alloc] initWithData:v18 MIMEType:v20];
      [v14 setImage:v21];
    }

    v22 = objc_alloc_init(IMPluginPayload);
    [v22 setPluginBundleID:IMBalloonPluginIdentifierRichLinks];
    v23 = [v14 URL];
    [v22 setUrl:v23];

    v24 = [v14 dataRepresentation];
    [v22 setData:v24];

    v25 = +[IMBalloonPluginManager sharedInstance];
    v26 = [v25 dataSourceForPluginPayload:v22];

    [v26 payloadWillSendFromShelf];
    v27 = [v26 messagePayloadDataForSending];
    v28 = *(a1 + 48);
    v29 = +[NSString stringGUID];
    v30 = [v28 URLByAppendingPathComponent:v29];

    [v27 writeToURL:v30 atomically:1];
    v31 = [NSMutableArray arrayWithArray:v38];

    [v31 addObject:v30];
    (*(*(a1 + 56) + 16))();

    v11 = v36;
    v32 = v37;
    v12 = v35;
  }

  else
  {
    v33 = *(a1 + 56);
    v34 = *(v33 + 16);
    v32 = a2;
    v34(v33, v32, v11, v12, a5, a6);
  }
}

void sub_1462C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_14670(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained dataSource];
  [WeakRetained setAllowedByScreenTime:{objc_msgSend(v1, "allowedByScreenTime")}];

  [WeakRetained setNeedsLayout];
  [WeakRetained layoutIfNeeded];
}

void sub_146E4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (!v3)
    {
      v6 = [WeakRetained dataSource];
      v7 = [v6 parentChatHasAllUnknownRecipients];

      if ((v7 & 1) == 0)
      {
        v12 = [v5 payload];
        v11 = [v12 payloadDictionary];

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_14878;
        v15[3] = &unk_4D470;
        v13 = v5;
        v16 = v13;
        v3 = [IMBalloonPlugin __ck_appIconFromPayloadDictionary:v11 pluginBundleID:0 withCompletionBlock:v15];
        if (v3)
        {
          v14 = [v13 iconView];
          [v14 setImage:v3];
        }

        goto LABEL_9;
      }
    }

    v8 = *(a1 + 32);
    v9 = [v5 payload];
    v10 = [v9 pluginBundleID];
    LODWORD(v8) = [v8 isEqualToString:v10];

    if (v8)
    {
      v11 = [v5 iconView];
      [v11 setImage:v3];
LABEL_9:
    }
  }
}

void sub_14878(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_14928;
    v4[3] = &unk_4CF20;
    v5 = *(a1 + 32);
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v4);
  }
}

void sub_14928(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) iconView];
  [v2 setImage:v1];
}

void sub_14FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_15004(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) identifier];
    LODWORD(v4) = [v4 isEqualToString:v5];

    if (v4)
    {
      v6 = [WeakRetained iconView];
      [v6 setImage:v7];
    }
  }
}

void sub_15CD4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = ms_defaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_2D2F0();
    }

    objc_end_catch();
    JUMPOUT(0x15C80);
  }

  _Unwind_Resume(exception_object);
}

void sub_168D4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *(v2 - 128) = 138412290;
        *(v2 - 124) = v3;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Exception thrown processing message payload %@", (v2 - 128), 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x1684CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_17620(id a1)
{
  v1 = [[MSMessageExtensionBalloonView alloc] initWithFrame:0 dataSource:1 fromMe:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v2 = qword_571C0;
  qword_571C0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_178C0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id sub_178DC@<X0>(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = a1;

  return a1;
}

void sub_178FC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0x16u);
}

id sub_17A90(uint64_t a1)
{
  result = [*(a1 + 32) needsSnapshot];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 requestSnapshot];
  }

  return result;
}

id sub_17E54(uint64_t a1)
{
  v2 = [*(a1 + 32) balloonPlugin];
  v3 = [v2 appBundle];
  [v3 load];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:CKPPTWillConfigureCellWithTranscriptPluginChatItemNotification object:0];

  v5 = *(a1 + 32);

  return [v5 createRemoteBalloonViewControllerIsResuming:0];
}

void sub_18040(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1805C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_18114;
  v5[3] = &unk_4D560;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_18114(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleUpdatedMessageTintColor:*(a1 + 32)];
}

void sub_18230(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleUpdatedMessageTintColor:*(a1 + 32)];
}

id *sub_18450(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [result[4] dataSource];
    [v3 needsResize];

    v4 = v2[4];

    return [v4 endHoldingSnapshotForReason:3];
  }

  return result;
}

void sub_18A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18AA4(uint64_t a1, void *a2)
{
  v14 = a2;
  v4 = [NSValue valueWithCGSize:*(a1 + 56), *(a1 + 64)];
  v5 = [NSNumber numberWithUnsignedInteger:*(a1 + 72)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = ms_defaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (WeakRetained)
    {
      v2 = [*(a1 + 32) dataSource];
      v8 = [v2 messageGUID];
    }

    else
    {
      v8 = 0;
    }

    v9 = NSStringFromCGSize(*(a1 + 56));
    *buf = 138412546;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "LiveBubble. Size request timer fired for messageGUID: %@, size constraint: %@", buf, 0x16u);
    if (WeakRetained)
    {
    }
  }

  [*(a1 + 32) setHasLiveViewSize:0];
  v10 = [*(a1 + 32) _remoteProxy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_18D30;
  v15[3] = &unk_4D600;
  v20 = *(a1 + 56);
  objc_copyWeak(&v19, (a1 + 48));
  v11 = WeakRetained;
  v12 = *(a1 + 32);
  v16 = v11;
  v17 = v12;
  v18 = *(a1 + 40);
  v21 = *(a1 + 80);
  [v10 _requestContentSizeThatFits:v4 presentationStyle:v5 completionHandler:v15];

  v13 = [*(a1 + 32) sizeUpdater];
  [v13 invalidate];

  [*(a1 + 32) setSizeUpdater:0];
  objc_destroyWeak(&v19);
}

void sub_18D30(uint64_t a1, double a2, double a3)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_18E90;
  v11[3] = &unk_4D5D8;
  v15[1] = *&a2;
  v15[2] = *&a3;
  v16 = *(a1 + 64);
  objc_copyWeak(v15, (a1 + 56));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v7 = objc_retainBlock(v11);
  v8 = v7;
  if (*(a1 + 80))
  {
    (v7[2])(v7);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_19128;
    block[3] = &unk_4CFE8;
    v10 = v7;
    dispatch_async(&_dispatch_main_q, block);
  }

  objc_destroyWeak(v15);
}

uint64_t sub_18E90(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 <= 0.0)
  {
    v2 = *(a1 + 80);
  }

  v3 = *(a1 + 72);
  if (v3 <= 0.0)
  {
    v3 = *(a1 + 88);
  }

  if (*(a1 + 80) >= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = *(a1 + 80);
  }

  if (qword_571D8 != -1)
  {
    sub_2D430();
  }

  v5 = *&qword_571D0;
  if (*&qword_571D0 == 0.0)
  {
    v5 = 1.0;
  }

  v6 = floor(v4 * v5) / v5;
  v7 = *&qword_571D0;
  if (*&qword_571D0 == 0.0)
  {
    v7 = 1.0;
  }

  v8 = floor(v3 * v7) / v7;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setContentSize:{v6, v8}];

  v10 = objc_loadWeakRetained((a1 + 56));
  v11 = [v10 view];
  v12 = [v11 window];

  v13 = objc_loadWeakRetained((a1 + 56));
  [v13 setHasLiveViewSize:1];

  v14 = objc_loadWeakRetained((a1 + 56));
  [v14 setNeedsResize:0];

  v15 = ms_defaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      v11 = [*(a1 + 40) dataSource];
      v17 = [v11 messageGUID];
    }

    else
    {
      v17 = 0;
    }

    v18 = NSStringFromCGSize(*(a1 + 64));
    v19 = [NSNumber numberWithBool:v12 != 0];
    v23 = 138412802;
    v24 = v17;
    v25 = 2112;
    v26 = v18;
    v27 = 2112;
    v28 = v19;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "LiveBubble Resizing. Received a sizeThatFits messageGUID: %@,  sizeThatFits %@ shouldResize %@", &v23, 0x20u);

    if (v16)
    {
    }
  }

  if (v12)
  {
    v20 = [*(a1 + 40) dataSource];
    [v20 setHasInvalidatedSize:0];

    v21 = objc_loadWeakRetained((a1 + 56));
    [v21 setNeedsSnapshot:1];
  }

  return (*(*(a1 + 48) + 16))(v6, v8);
}

void sub_194F8(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1959C;
  block[3] = &unk_4D650;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1959C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [UIImage ckImageWithData:?];
    v3 = [*(a1 + 40) snapshotIdentifier];
    [*(a1 + 40) contentSize];
    v5 = v4;
    v7 = v6;
    [v2 size];
    v9 = vabdd_f64(v5, v8) < 0.00000011920929;
    v11 = vabdd_f64(v7, v10) < 0.00000011920929 && v9;
    if (*(a1 + 48) == 1)
    {
      [*(a1 + 40) contentSize];
      v13 = v12;
      v15 = v14;
      v16 = +[CKUIBehavior sharedBehaviors];
      [v16 pluginBackwardsCompatibilityLeadingTrailingOffset];
      v18 = v13 + v17 * 2.0;

      [v2 size];
      v11 = CKSizeApproximatelyEqualToSizeWithTolerance();
      v19 = ms_defaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [*(a1 + 40) payload];
        v21 = [v20 messageGUID];
        v50.width = v18;
        v50.height = v15;
        v22 = NSStringFromCGSize(v50);
        *buf = 138412546;
        *&buf[4] = v21;
        *&buf[12] = 2112;
        *&buf[14] = v22;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "LiveBubble. messageGUID: %@ | offsets adjustedSize: %@", buf, 0x16u);
      }
    }

    v23 = ms_defaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v3;
      if (*(a1 + 48))
      {
        v25 = @"OFFSETS ";
      }

      else
      {
        v25 = &stru_4E2A0;
      }

      v26 = [*(a1 + 40) payload];
      v27 = [v26 messageGUID];
      v28 = [NSNumber numberWithBool:v11];
      [*(a1 + 40) contentSize];
      NSStringFromCGSize(v51);
      v11 = v38 = v11;
      [v2 size];
      v29 = NSStringFromCGSize(v52);
      *buf = 138413570;
      *&buf[4] = v25;
      v3 = v24;
      *&buf[12] = 2112;
      *&buf[14] = v27;
      *&buf[22] = 2112;
      *&buf[24] = v2;
      v44 = 2112;
      v45 = v28;
      v46 = 2112;
      v47 = v11;
      v48 = 2112;
      v49 = v29;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "LiveBubble. Took %@snapshot for messageGUID: %@ | image: %@ validSize: %@ contentSize: %@ [snapShotImage size]: %@", buf, 0x3Eu);

      LODWORD(v11) = v38;
    }

    v30 = IMColorComponentsZero[1];
    *buf = IMColorComponentsZero[0];
    *&buf[16] = v30;
    if ([*(a1 + 40) haveUpToDateMessageTintColor])
    {
      v31 = [*(a1 + 40) lastKnownMessageTintColor];
      [v31 getRed:buf green:&buf[8] blue:&buf[16] alpha:&buf[24]];

      v32 = ms_defaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [*(a1 + 40) lastKnownMessageTintColor];
        *v39 = 138412546;
        v40 = v33;
        v41 = 2112;
        v42 = v3;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "LiveBubble. using Snapshot Tint color %@ for messageGUID: %@", v39, 0x16u);
      }
    }

    if (v2)
    {
      v34 = v3 == 0;
    }

    else
    {
      v34 = 1;
    }

    v35 = !v34;
    if ((v35 & v11) == 1)
    {
      [*(a1 + 40) setNeedsSnapshot:0];
      if (*(a1 + 48) == 1)
      {
        [CKSnapshotUtilities cachePreLuckSnapshot:v2 guid:v3 messageTintColor:0 postChangeNotification:*buf, *&buf[8], *&buf[16], *&buf[24]];
      }

      else
      {
        [CKSnapshotUtilities cacheSnapshot:v2 guid:v3 messageTintColor:0 postChangeNotification:*buf, *&buf[8], *&buf[16], *&buf[24]];
      }
    }
  }

  else
  {
    v2 = ms_defaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [*(a1 + 40) payload];
      v37 = [v36 messageGUID];
      *buf = 138412290;
      *&buf[4] = v37;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "LiveBubble. Request for snapshot returned nil. messageGUID: %@", buf, 0xCu);
    }
  }
}

void sub_1A9C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1AA68;
    v5[3] = &unk_4CF20;
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

void sub_1AA68(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 152), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = v2[19];
  v4 = [v2 loadingView];
  [v4 setAppIcon:v3];
}

void sub_1B81C(uint64_t a1)
{
  v1 = [*(a1 + 32) dataSource];
  [v1 needsResize];
}

void sub_1BA8C(void *a1)
{
  v2 = [UIAlertController alertControllerWithTitle:a1[4] message:a1[5] preferredStyle:1];
  v3 = v2;
  if (a1[6])
  {
    [v2 setImage:?];
  }

  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1BB94;
  v10 = &unk_4D128;
  v4 = a1[7];
  v5 = a1[9];
  v11 = a1[8];
  v12 = v5;
  v6 = [UIAlertAction actionWithTitle:v4 style:0 handler:&v7];
  [v3 addAction:{v6, v7, v8, v9, v10, v11}];

  [a1[8] presentViewController:v3 animated:1 completion:0];
}

void sub_1BD64(uint64_t a1)
{
  v2 = [UIAlertController alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1BEEC;
  v13[3] = &unk_4D128;
  v3 = *(a1 + 48);
  v13[4] = *(a1 + 56);
  v14 = *(a1 + 72);
  v4 = [UIAlertAction actionWithTitle:v3 style:0 handler:v13];
  [v2 addAction:v4];

  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1BF8C;
  v10 = &unk_4D128;
  v5 = *(a1 + 64);
  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  v6 = [UIAlertAction actionWithTitle:v5 style:2 handler:&v7];
  [v2 addAction:{v6, v7, v8, v9, v10, v11}];

  [*(a1 + 56) presentViewController:v2 animated:1 completion:0];
}

void sub_1BEEC(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1BF78;
  v2[3] = &unk_4CFE8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 dismissViewControllerAnimated:1 completion:v2];
}

void sub_1BF8C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1C018;
  v2[3] = &unk_4CFE8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 dismissViewControllerAnimated:1 completion:v2];
}

void sub_1C26C(uint64_t a1)
{
  v2 = [UIAlertController alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:0];
  if (![*(a1 + 48) count])
  {
    goto LABEL_11;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if (v4)
    {
      v4 = 1;
    }

    else
    {
      v5 = [*(a1 + 56) objectAtIndexedSubscript:v3];
      v6 = [v5 intValue];

      v4 = v6 == 1;
      if (v6 == 1)
      {
        v9 = 1;
      }

      else
      {
        v7 = [*(a1 + 56) objectAtIndexedSubscript:v3];
        v8 = [v7 intValue] == 2;

        v9 = 2 * v8;
      }

      v10 = [*(a1 + 48) objectAtIndexedSubscript:v3];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1C640;
      v35[3] = &unk_4D6F0;
      v11 = *(a1 + 72);
      v35[4] = *(a1 + 64);
      v36 = v11;
      v37 = v3;
      v12 = [UIAlertAction actionWithTitle:v10 style:v9 handler:v35];
      [v2 addAction:v12];
    }

    ++v3;
  }

  while ([*(a1 + 48) count] > v3);
  if (!v4)
  {
LABEL_11:
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"CANCEL" value:&stru_4E2A0 table:0];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1C6F0;
    v34[3] = &unk_4D718;
    v34[4] = *(a1 + 64);
    v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:v34];
    [v2 addAction:v15];
  }

  v16 = [v2 popoverPresentationController];
  if (v16)
  {
    v17 = [*(a1 + 64) view];
    [v16 setSourceView:v17];

    v18 = [*(a1 + 64) traitCollection];
    v19 = [v18 horizontalSizeClass];

    v20 = *(a1 + 64);
    if (v19 == &dword_0 + 1)
    {
      v21 = [v20 view];
      [v21 bounds];
      MidX = CGRectGetMidX(v38);
      v23 = [*(a1 + 64) view];
      [v23 bounds];
      [v16 setSourceRect:{MidX, CGRectGetMaxY(v39), 0.0, 0.0}];

      [v16 setPermittedArrowDirections:0];
    }

    else
    {
      v24 = [v20 traitCollection];
      v25 = [v24 layoutDirection];

      v26 = [*(a1 + 64) view];
      [v26 bounds];
      if (v25 == &dword_0 + 1)
      {
        MaxX = CGRectGetMaxX(*&v27);
        v32 = 4;
      }

      else
      {
        MaxX = CGRectGetMinX(*&v27);
        v32 = 8;
      }

      [v16 setPermittedArrowDirections:v32];
      v33 = [*(a1 + 64) view];
      [v33 bounds];
      [v16 setSourceRect:{MaxX, CGRectGetMidY(v40), 0.0, 0.0}];
    }
  }

  [*(a1 + 64) presentViewController:v2 animated:1 completion:0];
}

void sub_1C640(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1C6D8;
  v3[3] = &unk_4D6C8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

void sub_1C80C(uint64_t a1)
{
  v2 = [MSEntitlementChecker alloc];
  v3 = [*(a1 + 32) dataSource];
  v4 = [(MSEntitlementChecker *)v2 initWithDataSource:v3 requestIdentifierProvider:*(a1 + 32)];

  if ([(MSEntitlementChecker *)v4 hasEntitlement:@"com.apple.messages.private.AllowAlertPresentation"])
  {
    v5 = [*(a1 + 40) count];
    if (v5 == [*(a1 + 48) count])
    {
      v18 = [[UIButton alloc] initWithFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
      [v18 setShowsMenuAsPrimaryAction:1];
      v6 = +[NSMutableArray array];
      if ([*(a1 + 40) count])
      {
        v7 = 0;
        do
        {
          v8 = [*(a1 + 40) objectAtIndexedSubscript:v7];
          v9 = [*(a1 + 48) objectAtIndexedSubscript:v7];
          v10 = [UIImage systemImageNamed:v9];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_1CB34;
          v19[3] = &unk_4D740;
          v20 = *(a1 + 56);
          v21 = v7;
          v11 = [UIAction actionWithTitle:v8 image:v10 identifier:0 handler:v19];

          [v6 addObject:v11];
          ++v7;
        }

        while ([*(a1 + 40) count] > v7);
      }

      v12 = [UIMenu menuWithChildren:v6];
      v13 = v18;
      [v18 setMenu:v12];

      v14 = [*(a1 + 32) view];
      v15 = [*(*(a1 + 32) + 80) view];
      [v14 insertSubview:v18 below:v15];

      [v18 performPrimaryAction];
      v16 = [*(a1 + 32) contextualMenuPlacementButton];

      if (v16)
      {
        v17 = [*(a1 + 32) contextualMenuPlacementButton];
        [v17 removeFromSuperview];
      }

      [*(a1 + 32) setContextualMenuPlacementButton:v18];
    }

    else
    {
      v13 = ms_defaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_2D548((a1 + 40), (a1 + 48), v13);
      }
    }
  }

  else
  {
    v13 = ms_defaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_2D4E0();
    }
  }
}

uint64_t sub_1CB34(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

id sub_1CBE4(uint64_t a1)
{
  v2 = ms_defaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) dataSource];
    v4 = [v3 messageGUID];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "LiveBubble received _remoteViewProvidesExplicitSizeSnapshot GUID: %@", &v6, 0xCu);
  }

  return [*(*(a1 + 32) + 80) setProvidesExplicitSizeSnapshot:1];
}

id sub_1CD40(uint64_t a1)
{
  v2 = ms_defaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) dataSource];
    v4 = [v3 messageGUID];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "LiveBubble received _remoteViewNeedsSizeMatchBeforeSnapshotSwap GUID: %@", &v6, 0xCu);
  }

  return [*(*(a1 + 32) + 80) setNeedsSizeMatchBeforeSnapshotSwap:1];
}

id sub_1CE9C(uint64_t a1)
{
  v2 = ms_defaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) dataSource];
    v4 = [v3 messageGUID];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "LiveBubble received _remoteViewDidBecomeReadyForDisplay GUID: %@", &v6, 0xCu);
  }

  [*(*(a1 + 32) + 80) setReadyToDisplay:1];
  return [*(a1 + 32) endHoldingSnapshotForReason:4];
}

void sub_1D008(uint64_t a1)
{
  [*(a1 + 32) setNeedsResize:1];
  v2 = [*(a1 + 32) dataSource];
  [v2 needsResize];
}

id sub_1D4F4(uint64_t a1)
{
  [*(a1 + 32) setStaticView:0];
  v2 = *(a1 + 40);

  return [v2 setLoadingView:0];
}

void sub_1D538(id *a1)
{
  [a1[4] setAlpha:1.0];
  [a1[5] setAlpha:0.0];
  v2 = [a1[6] iconView];
  [v2 setAlpha:1.0];

  v3 = +[UIColor clearColor];
  [a1[5] setBackgroundColor:v3];

  v4 = [a1[5] layer];
  [v4 setValue:&off_4EAD8 forKeyPath:@"filters.gaussianBlur.inputRadius"];

  v5 = [a1[4] layer];
  [v5 setValue:&off_4EAA8 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

uint64_t sub_1D624(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1DD70(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1FB3C(uint64_t a1)
{
  v2 = [*(a1 + 32) isPhotosExtensionBrowser];
  v3 = ms_defaultLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(a1 + 40) length];
      v6 = @"NO";
      v7 = *(a1 + 48);
      if (*(a1 + 56))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      *buf = 134218498;
      v27 = v5;
      if (!v7)
      {
        v6 = @"YES";
      }

      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Call to _stageAssetArchive: %tu skipShelf: %@ completionHandler: %@", buf, 0x20u);
    }

    if (!qword_571E8)
    {
      qword_571E8 = IMWeakLinkClass();
    }

    v9 = objc_opt_class();
    v10 = *(a1 + 40);
    v24 = 0;
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:v9 fromData:v10 error:&v24];
    v12 = v24;
    if (v11)
    {
      if (*(a1 + 56) == 1)
      {
        v13 = [v11 browserItemPayload];
        if (v13)
        {
          v14 = objc_alloc_init(CKBrowserItemPayload);
          v25 = v13;
          v15 = [NSArray arrayWithObjects:&v25 count:1];
          [v14 setAttachments:v15];

          v16 = [*(a1 + 32) sendDelegate];
          v17 = [*(a1 + 32) balloonExtensionPlugin];
          v18 = [v17 identifier];
          [v16 commitPayload:v14 forPlugin:v18 allowAllCommits:1 completionHandler:*(a1 + 48)];

LABEL_26:
          goto LABEL_27;
        }

        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v23 = *(a1 + 40);
            *buf = 138412290;
            v27 = v23;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Failed to convert asset %@ into a CKBrowserItemPayload!", buf, 0xCu);
          }

LABEL_22:
        }
      }

      else
      {
        [*(a1 + 32) stageAssetToTransportAndNotifySendDelegate:v11];
      }

LABEL_24:
      v22 = *(a1 + 48);
      if (v22)
      {
        (*(v22 + 16))(v22, 0);
      }

      goto LABEL_26;
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_24;
    }

    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v12;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Asset package unarchive error! %@", buf, 0xCu);
    }

    goto LABEL_22;
  }

  if (v4)
  {
    v19 = [*(a1 + 32) balloonExtensionPlugin];
    v20 = [v19 identifier];
    *buf = 138412290;
    v27 = v20;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Dispatching call from %@ to Photos extension browser", buf, 0xCu);
  }

  if ([*(a1 + 32) isFromValidExtension])
  {
    v12 = [*(a1 + 32) sendDelegate];
    [v12 stageAssetArchive:*(a1 + 40) skipShelf:*(a1 + 56) completionHandler:*(a1 + 48)];
LABEL_27:
  }
}

void sub_20118(uint64_t a1)
{
  if ([*(a1 + 32) isPhotosExtensionBrowser])
  {
    v2 = [*(a1 + 32) assetExplorerTransport];
    [v2 unstagePackageWithIdentifier:*(a1 + 40) andNotify:0];

    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = ms_defaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) balloonExtensionPlugin];
      v7 = [v6 identifier];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Dispatching call from %@ to Photos extension browser", &v9, 0xCu);
    }

    if ([*(a1 + 32) isFromValidExtension])
    {
      v8 = [*(a1 + 32) sendDelegate];
      [v8 removeAssetArchiveWithIdentifier:*(a1 + 40) completionHandler:*(a1 + 48)];
    }
  }
}

id *sub_207A8(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] fetchPluginPayloadsAndClear:1];
  }

  return result;
}

void sub_21358(uint64_t a1)
{
  v2 = [CNAvatarImageRenderer alloc];
  v3 = +[CNAvatarImageRendererSettings defaultSettings];
  v4 = [v2 initWithSettings:v3];

  if ([*(a1 + 32) count])
  {
    v5 = 0;
    do
    {
      v6 = [*(a1 + 32) objectAtIndexedSubscript:v5];
      [*(a1 + 40) _addAvatarToArray:*(a1 + 48) forParticipantAddress:v6 avatarSize:v4 avatarRenderer:{*(a1 + 64), *(a1 + 72)}];

      ++v5;
    }

    while (v5 < [*(a1 + 32) count]);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_21490;
  v7[3] = &unk_4D878;
  v9 = *(a1 + 56);
  v8 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_21844(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  v5 = [v4 _sceneIdentifier];

  v6 = ms_defaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "MSMessageExtensionBalloonLiveViewController returning hostSceneIdentifier: %@", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_21C40(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 liveViewController:*(a1 + 32) requestPresentationStyle:*(a1 + 40)];
}

void sub_21D7C(uint64_t a1)
{
  v2 = [MSEntitlementChecker alloc];
  v3 = [*(a1 + 32) dataSource];
  v4 = [(MSEntitlementChecker *)v2 initWithDataSource:v3 requestIdentifierProvider:0];

  if ([(MSEntitlementChecker *)v4 hasEntitlement:@"com.apple.messages.private.AllowCustomAcknowledgements"])
  {
    v5 = [MSMessageExtensionUtilities isValidCustomAcknowledgementPayload:*(a1 + 40)];
    if (v5)
    {
      v6 = ms_defaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_2D9A0();
      }

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v22 = [*(a1 + 32) balloonPlugin];
      v7 = [v22 browserDisplayName];
      v8 = [MSMessageExtensionDataSource pluginPayloadFromCustomAcknowledgementPayload:*(a1 + 40) selectedMessage:*(a1 + 48) appName:v7 adamID:0];
      v9 = [*(a1 + 48) session];
      v10 = [*(a1 + 32) dataSource];
      v11 = [v10 message];
      v12 = [v11 session];
      v13 = [v9 isEqual:v12];

      if (v13)
      {
        v14 = [*(a1 + 32) dataSource];
        v15 = [v14 messageGUID];
        [v8 setAssociatedMessageGUID:v15];

        v16 = [*(a1 + 32) dataSource];
        v17 = [v16 sessionGUID];
        [v8 setPluginSessionGUID:v17];
      }

      v18 = [*(a1 + 32) balloonPlugin];
      v19 = [v18 extensionBundleIdentifier];
      [v8 setPluginBundleID:v19];

      v20 = [*(a1 + 32) delegate];
      v21 = *(a1 + 32);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_22064;
      v23[3] = &unk_4D8F0;
      v24 = *(a1 + 56);
      [v20 liveViewController:v21 sendCustomAcknowledgementPayload:v8 completionHandler:v23];
    }
  }

  else
  {
    v5 = ms_defaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_2D4E0();
    }
  }
}

void sub_22064(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    if ([v3 code] == &dword_0 + 1)
    {
      v4 = 9;
    }

    else if ([v6 code] == &dword_0 + 2)
    {
      v4 = 10;
    }

    else
    {
      v4 = -1;
    }

    v5 = [NSError errorWithDomain:MSMessagesErrorDomain code:v4 userInfo:0];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22854(uint64_t a1)
{
  v2 = [MSMessageExtensionUtilities isValidMessagePayload:*(a1 + 32)];
  if (v2)
  {
    v3 = ms_defaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_2DA08();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = [*(a1 + 32) layout];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = *(a1 + 40);
      v6 = v4;
      v7 = [v6 imageTitle];
      v8 = [v5 substituteNameInString:v7];
      [v6 setImageTitle:v8];

      v9 = *(a1 + 40);
      v10 = [v6 imageSubtitle];
      v11 = [v9 substituteNameInString:v10];
      [v6 setImageSubtitle:v11];

      v12 = *(a1 + 40);
      v13 = [v6 caption];
      v14 = [v12 substituteNameInString:v13];
      [v6 setCaption:v14];

      v15 = *(a1 + 40);
      v16 = [v6 subcaption];
      v17 = [v15 substituteNameInString:v16];
      [v6 setSubcaption:v17];

      v18 = *(a1 + 40);
      v19 = [v6 trailingCaption];
      v20 = [v18 substituteNameInString:v19];
      [v6 setTrailingCaption:v20];

      v21 = *(a1 + 40);
      v22 = [v6 trailingSubcaption];
      v23 = [v21 substituteNameInString:v22];
      [v6 setTrailingSubcaption:v23];
    }

    v24 = *(a1 + 40);
    v25 = [*(a1 + 32) summaryText];
    v26 = [v24 substituteNameInString:v25];
    [*(a1 + 32) setSummaryText:v26];

    v27 = *(a1 + 40);
    v28 = [*(a1 + 32) accessibilityLabel];
    v29 = [v27 substituteNameInString:v28];
    [*(a1 + 32) setAccessibilityLabel:v29];

    v30 = [*(a1 + 40) _itemPayloadFromMSMessage:*(a1 + 32)];
    if (v30)
    {
      v31 = [MSEntitlementChecker alloc];
      v32 = [*(a1 + 40) dataSource];
      v33 = [(MSEntitlementChecker *)v31 initWithDataSource:v32 requestIdentifierProvider:0];

      v34 = [(MSEntitlementChecker *)v33 hasEntitlement:@"com.apple.messages.private.BypassShelfAccess"];
      v35 = [*(a1 + 40) delegate];
      v36 = *(a1 + 56);
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_22C74;
      v39[3] = &unk_4D8F0;
      v37 = *(a1 + 40);
      v40 = *(a1 + 48);
      [v35 liveViewController:v37 stagePayload:v30 skipShelf:v36 allowAllCommits:v34 completionHandler:v39];
    }

    else
    {
      v33 = [NSError errorWithDomain:MSMessagesErrorDomain code:-1 userInfo:0];
      v38 = ms_defaultLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_2DA08();
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

void sub_22C74(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    if ([v3 code] == &dword_0 + 1)
    {
      v4 = 9;
    }

    else if ([v6 code] == &dword_0 + 2)
    {
      v4 = 10;
    }

    else
    {
      v4 = -1;
    }

    v5 = [NSError errorWithDomain:MSMessagesErrorDomain code:v4 userInfo:0];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22DF4(uint64_t a1)
{
  v2 = [MSEntitlementChecker alloc];
  v3 = [*(a1 + 32) dataSource];
  v4 = [(MSEntitlementChecker *)v2 initWithDataSource:v3 requestIdentifierProvider:0];

  v5 = [(MSEntitlementChecker *)v4 hasEntitlement:@"com.apple.messages.private.BypassShelfAccess"];
  v6 = [*(a1 + 40) isSticker];
  v7 = *(a1 + 40);
  if (!v6)
  {
    v11 = [MSMessageExtensionUtilities isValidMediaPayload:v7];
    if (v11)
    {
      v9 = v11;
      v10 = ms_defaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_2DA70();
      }

      goto LABEL_8;
    }

    v20 = [*(a1 + 40) attributionInfo];
    v21 = [*(a1 + 32) balloonExtensionPlugin];
    v22 = [v21 attributionInfo];
    v19 = [v22 mutableCopy];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = v20;
    v23 = [v15 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v39;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(v15);
          }

          v27 = *(*(&v38 + 1) + 8 * i);
          v28 = [v15 objectForKeyedSubscript:v27];
          [v19 setValue:v28 forKey:v27];
        }

        v24 = [v15 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v24);
    }

    [*(a1 + 40) setAttributionInfo:v19];
    v29 = [MSMessageExtensionDataSource pluginPayloadFromMediaPayload:*(a1 + 40)];
    if (v29)
    {
      v30 = [*(a1 + 32) delegate];
      v31 = *(a1 + 32);
      v32 = *(a1 + 56);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_23380;
      v36[3] = &unk_4D8F0;
      v37 = *(a1 + 48);
      [v30 liveViewController:v31 stagePayload:v29 skipShelf:v32 allowAllCommits:v5 completionHandler:v36];

      v33 = v37;
    }

    else
    {
      v33 = [NSError errorWithDomain:MSMessagesErrorDomain code:-1 userInfo:0];
      v35 = ms_defaultLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_2DA08();
      }

      (*(*(a1 + 48) + 16))();
    }

LABEL_27:
    (*(*(a1 + 48) + 16))();
    goto LABEL_28;
  }

  v8 = [MSMessageExtensionUtilities isValidSticker:v7];
  if (!v8)
  {
    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) balloonPlugin];
    v14 = [v13 identifier];
    v15 = [v12 convertToStickerWithExtensionIdentifier:v14];

    if (v15)
    {
      v16 = [*(a1 + 32) delegate];
      v17 = *(a1 + 32);
      v18 = *(a1 + 56);
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_232CC;
      v42[3] = &unk_4D8F0;
      v43 = *(a1 + 48);
      [v16 liveViewController:v17 stageSticker:v15 skipShelf:v18 allowAllCommits:v5 completionHandler:v42];

      v19 = v43;
    }

    else
    {
      v19 = [NSError errorWithDomain:MSMessagesErrorDomain code:-1 userInfo:0];
      v34 = ms_defaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_2DB40();
      }

      (*(*(a1 + 48) + 16))();
    }

    goto LABEL_27;
  }

  v9 = v8;
  v10 = ms_defaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_2DAD8();
  }

LABEL_8:

  (*(*(a1 + 48) + 16))();
LABEL_28:
}

void sub_232CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    if ([v3 code] == &dword_0 + 1)
    {
      v4 = 9;
    }

    else if ([v6 code] == &dword_0 + 2)
    {
      v4 = 10;
    }

    else
    {
      v4 = -1;
    }

    v5 = [NSError errorWithDomain:MSMessagesErrorDomain code:v4 userInfo:0];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_23380(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    if ([v3 code] == &dword_0 + 1)
    {
      v4 = 9;
    }

    else if ([v6 code] == &dword_0 + 2)
    {
      v4 = 10;
    }

    else
    {
      v4 = -1;
    }

    v5 = [NSError errorWithDomain:MSMessagesErrorDomain code:v4 userInfo:0];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

id sub_2384C(uint64_t a1)
{
  [*(a1 + 32) willMoveToParentViewController:0];
  [*(a1 + 40) removeFromSuperview];
  v2 = *(a1 + 32);

  return [v2 removeFromParentViewController];
}

id variable initialization expression of TouchTracker.queue()
{
  v0 = objc_allocWithZone(NSOperationQueue);

  return [v0 init];
}

uint64_t sub_24674(char a1)
{
  v2 = sub_2DC18();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2DBF8();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2DBE8();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_25BCC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24938;
  aBlock[3] = &unk_4DC08;
  v12 = _Block_copy(aBlock);

  sub_2DC08();
  sub_2DDA8();
  _Block_release(v12);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

void sub_248D8(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR___MSTouchTracker__hasTouch] = a2 & 1;
  }
}

uint64_t sub_24938(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t variable initialization expression of TouchTracker.propertyQueue()
{
  v0 = sub_2DD78();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2DC18();
  __chkstk_darwin();
  sub_2DD68();
  __chkstk_darwin();
  sub_24F70(0, &qword_56CF0);
  sub_2DD58();
  sub_2DC08();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_2DDB8();
}

id TouchTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *TouchTracker.init()()
{
  v1 = v0;
  v2 = sub_2DD78();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2DC18();
  __chkstk_darwin();
  sub_2DD68();
  __chkstk_darwin();
  v6 = OBJC_IVAR___MSTouchTracker_queue;
  *&v1[v6] = [objc_allocWithZone(NSOperationQueue) init];
  v1[OBJC_IVAR___MSTouchTracker__hasTouch] = 0;
  v7 = OBJC_IVAR___MSTouchTracker_propertyQueue;
  sub_24F70(0, &qword_56CF0);
  sub_2DD58();
  sub_2DC08();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
  *&v1[v7] = sub_2DDB8();
  v8 = type metadata accessor for TouchTracker();
  v11.receiver = v1;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, "init");
  [*&v9[OBJC_IVAR___MSTouchTracker_queue] setMaxConcurrentOperationCount:1];
  return v9;
}

Swift::Void __swiftcall TouchTracker.touchReceived()()
{
  v1 = *(v0 + OBJC_IVAR___MSTouchTracker_queue);
  if ([v1 operationCount] >= 1)
  {
    v2 = [v1 operations];
    sub_24F70(0, &qword_56D10);
    v3 = sub_2DC88();

    if (v3 >> 62)
    {
      v4 = sub_2DEA8();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v4; ++i)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = sub_2DE88();
          }

          else
          {
            v6 = *(v3 + 8 * i + 32);
          }

          v7 = v6;
          type metadata accessor for ReportTouchOperation();
          v8 = swift_dynamicCastClass();
          if (v8)
          {
            *(v8 + OBJC_IVAR____TtC31MSMessageExtensionBalloonPluginP33_34F0067A36E85448CF72AC3F6D0A6D7420ReportTouchOperation_hasTouch) = 1;
          }
        }
      }
    }

    return;
  }

  sub_24674(1);
}

uint64_t sub_24F70(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void TouchTracker.checkForTouch(completion:)(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  sub_2DD98();
  if (LOBYTE(aBlock[0]) == 1)
  {
    sub_24674(0);
    a1(1);
  }

  else
  {
    v6 = *&v2[OBJC_IVAR___MSTouchTracker_queue];
    aBlock[4] = sub_2520C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24938;
    aBlock[3] = &unk_4DAA0;
    v7 = _Block_copy(aBlock);
    [v6 addOperationWithBlock:v7];
    _Block_release(v7);
    v8 = swift_allocObject();
    *(v8 + 2) = v3;
    *(v8 + 3) = a1;
    *(v8 + 4) = a2;
    v9 = type metadata accessor for ReportTouchOperation();
    v10 = objc_allocWithZone(v9);
    v10[OBJC_IVAR____TtC31MSMessageExtensionBalloonPluginP33_34F0067A36E85448CF72AC3F6D0A6D7420ReportTouchOperation_hasTouch] = 0;
    v11 = &v10[OBJC_IVAR____TtC31MSMessageExtensionBalloonPluginP33_34F0067A36E85448CF72AC3F6D0A6D7420ReportTouchOperation_work];
    *v11 = sub_25518;
    v11[1] = v8;
    v14.receiver = v10;
    v14.super_class = v9;
    v12 = v3;

    v13 = objc_msgSendSuper2(&v14, "init");
    [v6 addOperation:v13];
  }
}

id sub_2520C()
{
  v0 = objc_opt_self();

  return [v0 sleepForTimeInterval:0.1];
}

uint64_t sub_2524C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25264(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2DBF8();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2DC18();
  v11 = *(v19 - 8);
  __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24674(0);
  sub_24F70(0, &qword_56CF0);
  v14 = sub_2DD88();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a1;
  aBlock[4] = sub_25A28;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24938;
  aBlock[3] = &unk_4DB90;
  v16 = _Block_copy(aBlock);

  sub_2DC08();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_25A58();
  sub_25640(&qword_56DF0);
  sub_25AB0();
  sub_2DE38();
  sub_2DDA8();
  _Block_release(v16);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v19);
}

id sub_255A8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_25640(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2569C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_25640(a1);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

void sub_2574C(char *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  sub_2DD98();
  if (LOBYTE(aBlock[0]) == 1)
  {
    sub_24674(0);
    a2[2](a2, 1);
  }

  else
  {
    v5 = *&a1[OBJC_IVAR___MSTouchTracker_queue];
    aBlock[4] = sub_2520C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24938;
    aBlock[3] = &unk_4DB18;
    v6 = _Block_copy(aBlock);
    [v5 addOperationWithBlock:v6];
    _Block_release(v6);
    v7 = swift_allocObject();
    *(v7 + 2) = a1;
    *(v7 + 3) = sub_25998;
    *(v7 + 4) = v4;
    v8 = type metadata accessor for ReportTouchOperation();
    v9 = objc_allocWithZone(v8);
    v9[OBJC_IVAR____TtC31MSMessageExtensionBalloonPluginP33_34F0067A36E85448CF72AC3F6D0A6D7420ReportTouchOperation_hasTouch] = 0;
    v10 = &v9[OBJC_IVAR____TtC31MSMessageExtensionBalloonPluginP33_34F0067A36E85448CF72AC3F6D0A6D7420ReportTouchOperation_work];
    *v10 = sub_25C38;
    v10[1] = v7;
    v13.receiver = v9;
    v13.super_class = v8;
    v11 = a1;

    v12 = objc_msgSendSuper2(&v13, "init");
    [v5 addOperation:v12];
  }
}

uint64_t sub_25960()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_259B0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_259F0()
{

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_25A58()
{
  result = qword_56DE8;
  if (!qword_56DE8)
  {
    sub_2DBF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56DE8);
  }

  return result;
}

unint64_t sub_25AB0()
{
  result = qword_56DF8;
  if (!qword_56DF8)
  {
    sub_25B14(&qword_56DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56DF8);
  }

  return result;
}

uint64_t sub_25B14(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25B5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_25B94()
{

  return _swift_deallocObject(v0, 25, 7);
}

void type metadata accessor for MSBalloonExtensionSnapshotHoldReason()
{
  if (!qword_56E00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_56E00);
    }
  }
}

uint64_t sub_25C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_2DCB8();
  v5[5] = sub_2DCA8();
  v7 = sub_2DC98();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_25CF8, v7, v6);
}

uint64_t sub_25CF8()
{
  v1 = *(v0 + 32);
  *(v0 + 64) = [*(v0 + 24) snapshotTracker];
  if (v1 >= 5)
  {
    v4 = *(v0 + 32);
    type metadata accessor for MSBalloonExtensionSnapshotHoldReason();
    *(v0 + 16) = v4;

    return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)(v5, v0 + 16, v5, &type metadata for Int);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_25DF4;

    return sub_285B8(v1);
  }
}

uint64_t sub_25DF4()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_270BC, v3, v2);
}

uint64_t sub_25F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_2DCB8();
  v5[5] = sub_2DCA8();
  v7 = sub_2DC98();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_25FF0, v7, v6);
}

uint64_t sub_25FF0()
{
  v1 = *(v0 + 32);
  *(v0 + 64) = [*(v0 + 24) snapshotTracker];
  if (v1 >= 5)
  {
    v4 = *(v0 + 32);
    type metadata accessor for MSBalloonExtensionSnapshotHoldReason();
    *(v0 + 16) = v4;

    return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)(v5, v0 + 16, v5, &type metadata for Int);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_260EC;

    return sub_28904(v1);
  }
}

uint64_t sub_260EC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_26230, v3, v2);
}

uint64_t sub_26230()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_262B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25640(&qword_570B0);
  __chkstk_darwin();
  v9 = &v14 - v8;
  v10 = sub_2DCD8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_2DCB8();
  v11 = a1;
  v12 = sub_2DCA8();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  v13[5] = a3;
  sub_270C0(0, 0, v9, a5, v13);
}

uint64_t sub_263E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_25640(&qword_56D30);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_25640(&unk_56ED0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = sub_2DCB8();
  v4[16] = sub_2DCA8();
  v8 = sub_2DC98();
  v4[17] = v8;
  v4[18] = v7;

  return _swift_task_switch(sub_26554, v8, v7);
}

uint64_t sub_26554()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong snapshotTracker];
    *(v0 + 152) = v3;

    return _swift_task_switch(sub_2664C, v3, 0);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2664C()
{
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_statusStream;
  v3 = *(v1 + OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_statusStream);
  if (!v3)
  {
    v4 = v0[9];
    v5 = v0[10];
    type metadata accessor for SnapshotStatusSequence(0);
    v3 = swift_allocObject();
    v6 = OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin22SnapshotStatusSequence_continuation;
    v7 = sub_25640(&qword_56D28);
    (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
    (*(v5 + 56))(v3 + OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin22SnapshotStatusSequence____lazy_storage___stream, 1, 1, v4);
    *(v1 + v2) = v3;
  }

  v0[20] = v3;

  v8 = v0[17];
  v9 = v0[18];

  return _swift_task_switch(sub_2678C, v8, v9);
}

uint64_t sub_2678C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_276D4(v1);
  sub_2DD08();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = sub_2DCA8();
  v0[21] = v4;
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_268AC;
  v6 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v0 + 23, v4, &protocol witness table for MainActor, v6);
}

uint64_t sub_268AC()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_269F0, v3, v2);
}

uint64_t sub_269F0()
{
  v1 = *(v0 + 184);
  if (v1 == 2)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (v1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        [Strong removeSnapshot];
      }
    }

    v6 = sub_2DCA8();
    *(v0 + 168) = v6;
    v7 = swift_task_alloc();
    *(v0 + 176) = v7;
    *v7 = v0;
    v7[1] = sub_268AC;
    v8 = *(v0 + 96);

    return AsyncStream.Iterator.next(isolation:)(v0 + 184, v6, &protocol witness table for MainActor, v8);
  }
}

uint64_t sub_26CD0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_26D08()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_26D48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_270B8;

  return sub_263E8(a1, v4, v5, v6);
}

uint64_t sub_26DFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26EBC;

  return sub_25F58(a1, v4, v5, v7, v6);
}

uint64_t sub_26EBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26FB4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_26FF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_270B8;

  return sub_25C60(a1, v4, v5, v7, v6);
}

uint64_t sub_270C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25640(&qword_570B0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_2BD38(a3, v24 - v9, &qword_570B0);
  v11 = sub_2DCD8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2BB20(v10, &qword_570B0);
  }

  else
  {
    sub_2DCC8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2DC98();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2DC68() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_2BB20(a3, &qword_570B0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2BB20(a3, &qword_570B0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_273C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_25640(&qword_570B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_2BD38(a3, v25 - v10, &qword_570B0);
  v12 = sub_2DCD8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2BB20(v11, &qword_570B0);
  }

  else
  {
    sub_2DCC8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2DC98();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2DC68() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_25640(&qword_570B8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_2BB20(a3, &qword_570B0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2BB20(a3, &qword_570B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_25640(&qword_570B8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_276D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25640(&qword_570E8);
  v4 = *(v3 - 8);
  (__chkstk_darwin)();
  v6 = &v16[-v5];
  sub_25640(&qword_56EF8);
  v7 = (__chkstk_darwin)();
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v16[-v10];
  v12 = OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin22SnapshotStatusSequence____lazy_storage___stream;
  swift_beginAccess();
  sub_2BD38(v1 + v12, v11, &qword_56EF8);
  v13 = sub_25640(&qword_56D30);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return (*(v14 + 32))(a1, v11, v13);
  }

  sub_2BB20(v11, &qword_56EF8);
  swift_allocObject();
  swift_weakInit();
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  sub_2DD28();

  (*(v14 + 16))(v9, a1, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2BDA8(v9, v1 + v12, &qword_56EF8);
  return swift_endAccess();
}

uint64_t sub_279DC(uint64_t a1)
{
  sub_25640(&qword_56EE0);
  __chkstk_darwin();
  v3 = &v9[-v2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_25640(&qword_56D28);
    v7 = *(v6 - 8);
    (*(v7 + 16))(v3, a1, v6);
    (*(v7 + 56))(v3, 0, 1, v6);
    v8 = OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin22SnapshotStatusSequence_continuation;
    swift_beginAccess();
    sub_2BDA8(v3, v5 + v8, &qword_56EE0);
    swift_endAccess();
  }

  return result;
}

uint64_t SnapshotStatusSequence.makeAsyncIterator()()
{
  v0 = sub_25640(&qword_56D30);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_276D4(&v5 - v2);
  sub_2DD08();
  return (*(v1 + 8))(v3, v0);
}

Swift::Void __swiftcall SnapshotStatusSequence.close()()
{
  v1 = sub_25640(&qword_56D28);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = sub_25640(&qword_56EE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  v8 = OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin22SnapshotStatusSequence_continuation;
  swift_beginAccess();
  sub_2BD38(v0 + v8, v7, &qword_56EE0);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_2BB20(v7, &qword_56EE0);
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_2BB20(v7, &qword_56EE0);
    sub_2DCF8();
    (*(v2 + 8))(v4, v1);
  }
}

uint64_t SnapshotStatusSequence.deinit()
{
  sub_2BB20(v0 + OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin22SnapshotStatusSequence_continuation, &qword_56EE0);
  sub_2BB20(v0 + OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin22SnapshotStatusSequence____lazy_storage___stream, &qword_56EF8);
  return v0;
}

uint64_t SnapshotStatusSequence.__deallocating_deinit()
{
  sub_2BB20(v0 + OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin22SnapshotStatusSequence_continuation, &qword_56EE0);
  sub_2BB20(v0 + OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin22SnapshotStatusSequence____lazy_storage___stream, &qword_56EF8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_27F14()
{
  v0 = sub_25640(&qword_56D30);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_276D4(&v5 - v2);
  sub_2DD08();
  (*(v1 + 8))(v3, v0);
}

Swift::Int sub_2801C()
{
  v1 = *v0;
  sub_2DED8();
  sub_2DEE8(v1);
  return sub_2DEF8();
}

Swift::Int sub_28090()
{
  v1 = *v0;
  sub_2DED8();
  sub_2DEE8(v1);
  return sub_2DEF8();
}

uint64_t MSExtensionViewLoadingTracker.deinit()
{
  v1 = v0;
  v2 = sub_25640(&qword_56D28);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = sub_25640(&qword_56EE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_statusStream);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin22SnapshotStatusSequence_continuation;
    swift_beginAccess();
    sub_2BD38(v9 + v10, v8, &qword_56EE0);
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_2BB20(v8, &qword_56EE0);
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);

      sub_2BB20(v8, &qword_56EE0);
      sub_2DCF8();

      (*(v3 + 8))(v5, v2);
    }
  }

  v11 = OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_logger;
  v12 = sub_2DBC8();
  (*(*(v12 - 8) + 8))(v1 + v11, v12);

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v1;
}

uint64_t MSExtensionViewLoadingTracker.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_25640(&qword_56D28);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = sub_25640(&qword_56EE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_statusStream);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin22SnapshotStatusSequence_continuation;
    swift_beginAccess();
    sub_2BD38(v9 + v10, v8, &qword_56EE0);
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_2BB20(v8, &qword_56EE0);
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);

      sub_2BB20(v8, &qword_56EE0);
      sub_2DCF8();

      (*(v3 + 8))(v5, v2);
    }
  }

  v11 = OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_logger;
  v12 = sub_2DBC8();
  (*(*(v12 - 8) + 8))(v1 + v11, v12);

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_285B8(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 72) = a1;
  return _swift_task_switch(sub_285DC, v1, 0);
}

uint64_t sub_285DC()
{
  v29 = v0;

  v1 = sub_2DBA8();
  v2 = sub_2DD48();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 72);
    v4 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v4 = 136315394;
    *(v0 + 16) = v3;
    v5 = sub_2DC58();
    v7 = sub_2A724(v5, v6, &v28);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    swift_beginAccess();
    sub_2BB80();

    v8 = sub_2DD38();
    v10 = v9;

    v11 = sub_2A724(v8, v10, &v28);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_0, v1, v2, "Holding live view for reason: %s existing holds: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 64);
  v13 = *(v0 + 72);
  v14 = OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_reasons;
  swift_beginAccess();
  sub_2ACCC(&v27, v13);
  result = swift_endAccess();
  if (v13 > 1)
  {
    v18 = 0;
    v19 = *(v12 + v14);
    v20 = -1 << *(v19 + 32);
    if (-v20 < 64)
    {
      v21 = ~(-1 << -v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v19 + 56);
    v23 = (63 - v20) >> 6;
    while (v22)
    {
      v24 = v18;
LABEL_16:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      if (*(*(v19 + 48) + (v25 | (v24 << 6))) < 2u)
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      v24 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v24 >= v23)
      {
        sub_28ECC();
        goto LABEL_20;
      }

      v22 = *(v19 + 56 + 8 * v24);
      ++v18;
      if (v22)
      {
        v18 = v24;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = *(v0 + 64);
    v17 = OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_timer;
    if (*(v16 + OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_timer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_2DDF8();
      swift_unknownObjectRelease();
    }

    *(v16 + v17) = 0;
    swift_unknownObjectRelease();
LABEL_20:
    v26 = *(v0 + 8);

    return v26();
  }

  return result;
}

uint64_t sub_28904(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_28928, v1, 0);
}

void sub_28928()
{
  v25 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_reasons;
  v3 = *(v0 + 48);
  swift_beginAccess();
  sub_2B4C0(v3);
  swift_endAccess();

  v4 = sub_2DBA8();
  v5 = sub_2DD48();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v7 = 136315394;
    *(v0 + 16) = v6;
    v8 = sub_2DC58();
    v10 = sub_2A724(v8, v9, &v24);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    sub_2BB80();

    v11 = sub_2DD38();
    v13 = v12;

    v14 = sub_2A724(v11, v13, &v24);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_0, v4, v5, "Stop holding live view for reason: %s remaining holds: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *(v1 + v2);
  if (*(v15 + 16))
  {
    v16 = 0;
    v17 = -1 << *(v15 + 32);
    if (-v17 < 64)
    {
      v18 = ~(-1 << -v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v15 + 56);
    v20 = (63 - v17) >> 6;
    while (v19)
    {
      v21 = v16;
LABEL_14:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      if (*(*(v15 + 48) + (v22 | (v21 << 6))) < 2u)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return;
      }

      if (v21 >= v20)
      {
        break;
      }

      v19 = *(v15 + 56 + 8 * v21);
      ++v16;
      if (v19)
      {
        v16 = v21;
        goto LABEL_14;
      }
    }

    if (!*(*(v0 + 40) + OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_timer))
    {
      sub_28ECC();
    }
  }

  else
  {
    sub_28BFC(0);
  }

LABEL_19:
  v23 = *(v0 + 8);

  v23();
}

uint64_t sub_28BFC(char a1)
{
  v3 = sub_25640(&qword_56D28);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-v5];
  v7 = sub_25640(&qword_56EE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18[-v8];
  v10 = sub_25640(&qword_570C0);
  result = __chkstk_darwin(v10 - 8);
  v13 = &v18[-v12];
  v14 = *(v1 + OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_statusStream);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin22SnapshotStatusSequence_continuation;
    swift_beginAccess();
    sub_2BD38(v14 + v15, v9, &qword_56EE0);
    if ((*(v4 + 48))(v9, 1, v3))
    {
      sub_2BB20(v9, &qword_56EE0);
      v16 = 1;
    }

    else
    {
      (*(v4 + 16))(v6, v9, v3);

      sub_2BB20(v9, &qword_56EE0);
      v18[6] = 1;
      v18[7] = a1 & 1;
      sub_2DCE8();

      (*(v4 + 8))(v6, v3);
      v16 = 0;
    }

    v17 = sub_25640(&qword_570C8);
    (*(*(v17 - 8) + 56))(v13, v16, 1, v17);
    return sub_2BB20(v13, &qword_570C0);
  }

  return result;
}

uint64_t sub_28ECC()
{
  v1 = sub_2DBF8();
  v38 = *(v1 - 8);
  v39 = v1;
  __chkstk_darwin(v1);
  v36 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2DC18();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2DBD8();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = __chkstk_darwin(v4);
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v34 - v7;
  v46 = sub_2DC38();
  v41 = *(v46 - 8);
  v8 = __chkstk_darwin(v46);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = &v34 - v11;
  v12 = sub_2DDC8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_timer;
  v48 = v0;
  if (*(v0 + OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_timer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2DDF8();
    swift_unknownObjectRelease();
  }

  sub_24F70(0, &unk_57080);
  sub_24F70(0, &qword_56CF0);
  v16 = sub_2DD88();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_2A3B0(&qword_57090, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_25640(&qword_57098);
  sub_2A3F8(&unk_570A0, &qword_57098);
  sub_2DE38();
  v17 = sub_2DDD8();

  (*(v13 + 8))(v15, v12);
  *(v48 + v47) = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  sub_2DC28();
  v18 = v40;
  sub_2DC48();
  v41 = *(v41 + 8);
  (v41)(v10, v46);
  v20 = v44;
  v19 = v45;
  v21 = *(v44 + 104);
  v22 = v42;
  v21(v42, enum case for DispatchTimeInterval.never(_:), v45);
  v23 = v43;
  *v43 = 0;
  v21(v23, enum case for DispatchTimeInterval.nanoseconds(_:), v19);
  sub_2DE18();
  swift_unknownObjectRelease();
  v24 = *(v20 + 8);
  v24(v23, v19);
  v25 = v22;
  v26 = v47;
  v24(v25, v19);
  v27 = v18;
  v28 = v48;
  result = (v41)(v27, v46);
  if (*(v28 + v26))
  {
    swift_getObjectType();
    v30 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2A390;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24938;
    aBlock[3] = &unk_4DE28;
    v31 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v32 = v34;
    sub_2DC08();
    v33 = v36;
    sub_29B54();
    sub_2DDE8();
    _Block_release(v31);
    swift_unknownObjectRelease();
    (*(v38 + 8))(v33, v39);
    (*(v35 + 8))(v32, v37);

    if (*(v28 + v26))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_2DE08();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_295A8(uint64_t a1)
{
  v2 = sub_25640(&qword_570B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_2DCD8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_273C0(0, 0, v4, &unk_38158, v6);
}

uint64_t sub_296B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  v5 = sub_25640(&qword_56D28);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  sub_25640(&qword_56EE0);
  v4[13] = swift_task_alloc();
  sub_25640(&qword_570C0);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_297F0, 0, 0);
}

uint64_t sub_297F0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_298D0, Strong, 0);
  }

  else
  {
    **(v0 + 64) = 1;

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_298D0()
{
  v1 = *(*(v0 + 120) + OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_statusStream);
  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin22SnapshotStatusSequence_continuation;
    swift_beginAccess();
    sub_2BD38(v1 + v5, v2, &qword_56EE0);
    if ((*(v4 + 48))(v2, 1, v3))
    {
      sub_2BB20(*(v0 + 104), &qword_56EE0);
      v6 = 1;
    }

    else
    {
      v7 = *(v0 + 104);
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v10 = *(v0 + 80);
      (*(v9 + 16))(v8, v7, v10);

      sub_2BB20(v7, &qword_56EE0);
      *(v0 + 128) = 257;
      sub_2DCE8();

      (*(v9 + 8))(v8, v10);
      v6 = 0;
    }

    v11 = *(v0 + 112);
    v12 = sub_25640(&qword_570C8);
    (*(*(v12 - 8) + 56))(v11, v6, 1, v12);
    sub_2BB20(v11, &qword_570C0);
  }

  return _swift_task_switch(sub_29AD0, 0, 0);
}

uint64_t sub_29AD0()
{
  **(v0 + 64) = *(v0 + 120) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29B54()
{
  sub_2DBF8();
  sub_2A3B0(&qword_56DE8, &type metadata accessor for DispatchWorkItemFlags);
  sub_25640(&qword_56DF0);
  sub_2A3F8(&qword_56DF8, &qword_56DF0);
  return sub_2DE38();
}

id MSExtensionViewLoadingTracker.init()()
{
  swift_defaultActor_initialize();
  sub_2DBB8();
  *&v0[OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_statusStream] = 0;
  *&v0[OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_reasons] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker_timer] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSExtensionViewLoadingTracker(0);
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t getEnumTagSinglePayload for ExtensionLoadingStatus(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ExtensionLoadingStatus(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_29F50(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29F88()
{
  sub_2A080(319, &qword_56F68, &qword_56D28);
  if (v0 <= 0x3F)
  {
    sub_2A080(319, &unk_56F70, &qword_56D30);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2A080(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_25B14(a3);
    v4 = sub_2DE28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2A0DC()
{
  result = sub_2DBC8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MSExtensionViewLoadingTracker.HoldReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MSExtensionViewLoadingTracker.HoldReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2A304()
{
  result = qword_57078;
  if (!qword_57078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_57078);
  }

  return result;
}

uint64_t sub_2A358()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2A398(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2A3B0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2A3F8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_25B14(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2A440()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2A480(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26EBC;

  return sub_296B4(a1, v4, v5, v6);
}

uint64_t sub_2A534(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2A62C;

  return v6(a1);
}

uint64_t sub_2A62C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2A724(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2A7F0(v11, 0, 0, 1, a1, a2);
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
    sub_2BC20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2BBD4(v11);
  return v7;
}

unint64_t sub_2A7F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2A8FC(a5, a6);
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
    result = sub_2DE98();
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

char *sub_2A8FC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2A948(a1, a2);
  sub_2AA78(&off_4DA78);
  return v3;
}

char *sub_2A948(uint64_t a1, unint64_t a2)
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

  v6 = sub_2AB64(v5, 0);
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

  result = sub_2DE98();
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
        v10 = sub_2DC78();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2AB64(v10, 0);
        result = sub_2DE78();
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

uint64_t sub_2AA78(uint64_t result)
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

  result = sub_2ABD8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_2AB64(uint64_t a1, uint64_t a2)
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

  sub_25640(&qword_570D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2ABD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_25640(&qword_570D8);
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

uint64_t sub_2ACCC(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  sub_2DED8();
  sub_2DEE8(a2);
  v6 = sub_2DEF8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2B014(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2ADC4()
{
  v1 = v0;
  v2 = *v0;
  sub_25640(&qword_570E0);
  result = sub_2DE68();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_2DED8();
      sub_2DEE8(v16);
      result = sub_2DEF8();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int sub_2B014(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2ADC4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2B160();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2B2A0();
  }

  v8 = *v3;
  sub_2DED8();
  sub_2DEE8(v4);
  result = sub_2DEF8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2DEC8();
  __break(1u);
  return result;
}

void *sub_2B160()
{
  v1 = v0;
  sub_25640(&qword_570E0);
  v2 = *v0;
  v3 = sub_2DE58();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_2B2A0()
{
  v1 = v0;
  v2 = *v0;
  sub_25640(&qword_570E0);
  result = sub_2DE68();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_2DED8();
      sub_2DEE8(v15);
      result = sub_2DEF8();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2B4C0(unsigned __int8 a1)
{
  v3 = *v1;
  sub_2DED8();
  sub_2DEE8(a1);
  v4 = sub_2DEF8();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 6;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 6;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2B160();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_2B5C8(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_2B5C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2DE48();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_2DED8();
        sub_2DEE8(v10);
        v11 = sub_2DEF8() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2B770(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2B864;

  return v5(v2 + 32);
}

uint64_t sub_2B864()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2B978()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2B9B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_270B8;

  return sub_2B770(a1, v4);
}

uint64_t sub_2BA68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26EBC;

  return sub_2B770(a1, v4);
}

uint64_t sub_2BB20(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25640(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2BB80()
{
  result = qword_570D0;
  if (!qword_570D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_570D0);
  }

  return result;
}

uint64_t sub_2BBD4(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2BC20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2BC80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_270B8;

  return sub_2A534(a1, v4);
}

uint64_t sub_2BD38(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_25640(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2BDA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_25640(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_2C104()
{
  sub_E5C0();
  v1 = [v0 balloonPlugin];
  v2 = [v1 identifier];
  sub_E540();
  sub_E578(&dword_0, v3, v4, "%s %@ %@", v5, v6, v7, v8, 2u);
}

void sub_2C1CC()
{
  sub_E5C0();
  v1 = [v0 balloonPlugin];
  v2 = [v1 identifier];
  sub_E540();
  sub_E578(&dword_0, v3, v4, "%s %@ %@", v5, v6, v7, v8, 2u);
}

void sub_2C294()
{
  sub_E5C0();
  v1 = [v0 balloonPlugin];
  v2 = [v1 identifier];
  sub_E540();
  sub_E578(&dword_0, v3, v4, "%s %@ %@", v5, v6, v7, v8, 2u);
}

void sub_2C35C()
{
  sub_E5C0();
  v1 = [v0 balloonPlugin];
  v2 = [v1 identifier];
  sub_E540();
  sub_E578(&dword_0, v3, v4, "%s %@ %@", v5, v6, v7, v8, 2u);
}

void sub_2CDD0()
{
  sub_E5B4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "INVALID SHOW BROWSER REQUEST FROM PLUGIN %@ TO SHOW PLUGIN %@", v2, 0x16u);
}

void sub_2CE68(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "LiveBubble. Failed to get remote view controller: %@", &v3, 0xCu);
}

void sub_2CEE4(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "LiveBubble. Remote View Controller is not of type _MSMessageExtensionRemoteViewController: %@", &v3, 0xCu);
}

void sub_2CF60(os_log_t log)
{
  v1 = 136315138;
  v2 = "[_MSRemoteBalloonViewController _sendResignActiveMessage]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%s", &v1, 0xCu);
}

void sub_2CFE4(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "+[MSMessageExtensionDataSource associatedMessagePayloadsFromAssociatedPluginPayloads:]";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%s: Failed to create associated message payload.", buf, 0xCu);
}

void sub_2D034(void *a1, NSObject *a2)
{
  v3 = 136315394;
  v4 = "+[MSMessageExtensionDataSource associatedMessagePayloadsFromAssociatedPluginPayloads:]";
  v5 = 2048;
  v6 = [a1 count];
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "%s: Created associated message payload with %lu payloads", &v3, 0x16u);
}

void sub_2D230(void *a1, _DWORD *a2)
{
  *a2 = 136315394;
  v2 = sub_178DC(a1, a2, "+[MSMessageExtensionDataSource _associatedMessagePayloadFromPluginPayload:]");
  sub_178FC(&dword_0, v3, v4, "%s: Missing or invalid sessionUUID: %@");
}

void sub_2D290(void *a1, _DWORD *a2)
{
  *a2 = 136315394;
  v2 = sub_178DC(a1, a2, "+[MSMessageExtensionDataSource _associatedMessagePayloadFromPluginPayload:]");
  sub_178FC(&dword_0, v3, v4, "%s: Missing or invalid payloadURL: %@");
}

void sub_2D548(id *a1, id *a2, NSObject *a3)
{
  v5 = [*a1 count];
  v6 = [*a2 count];
  v7 = 134218240;
  v8 = v5;
  v9 = 2048;
  v10 = v6;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "MSMessageExtensionBalloonLiveViewController mismatched count four button titles(%lu) and images(%lu)", &v7, 0x16u);
}

void sub_2D5FC(void *a1, NSObject *a2)
{
  v3 = [a1 identifier];
  sub_E5B4();
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "LiveBubble. Plugin extension loaded. bundleID: %@", v4, 0xCu);
}

void sub_2D704(void *a1, NSObject *a2)
{
  v3 = [a1 dataSource];
  v4 = [v3 messageGUID];
  sub_E5B4();
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "LiveBubble. View has not yet been added to a window when trying to set the remote balloon view. messageGUID: %@", v5, 0xCu);
}

void sub_2D7B0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to unarchive linkMetadata. Error: %@", &v2, 0xCu);
}

void sub_2D828(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed unarchiving data for transcoding. Error %@", &v2, 0xCu);
}

void sub_2D8E4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "restoreDraftStateFromPayload: did not restore all payload attachments because some were not of type CKBrowserItemPayload: %@", &v2, 0xCu);
}