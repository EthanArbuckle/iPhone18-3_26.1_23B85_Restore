void sub_C4220(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = objc_loadWeakRetained((a1 + 64));
  v7 = ++*(*(*(a1 + 40) + 8) + 24) > 0;
  v8 = TUILayoutLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_5;
    }

    v10 = [WeakRetained feedId];
    v11 = *(*(*(a1 + 40) + 8) + 24);
    v12 = *(a1 + 72);
    *buf = 134218754;
    v36 = v10;
    v37 = 1024;
    v38 = v11;
    v39 = 1024;
    *v40 = v12;
    *&v40[4] = 2112;
    *&v40[6] = v6;
    v13 = "[fid:%lu] #%d update entry at section %d %@";
    v14 = v8;
    v15 = 34;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_5;
    }

    v27 = [WeakRetained feedId];
    v28 = *(a1 + 72);
    *buf = 134218498;
    v36 = v27;
    v37 = 1024;
    v38 = v28;
    v39 = 2112;
    *v40 = v6;
    v13 = "[fid:%lu] initial update entry at section %d %@";
    v14 = v8;
    v15 = 28;
  }

  _os_log_debug_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, v13, buf, v15);
LABEL_5:

  if (WeakRetained)
  {
    v16 = v6 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (v17)
    {
      v18 = [WeakRetained transactionCoordinator];
      v19 = *(*(*(a1 + 48) + 8) + 40);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_C45A0;
      v32[3] = &unk_261240;
      objc_copyWeak(v34, (a1 + 56));
      v34[1] = *(a1 + 80);
      v20 = v6;
      v21 = *(a1 + 72);
      v33 = v20;
      v34[2] = v21;
      [v18 scheduleLayoutUpdateWithTransaction:v19 block:v32];

      objc_destroyWeak(v34);
    }

    [*(a1 + 32) removeCompletionDeferral];
    [*(a1 + 32) removeSubTransactionCompletionDeferral];
    v22 = *(*(a1 + 48) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = 0;
    goto LABEL_17;
  }

  if (v17)
  {
    v23 = +[TUITransaction currentOrImplicitTransaction];
    v24 = [WeakRetained transactionCoordinator];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_C464C;
    v29[3] = &unk_261240;
    objc_copyWeak(v31, (a1 + 56));
    v31[1] = *(a1 + 80);
    v25 = v6;
    v26 = *(a1 + 72);
    v30 = v25;
    v31[2] = v26;
    [v24 scheduleLayoutUpdateWithTransaction:v23 block:v29];

    objc_destroyWeak(v31);
LABEL_17:
  }
}

BOOL sub_C45A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 48);
  v6 = [WeakRetained layoutGenerationId];
  if (v5 == v6)
  {
    v7 = *(a1 + 32);
    v8 = [v7 data];
    v9 = [WeakRetained lq_loadFeedEntry:v7 data:v8 section:*(a1 + 56) transactionGroup:v3];
  }

  return v5 == v6;
}

BOOL sub_C464C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 48);
  v6 = [WeakRetained layoutGenerationId];
  if (v5 == v6)
  {
    v7 = *(a1 + 32);
    v8 = [v7 data];
    v9 = [WeakRetained lq_loadFeedEntry:v7 data:v8 section:*(a1 + 56) transactionGroup:v3];
  }

  return v5 == v6;
}

uint64_t sub_C4A2C(uint64_t a1)
{
  v2 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v3 = *v2;
  v4 = *&(*v2)[6]._os_unfair_lock_opaque;
  if (*(a1 + 40) != v4)
  {
    os_unfair_lock_unlock(v3 + 4);
    return 0;
  }

  *&v3[6]._os_unfair_lock_opaque = 0;

  os_unfair_lock_unlock(*v2 + 4);
  if ([*&(*v2)[20]._os_unfair_lock_opaque isEqualToEnvironment:*(a1 + 40)])
  {
    return 0;
  }

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"TUILogEnvironmentChanges"];

  if (v8)
  {
    v9 = TUITransactionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_19B01C(v2, (a1 + 40), v9);
    }
  }

  objc_storeStrong((*(a1 + 32) + 384), *(*(a1 + 32) + 80));
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  v5 = 1;
  *(*(a1 + 32) + 32) = 1;
  objc_storeStrong((*(a1 + 32) + 352), *(a1 + 48));
  objc_storeStrong((*(a1 + 32) + 360), *(a1 + 48));
  return v5;
}

void *sub_C5018(void *result)
{
  v2 = result[4];
  if (!*(v2 + 344))
  {
    v3 = result;
    [*(v2 + 104) updateWithHostingMap:0 transactionGroup:result[5]];
    v4 = v3[5];
    v5 = *(v3[4] + 104);

    return [v5 updateWithRenderModel:0 viewState:0 flags:0 transactionGroup:v4];
  }

  return result;
}

void sub_C5488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_C54A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  [v2 feedLayoutController:WeakRetained axModelSections:*(a1 + 32) renderModelCollection:*(*(a1 + 40) + 256) renderModelSections:*(a1 + 48)];
}

uint64_t sub_C55B4(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 33) = 1;
  v4 = *(*(a1 + 32) + 320);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C5660;
  v7[3] = &unk_261090;
  v8 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return 1;
}

uint64_t sub_C586C(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 33) = 0;
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  *(*(a1 + 32) + 32) = 1;
  objc_storeStrong((*(a1 + 32) + 352), *(a1 + 48));
  objc_storeStrong((*(a1 + 32) + 360), *(a1 + 48));
  *(*(a1 + 32) + 312) |= 0xCuLL;
  v4 = *(*(a1 + 32) + 320);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C5960;
  v7[3] = &unk_261090;
  v8 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return 1;
}

void sub_C5A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_C5A64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAfterLayoutConditionSuspendingUpdatesInvalidated];
}

void sub_C5B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_C5B98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAfterLayoutConditionSuspendingUpdatesInvalidated];
}

void sub_C5CCC(uint64_t a1)
{
  *(*(a1 + 32) + 34) = 1;
  *(*(a1 + 32) + 416) = 0;
  v2 = TUIInstantiationLog();
  *(*(a1 + 32) + 424) = os_signpost_id_generate(v2);

  v3 = TUIInstantiationLog();
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 424);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v7 = *(v5 + 56);
    v13 = 134217984;
    v14 = v7;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "TUIFeedLayoutController.liveResize", "[fid:%lu]  isAnimation=YES", &v13, 0xCu);
  }

  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 BOOLForKey:@"TUIRecordLiveResizeStats"];

  if (v9)
  {
    v10 = objc_alloc_init(TUIStatsLiveResize);
    v11 = *(a1 + 32);
    v12 = *(v11 + 440);
    *(v11 + 440) = v10;

    [*(*(a1 + 32) + 440) beginLiveResize];
  }
}

void sub_C5EB0(uint64_t a1)
{
  v2 = TUIInstantiationLog();
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = v4[53];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v6 = v4[7];
    v7 = v4[52];
    v11 = 134218240;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    _os_signpost_emit_with_name_impl(&dword_0, v3, OS_SIGNPOST_INTERVAL_END, v5, "TUIFeedLayoutController.liveResize", "[fid:%lu] layoutCount=%lu", &v11, 0x16u);
  }

  [*(*(a1 + 32) + 440) endLiveResize];
  v8 = *(a1 + 32);
  v9 = *(v8 + 440);
  *(v8 + 440) = 0;

  *(*(a1 + 32) + 34) = 0;
  v10 = *(a1 + 32);
  if (*(v10 + 35) == 1)
  {
    *(v10 + 35) = 0;
    [*(a1 + 32) _lq_scheduleLayoutRemainder];
  }
}

uint64_t sub_C60D0(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 224), *(a1 + 40));
  [*(*(a1 + 32) + 224) beginCaptureWithFactory:*(*(a1 + 32) + 328) completion:*(a1 + 48)];
  v2 = *(*(a1 + 32) + 320);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_C6188;
  v4[3] = &unk_261090;
  v5 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v4];

  return 1;
}

void sub_C6188(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [*(a1 + 32) entry];
  if (!v4 || (v5 = v4, [*(a1 + 32) entry], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "entry"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v6 == v7))
  {
    [v8 lq_captureWithController:*(a1 + 32)];
  }
}

void sub_C6300(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_C13B4;
  v12 = sub_C13C4;
  v13 = 0;
  v2 = *(*(a1 + 32) + 320);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_C641C;
  v5[3] = &unk_261348;
  v6 = *(a1 + 40);
  v7 = &v8;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v9[5], v3, v4);

  _Block_object_dispose(&v8, 8);
}

void sub_C6404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_C641C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v17 = a3;
  v6 = [v17 entry];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    v8 = [_TUIModelDescribingContext alloc];
    v9 = [v17 template];
    v10 = [v9 package];
    v11 = [(_TUIModelDescribingContext *)v8 initWithPackage:v10];

    v12 = [v17 layoutController];
    v13 = [v12 rootBox];
    v14 = TUIModelDump(v13, v11);
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *a4 = 1;
  }
}

void sub_C65FC(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_C13B4;
  v12 = sub_C13C4;
  v13 = 0;
  v2 = *(*(a1 + 32) + 320);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_C6718;
  v5[3] = &unk_261348;
  v6 = *(a1 + 40);
  v7 = &v8;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v9[5], v3, v4);

  _Block_object_dispose(&v8, 8);
}

void sub_C6700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_C6718(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v13 = a3;
  v6 = [v13 entry];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    v8 = [v13 layoutController];
    v9 = [v8 rootLayout];
    v10 = TUILayoutDump(v9, @"id");
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }
}

void sub_C6EAC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3);
}

void sub_C7910(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  v6 = @"blur-style";
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E63F0;
  qword_2E63F0 = v4;
}

id TUIModelDump(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_new();
  sub_C7B1C(v5, v4, 0, v3);

  return v5;
}

void sub_C7B1C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = [&stru_264550 stringByPaddingToLength:2 * a3 withString:@" " startingAtIndex:0];
  [v7 appendString:v10];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v7 appendFormat:@"%@ ", v12];

  if (objc_opt_respondsToSelector())
  {
    v13 = [v8 describeWithContext:v9];
    [v7 appendFormat:@"%@ ", v13];
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [v8 identifier];
    v15 = [v14 tui_identifierToString];
    [v7 appendFormat:@"id=%@ ", v15];
  }

  v16 = TUIProtocolCast(&OBJC_PROTOCOL___TUIModelContaining, v8);
  if (v16)
  {
    v17 = objc_opt_new();
    [v16 appendContainedChildrenToArray:v17];
    if ([v17 count])
    {
      [v7 appendString:@"{\n"];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v26;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v26 != v21)
            {
              objc_enumerationMutation(v18);
            }

            sub_C7B1C(v7, *(*(&v25 + 1) + 8 * i), a3 + 1, v9);
          }

          v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v20);
      }

      v23 = [&stru_264550 stringByPaddingToLength:2 * a3 withString:@" " startingAtIndex:0];
      [v7 appendString:v23];

      v24 = @"}\n";
    }

    else
    {
      v24 = @"\n";
    }

    [v7 appendString:v24];
  }

  else
  {
    [v7 appendString:@"\n"];
  }
}

void sub_C8364(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  v6[0] = @"name";
  v6[1] = @"trigger-offset";
  v3 = [NSArray arrayWithObjects:v6 count:2];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E6400;
  qword_2E6400 = v4;
}

void sub_C8620(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_CB068(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];

  if (v2)
  {
    v3 = *(*(a1 + 40) + 104);
    v4 = [*(a1 + 32) viewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_CB138;
    v7[3] = &unk_25DCA0;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
    [v3 presentViewController:v4 animated:1 completion:v7];
  }
}

void sub_CB138(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  v3 = [v2 popoverPresentationController];
  [v3 setPassthroughViews:0];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) identifier];
  [v4 updateVisible:1 forIdentifier:v5];
}

id sub_CB364(uint64_t a1)
{
  v2 = TUIHostingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_19B2D4(a1, v2);
  }

  return [*(a1 + 48) setHidden:1];
}

void sub_CB4F0(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];

  if (v2)
  {
    v3 = [*(a1 + 32) viewController];
    [v3 setModalPresentationStyle:7];

    v4 = *(a1 + 32);
    v5 = [v4 viewController];
    v6 = [v5 popoverPresentationController];
    [v6 setDelegate:v4];

    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) viewController];
    v9 = [v8 popoverPresentationController];
    [v9 setBarButtonItem:v7];

    v10 = [*(a1 + 48) _popoverArrowDirectionFromProperties:*(a1 + 56)];
    v11 = [*(a1 + 32) viewController];
    v12 = [v11 popoverPresentationController];
    [v12 setPermittedArrowDirections:v10];

    v13 = [*(a1 + 32) viewController];
    v14 = [v13 popoverPresentationController];
    [v14 _setPrefersZoomTransitions:0];

    v15 = *(*(a1 + 48) + 104);
    v16 = [*(a1 + 32) viewController];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_CB6A0;
    v19[3] = &unk_25DCA0;
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    v20 = v17;
    v21 = v18;
    [v15 presentViewController:v16 animated:1 completion:v19];
  }
}

void sub_CB6A0(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  v3 = [v2 popoverPresentationController];
  [v3 setPassthroughViews:0];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) identifier];
  [v4 updateVisible:1 forIdentifier:v5];
}

id sub_CBD38(uint64_t a1)
{
  [*(a1 + 32) setHidden:0];
  [*(a1 + 32) setAlpha:0.0];
  CGAffineTransformMakeScale(&v5, 0.92, 0.92);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

id sub_CBDA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *&CGAffineTransformIdentity.c;
  v5[0] = *&CGAffineTransformIdentity.a;
  v5[1] = v3;
  v5[2] = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v5];
  return [*(a1 + 32) setAlpha:1.0];
}

id sub_CC224(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.92, 0.92);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

void sub_CC27C(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 40) viewController];
  [v2 endAppearanceTransition];
}

void sub_CC2D4(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_CC378;
  v3[3] = &unk_25DE30;
  v4 = *(a1 + 32);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

void sub_CC4F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  *(v1 + 96) = 0;
}

void sub_CC9AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_CD498(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  v6[0] = @"rating";
  v6[1] = @"kind";
  v6[2] = @"background-color";
  v6[3] = @"start-color";
  v6[4] = @"color";
  v6[5] = @"enabled";
  v3 = [NSArray arrayWithObjects:v6 count:6];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E6410;
  qword_2E6410 = v4;
}

void sub_CD600(id a1)
{
  v4 = @"binding";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6420;
  qword_2E6420 = v2;
}

void sub_CDD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_destroyWeak(va);
  objc_destroyWeak((v13 - 112));
  _Unwind_Resume(a1);
}

id sub_CDDAC(uint64_t a1, void *a2, void *a3)
{
  v30 = *(a1 + 32);
  v29 = *(a1 + 40);
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v27 = [WeakRetained identifier];
  v28 = *(a1 + 48);
  v7 = *(a1 + 88);
  v26 = *(a1 + 104);
  v25 = [v6 computedLayoutDirection];
  v24 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = [TUIRatingsBox starRatingImageNameFromKind:*(a1 + 96)];
  v10 = +[TUIRatingsBox foregroundImageName];
  v11 = objc_loadWeakRetained((a1 + 80));
  v12 = [v11 size];
  [v6 computedNaturalSize];
  [TUIRatingsBox starSizeForSize:v12 layoutSize:?];
  v14 = v13;
  v15 = objc_loadWeakRetained((a1 + 80));
  v16 = [v15 size];
  [v6 computedNaturalSize];
  v18 = v17;
  v20 = v19;

  [TUIRatingsBox spacingForSize:v16 layoutSize:v18, v20];
  v22 = [TUIRatingsView renderModelWithStates:v5 actionHandler:v30 viewState:v29 identifier:v27 name:v28 rating:v26 enabled:v7 direction:v14 color:v21 startColor:v25 backgroundColor:v24 backgroundImageName:v8 foregroundImageName:v9 starWidth:v10 starPadding:?];

  return v22;
}

TUI::Evaluation::DynamicCache *TUI::Evaluation::DynamicCache::DynamicCache(TUI::Evaluation::DynamicCache *this)
{
  *(this + 8) = 0u;
  v2 = (this + 8);
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *this = objc_opt_class();
  v4[0] = objc_opt_class();
  v4[2] = v4;
  *(sub_42708(v2, v4) + 24) = 1;
  return this;
}

void sub_CE838(_Unwind_Exception *a1)
{
  sub_11694(v2);
  sub_11694(v1);
  _Unwind_Resume(a1);
}

void TUI::Evaluation::DynamicCache::~DynamicCache(TUI::Evaluation::DynamicCache *this)
{
  sub_11694(this + 48);
  sub_11694(this + 8);
}

{
  sub_11694(this + 48);
  sub_11694(this + 8);
}

void sub_CF5D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 identifier];
  v4 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:?];
  if (!v4)
  {
    v4 = objc_alloc_init(TUIRenderModelLayerBuilder);
  }

  [*(a1 + 40) setObject:v4 forKeyedSubscript:v6];
  v5 = [v3 submodel];

  [(TUIRenderModelLayerBuilder *)v4 setModel:v5];
}

