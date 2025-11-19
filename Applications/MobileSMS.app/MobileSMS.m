uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = dispatch_get_global_queue(25, 0);
  dispatch_async(v5, &stru_1000311D8);

  v6 = [[NSURLCache alloc] initWithMemoryCapacity:0 diskCapacity:0 diskPath:0];
  [NSURLCache setSharedURLCache:v6];
  IMSetEmbeddedTempDirectory();
  v7 = +[IMImagePreviewGenerator UTITypes];
  v8 = [v7 mutableCopy];

  v9 = +[IMAnimatedImagePreviewGenerator UTITypes];
  [v8 addObjectsFromArray:v9];

  CGImageSourceSetAllowableTypes();
  UIApplicationMain(a1, a2, @"SMSApplication", @"SMSApplicationDelegate");

  objc_autoreleasePoolPop(v4);
  return 0;
}

void sub_100001644(id a1)
{
  IMPrewarmXPCInterfaces();
  v1 = +[IMSuggestionsService sharedInstance];
  v2 = +[IMMobileNetworkManager sharedInstance];
  IMIsSupportedUTIType();
  v3 = +[IMHandleRegistrar sharedInstance];
  v4 = +[IMParentalControls standardControls];
  v5 = +[IMSystemMonitor sharedInstance];
  v6 = +[FTEntitlementSupport sharedInstance];
  v7 = +[FTDeviceSupport sharedInstance];
  +[CKFaceTimeUtilities initializeCachedValues];
  v8 = [IDSServerBag sharedInstanceForBagType:1];
}

void sub_100001D28(id a1)
{
  qword_10003A1B0 = os_log_create("com.apple.Messages", "SMSApplicationDelegate");

  _objc_release_x1();
}

void sub_100001E2C(void *a1)
{
  v1 = a1;
  if (qword_10003A128)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    v4 = 0;
    v5 = 0;
    if (sub_10001C554(qword_10003A128, &v6, &v4))
    {
      v2 = v1;
      v3 = getpid();
      NSLog(@"%@, performance counters: pid: %u, context switchings: %d, CPU-time: %llu, memory footprint min/max/avg(K): %llu %llu %llu, memory sample count: %u, leak count/size(K): %llu %llu", v2, v3, (DWORD2(v7) - v6), v8 + *(&v8 + 1) - (*(&v6 + 1) + v7), v9 >> 10, *(&v9 + 1) >> 10, v10 >> 10, DWORD2(v10), v4, v5 >> 10);
    }

    qword_10003A128 = 0;
  }
}

void sub_100002168(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:1];

  v3 = dispatch_time(0, 4000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002230;
  block[3] = &unk_1000309C0;
  v5 = *(a1 + 48);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_100002230(uint64_t a1)
{
  v1 = [*(a1 + 32) valueForKey:@"processCount"];
  v2 = [@"/AppleInternal/XCTests/com.apple.mobilesms/screenshotTest.xctest" lastPathComponent];
  v3 = [v2 stringByDeletingPathExtension];

  v4 = [NSString stringWithFormat:@"MobileSMS invoking App test for %@\n", @"/AppleInternal/XCTests/com.apple.mobilesms/screenshotTest.xctest"];
  v5 = [NSString stringWithFormat:@"%@_image%@", v3, v1];

  +[SMSScreenshotUIImages captureScreenshot];
  [SMSScreenshotUIImages saveImage:objc_claimAutoreleasedReturnValue() filePath:@"/tmp/" fileName:v5 withHeader:v4];
  exit(0);
}

uint64_t sub_100002724(uint64_t a1)
{
  if ([*(a1 + 32) runTestNameOrFallback:*(a1 + 40)])
  {
    return 1;
  }

  v2 = kShowMessagesTest;
  if ([*(a1 + 40) rangeOfString:kShowMessagesTest] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", kShowMessagesExtendedTest) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"ScrollConversations") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"ScrollTranscript") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"StaticTranscript") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"Rotat") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"Present") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", kShowPeoplePickerTest) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", kSelectContactPeoplePickerTest) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", kCancelPeoplePickerTest) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", kShowNewComposeTest) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"ResolveContact") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"Photo") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", kThrowAnimationPPTTestNamePrefix) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"ScrollPseudoContactNames") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"ComposeToPseudoContact") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"DetailsView") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"AudioReply") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"InvisibleInkStaticFPSTest") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"AudioWaveformFPSTest") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"GifPlaybackStaticFPSTest") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"StickerDragFPSTest") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"ExtensionLaunch") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"ExtensionTest") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"perfTestPushTranscriptToAppsShelf") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"perfTestScrollAppsDrawer") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"TestPriorityBoosting") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", CKAudioBalloonPlaybackPPTName) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", CKPluginChatItemPPTName) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"TestMarkAsRead") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"Resize") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"MacResize") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"MacActivate") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfString:", @"MacEnterExitFullscreen") == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) rangeOfString:@"Nano"];
    return 1;
  }

  v3 = [*(a1 + 40) rangeOfString:@"Landscape"] == 0x7FFFFFFFFFFFFFFFLL ? 1 : 3;
  if ([UIApp rotateIfNeeded:v3])
  {
    return 1;
  }

  if ([*(a1 + 40) rangeOfString:v2] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(*(a1 + 40), "rangeOfString:", kShowMessagesExtendedTest) != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) startShowMessagesTest:*(a1 + 48)];
    return 1;
  }

  if ([*(a1 + 40) rangeOfString:kShowPeoplePickerTest] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = *(a1 + 32);
    v7 = "startShowPeoplePickerTest:";
LABEL_63:
    [v6 performSelector:v7 withObject:*(a1 + 48) afterDelay:1.0];
    return 1;
  }

  if ([*(a1 + 40) rangeOfString:kCancelPeoplePickerTest] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = *(a1 + 32);
    v7 = "startCancelPeoplePickerTest:";
    goto LABEL_63;
  }

  if ([*(a1 + 40) rangeOfString:kSelectContactPeoplePickerTest] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = *(a1 + 32);
    v7 = "startSelectContactPeoplePickerTest:";
    goto LABEL_63;
  }

  if ([*(a1 + 40) rangeOfString:kShowNewComposeTest] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = *(a1 + 32);
    v7 = "startShowNewComposeTest:";
    goto LABEL_63;
  }

  if ([*(a1 + 40) rangeOfString:kResolveContactExistingConvTest] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(*(a1 + 40), "rangeOfString:", kResolveContactNewConvTest) != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) startResolveContactTest:*(a1 + 48)];
    return 1;
  }

  if ([*(a1 + 40) rangeOfString:@"ComposeToPseudoContact"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = *(a1 + 32);
    v7 = "startComposeMessageToPseudoContactTest:";
    goto LABEL_63;
  }

  if ([*(a1 + 40) rangeOfString:@"ScrollConversations"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) startScrollConversationsTest:*(a1 + 48)];
    return 1;
  }

  if ([*(a1 + 40) rangeOfString:@"ScrollTranscript"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) startScrollTranscriptTest:*(a1 + 48)];
    return 1;
  }

  v4 = [*(a1 + 40) rangeOfString:@"StaticTranscript"];
  v5 = *(a1 + 40);
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v5 rangeOfString:@"FSM"];
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v10 startStaticTranscriptFPSTest:v11];
    }

    else
    {
      [v10 startStaticFSMFPSTest:v11];
    }

    return 1;
  }

  if ([v5 rangeOfString:CKAudioBalloonPlaybackPPTName] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) startAudioBalloonPlaybackTest:*(a1 + 48)];
    return 1;
  }

  if ([*(a1 + 40) rangeOfString:@"ScrollPseudoContactNames"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) startScrollPseudoContactNamesTest:*(a1 + 48)];
    return 1;
  }

  if ([*(a1 + 40) rangeOfString:@"Rotation"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) startRotationTest:*(a1 + 48)];
    return 1;
  }

  if ([*(a1 + 40) isEqualToString:@"InvisibleInkStaticFPSTest"])
  {
    [*(a1 + 32) startInvisibleInkStaticFPSTest];
    return 1;
  }

  if ([*(a1 + 40) isEqualToString:@"AudioWaveformFPSTest"])
  {
    [*(a1 + 32) startAudioWaveformFPSTest];
    return 1;
  }

  if ([*(a1 + 40) isEqualToString:@"GifPlaybackStaticFPSTest"])
  {
    [*(a1 + 32) startGifPlaybackStaticFPSTest];
    return 1;
  }

  if ([*(a1 + 40) isEqualToString:@"RotateTranscript"])
  {
    [*(a1 + 32) startRotationTestWithTranscript:*(a1 + 48)];
    return 1;
  }

  v12 = [*(a1 + 40) rangeOfString:@"Photo"];
  v13 = *(a1 + 40);
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [v13 rangeOfString:kThrowAnimationPPTTestNamePrefix];
    v15 = *(a1 + 40);
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [v15 rangeOfString:@"NewCompose"];
      v17 = *(a1 + 32);
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v17 startSendAnimationExistingTest];
      }

      else
      {
        [v17 startSendAnimationNewComposeTest:*(a1 + 48)];
      }

      return 1;
    }

    if ([v15 rangeOfString:@"DetailsView"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 32) startDetailsTest:*(a1 + 48)];
      return 1;
    }

    if ([*(a1 + 40) rangeOfString:@"AudioReply"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 32) startStuckAudioPillTest:*(a1 + 48)];
      return 1;
    }

    if ([*(a1 + 40) rangeOfString:@"PresentKeyboardTest"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 32) startKeyboardPresentationTest:*(a1 + 48)];
      return 1;
    }

    if ([*(a1 + 40) rangeOfString:@"PresentKeyboardResponsivenessTest"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 32) startKeyboardResponsivenessTest:*(a1 + 48)];
      return 1;
    }

    if ([*(a1 + 40) rangeOfString:@"PresentQuicklookTest"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 32) startQuicklookPresentationTest:*(a1 + 48)];
      return 1;
    }

    if ([*(a1 + 40) rangeOfString:@"StickerDragFPSTest"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 32) startInteractiveStickerDragTest:*(a1 + 48)];
      return 1;
    }

    if ([*(a1 + 40) rangeOfString:@"ExtensionLaunch"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([*(a1 + 40) rangeOfString:@"ExtensionTest"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([*(a1 + 40) rangeOfString:@"TestPriorityBoosting"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([*(a1 + 40) rangeOfString:CKPluginChatItemPPTName] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([*(a1 + 40) rangeOfString:@"TestMarkAsReadLocally"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ([*(a1 + 40) rangeOfString:@"TestMarkAsReadReceived"] == 0x7FFFFFFFFFFFFFFFLL)
              {
                if ([*(a1 + 40) rangeOfString:@"Resize"] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  if ([*(a1 + 40) rangeOfString:@"MacResize"] == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if ([*(a1 + 40) rangeOfString:@"MacActivate"] == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      if ([*(a1 + 40) rangeOfString:@"MacEnterExitFullscreen"] != 0x7FFFFFFFFFFFFFFFLL)
                      {
                        [*(a1 + 32) startMacFullscreenTestWithOptions:*(a1 + 48)];
                      }
                    }

                    else
                    {
                      [*(a1 + 32) startMacActivateTestWithOptions:*(a1 + 48)];
                    }
                  }

                  else
                  {
                    [*(a1 + 32) startMacResizeTestWithOptions:*(a1 + 48)];
                  }
                }

                else
                {
                  [*(a1 + 32) startResizeTestWithOptions:*(a1 + 48)];
                }
              }

              else
              {
                [*(a1 + 32) startMarkAsReadReceivedTestWithOptions:*(a1 + 48)];
              }
            }

            else
            {
              [*(a1 + 32) startMarkAsReadLocallyTestWithOptions:*(a1 + 48)];
            }
          }

          else
          {
            [*(a1 + 32) startLiveBubbleLoadingTest:qword_10003A120];
          }
        }

        else
        {
          [*(a1 + 32) startPriorityBoostingTestWithOptions:*(a1 + 48)];
        }

        return 1;
      }

      v18 = *(a1 + 32);
      v19 = *(a1 + 48);
      v20 = 0;
    }

    else
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 48);
      v20 = 1;
    }

    [v18 startExtensionTest:v19 launch:v20];
    return 1;
  }

  if ([v13 isEqualToString:@"ScrollPhotoPicker"])
  {
    [*(a1 + 32) scrollPhotoPickerTestWithOptions:*(a1 + 48)];
  }

  return 1;
}

void sub_100003574(uint64_t a1)
{
  v2 = +[CKConversationList sharedConversationList];
  v3 = [v2 conversationForExistingChatWithChatIdentifier:*(a1 + 32)];

  if (v3)
  {
    v4 = +[CKDraftManager sharedInstance];
    [v4 setDraft:0 forConversation:v3];

    v5 = +[CKDraftManager sharedInstance];
    [v5 saveCompositionAndFlushCache:1];

    v6 = *(a1 + 40);
    v7 = +[NSNotificationCenter defaultCenter];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000036FC;
    v10[3] = &unk_100030A38;
    v11 = *(a1 + 48);
    [v6 installNotificationObserverForNotificationName:v7 notificationName:@"PPTDidShowConversationEvent" forOneNotification:1 usingBlock:v10];

    v8 = *(a1 + 56);
    if (v8)
    {
      (*(v8 + 16))();
    }

    v9 = [*(a1 + 40) messagesController];
    [v9 showConversation:v3 animate:1];
  }

  else
  {
    [*(a1 + 40) startedTest:__CurrentTestName];
    [*(a1 + 40) failedTest:__CurrentTestName];
  }
}

