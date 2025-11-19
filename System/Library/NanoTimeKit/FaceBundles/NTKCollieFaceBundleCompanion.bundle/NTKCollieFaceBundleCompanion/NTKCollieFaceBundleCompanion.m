uint64_t sub_1E7C(uint64_t a1)
{
  qword_331D0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_226C(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_22E4;
  v2[3] = &unk_2C740;
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_22E4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2 == *(v3 + 8) || (v2 | 4) == 4)
  {
    *(v3 + 8) = v2;
  }

  else
  {
    v6 = +[NTKCollieStyleEditOption memojiIdentifiers];
    *(*(a1 + 32) + 8) = *(a1 + 40);
    [NTKCollieStyleEditOption cloudSyncStatusInvalidatingIdentifiers:v6];
  }
}

void sub_2600(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 supportsDeviceToDeviceEncryption] && objc_msgSend(v3, "accountStatus") == &dword_0 + 1)
  {
    v4 = *(*(a1 + 32) + 16);
  }

  else
  {
    v5 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_17E58();
    }

    v4 = *(*(a1 + 32) + 16);
  }

  v4();
}

void sub_280C(id a1)
{
  qword_331E8 = +[AVTAnimoji animojiNames];

  _objc_release_x1();
}

id sub_2964()
{
  if (qword_33200 != -1)
  {
    sub_17EAC();
  }

  v1 = qword_331F8;

  return v1;
}

id sub_2C9C(id a1, AVTAvatarRecord *a2)
{
  v2 = a2;
  v3 = [(AVTAvatarRecord *)v2 identifier];
  v4 = objc_autoreleasePoolPush();
  v5 = [NTKCollieStyleEditOptionAvatarRecordCache _memojiDataRepresentationFromAvatarRecord:v2];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 sha1String];
  }

  else
  {
    v7 = &stru_2D420;
  }

  objc_autoreleasePoolPop(v4);
  v10[0] = @"identifier";
  v10[1] = @"sha1";
  v11[0] = v3;
  v11[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

void sub_34C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_34EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v6 = [objc_opt_class() _basenameForSnapshotImageIdentifier:v9 poseType:0 size:{*(a1 + 56), *(a1 + 64)}];
  if ([*(a1 + 40) containsObject:v6])
  {
    v7 = *(a1 + 40);
    v8 = [objc_opt_class() _basenameForSnapshotImageIdentifier:v9 poseType:a4 size:{*(a1 + 56), *(a1 + 64)}];
    [v7 addObject:v8];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

uint64_t sub_3834(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 isEqualToString:@"avatar"])
  {
    [*(a1 + 32) addObject:v9];
    v3 = [objc_opt_class() _extendPreservelist:*(a1 + 32) snapshotKey:@"local"];
LABEL_3:
    v4 = v9;
    goto LABEL_6;
  }

  v3 = [v9 isEqualToString:@"memoji-identifier"];
  v4 = v9;
  if (v3 && (*(a1 + 56) & 1) == 0)
  {
    v5 = [objc_opt_class() bridgeMemojiIdentifierForResourceDirectory:*(a1 + 48)];
    if (v5 && ([*(a1 + 40) hasAvatarStoreMemojiForIdentifier:v5] & 1) == 0)
    {
      v6 = [NSString regularMemojiStyleNameForIdentifier:v5];
      v7 = [objc_opt_class() dataRepresentationBasenameForStyleName:v6];
      [*(a1 + 32) addObject:v9];
      [*(a1 + 32) addObject:v7];
      [objc_opt_class() _extendPreservelist:*(a1 + 32) snapshotKey:v6];
    }

    goto LABEL_3;
  }

LABEL_6:

  return _objc_release_x1(v3, v4);
}

void sub_45D8(uint64_t a1)
{
  if ([*(a1 + 32) isSharedMemojiStyleName])
  {
    v2 = [NTKCollieStyleEditOptionAvatarRecordCache sharedMemojiForResourceDirectory:*(a1 + 40) oldAvatar:*(a1 + 48)];
LABEL_3:
    v3 = v2;
    goto LABEL_12;
  }

  v4 = [*(a1 + 32) isRegularMemojiStyleName];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 memojiIdentifier];
    v7 = [*(a1 + 56) indexForRecordIdentifier:v6];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [objc_opt_class() bridgeMemojiForIdentifier:v6 resourceDirectory:*(a1 + 40)];
    }

    else
    {
      [*(a1 + 56) memojiAvatarAtIndex:v7 oldAvatar:*(a1 + 48)];
    }
    v8 = ;

    v3 = v8;
    goto LABEL_12;
  }

  if ([v5 isRegularAnimojiStyleName])
  {
    v2 = [AVTAnimoji animojiNamed:*(a1 + 32)];
    goto LABEL_3;
  }

  v3 = 0;