void sub_CF770(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v4];
  v6 = [v5 layer];
  if (v3)
  {
    [v3 transform];
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
  }

  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  [v6 setAffineTransform:v7];
  [v3 center];
  [v6 setPosition:?];
  [*(a1 + 40) addObject:v6];
}

id sub_CFB98(uint64_t a1)
{
  v2 = [*(a1 + 32) dynamicController];
  v3 = [v2 invalidateInstantiation:*(a1 + 40)];

  return v3;
}

void sub_D11BC(id *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [a1[4] geometryForIdentifier:v7];
  [a1[5] removeObject:v7];
  if (v6 != v5 && ([v5 isEqualToGeometry:v6] & 1) == 0)
  {
    [a1[6] addObject:v7];
  }
}

void *TUI::Instruction::Decoder::Decoder(void *result, uint64_t a2, unsigned int a3)
{
  *result = a2;
  v3 = *(a2 + 16);
  result[1] = *(a2 + 8);
  result[2] = a3;
  result[3] = v3;
  return result;
}

{
  *result = a2;
  v3 = *(a2 + 16);
  result[1] = *(a2 + 8);
  result[2] = a3;
  result[3] = v3;
  return result;
}

uint64_t TUI::Instruction::Decoder::offsetKind(uint64_t this)
{
  if (this <= 0x14u)
  {
    return this;
  }

  else
  {
    return 0;
  }
}

uint64_t TUI::Instruction::Decoder::enumerator(TUI::Instruction::Decoder *this, uint64_t a2, const TUI::Evaluation::Context *a3)
{
  v3 = TUIEnumeratorNil;
  if (this)
  {
    if (this == 10)
    {
      return this >> 8;
    }

    else
    {
      TUI::Evaluation::Context::reportError(a2, 1031, 0);
    }
  }

  return v3;
}

uint64_t TUI::Instruction::Decoder::elementName(TUI::Instruction::Decoder *this, uint64_t a2, const TUI::Evaluation::Context *a3)
{
  v3 = TUINameNil;
  v4 = HIWORD(TUINameNil);
  if (this)
  {
    if (this == 15)
    {
      v3 = this >> 20;
      v4 = (this >> 8) & 0xFFF;
    }

    else
    {
      TUI::Evaluation::Context::reportError(a2, 1031, 0);
    }
  }

  return v3 | (v4 << 16);
}

uint64_t TUI::Instruction::Decoder::bindingName(TUI::Instruction::Decoder *this, uint64_t a2, const TUI::Evaluation::Context *a3)
{
  v3 = TUINameNil;
  v4 = HIWORD(TUINameNil);
  if (this)
  {
    if (this == 16)
    {
      v3 = this >> 20;
      v4 = (this >> 8) & 0xFFF;
    }

    else
    {
      TUI::Evaluation::Context::reportError(a2, 1031, 0);
    }
  }

  return v3 | (v4 << 16);
}

uint64_t TUI::Instruction::Decoder::constantName(TUI::Instruction::Decoder *this, uint64_t a2, const TUI::Evaluation::Context *a3)
{
  v3 = TUINameNil;
  v4 = HIWORD(TUINameNil);
  if (this)
  {
    if (this == 17)
    {
      v3 = this >> 20;
      v4 = (this >> 8) & 0xFFF;
    }

    else
    {
      TUI::Evaluation::Context::reportError(a2, 1031, 0);
    }
  }

  return v3 | (v4 << 16);
}

uint64_t TUI::Instruction::Decoder::propertyName(TUI::Instruction::Decoder *this, uint64_t a2, const TUI::Evaluation::Context *a3)
{
  if (!this)
  {
    return 0xFFFFLL;
  }

  if (this == 20)
  {
    return this >> 8;
  }

  TUI::Evaluation::Context::reportError(a2, 1031, 0);
  return 0xFFFFLL;
}

uint64_t TUI::Instruction::Decoder::globalsName(TUI::Instruction::Decoder *this, uint64_t a2, const TUI::Evaluation::Context *a3)
{
  v3 = TUINameNil;
  v4 = HIWORD(TUINameNil);
  if (this)
  {
    if (this == 19)
    {
      v3 = this >> 20;
      v4 = (this >> 8) & 0xFFF;
    }

    else
    {
      TUI::Evaluation::Context::reportError(a2, 1031, 0);
    }
  }

  return v3 | (v4 << 16);
}

unint64_t TUI::Instruction::Decoder::styleReference(TUI::Instruction::Decoder *this, uint64_t a2, const TUI::Evaluation::Context *a3)
{
  v3 = TUIStyleReferenceNil;
  v4 = HIDWORD(TUIStyleReferenceNil);
  if (this)
  {
    if (this == 14)
    {
      v3 = this >> 14;
      v4 = (this >> 8) & 0x3F;
    }

    else
    {
      TUI::Evaluation::Context::reportError(a2, 1031, 0);
    }
  }

  return v3 | (v4 << 32);
}

unint64_t TUI::Instruction::Decoder::animationReference(TUI::Instruction::Decoder *this, uint64_t a2, const TUI::Evaluation::Context *a3)
{
  v3 = TUIAnimationReferenceNil;
  v4 = *algn_2E3D94;
  if (this)
  {
    if (this == 13)
    {
      v3 = this >> 14;
      v4 = (this >> 8) & 0x3F;
    }

    else
    {
      TUI::Evaluation::Context::reportError(a2, 1031, 0);
    }
  }

  return v3 | (v4 << 32);
}

uint64_t TUI::Instruction::Decoder::elementReference(TUI::Instruction::Decoder *this, uint64_t a2, const TUI::Evaluation::Context *a3)
{
  v3 = TUIElementReferenceNil;
  if (this)
  {
    if (this == 12)
    {
      return this >> 8;
    }

    else
    {
      TUI::Evaluation::Context::reportError(a2, 1031, 0);
    }
  }

  return v3;
}

uint64_t TUI::Instruction::Decoder::nameReference(TUI::Instruction::Decoder *this, uint64_t a2, const TUI::Evaluation::Context *a3)
{
  v3 = TUINameReferenceNil;
  if (this)
  {
    if (this == 11)
    {
      return this >> 8;
    }

    else
    {
      TUI::Evaluation::Context::reportError(a2, 1031, 0);
    }
  }

  return v3;
}

uint64_t TUI::Instruction::Decoder::definition(TUI::Instruction::Decoder *this, uint64_t a2, const TUI::Evaluation::Context *a3)
{
  v3 = TUIDefinitionNil;
  if (this)
  {
    if (this == 9)
    {
      return this >> 8;
    }

    else
    {
      TUI::Evaluation::Context::reportError(a2, 1031, 0);
    }
  }

  return v3;
}

void sub_D3378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  sub_639A8(&STACK[0x2A0]);

  _Unwind_Resume(a1);
}

double sub_D3544(__int128 *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v4 = a4;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  if (!a4)
  {
    v29 = *a1;
    v30 = *(a1 + 1);
    v31 = *(a1 + 2);
    v4 = 1;
    v32 = *(a1 + 4);
    v33 = *(a1 + 5);
LABEL_22:
    while (1)
    {
      v34 = v31;
      v35 = v30;
      if (v30 == v32 && v31 == v33)
      {
        break;
      }

      v31 = 0;
      v36 = *v29;
      v37 = *(*(*v29 + 88 * v30) + 96 * v34 + 56) - *(*(*v29 + 88 * v30) + 96 * v34 + 48);
      v38 = v4 > v37 >> 6;
      v39 = v37 >> 6;
      if (!v38)
      {
        v4 = v39;
      }

      v30 = 0x2E8BA2E8BA2E8BA3 * ((v29[1] - v36) >> 3);
      if (v35 < v30)
      {
        v31 = v34 + 1;
        v40 = (v36 + 88 * v35 + 8);
        while (v31 >= 0xAAAAAAAAAAAAAAABLL * ((*v40 - *(v40 - 1)) >> 5))
        {
          v31 = 0;
          ++v35;
          v40 += 11;
          if (v30 == v35)
          {
            goto LABEL_22;
          }
        }

        v30 = v35;
      }
    }
  }

  __p[0] = 0;
  sub_677F4(&v92, v4, __p);
  v9 = *a1;
  v8 = *(a1 + 1);
  v10 = *(a1 + 2);
  v80 = *a1;
LABEL_3:
  while (1)
  {
    v11 = v10;
    v12 = v8;
    if (v8 == *(a1 + 4) && v10 == *(a1 + 5))
    {
      break;
    }

    v13 = *v9;
    v14 = (*(*v9 + 88 * v8) + 96 * v10);
    v15 = v14[6];
    v16 = v14[7];
    if (v15 != v16)
    {
      v82 = v10;
      v17 = 0;
      do
      {
        v18 = sub_61938(a2, *v14, v14[2]);
        sub_67498(v15, 0, &v91, v18);
        if (v17 < v4)
        {
          *(v92 + v17) = fmax(*(v92 + v17), v19);
        }

        ++v17;
        v15 += 64;
      }

      while (v15 != v16);
      v9 = v80;
      v11 = v82;
      v13 = *v80;
    }

    v10 = 0;
    v8 = 0x2E8BA2E8BA2E8BA3 * ((v9[1] - v13) >> 3);
    if (v12 < v8)
    {
      v10 = v11 + 1;
      v20 = (v13 + 88 * v12 + 8);
      while (v10 >= 0xAAAAAAAAAAAAAAABLL * ((*v20 - *(v20 - 1)) >> 5))
      {
        v10 = 0;
        ++v12;
        v20 += 11;
        if (v8 == v12)
        {
          goto LABEL_3;
        }
      }

      v8 = v12;
    }
  }

  memset(__p, 0, sizeof(__p));
  *&v88 = 0;
  sub_677F4(__p, v4 + 1, &v88);
  v21 = v92;
  v22 = v93;
  v23 = __p[0];
  if (v92 == v93)
  {
    v28 = 0;
    v25 = 0.0;
  }

  else
  {
    v24 = 0;
    v25 = 0.0;
    v26 = __p[0];
    do
    {
      v27 = *v21++;
      *v26++ = v25;
      v25 = v25 + v27;
      --v24;
    }

    while (v21 != v22);
    v28 = -v24;
  }

  v23[v28] = v25;
  v88 = *a1;
  v89 = *(a1 + 2);
  v86 = *(a1 + 24);
  v87 = *(a1 + 5);
  *&v84 = a2;
  *(&v84 + 1) = __p;
  v85 = a1;
  sub_D4BCC(a3, &v88, &v86, &v84);
  v41 = *(a1 + 13);
  v42 = *&__p[1];
  v43 = *(__p[1] - 1);
  v44 = *(a1 + 88);
  *(a1 + 11) = __p[0];
  *__p = v44;
  a1[6] = v42;
  __p[2] = v41;
  v77 = sub_61E30(a2);
  v46 = *a1;
  v45 = *(a1 + 1);
  v47 = *(a1 + 2);
  v81 = v4;
  v83 = a2;
  v78 = *a1;
LABEL_34:
  while (1)
  {
    v48 = v45;
    if (v45 == *(a1 + 4) && v47 == *(a1 + 5))
    {
      break;
    }

    v49 = (*(*v46 + 88 * v45) + 96 * v47);
    v50 = *(a1 + 16);
    v79 = v47;
    if (v50)
    {
      v51 = v49[6];
      v52 = 0.0;
      while (v51 != v49[7])
      {
        v52 = v52 + *(v51 + 56);
        v51 += 64;
      }

      v53 = 0.0;
      if (v50 == 5)
      {
        v53 = 1.0;
      }

      if (v50 == 3)
      {
        v53 = 1.0;
      }

      if (v50 == 2)
      {
        v54 = 0.5;
      }

      else
      {
        v54 = v53;
      }
    }

    else
    {
      v54 = 0.0;
      v52 = 0.0;
    }

    sub_67BF8(a2, *v49, v49[2], 1);
    v56 = v49[6];
    v57 = v49[7];
    if (v56 != v57)
    {
      v58 = v55;
      v59 = 0;
      v60 = v54 * (v43 - v52);
      do
      {
        v61 = 0.0;
        v62 = 0.0;
        if (v59 < v4)
        {
          v62 = *(v92 + v59);
        }

        if (*(a1 + 16))
        {
          v62 = *(v56 + 56);
        }

        else
        {
          v63 = [*v56 valign];
          v64 = 0.0;
          if ((v63 - 1) <= 3)
          {
            v64 = dbl_24CE80[(v63 - 1)];
          }

          v61 = v64 * (v62 - *(v56 + 56));
        }

        v65 = v58 + *(a1 + 6);
        v66 = v61 + v60 + *(a1 + 7);
        *(v56 + 32) = v65;
        *(v56 + 40) = v66;
        v67 = *(v56 + 8);
        v68 = *(v56 + 16);
        while (v67 != v68)
        {
          v69 = *(v67 + 56);
          v70 = a3[14] + 152 * v69;
          v71 = (v70 + 136);
          p_y = (v70 + 144);
          v73 = v69 == -1;
          if (v69 == -1)
          {
            v74 = &CGPointZero;
          }

          else
          {
            v74 = v71;
          }

          if (v73)
          {
            p_y = &CGPointZero.y;
          }

          sub_6850C((v67 + 8), v65 - v74->x + *(v67 + 72), v66 - *p_y + *(v67 + 64));
          v67 += 96;
        }

        v60 = v60 + v62;
        ++v59;
        v56 += 64;
        v4 = v81;
        a2 = v83;
      }

      while (v56 != v57);
    }

    v47 = 0;
    v46 = v78;
    v45 = 0x2E8BA2E8BA2E8BA3 * ((v78[1] - *v78) >> 3);
    if (v48 < v45)
    {
      v47 = v79 + 1;
      v75 = (*v78 + 88 * v48 + 8);
      while (v47 >= 0xAAAAAAAAAAAAAAABLL * ((*v75 - *(v75 - 1)) >> 5))
      {
        v47 = 0;
        ++v48;
        v75 += 11;
        if (v45 == v48)
        {
          goto LABEL_34;
        }
      }

      v45 = v48;
    }
  }

  *(a1 + 9) = v77;
  *(a1 + 10) = v43;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  return v77;
}

void sub_D3B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

double *sub_D3B70(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7)
{
  v14 = *(a4 + 40);
  v35 = *(a4 + 24);
  v36 = v14;
  v15 = *a4;
  v16 = sub_618AC(a3, &dword_0 + 1);
  if (*(a3 + 32) != v16)
  {
    v17 = v16;
    sub_673FC(&v34, 0, *(v16 + 40), *(v16 + 48), *(&v35 + 1));
    *(v17 + 72) = v18;
    *(v17 + 80) = v19;
    v20 = *(&v35 + 1) - v18;
    v21 = v15 - *(&v35 + 1) + v20 * 0.5;
    v22 = v20 * 0.5;
    if (*(a4 + 96) == 2)
    {
      v22 = v21;
    }

    v32 = a6 + v22;
    v33 = a7 + *&v35;
    *&v30 = &v35;
    *(&v30 + 1) = a2;
    v31 = &v32;
    sub_D5358(a5, v17, (v17 + 96), &v30);
    sub_97304(v17, &dword_4, a2, a5, v32, v33);
    sub_61AFC(v17, 1);
    [*a1 addObjectsFromArray:*(v17 + 88)];
  }

  result = sub_618AC(a3, &dword_0 + 2);
  if (*(a3 + 32) != result)
  {
    v24 = result;
    sub_673FC(&v34, 0, *(result + 5), *(result + 6), *(&v36 + 1));
    v26 = v25;
    v24[9] = v25;
    *(v24 + 10) = v27;
    v28 = sub_618AC(a3, &dword_0 + 2);
    v29 = v15 - *(&v36 + 1) + (*(&v36 + 1) - v26) * 0.5;
    if (*(a4 + 96) == 2)
    {
      v29 = (*(&v36 + 1) - v26) * 0.5;
    }

    v32 = a6 + v29;
    v33 = a7 + *&v35;
    *&v30 = &v35;
    *(&v30 + 1) = a2;
    v31 = &v32;
    sub_D56E4(a5, v28, v28 + 12, &v30);
    sub_97304(v24, &dword_4, a2, a5, v32, v33);
    sub_61AFC(v24, 1);
    return [*a1 addObjectsFromArray:*(v24 + 11)];
  }

  return result;
}