uint64_t sub_1000036FC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100003844(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_1000038FC(uint64_t a1)
{
  v2 = +[UIDevice __ck_currentDeviceIsPadOrMac];
  v3 = [*(a1 + 32) messagesController];
  v5 = v3;
  if (v2)
  {
    [v3 _hideConversationListForIPadPPTTest];

    v4 = *(a1 + 32);

    [v4 didShowTranscriptList];
  }

  else
  {
    [v3 showConversationListWithAnimation:*(a1 + 40)];
  }
}

id sub_100003E78()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10003A180;
  v7 = qword_10003A180;
  if (!qword_10003A180)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100018828;
    v3[3] = &unk_100031018;
    v3[4] = &v4;
    sub_100018828(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100003F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100003F58()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10003A190;
  v7 = qword_10003A190;
  if (!qword_10003A190)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000189E8;
    v3[3] = &unk_100031018;
    v3[4] = &v4;
    sub_1000189E8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100004020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004880(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [*(a1 + 32) indexPathForCell:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    NSLog(@"SHANA - trnscript cells %@ - index path %@", v9, v6);
    v7 = [*(a1 + 40) collectionViewController];
    v8 = [v9 balloonView];
    [v7 balloonViewTapped:v8 withModifierFlags:0 selectedText:0];

    *a4 = 1;
  }
}

void sub_100004AB4(uint64_t a1)
{
  v2 = [*(a1 + 32) entryView];
  [v2 performSelector:"audioReplyButtonStart:" withObject:0];

  v3 = dispatch_time(0, 1000000000);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004B84;
  v6[3] = &unk_100030B00;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  dispatch_after(v3, &_dispatch_main_q, v6);
}

void sub_100004B84(uint64_t a1)
{
  v2 = [*(a1 + 32) entryView];
  [v2 performSelector:"audioReplyButtonStop:" withObject:0];

  v3 = dispatch_time(0, 1000000000);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004C54;
  v6[3] = &unk_100030B00;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  dispatch_after(v3, &_dispatch_main_q, v6);
}

void sub_100004C54(uint64_t a1)
{
  v2 = [*(a1 + 32) entryView];
  [v2 touchUpInsideSendButton:0];

  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004D04;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 40);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_100004EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004F08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100004F20(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showNewMessageCompositionPanelWithRecipients:*(a1 + 40) composition:*(a1 + 48) animated:1];

  v3 = dispatch_time(0, 1000000000);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004FD8;
  v5[3] = &unk_100030B50;
  v4 = *(a1 + 56);
  v5[4] = *(a1 + 32);
  v5[5] = v4;
  dispatch_after(v3, &_dispatch_main_q, v5);
}

void sub_100004FD8(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 composeChatController];
  v4 = [v3 entryView];
  [v4 touchUpInsideSendButton:0];

  v5 = dispatch_time(0, 2000000000);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000050B0;
  v6[3] = &unk_100030B50;
  v7 = *(a1 + 32);
  dispatch_after(v5, &_dispatch_main_q, v6);
}

void sub_1000050B0(uint64_t a1)
{
  [*(a1 + 32) showTranscriptListNotAnimated];
  v2 = dispatch_time(0, 2000000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000514C;
  v3[3] = &unk_100030B50;
  v4 = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, v3);
}

void sub_10000514C(uint64_t a1)
{
  [*(a1 + 32) sendAudioMessage];
  v2 = dispatch_time(0, 5000000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000051EC;
  v3[3] = &unk_100030B28;
  v4 = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, v3);
}

void sub_1000051EC(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 chatController];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [*(a1 + 32) validateTranscriptVendingIAV:*(*(*(a1 + 40) + 8) + 40) expected:1 withResultsDictionary:v6];
  v8 = v7 & [*(a1 + 32) validateEntryViewIsFirstResponder:*(*(*(a1 + 40) + 8) + 40) expected:0 withResultsDictionary:v6];
  v9 = [*(a1 + 32) validateNonzeroTranscriptInsets:*(*(*(a1 + 40) + 8) + 40) expected:1 withResultsDictionary:v6];
  v10 = v8 & v9 & [*(a1 + 32) validateBottomInsetGreaterThanIAVHeight:*(*(*(a1 + 40) + 8) + 40) expected:0 withResultsDictionary:v6];
  v11 = v10 & [*(a1 + 32) validateIAVisExpanded:*(*(*(a1 + 40) + 8) + 40) expected:0 withResultsDictionary:v6];
  v12 = [*(a1 + 32) validateTranscriptIsScrolledToBottom:*(*(*(a1 + 40) + 8) + 40) expected:1 withResultsDictionary:v6];
  v13 = *(a1 + 32);
  if ((v11 & v12) != 0)
  {
    v14 = @":D";
  }

  else
  {
    v14 = CFSTR(":(");
  }

  [*(a1 + 32) _recordResult:v11 & v12 forKey:@"|--All Tests Passed--|" comment:v14 resultsDictionary:v6];
  v15 = dispatch_time(0, 1000000000);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000053BC;
  v17[3] = &unk_100030B00;
  v17[4] = *(a1 + 32);
  v18 = v6;
  v16 = v6;
  dispatch_after(v15, &_dispatch_main_q, v17);
}

id sub_1000053BC(uint64_t a1)
{
  [*(a1 + 32) deleteTopChat];
  v2 = __CurrentTestName;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 finishedTest:v2 extraResults:v4];
}

void sub_100005544(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Test Alert" value:&stru_100031A40 table:0];
  v4 = [UIAlertController alertControllerWithTitle:0 message:v3 preferredStyle:1];

  v5 = [*(a1 + 32) messagesController];
  [v5 presentViewController:v4 animated:1 completion:0];

  v6 = dispatch_time(0, 2000000000);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005680;
  v8[3] = &unk_100030B00;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v7;
  dispatch_after(v6, &_dispatch_main_q, v8);
}

void sub_100005680(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:0];

  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005734;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 32);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_100005734(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v9 = [v2 chatController];

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [*(a1 + 32) validateTranscriptVendingIAV:v9 expected:1 withResultsDictionary:v3];
  v5 = v4 & [*(a1 + 32) validateTranscriptControllerIsFirstResponder:v9 expected:1 withResultsDictionary:v3];
  v6 = [*(a1 + 32) validateTranscriptIsScrolledToBottom:v9 expected:1 withResultsDictionary:v3];
  v7 = *(a1 + 32);
  if ((v5 & v6) != 0)
  {
    v8 = @":D";
  }

  else
  {
    v8 = CFSTR(":(");
  }

  [*(a1 + 32) _recordResult:v5 & v6 forKey:@"|--All Tests Passed--|" comment:v8 resultsDictionary:v3];
  [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v3];
}

void sub_100005978(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:0];

  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005A2C;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 32);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_100005A2C(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 chatController];

  [v3 performSelector:"actionMenuGestureRecognizerButtonGestureDidBegin:" withObject:0];
  v4 = dispatch_time(0, 2000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005B18;
  v7[3] = &unk_100030B00;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_after(v4, &_dispatch_main_q, v7);
}

void sub_100005B18(uint64_t a1)
{
  [UIApp rotateIfNeeded:4];
  v2 = dispatch_time(0, 2000000000);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005BD8;
  v5[3] = &unk_100030B00;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_after(v2, &_dispatch_main_q, v5);
}

void sub_100005BD8(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005C84;
  v5[3] = &unk_100030B00;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_after(v2, &_dispatch_main_q, v5);
}

void sub_100005C84(uint64_t a1)
{
  v2 = [*(a1 + 32) entryView];
  [v2 performSelector:"actionMenuGestureRecognizerButtonGestureDidBegin:" withObject:0];

  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005D60;
  block[3] = &unk_100030B00;
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_100005D60(uint64_t a1)
{
  v6 = objc_alloc_init(NSMutableDictionary);
  v2 = [*(a1 + 32) validateTranscriptVendingIAV:*(a1 + 40) expected:1 withResultsDictionary:v6];
  v3 = [*(a1 + 32) validateActionMenuWindowOrientationExpectedOrientation:4 withResultsDictionary:v6];
  v4 = *(a1 + 32);
  if ((v2 & v3) != 0)
  {
    v5 = @":D";
  }

  else
  {
    v5 = CFSTR(":(");
  }

  [*(a1 + 32) _recordResult:v2 & v3 forKey:@"|--All Tests Passed--|" comment:v5 resultsDictionary:v6];
  [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v6];
}

void sub_100005EA8(uint64_t a1)
{
  v2 = +[CKConversationList sharedConversationList];
  v6 = [v2 conversations];

  v3 = qword_10003A158;
  v4 = [v6 count] + 1;
  v5 = *(a1 + 32);
  if (v3 == v4)
  {
    [v5 finishedTest:__CurrentTestName];
  }

  else
  {
    [v5 failedTest:__CurrentTestName withFailure:@"conversation count not the same"];
  }
}

void sub_1000062E0(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v1 = [v2 conversationListController];
  [v1 batchDeleteButtonTapped:0];
}

void sub_10000665C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1000065E8);
  }

  _Unwind_Resume(a1);
}

void sub_100006790(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = *(a1 + 32);
  v3 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [v2 mapSectionIdentifierForCurrentConversationListClass:6]);
  [v2 deleteChat:v3];
}