LABEL_12:
  v9 = v3;
  (*(*(a1 + 64) + 16))();
}

void sub_64C8(uint64_t a1, void *a2)
{
  v10 = a2;
  if (*(a1 + 32))
  {
    v3 = 0;
    v4 = 1.10000002;
    do
    {
      v5 = *(*(a1 + 40) + 8 * v3);
      [v5 size];
      v8 = v4 * v7;
      if (v3)
      {
        if (v3 == 2)
        {
          v8 = v7 * 1.21000004;
          v9 = (*(a1 + 48) - v6 * 1.21000004 * 0.5) * 0.5;
          v4 = 1.21000004;
        }

        else
        {
          if (v3 != 1)
          {

            break;
          }

          v9 = *(a1 + 48) + 5.0 - v4 * v6 * 0.5;
        }
      }

      else
      {
        v9 = -5.0;
      }

      [v5 drawInRect:{v9, (*(a1 + 56) - v8 * 0.5) * 0.5 + 0.0}];

      ++v3;
    }

    while (v3 < *(a1 + 32));
  }
}

void sub_66C8(uint64_t a1, void *a2)
{
  v9 = a2;
  if (*(a1 + 32))
  {
    for (i = 0; i < *(a1 + 32); ++i)
    {
      v4 = *(*(a1 + 40) + 8 * i);
      [v4 size];
      v7 = v6 * 1.21000004 * 0.5;
      v8 = -2.5;
      if (i)
      {
        if (i != 1)
        {

          break;
        }

        v8 = *(a1 + 48) + 2.5 - v7;
      }

      [v4 drawInRect:{v8, (*(a1 + 56) - v5 * 1.21000004 * 0.5) * 0.5 + 0.0, v7}];
    }
  }
}

id sub_697C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

void sub_6C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_6C54(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v14 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = [*(a1 + 32) snapshotImageForStyleName:v7 resourceDirectory:0 poseType:a4 size:{*(a1 + 48), *(a1 + 56)}];
  if (!v9)
  {
    v9 = [*(a1 + 32) _makeSnapshotImageForStyleName:v7 resourceDirectory:0 poseType:a4 size:{*(a1 + 48), *(a1 + 56)}];
  }

  v10 = *(a1 + 64);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 24);
  *(v11 + 24) = v12 + 1;
  v13 = *(v10 + 8 * v12);
  *(v10 + 8 * v12) = v9;

  objc_autoreleasePoolPop(v8);
}

void sub_7008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_702C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v14 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = [*(a1 + 32) snapshotImageForStyleName:v7 resourceDirectory:0 poseType:a4 size:{*(a1 + 48), *(a1 + 56)}];
  if (!v9)
  {
    v9 = [*(a1 + 32) _makeSnapshotImageForStyleName:v7 resourceDirectory:0 poseType:a4 size:{*(a1 + 48), *(a1 + 56)}];
  }

  v10 = *(a1 + 64);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 24);
  *(v11 + 24) = v12 + 1;
  v13 = *(v10 + 8 * v12);
  *(v10 + 8 * v12) = v9;

  objc_autoreleasePoolPop(v8);
}

void sub_7D0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(*(a1 + 32) + 64) objectAtIndex:0];
  objc_sync_exit(v2);

  if (v3)
  {
    v4 = CACurrentMediaTime();
    v5 = [v3 styleName];
    v6 = [v3 resourceDirectory];
    v7 = [v3 poseType];
    [v3 size];
    v9 = v8;
    v11 = v10;
    v12 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v13 = (a1 + 32);
    v15 = [v14 _makeSnapshotImageForStyleName:v5 resourceDirectory:v6 poseType:v7 size:{v9, v11}];
    objc_autoreleasePoolPop(v12);
    v16 = *v13;
    objc_sync_enter(v16);
    [*(*v13 + 8) removeObject:v3];
    objc_sync_exit(v16);

    v17 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = CACurrentMediaTime();
      v19 = [v3 completions];
      *buf = 136315906;
      v30 = "[NTKCollieStyleEditOptionAvatarRecordCache _makeSnapshotImageForStyleName:resourceDirectory:poseType:size:completion:]_block_invoke";
      v31 = 2112;
      v32 = v5;
      v33 = 2048;
      v34 = v18 - v4;
      v35 = 1024;
      v36 = [v19 count];
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%s: completed styleName = %@, build time = %.3fs, nCompletions = %u", buf, 0x26u);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = [v3 completions];
    v21 = [v20 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v21)
    {
      v22 = *v25;
      do
      {
        v23 = 0;
        do
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(v20);
          }

          (*(*(*(&v24 + 1) + 8 * v23) + 16))(v9, v11);
          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [v20 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v21);
    }
  }
}