unint64_t *sub_D3D7C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = result[4];
  while (1)
  {
    v5 = *result;
    if (v4 != *result && (v4 >= *result || !*(result[1] + 8 * v4)))
    {
      break;
    }

    if (v4 < v5)
    {
      v6 = result[1];
      while (*(v6 + 8 * v4))
      {
        result[4] = ++v4;
        if (v5 == v4)
        {
          goto LABEL_11;
        }
      }
    }

    if (v4 == v5)
    {
LABEL_11:
      v7 = result[1];
      v8 = result[2];
      while (v7 != v8)
      {
        if (*v7)
        {
          --*v7;
        }

        ++v7;
      }

      v4 = 0;
      v9 = result[5] + 1;
      result[4] = 0;
      result[5] = v9;
    }
  }

  v10 = result[6];
  if (v10 && result[5] >= v10 || (v11 = result[7]) != 0 && result[5] >= v11)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  if (v10 && result[5] + a3 > v10)
  {
LABEL_29:
    v12 = 1;
    goto LABEL_30;
  }

  if (!v11)
  {
    if (v4 + a2 <= v5)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v12 = 1;
  if (v4 + a2 > v5)
  {
LABEL_30:
    v13 = 1;
    goto LABEL_31;
  }

  v13 = 1;
  if (result[5] + a3 > v11)
  {
LABEL_31:
    v14 = result[5];
    *a4 = v4;
    *(a4 + 8) = v14;
    *(a4 + 16) = v12;
    *(a4 + 24) = v13;
    v15 = result[1];
    v16 = v12;
    do
    {
      *(v15 + 8 * result[4]) = v13;
      v15 += 8;
      --v16;
    }

    while (v16);
    v4 = result[4];
    goto LABEL_34;
  }

LABEL_35:
  if (a2)
  {
    if (v5 >= v4)
    {
      v17 = v5 - v4;
    }

    else
    {
      v17 = 0;
    }

    v18 = 8 * v4;
    v12 = 1;
    v19 = a2;
    while (v17 && !*(result[1] + v18))
    {
      v18 += 8;
      --v17;
      if (!--v19)
      {
        v12 = a2;
        v13 = a3;
        goto LABEL_31;
      }
    }

    goto LABEL_30;
  }

  v12 = 0;
  v20 = result[5];
  *a4 = v4;
  *(a4 + 8) = v20;
  *(a4 + 16) = 0;
  *(a4 + 24) = a3;
LABEL_34:
  result[4] = v4 + v12;
  return result;
}

void *sub_D3F1C(void *result)
{
  v1 = *result;
  v2 = result[1];
  if (*result == v2)
  {
    v4 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    do
    {
      for (i = *v1; i != v1[1]; i += 12)
      {
        v6 = i[2];
        if (v6)
        {
          v7 = i[3];
          if (v7)
          {
            v8 = i[1];
            v3 = *i + v6;
            if (v4 > v3)
            {
              v3 = v4;
            }

            if (v4 <= v8 + v7)
            {
              v4 = v8 + v7;
            }
          }
        }
      }

      v1 += 11;
    }

    while (v1 != v2);
  }

  result[6] = v3;
  result[7] = v4;
  return result;
}

void sub_D3F90(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 16);
LABEL_2:
  while (1)
  {
    v12 = v11;
    v13 = v9;
    if (v9 == *(a1 + 32) && v11 == *(a1 + 40))
    {
      break;
    }

    v14 = *v10;
    v15 = (*(*v10 + 88 * v9) + 96 * v11);
    v16 = v15[2];
    if (v16)
    {
      v17 = v15[3] == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v18 = sub_61938(a2, *v15, v16);
      sub_673FC(&v28, 0, v15[6], v15[7], v18);
      v15[9] = v19;
      v15[10] = v20;
      v14 = *v10;
    }

    v11 = 0;
    v9 = 0x2E8BA2E8BA2E8BA3 * ((v10[1] - v14) >> 3);
    if (v13 < v9)
    {
      v11 = v12 + 1;
      v21 = (v14 + 88 * v13 + 8);
      while (v11 >= 0xAAAAAAAAAAAAAAABLL * ((*v21 - *(v21 - 1)) >> 5))
      {
        v11 = 0;
        ++v13;
        v21 += 11;
        if (v9 == v13)
        {
          goto LABEL_2;
        }
      }

      v9 = v13;
    }
  }

  v22 = *(a1 + 64);
  if (v22 > 2)
  {
    switch(v22)
    {
      case 3:
        v23 = 1.0;
        goto LABEL_25;
      case 4:
        v24 = 0.0;
        break;
      case 5:
        v24 = 1.0;
        break;
      default:
        return;
    }

    v25 = sub_D6300(a1, a2, v24, a4, a5);
    goto LABEL_29;
  }

  if (v22 < 2)
  {
    v23 = 0.0;
LABEL_25:
    v25 = sub_D5D70(a1, a2, a3, v23, a4, a5);
LABEL_29:
    *(a1 + 48) = v25;
    *(a1 + 56) = v26;
    return;
  }

  if (v22 == 2)
  {
    v23 = 0.5;
    goto LABEL_25;
  }
}

void sub_D4170(id *a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7)
{
  v17 = a7;
  __p = 0;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  sub_94B48(&__p, &v13);
  sub_94B48(&__p, &v17);
  sub_D3B70(a1, &__p, a2, a3, a4, a5, a6);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }
}

void sub_D4214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_D4950(uint64_t a1, unint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  v4 = 0;
  sub_D49CC((a1 + 8), a2, &v4);
  return a1;
}

void sub_D49B0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_D49CC(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_D49FC(a1, a2 - v3, a3);
  }
}

void sub_D49FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_24CD00)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_4050();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_65004(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_24CD00)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void sub_D4BCC(void *a1, size_t size, uint64_t a3, __int128 *a4)
{
  if (a1[14] != a1[15])
  {
    v4 = a3;
    v6 = 0;
    v7 = 0;
    v8 = 64;
    memset(ptr, 0, sizeof(ptr));
    v10 = *size;
    v9 = *(size + 8);
    v11 = ptr;
    v12 = *(size + 16);
    v29 = *size;
LABEL_3:
    while (v9 != *(v4 + 8) || v12 != *(v4 + 16))
    {
      v33 = v9;
      v34 = v12;
      v13 = *(*v10 + 88 * v9);
      if (v6 >= v8)
      {
        v8 += 64;
        if (v11 == ptr)
        {
          v11 = malloc_type_malloc(8 * v8, 0x2004093837F09uLL);
          memcpy(v11, ptr, 8 * v6);
        }

        else
        {
          v11 = malloc_type_realloc(v11, 8 * v8, 0x2004093837F09uLL);
        }
      }

      v31 = v8;
      v32 = v11;
      v14 = (v13 + 96 * v34);
      *(v11 + v6) = v14;
      v15 = v14[6];
      v35 = v14[7];
      if (v15 != v35)
      {
        v16 = 0;
        do
        {
          v36 = v15;
          v18 = *(v15 + 8);
          v17 = *(v15 + 16);
          v37 = v17;
          while (v18 != v17)
          {
            v19 = a1[8];
            v38 = v18;
            v20 = (*(v18 + 8) - v19) >> 3;
            v21 = *(v18 + 16) - v19;
            if (v20 < v21 >> 3)
            {
              v22 = v21 >> 3;
              do
              {
                v23 = *(a1[11] + 8 * v20);
                if (v23 != -1)
                {
                  if (!v7)
                  {
                    v7 = objc_opt_new();
                  }

                  do
                  {
                    if (([v7 containsIndex:v23] & 1) == 0)
                    {
                      v24 = a1[14] + 152 * v23;
                      *v24 = -1;
                      *(v24 + 8) = 0u;
                      *(v24 + 24) = 0u;
                      *(v24 + 40) = 0u;
                      [v7 addIndex:v23];
                    }

                    v25 = (a1[14] + 152 * v23);
                    sub_68144(v25, v6, *v14, v14[1], v16, v14[2], v14[3], 1uLL);
                    v23 = v25[16];
                  }

                  while (v23 != -1);
                }

                ++v20;
              }

              while (v20 != v22);
            }

            v17 = v37;
            v18 = v38 + 96;
          }

          ++v16;
          v15 = v36 + 64;
        }

        while (v36 + 64 != v35);
      }

      v12 = 0;
      ++v6;
      v10 = v29;
      v4 = a3;
      v9 = 0x2E8BA2E8BA2E8BA3 * ((v29[1] - *v29) >> 3);
      v11 = v32;
      v26 = v33;
      v8 = v31;
      if (v33 < v9)
      {
        v12 = v34 + 1;
        v27 = (*v29 + 88 * v33 + 8);
        while (v12 >= 0xAAAAAAAAAAAAAAABLL * ((*v27 - *(v27 - 1)) >> 5))
        {
          v12 = 0;
          ++v26;
          v27 += 11;
          if (v9 == v26)
          {
            goto LABEL_3;
          }
        }

        v9 = v26;
      }
    }

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_D4FFC;
    v43[3] = &unk_25F6C0;
    v43[4] = a1;
    v44 = *a4;
    v45 = *(a4 + 2);
    v46 = v11;
    [v7 enumerateRangesUsingBlock:v43];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_D5278;
    v39[3] = &unk_25F6C0;
    v39[4] = a1;
    v40 = *a4;
    v41 = *(a4 + 2);
    v42 = v11;
    [v7 enumerateRangesWithOptions:2 usingBlock:v39];
    if (v11 != ptr)
    {
      free(v11);
    }
  }
}

void *sub_D4FFC(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    v5 = result[4];
    v6 = 152 * a2;
    do
    {
      v7 = *(v5 + 112) + v6;
      v8 = *(v4[8] + 8 * *v7);
      v9 = *(v7 + 112);
      v10 = *v7;
      v11 = *(v7 + 16);
      v12 = *(v7 + 32);
      v22 = *(v7 + 48);
      v21[1] = v11;
      v21[2] = v12;
      v21[0] = v10;
      v13 = sub_D50E8(v4 + 5, v8, v9, v21);
      v15 = *(v7 + 128);
      if (v15 == -1)
      {
        p_y = &CGPointZero.y;
        v17 = &CGPointZero;
      }

      else
      {
        v16 = *(v5 + 112) + 152 * v15;
        v17 = (v16 + 136);
        p_y = (v16 + 144);
      }

      v19 = *p_y;
      x = v17->x;
      *(v7 + 136) = v13;
      *(v7 + 144) = v14;
      result = [*(v7 + 120) setComputedOrigin:{v13 - x, v14 - v19}];
      v6 += 152;
      --v3;
    }

    while (v3);
  }

  return result;
}

double sub_D50E8(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v8 = a1[2];
  sub_67BF8(*a1, a4[1], a4[4], 1);
  v10 = v9;
  sub_61938(*a1, a4[1], a4[4]);
  if (a3 && !*(v8 + 64))
  {
    [*(*(a2 + 48) + (a4[3] << 6)) valign];
    [*(*(a2 + 48) + ((a4[6] + a4[3] - 1) << 6)) valign];
  }

  return v10 + *(v8 + 48);
}

void sub_D5278(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = a1[4];
    v6 = 152 * a3 + 152 * a2;
    do
    {
      v7 = *(v5 + 112) + v6;
      v8 = *(a1[8] + 8 * *(v7 - 152));
      v9 = *(v7 - 40);
      v10 = *(v7 - 152);
      v11 = *(v7 - 136);
      v12 = *(v7 - 120);
      v20 = *(v7 - 104);
      v19[1] = v11;
      v19[2] = v12;
      v19[0] = v10;
      v13 = sub_D50E8(a1 + 5, v8, v9, v19);
      v15 = v14;
      v17 = v16;
      v18 = [*(v7 - 32) controller];
      [v18 validateGroupedContainingLayout:*(v7 - 32) withSize:{v15, v17}];

      v6 -= 152;
      --v3;
    }

    while (v3);
  }
}