void sub_100006904(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = +[CKConversationList sharedConversationList];
  v3 = [v2 conversations];

  v4 = [v3 count];
  v5 = *(a1 + 32);
  if (!v4)
  {
    [v5 failedTest:__CurrentTestName withFailure:@"No conversations in conversation list"];
    goto LABEL_11;
  }

  v6 = [v5 messagesController];
  v7 = [v6 chatController];

  v8 = +[CKConversationList sharedConversationList];
  v9 = [v8 conversationForExistingChatWithChatIdentifier:*(a1 + 40)];

  v10 = [*(a1 + 32) messagesController];
  if ([v10 isCollapsed])
  {
    goto LABEL_8;
  }

  v11 = [v7 conversation];
  if (v9 != v11 || [v3 count] < 3)
  {
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  v12 = *(a1 + 48);

  if (v12 == 1)
  {
    v10 = +[CKConversationList sharedConversationList];
    [v10 conversationForExistingChatWithChatIdentifier:@"+14087240720"];
    v9 = v11 = v9;
    goto LABEL_7;
  }

LABEL_9:
  v13 = +[CKDraftManager sharedInstance];
  [v13 setDraft:0 forConversation:v9];

  v14 = +[CKDraftManager sharedInstance];
  [v14 saveCompositionAndFlushCache:1];

  v15 = [*(a1 + 32) messagesController];
  [v15 showConversation:v9 animate:1];

  v16 = [*(a1 + 32) messagesController];
  v17 = [v16 chatController];

  v18 = dispatch_time(0, 1000000000);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100006B7C;
  v20[3] = &unk_100030B00;
  v20[4] = *(a1 + 32);
  v21 = v17;
  v19 = v17;
  dispatch_after(v18, &_dispatch_main_q, v20);

LABEL_11:
}

void sub_100006B7C(uint64_t a1)
{
  v11 = objc_alloc_init(NSMutableDictionary);
  v2 = [*(a1 + 32) validateTranscriptVendingIAV:*(a1 + 40) expected:1 withResultsDictionary:v11];
  v3 = v2 & [*(a1 + 32) validateEntryViewIsFirstResponder:*(a1 + 40) expected:0 withResultsDictionary:v11];
  v4 = [*(a1 + 32) validateNonzeroTranscriptInsets:*(a1 + 40) expected:1 withResultsDictionary:v11];
  v5 = v3 & v4 & [*(a1 + 32) validateBottomInsetGreaterThanIAVHeight:*(a1 + 40) expected:0 withResultsDictionary:v11];
  v6 = [*(a1 + 32) validateIAVisExpanded:*(a1 + 40) expected:0 withResultsDictionary:v11];
  v7 = v5 & v6 & [*(a1 + 32) validateTranscriptIsScrolledToBottom:*(a1 + 40) expected:1 withResultsDictionary:v11];
  v8 = [*(a1 + 32) validateTranscriptPreviewCacheHasResumed:*(a1 + 40) expected:1 withResultsDictionary:v11];
  v9 = *(a1 + 32);
  if ((v7 & v8) != 0)
  {
    v10 = @":D";
  }

  else
  {
    v10 = CFSTR(":(");
  }

  [*(a1 + 32) _recordResult:v7 & v8 forKey:@"|--All Tests Passed--|" comment:v10 resultsDictionary:v11];
  [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v11];
}

void sub_100006DFC(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v13 = [v2 chatController];

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [*(a1 + 32) validateTranscriptVendingIAV:v13 expected:1 withResultsDictionary:v3];
  v5 = v4 & [*(a1 + 32) validateEntryViewIsFirstResponder:v13 expected:1 withResultsDictionary:v3];
  v6 = [*(a1 + 32) validateNonzeroTranscriptInsets:v13 expected:1 withResultsDictionary:v3];
  v7 = v5 & v6 & [*(a1 + 32) validateBottomInsetGreaterThanIAVHeight:v13 expected:1 withResultsDictionary:v3];
  v8 = [*(a1 + 32) validateIAVisExpanded:v13 expected:0 withResultsDictionary:v3];
  v9 = v7 & v8 & [*(a1 + 32) validateTranscriptIsScrolledToBottom:v13 expected:1 withResultsDictionary:v3];
  v10 = [*(a1 + 32) validateTranscriptPreviewCacheHasResumed:v13 expected:1 withResultsDictionary:v3];
  v11 = *(a1 + 32);
  if ((v9 & v10) != 0)
  {
    v12 = @":D";
  }

  else
  {
    v12 = CFSTR(":(");
  }

  [*(a1 + 32) _recordResult:v9 & v10 forKey:@"|--All Tests Passed--|" comment:v12 resultsDictionary:v3];
  [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v3];
}

void sub_100006FFC(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = +[CKConversationList sharedConversationList];
  v3 = [v2 conversations];

  v4 = [v3 count];
  v5 = *(a1 + 32);
  if (!v4)
  {
    [v5 failedTest:__CurrentTestName withFailure:@"No conversations in conversation list"];
    goto LABEL_10;
  }

  v6 = [v5 messagesController];
  v7 = [v6 chatController];

  v8 = +[CKConversationList sharedConversationList];
  v9 = [v8 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

  v10 = [*(a1 + 32) messagesController];
  if ([v10 isCollapsed])
  {
    goto LABEL_7;
  }

  v11 = [v7 conversation];
  if (v9 != v11)
  {
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  v12 = [v3 count];

  if (v12 >= 3)
  {
    v10 = +[CKConversationList sharedConversationList];
    [v10 conversationForExistingChatWithChatIdentifier:@"+14087240720"];
    v9 = v11 = v9;
    goto LABEL_6;
  }

LABEL_8:
  v13 = [NSAttributedString alloc];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Test Draft!" value:&stru_100031A40 table:0];
  v16 = [v13 initWithString:v15];

  v17 = [[CKComposition alloc] initWithText:v16 subject:0];
  v18 = +[CKDraftManager sharedInstance];
  [v18 setDraft:v17 forConversation:v9];

  v19 = +[CKDraftManager sharedInstance];
  [v19 saveCompositionAndFlushCache:1];

  v20 = [*(a1 + 32) messagesController];
  [v20 showConversation:v9 animate:1];

  v21 = [*(a1 + 32) messagesController];
  v22 = [v21 chatController];

  v23 = dispatch_time(0, 2000000000);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000072F0;
  v25[3] = &unk_100030B00;
  v25[4] = *(a1 + 32);
  v26 = v22;
  v24 = v22;
  dispatch_after(v23, &_dispatch_main_q, v25);

LABEL_10:
}

void sub_1000072F0(uint64_t a1)
{
  v9 = objc_alloc_init(NSMutableDictionary);
  v2 = [*(a1 + 32) validateTranscriptVendingIAV:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v3 = v2 & [*(a1 + 32) validateNonzeroTranscriptInsets:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v4 = v3 & [*(a1 + 32) validateTranscriptIsScrolledToBottom:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v5 = [*(a1 + 32) messagesController];
  v6 = [v5 isCollapsed];

  if (v6)
  {
    v7 = [*(a1 + 32) validateEntryViewIsFirstResponder:*(a1 + 40) expected:1 withResultsDictionary:v9];
    v4 = v4 & v7 & [*(a1 + 32) validateBottomInsetGreaterThanIAVHeight:*(a1 + 40) expected:1 withResultsDictionary:v9];
  }

  if (v4)
  {
    v8 = @":D";
  }

  else
  {
    v8 = CFSTR(":(");
  }

  [*(a1 + 32) _recordResult:v4 forKey:@"|--All Tests Passed--|" comment:v8 resultsDictionary:v9];
  [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v9];
}

void sub_1000074A8(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = +[CKConversationList sharedConversationList];
  v3 = [v2 conversations];

  v4 = [v3 count];
  v5 = *(a1 + 32);
  if (!v4)
  {
    [v5 failedTest:__CurrentTestName withFailure:@"No conversations in conversation list"];
    goto LABEL_10;
  }

  v6 = [v5 messagesController];
  v7 = [v6 chatController];

  v8 = +[CKConversationList sharedConversationList];
  v9 = [v8 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

  v10 = [*(a1 + 32) messagesController];
  if ([v10 isCollapsed])
  {
    goto LABEL_7;
  }

  v11 = [v7 conversation];
  if (v9 != v11)
  {
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  v12 = [v3 count];

  if (v12 >= 3)
  {
    v10 = +[CKConversationList sharedConversationList];
    [v10 conversationForExistingChatWithChatIdentifier:@"+14087240720"];
    v9 = v11 = v9;
    goto LABEL_6;
  }

LABEL_8:
  v13 = [NSAttributedString alloc];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"This is a test draft that is very long so that it may expand the entry view." value:&stru_100031A40 table:0];
  v16 = [v13 initWithString:v15];

  v17 = [[CKComposition alloc] initWithText:v16 subject:0];
  v18 = +[CKDraftManager sharedInstance];
  [v18 setDraft:v17 forConversation:v9];

  v19 = +[CKDraftManager sharedInstance];
  [v19 saveCompositionAndFlushCache:0];

  v20 = [*(a1 + 32) messagesController];
  [v20 showConversation:v9 animate:1];

  v21 = [*(a1 + 32) messagesController];
  v22 = [v21 chatController];

  v23 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000077B0;
  block[3] = &unk_1000309E8;
  v24 = *(a1 + 32);
  v28 = v22;
  v29 = v24;
  v30 = v9;
  v25 = v9;
  v26 = v22;
  dispatch_after(v23, &_dispatch_main_q, block);

LABEL_10:
}

void sub_1000077B0(uint64_t a1)
{
  [*(a1 + 32) dismissKeyboard];
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007884;
  block[3] = &unk_1000309E8;
  v4 = *(a1 + 32);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  v7 = *(a1 + 48);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_100007884(uint64_t a1)
{
  v12 = objc_alloc_init(NSMutableDictionary);
  v2 = [*(a1 + 32) validateTranscriptVendingIAV:*(a1 + 40) expected:1 withResultsDictionary:v12];
  v3 = v2 & [*(a1 + 32) validateNonzeroTranscriptInsets:*(a1 + 40) expected:1 withResultsDictionary:v12];
  v4 = [*(a1 + 32) validateTranscriptIsScrolledToBottom:*(a1 + 40) expected:1 withResultsDictionary:v12];
  v5 = v3 & v4 & [*(a1 + 32) validateIAVisExpanded:*(a1 + 40) expected:0 withResultsDictionary:v12];
  v6 = [*(a1 + 32) messagesController];
  v7 = [v6 isCollapsed];

  if (v7)
  {
    v8 = [*(a1 + 32) validateEntryViewIsFirstResponder:*(a1 + 40) expected:0 withResultsDictionary:v12];
    v5 = v5 & v8 & [*(a1 + 32) validateBottomInsetGreaterThanIAVHeight:*(a1 + 40) expected:0 withResultsDictionary:v12];
  }

  if (v5)
  {
    v9 = @":D";
  }

  else
  {
    v9 = CFSTR(":(");
  }

  [*(a1 + 32) _recordResult:v5 forKey:@"|--All Tests Passed--|" comment:v9 resultsDictionary:v12];
  v10 = +[CKDraftManager sharedInstance];
  [v10 setDraft:0 forConversation:*(a1 + 48)];

  v11 = +[CKDraftManager sharedInstance];
  [v11 saveCompositionAndFlushCache:1];

  [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v12];
}

void sub_100007A94(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = +[CKConversationList sharedConversationList];
  v3 = [v2 conversations];

  v4 = [v3 count];
  v5 = *(a1 + 32);
  if (!v4)
  {
    [v5 failedTest:__CurrentTestName withFailure:@"No conversations in conversation list"];
    goto LABEL_10;
  }

  v6 = [v5 messagesController];
  v7 = [v6 chatController];

  v8 = +[CKConversationList sharedConversationList];
  v9 = [v8 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

  v10 = [*(a1 + 32) messagesController];
  if ([v10 isCollapsed])
  {
    goto LABEL_7;
  }

  v11 = [v7 conversation];
  if (v9 != v11)
  {
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  v12 = [v3 count];

  if (v12 >= 3)
  {
    v10 = +[CKConversationList sharedConversationList];
    [v10 conversationForExistingChatWithChatIdentifier:@"+14087240720"];
    v9 = v11 = v9;
    goto LABEL_6;
  }

LABEL_8:
  v13 = +[CKDraftManager sharedInstance];
  [v13 setDraft:0 forConversation:v9];

  v14 = +[CKDraftManager sharedInstance];
  [v14 saveCompositionAndFlushCache:1];

  v15 = [*(a1 + 32) messagesController];
  [v15 showConversation:v9 animate:1];

  v16 = [*(a1 + 32) messagesController];
  v17 = [v16 chatController];

  v18 = dispatch_time(0, 1000000000);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100007D08;
  v21[3] = &unk_100030B00;
  v19 = *(a1 + 32);
  v22 = v17;
  v23 = v19;
  v20 = v17;
  dispatch_after(v18, &_dispatch_main_q, v21);

LABEL_10:
}

void sub_100007D08(uint64_t a1)
{
  [*(a1 + 32) performSelector:"_detailsButtonPressed" withObject:0];
  v2 = dispatch_time(0, 2000000000);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007DC8;
  v5[3] = &unk_100030B00;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_after(v2, &_dispatch_main_q, v5);
}

void sub_100007DC8(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 popToRootViewControllerAnimated:1];

  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007EA4;
  block[3] = &unk_100030B00;
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  dispatch_after(v4, &_dispatch_main_q, block);
}

void sub_100007EA4(uint64_t a1)
{
  v10 = objc_alloc_init(NSMutableDictionary);
  v2 = [*(a1 + 32) validateTranscriptVendingIAV:*(a1 + 40) expected:1 withResultsDictionary:v10];
  v3 = v2 & [*(a1 + 32) validateIAVisExpanded:*(a1 + 40) expected:0 withResultsDictionary:v10];
  v4 = [*(a1 + 32) validateEntryViewIsFirstResponder:*(a1 + 40) expected:0 withResultsDictionary:v10];
  v5 = v3 & v4 & [*(a1 + 32) validateNonzeroTranscriptInsets:*(a1 + 40) expected:1 withResultsDictionary:v10];
  v6 = v5 & [*(a1 + 32) validateBottomInsetGreaterThanIAVHeight:*(a1 + 40) expected:0 withResultsDictionary:v10];
  v7 = [*(a1 + 32) validateTranscriptIsScrolledToBottom:*(a1 + 40) expected:1 withResultsDictionary:v10];
  v8 = *(a1 + 32);
  if ((v6 & v7) != 0)
  {
    v9 = @":D";
  }

  else
  {
    v9 = CFSTR(":(");
  }

  [*(a1 + 32) _recordResult:v6 & v7 forKey:@"|--All Tests Passed--|" comment:v9 resultsDictionary:v10];
  [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v10];
}

void sub_10000804C(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = +[CKConversationList sharedConversationList];
  v3 = [v2 conversations];

  v4 = [v3 count];
  v5 = *(a1 + 32);
  if (!v4)
  {
    [v5 failedTest:__CurrentTestName withFailure:@"No conversations in conversation list"];
    goto LABEL_10;
  }

  v6 = [v5 messagesController];
  v7 = [v6 chatController];

  v8 = +[CKConversationList sharedConversationList];
  v9 = [v8 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

  v10 = [*(a1 + 32) messagesController];
  if ([v10 isCollapsed])
  {
    goto LABEL_7;
  }

  v11 = [v7 conversation];
  if (v9 != v11)
  {
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  v12 = [v3 count];

  if (v12 >= 3)
  {
    v10 = +[CKConversationList sharedConversationList];
    [v10 conversationForExistingChatWithChatIdentifier:@"+14087240720"];
    v9 = v11 = v9;
    goto LABEL_6;
  }

LABEL_8:
  v13 = +[CKDraftManager sharedInstance];
  [v13 setDraft:0 forConversation:v9];

  v14 = +[CKDraftManager sharedInstance];
  [v14 saveCompositionAndFlushCache:1];

  v15 = [*(a1 + 32) messagesController];
  [v15 showConversation:v9 animate:1];

  v16 = [*(a1 + 32) messagesController];
  v17 = [v16 chatController];

  v18 = dispatch_time(0, 1000000000);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000082C0;
  v21[3] = &unk_100030B00;
  v19 = *(a1 + 32);
  v22 = v17;
  v23 = v19;
  v20 = v17;
  dispatch_after(v18, &_dispatch_main_q, v21);

LABEL_10:
}

void sub_1000082C0(uint64_t a1)
{
  [*(a1 + 32) showKeyboardForReply];
  v2 = dispatch_time(0, 1000000000);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008374;
  v5[3] = &unk_100030B00;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_after(v2, &_dispatch_main_q, v5);
}

void sub_100008374(uint64_t a1)
{
  [*(a1 + 32) performSelector:"_detailsButtonPressed" withObject:0];
  v2 = dispatch_time(0, 2000000000);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008434;
  v5[3] = &unk_100030B00;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_after(v2, &_dispatch_main_q, v5);
}

void sub_100008434(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 presentedViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  v4 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008524;
  block[3] = &unk_100030B00;
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  dispatch_after(v4, &_dispatch_main_q, block);
}

void sub_100008524(uint64_t a1)
{
  v10 = objc_alloc_init(NSMutableDictionary);
  v2 = [*(a1 + 32) validateTranscriptVendingIAV:*(a1 + 40) expected:1 withResultsDictionary:v10];
  v3 = v2 & [*(a1 + 32) validateIAVisExpanded:*(a1 + 40) expected:0 withResultsDictionary:v10];
  v4 = [*(a1 + 32) validateNonzeroTranscriptInsets:*(a1 + 40) expected:1 withResultsDictionary:v10];
  v5 = v3 & v4 & [*(a1 + 32) validateBottomInsetGreaterThanIAVHeight:*(a1 + 40) expected:1 withResultsDictionary:v10];
  v6 = v5 & [*(a1 + 32) validateTranscriptIsScrolledToBottom:*(a1 + 40) expected:1 withResultsDictionary:v10];
  v7 = [*(a1 + 32) validateEntryViewIsFirstResponder:*(a1 + 40) expected:1 withResultsDictionary:v10];
  v8 = *(a1 + 32);
  if ((v6 & v7) != 0)
  {
    v9 = @":D";
  }

  else
  {
    v9 = CFSTR(":(");
  }

  [*(a1 + 32) _recordResult:v6 & v7 forKey:@"|--All Tests Passed--|" comment:v9 resultsDictionary:v10];
  [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v10];
}

void sub_100008774(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneController];
  v3 = [v2 messagesSceneDelegate];

  v4 = [v3 madridRegistrationController];
  [v3 setShouldShowRegistrationOverride:0];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:IMAccountControllerOperationalAccountsChangedNotification object:0];

  v6 = [v4 completionBlock];
  v6[2](v6, 1);

  v7 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000088A4;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 32);
  dispatch_after(v7, &_dispatch_main_q, block);
}

void sub_1000088A4(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v6 = [v2 presentedViewController];

  if (v6)
  {
    v3 = *(a1 + 32);
    v4 = __CurrentTestName;
    v5 = [NSString stringWithFormat:@"Still presenting %@", v6];
    [v3 failedTest:v4 withFailure:v5];
  }

  else
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    [*(a1 + 32) _recordAllTestsPassed:1 resultsDictionary:v5];
    [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v5];
  }
}

void sub_100008A24(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = +[CKConversationList sharedConversationList];
  v3 = [v2 conversations];

  v4 = [v3 count];
  v5 = *(a1 + 32);
  if (!v4)
  {
    [v5 failedTest:__CurrentTestName withFailure:@"No conversations in conversation list"];
    goto LABEL_10;
  }

  v6 = [v5 messagesController];
  v7 = [v6 chatController];

  v8 = +[CKConversationList sharedConversationList];
  v9 = [v8 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

  v10 = [*(a1 + 32) messagesController];
  if ([v10 isCollapsed])
  {
    goto LABEL_7;
  }

  v11 = [v7 conversation];
  if (v9 != v11)
  {
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  v12 = [v3 count];

  if (v12 >= 3)
  {
    v10 = +[CKConversationList sharedConversationList];
    [v10 conversationForExistingChatWithChatIdentifier:@"+14087240720"];
    v9 = v11 = v9;
    goto LABEL_6;
  }

LABEL_8:
  v13 = +[CKDraftManager sharedInstance];
  [v13 setDraft:0 forConversation:v9];

  v14 = +[CKDraftManager sharedInstance];
  [v14 saveCompositionAndFlushCache:1];

  v15 = [*(a1 + 32) messagesController];
  [v15 showConversation:v9 animate:1];

  v16 = [*(a1 + 32) messagesController];
  v17 = [v16 chatController];

  v18 = dispatch_time(0, 1000000000);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100008C98;
  v20[3] = &unk_100030B00;
  v20[4] = *(a1 + 32);
  v21 = v17;
  v19 = v17;
  dispatch_after(v18, &_dispatch_main_q, v20);

LABEL_10:
}

void sub_100008C98(uint64_t a1)
{
  [UIApp rotateIfNeeded:3];
  v2 = dispatch_time(0, 1000000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100008D58;
  v4[3] = &unk_100030B00;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, &_dispatch_main_q, v4);
}

void sub_100008D58(uint64_t a1)
{
  v9 = objc_alloc_init(NSMutableDictionary);
  v2 = [*(a1 + 32) validateTranscriptVendingIAV:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v3 = v2 & [*(a1 + 32) validateNonzeroTranscriptInsets:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v4 = [*(a1 + 32) validateBottomInsetGreaterThanIAVHeight:*(a1 + 40) expected:0 withResultsDictionary:v9];
  v5 = v3 & v4 & [*(a1 + 32) validateTranscriptIsScrolledToBottom:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v6 = [*(a1 + 32) validateEntryViewIsFirstResponder:*(a1 + 40) expected:0 withResultsDictionary:v9];
  v7 = *(a1 + 32);
  if ((v5 & v6) != 0)
  {
    v8 = @":D";
  }

  else
  {
    v8 = CFSTR(":(");
  }

  [*(a1 + 32) _recordResult:v5 & v6 forKey:@"|--All Tests Passed--|" comment:v8 resultsDictionary:v9];
  [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v9];
}

void sub_100008EEC(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = +[CKConversationList sharedConversationList];
  v3 = [v2 conversations];

  v4 = [v3 count];
  v5 = *(a1 + 32);
  if (!v4)
  {
    [v5 failedTest:__CurrentTestName withFailure:@"No conversations in conversation list"];
    goto LABEL_10;
  }

  v6 = [v5 messagesController];
  v7 = [v6 chatController];

  v8 = +[CKConversationList sharedConversationList];
  v9 = [v8 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

  v10 = [*(a1 + 32) messagesController];
  if ([v10 isCollapsed])
  {
    goto LABEL_7;
  }

  v11 = [v7 conversation];
  if (v9 != v11)
  {
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  v12 = [v3 count];

  if (v12 >= 3)
  {
    v10 = +[CKConversationList sharedConversationList];
    [v10 conversationForExistingChatWithChatIdentifier:@"+14087240720"];
    v9 = v11 = v9;
    goto LABEL_6;
  }

LABEL_8:
  v13 = +[CKDraftManager sharedInstance];
  [v13 setDraft:0 forConversation:v9];

  v14 = +[CKDraftManager sharedInstance];
  [v14 saveCompositionAndFlushCache:1];

  v15 = [*(a1 + 32) messagesController];
  [v15 showConversation:v9 animate:1];

  v16 = [*(a1 + 32) messagesController];
  v17 = [v16 chatController];

  v18 = dispatch_time(0, 1000000000);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100009160;
  v21[3] = &unk_100030B00;
  v19 = *(a1 + 32);
  v22 = v17;
  v23 = v19;
  v20 = v17;
  dispatch_after(v18, &_dispatch_main_q, v21);

LABEL_10:
}

void sub_100009160(uint64_t a1)
{
  [*(a1 + 32) showKeyboardForReply];
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009220;
  block[3] = &unk_100030B00;
  v4 = *(a1 + 32);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_100009220(uint64_t a1)
{
  [UIApp rotateIfNeeded:3];
  v2 = dispatch_time(0, 1000000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000092E0;
  v4[3] = &unk_100030B00;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, &_dispatch_main_q, v4);
}

void sub_1000092E0(uint64_t a1)
{
  v9 = objc_alloc_init(NSMutableDictionary);
  v2 = [*(a1 + 32) validateTranscriptVendingIAV:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v3 = v2 & [*(a1 + 32) validateNonzeroTranscriptInsets:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v4 = [*(a1 + 32) validateBottomInsetGreaterThanIAVHeight:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v5 = v3 & v4 & [*(a1 + 32) validateTranscriptIsScrolledToBottom:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v6 = [*(a1 + 32) validateEntryViewIsFirstResponder:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v7 = *(a1 + 32);
  if ((v5 & v6) != 0)
  {
    v8 = @":D";
  }

  else
  {
    v8 = CFSTR(":(");
  }

  [*(a1 + 32) _recordResult:v5 & v6 forKey:@"|--All Tests Passed--|" comment:v8 resultsDictionary:v9];
  [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v9];
}

void sub_100009474(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = +[CKConversationList sharedConversationList];
  v3 = [v2 conversations];

  v4 = [v3 count];
  v5 = *(a1 + 32);
  if (!v4)
  {
    [v5 failedTest:__CurrentTestName withFailure:@"No conversations in conversation list"];
    goto LABEL_10;
  }

  v6 = [v5 messagesController];
  v7 = [v6 chatController];

  v8 = +[CKConversationList sharedConversationList];
  v9 = [v8 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

  v10 = [*(a1 + 32) messagesController];
  if ([v10 isCollapsed])
  {
    goto LABEL_7;
  }

  v11 = [v7 conversation];
  if (v9 != v11)
  {
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  v12 = [v3 count];

  if (v12 >= 3)
  {
    v10 = +[CKConversationList sharedConversationList];
    [v10 conversationForExistingChatWithChatIdentifier:@"+14087240720"];
    v9 = v11 = v9;
    goto LABEL_6;
  }

LABEL_8:
  v13 = +[CKDraftManager sharedInstance];
  [v13 setDraft:0 forConversation:v9];

  v14 = +[CKDraftManager sharedInstance];
  [v14 saveCompositionAndFlushCache:1];

  v15 = [*(a1 + 32) messagesController];
  [v15 showConversation:v9 animate:1];

  v16 = [*(a1 + 32) messagesController];
  v17 = [v16 chatController];

  v18 = dispatch_time(0, 1000000000);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000096E8;
  v20[3] = &unk_100030B00;
  v20[4] = *(a1 + 32);
  v21 = v17;
  v19 = v17;
  dispatch_after(v18, &_dispatch_main_q, v20);

LABEL_10:
}

void sub_1000096E8(uint64_t a1)
{
  [UIApp rotateIfNeeded:3];
  v2 = dispatch_time(0, 1000000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000097A8;
  v4[3] = &unk_100030B00;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, &_dispatch_main_q, v4);
}

void sub_1000097A8(uint64_t a1)
{
  [UIApp rotateIfNeeded:1];
  v2 = dispatch_time(0, 1000000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009868;
  v4[3] = &unk_100030B00;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, &_dispatch_main_q, v4);
}

void sub_100009868(uint64_t a1)
{
  v9 = objc_alloc_init(NSMutableDictionary);
  v2 = [*(a1 + 32) validateTranscriptVendingIAV:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v3 = v2 & [*(a1 + 32) validateNonzeroTranscriptInsets:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v4 = [*(a1 + 32) validateBottomInsetGreaterThanIAVHeight:*(a1 + 40) expected:0 withResultsDictionary:v9];
  v5 = v3 & v4 & [*(a1 + 32) validateTranscriptIsScrolledToBottom:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v6 = [*(a1 + 32) validateEntryViewIsFirstResponder:*(a1 + 40) expected:0 withResultsDictionary:v9];
  v7 = *(a1 + 32);
  if ((v5 & v6) != 0)
  {
    v8 = @":D";
  }

  else
  {
    v8 = CFSTR(":(");
  }

  [*(a1 + 32) _recordResult:v5 & v6 forKey:@"|--All Tests Passed--|" comment:v8 resultsDictionary:v9];
  [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v9];
}

void sub_1000099FC(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = +[CKConversationList sharedConversationList];
  v3 = [v2 conversations];

  v4 = [v3 count];
  v5 = *(a1 + 32);
  if (!v4)
  {
    [v5 failedTest:__CurrentTestName withFailure:@"No conversations in conversation list"];
    goto LABEL_10;
  }

  v6 = [v5 messagesController];
  v7 = [v6 chatController];

  v8 = +[CKConversationList sharedConversationList];
  v9 = [v8 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

  v10 = [*(a1 + 32) messagesController];
  if ([v10 isCollapsed])
  {
    goto LABEL_7;
  }

  v11 = [v7 conversation];
  if (v9 != v11)
  {
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  v12 = [v3 count];

  if (v12 >= 3)
  {
    v10 = +[CKConversationList sharedConversationList];
    [v10 conversationForExistingChatWithChatIdentifier:@"+14087240720"];
    v9 = v11 = v9;
    goto LABEL_6;
  }

LABEL_8:
  v13 = +[CKDraftManager sharedInstance];
  [v13 setDraft:0 forConversation:v9];

  v14 = +[CKDraftManager sharedInstance];
  [v14 saveCompositionAndFlushCache:1];

  v15 = [*(a1 + 32) messagesController];
  [v15 showConversation:v9 animate:1];

  v16 = [*(a1 + 32) messagesController];
  v17 = [v16 chatController];

  v18 = dispatch_time(0, 1000000000);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100009C70;
  v21[3] = &unk_100030B00;
  v19 = *(a1 + 32);
  v22 = v17;
  v23 = v19;
  v20 = v17;
  dispatch_after(v18, &_dispatch_main_q, v21);

LABEL_10:
}

void sub_100009C70(uint64_t a1)
{
  [*(a1 + 32) showKeyboardForReply];
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009D30;
  block[3] = &unk_100030B00;
  v4 = *(a1 + 32);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_100009D30(uint64_t a1)
{
  [UIApp rotateIfNeeded:3];
  v2 = dispatch_time(0, 1000000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009DF0;
  v4[3] = &unk_100030B00;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, &_dispatch_main_q, v4);
}

void sub_100009DF0(uint64_t a1)
{
  [UIApp rotateIfNeeded:1];
  v2 = dispatch_time(0, 1000000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009EB0;
  v4[3] = &unk_100030B00;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, &_dispatch_main_q, v4);
}

void sub_100009EB0(uint64_t a1)
{
  v9 = objc_alloc_init(NSMutableDictionary);
  v2 = [*(a1 + 32) validateTranscriptVendingIAV:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v3 = v2 & [*(a1 + 32) validateNonzeroTranscriptInsets:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v4 = [*(a1 + 32) validateBottomInsetGreaterThanIAVHeight:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v5 = v3 & v4 & [*(a1 + 32) validateTranscriptIsScrolledToBottom:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v6 = [*(a1 + 32) validateEntryViewIsFirstResponder:*(a1 + 40) expected:1 withResultsDictionary:v9];
  v7 = *(a1 + 32);
  if ((v5 & v6) != 0)
  {
    v8 = @":D";
  }

  else
  {
    v8 = CFSTR(":(");
  }

  [*(a1 + 32) _recordResult:v5 & v6 forKey:@"|--All Tests Passed--|" comment:v8 resultsDictionary:v9];
  [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v9];
}

void sub_10000A044(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = [*(a1 + 32) messagesController];
  [v2 showNewMessageCompositionPanelWithRecipients:0 composition:0 animated:1];

  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A110;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 32);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_10000A110(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v11 = [v2 composeChatController];

  if (v11 || ([*(a1 + 32) messagesController], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isCollapsed"), v3, !v4))
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [*(a1 + 32) validateTranscriptVendingIAV:v11 expected:1 withResultsDictionary:v5];
    v7 = v6 & [*(a1 + 32) validateEntryViewIsFirstResponder:v11 expected:0 withResultsDictionary:v5];
    v8 = [*(a1 + 32) validateRecipientSelectionControllerIsFirstResponder:v11 expected:1 withResultsDictionary:v5];
    v9 = *(a1 + 32);
    if ((v7 & v8) != 0)
    {
      v10 = @":D";
    }

    else
    {
      v10 = CFSTR(":(");
    }

    [*(a1 + 32) _recordResult:v7 & v8 forKey:@"|--All Tests Passed--|" comment:v10 resultsDictionary:v5];
    [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v5];
  }

  else
  {
    [*(a1 + 32) failedTest:__CurrentTestName withFailure:{@"Couldn't find modal transcript controller, when one should exist"}];
  }
}

void sub_10000A3D0(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = [*(a1 + 32) messagesController];
  [v2 showNewMessageCompositionPanelWithRecipients:*(a1 + 40) composition:*(a1 + 48) animated:1];

  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A498;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 32);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_10000A498(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v11 = [v2 composeChatController];

  if (v11 || ([*(a1 + 32) messagesController], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isCollapsed"), v3, !v4))
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [*(a1 + 32) validateTranscriptVendingIAV:v11 expected:1 withResultsDictionary:v5];
    v7 = v6 & [*(a1 + 32) validateEntryViewIsFirstResponder:v11 expected:1 withResultsDictionary:v5];
    v8 = [*(a1 + 32) validateRecipientSelectionControllerIsFirstResponder:v11 expected:0 withResultsDictionary:v5];
    v9 = *(a1 + 32);
    if ((v7 & v8) != 0)
    {
      v10 = @":D";
    }

    else
    {
      v10 = CFSTR(":(");
    }

    [*(a1 + 32) _recordResult:v7 & v8 forKey:@"|--All Tests Passed--|" comment:v10 resultsDictionary:v5];
    [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v5];
  }

  else
  {
    [*(a1 + 32) failedTest:__CurrentTestName withFailure:{@"Couldn't find modal transcript controller, when one should exist"}];
  }
}

void sub_10000A758(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = [*(a1 + 32) messagesController];
  [v2 showNewMessageCompositionPanelWithRecipients:*(a1 + 40) composition:*(a1 + 48) animated:1];

  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A820;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 32);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_10000A820(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = dispatch_time(0, 1000000000);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000A8E8;
  v5[3] = &unk_100030B00;
  v5[4] = *(a1 + 32);
  v6 = v2;
  v4 = v2;
  dispatch_after(v3, &_dispatch_main_q, v5);
}

void sub_10000A8E8(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 composeChatController];
  v4 = [v3 entryView];
  [v4 touchUpInsideSendButton:0];

  v5 = dispatch_time(0, 3000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A9D8;
  v7[3] = &unk_100030B00;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  dispatch_after(v5, &_dispatch_main_q, v7);
}

void sub_10000A9D8(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 chatController];

  LODWORD(v2) = [*(a1 + 32) validateTranscriptVendingIAV:v3 expected:1 withResultsDictionary:*(a1 + 40)];
  v4 = v2 & [*(a1 + 32) validateEntryViewIsFirstResponder:v3 expected:1 withResultsDictionary:*(a1 + 40)];
  LODWORD(v2) = [*(a1 + 32) validateNonzeroTranscriptInsets:v3 expected:1 withResultsDictionary:*(a1 + 40)];
  LODWORD(v2) = v4 & v2 & [*(a1 + 32) validateBottomInsetGreaterThanIAVHeight:v3 expected:1 withResultsDictionary:*(a1 + 40)];
  v5 = v2 & [*(a1 + 32) validateTranscriptIsScrolledToBottom:v3 expected:1 withResultsDictionary:*(a1 + 40)];
  v6 = [*(a1 + 32) validateEntryViewIsFirstResponder:v3 expected:1 withResultsDictionary:*(a1 + 40)];
  if ((v5 & v6) != 0)
  {
    v7 = @":D";
  }

  else
  {
    v7 = CFSTR(":(");
  }

  [*(a1 + 32) _recordResult:v5 & v6 forKey:@"|--All Tests Passed--|" comment:v7 resultsDictionary:*(a1 + 40)];
  [*(a1 + 32) showTranscriptListNotAnimated];
  v8 = dispatch_time(0, 3000000000);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000AB58;
  v10[3] = &unk_100030B00;
  v9 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v9;
  dispatch_after(v8, &_dispatch_main_q, v10);
}

void sub_10000AB58(uint64_t a1)
{
  v2 = +[CKConversationList sharedConversationList];
  v3 = [v2 conversations];

  if ([v3 count])
  {
    v4 = +[CKConversationList sharedConversationList];
    v5 = [v4 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

    v6 = [*(a1 + 32) messagesController];
    v15 = v5;
    v7 = [NSArray arrayWithObjects:&v15 count:1];
    [v6 conversationListIsDeletingConversations:v7];

    v8 = [*(a1 + 32) messagesController];
    v9 = [v8 conversationListController];
    v10 = [v9 conversationList];
    [v10 deleteConversation:v5];

    v11 = dispatch_time(0, 1000000000);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000AD40;
    v13[3] = &unk_100030B00;
    v12 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v12;
    dispatch_after(v11, &_dispatch_main_q, v13);
  }

  else
  {
    [*(a1 + 32) failedTest:__CurrentTestName withFailure:@"New compose message draft wasn't sent"];
  }
}

void sub_10000ADF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _recordAllTestsPassed:1 resultsDictionary:v4];
  [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v4];
}

void sub_10000AEF8(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v9 = [v2 composeChatController];

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [*(a1 + 32) validateTranscriptVendingIAV:v9 expected:1 withResultsDictionary:v3];
  v5 = v4 & [*(a1 + 32) validateEntryViewIsFirstResponder:v9 expected:0 withResultsDictionary:v3];
  v6 = [*(a1 + 32) validateRecipientSelectionControllerIsFirstResponder:v9 expected:1 withResultsDictionary:v3];
  v7 = *(a1 + 32);
  if ((v5 & v6) != 0)
  {
    v8 = @":D";
  }

  else
  {
    v8 = CFSTR(":(");
  }

  [*(a1 + 32) _recordResult:v5 & v6 forKey:@"|--All Tests Passed--|" comment:v8 resultsDictionary:v3];
  [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v3];
}

id sub_10000B0B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B12C;
  v4[3] = &unk_1000309C0;
  v4[4] = v2;
  return [v2 _dismissPeoplePickerWithCompletion:v1 completion:v4];
}

void sub_10000B12C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B1E4;
  v4[3] = &unk_100030BF0;
  v4[4] = *(a1 + 32);
  [v2 installNotificationObserverForNotificationName:v3 notificationName:CNContactPickerViewControllerPickerDidHideNotification forOneNotification:1 usingBlock:v4];
}

void sub_10000B280(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = [*(a1 + 32) messagesController];
  [v2 showNewMessageCompositionPanelWithRecipients:0 composition:0 animated:1];

  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B34C;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 32);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_10000B34C(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 composeChatController];

  v4 = [v3 composeRecipientSelectionController];
  v5 = *(a1 + 32);
  v6 = +[NSDistributedNotificationCenter defaultCenter];
  v7 = CNContactPickerViewControllerPickerDidShowNotification;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10000B478;
  v13 = &unk_100030C18;
  v14 = *(a1 + 32);
  v15 = v4;
  v8 = v4;
  [v5 installNotificationObserverForNotificationName:v6 notificationName:v7 forOneNotification:1 usingBlock:&v10];

  v9 = [v8 toField];
  [v8 composeRecipientViewRequestAddRecipient:v9];
}

void sub_10000B518(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = [*(a1 + 32) messagesController];
  [v2 showNewMessageCompositionPanelWithRecipients:0 composition:0 animated:1];

  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B5E4;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 32);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_10000B5E4(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 composeChatController];

  [v3 performSelector:"cancelButtonTapped:" withObject:0];
  v4 = dispatch_time(0, 2000000000);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000B6D0;
  v6[3] = &unk_100030B00;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, &_dispatch_main_q, v6);
}

void sub_10000B6D0(uint64_t a1)
{
  v8 = objc_alloc_init(NSMutableDictionary);
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 isCollapsed];

  v4 = [*(a1 + 32) validateTranscriptVendingIAV:*(a1 + 40) expected:v3 ^ 1 withResultsDictionary:v8];
  v5 = [*(a1 + 32) validateEntryViewIsFirstResponder:*(a1 + 40) expected:v3 ^ 1 withResultsDictionary:v8];
  v6 = *(a1 + 32);
  if ((v4 & v5) != 0)
  {
    v7 = @":D";
  }

  else
  {
    v7 = CFSTR(":(");
  }

  [*(a1 + 32) _recordResult:v4 & v5 forKey:@"|--All Tests Passed--|" comment:v7 resultsDictionary:v8];
  [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v8];
}

void sub_10000B888(uint64_t a1)
{
  v2 = [*(a1 + 32) __ck_shuffledArray];
  v3 = [v2 mutableCopy];

  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B95C;
  v7[3] = &unk_100030C40;
  v7[4] = v5;
  v8 = v4;
  v6 = v4;
  [v5 _performNextSearchWithRemainingSearches:v3 passedSoFar:1 resultsDictionary:v6 finalCompletion:v7];
}

id sub_10000B95C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _recordAllTestsPassed:a2 resultsDictionary:*(a1 + 40)];
  v3 = __CurrentTestName;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 finishedTest:v3 extraResults:v5];
}

void sub_10000BA88(uint64_t a1)
{
  v2 = [*(a1 + 32) __ck_shuffledArray];
  v3 = [v2 mutableCopy];

  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BB5C;
  v7[3] = &unk_100030C40;
  v7[4] = v5;
  v8 = v4;
  v6 = v4;
  [v5 _performNextSearchResultsClearingTestWithRemainingSearches:v3 passedSoFar:1 resultsDictionary:v6 finalCompletion:v7];
}

id sub_10000BB5C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _recordAllTestsPassed:a2 resultsDictionary:*(a1 + 40)];
  v3 = __CurrentTestName;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 finishedTest:v3 extraResults:v5];
}

void sub_10000BC88(uint64_t a1)
{
  v2 = [*(a1 + 32) __ck_shuffledArray];
  v3 = [v2 mutableCopy];

  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BD5C;
  v7[3] = &unk_100030C40;
  v7[4] = v5;
  v8 = v4;
  v6 = v4;
  [v5 _performNextSearchPartialFirstWithRemainingSearches:v3 passedSoFar:1 resultsDictionary:v6 finalCompletion:v7];
}

id sub_10000BD5C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _recordAllTestsPassed:a2 resultsDictionary:*(a1 + 40)];
  v3 = __CurrentTestName;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 finishedTest:v3 extraResults:v5];
}

void sub_10000BE88(uint64_t a1)
{
  v2 = [*(a1 + 32) __ck_shuffledArray];
  v3 = [v2 mutableCopy];

  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = *(a1 + 40);
  v6 = +[NSDate date];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000BF98;
  v10[3] = &unk_100030C40;
  v10[4] = *(a1 + 40);
  v11 = v4;
  v9 = v4;
  [v5 _performNextTapIntoTapOutOfTestWithRemainingSearches:v3 startTime:1 passedSoFar:v9 resultsDictionary:v10 finalCompletion:v8];
}

id sub_10000BF98(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _recordAllTestsPassed:a2 resultsDictionary:*(a1 + 40)];
  v3 = __CurrentTestName;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 finishedTest:v3 extraResults:v5];
}

void sub_10000C07C(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 conversationListController];
  v4 = [v3 searchResultsController];

  v6 = [v4 collectionView];
  v7 = *(a1 + 32);
  v5 = v6;
  ck_dispatch_main_after_seconds();
}

uint64_t sub_10000C158(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSIndexPath indexPathForRow:0 inSection:0];
  [v2 selectItemAtIndexPath:v3 animated:0 scrollPosition:0];

  v5 = *(a1 + 40);
  return ck_dispatch_main_after_seconds();
}

void sub_10000C218(uint64_t a1)
{
  v24 = objc_alloc_init(NSMutableDictionary);
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 chatController];

  v4 = [v3 collectionViewController];
  v5 = [v4 chatItems];

  v6 = [v5 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v3 collectionView];
    v9 = [NSIndexPath indexPathForItem:0 inSection:0];
    v10 = [v8 layoutAttributesForItemAtIndexPath:v9];
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v26.origin.x = v12;
    v26.origin.y = v14;
    v26.size.width = v16;
    v26.size.height = v18;
    MaxY = CGRectGetMaxY(v26);
    [v8 contentOffset];
    v21 = MaxY - v20;
    [v8 contentInset];
    v23 = v21 <= v22;
  }

  else
  {
    v23 = 0;
  }

  [*(a1 + 32) _recordAllTestsPassed:v23 resultsDictionary:v24];
  [*(a1 + 32) finishedTest:__CurrentTestName extraResults:v24];
}

void sub_10000C5FC(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 conversationListController];
  v4 = [v3 searchResultsController];

  v5 = [v4 collectionView];
  v6 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", arc4random() % [v5 numberOfItemsInSection:0], 0);
  [v5 cellForItemAtIndexPath:v6];

  [v5 scrollToItemAtIndexPath:v6 atScrollPosition:16 animated:1];
  v14 = v5;
  v13 = *(a1 + 32);
  v7 = *(&v13 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v15 = v10;
  v16 = *(a1 + 64);
  v18 = *(a1 + 80);
  v19 = *(a1 + 88);
  v17 = *(a1 + 72);
  v11 = v6;
  v12 = v5;
  ck_dispatch_main_after_seconds();
}

void sub_10000C7F0(uint64_t a1)
{
  [*(a1 + 32) selectItemAtIndexPath:*(a1 + 40) animated:0 scrollPosition:0];
  v6 = *(a1 + 48);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v7 = v5;
  v8 = *(a1 + 80);
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);
  v9 = *(a1 + 88);
  ck_dispatch_main_after_seconds();
}

void sub_10000C900(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 conversationListController];
  v4 = [v3 navigationController];
  v5 = [v4 popViewControllerAnimated:1];

  v10 = *(a1 + 32);
  v6 = *(&v10 + 1);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v11 = v9;
  v12 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v13 = *(a1 + 72);
  ck_dispatch_main_after_seconds();
}

id sub_10000CA48(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 messagesController];
  v4 = [v3 conversationListController];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) objectForKeyedSubscript:@"Count"];
  LOBYTE(v2) = [v2 validateNumberOfSearchResultsInConversationListController:v4 searchText:v5 expectedNumber:objc_msgSend(v6 withResultsDictionary:{"integerValue"), *(a1 + 56)}];

  v7 = *(a1 + 32);
  v8 = *(a1 + 80);
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = (v2 & *(a1 + 88));

  return [v7 _performNextTapIntoTapOutOfTestWithRemainingSearches:v9 startTime:v12 passedSoFar:v10 resultsDictionary:v11 finalCompletion:v8];
}

void sub_10000CD94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000CE78;
  v6[3] = &unk_100030CE0;
  v6[4] = v2;
  v7 = *(a1 + 64);
  v10 = *(a1 + 80);
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  [v2 _searchForString:v3 validateExpectedSearchResults:v4 resultsDictionary:v5 completion:v6];
}

void sub_10000D030(uint64_t a1, char a2)
{
  [*(a1 + 32) removeObject:*(a1 + 40)];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) stringByAppendingString:@" Great Googly Moogly!"];
  v6 = *(a1 + 64);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000D148;
  v7[3] = &unk_100030D30;
  v7[4] = *(a1 + 48);
  v8 = *(a1 + 32);
  v11 = *(a1 + 80);
  v12 = a2;
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  [v4 _searchForString:v5 validateExpectedSearchResults:&off_100034C58 resultsDictionary:v6 completion:v7];
}

id sub_10000D148(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (*(a1 + 64) == 1)
  {
    v4 = (*(a1 + 65) & a2);
  }

  else
  {
    v4 = 0;
  }

  return [v3 _performNextSearchResultsClearingTestWithRemainingSearches:*(a1 + 40) passedSoFar:v4 resultsDictionary:*(a1 + 48) finalCompletion:*(a1 + 56)];
}

void sub_10000D318(uint64_t a1, char a2)
{
  [*(a1 + 32) removeObject:*(a1 + 40)];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000D40C;
  v7[3] = &unk_100030D30;
  v7[4] = v4;
  v8 = *(a1 + 32);
  v11 = *(a1 + 80);
  v12 = a2;
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  [v4 _clearSearchStringWithPreviousSearchText:v5 resultsDictionary:v6 completion:v7];
}

id sub_10000D40C(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (*(a1 + 64) == 1)
  {
    v4 = (*(a1 + 65) & a2);
  }

  else
  {
    v4 = 0;
  }

  return [v3 _performNextSearchWithRemainingSearches:*(a1 + 40) passedSoFar:v4 resultsDictionary:*(a1 + 48) finalCompletion:*(a1 + 56)];
}

void sub_10000D57C(id *a1)
{
  v2 = (a1 + 5);
  v3 = a1[4];
  v4 = *v2;
  v8 = v3;
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v9 = v7;
  v10 = a1[8];
  ck_dispatch_main_after_seconds();
}

uint64_t sub_10000D660(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"Count"];
  v3 = [v2 integerValue];

  v4 = *(a1 + 40);
  v5 = [v4 messagesController];
  v6 = [v5 conversationListController];
  [v4 validateNumberOfSearchResultsInConversationListController:v6 searchText:*(a1 + 48) expectedNumber:v3 withResultsDictionary:*(a1 + 56)];

  v7 = *(*(a1 + 64) + 16);

  return v7();
}

void sub_10000D8BC(uint64_t a1)
{
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v7 = v5;
  ck_dispatch_main_after_seconds();
}

uint64_t sub_10000D980(void *a1)
{
  v2 = a1[4];
  v3 = [v2 messagesController];
  v4 = [v3 conversationListController];
  [v2 validateAtConversationListInConversationListController:v4 previousSearchText:a1[5] withResultsDictionary:a1[6]];

  v5 = *(a1[7] + 16);

  return v5();
}

void sub_10000E958(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showNewMessageCompositionPanelWithRecipients:*(a1 + 40) composition:*(a1 + 48) animated:1];

  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EA0C;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 32);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_10000EA0C(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 composeChatController];
  v4 = [v3 entryView];
  [v4 touchUpInsideSendButton:0];

  v5 = dispatch_time(0, 3000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EAE4;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 32);
  dispatch_after(v5, &_dispatch_main_q, block);
}