uint64_t sub_80C0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_81A0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_8280(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_8DFC(id a1)
{
  v1 = NTKCacheDirectory();
  v2 = [v1 stringByAppendingPathComponent:@"Animoji"];
  v3 = qword_331F8;
  qword_331F8 = v2;

  v4 = +[NSFileManager defaultManager];
  [v4 createDirectoryAtPath:qword_331F8 withIntermediateDirectories:1 attributes:0 error:0];

  v5 = +[NSFileManager defaultManager];
  v7 = NSFileProtectionKey;
  v8 = NSFileProtectionNone;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v5 setAttributes:v6 ofItemAtPath:qword_331F8 error:0];
}

void sub_8F4C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id NTKCollieFaceNSBundle()
{
  v0 = objc_opt_class();

  return [NSBundle bundleForClass:v0];
}

void sub_92CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_99D4(uint64_t a1)
{
  [*(*(a1 + 32) + 16) deprecated_ntk_setPaused:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

id sub_9ADC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) deprecated_ntk_isPaused];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_9CD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_9DAC(uint64_t a1)
{
  [*(a1 + 32) ensureRenderer];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 16);

  return [v5 setAvatar:v4];
}

void sub_9ED0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 ensureRenderer];
    v4 = [*(*(a1 + 40) + 16) avatar];
    v5 = *(a1 + 32);

    if (v4 != v5)
    {
      v6 = *(a1 + 32);
      v7 = *(*(a1 + 40) + 16);

      [v7 setAvatar:v6];
    }
  }

  else
  {
    v8 = [v2 quadView];
    [v8 discardContents];

    [*(*(a1 + 40) + 16) setAvatar:0];
    v9 = *(a1 + 40);
    v10 = *(v9 + 16);
    *(v9 + 16) = 0;
  }
}

void sub_A278(uint64_t a1)
{
  [*(*(a1 + 32) + 16) renderWithViewport:*(a1 + 40) commandBuffer:*(a1 + 48) passDescriptor:{0.0, 0.0, *(*(a1 + 32) + 32), *(*(a1 + 32) + 40)}];
  v2 = *(*(a1 + 32) + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A344;
  block[3] = &unk_2C970;
  v4 = *(a1 + 56);
  dispatch_async(v2, block);
}

intptr_t sub_A344(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = dispatch_time(0, 1000000000);

  return dispatch_group_wait(v1, v2);
}

void sub_A7AC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 display];
  if ([v6 isEqualToString:NTKComplicationSlotDate])
  {
    [v5 setTextColor:*(a1 + 32)];
  }

  else if ([v6 isEqualToString:NTKComplicationSlotBottom])
  {
    [v5 setForegroundColor:*(a1 + 32)];
  }
}

void sub_AED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_AF08(uint64_t a1, int token)
{
  notify_cancel(token);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _didFirstUnlock];
    WeakRetained = v4;
  }
}

void sub_AF60(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _avatarStoreDidChange:v5];
  }
}

void sub_B788(uint64_t a1)
{
  v2 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_18A70();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[16] == 1)
    {
      v5 = WeakRetained[17];
      if (v5)
      {
        v6 = v5;
      }

      else
      {
        v7 = [WeakRetained device];
        v6 = [NTKCollieStyleEditOption defaultOptionForDevice:v7];
      }

      [v4 _transitionFromImageToAvatarForOption:v6 fromState:2];
    }

    v8 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_18AF0();
    }
  }
}

void sub_BA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_BA9C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && !*(a3 + 24))
  {
    [WeakRetained _topOfTheMinuteReached];
  }
}

id sub_BF04(void *a1)
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v1 = a1;
  sub_1150C(v1, &v6);
  v2 = *&v6;
  v3 = NTKShowIndicScriptNumerals();

  if (!v3 || ([NTKSFCompactFont numericRoundedFontOfSize:v2 weight:UIFontWeightMedium], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v2 design:UIFontWeightMedium, v6, v7, v8];
  }

  return v4;
}

void sub_C380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_C3A0(uint64_t a1)
{
  if ((a1 - 1) > 1)
  {
    return 0;
  }

  v1 = +[CLKDevice currentDevice];
  if ([v1 isLocked])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

void sub_C400(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _transitionFromImageToAvatarForOption:*(a1 + 32) fromState:sub_C3A0(*(a1 + 48))];
    WeakRetained = v3;
  }
}