void sub_D5358(void *a1, uint64_t *size, uint64_t *a3, __int128 *a4)
{
  if (a1[14] != a1[15])
  {
    v4 = size;
    v22 = a4;
    memset(ptr, 0, sizeof(ptr));
    if (size == a3)
    {
      v6 = 0;
      v7 = ptr;
    }

    else
    {
      v6 = 0;
      v9 = 0;
      v10 = 64;
      v7 = ptr;
      do
      {
        if (v9 >= v10)
        {
          v10 += 64;
          if (v7 == ptr)
          {
            v7 = malloc_type_malloc(8 * v10, 0x2004093837F09uLL);
            memcpy(v7, ptr, 8 * v9);
          }

          else
          {
            v7 = malloc_type_realloc(v7, 8 * v10, 0x2004093837F09uLL);
          }
        }

        v24 = v10;
        v25 = v7;
        *(v7 + v9) = v4;
        v11 = v4[5];
        v26 = v4[6];
        if (v11 != v26)
        {
          v12 = 0;
          do
          {
            v27 = v11;
            v14 = *(v11 + 8);
            v13 = *(v11 + 16);
            v28 = v13;
            while (v14 != v13)
            {
              v15 = a1[8];
              v29 = v14;
              v16 = (*(v14 + 8) - v15) >> 3;
              v17 = *(v14 + 16) - v15;
              if (v16 < v17 >> 3)
              {
                v18 = v17 >> 3;
                do
                {
                  v19 = *(a1[11] + 8 * v16);
                  if (v19 != -1)
                  {
                    if (!v6)
                    {
                      v6 = objc_opt_new();
                    }

                    do
                    {
                      if (([v6 containsIndex:{v19, v22}] & 1) == 0)
                      {
                        v20 = a1[14] + 152 * v19;
                        *v20 = -1;
                        *(v20 + 8) = 0u;
                        *(v20 + 24) = 0u;
                        *(v20 + 40) = 0u;
                        [v6 addIndex:v19];
                      }

                      v21 = (a1[14] + 152 * v19);
                      sub_68144(v21, v9, *v4, v4[1], v12, v4[2], v4[3], 1uLL);
                      v19 = v21[16];
                    }

                    while (v19 != -1);
                  }

                  ++v16;
                }

                while (v16 != v18);
              }

              v13 = v28;
              v14 = v29 + 96;
            }

            ++v12;
            v11 = v27 + 64;
          }

          while (v27 + 64 != v26);
        }

        ++v9;
        v4 += 12;
        v10 = v24;
        v7 = v25;
      }

      while (v4 != a3);
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_D5A70;
    v34[3] = &unk_25F6C0;
    v34[4] = a1;
    v8 = v22;
    v35 = *v22;
    v36 = *(v22 + 2);
    v37 = v7;
    [v6 enumerateRangesUsingBlock:{v34, v22}];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_D5B34;
    v30[3] = &unk_25F6C0;
    v30[4] = a1;
    v31 = *v8;
    v32 = *(v8 + 2);
    v33 = v7;
    [v6 enumerateRangesWithOptions:2 usingBlock:v30];
    if (v7 != ptr)
    {
      free(v7);
    }
  }
}

void sub_D56E4(void *a1, uint64_t *size, uint64_t *a3, __int128 *a4)
{
  if (a1[14] != a1[15])
  {
    v4 = size;
    v22 = a4;
    memset(ptr, 0, sizeof(ptr));
    if (size == a3)
    {
      v6 = 0;
      v7 = ptr;
    }

    else
    {
      v6 = 0;
      v9 = 0;
      v10 = 64;
      v7 = ptr;
      do
      {
        if (v9 >= v10)
        {
          v10 += 64;
          if (v7 == ptr)
          {
            v7 = malloc_type_malloc(8 * v10, 0x2004093837F09uLL);
            memcpy(v7, ptr, 8 * v9);
          }

          else
          {
            v7 = malloc_type_realloc(v7, 8 * v10, 0x2004093837F09uLL);
          }
        }

        v24 = v10;
        v25 = v7;
        *(v7 + v9) = v4;
        v11 = v4[5];
        v26 = v4[6];
        if (v11 != v26)
        {
          v12 = 0;
          do
          {
            v27 = v11;
            v14 = *(v11 + 8);
            v13 = *(v11 + 16);
            v28 = v13;
            while (v14 != v13)
            {
              v15 = a1[8];
              v29 = v14;
              v16 = (*(v14 + 8) - v15) >> 3;
              v17 = *(v14 + 16) - v15;
              if (v16 < v17 >> 3)
              {
                v18 = v17 >> 3;
                do
                {
                  v19 = *(a1[11] + 8 * v16);
                  if (v19 != -1)
                  {
                    if (!v6)
                    {
                      v6 = objc_opt_new();
                    }

                    do
                    {
                      if (([v6 containsIndex:{v19, v22}] & 1) == 0)
                      {
                        v20 = a1[14] + 152 * v19;
                        *v20 = -1;
                        *(v20 + 8) = 0u;
                        *(v20 + 24) = 0u;
                        *(v20 + 40) = 0u;
                        [v6 addIndex:v19];
                      }

                      v21 = (a1[14] + 152 * v19);
                      sub_68144(v21, v9, *v4, v4[1], v12, v4[2], v4[3], 1uLL);
                      v19 = v21[16];
                    }

                    while (v19 != -1);
                  }

                  ++v16;
                }

                while (v16 != v18);
              }

              v13 = v28;
              v14 = v29 + 96;
            }

            ++v12;
            v11 = v27 + 64;
          }

          while (v27 + 64 != v26);
        }

        ++v9;
        v4 += 12;
        v10 = v24;
        v7 = v25;
      }

      while (v4 != a3);
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_D5BF0;
    v34[3] = &unk_25F6C0;
    v34[4] = a1;
    v8 = v22;
    v35 = *v22;
    v36 = *(v22 + 2);
    v37 = v7;
    [v6 enumerateRangesUsingBlock:{v34, v22}];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_D5CB4;
    v30[3] = &unk_25F6C0;
    v30[4] = a1;
    v31 = *v8;
    v32 = *(v8 + 2);
    v33 = v7;
    [v6 enumerateRangesWithOptions:2 usingBlock:v30];
    if (v7 != ptr)
    {
      free(v7);
    }
  }
}

void *sub_D5A70(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    v5 = result[4];
    v6 = 152 * a2;
    do
    {
      v7 = *(v5 + 112);
      v8 = v7 + v6;
      v9 = v4[7];
      v10 = *(*v4[6] + 8 * *(v7 + v6 + 24));
      v11 = *(v7 + v6 + 120);
      v12 = *(v7 + v6 + 128);
      v13 = v7 + 152 * v12;
      v14 = v12 == -1;
      p_y = &CGPointZero.y;
      if (!v14)
      {
        p_y = (v13 + 144);
      }

      v16 = *v9 + 0.0;
      v17 = v10 + v9[1];
      v18 = (v13 + 136);
      if (v14)
      {
        v18 = &CGPointZero;
      }

      v19 = *p_y;
      x = v18->x;
      *(v8 + 136) = v16;
      *(v8 + 144) = v17;
      result = [v11 setComputedOrigin:{v16 - x, v17 - v19}];
      v6 += 152;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_D5B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = *(a1 + 32);
    v6 = 152 * a3 + 152 * a2;
    do
    {
      v7 = *(v5 + 112) + v6;
      v8 = *(*(a1 + 40) + 8);
      v9 = (**(a1 + 48) + 8 * *(v7 - 128));
      v10 = v9[*(v7 - 104)] - *v9;
      v11 = [*(v7 - 32) controller];
      [v11 validateGroupedContainingLayout:*(v7 - 32) withSize:{v8, v10}];

      v6 -= 152;
      --v3;
    }

    while (v3);
  }
}

void *sub_D5BF0(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    v5 = result[4];
    v6 = 152 * a2;
    do
    {
      v7 = *(v5 + 112);
      v8 = v7 + v6;
      v9 = v4[7];
      v10 = *(*v4[6] + 8 * *(v7 + v6 + 24));
      v11 = *(v7 + v6 + 120);
      v12 = *(v7 + v6 + 128);
      v13 = v7 + 152 * v12;
      v14 = v12 == -1;
      p_y = &CGPointZero.y;
      if (!v14)
      {
        p_y = (v13 + 144);
      }

      v16 = *v9 + 0.0;
      v17 = v10 + v9[1];
      v18 = (v13 + 136);
      if (v14)
      {
        v18 = &CGPointZero;
      }

      v19 = *p_y;
      x = v18->x;
      *(v8 + 136) = v16;
      *(v8 + 144) = v17;
      result = [v11 setComputedOrigin:{v16 - x, v17 - v19}];
      v6 += 152;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_D5CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = *(a1 + 32);
    v6 = 152 * a3 + 152 * a2;
    do
    {
      v7 = *(v5 + 112) + v6;
      v8 = *(*(a1 + 40) + 8);
      v9 = (**(a1 + 48) + 8 * *(v7 - 128));
      v10 = v9[*(v7 - 104)] - *v9;
      v11 = [*(v7 - 32) controller];
      [v11 validateGroupedContainingLayout:*(v7 - 32) withSize:{v8, v10}];

      v6 -= 152;
      --v3;
    }

    while (v3);
  }
}

double sub_D5D70(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v10 = a2;
  if (*(a2 + 16) <= 1uLL)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(a2 + 16);
  }

  v13 = *(a2 + 88);
  sub_965A4(&v85, 2 * v12);
  v14 = 0;
  v88 = v12;
  v89 = v13;
  v91 = 0;
  v92 = 0;
  __p = 0;
  v16 = *a1;
  v15 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = v86;
  v19 = v85 - 1;
  v20 = *(a1 + 32);
LABEL_5:
  while (1)
  {
    v21 = v17;
    v22 = v15;
    if (v15 == v20 && v17 == *(a1 + 40))
    {
      break;
    }

    v23 = *v16;
    v24 = *(*v16 + 88 * v15) + 96 * v17;
    if (*(v24 + 16))
    {
      v25 = *(v24 + 24);
      if (v25)
      {
        v26 = *(v24 + 8);
        v27 = v26 + v25;
        if (v14 <= v27)
        {
          v14 = v27;
        }

        v28 = *(v24 + 80);
        v29 = v18 + 16 * v27 + 8 * ~((((2 * v26) | 1uLL) * 2 * v26) >> 1) + 8 * v19 * 2 * v26;
        if (*(v29 - 8) >= v28)
        {
          v28 = *(v29 - 8);
        }

        *(v29 - 8) = v28;
        if (v26)
        {
          v30 = v89;
          v31 = v19 * (2 * v26 - 1);
          v32 = v18 + 16 * v26 + 8 * ~(((2 * v26 - 1) * 2 * v26) >> 1);
          if (*(v32 + 8 * v31) >= v89)
          {
            v30 = *(v32 + 8 * v31);
          }

          *(v32 + 8 * v31) = v30;
        }

        if (v12 > v27)
        {
          v33 = 2 * v27;
          v34 = v89;
          v35 = v19 * v33;
          v36 = v18 + 8 * ~(((v33 | 1uLL) * v33) >> 1) + 8 * (v33 | 1);
          if (*(v36 + 8 * v35) >= v89)
          {
            v34 = *(v36 + 8 * v35);
          }

          *(v36 + 8 * v35) = v34;
        }
      }
    }

    v17 = 0;
    v15 = 0x2E8BA2E8BA2E8BA3 * ((v16[1] - v23) >> 3);
    if (v22 < v15)
    {
      v17 = v21 + 1;
      v37 = (v23 + 88 * v22 + 8);
      while (v17 >= 0xAAAAAAAAAAAAAAABLL * ((*v37 - *(v37 - 1)) >> 5))
      {
        v17 = 0;
        ++v22;
        v37 += 11;
        if (v15 == v22)
        {
          goto LABEL_5;
        }
      }

      v15 = v22;
    }
  }

  sub_D6468(&v85);
  v39 = *a1;
  v38 = *(a1 + 8);
  v40 = *(a1 + 16);
  v81 = v10;
  v82 = a3;
  v80 = *a1;
LABEL_28:
  while (1)
  {
    v41 = v38;
    v42 = v40;
    if (v38 == *(a1 + 32) && v40 == *(a1 + 40))
    {
      break;
    }

    v43 = *(*v39 + 88 * v38) + 96 * v40;
    v44 = *(v43 + 16);
    if (v44 && *(v43 + 24))
    {
      v45 = sub_61938(v10, *v43, v44);
      v46 = *(__p + 2 * *(v43 + 24) + 2 * *(v43 + 8) - 1) - *(__p + 2 * *(v43 + 8));
      sub_673FC(&v84, 0, *(v43 + 48), *(v43 + 56), v45);
      v48 = v47;
      v83 = v42;
      v49 = a1;
      *(v43 + 72) = v50;
      *(v43 + 80) = v47;
      sub_67BF8(v10, *v43, *(v43 + 16), 1);
      v52 = *(v43 + 8);
      v53 = *(v43 + 48);
      v54 = *(v43 + 56);
      if (v53 != v54)
      {
        v55 = *(__p + 2 * v52) + (v46 - v48) * a4;
        v56 = a5 + v51;
        v57 = a6 + v55;
        v58 = *(v49 + 72);
        v59 = 0.0;
        do
        {
          *(v53 + 32) = v56;
          *(v53 + 40) = v57 + v59;
          v61 = *(v53 + 8);
          v60 = *(v53 + 16);
          while (v61 != v60)
          {
            v62 = *(v61 + 56);
            v63 = *(v58 + 112) + 152 * v62;
            v64 = (v63 + 136);
            p_y = (v63 + 144);
            v66 = v62 == -1;
            if (v62 == -1)
            {
              v67 = &CGPointZero;
            }

            else
            {
              v67 = v64;
            }

            if (v66)
            {
              p_y = &CGPointZero.y;
            }

            sub_6850C((v61 + 8), v56 - v67->x + *(v61 + 72), v57 + v59 - *p_y + *(v61 + 64));
            v61 += 96;
          }

          v59 = v59 + *(v53 + 56);
          v53 += 64;
        }

        while (v53 != v54);
        v52 = *(v43 + 8);
        v10 = v81;
        a3 = v82;
        v39 = v80;
      }

      if (*(a3 + 16))
      {
        v68 = v52 == 0;
      }

      else
      {
        v68 = 1;
      }

      v69 = !v68 && *(v43 + 16) == 1;
      a1 = v49;
      v42 = v83;
      if (v69)
      {
        sub_67BF8(v10, *v43, 1uLL, 1);
        v71 = v70;
        v72 = *(__p + 2 * *(v43 + 8));
        v73 = *(v10 + 88);
        v74 = *(a3 + 8);
        v75 = *(v43 + 32);
        v76 = [v75 identifier];
        sub_6858C(a3, v76, a5 + v71, a6 + v72 - v73 * 0.5 - v74 * 0.5);

        v42 = v83;
      }
    }

    v40 = 0;
    v38 = 0x2E8BA2E8BA2E8BA3 * ((v39[1] - *v39) >> 3);
    if (v41 < v38)
    {
      v40 = v42 + 1;
      v77 = (*v39 + 88 * v41 + 8);
      while (v40 >= 0xAAAAAAAAAAAAAAABLL * ((*v77 - *(v77 - 1)) >> 5))
      {
        v40 = 0;
        ++v41;
        v77 += 11;
        if (v38 == v41)
        {
          goto LABEL_28;
        }
      }

      v38 = v41;
    }
  }

  v78 = sub_61E30(v10);
  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  return v78;
}

void sub_D62BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_D64B8(va);
  _Unwind_Resume(a1);
}

double sub_D6300(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v9 = sub_61E30(a2);
  sub_D64FC(a1, &v24);
  v10 = v24;
  v11 = v25;
  v12 = 0.0;
  if (v24 != v25)
  {
    do
    {
      v13 = v10[1];
      v21 = *v10;
      v22 = v13;
      v23 = v10[2];
      v19 = v21;
      v20 = v13;
      v17 = *(v10 + 24);
      v18 = *(v10 + 5);
      v14 = sub_D66B4(a1, &v19, &v17, a2);
      if (v12 < v14)
      {
        v12 = v14;
      }

      v10 += 3;
    }

    while (v10 != v11);
    v10 = v24;
    v11 = v25;
  }

  if (v10 != v11)
  {
    do
    {
      v15 = v10[1];
      v21 = *v10;
      v22 = v15;
      v23 = v10[2];
      v19 = v21;
      v20 = v15;
      v17 = *(v10 + 24);
      v18 = *(v10 + 5);
      sub_D6914(a1, &v19, &v17, a2, v12, a4, a5);
      v10 += 3;
    }

    while (v10 != v11);
    v10 = v24;
  }

  if (v10)
  {
    v25 = v10;
    operator delete(v10);
  }

  return v9;
}

void sub_D6448(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_D6468(unint64_t *a1)
{
  sub_95BA8(a1, &v4);
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  result = *&v4;
  *(a1 + 3) = v4;
  a1[8] = v5;
  return result;
}

void *sub_D64B8(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_D64FC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = v5;
  v9 = v7;
LABEL_2:
  while (1)
  {
    v10 = v9;
    v11 = v8;
    if (v8 == *(a1 + 32) && v9 == *(a1 + 40))
    {
      break;
    }

    v12 = *v6;
    v13 = (*(*v6 + 88 * v8) + 96 * v9);
    v14 = v13[3] + *v13;
    if (v5 != v11 || v7 != v9)
    {
      if (*v13 < v4)
      {
        if (v14 < v4)
        {
          v4 = v13[3] + *v13;
        }

        goto LABEL_12;
      }

      *&v16 = v6;
      *(&v16 + 1) = v5;
      v17 = v7;
      v18 = v6;
      v19 = v11;
      v20 = v9;
      sub_D6D5C(a2, &v16);
      v12 = *v6;
      v7 = v10;
      v5 = v11;
    }

    v4 = v14;
LABEL_12:
    v9 = 0;
    v8 = 0x2E8BA2E8BA2E8BA3 * ((v6[1] - v12) >> 3);
    if (v11 < v8)
    {
      v9 = v10 + 1;
      v15 = (v12 + 88 * v11 + 8);
      while (v9 >= 0xAAAAAAAAAAAAAAABLL * ((*v15 - *(v15 - 1)) >> 5))
      {
        v9 = 0;
        ++v11;
        v15 += 11;
        if (v8 == v11)
        {
          goto LABEL_2;
        }
      }

      v8 = v11;
    }
  }

  if (v5 != v8 || v7 != v9)
  {
    *&v16 = v6;
    *(&v16 + 1) = v5;
    v17 = v7;
    v18 = v6;
    v19 = v8;
    v20 = v9;
    sub_D6D5C(a2, &v16);
  }
}

void sub_D6694(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_D66B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) <= 1uLL)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a4 + 16);
  }

  v7 = *(a4 + 88);
  sub_965A4(&v34, 2 * v6);
  v8 = 0;
  v37 = v6;
  v38 = v7;
  v40 = 0;
  v41 = 0;
  __p = 0;
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = v35;
  v13 = v34 - 1;
  v14 = *(a3 + 8);
LABEL_5:
  while (1)
  {
    v15 = v11;
    v16 = v9;
    if (v9 == v14 && v11 == *(a3 + 16))
    {
      break;
    }

    v17 = *v10;
    v18 = *(*v10 + 88 * v9) + 96 * v11;
    if (*(v18 + 16))
    {
      v19 = *(v18 + 24);
      if (v19)
      {
        v20 = *(v18 + 8);
        v21 = v20 + v19;
        if (v8 <= v21)
        {
          v8 = v21;
        }

        v22 = *(v18 + 80);
        v23 = v12 + 16 * v21 + 8 * ~((((2 * v20) | 1uLL) * 2 * v20) >> 1) + 8 * v13 * 2 * v20;
        if (*(v23 - 8) >= v22)
        {
          v22 = *(v23 - 8);
        }

        *(v23 - 8) = v22;
        if (v20)
        {
          v24 = v38;
          v25 = v13 * (2 * v20 - 1);
          v26 = v12 + 16 * v20 + 8 * ~(((2 * v20 - 1) * 2 * v20) >> 1);
          if (*(v26 + 8 * v25) >= v38)
          {
            v24 = *(v26 + 8 * v25);
          }

          *(v26 + 8 * v25) = v24;
        }

        if (v6 > v21)
        {
          v27 = 2 * v21;
          v28 = v38;
          v29 = v13 * v27;
          v30 = v12 + 8 * ~(((v27 | 1uLL) * v27) >> 1) + 8 * (v27 | 1);
          if (*(v30 + 8 * v29) >= v38)
          {
            v28 = *(v30 + 8 * v29);
          }

          *(v30 + 8 * v29) = v28;
        }
      }
    }

    v11 = 0;
    v9 = 0x2E8BA2E8BA2E8BA3 * ((v10[1] - v17) >> 3);
    if (v16 < v9)
    {
      v11 = v15 + 1;
      v31 = (v17 + 88 * v16 + 8);
      while (v11 >= 0xAAAAAAAAAAAAAAABLL * ((*v31 - *(v31 - 1)) >> 5))
      {
        v11 = 0;
        ++v16;
        v31 += 11;
        if (v9 == v16)
        {
          goto LABEL_5;
        }
      }

      v9 = v16;
    }
  }

  sub_D6468(&v34);
  if (v8)
  {
    v32 = *(__p + 2 * v8 - 1);
  }

  else
  {
    v32 = 0.0;
    if (!__p)
    {
      goto LABEL_31;
    }
  }

  v40 = __p;
  operator delete(__p);
LABEL_31:
  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  return v32;
}

void sub_D6900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D64B8(va);
  _Unwind_Resume(a1);
}

void sub_D6914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  if (*(a4 + 16) <= 1uLL)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(a4 + 16);
  }

  v13 = *(a4 + 88);
  sub_965A4(&v68, 2 * v12);
  v14 = 0;
  v71 = v12;
  v72 = v13;
  v74 = 0;
  v75 = 0;
  __p = 0;
  v16 = *a2;
  v15 = *(a2 + 8);
  v17 = *(a2 + 16);
  v18 = v69;
  v19 = v68 - 1;
  v20 = *(a3 + 8);