void sub_10000EC44(uint64_t a1)
{
  if ([*(a1 + 32) isMuted])
  {
    [*(a1 + 32) unmute];
  }

  else
  {
    v2 = +[NSDate date];
    v3 = objc_alloc_init(NSDateComponents);
    [v3 setHour:4];
    v4 = +[NSCalendar currentCalendar];
    v5 = [v4 dateByAddingComponents:v3 toDate:v2 options:0];

    [*(a1 + 32) setMutedUntilDate:v5];
  }

  v6 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000ED74;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 40);
  dispatch_after(v6, &_dispatch_main_q, block);
}

void sub_10000F238(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v1 = [v2 conversationListController];
  [v1 endHoldingConversationListUpdatesForPPTTests];
}

uint64_t sub_10000F4D4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10000F580(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"ShowPeoplePicker" forTest:__CurrentTestName];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000F630;
  v3[3] = &unk_100030B00;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_10000F630(uint64_t a1)
{
  if (dword_10003A130 < 1)
  {
    v4 = [*(a1 + 32) messagesController];
    v5 = [v4 ppt_chatController];
    [v5 performSelector:"cancelButtonTapped:" withObject:0];

    v6 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000F844;
    v7[3] = &unk_1000309C0;
    v7[4] = v6;
    [v6 installCACommitCompletionBlock:v7];
  }

  else
  {
    --dword_10003A130;
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000F76C;
    v8[3] = &unk_100030B00;
    v8[4] = v3;
    v9 = v2;
    [v3 _dismissPeoplePickerWithCompletion:v9 completion:v8];
  }
}