void sub_C464(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C4E8;
  block[3] = &unk_2CC98;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_D258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_D274(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 loadingTag];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if ((v5 & 1) == 0)
  {
    if (*(a1 + 40))
    {
      v6 = 0;
    }

    else
    {
      v6 = +[NTKCollieFaceImageView loadingImage];
    }

    [v3 setImage:v6];
    [v3 setLoadingTag:*(a1 + 32)];
  }

  return v5;
}

void sub_D30C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_D420;
    block[3] = &unk_2CD10;
    objc_copyWeak(v14, (a1 + 40));
    v13 = *(a1 + 32);
    v11 = v8;
    v14[1] = a4;
    v12 = v7;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(v14);
  }

  else
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))();
    }
  }
}

void sub_D420(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [NSString stringWithFormat:@"%@-%u", *(a1 + 32), *(a1 + 64)];
    v4 = [WeakRetained[6] loadingTag];
    v5 = [v4 isEqualToString:v3];

    if (v5)
    {
      v6 = +[NTKCollieFaceBundle logObject];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        [WeakRetained[6] timeIntervalSinceTagged];
        *buf = 138412546;
        v17 = v7;
        v18 = 2048;
        v19 = v8;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "loading fromSnapshotView image for styleName %@ after %.3fs", buf, 0x16u);
      }

      [WeakRetained[6] setImage:*(a1 + 40)];
    }

    v9 = [WeakRetained[7] loadingTag];
    v10 = [v9 isEqualToString:v3];

    if (v10)
    {
      v11 = +[NTKCollieFaceBundle logObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        [WeakRetained[7] timeIntervalSinceTagged];
        *buf = 138412546;
        v17 = v12;
        v18 = 2048;
        v19 = v13;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "loading toSnapshotView image for styleName %@ after %.3fs", buf, 0x16u);
      }

      [WeakRetained[7] setImage:*(a1 + 40)];
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      (*(v14 + 16))();
    }
  }

  else
  {
    v15 = *(a1 + 48);
    if (v15)
    {
      (*(v15 + 16))();
    }
  }
}

void sub_DA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_DA8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_DB84;
    block[3] = &unk_2CD60;
    objc_copyWeak(v8, (a1 + 48));
    v7 = *(a1 + 40);
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v6 = v3;
    v8[1] = v4;
    v9 = *(a1 + 64);
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(v8);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_DB84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [WeakRetained _asyncSetImageViewsForOption:*(a1 + 32) state:*(a1 + 56) resolveToyBox:*(a1 + 64)];
    [WeakRetained _transitionFromAvatarToImagePart3ForOption:*(a1 + 32) immediate:*(a1 + 65) retainAvatar:*(a1 + 64)];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_DED8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_DEFC(id a1, NTKCollieFaceView *a2)
{
  avtView = a2->_avtView;
  v3 = a2;
  [(CLKUIMetalQuadView *)avtView setAlpha:0.0];
  [(NTKCollieFaceImageView *)v3->_fromSnapshotView setAlpha:1.0];
  toSnapshotView = v3->_toSnapshotView;

  [(NTKCollieFaceImageView *)toSnapshotView setAlpha:0.0];
}

void sub_DF74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v8 = v3;
  if (*(a1 + 32) == 1)
  {
    v5 = [v3[17] isToybox];
    v4 = v8;
    if (v5 && *(v8 + 315) == 1)
    {
      [v8 _reloadToyBoxAvatar];
      [v8[6] setAlpha:0.0];
      [v8[7] setAlpha:1.0];
LABEL_8:
      v4 = v8;
    }
  }

  else if (v3[16] != &dword_0 + 1 || *(a1 + 33) == 1)
  {
    [v3[3] setAvatar:0];
    v6 = v8[29];
    v8[29] = 0;

    goto LABEL_8;
  }

  v7 = [v4 contentView];
  [v7 bringSubviewToFront:v8[6]];
}

uint64_t sub_E0AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = (*(*(a1 + 32) + 16))();
    v3 = v5;
  }

  return _objc_release_x1(WeakRetained, v3);
}

uint64_t sub_E10C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && a2)
  {
    v7 = WeakRetained;
    WeakRetained = (*(*(a1 + 32) + 16))();
    v5 = v7;
  }

  return _objc_release_x1(WeakRetained, v5);
}