LABEL_5:
  while (1)
  {
    v21 = v17;
    v22 = v15;
    if (v15 == v20 && v17 == *(a3 + 16))
    {
      break;
    }

    v23 = *v16;
    v24 = *(*v16 + 88 * v15) + 96 * v17;
    if (*(v24 + 16))
    {
      v25 = *(v24 + 24);
      if (v25)
      {
        v26 = *(v24 + 8);
        v27 = v26 + v25;
        if (v14 <= v27)
        {
          v14 = v27;
        }

        v28 = *(v24 + 80);
        v29 = v18 + 16 * v27 + 8 * ~((((2 * v26) | 1uLL) * 2 * v26) >> 1) + 8 * v19 * 2 * v26;
        if (*(v29 - 8) >= v28)
        {
          v28 = *(v29 - 8);
        }

        *(v29 - 8) = v28;
        if (v26)
        {
          v30 = v72;
          v31 = v19 * (2 * v26 - 1);
          v32 = v18 + 16 * v26 + 8 * ~(((2 * v26 - 1) * 2 * v26) >> 1);
          if (*(v32 + 8 * v31) >= v72)
          {
            v30 = *(v32 + 8 * v31);
          }

          *(v32 + 8 * v31) = v30;
        }

        if (v12 > v27)
        {
          v33 = 2 * v27;
          v34 = v72;
          v35 = v19 * v33;
          v36 = v18 + 8 * ~(((v33 | 1uLL) * v33) >> 1) + 8 * (v33 | 1);
          if (*(v36 + 8 * v35) >= v72)
          {
            v34 = *(v36 + 8 * v35);
          }

          *(v36 + 8 * v35) = v34;
        }
      }
    }

    v17 = 0;
    v15 = 0x2E8BA2E8BA2E8BA3 * ((v16[1] - v23) >> 3);
    if (v22 < v15)
    {
      v17 = v21 + 1;
      v37 = (v23 + 88 * v22 + 8);
      while (v17 >= 0xAAAAAAAAAAAAAAABLL * ((*v37 - *(v37 - 1)) >> 5))
      {
        v17 = 0;
        ++v22;
        v37 += 11;
        if (v15 == v22)
        {
          goto LABEL_5;
        }
      }

      v15 = v22;
    }
  }

  sub_D6468(&v68);
  if (v14)
  {
    v38 = *(__p + 2 * v14 - 1);
  }

  else
  {
    v38 = 0.0;
  }

  v40 = *a2;
  v39 = *(a2 + 8);
  v41 = a5 - v38;
  v42 = *(a2 + 16);
  v66 = *a2;
  v67 = a3;
LABEL_31:
  while (1)
  {
    v43 = v39;
    v44 = v42;
    if (v39 == *(a3 + 8) && v42 == *(a3 + 16))
    {
      break;
    }

    v45 = (*(*v40 + 88 * v39) + 96 * v42);
    v46 = v45[2];
    if (v46)
    {
      v47 = v45[3] == 0;
    }

    else
    {
      v47 = 1;
    }

    if (!v47)
    {
      sub_67BF8(a4, *v45, v46, 1);
      v50 = v45[6];
      v49 = v45[7];
      if (v50 != v49)
      {
        v51 = a6 + v48;
        v52 = a7 + v41 + *(__p + 2 * v45[1]);
        v53 = *(a1 + 72);
        v54 = 0.0;
        do
        {
          *(v50 + 32) = v51;
          *(v50 + 40) = v52 + v54;
          v55 = *(v50 + 8);
          v56 = *(v50 + 16);
          while (v55 != v56)
          {
            v57 = *(v55 + 56);
            v58 = *(v53 + 112) + 152 * v57;
            v59 = (v58 + 136);
            p_y = (v58 + 144);
            v61 = v57 == -1;
            if (v57 == -1)
            {
              v62 = &CGPointZero;
            }

            else
            {
              v62 = v59;
            }

            if (v61)
            {
              p_y = &CGPointZero.y;
            }

            sub_6850C((v55 + 8), v51 - v62->x + *(v55 + 72), v52 + v54 - *p_y + *(v55 + 64));
            v55 += 96;
          }

          v54 = v54 + *(v50 + 56);
          v50 += 64;
        }

        while (v50 != v49);
      }
    }

    v42 = 0;
    v40 = v66;
    a3 = v67;
    v39 = 0x2E8BA2E8BA2E8BA3 * ((v66[1] - *v66) >> 3);
    if (v43 < v39)
    {
      v42 = v44 + 1;
      v63 = (*v66 + 88 * v43 + 8);
      while (v42 >= 0xAAAAAAAAAAAAAAABLL * ((*v63 - *(v63 - 1)) >> 5))
      {
        v42 = 0;
        ++v43;
        v63 += 11;
        if (v39 == v43)
        {
          goto LABEL_31;
        }
      }

      v39 = v43;
    }
  }

  if (__p)
  {
    v74 = __p;
    operator delete(__p);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }
}

void sub_D6D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_D64B8(va);
  _Unwind_Resume(a1);
}

void sub_D6D5C(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_4050();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_D6E64(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

void sub_D6E64(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_3AAC();
}

void sub_D76C4(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 submodel];
  if ([v3 kind] == &dword_4)
  {
    [*(a1 + 32) addObject:v4];
  }
}

void sub_D8854(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_D92DC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_D94AC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void *sub_DA530(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t **sub_DA600(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_DA7DC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          v8[5] = v9[5];
          sub_DA76C(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_DA7DC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_DA830(&v12);
  }

  if (a2 != a3)
  {
    sub_DA888();
  }

  return result;
}

void sub_DA758(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DA830(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_DA76C(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_9EBD4(a1, v3, v5, a2);
  return a2;
}

void *sub_DA7DC(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_DA830(uint64_t a1)
{
  sub_9EF40(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_9EF40(*a1, v2);
  }

  return a1;
}

id TUIResourceLoadFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_2E6448 != -1)
  {
    sub_19B3D8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = [qword_2E6440 objectForKeyedSubscript:v2];
  v4 = [v3 unsignedIntegerValue];

LABEL_6:
  return v4;
}

void sub_DB048(id a1)
{
  v1 = qword_2E6440;
  qword_2E6440 = &off_275878;
}

uint64_t TUIResourceLoadForURL(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (!a2)
  {
    if ([v3 isFileURL])
    {
      a2 = 1;
    }

    else
    {
      a2 = 2;
    }
  }

  return a2;
}

float TUIPriorityClamp(float a1)
{
  v1 = 0.0;
  if (a1 >= 0.0)
  {
    v1 = a1;
  }

  if (v1 > 1.0)
  {
    return 1.0;
  }

  return v1;
}

__CFString *NSStringFromTUISpringTimingParameters(float64x2_t *a1)
{
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*a1), vceqzq_f64(a1[1]))))) & 1) != 0 || a1[2].f64[0] != 0.0)
  {
    v3 = objc_alloc_init(NSMutableArray);
    [v3 addObject:@"{"];
    v4 = [NSString stringWithFormat:@" mass: %g", *&a1->f64[0]];
    [v3 addObject:v4];

    v5 = [NSString stringWithFormat:@" stiffness: %g", *&a1->f64[1]];
    [v3 addObject:v5];

    v6 = [NSString stringWithFormat:@" damping: %g", *&a1[1].f64[0]];
    [v3 addObject:v6];

    v7 = [NSString stringWithFormat:@" initialVelocity: { %g, %g }", *&a1[1].f64[1], *&a1[2].f64[0]];
    [v3 addObject:v7];

    v8 = a1->f64[1];
    v9 = 0.0;
    if (v8 != 0.0 && a1->f64[0] != 0.0)
    {
      v10 = sqrt(a1->f64[0] * v8);
      v9 = a1[1].f64[0] / (v10 + v10);
    }

    v11 = [NSString stringWithFormat:@" == dampingRatio: %g", *&v9];
    [v3 addObject:v11];

    [v3 addObject:@" }"];
    v2 = [v3 componentsJoinedByString:&stru_264550];
  }

  else
  {
    v2 = @"TUISpringTimingParametersZero";
  }

  return v2;
}

double TUISpringTimingCalculateDampingRatio(double *a1)
{
  v1 = a1[1];
  result = 0.0;
  if (v1 != 0.0 && *a1 != 0.0)
  {
    v3 = sqrt(v1 * *a1);
    return a1[2] / (v3 + v3);
  }

  return result;
}

uint64_t TUILayerCompositingFilterNeedsBackdropLayer(void *a1)
{
  v1 = a1;
  if (qword_2E6458 != -1)
  {
    sub_19B3EC();
  }

  v2 = objc_opt_class();
  v3 = TUIDynamicCast(v2, v1);
  if (v3 || (v4 = objc_opt_class(), TUIDynamicCast(v4, v1), v5 = objc_claimAutoreleasedReturnValue(), [v5 type], v3 = objc_claimAutoreleasedReturnValue(), v5, v3))
  {
    v6 = [qword_2E6450 containsObject:v3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_DB5BC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_DB5EC(id a1)
{
  v4[0] = kCAFilterNormalBlendMode;
  v4[1] = kCAFilterMultiplyBlendMode;
  v4[2] = kCAFilterScreenBlendMode;
  v4[3] = kCAFilterOverlayBlendMode;
  v4[4] = kCAFilterDarkenBlendMode;
  v4[5] = kCAFilterLightenBlendMode;
  v4[6] = kCAFilterColorDodgeBlendMode;
  v4[7] = kCAFilterColorBurnBlendMode;
  v4[8] = kCAFilterSoftLightBlendMode;
  v4[9] = kCAFilterHardLightBlendMode;
  v4[10] = kCAFilterDifferenceBlendMode;
  v4[11] = kCAFilterExclusionBlendMode;
  v4[12] = kCAFilterSubtractBlendMode;
  v4[13] = kCAFilterDivideBlendMode;
  v4[14] = kCAFilterLinearBurnBlendMode;
  v4[15] = kCAFilterLinearDodgeBlendMode;
  v4[16] = kCAFilterLinearLightBlendMode;
  v4[17] = kCAFilterPinLightBlendMode;
  v4[18] = kCAFilterHueBlendMode;
  v4[19] = kCAFilterSaturationBlendMode;
  v4[20] = kCAFilterColorBlendMode;
  v4[21] = kCAFilterLuminosityBlendMode;
  v4[22] = kCAFilterPlusL;
  v4[23] = kCAFilterPlusD;
  v1 = [NSArray arrayWithObjects:v4 count:24];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_2E6450;
  qword_2E6450 = v2;
}

uint64_t TUI::Box::Flags::Flags(uint64_t this)
{
  *this &= 0xE00000u;
  *(this + 4) &= 0x20u;
  return this;
}

{
  *this &= 0xE00000u;
  *(this + 4) &= 0x20u;
  return this;
}

int64_t sub_DBDC4(id a1, _TUIDynamicArrayUpdate *a2, _TUIDynamicArrayUpdate *a3)
{
  v4 = a3;
  v5 = [(_TUIDynamicArrayUpdate *)a2 newIndex];
  v6 = [(_TUIDynamicArrayUpdate *)v4 newIndex];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

id *sub_DC094(id *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      return [result[4] updateItemAtIndex:?];
    }

    else if (a2 == 3)
    {
      return [result[4] moveItemFromIndex:? toIndex:?];
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return [result[4] deleteItemAtIndex:?];
    }
  }

  else
  {
    return [result[4] insertItemAtIndex:a4];
  }

  return result;
}

BOOL sub_DC5E4(uint64_t a1, void *a2)
{
  v3 = [a2 superview];
  v4 = v3 == *(a1 + 32);

  return v4;
}

id sub_DC624(uint64_t a1)
{
  [*(a1 + 32) setHidden:0];
  v2 = *(a1 + 32);

  return [v2 prepareForReuse];
}

void sub_DC75C(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) prepareForReuse];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_DD000(id a1)
{
  v1 = qword_2E6460;
  qword_2E6460 = &off_273298;
}

void sub_DD220(id a1)
{
  v1 = qword_2E6470;
  qword_2E6470 = &off_2732B0;
}

void sub_DD28C(id a1)
{
  v3[0] = @"didPlay";
  v3[1] = @"didPause";
  v3[2] = @"didResume";
  v3[3] = @"didMute";
  v3[4] = @"didUnmute";
  v3[5] = @"didEnterFullscreen";
  v3[6] = @"didExitFullscreen";
  v3[7] = @"didPlayToCompletion";
  v3[8] = @"didFailToLoad";
  v3[9] = @"didStall";
  v3[10] = @"didBeginScrubbing";
  v3[11] = @"didEndScrubbing";
  v1 = [NSArray arrayWithObjects:v3 count:12];
  v2 = qword_2E6480;
  qword_2E6480 = v1;
}

void sub_DD5B0(id a1)
{
  v1 = qword_2E6490;
  qword_2E6490 = &off_2732C8;
}

void sub_DD624(id a1)
{
  v1 = qword_2E64A0;
  qword_2E64A0 = &off_2732E0;
}

void sub_DD690(id a1)
{
  v3[0] = @"actionPlay";
  v3[1] = @"actionPause";
  v3[2] = @"actionMute";
  v3[3] = @"actionUnmute";
  v3[4] = @"actionEnterFullscreen";
  v3[5] = @"actionExitFullscreen";
  v1 = [NSArray arrayWithObjects:v3 count:6];
  v2 = qword_2E64B0;
  qword_2E64B0 = v1;
}

void sub_DD9F4(id a1)
{
  v1 = dispatch_queue_create("TUIAVAsset.creationQueue", &_dispatch_queue_attr_concurrent);
  v2 = qword_2E64C0;
  qword_2E64C0 = v1;
}

void sub_DDA38(uint64_t a1)
{
  v2 = [[AVURLAsset alloc] initWithURL:*(a1 + 32) options:0];
  (*(*(a1 + 40) + 16))();
}

void sub_DDB90(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_DFA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TUILayoutController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_DFDD0(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (([v8 directEnvironmentUseMask] & a3) != 0)
  {
    [v7 addObject:v8];
  }

  if (([v8 descendentEnvironmentUseMask] & a3) != 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = [v9 environmentChildContainersForContainer:{v8, 0}];
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          if (v14)
          {
            sub_DFDD0(v7, v14, a3, v9);
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

BOOL sub_E002C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || v3 == v4)
  {
    v6 = v3;
  }

  else
  {
    do
    {
      v6 = [v3 parentModel];

      if (!v6)
      {
        break;
      }

      v3 = v6;
    }

    while (v6 != v5);
  }

  return v6 == v5;
}

void sub_E07BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  TUI::Graph::Ordering::~Ordering(&a51);
  sub_11694(&a67);

  _Unwind_Resume(a1);
}

unint64_t sub_E0908(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 directEnvironmentUseMask];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 environmentChildContainersForContainer:v3];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  v17 = v5;
  v8 = 0;
  if (v7)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if (v11)
        {
          v12 = [*(*(&v18 + 1) + 8 * i) parentModel];
          v13 = v12;
          if (v12)
          {
            v14 = v12 == v3;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {
            v15 = v12;
          }

          else
          {
            do
            {
              v15 = [v13 parentModel];

              if (!v15)
              {
                break;
              }

              v13 = v15;
            }

            while (v15 != v3);
          }

          if (v15 == v3)
          {
            v8 |= sub_E0908(v11, v4);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  [v3 setDescendentEnvironmentUseMask:v8];
  return v8 | v17;
}

uint64_t sub_E112C(uint64_t a1, void *a2)
{
  v9 = a2;
  v4 = sub_3D34((a1 + 88), &v9);
  if (!v4)
  {
    v8[0] = v9;
    memset(&v8[1], 0, 24);
    v4 = sub_E4378((a1 + 88), v8);
  }

  ++v4[3];
  *(a1 + 3232 + 24 * *(a1 + 27808)) = a2;
  result = mach_absolute_time();
  v6 = *(a1 + 27808);
  v7 = a1 + 3232 + 24 * v6;
  *(v7 + 8) = result;
  *(v7 + 16) = 0;
  *(a1 + 27808) = v6 + 1;
  return result;
}

void sub_E11F0(uint64_t a1)
{
  v2 = *(a1 + 27808) - 1;
  *(a1 + 27808) = v2;
  v3 = a1 + 3232;
  v4 = *(a1 + 3232 + 24 * v2);
  v5 = *(v3 + 24 * *(a1 + 27808) + 8);
  v6 = mach_absolute_time();
  v12 = v4;
  v7 = sub_3D34((a1 + 88), &v12);
  if (!v7)
  {
    v11[0] = v12;
    memset(&v11[1], 0, 24);
    v7 = sub_E4378((a1 + 88), v11);
  }

  v8 = v6 - v5;
  if (v5 >= v6)
  {
    v8 = v5 - v6;
  }

  v9 = v7[5] + v8;
  v10 = *(a1 + 27808);
  v7[4] += v8 - *(v3 + 24 * v10 + 16);
  v7[5] = v9;
  if (v10)
  {
    *(v3 + 24 * v10 - 8) += v8;
  }
}

void sub_E2ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_E2F40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_E2F58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_E351C(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_E3664(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

id sub_E3F88(void *a1)
{
  v1 = [a1 parentModel];
  if (v1)
  {
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v2 = [v1 parentModel];

      v1 = v2;
      if (!v2)
      {
        goto LABEL_6;
      }
    }

    v1 = v1;
  }

LABEL_6:

  return v1;
}

void *sub_E4024(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *sub_E428C(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_E4378(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_E45D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3A60(va);
  _Unwind_Resume(a1);
}

void sub_E46A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E46CC(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v5 validatedIntrinsicWidthConsideringSpecified];
  v9 = v8;
  v11 = *(v6 + 8);
  v10 = *(v6 + 16);
  if (v11 >= v10)
  {
    v13 = (v11 - *v6) >> 4;
    v14 = v13 + 1;
    if ((v13 + 1) >> 60)
    {
      sub_4050();
    }

    v15 = v10 - *v6;
    if (v15 >> 3 > v14)
    {
      v14 = v15 >> 3;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF0)
    {
      v16 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      sub_21464(v6, v16);
    }

    v17 = (16 * v13);
    *v17 = v7;
    v17[1] = v9;
    v12 = 16 * v13 + 16;
    v18 = *(v6 + 8) - *v6;
    v19 = (16 * v13 - v18);
    memcpy(v19, *v6, v18);
    v20 = *v6;
    *v6 = v19;
    *(v6 + 8) = v12;
    *(v6 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v11 = v7;
    v11[1] = v8;
    v12 = (v11 + 2);
  }

  *(v6 + 8) = v12;
}

void sub_E4958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_E4984(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_E4994(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) flexedWidth];
  [*(a1 + 32) flexedWidth];
  [v6 setFlexedWidth:?];
  [*(a1 + 32) flexedHeight];
  [*(a1 + 32) flexedHeight];
  [v6 setFlexedHeight:?];
  [v6 setContainingWidth:*(a1 + 48)];
  [v6 validateLayout];
  [v6 setComputedOrigin:{CGPointZero.x, CGPointZero.y}];
  [v6 computedTransformedSize];
  *(*(*(a1 + 40) + 8) + 56) = fmax(*(*(*(a1 + 40) + 8) + 56), v4);
  *(*(*(a1 + 40) + 8) + 48) = fmax(*(*(*(a1 + 40) + 8) + 48), v5);
}

void sub_E4E14(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [[NSMutableArray alloc] initWithCapacity:1];
  [v5 appendLayoutModelsToArray:v6];
  v7 = [v6 firstObject];
  v8 = [*(a1 + 32) controller];
  v9 = [v8 layoutForModel:v7];

  [*(*(a1 + 32) + 104) setObject:v9 forKeyedSubscript:v10];
}

void sub_E58E8(id *a1)
{
  v2 = [a1[4] stateNameToLayout];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_E59BC;
  v3[3] = &unk_261928;
  v4 = a1[5];
  v5 = a1[6];
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_E59BC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) renderModelForLayout:a3 kind:6];
  [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
}

void sub_E5D1C(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) children];
  v7 = [v6 indexOfObject:v5];

  v8 = [*(a1 + 40) children];
  v9 = [v8 count];

  if (v7 < v9)
  {
    v10 = [*(a1 + 40) children];
    v11 = [v10 objectAtIndexedSubscript:v7];

    [v11 setStateName:v12];
  }
}

id sub_E730C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 type];
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_E7354(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v12 type];
  LODWORD(v6) = [v6 containsObject:v7];

  if (v6)
  {
    v8 = [_TUIHostingGeometryReuseKey alloc];
    v9 = [v12 type];
    v10 = [v12 identifier];
    [v5 requestedSize];
    v11 = [(_TUIHostingGeometryReuseKey *)v8 initWithType:v9 identifier:v10 requestedSize:?];

    [*(a1 + 40) setObject:v5 forKeyedSubscript:v11];
  }
}