void sub_10000F76C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  v4 = CNContactPickerViewControllerPickerDidHideNotification;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F838;
  v6[3] = &unk_100030C18;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 installNotificationObserverForNotificationName:v3 notificationName:v4 forOneNotification:1 usingBlock:v6];
}

void sub_10000F8C4(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"ShowPeoplePicker" forTest:__CurrentTestName];
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 ppt_chatController];

  v4 = [v3 composeRecipientSelectionController];
  v5 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F9A0;
  v6[3] = &unk_1000309C0;
  v6[4] = v5;
  [v5 _dismissPeoplePickerWithCompletion:v4 completion:v6];
}

id sub_10000F9A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000FA10;
  v3[3] = &unk_1000309C0;
  v3[4] = v1;
  return [v1 installCACommitCompletionBlock:v3];
}

id sub_10000FA10(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 ppt_chatController];
  [v3 performSelector:"cancelButtonTapped:" withObject:0];

  v4 = *(a1 + 32);
  v5 = __CurrentTestName;

  return [v4 finishedTest:v5];
}

void sub_10000FD70(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"SelectContact" forTest:__CurrentTestName];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FE10;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_10000FE10(uint64_t a1)
{
  if (dword_10003A130 < 1)
  {
    v3 = [*(a1 + 32) messagesController];
    v4 = [v3 ppt_chatController];
    [v4 cancelButtonTapped];

    v5 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000FEF8;
    v7[3] = &unk_1000309C0;
    v7[4] = v5;
    return [v5 installCACommitCompletionBlock:v7];
  }

  else
  {
    --dword_10003A130;
    v2 = *(a1 + 32);

    return [v2 _startSelectContactPeoplePickerTest];
  }
}