void sub_E320(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_E344(id a1, NTKCollieFaceView *a2)
{
  avtView = a2->_avtView;
  v3 = a2;
  [(CLKUIMetalQuadView *)avtView setAlpha:1.0];
  [(NTKCollieFaceImageView *)v3->_fromSnapshotView setAlpha:0.0];
  toSnapshotView = v3->_toSnapshotView;

  [(NTKCollieFaceImageView *)toSnapshotView setAlpha:0.0];
}

void sub_E3BC(id a1, NTKCollieFaceView *a2)
{
  v2 = a2;
  v4 = [(NTKCollieFaceView *)v2 contentView];
  avtView = v2->_avtView;

  [v4 bringSubviewToFront:avtView];
}

uint64_t sub_E424(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = (*(*(a1 + 32) + 16))();
    v3 = v5;
  }

  return _objc_release_x1(WeakRetained, v3);
}

uint64_t sub_E484(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = (*(*(a1 + 32) + 16))();
    v3 = v5;
  }

  return _objc_release_x1(WeakRetained, v3);
}

void sub_E5D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[3] renderer];
    [v4 setFramingMode:AVTFramingModeWatchFace];
    v5 = *(a1 + 48);
    v6 = v3[17];
    if (v5 == 1)
    {
      v7 = [v6 sleepPose];
    }

    else
    {
      if (v5)
      {
        [v6 neutralPose];
      }

      else
      {
        [v6 friendlyPose];
      }
      v7 = ;
    }

    v8 = v7;
    v9 = [v3[3] avatar];
    [v9 setPose:v8];

    v10 = v3[2];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_E748;
    v11[3] = &unk_2CDE8;
    objc_copyWeak(&v13, (a1 + 40));
    v12 = *(a1 + 32);
    [v10 renderSynchronouslyWithImageQueueDiscard:1 inGroup:0 completion:v11];

    objc_destroyWeak(&v13);
  }
}

void sub_E748(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_E7EC;
  v2[3] = &unk_2CDE8;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);

  objc_destroyWeak(&v4);
}

void sub_E7EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[16] == 1)
    {
      +[CATransaction begin];
      v4 = v3[2];
      v7 = _NSConcreteStackBlock;
      v8 = 3221225472;
      v9 = sub_E9C0;
      v10 = &unk_2CDE8;
      objc_copyWeak(&v12, (a1 + 40));
      v11 = *(a1 + 32);
      [v4 renderSynchronouslyWithImageQueueDiscard:1 inGroup:0 completion:&v7];
      [CATransaction commit:v7];

      objc_destroyWeak(&v12);
    }

    else
    {
      v5 = +[NTKCollieFaceBundle logObject];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v3[16];
        *buf = 136315650;
        v14 = "[NTKCollieFaceView _restartRenderForAvatar:fromState:completion:]_block_invoke_3";
        v15 = 2048;
        v16 = v3;
        v17 = 1024;
        v18 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s(%p): while restarting render we changed to dataMode = %u, bailing", buf, 0x1Cu);
      }

      [v3 _unloadAvatar];
    }
  }
}

void sub_E9C0(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_EA64;
  v2[3] = &unk_2CDE8;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);

  objc_destroyWeak(&v4);
}

void sub_EA64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[3] setPaused:0];
    [v4[2] setPaused:0];
    +[NSDate timeIntervalSinceReferenceDate];
    v4[36] = v3;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v4;
  }
}

void sub_EDF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_EE24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_EEF0;
  v6[3] = &unk_2CEA0;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void sub_EEF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      +[NTKCollieStyleEditOption invalidateCache];
      [v3[3] prewarmAvatar:*(a1 + 32)];
      v4 = v3[2];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_EFE0;
      v5[3] = &unk_2CAD0;
      v5[4] = v3;
      v6 = *(a1 + 32);
      [v4 prewarmWithCompletion:v5];
    }

    else
    {
      *(WeakRetained + 240) = 0;
    }
  }
}

void sub_EFE0(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_F068;
  v2[3] = &unk_2CAD0;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

uint64_t sub_F068(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 32);
  v3 = *(v2 + 232);
  *(v2 + 232) = 0;

  [*(*(a1 + 32) + 24) setAvatar:*(a1 + 40)];
  *(*(a1 + 32) + 240) = 0;
  result = *(*(a1 + 32) + 248);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_F350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_F36C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    WeakRetained[34] = v4;
    [WeakRetained _restartRenderForAvatar:v5 fromState:*(a1 + 48) completion:*(a1 + 32)];
  }
}

void sub_F650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_F66C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _startMachineFromState:*(a1 + 40)];
    [v3 _transitionFromImageToCurrentAvatarImmediate:(*(a1 + 48) & 1) == 0];
    [v3 _reportStats];
    WeakRetained = v3;
  }
}