TUI::Symbol::Tab *TUI::Symbol::Tab::Tab(TUI::Symbol::Tab *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 24) = 1065353216;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = 0;
  *(this + 40) = 1065353216;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 50) = 1065353216;
  sub_60D8(__p, "width");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "height");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_0 + 1;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "top");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_0 + 2;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "left");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_0 + 3;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "bottom");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_4;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "right");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_4 + 1;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "min");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_4 + 2;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "max");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_4 + 3;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "env");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_8;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "deviceClass");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_8 + 1;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "widthClass");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_8 + 2;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "heightClass");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_8 + 3;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "windowSize");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_C;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "viewSize");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 57;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "viewSafeAreaInsets");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_68 + 9;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "viewSizeWithinSafeArea");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_68 + 10;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "statusBarHeight");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_68 + 11;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "split");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_C + 1;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "orientation");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_C + 2;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "ipad-regular");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_C + 3;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "ipad-large");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_10;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "iphone-regular");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_10 + 1;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "iphone-large");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_10 + 2;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "iphone-large-plus");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_10 + 3;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "compact");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_14;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "regular");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_14 + 1;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "large");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_14 + 2;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "landscape");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_14 + 3;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "portrait");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_18;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "full");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_18 + 1;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "wide");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_18 + 2;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "half");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_18 + 3;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "narrow");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_1C;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "style");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_1C + 1;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "light");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_1C + 2;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "dark");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &dword_1C + 3;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "auto");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "inherit");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 1;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "intrinsic");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 2;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "grid");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 3;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "content");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 4;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "column");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 5;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "r");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 6;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "g");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 7;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "b");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 8;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "a");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 9;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "contentSizeCategory");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 10;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "x-small");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 11;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "small");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 12;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "medium");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 13;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "x-large");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 14;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "xx-large");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 15;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "xxx-large");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 16;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "ax-medium");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 34;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "ax-large");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 35;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "ax-x-large");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 36;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "ax-xx-large");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 37;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "ax-xxx-large");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 38;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "contentsScale");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 17;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "tintColor");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 18;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "count");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 19;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "index");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 20;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "key");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 21;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "first");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 22;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "last");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 23;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "left-to-right");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 24;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "right-to-left");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 25;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "layoutDirection");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 26;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "color");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 27;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "brightness");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 28;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "translate");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 29;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "scale");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 30;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "rotate");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 31;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "leading");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 32;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "trailing");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 33;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "spring");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 39;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "mass");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 40;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "stiffness");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 41;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "damping");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 42;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "x");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 43;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "y");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 44;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "angle");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 45;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "identity");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 46;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "default");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 47;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "editing");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 48;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "editingHasValue");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 49;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "hasValue");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 50;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "highlighted");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 51;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "disabled");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 52;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "state");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 53;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "displayClass");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 54;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "oled");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 56;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "lcd");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 55;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "ceil");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 58;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "floor");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 59;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "mod");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 60;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "round");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 61;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "v");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 62;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "demoMode");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 63;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "size");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 64;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "insets");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 65;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "length");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 66;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "rgb");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 67;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "rgba");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 68;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "guide");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 69;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "unknown");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 70;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "none");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_20 + 71;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "pointSize");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_68;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "lightColor");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_68 + 1;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "darkColor");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_68 + 2;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "mac");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_68 + 3;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "active");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_68 + 4;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "inactive");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_68 + 5;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "activeAppearance");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_68 + 6;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "intrinsic-unclamped");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_68 + 7;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_60D8(__p, "strcat");
  v5 = __p;
  sub_ECEC0(this, __p)[5] = &stru_68 + 8;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_EBB58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_66E0(v16);
  sub_ECE38(v15 + 128);
  sub_ECD94(&__p);
  sub_ECD0C(v15 + 64);
  v19 = *v17;
  if (*v17)
  {
    *(v15 + 48) = v19;
    operator delete(v19);
  }

  sub_ECD0C(v15);
  _Unwind_Resume(a1);
}

void TUI::Symbol::Tab::~Tab(TUI::Symbol::Tab *this)
{
  sub_66E0(this + 168);
  sub_ECE38(this + 128);
  v3 = (this + 104);
  sub_ECD94(&v3);
  sub_ECD0C(this + 64);
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  sub_ECD0C(this);
}

uint64_t TUI::Symbol::Tab::lookup(uint64_t a1, const void **a2)
{
  v2 = sub_ED6C8((a1 + 64), a2);
  if (v2)
  {
    return *(v2 + 20);
  }

  else
  {
    return 0xFFFFLL;
  }
}

uint64_t TUI::Symbol::Tab::lookup(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == *a2)
  {
    return 0;
  }

  v2 = sub_ED7C4((a1 + 128), a2);
  if (v2)
  {
    return *(v2 + 20);
  }

  else
  {
    return 0xFFFFLL;
  }
}

uint64_t TUI::Symbol::Tab::lookupEntry(uint64_t a1, char *a2)
{
  __src = 0;
  v25 = 0;
  v26 = 0;
  if (a2[23] >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = strchr(v3, 58);
  if (v4)
  {
    do
    {
      if (v4[1] != 58)
      {
        goto LABEL_34;
      }

      v5 = v4 - v3;
      if ((v4 - v3) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_6768();
      }

      if (v5 >= 0x17)
      {
        operator new();
      }

      v23 = v4 - v3;
      if (v4 != v3)
      {
        memmove(&__p, v3, v4 - v3);
      }

      *(&__p + v5) = 0;
      v6 = sub_ED6C8((a1 + 64), &__p);
      if (v6)
      {
        v7 = *(v6 + 20);
      }

      else
      {
        v7 = 0xFFFF;
      }

      if (v23 < 0)
      {
        operator delete(__p);
      }

      if (v7 == 0xFFFF)
      {
        goto LABEL_34;
      }

      v8 = v25;
      if (v25 >= v26)
      {
        v10 = __src;
        v11 = v25 - __src;
        v12 = (v25 - __src) >> 1;
        if (v12 <= -2)
        {
          sub_4050();
        }

        if (v26 - __src <= v12 + 1)
        {
          v13 = v12 + 1;
        }

        else
        {
          v13 = v26 - __src;
        }

        v14 = 0x7FFFFFFFFFFFFFFFLL;
        if (v26 - __src < 0x7FFFFFFFFFFFFFFELL)
        {
          v14 = v13;
        }

        if (v14)
        {
          sub_6780(&__src, v14);
        }

        *(2 * v12) = v7;
        v9 = (2 * v12 + 2);
        memcpy(0, v10, v11);
        v15 = __src;
        __src = 0;
        v25 = v9;
        v26 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v25 = v7;
        v9 = v8 + 2;
      }

      v25 = v9;
      v3 = v4 + 2;
      v4 = strchr(v4 + 2, 58);
    }

    while (v4);
    if (v9 == __src)
    {
      LODWORD(v4) = 0;
    }

    else
    {
      v16 = sub_ED7C4((a1 + 128), &__src);
      if (!v16 || (LODWORD(v4) = *(v16 + 20), v4 == 0xFFFF))
      {
LABEL_34:
        v17 = 0;
        v18 = -65536;
        goto LABEL_45;
      }
    }
  }

  sub_60D8(&__p, v3);
  v19 = sub_ED6C8((a1 + 64), &__p);
  if (v19)
  {
    v20 = *(v19 + 20);
  }

  else
  {
    v20 = 0xFFFF;
  }

  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (v20 == 0xFFFF)
  {
    v17 = 0;
  }

  else
  {
    v17 = v4;
  }

  v18 = v20 << 16;
LABEL_45:
  if (__src)
  {
    v25 = __src;
    operator delete(__src);
  }

  return v18 | v17;
}

void sub_EC2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id TUI::Symbol::Tab::string(TUI::Symbol::Tab *this, unsigned int a2)
{
  v4 = *(this + 13);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 14) - v4) >> 3) <= a2)
  {
    v6 = 0;
  }

  else
  {
    v5 = (v4 + 24 * a2);
    if (*(v5 + 23) < 0)
    {
      v5 = *v5;
    }

    v6 = [NSString stringWithUTF8String:v5, v2];
  }

  return v6;
}

id TUI::Symbol::Tab::string(TUI::Symbol::Tab *this, unint64_t a2)
{
  v3 = a2;
  v4 = a2 >> 16;
  v5 = objc_opt_new();
  v6 = this + 144;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if (*(v6 + 20) == v3)
    {
      for (i = *(v6 + 2); i != *(v6 + 3); ++i)
      {
        v8 = TUI::Symbol::Tab::string(this, *i);
        v9 = v8;
        if (v8)
        {
          [v5 appendFormat:@"%@::", v8];
        }
      }

      break;
    }
  }

  v10 = TUI::Symbol::Tab::string(this, v4);
  if (v10)
  {
    [v5 appendString:v10];
  }

  v11 = [v5 copy];

  return v11;
}

std::string *TUI::Symbol::Tab::std_string@<X0>(std::string *this@<X0>, Entry a2@<0:W1>, std::string *a3@<X8>)
{
  var1 = a2.var1;
  v4 = this;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = this + 6;
  while (1)
  {
    v6 = v6->__r_.__value_.__r.__words[0];
    if (!v6)
    {
      break;
    }

    if (LOWORD(v6[1].__r_.__value_.__r.__words[2]) == a2.var0)
    {
      v8 = v6->__r_.__value_.__r.__words[2];
      for (i = v6[1].__r_.__value_.__l.__data_; v8 != i; ++v8)
      {
        size = v4[4].__r_.__value_.__l.__size_;
        if (0xAAAAAAAAAAAAAAABLL * ((v4[4].__r_.__value_.__r.__words[2] - size) >> 3) > *v8)
        {
          v10 = size + 24 * *v8;
          v11 = *(v10 + 23);
          if (v11 >= 0)
          {
            v12 = v10;
          }

          else
          {
            v12 = *v10;
          }

          if (v11 >= 0)
          {
            v13 = *(v10 + 23);
          }

          else
          {
            v13 = *(v10 + 8);
          }

          std::string::append(a3, v12, v13);
          this = std::string::append(a3, "::");
          i = v6[1].__r_.__value_.__l.__data_;
        }
      }

      break;
    }
  }

  v14 = v4[4].__r_.__value_.__l.__size_;
  if (0xAAAAAAAAAAAAAAABLL * ((v4[4].__r_.__value_.__r.__words[2] - v14) >> 3) > var1)
  {
    v15 = v14 + 24 * var1;
    v16 = *(v15 + 23);
    if (v16 >= 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = *v15;
    }

    if (v16 >= 0)
    {
      v18 = *(v15 + 23);
    }

    else
    {
      v18 = *(v15 + 8);
    }

    return std::string::append(a3, v17, v18);
  }

  return this;
}

void sub_EC5FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TUI::Symbol::Tab::loadSymbol(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_ED8EC((a1 + 64), a3);
  if (!v6)
  {
    *buf = a3;
    *(sub_ED9E8((a1 + 64), a3) + 20) = a2;
    return 1;
  }

  v7 = *(v6 + 20);
  if (v7 == a2)
  {
    return 1;
  }

  v8 = TUIDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    *buf = 136446722;
    *&buf[4] = v10;
    v12 = 2048;
    v13 = a2;
    v14 = 2048;
    v15 = v7;
    _os_log_error_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "symbol:%{public}s index:%lu already exists with index:%lu", buf, 0x20u);
  }

  return 0;
}