void sub_100010258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100010288(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [v6 phoneNumbers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010358;
  v9[3] = &unk_100030DF8;
  v10 = *(a1 + 32);
  v11 = v6;
  v12 = *(a1 + 40);
  v13 = a4;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v9];
}

void sub_100010358(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 value];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    **(a1 + 64) = 1;
    *a4 = 1;
  }
}

void sub_100010698(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001072C;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_1000107A0(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"CancelPeoplePicker" forTest:__CurrentTestName];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010840;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100010840(uint64_t a1)
{
  if (dword_10003A130 < 1)
  {
    v3 = [*(a1 + 32) messagesController];
    v4 = [v3 ppt_chatController];
    [v4 performSelector:"cancelButtonTapped:" withObject:0];

    v5 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100010934;
    v7[3] = &unk_1000309C0;
    v7[4] = v5;
    return [v5 installCACommitCompletionBlock:v7];
  }

  else
  {
    --dword_10003A130;
    v2 = *(a1 + 32);

    return [v2 _startCancelPeoplePickerTest];
  }
}

uint64_t sub_100010D94(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100011168(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011228;
  block[3] = &unk_1000309E8;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_after(v2, &_dispatch_main_q, block);
}

id sub_100011228(uint64_t a1)
{
  [*(a1 + 32) startedTest:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 typeInContactName:v3];
}

void sub_1000114FC(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000115A8;
  v4[3] = &unk_100030B00;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, &_dispatch_main_q, v4);
}

id sub_1000115B4(uint64_t a1)
{
  if (([*(a1 + 32) isSearchResultsHidden] & 1) == 0)
  {
    [*(a1 + 40) startedTest:*(a1 + 48)];
  }

  v2 = *(a1 + 40);

  return [v2 scrollPseudoContacts];
}

void sub_100011768(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100011814;
  v4[3] = &unk_100030B00;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, &_dispatch_main_q, v4);
}

id sub_100011814(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _resolveContactTest:v3];
}

void sub_1000119E4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_keyboardDidShow:" name:UIKeyboardDidShowNotification object:0];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:"didShowNewCompose" name:@"PPTDidShowNewComposeEvent" object:0];

  [*(a1 + 32) startedTest:__CurrentTestName];
  v4 = [*(a1 + 32) messagesController];
  [v4 showNewMessageCompositionPanelWithRecipients:0 composition:0 animated:1];
}

void sub_100011BC8(uint64_t a1)
{
  [*(a1 + 32) showTranscriptListNotAnimated];
  v2 = dispatch_time(0, 1000000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100011C64;
  v3[3] = &unk_100030B50;
  v4 = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, v3);
}

void sub_100011C64(uint64_t a1)
{
  v2 = +[CKConversationList sharedConversationList];
  v3 = [v2 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011D4C;
  block[3] = &unk_100030E70;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_after(v4, &_dispatch_main_q, block);
}

void sub_100011D4C(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:0];

  v3 = dispatch_time(0, 1000000000);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100011E04;
  v5[3] = &unk_100030B28;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v5[5] = v4;
  dispatch_after(v3, &_dispatch_main_q, v5);
}

void sub_100011E04(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 chatController];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(a1 + 32) showKeyboard];
  v6 = dispatch_time(0, 1000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011ED0;
  v7[3] = &unk_100030B28;
  v8 = *(a1 + 32);
  dispatch_after(v6, &_dispatch_main_q, v7);
}

void sub_100011ED0(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) entryView];
  [*(a1 + 32) startedTest:__CurrentTestName];
  [v2 startRecordingForRaiseGesture];
  [*(a1 + 32) finishedTest:__CurrentTestName];
}

void sub_10001203C(id *a1)
{
  [a1[4] startedSubTest:@"SendAnimation-FPS" forTest:__CurrentTestName withMetrics:&off_100034CC0];
  [a1[5] touchUpInsideSendButton:0];
  v2 = a1[4];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100012100;
  v3[3] = &unk_100030E98;
  v3[4] = v2;
  v4 = a1[6];
  [v2 installCACommitCompletionBlock:v3];
}

void sub_100012100(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100012190;
  v2[3] = &unk_100030E98;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 installCACommitCompletionBlock:v2];
}

void sub_100012190(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100012220;
  v2[3] = &unk_100030E98;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 installCACommitCompletionBlock:v2];
}

void sub_100012220(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000122B0;
  v2[3] = &unk_100030E98;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 installCACommitCompletionBlock:v2];
}

uint64_t sub_1000122B0(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"SendAnimation-FPS" forTest:__CurrentTestName];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_10001240C(uint64_t a1)
{
  [*(a1 + 32) showTranscriptListNotAnimated];
  v2 = dispatch_time(0, 1000000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000124A8;
  v3[3] = &unk_100030B50;
  v4 = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, v3);
}

void sub_1000124A8(uint64_t a1)
{
  v2 = +[CKConversationList sharedConversationList];
  v3 = [v2 conversationForExistingChatWithChatIdentifier:@"chat339741476857344860"];

  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012590;
  block[3] = &unk_100030E70;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_after(v4, &_dispatch_main_q, block);
}

void sub_100012590(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:0];

  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001266C;
  block[3] = &unk_100030EE8;
  block[4] = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_10001266C(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 chatController];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [[CKDetailsControllerAdapter alloc] initWithConversation:*(a1 + 40)];
  v7 = [v6 detailsController];
  v8 = [*(*(*(a1 + 48) + 8) + 40) navigationController];
  [v8 pushViewController:v7 animated:1];

  v9 = dispatch_time(0, 1000000000);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000127A4;
  v11[3] = &unk_100030B00;
  v11[4] = *(a1 + 32);
  v12 = v7;
  v10 = v7;
  dispatch_after(v9, &_dispatch_main_q, v11);
}