void sub_100A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setBackgroundAlpha:*(a1 + 32) contentAlpha:*(a1 + 48) timeComplicationsColor:*(a1 + 56)];
    WeakRetained = v3;
  }
}

void sub_102D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_102FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setBackgroundAlpha:*(a1 + 32) contentAlpha:*(a1 + 48) timeComplicationsColor:*(a1 + 56)];
    WeakRetained = v3;
  }
}

void sub_10354(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setBackgroundAlpha:*(a1 + 32) contentAlpha:*(a1 + 56) timeComplicationsColor:*(a1 + 64)];
    [v3 _setBackgroundColor:*(a1 + 40) radiance:*(a1 + 56)];
    WeakRetained = v3;
  }
}

void sub_10DBC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6 && [v5 isEqualToString:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_110E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) userInfo];
  v5 = [*(a1 + 48) resourceDirectory];
  v6 = [NTKCollieStyleEditOption changedOptionForOption:v3 avatarStoreChangedInfo:v4 resourceDirectory:v5];

  v7 = sub_C3A0(*(*(a1 + 48) + 128));
  [*(a1 + 48) _transitionFromAvatarToImageForOption:v6 toState:v7 immediate:1 retainAvatar:0 forceImage:1];
  v8 = *(a1 + 48);
  if (*(v8 + 128) != 3)
  {
    v10 = [v8 device];
    goto LABEL_5;
  }

  v9 = [*(v8 + 8) mostRecentEditMode];
  v10 = [*(a1 + 48) device];
  v11 = 0.0;
  if (v9 != &dword_C + 3)
  {
LABEL_5:
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    sub_1150C(v10, &v13);
    v11 = *&v14 * 0.5;
  }

  [*(*(a1 + 48) + 48) setVOffset:v11];
  [*(*(a1 + 48) + 56) setVOffset:v11];
  [*(a1 + 48) _unloadAvatar];
  objc_storeStrong((*(a1 + 48) + 136), v6);
  v12 = *(a1 + 48);
  if (v6 == *(a1 + 32))
  {
    if (*(v12 + 128) == 1)
    {
      [v12 _transitionFromImageToAvatarForOption:v6 fromState:v7];
    }
  }

  else
  {
    [*(v12 + 8) selectOption:v6 forCustomEditMode:15 slot:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1150C(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_33238);
  if (qword_33240)
  {
    v3 = qword_33240 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_33248))
  {
    qword_33240 = v6;
    qword_33248 = [v6 version];
    sub_115E4(v6, v7);
    xmmword_33208 = v7[0];
    unk_33218 = v7[1];
    xmmword_33228 = v7[2];
  }

  v5 = unk_33218;
  *a2 = xmmword_33208;
  a2[1] = v5;
  a2[2] = xmmword_33228;
  os_unfair_lock_unlock(&unk_33238);
}

void sub_115E4(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  v3 = a1;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [v4 scaledValue:83.0];
  v21 = v5;
  v26[0] = &off_2DE80;
  v26[1] = &off_2DE98;
  v27[0] = &off_2E060;
  v27[1] = &off_2E070;
  v26[2] = &off_2DEB0;
  v26[3] = &off_2DEC8;
  v27[2] = &off_2E080;
  v27[3] = &off_2E090;
  v26[4] = &off_2DEE0;
  v26[5] = &off_2DEF8;
  v27[4] = &off_2E0A0;
  v27[5] = &off_2E0B0;
  v26[6] = &off_2DF10;
  v27[6] = &off_2E0C0;
  v6 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:7];
  [v4 scaledValue:v6 withOverrides:126.0];
  v7.f64[0] = v21;
  v7.f64[1] = v8;
  __asm { FMOV            V0.2D, #0.5 }

  *a2 = vmulq_f64(v7, _Q0);

  [v4 scaledValue:13.0];
  *(a2 + 24) = v14;
  v24[0] = &off_2DE80;
  v24[1] = &off_2DE98;
  v25[0] = &off_2E0D0;
  v25[1] = &off_2E0D0;
  v24[2] = &off_2DEB0;
  v24[3] = &off_2DEC8;
  v25[2] = &off_2E0E0;
  v25[3] = &off_2E0E0;
  v24[4] = &off_2DEE0;
  v24[5] = &off_2DEF8;
  v25[4] = &off_2E0F0;
  v25[5] = &off_2E100;
  v24[6] = &off_2DF10;
  v25[6] = &off_2E110;
  v15 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:7];
  [v4 scaledValue:v15 withOverrides:58.0];
  *(a2 + 32) = v16 * 0.5;

  v22[0] = &off_2DE80;
  v22[1] = &off_2DE98;
  v23[0] = &off_2E120;
  v23[1] = &off_2E130;
  v22[2] = &off_2DEB0;
  v22[3] = &off_2DEC8;
  v23[2] = &off_2E120;
  v23[3] = &off_2E120;
  v22[4] = &off_2DEE0;
  v22[5] = &off_2DEF8;
  v23[4] = &off_2E130;
  v23[5] = &off_2E120;
  v22[6] = &off_2DF10;
  v23[6] = &off_2E120;
  v17 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:7];
  [v4 constantValue:v17 withOverrides:47.334507];
  *(a2 + 40) = v18;

  v19 = [v3 sizeClass];
  v20 = 0;
  if (v19 <= 9)
  {
    v20 = qword_26B50[v19];
  }

  *(a2 + 16) = v20;
}