BOOL TUI::Symbol::Tab::endSymbolLoading(TUI::Symbol::Tab *this)
{
  sub_EC934(this + 5, 0x74uLL, &word_24CFB0);
  for (i = *(this + 2); i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      sub_114E8(&__p, i[2], i[3]);
    }

    else
    {
      __p = *(i + 2);
    }

    v10 = i[5];
    v3 = sub_ED8EC(this + 8, &__p.__r_.__value_.__l.__data_);
    if (v3)
    {
      *(*(this + 5) + 2 * v10) = *(v3 + 20);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v4 = *(this + 10);
  if (v4)
  {
    LOWORD(v5) = 0;
    do
    {
      if (*(v4 + 39) < 0)
      {
        sub_114E8(&__p, v4[2], v4[3]);
      }

      else
      {
        __p = *(v4 + 2);
      }

      LOWORD(v10) = *(v4 + 20);
      if (v5 <= v10)
      {
        v5 = v10;
      }

      else
      {
        v5 = v5;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *v4;
    }

    while (v4);
    v6 = v5 + 1;
  }

  else
  {
    v6 = 1;
  }

  sub_60D8(&__p, "-");
  sub_EC964(this + 13, v6, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  for (j = *(this + 10); j; j = *j)
  {
    if (*(j + 39) < 0)
    {
      sub_114E8(&__p, j[2], j[3]);
    }

    else
    {
      __p = *(j + 2);
    }

    LOWORD(v10) = *(j + 20);
    std::string::operator=((*(this + 13) + 24 * v10), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return *(*(this + 5) + 16) != -1;
}

void sub_EC910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EC934(void *a1, unint64_t a2, __int16 *a3)
{
  v3 = (a1[1] - *a1) >> 1;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    sub_EDD20(a1, a2 - v3, a3);
  }
}

void sub_EC964(size_t *a1, unint64_t a2, __int128 *a3)
{
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    sub_EE070(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 24 * a2;
    while (v4 != v8)
    {
      v9 = *(v4 - 1);
      v4 -= 3;
      if (v9 < 0)
      {
        operator delete(*v4);
      }
    }

    a1[1] = v8;
  }
}

double TUI::Symbol::Tab::beginNSLoading(TUI::Symbol::Tab *this)
{
  v2 = *(*(this + 5) + 16);
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  v12 = __p;
  *(sub_EE390(this + 16, __p) + 20) = 0;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v9 = v2;
  __p[1] = 0;
  v11 = 0;
  __p[0] = 0;
  sub_EE6AC(__p, &v9, __p, 1);
  v12 = __p;
  *(sub_EE390(this + 16, __p) + 20) = 1;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  __p[0] = &word_24CFB2;
  v3 = sub_EE758(this + 21, &word_24CFB2);
  v5 = v3 + 3;
  v4 = v3[3];
  if (v4)
  {
    v3[4] = v4;
    operator delete(v4);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v9 = v2;
  __p[1] = 0;
  v11 = 0;
  __p[0] = 0;
  sub_EE6AC(__p, &v9, __p, 1);
  v12 = word_24CFB4;
  v6 = sub_EE758(this + 21, word_24CFB4);
  v7 = v6[3];
  if (v7)
  {
    v6[4] = v7;
    operator delete(v7);
    v6[3] = 0;
    v6[4] = 0;
    v6[5] = 0;
  }

  result = *__p;
  *(v6 + 3) = *__p;
  v6[5] = v11;
  return result;
}

void sub_ECBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TUI::Symbol::Tab::loadNS(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  v16 = a2;
  v5 = sub_EEA18((a1 + 128), a3);
  v6 = sub_11F88((a1 + 168), &v16);
  if (!v5)
  {
    if (!v6)
    {
      v14 = v16;
      v17 = a3;
      *(sub_EEB40((a1 + 128), a3) + 20) = v14;
      v17 = &v16;
      v15 = sub_EE758((a1 + 168), &v16) + 3;
      if (v15 != a3)
      {
        sub_EEF04(v15, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 1);
      }

      return 1;
    }

    v7 = 1;
LABEL_6:
    v9 = v6 + 3;
    v8 = v6[3];
    v10 = v9[1] - v8;
    if (v10 != *(a3 + 8) - *a3)
    {
      goto LABEL_11;
    }

    if (memcmp(v8, *a3, v10) || v7)
    {
      goto LABEL_11;
    }

    return 1;
  }

  v7 = *(v5 + 20) != v16;
  if (v6)
  {
    goto LABEL_6;
  }

LABEL_11:
  v12 = TUIDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_19B630(&v16, v12);
  }

  return 0;
}

uint64_t sub_ECD0C(uint64_t a1)
{
  sub_ECD48(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_ECD48(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_ECD94(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_ECDE8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_ECDE8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_ECE38(uint64_t a1)
{
  sub_ECE74(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_ECE74(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[2];
      if (v4)
      {
        v2[3] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **sub_ECEC0(void *a1, const void **a2)
{
  v4 = sub_ED140(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_ED5EC(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

unint64_t sub_ED140(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_ED180(&v5, a2, v3);
}

unint64_t sub_ED180(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_ED52C(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_ED480(a2, a3);
  }

  else
  {
    return sub_ED388(a2, a3);
  }
}

unint64_t sub_ED388(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_ED480(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_ED52C(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_ED5EC(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_ED664(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void **sub_ED6C8(void *a1, const void **a2)
{
  v4 = sub_ED140(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (sub_ED5EC(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void *sub_ED7C4(void *a1, unsigned __int16 **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      v6 = *v5++;
      v4 = v6 | (4 * v4);
    }

    while (v5 != v2);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2 - v3;
    do
    {
      v14 = v12[1];
      if (v4 == v14)
      {
        v15 = v12[2];
        if (v12[3] - v15 == v13 && !memcmp(v15, v3, v13))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v14 >= *&v7)
          {
            v14 %= *&v7;
          }
        }

        else
        {
          v14 &= *&v7 - 1;
        }

        if (v14 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

const void **sub_ED8EC(void *a1, const void **a2)
{
  v4 = sub_ED140(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_ED5EC(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

const void **sub_ED9E8(void *a1, const void **a2)
{
  v4 = sub_ED140(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_EDC60();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_ED5EC(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_EDC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_ED664(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EDD04(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_ED664(v3, v2);
  _Unwind_Resume(a1);
}

void sub_EDD20(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 1)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 2 * a2;
      v17 = *a3;
      v18 = v14 + 8;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_24CD00)));
        if (vuzp1_s8(vuzp1_s16(v21, *v15.i8), *v15.i8).u8[0])
        {
          *(v19 - 4) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(v21, *&v15), *&v15).i8[1])
        {
          *(v19 - 3) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_24CFA0)))), *&v15).i8[2])
        {
          *(v19 - 2) = v17;
          *(v19 - 1) = v17;
        }

        v22 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_24CF90)));
        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i32[1])
        {
          *v19 = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i8[5])
        {
          v19[1] = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_24CF80))))).i8[6])
        {
          v19[2] = v17;
          v19[3] = v17;
        }

        v12 += 8;
        v19 += 8;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    if ((a2 + (v7 >> 1)) < 0)
    {
      sub_4050();
    }

    v8 = v7 >> 1;
    v9 = v5 - *a1;
    if (v9 <= a2 + (v7 >> 1))
    {
      v10 = a2 + (v7 >> 1);
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_6780(a1, v11);
    }

    v23 = 0;
    v24 = 2 * v8;
    v25 = 2 * v8 + 2 * a2;
    v26 = *a3;
    v27 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v28 = v27 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
    v29 = vdupq_n_s64(v27);
    v30 = (v24 + 8);
    do
    {
      v31 = vdupq_n_s64(v23);
      v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_24CD00)));
      if (vuzp1_s8(vuzp1_s16(v32, *v29.i8), *v29.i8).u8[0])
      {
        *(v30 - 4) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(v32, *&v29), *&v29).i8[1])
      {
        *(v30 - 3) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_24CFA0)))), *&v29).i8[2])
      {
        *(v30 - 2) = v26;
        *(v30 - 1) = v26;
      }

      v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_24CF90)));
      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i32[1])
      {
        *v30 = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i8[5])
      {
        v30[1] = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_24CF80))))).i8[6])
      {
        v30[2] = v26;
        v30[3] = v26;
      }

      v23 += 8;
      v30 += 8;
    }

    while (v28 != v23);
    v34 = *(a1 + 8) - *a1;
    v35 = v24 - v34;
    memcpy((v24 - v34), *a1, v34);
    v36 = *a1;
    *a1 = v35;
    *(a1 + 8) = v25;
    *(a1 + 16) = 0;
    if (v36)
    {

      operator delete(v36);
    }
  }
}

size_t *sub_EE070(size_t *result, unint64_t a2, __int128 *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = v7 + 24 * a2;
      v13 = 24 * a2;
      do
      {
        if (*(a3 + 23) < 0)
        {
          result = sub_114E8(v7, *a3, *(a3 + 1));
        }

        else
        {
          v14 = *a3;
          *(v7 + 16) = *(a3 + 2);
          *v7 = v14;
        }

        v7 += 24;
        v13 -= 24;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_4050();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v22 = result;
    if (v11)
    {
      sub_EE2A4(result, v11);
    }

    v19 = 0;
    v20 = 24 * v8;
    v21 = 24 * v8;
    sub_EE214(&v19, a2, a3);
    v15 = v5[1] - *v5;
    v16 = v20 - v15;
    memcpy((v20 - v15), *v5, v15);
    v17 = *v5;
    *v5 = v16;
    v18 = v5[2];
    *(v5 + 1) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    return sub_EE2FC(&v19);
  }

  return result;
}

void sub_EE1F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_EE2FC(va);
  _Unwind_Resume(a1);
}

void *sub_EE214(void *result, uint64_t a2, __int128 *a3)
{
  v3 = result;
  v4 = result[2];
  if (a2)
  {
    v6 = v4 + 24 * a2;
    v7 = 24 * a2;
    do
    {
      if (*(a3 + 23) < 0)
      {
        result = sub_114E8(v4, *a3, *(a3 + 1));
      }

      else
      {
        v8 = *a3;
        *(v4 + 16) = *(a3 + 2);
        *v4 = v8;
      }

      v4 += 24;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

void sub_EE2A4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_3AAC();
}

uint64_t sub_EE2FC(uint64_t a1)
{
  sub_EE334(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_EE334(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void *sub_EE390(void *a1, unsigned __int16 **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      v6 = *v5++;
      v4 = v6 | (4 * v4);
    }

    while (v5 != v2);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_25;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_25:
    operator new();
  }

  v13 = v2 - v3;
  while (1)
  {
    v14 = v12[1];
    if (v14 == v4)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
    }

    if (v14 != v10)
    {
      goto LABEL_25;
    }

LABEL_24:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  v15 = v12[2];
  if (v12[3] - v15 != v13 || memcmp(v15, v3, v13))
  {
    goto LABEL_24;
  }

  return v12;
}

void sub_EE648(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[2];
    if (v3)
    {
      __p[3] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_EE6AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_EE720(result, a4);
  }

  return result;
}

void sub_EE704(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_EE720(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_6780(a1, a2);
  }

  sub_4050();
}

uint64_t **sub_EE758(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_EE9B4(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_EEA18(void *a1, unsigned __int16 **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      v6 = *v5++;
      v4 = v6 | (4 * v4);
    }

    while (v5 != v2);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2 - v3;
    do
    {
      v14 = v12[1];
      if (v14 == v4)
      {
        v15 = v12[2];
        if (v12[3] - v15 == v13 && !memcmp(v15, v3, v13))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v14 >= *&v7)
          {
            v14 %= *&v7;
          }
        }

        else
        {
          v14 &= *&v7 - 1;
        }

        if (v14 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void *sub_EEB40(void *a1, unsigned __int16 **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      v6 = *v5++;
      v4 = v6 | (4 * v4);
    }

    while (v5 != v2);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_25;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_25:
    sub_EEDD8();
  }

  v13 = v2 - v3;
  while (1)
  {
    v14 = v12[1];
    if (v14 == v4)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
    }

    if (v14 != v10)
    {
      goto LABEL_25;
    }

LABEL_24:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  v15 = v12[2];
  if (v12[3] - v15 != v13 || memcmp(v15, v3, v13))
  {
    goto LABEL_24;
  }

  return v12;
}

void sub_EEDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    sub_EE648(&a13, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EEE6C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_EE648(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_EEE88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_EE720(result, a4);
  }

  return result;
}

void sub_EEEE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_EEF04(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_EE720(v6, v10);
    }

    sub_4050();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_EF028()
{
  v0 = objc_autoreleasePoolPush();
  TUI::Symbol::Entry::invalid = -65536;

  objc_autoreleasePoolPop(v0);
}

void sub_EF608(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained textView];
  [v2 setText:v1];
}

void sub_F22B0(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = +[NSFileManager defaultManager];
  v3 = [*(*(a1 + 32) + 48) URLByAppendingPathComponent:@"fonts"];
  v4 = [v2 enumeratorAtURL:v3 includingPropertiesForKeys:0 options:5 errorHandler:0];

  v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v19;
    *&v6 = 138543618;
    v16 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (([*(*(a1 + 32) + 16) containsObject:{v10, v16}] & 1) == 0)
        {
          error = 0;
          CTFontManagerRegisterFontsForURL(v10, kCTFontManagerScopeProcess, &error);
          v11 = error;
          v12 = v11;
          if (v11)
          {
            v13 = [(__CFError *)v11 domain];
            if ([v13 isEqualToString:kCTFontManagerErrorDomain])
            {
              v14 = [(__CFError *)v12 code];

              if (v14 == &stru_68.sectname[1])
              {
                goto LABEL_17;
              }
            }

            else
            {
            }

            v15 = TUIDefaultLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v16;
              v23 = v10;
              v24 = 2112;
              v25 = error;
              _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "failed to register font at URL: %{public}@ %@", buf, 0x16u);
            }
          }

          else
          {
            [*(*(a1 + 32) + 16) addObject:v10];
            v15 = TUIDefaultLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v23 = v10;
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "registered font at URL:%@", buf, 0xCu);
            }
          }

LABEL_17:
          continue;
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }
}

id sub_F25CC(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = *(*(a1 + 32) + 16);
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        error = 0;
        CTFontManagerUnregisterFontsForURL(v6, kCTFontManagerScopeProcess, &error);
        v7 = error;
        v8 = TUIDefaultLog();
        v9 = v8;
        if (v7)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v18 = v6;
            v19 = 2112;
            v20 = error;
            _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "failed to unregister font at URL: %{public}@ %@", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = v6;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "unregistered font at URL:%@", buf, 0xCu);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v3);
  }

  return [*(*(a1 + 32) + 16) removeAllObjects];
}

void *sub_F4048(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_F4458(id a1)
{
  v1 = qword_2E64D8;
  qword_2E64D8 = &off_2758A0;
}

void sub_F554C(id a1)
{
  v4 = @"name";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E64E8;
  qword_2E64E8 = v2;
}

void sub_F5804(id a1)
{
  v4 = @"run-list";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E64F8;
  qword_2E64F8 = v2;
}

void sub_F5B20(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSizeAndIntrinsic];
  v2 = [v1 mutableCopy];

  v6[0] = @"fill-mode";
  v6[1] = @"mask-color";
  v6[2] = @"resource-load";
  v6[3] = @"filter";
  v6[4] = @"continuous-corners";
  v6[5] = @"corner-radius";
  v6[6] = @"opacity";
  v6[7] = @"rasterize";
  v6[8] = @"resource-kind";
  v6[9] = @"resource-instance";
  v6[10] = @"resource-options";
  v6[11] = @"fallback-color";
  v6[12] = @"hflip-for-rtl";
  v6[13] = @"crossfades-contents";
  v6[14] = @"blend-mode";
  v3 = [NSArray arrayWithObjects:v6 count:15];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E6508;
  qword_2E6508 = v4;
}

uint64_t sub_F894C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_F8964(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(*(a1 + 32) + 24);
  v3 = (*(*(a1 + 48) + 8) + 40);

  objc_storeStrong(v3, v2);
}

void sub_F8A4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));

  if (v2 == WeakRetained)
  {
    v4 = (*(a1 + 40) + 16);

    objc_storeWeak(v4, 0);
  }
}

void TUI::Evaluation::Context::~Context(TUI::Evaluation::Context *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    TUI::Instruction::Evaluation::~Evaluation(v2);
    operator delete();
  }

  if (*this)
  {
    (*(**this + 64))(*this);
  }

  v3 = *(this + 96);
  if (v3)
  {
    sub_3780(v3 + 88);
    sub_11694(v3 + 48);
    sub_11694(v3 + 8);
    operator delete();
  }

  v4 = *(this + 82);
  if (v4)
  {
    *(this + 83) = v4;
    operator delete(v4);
  }

  sub_11614(this + 616);

  sub_11694(this + 496);
  sub_11694(this + 456);
  sub_34CFC(this + 352);
  sub_11694(this + 312);

  TUI::Evaluation::DynamicCache::~DynamicCache((this + 64));
  v5 = *(this + 7);
  if (v5)
  {
    sub_11420(v5);
  }
}

void TUI::Evaluation::Context::Context(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  a5;
  a6;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  TUI::Evaluation::DynamicCache::DynamicCache((a1 + 64));
  *(a1 + 248) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 344) = 1065353216;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 1065353216;
  *(a1 + 456) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 1065353216;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 1065353216;
  *(a1 + 536) = 0u;
  *(a1 + 560) = a2;
  v13 = v11;
  *(a1 + 568) = v13;
  *(a1 + 576) = [v13 packageBuffer];
  *(a1 + 584) = 0;
  *(a1 + 600) = v12;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 648) = 1065353216;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0;
  operator new();
}

void sub_F93A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14)
{
  v20 = *(v14 + 656);
  if (v20)
  {
    *(v14 + 664) = v20;
    operator delete(v20);
  }

  sub_11614(v14 + 616);

  sub_11694(v16 + 248);
  sub_11694(v17);
  sub_34CFC(a10);
  sub_11694(v14 + 312);

  TUI::Evaluation::DynamicCache::~DynamicCache((v14 + 64));
  v19 = *(v14 + 56);
  if (v19)
  {
    sub_11420(v19);
  }

  _Unwind_Resume(a1);
}

void sub_F9510(uint64_t a1)
{
  *&v2 = a1;
  DWORD2(v2) = 0;
  sub_1067A0(&v2, 0x100uLL);
  if (*(a1 + 88))
  {
    v2 = 0u;
    v3 = 0u;
    v4 = 1065353216;
    sub_8BFC8(a1 + 64, &v2);
    sub_11694(&v2);
  }

  *&v2 = a1 + 32;
  DWORD2(v2) = 0;
  sub_1067A0(&v2, 0x100uLL);
  if (*(a1 + 128))
  {
    v2 = 0u;
    v3 = 0u;
    v4 = 1065353216;
    sub_106850(a1 + 104, &v2);
    sub_34CFC(&v2);
  }
}