void sub_1000127A4(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  if ([__CurrentTestName rangeOfString:@"DetailsViewScrollingPerfTest"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    NSLog(@"Unrecognized TranscriptManagement test found");
  }

  else
  {
    [*(a1 + 32) _detailsViewScrollingPerfTest:*(a1 + 40)];
  }

  v2 = objc_alloc_init(NSDictionary);
  v3 = dispatch_time(0, 5000000000);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000128B8;
  v5[3] = &unk_100030B00;
  v5[4] = *(a1 + 32);
  v6 = v2;
  v4 = v2;
  dispatch_after(v3, &_dispatch_main_q, v5);
}

void sub_100012B30(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showNewMessageCompositionPanelWithRecipients:*(a1 + 40) composition:*(a1 + 48) animated:1];

  v3 = dispatch_time(0, 2000000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012C00;
  v4[3] = &unk_100030B00;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  dispatch_after(v3, &_dispatch_main_q, v4);
}

void sub_100012C00(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 composeChatController];

  v4 = [v3 entryView];
  [v4 touchUpInsideSendButton:0];
  [*(a1 + 32) startedTest:__CurrentTestName];
  v5 = [*(a1 + 32) messagesController];
  v6 = [v5 chatController];

  v7 = [v6 entryView];

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100012D1C;
  v10[3] = &unk_1000309C0;
  v10[4] = v8;
  [v8 sendMultipleMessagesEntryView:v7 composition:v9 handler:v10];
}

void sub_100012D1C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = dispatch_time(0, 2000000000);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100012DE4;
  v5[3] = &unk_100030B00;
  v5[4] = *(a1 + 32);
  v6 = v2;
  v4 = v2;
  dispatch_after(v3, &_dispatch_main_q, v5);
}

void sub_100012DE4(uint64_t a1)
{
  [*(a1 + 32) showTranscriptListNotAnimated];
  v2 = +[CKConversationList sharedConversationList];
  v3 = [v2 conversations];

  if (v3)
  {
    qword_10003A158 = [v3 count];
    v4 = dispatch_time(0, 500000000);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100012EDC;
    v6[3] = &unk_100030B00;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v5;
    dispatch_after(v4, &_dispatch_main_q, v6);
  }
}

void sub_100012EDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [v2 mapSectionIdentifierForCurrentConversationListClass:6]);
  [v2 deleteChat:v3];

  v4 = dispatch_time(0, 2000000000);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012FD0;
  v6[3] = &unk_100030B00;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  dispatch_after(v4, &_dispatch_main_q, v6);
}

void sub_1000133F4(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:0];
}

void sub_100013780(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:0];
}

void sub_100013A6C(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:0];
}

id sub_100014118(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  [*(a1 + 40) setHidden:1];
  v2 = qword_10003A160;
  qword_10003A160 = 0;

  xmmword_10003A170 = CGPointZero;
  v3 = *(a1 + 48);
  v4 = __CurrentTestName;

  return [v3 finishedTest:v4 extraResults:0];
}

void sub_100014420(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_chatControllerWillRotate:" name:kPPTChatControllerWillRotateNotification object:0];
  [v2 addObserver:*(a1 + 32) selector:"_chatControllerDidRotate:" name:kPPTChatControllerDidRotateNotification object:0];
  [UIApp rotateIfNeeded:3];
}

void sub_1000144C8(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:0];

  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014590;
  block[3] = &unk_100030DD0;
  v5 = *(a1 + 48);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_1000148D0(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 chatController];

  v4 = [v3 entryView];
  [v4 performSelector:"audioReplyButtonStart:" withObject:0];

  [*(a1 + 32) startedTest:__CurrentTestName];
  v5 = dispatch_time(0, 10000000000);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000149E4;
  v8[3] = &unk_100030B00;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_after(v5, &_dispatch_main_q, v8);
}

id sub_1000149E4(uint64_t a1)
{
  v2 = [*(a1 + 32) entryView];
  [v2 performSelector:"audioReplyButtonStop:" withObject:0];

  v3 = *(a1 + 40);
  v4 = __CurrentTestName;

  return [v3 finishedTest:v4 extraResults:0];
}

void sub_100014A4C(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:0];

  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014B14;
  block[3] = &unk_100030DD0;
  v5 = *(a1 + 48);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_100014D18(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014DC4;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_100014DDC(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:0];

  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014EA4;
  block[3] = &unk_100030DD0;
  v5 = *(a1 + 48);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_1000150A8(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015154;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_10001516C(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:0];

  v3 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015238;
  block[3] = &unk_100030DD0;
  v5 = *(a1 + 48);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_100015474(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_keyboardWillShow:" name:UIKeyboardRenderDidFinishNotification object:0];
  [v2 addObserver:*(a1 + 32) selector:"_keyboardDidShow:" name:UIKeyboardDidShowNotification object:0];
  [*(a1 + 32) showKeyboard];
}

void sub_100015510(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:0];

  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000155D8;
  block[3] = &unk_100030DD0;
  v5 = *(a1 + 48);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_100015814(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_keyboardDidShow:" name:UIKeyboardDidShowNotification object:0];
  [*(a1 + 32) startedTest:__CurrentTestName];
  [*(a1 + 32) showKeyboard];
}

void sub_1000158A0(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:0];

  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015968;
  block[3] = &unk_100030DD0;
  v5 = *(a1 + 48);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_100015C7C(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 chatController];

  v4 = [v3 collectionView];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 visibleCells];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v6)
  {

    v13 = 0;
    goto LABEL_17;
  }

  v17 = v4;
  v7 = *v20;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v20 != v7)
    {
      objc_enumerationMutation(v5);
    }

    v9 = *(*(&v19 + 1) + 8 * v8);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = v9;
    v11 = [v10 balloonView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      break;
    }

LABEL_9:
    if (v6 == ++v8)
    {
      v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      v13 = 0;
      goto LABEL_16;
    }
  }

  v6 = [v10 balloonView];
  v14 = [v3 collectionViewController];
  v13 = [v14 chatItemForCell:v10];

  if (!v6)
  {
LABEL_16:
    v4 = v17;
    goto LABEL_17;
  }

  v4 = v17;
  if (v13)
  {
    [*(a1 + 32) startedTest:__CurrentTestName];
    v15 = [v3 collectionViewController];
    [v3 transcriptCollectionViewController:v15 balloonView:v6 tappedForChatItem:v13];

    v16 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015F24;
    block[3] = &unk_1000309C0;
    block[4] = *(a1 + 32);
    dispatch_after(v16, &_dispatch_main_q, block);
  }

LABEL_17:
}

void sub_100015F38(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:0];

  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016000;
  block[3] = &unk_100030DD0;
  v5 = *(a1 + 48);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_100016408(uint64_t a1)
{
  v2 = [*(a1 + 32) isNewConversationList];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 messagesController];
    v5 = [v4 conversationListController];
    v6 = [v5 collectionView];
  }

  else
  {
    if (![v3 isOldConversationList])
    {
      return;
    }

    v4 = [*(a1 + 32) messagesController];
    v5 = [v4 conversationListController];
    v6 = [v5 view];
  }

  v13 = v6;

  v7 = [qword_10003A120 objectForKey:@"recapBased"];
  v8 = [v7 BOOLValue];

  if (v8 && [sub_100003E78() isRecapAvailable])
  {
    v9 = [objc_alloc(sub_100003F58()) initWithTestName:__CurrentTestName scrollView:v13 completionHandler:0];
    [sub_100003E78() runTestWithParameters:v9];
  }

  else
  {
    v10 = [qword_10003A120 objectForKey:@"offset"];
    dword_10003A144 = [v10 intValue];

    v11 = [*(a1 + 40) objectForKey:@"length"];
    v12 = [v11 intValue];

    [v13 _performScrollTest:__CurrentTestName iterations:dword_10003A130 delta:dword_10003A144 length:v12];
  }
}

id sub_10001692C(uint64_t a1)
{
  [*(a1 + 32) startedTest:__CurrentTestName];
  v2 = *(a1 + 32);
  v3 = __CurrentTestName;

  return [v2 failedTest:v3];
}

void sub_100016978(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  v3 = [v2 chatController];

  v4 = [v3 inputController];
  [v4 showPhotosBrowser];
  v5 = dispatch_time(0, 2000000000);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100016A90;
  v10[3] = &unk_100030F50;
  v11 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = v6;
  v12 = v7;
  v13 = v8;
  v9 = v4;
  dispatch_after(v5, &_dispatch_main_q, v10);
}

void sub_100016A90(uint64_t a1)
{
  v2 = [*(a1 + 32) currentInputViewController];
  v3 = [v2 viewController];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 view];
  v5 = [v4 subviews];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v10;

    if (!v11)
    {
      goto LABEL_12;
    }

    [*(a1 + 40) startedTest:__CurrentTestName];
    v12 = [*(a1 + 48) objectForKey:@"offset"];
    [v12 floatValue];
    v14 = v13;

    [v11 _performScrollTest:__CurrentTestName iterations:dword_10003A130 delta:v14 scrollAxis:1];
  }

  else
  {
LABEL_9:

LABEL_12:
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100016C68(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:0];

  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100016D18;
  v4[3] = &unk_100030DD0;
  v5 = *(a1 + 48);
  [v3 installCACommitCompletionBlock:v4];
}

void sub_100016E04(uint64_t a1, char a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100016EB4;
  v6[3] = &unk_100030FA0;
  v10 = a2;
  v3 = *(a1 + 32);
  v11 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100016EB4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"extensionIdentifier"];
    if (*(a1 + 57) == 1)
    {
      v2 = [*(a1 + 32) objectForKeyedSubscript:@"supportsLaunchSubtest"];
      v3 = [v2 isEqualToString:@"YES"];
    }

    else
    {
      v3 = 0;
    }

    [*(a1 + 40) showMessagesApplicationAndStartTestForIdentifier:v4 supportsLaunchSubtest:v3];
  }

  else
  {
    [*(a1 + 40) startAndFailTestNamed:__CurrentTestName withFailure:{@"Failed to enter conversation with chat identifier %@", *(a1 + 48)}];
  }
}

void sub_100017D9C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_willConfigureCellWithTranscriptPluginChatItem:" name:CKPPTWillConfigureCellWithTranscriptPluginChatItemNotification object:0];

  v3 = [*(a1 + 32) messagesController];
  [v3 showConversation:*(a1 + 40) animate:0];

  v4 = dispatch_time(0, 4000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017E88;
  block[3] = &unk_1000309C0;
  block[4] = *(a1 + 32);
  dispatch_after(v4, &_dispatch_main_q, block);
}

void sub_100017E88(uint64_t a1)
{
  v1 = [*(a1 + 32) messagesController];
  v2 = [v1 chatController];
  v3 = [v2 collectionViewController];
  v6 = [v3 collectionView];

  [v6 contentInset];
  [v6 setContentOffset:{v5, v4}];
}

void sub_1000180D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000183CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000183F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = v3;
    if (*(a1 + 56) == 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [WeakRetained removeObserver:*(*(*(a1 + 40) + 8) + 40)];

      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = 0;
    }

    v3 = (*(*(a1 + 32) + 16))();
    v4 = v9;
  }

  return _objc_release_x1(v3, v4);
}

void sub_100018660(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesController];
  [v2 showConversation:*(a1 + 40) animate:0];

  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018728;
  block[3] = &unk_100030DD0;
  v5 = *(a1 + 48);
  dispatch_after(v3, &_dispatch_main_q, block);
}

Class sub_100018828(uint64_t a1)
{
  sub_100018880();
  result = objc_getClass("RPTTestRunner");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10001D35C();
  }

  qword_10003A180 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100018880()
{
  v0[0] = 0;
  if (!qword_10003A188)
  {
    v0[1] = _NSConcreteStackBlock;
    v0[2] = 3221225472;
    v0[3] = sub_100018974;
    v0[4] = &unk_100031050;
    v0[5] = v0;
    v1 = off_100031038;
    v2 = 0;
    qword_10003A188 = _sl_dlopen();
  }

  if (!qword_10003A188)
  {
    sub_10001D3D8(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_100018974(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10003A188 = result;
  return result;
}

Class sub_1000189E8(uint64_t a1)
{
  sub_100018880();
  result = objc_getClass("RPTScrollViewTestParameters");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10001D458();
  }

  qword_10003A190 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100018A70(uint64_t a1)
{
  sub_100018880();
  result = objc_getClass("RPTResizeTestParameters");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10001D4D4();
  }

  qword_10003A1A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100019A20(id a1)
{
  v1 = +[IMChatRegistry sharedRegistry];
  v2 = +[CKUIBehavior sharedBehaviors];
  [v1 _setDefaultNumberOfMessagesToLoad:{objc_msgSend(v2, "defaultConversationViewingMessageCount")}];

  v3 = dispatch_time(0, 5000000000);
  v4 = dispatch_get_global_queue(9, 0);
  dispatch_after(v3, v4, &stru_1000310D0);
}

void sub_100019AD8(id a1)
{
  IMWeakLinkClass();
  +[IMChat _initializeFindMyController];

  dispatch_async(&_dispatch_main_q, &stru_1000310F0);
}

void sub_100019B2C(id a1)
{
  v1 = +[FTCServiceAvailabilityCenter sharedInstance];
  [v1 addListenerID:@"SMSApplication" forService:0];

  v2 = +[IMNicknameController sharedInstance];
}

void sub_100019B84(id a1)
{
  v1 = +[UIApplication sharedApplication];
  v2 = [v1 applicationState];

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (!v2)
      {
        v4 = @"YES";
      }

      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "After delay calling startMonitorWithOffer, with app in foreground: %@", &v7, 0xCu);
    }
  }

  v5 = v2 == 0;
  v6 = +[IMChorosMonitor sharedInstance];
  [v6 startMonitorIfNeededForReason:0 withOffer:v5 callInBackground:1];
}