void sub_118E4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_1190C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

id NTKCollieColorAtIndex(unint64_t a1, uint64_t a2)
{
  v3 = [NTKCollieColorEditOption _orderedValuesForDevice:a2];
  if ([v3 count] <= a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  v5 = [v3 objectAtIndexedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

  return v6;
}

id sub_11A44(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_33258);
  if (qword_33260)
  {
    v4 = qword_33260 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_33268))
  {
    qword_33260 = v3;
    qword_33268 = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = qword_33250;
    qword_33250 = v6;
  }

  v8 = qword_33250;
  os_unfair_lock_unlock(&unk_33258);

  return v8;
}

void sub_11D28(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) device];
  v4 = [NTKCollieColorEditOption _orderedValuesForDevice:v3];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = objc_opt_class();
        v12 = [v10 unsignedIntegerValue];
        v13 = [*(a1 + 32) device];
        v14 = [v11 _snapshotKeyForValue:v12 forDevice:v13];
        [v2 setObject:v14 forKeyedSubscript:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [v2 copy];
  v16 = qword_33270;
  qword_33270 = v15;
}

void sub_12420(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) defaultLayoutRuleForState:a2];
  [v4 setVerticalLayout:3];
  [v4 setHorizontalLayout:1];
  [*(a1 + 32) setDefaultLayoutRule:v4 forState:a2];
  [v4 referenceFrame];
  CLKRectCenteredXInRectForDevice();
  [v4 setReferenceFrame:?];
}

void sub_126D8(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextTranslateCTM(v3, 0.0, *(a1 + 56));
  CGContextScaleCTM(v3, 1.0, -1.0);
  CGContextClipToMask(v3, *(a1 + 64), [*(a1 + 32) CGImage]);
  [*(a1 + 40) setFill];
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);

  CGContextFillRect(v3, *&v4);
}

void sub_12F14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 selectOption:v3 forCustomEditMode:15 slot:0];
  v10[0] = ntk_seasons_spring2015_pink;
  v10[1] = ntk_seasons_spring2015_purple;
  v10[2] = ntk_seasons_spring2015_blue;
  v10[3] = ntk_seasons_spring2016_apricot;
  v5 = [NSArray arrayWithObjects:v10 count:4];
  v6 = [v5 objectAtIndexedSubscript:{arc4random() % objc_msgSend(v5, "count")}];
  v7 = [NTKPigmentEditOption pigmentNamed:v6];
  [v4 selectOption:v7 forCustomEditMode:10 slot:0];

  v8 = +[NTKDateComplication complicationWithDateStyle:](NTKDateComplication, "complicationWithDateStyle:", [*(a1 + 48) _dateComplicationSlotSupportedStylesForDevice:*(a1 + 40)]);
  [v4 setComplication:v8 forSlot:NTKComplicationSlotDate];
  v9 = [NTKComplication anyComplicationOfType:10];

  [v4 setComplication:v9 forSlot:NTKComplicationSlotBottom];
}

void sub_149E8(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) count] > a3)
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v7 = [NTKCollieStyleEditOption optionWithStyleName:v6 forDevice:*(a1 + 40)];

    [v5 selectOption:v7 forCustomEditMode:15 slot:0];
  }

  [v5 setComplication:0 forSlot:NTKComplicationSlotBottom];
  switch(a3)
  {
    case 2uLL:
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
      v14[0] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:15 zOrder:4000];
      v14[1] = v9;
      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:19 zOrder:4000];
      v14[2] = v10;
      v12 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
      v14[3] = v12;
      v13 = [NSArray arrayWithObjects:v14 count:4];
      [v5 setCurationPlacements:v13];

      goto LABEL_10;
    case 1uLL:
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:15 zOrder:4000];
      v15[0] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:19 zOrder:4000];
      v15[1] = v9;
      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
      v15[2] = v10;
      v11 = v15;
      goto LABEL_8;
    case 0uLL:
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:15 zOrder:4000];
      v16[0] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:19 zOrder:4000];
      v16[1] = v9;
      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
      v16[2] = v10;
      v11 = v16;