void TUI::Evaluation::Context::lookupConstant(TUI::Evaluation::Context *this@<X0>, unsigned int a2@<0:W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  [*(this + 67) recordEvent:14];
  *a3 = 0;
  *(a3 + 8) = 0;
  if (v6 == 1 || [*(this + 73) hasExtendedNS:v6])
  {
    v7 = *(this + 70);
    *(this + 74) |= sub_F976C(a2, v7);
    v8 = *(this + 73);
    if (v8)
    {
      [v8 lookupName:a2 symtab:v7];
      *a3 = v15;
      *(a3 + 8) = v16;
      *(a3 + 16) = v17;
    }
  }

  else
  {
    [*(this + 67) recordEvent:14];
    v9 = (*(**this + 8))(*this, a2);
    if (v10 == -1)
    {
      v14 = TUI::Symbol::Tab::string(*(this + 70), a2);
      TUI::Evaluation::Context::reportError(this, 1007, v14);
    }

    else
    {
      v11 = (*(*v9 + 32))(v9);
      *a3 = *v11;
      v12 = *(v11 + 8);
      v13 = *(v11 + 16);
      *(a3 + 8) = v12;
      *(a3 + 16) = v13;
    }
  }
}

uint64_t sub_F976C(int a1, uint64_t a2)
{
  if (a1 != 1)
  {
    return 32;
  }

  v2 = *(a2 + 40);
  v3 = (*(a2 + 48) - v2) >> 1;
  v4 = v3 < 0xA ? 0xFFFF : v2[9];
  if (v4 == HIWORD(a1))
  {
    return 32;
  }

  if (v3 < 0xB)
  {
    v6 = 0xFFFF;
  }

  else
  {
    v6 = v2[10];
  }

  if (v6 == HIWORD(a1))
  {
    return 4;
  }

  v7 = v3 < 0xC ? 0xFFFF : v2[11];
  if (v7 == HIWORD(a1))
  {
    return 4;
  }

  if (v3 < 0xE)
  {
    v8 = 0xFFFF;
  }

  else
  {
    v8 = v2[13];
  }

  if (v8 == HIWORD(a1))
  {
    return 8;
  }

  if (v3 < 0xD)
  {
    v9 = 0xFFFF;
  }

  else
  {
    v9 = v2[12];
  }

  if (v9 == HIWORD(a1))
  {
    return 1;
  }

  v10 = v3 < 0x5A ? 0xFFFF : v2[89];
  if (v10 == HIWORD(a1))
  {
    return 1;
  }

  v11 = v3 < 0x72 ? 0xFFFF : v2[113];
  if (v11 == HIWORD(a1))
  {
    return 1;
  }

  v12 = v3 < 0x73 ? 0xFFFF : v2[114];
  if (v12 == HIWORD(a1))
  {
    return 1;
  }

  v13 = v3 < 0x74 ? 0xFFFF : v2[115];
  if (v13 == HIWORD(a1))
  {
    return 1;
  }

  if (v3 < 0xF)
  {
    v14 = 0xFFFF;
  }

  else
  {
    v14 = v2[14];
  }

  if (v14 == HIWORD(a1))
  {
    return 8;
  }

  if (v3 < 0x1E)
  {
    v15 = 0xFFFF;
  }

  else
  {
    v15 = v2[29];
  }

  if (v15 == HIWORD(a1))
  {
    return 16;
  }

  if (v3 < 0x60)
  {
    v16 = 0xFFFF;
  }

  else
  {
    v16 = v2[95];
  }

  if (v16 == HIWORD(a1))
  {
    return 32;
  }

  v17 = v3 < 0x2B ? 0xFFFF : v2[42];
  if (v17 == HIWORD(a1))
  {
    return 32;
  }

  v18 = v3 < 0x32 ? 0xFFFF : v2[49];
  if (v18 == HIWORD(a1))
  {
    return 32;
  }

  if (v3 < 0x33)
  {
    v19 = 0xFFFF;
  }

  else
  {
    v19 = v2[50];
  }

  if (v19 == HIWORD(a1))
  {
    return 16;
  }

  v20 = v3 < 0x3B ? 0xFFFF : v2[58];
  if (v20 == HIWORD(a1))
  {
    return 32;
  }

  v21 = v3 < 0x57 ? 0xFFFF : v2[86];
  if (v21 == HIWORD(a1))
  {
    return 32;
  }

  if (v3 < 0x6F)
  {
    v22 = 0xFFFF;
  }

  else
  {
    v22 = v2[110];
  }

  return 16 * (v22 == HIWORD(a1));
}

void TUI::Evaluation::Context::reportError(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 552) == 1)
  {
    v6 = objc_opt_new();
    v7 = v6;
    if (v5)
    {
      [v6 setObject:v5 forKeyedSubscript:@"TUIErrorInfoKey"];
    }

    if (*(a1 + 664) != *(a1 + 656))
    {
      v8 = *(a1 + 576);
      v9 = [[NSMutableArray alloc] initWithCapacity:(*(a1 + 664) - *(a1 + 656)) >> 2];
      v10 = *(a1 + 656);
      v11 = *(a1 + 664);
      while (v10 != v11)
      {
        v12 = *v10;
        if (*(v8 + 17) > v12 >> 12 && (v13 = (*(v8 + 16) + 8 * (v12 >> 12))) != 0)
        {
          v14 = *v13;
          v15 = *(v13 + 1) << 32;
          v16 = v14 << 16;
        }

        else
        {
          v15 = 0xFFFFFFFF00000000;
          v16 = 4294901760;
        }

        v24 = v15 | v16 | v12 & 0xFFF;
        v17 = TUI::Package::Location::Entry::description(&v24, v8);
        [v9 addObject:v17];

        ++v10;
      }

      v18 = [v9 copy];

      [v7 setObject:v18 forKeyedSubscript:@"TUIErrorLocationsKey"];
    }

    v19 = *(a1 + 680);
    if (!v19)
    {
      v20 = objc_opt_new();
      v21 = *(a1 + 680);
      *(a1 + 680) = v20;

      v19 = *(a1 + 680);
    }

    if ([v7 count])
    {
      v22 = v7;
    }

    else
    {
      v22 = 0;
    }

    v23 = [NSError errorWithDomain:@"TUIErrorDomain" code:a2 userInfo:v22];
    [v19 addObject:v23];
  }
}

uint64_t TUI::Evaluation::Context::lookupBinding(id *this, Entry a2)
{
  [this[67] recordEvent:13];
  v3 = ***this;

  return v3();
}

id TUI::Evaluation::Context::objectForBinding(id *this, unsigned int a2)
{
  v3 = a2;
  [this[67] recordEvent:13];
  v4 = (***this)(*this, v3);
  if (v5 == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = *((*(*v4 + 16))(v4) + 32);
  }

  return v6;
}

uint64_t TUI::Evaluation::Context::lookupStyle(id *this, Entry a2)
{
  [this[67] recordEvent:16];
  v3 = *(**this + 24);

  return v3();
}

uint64_t TUI::Evaluation::Context::lookupDefinedElement(id *this, Entry a2)
{
  [this[67] recordEvent:15];
  v3 = *(**this + 40);

  return v3();
}

uint64_t TUI::Evaluation::Context::lookupNamedElement(id *this, Entry a2)
{
  [this[67] recordEvent:15];
  v3 = *(**this + 48);

  return v3();
}

uint64_t TUI::Evaluation::Context::pushBinding(TUI::Evaluation::Context *this, Entry a2, objc_object *a3)
{
  v6 = a3;
  v7 = a2;
  v8 = -65536;
  TUI::Evaluation::Enumerator::State::State(v12, v8, v7);
  objc_storeStrong(&v13, a3);
  TUI::Evaluation::Enumerator::State::State(v11, v12);
  v9 = (**(*this + 8))(*this + 8, HIDWORD(v11[0]), v11);
  TUI::Evaluation::Enumerator::State::~State(v11);
  TUI::Evaluation::Enumerator::State::~State(v12);

  return v9;
}

void sub_F9F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15)
{
  TUI::Evaluation::Enumerator::State::~State(&a9);
  TUI::Evaluation::Enumerator::State::~State(&a15);

  _Unwind_Resume(a1);
}

uint64_t TUI::Evaluation::Context::enumeratorStateForBinding(TUI::Evaluation::Context *this, unsigned int a2)
{
  v2 = (***this)(*this, a2);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = *(*v2 + 16);

  return v4();
}

BOOL TUI::Evaluation::Context::isDefined(id *this, uint64_t a2)
{
  v2 = a2;
  if (HIDWORD(a2) == 2)
  {
    (*(**this + 48))();
    return v7 != -1;
  }

  if (HIDWORD(a2) == 1)
  {
    (***this)();
    return v7 != -1;
  }

  if (HIDWORD(a2))
  {
    return 0;
  }

  if (a2 != 1 && ![this[73] hasExtendedNS:?])
  {
    (*(**this + 8))(*this, v2);
    return v7 != -1;
  }

  v4 = this[70];
  this[74] = (this[74] | sub_F976C(v2, v4));
  v5 = this[73];
  if (!v5)
  {
    return 0;
  }

  [v5 lookupName:v2 symtab:v4];
  v6 = v9 != 0;

  return v6;
}

void TUI::Evaluation::Context::evaluateParams(TUI::Evaluation::Context *a1, unint64_t a2, unint64_t a3)
{
  TUI::Evaluation::Context::evaluateParams(a1, a3);

  TUI::Evaluation::Context::evaluateParams(a1, a2);
}

void TUI::Evaluation::Context::evaluateParams(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 != 0xFFFFFFFFLL)
  {
    v3 = HIDWORD(a2);
    if (HIDWORD(a2))
    {
      v5 = 8 * a2;
      do
      {
        v6 = *(a1 + 576);
        if (*(v6 + 168) > v2 && (v7 = *(v6 + 160), v5 + v7))
        {
          v8 = v7 + v5;
          v9 = *(v7 + v5);
          v10 = v9 & 0xFFF;
          v11 = (v8 + 4);
          v12 = *(v8 + 2) << 16;
          v13 = (v9 << 20) & 0xF00000000;
        }

        else
        {
          v10 = 0;
          v13 = 0;
          v12 = 4294901760;
          v11 = &TUIValueNil;
        }

        v14 = *v11;
        v15 = v10 | v13 | v12;
        v16 = v14;
        TUI::Evaluation::Context::pushArgument(a1, &v15);
        v5 += 8;
        ++v2;
        --v3;
      }

      while (v3);
    }
  }
}

void TUI::Evaluation::Context::evaluateParams(TUI::Evaluation::Context *this, unint64_t a2)
{
  v3 = a2;
  if (a2 != 0xFFFFFFFFLL)
  {
    v4 = HIDWORD(a2);
    if (HIDWORD(a2))
    {
      v6 = 8 * a2;
      do
      {
        v7 = *(this + 72);
        if (*(v7 + 200) > v3 && (v8 = *(v7 + 192), v6 + v8))
        {
          v9 = v8 + v6;
          v10 = *(v8 + v6);
          v11 = v10 & 0xFFF;
          v12 = (v10 >> 12) & 7;
          v13 = v10 >> 15;
          v14 = (v9 + 4);
          v15 = *(v9 + 2) << 16;
          v16 = v12 << 32;
        }

        else
        {
          v11 = 0;
          v13 = 0;
          v16 = 0;
          v15 = 4294901760;
          v14 = &TUIValueNil;
        }

        v17 = *v14;
        v18 = v15 | v11;
        v20[0] = v15 | v11 | v16;
        v20[1] = v13 | (v17 << 32);
        if (v13 && !TUI::Evaluation::Context::isDefined(this, v15 | v11 | v16))
        {
          if (TUIValueNotNil(v17))
          {
            TUI::Evaluation::Context::pushParam(this, v20, v17);
          }

          else
          {
            v2 = v2 & 0xFFFFFFFF00000000 | v18 & 0xFFFFFFFFFFFF7FFFLL;
            v19 = TUI::Symbol::Tab::string(*(this + 70), v2);
            TUI::Evaluation::Context::reportError(this, 1018, v19);
          }
        }

        v6 += 8;
        ++v3;
        --v4;
      }

      while (v4);
    }
  }
}

void TUI::Evaluation::Context::pushArgument(TUI::Instruction::Evaluation **this, const Entry *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  switch(v5)
  {
    case 2u:
      TUI::Instruction::Evaluation::evaluate(&v20, this[1], a2[2]);
      v7 = TUI::Evaluation::ResolvedValue::elementValue(&v20, this);

      if (v7)
      {
        v9 = [(objc_object *)v7 parsedElement];

        if (v9)
        {
          v10 = *a2;
          [(objc_object *)v7 closureAndCapture];
          v20 = [(objc_object *)v7 parsedElement];
          LODWORD(v21) = TUIElementNodeNil;
          v11 = v20;
          TUI::Evaluation::Context::pushNamedElement(this, v10, v18, &v20);

          v12 = v19;
          if (!v19)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v13 = [(objc_object *)v7 ref];
          v14 = *a2;
          (*(*v13 + 112))(v16);
          v15 = [(objc_object *)v7 node];
          v20 = 0;
          LODWORD(v21) = v15;
          TUI::Evaluation::Context::pushNamedElement(this, v14, v16, &v20);

          v12 = v17;
          if (!v17)
          {
            goto LABEL_12;
          }
        }

        sub_11420(v12);
      }

LABEL_12:

      return;
    case 1u:
      TUI::Instruction::Evaluation::evaluate(&v20, this[1], a2[2]);
      v7 = TUI::Evaluation::ResolvedValue::objectValue(&v20, this);

      v8 = *a2;
      TUI::Evaluation::Context::pushBinding(this, v8, v7);
      goto LABEL_12;
    case 0u:
      v6 = *a2;

      TUI::Evaluation::Context::pushConstant(this, v6, v4);
      break;
  }
}

void sub_FA61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a12)
  {
    sub_11420(a12);
  }

  _Unwind_Resume(a1);
}

void TUI::Evaluation::Context::pushParam(TUI::Instruction::Evaluation **a1, unsigned int *a2, TUI::Instruction::Decoder *a3)
{
  v5 = a2[1];
  switch(v5)
  {
    case 2u:
      TUI::Instruction::Evaluation::evaluate(&v18, a1[1], a3);
      v7 = TUI::Evaluation::ResolvedValue::elementValue(&v18, a1);

      v9 = [(objc_object *)v7 parsedElement];

      if (v9)
      {
        v10 = *a2;
        v11 = TUIClosureNil;
        v18 = [(objc_object *)v7 parsedElement];
        LODWORD(v19) = TUIElementNodeNil;
        v12 = v18;
        TUI::Evaluation::Context::pushNamedElement(a1, v10, v11, &v18);
      }

      else
      {
        v13 = [(objc_object *)v7 ref];
        v14 = *a2;
        (*(*v13 + 112))(v16);
        v15 = [(objc_object *)v7 node];
        v18 = 0;
        LODWORD(v19) = v15;
        TUI::Evaluation::Context::pushNamedElement(a1, v14, v16, &v18);

        if (v17)
        {
          sub_11420(v17);
        }
      }

      goto LABEL_12;
    case 1u:
      TUI::Instruction::Evaluation::evaluate(&v18, a1[1], a3);
      v7 = TUI::Evaluation::ResolvedValue::objectValue(&v18, a1);

      v8 = *a2;
      TUI::Evaluation::Context::pushBinding(a1, v8, v7);
LABEL_12:

      return;
    case 0u:
      v6 = *a2;

      TUI::Evaluation::Context::pushConstant(a1, v6, a3);
      break;
  }
}

void sub_FA868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12)
{
  if (a11)
  {
    sub_11420(a11);
  }

  _Unwind_Resume(a1);
}

void TUI::Evaluation::Context::pushConstant(TUI::Instruction::Evaluation **a1, unsigned int a2, TUI::Instruction::Decoder *a3)
{
  TUI::Instruction::Evaluation::evaluate(v5, a1[1], a3);
  (*(*(*a1 + 1) + 8))(*a1 + 8, a2, v5);
}

void TUI::Evaluation::Context::pushNamedElement(void *a1, unsigned int a2, int *a3, uint64_t a4)
{
  v4 = *a1 + 8;
  v6 = *a3;
  v5 = *(a3 + 2);
  v7 = *(a3 + 1);
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 56))(v4, a2, a4, &v6);
  if (v8)
  {
    sub_11420(v8);
  }
}

void sub_FA9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_11420(a12);
  }

  _Unwind_Resume(exception_object);
}

void TUI::Evaluation::Context::pushNamedElement(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *a1;
  (*(**a1 + 112))(v7, *a1, a3);
  (*(*(v6 + 8) + 56))(v6 + 8, a2, a4, v7);
  if (v8)
  {
    sub_11420(v8);
  }
}

void sub_FAAAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_11420(a12);
  }

  _Unwind_Resume(exception_object);
}

void TUI::Evaluation::Context::resolve(uint64_t a1@<X0>, TUI::Instruction::Decoder *a2@<X1>, uint64_t a3@<X8>)
{
  if (TUIConditionIsNil(a2))
  {
    *a3 = 12;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
  }

  else
  {
    v6 = *(a1 + 8);

    TUI::Instruction::Evaluation::evaluate(a3, v6, a2);
  }
}

uint64_t TUI::Evaluation::Context::pushFunction(uint64_t a1, int a2)
{
  result = TUIDefinitionNotNil(a2);
  if (result)
  {
    v4 = *(*(*a1 + 8) + 16);

    return v4();
  }

  return result;
}