void sub_100019CB4(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"kHasSetupHashtagImages"];

  if ((v3 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Calling into CoreParsec to load their bag", buf, 2u);
      }
    }

    v5 = IMWeakLinkClass();
    v6 = [IMWeakLinkClass() defaultSessionConfiguration];
    v7 = [v5 sessionWithConfiguration:v6];

    [v7 setDelegate:*(a1 + 32)];
  }

  v8 = *(a1 + 32);
  v12 = 0;
  v9 = [objc_opt_class() addMessagesFileProviderDomain:&v12];
  v10 = v12;
  if (v10)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001D578(v10, v11);
    }
  }
}

void sub_10001A40C(uint64_t a1)
{
  v2 = [*(a1 + 32) soundHelper];
  [v2 playSendSoundForMessage:*(a1 + 40)];
}

void sub_10001A738(id a1, UIAlertAction *a2)
{
  v2 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = qword_10003A1D0;
  v11 = qword_10003A1D0;
  if (!qword_10003A1D0)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001C004;
    v7[3] = &unk_100031018;
    v7[4] = &v8;
    sub_10001C004(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = [v3 defaultWorkspace];
  v6 = [NSURL URLWithString:@"prefs:"];
  [v5 openSensitiveURL:v6 withOptions:0];
}

void sub_10001A844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001B81C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10001B834(uint64_t a1)
{
  v2 = [[NSFileProviderDomain alloc] initWithIdentifier:@"MessagesAttachments" displayName:@"Messages" pathRelativeToDocumentStorage:@"MessagesAttachments"];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 32) + 8) + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B8FC;
  v7[3] = &unk_100031178;
  v7[4] = *(a1 + 40);
  return [NSFileProviderManager addDomain:v5 completionHandler:v7];
}

void sub_10001B8FC(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 debugDescription];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "In addDomain completion block. Error: %@", &v7, 0xCu);
    }
  }
}

Class sub_10001C004(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_10003A1D8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10001C130;
    v3[4] = &unk_100031050;
    v3[5] = v3;
    v4 = off_1000311C0;
    v5 = 0;
    qword_10003A1D8 = _sl_dlopen();
  }

  if (!qword_10003A1D8)
  {
    sub_10001D704(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("LSApplicationWorkspace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10001D688();
  }

  qword_10003A1D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10001C130(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10003A1D8 = result;
  return result;
}

char *sub_10001C1A4()
{
  v0 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10200401F787ECFuLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 0;
    pthread_mutex_init((v0 + 16), 0);
    if (pthread_create(v1 + 1, 0, sub_10001C268, v1) < 0)
    {
      v2 = __error();
      v3 = strerror(*v2);
      NSLog(@"pthread_create failed, %s", v3);
      pthread_mutex_destroy((v1 + 16));
      free(v1);
      return 0;
    }
  }

  else
  {
    NSLog(@"out of memory");
  }

  return v1;
}

uint64_t sub_10001C268(char *a1)
{
  v2 = getpid();
  sub_10001C7D0(v2, (a1 + 80));
  pthread_mutex_lock((a1 + 16));
  v3 = *a1;
  pthread_mutex_unlock((a1 + 16));
  if (v3)
  {
    goto LABEL_13;
  }

  usleep(0x2710u);
  if ((ledger() & 0x80000000) != 0)
  {
    NSLog(@"getMemoryFootPrint, ledger fails: %u", v2);
    goto LABEL_13;
  }

  v4 = malloc_type_malloc(0, 0x1000040565EDBD2uLL);
  if (!v4)
  {
    NSLog(@"getMemoryFootPrintIndex: out of memory");
LABEL_10:
    NSLog(@"getMemoryFootPrintIndex failed: %u", v2);
    goto LABEL_13;
  }

  v5 = v4;
  if ((ledger() & 0x80000000) != 0)
  {
    free(v5);
    goto LABEL_10;
  }

  free(v5);
  v6 = malloc_type_malloc(0, 0x1000040EED21634uLL);
  if ((ledger() & 0x80000000) != 0)
  {
    NSLog(@"getMemoryFootPrintIndex, ledger failed: %u", v2);
  }

  else
  {
    NSLog(@"getMemoryFootPrintIndex, bad index: %lld %lld", 0, 0);
  }

  free(v6);
LABEL_13:
  sub_10001C7D0(v2, (a1 + 104));
  *(a1 + 16) = -1;
  *(a1 + 17) = 0;
  *(a1 + 38) = 0;
  return 0;
}

uint64_t sub_10001C554(uint64_t result, _OWORD *a2, uint64_t *a3)
{
  if (result)
  {
    v5 = result;
    pthread_mutex_lock((result + 16));
    *v5 = 1;
    pthread_mutex_unlock((v5 + 16));
    if (pthread_join(*(v5 + 8), 0))
    {
      v6 = __error();
      v7 = strerror(*v6);
      NSLog(@"pthread_join failed, %s", v7);
      pthread_mutex_destroy((v5 + 16));
      free(v5);
      return 0;
    }

    if (a2)
    {
      *a2 = *(v5 + 80);
      v8 = *(v5 + 96);
      v9 = *(v5 + 112);
      v10 = *(v5 + 144);
      a2[3] = *(v5 + 128);
      a2[4] = v10;
      a2[1] = v8;
      a2[2] = v9;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    *__str = 0u;
    bzero(__s1, 0x400uLL);
    v11 = getpid();
    strcpy(__s2, " leaks for ");
    snprintf(__str, 0x100uLL, "leaks %u 2>&1 | grep Process %u: | grep %s", v11, v11, __s2);
    v12 = popen(__str, "r");
    if (v12)
    {
      v13 = v12;
      if (fgets(__s1, 1024, v12))
      {
        pclose(v13);
        v14 = strstr(__s1, ": ");
        if (v14)
        {
          v15 = v14;
          v16 = strstr(__s1, __s2);
          if (v16)
          {
            *v16 = 0;
            v17 = v16 + 11;
            v18 = strchr(v16 + 11, 32);
            if (v18)
            {
              *v18 = 0;
              *a3 = strtoll(v15 + 2, 0, 10);
              a3[1] = strtoll(v17, 0, 10);
LABEL_16:
              pthread_mutex_destroy((v5 + 16));
              free(v5);
              return 1;
            }
          }
        }
      }

      else
      {
        NSLog(@"getLeaks, no leak information");
        pclose(v13);
      }
    }

    else
    {
      v19 = __error();
      v20 = strerror(*v19);
      NSLog(@"getLeaks, popen failed: [%s], %s", __str, v20);
    }

    NSLog(@"getLeaks failed");
    *a3 = 0;
    a3[1] = 0;
    goto LABEL_16;
  }

  return result;
}

void sub_10001C7D0(uint64_t a1, uint64_t a2)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  buffer = 0u;
  v7 = 0u;
  if (proc_pidinfo(a1, 4, 0, &buffer, 96) == 96)
  {
    *a2 = v11;
    *(a2 + 8) = v7;
  }

  else
  {
    v4 = __error();
    v5 = strerror(*v4);
    NSLog(@"getCPUCounter, proc_pidinfo failed: %u, %s", a1, v5);
  }
}

void sub_10001C8F4(void *a1)
{
  v2 = [IMServiceImpl serviceWithInternalName:IMServiceNameiMessage];
  v3 = [IMServiceImpl serviceWithInternalName:IMServiceNameSMS];
  v4 = [CKIMSimulatedChat alloc];
  v47 = a1[4];
  v5 = [NSArray arrayWithObjects:&v47 count:1];
  v6 = [v4 initWithIncomingIDs:v5 outgoingID:a1[5] messageIDOffset:100000 service:v2];
  v7 = qword_10003A1E0;
  qword_10003A1E0 = v6;

  v8 = [CKIMSimulatedChat alloc];
  v46 = a1[5];
  v9 = [NSArray arrayWithObjects:&v46 count:1];
  v10 = [v8 initWithIncomingIDs:v9 outgoingID:a1[4] messageIDOffset:1 service:v2];
  v11 = qword_10003A1E8;
  qword_10003A1E8 = v10;

  v12 = [CKIMSimulatedChat alloc];
  v45 = a1[6];
  v13 = [NSArray arrayWithObjects:&v45 count:1];
  v14 = [v12 initWithIncomingIDs:v13 outgoingID:a1[7] messageIDOffset:300000 service:v2];
  v15 = qword_10003A1F0;
  qword_10003A1F0 = v14;

  v16 = [CKIMSimulatedChat alloc];
  v44 = a1[7];
  v17 = [NSArray arrayWithObjects:&v44 count:1];
  v18 = [v16 initWithIncomingIDs:v17 outgoingID:a1[6] messageIDOffset:200001 service:v2];
  v19 = qword_10003A1F8;
  qword_10003A1F8 = v18;

  v20 = [CKIMSimulatedChat alloc];
  v21 = a1[7];
  v43[0] = a1[6];
  v43[1] = v21;
  v22 = [NSArray arrayWithObjects:v43 count:2];
  v23 = [v20 initWithIncomingIDs:v22 outgoingID:a1[4] messageIDOffset:500000 service:v2];
  v24 = qword_10003A200;
  qword_10003A200 = v23;

  v25 = [CKIMSimulatedChat alloc];
  v26 = a1[7];
  v42[0] = a1[4];
  v42[1] = v26;
  v27 = [NSArray arrayWithObjects:v42 count:2];
  v28 = [v25 initWithIncomingIDs:v27 outgoingID:a1[6] messageIDOffset:400001 service:v2];
  v29 = qword_10003A208;
  qword_10003A208 = v28;

  v30 = [CKIMSimulatedChat alloc];
  v31 = a1[5];
  v41[0] = a1[4];
  v41[1] = v31;
  v32 = [NSArray arrayWithObjects:v41 count:2];
  v33 = [v30 initWithIncomingIDs:v32 outgoingID:a1[8] messageIDOffset:700000 service:v3];
  v34 = qword_10003A210;
  qword_10003A210 = v33;

  v35 = [CKIMSimulatedChat alloc];
  v36 = a1[8];
  v40[0] = a1[5];
  v40[1] = v36;
  v37 = [NSArray arrayWithObjects:v40 count:2];
  v38 = [v35 initWithIncomingIDs:v37 outgoingID:a1[4] messageIDOffset:600001 service:v3];
  v39 = qword_10003A218;
  qword_10003A218 = v38;

  [qword_10003A1E0 setDelegate:qword_10003A1E8];
  [qword_10003A1E8 setDelegate:qword_10003A1E0];
  [qword_10003A1F0 setDelegate:qword_10003A1F8];
  [qword_10003A1F8 setDelegate:qword_10003A1F0];
  [qword_10003A200 setDelegate:qword_10003A208];
  [qword_10003A208 setDelegate:qword_10003A200];
  [qword_10003A210 setDelegate:qword_10003A218];
  [qword_10003A218 setDelegate:qword_10003A210];
  +[CKIMDaemonController beginSimulatingDaemon];
}

void sub_10001CF9C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v17 = a1;
  [NSURLComponents componentsWithURL:*(a1 + 32) resolvingAgainstBaseURL:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = v22 = 0u;
  v3 = [v18 queryItems];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:@"test"];

        v12 = [v9 value];
        if (v11)
        {

          v6 = v12;
          if (([v12 containsString:@"Screenshot"] & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v13 = [v9 name];
          [v2 setObject:v12 forKey:v13];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v12 = v6;
    }

    while (v5);
  }

  else
  {
    v12 = 0;
  }

LABEL_14:

  if ([v12 containsString:@"Screenshot"])
  {
    [*(v17 + 40) startScreenshotTestWithOptions:v2];
  }

  else if (v12)
  {
    v14 = [v12 im_lastPathComponent];
    v15 = [@"/AppleInternal/XCTests/com.apple.mobilesms/" stringByAppendingPathComponent:v14];
    v16 = +[CKUnitTestRunner sharedInstance];
    [v16 runUnitTestBundleAtPath:v15 writeToFile:1];
  }
}

void sub_10001D35C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getRPTTestRunnerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"mSMSApplicationTesting.m" lineNumber:114 description:{@"Unable to find class %s", "RPTTestRunner"}];

  __break(1u);
}

void sub_10001D3D8(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *RecapPerformanceTestingLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"mSMSApplicationTesting.m" lineNumber:113 description:{@"%s", *a1}];

  __break(1u);
}

void sub_10001D458()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getRPTScrollViewTestParametersClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"mSMSApplicationTesting.m" lineNumber:116 description:{@"Unable to find class %s", "RPTScrollViewTestParameters"}];

  __break(1u);
}

void sub_10001D4D4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getRPTResizeTestParametersClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"mSMSApplicationTesting.m" lineNumber:115 description:{@"Unable to find class %s", "RPTResizeTestParameters"}];

  __break(1u);
}

void sub_10001D578(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to add Messages Fileprovider domain: %@", &v4, 0xCu);
}

void sub_10001D614(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SMSApplicationDelegate.m" lineNumber:436 description:@"Should be running on main thread."];
}

void sub_10001D688()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getLSApplicationWorkspaceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SMSApplicationDelegate.m" lineNumber:85 description:{@"Unable to find class %s", "LSApplicationWorkspace"}];

  __break(1u);
}

void sub_10001D704(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *CoreServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SMSApplicationDelegate.m" lineNumber:84 description:{@"%s", *a1}];

  __break(1u);
  CFNotificationCenterGetDarwinNotifyCenter();
}