LABEL_8:
      v12 = [NSArray arrayWithObjects:v11 count:3];
      [v5 setCurationPlacements:v12];
LABEL_10:

      break;
  }
}

void sub_14F08(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v8 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:v5 + a3];

  v7 = v8;
  if (v8)
  {
    [*(a1 + 32) addObject:v8];
    v7 = v8;
  }
}

void sub_15618(uint64_t a1)
{
  v2 = +[NTKCollieStyleEditOption avatarRecordCache];
  v3 = [v2 memojiIdentifiers];

  v4 = [*(a1 + 32) _avtui_changedRecordIdentifiers];
  v7[0] = @"oldIDs";
  v7[1] = @"changedRecordIDs";
  v8[0] = v3;
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [*(a1 + 40) invalidateCache];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"NTKCollieAvatarStoreDidChangeNotification" object:0 userInfo:v5];
}

void sub_15850(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = @"oldIDs";
  v5[1] = @"changedRecordIDs";
  v6[0] = v2;
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  [*(a1 + 40) invalidateCache];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"NTKCollieAvatarStoreDidChangeNotification" object:0 userInfo:v3];
}

id sub_16228(id a1, NTKEditOption *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(NTKEditOption *)v2 styleName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_17450(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5, double a6)
{
  obj = a2;
  v11 = a3;
  if (!(*(a1 + 56) | a4) && [*(a1 + 32) isEqualToString:v11])
  {
    objc_storeWeak((*(a1 + 40) + 8), obj);
  }

  (*(*(a1 + 48) + 16))(a5, a6);
}

void sub_17DA8()
{
  sub_8F68();
  sub_8F40();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_17EC0()
{
  sub_8F1C();
  sub_8F40();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_17F3C()
{
  sub_8F1C();
  sub_8F40();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_17FB8()
{
  sub_8F1C();
  sub_8F40();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_180B4()
{
  sub_8F1C();
  sub_8F40();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_182B0()
{
  sub_8F1C();
  sub_8F74();
  sub_8F30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_18330()
{
  sub_8F1C();
  sub_8F74();
  sub_8F30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_183B0()
{
  sub_8F68();
  sub_8F40();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_18420()
{
  sub_8F68();
  sub_8F30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1849C()
{
  sub_8F1C();
  sub_8F74();
  sub_8F30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1851C()
{
  sub_8F68();
  sub_8F30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_18598()
{
  sub_8F1C();
  sub_8F74();
  sub_8F30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_18B70()
{
  v2[0] = 136315650;
  sub_118C0();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "%s(%p): dataMode = %u", v2, 0x1Cu);
}

void sub_18C00(uint64_t *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4 = 136315650;
  v5 = "[NTKCollieFaceView _applyDataMode]";
  v6 = 1024;
  v7 = v3;
  v8 = 1024;
  v9 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%s: unexpected dataMode transition from %u to %u", &v4, 0x18u);
}

void sub_18C9C()
{
  v2[0] = 136315650;
  sub_1193C();
  v3 = v0;
  v4 = 1;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%s: unexpected live avatar transitioning from dataMode %u to %u", v2, 0x18u);
}

void sub_18D28()
{
  sub_1193C();
  sub_11900();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_18F0C(uint64_t a1, void *a2)
{
  v2 = [a2 localizedName];
  sub_118D4();
  sub_1192C();
  sub_1190C(&dword_0, v3, v4, "%s(%p): avatar (characterStyle = %@) is good to go, skipping load", v5, v6, v7, v8, 2u);
}

void sub_18FB8(uint64_t a1, void *a2)
{
  v2 = [a2 localizedName];
  sub_118D4();
  sub_1192C();
  sub_1190C(&dword_0, v3, v4, "%s(%p): loading avatar (characterStyle = %@)", v5, v6, v7, v8, 2u);
}

void sub_190D8()
{
  v0 = LogBool();
  sub_118D4();
  sub_1192C();
  sub_1190C(&dword_0, v1, v2, "%s(%p): start immediate=%@", v3, v4, v5, v6, 2u);
}

void sub_193C4(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[NTKCollieFace _handleSharingMetadata:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s: unable to save shared face, error = %@", &v2, 0x16u);
}

void sub_19450(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 styleName];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "recipe for bridge memoji '%@' is invalid, error = %@", &v6, 0x16u);
}