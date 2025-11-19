void sub_1384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_13A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_16;
  }

  if (WeakRetained[8])
  {
    v3 = FCUILogModule;
    if (os_log_type_enabled(FCUILogModule, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2[8];
      LODWORD(v10) = 138543362;
      *(&v10 + 4) = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Deactivating active activity: %{public}@", &v10, 0xCu);
    }

    v5 = 0;
    goto LABEL_12;
  }

  v6 = WeakRetained[9];
  if (v6)
  {
    v5 = v6;
    v7 = FCUILogModule;
    if (!os_log_type_enabled(FCUILogModule, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    LODWORD(v10) = 138543362;
    *(&v10 + 4) = v5;
    v8 = "Activating previously active activity: %{public}@";
  }

  else
  {
    v5 = WeakRetained[10];
    v7 = FCUILogModule;
    if (!os_log_type_enabled(FCUILogModule, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    LODWORD(v10) = 138543362;
    *(&v10 + 4) = v5;
    v8 = "Activating suggested activity: %{public}@";
  }

  _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, v8, &v10, 0xCu);
LABEL_12:
  [v2[1] setActivity:v5 active:v5 != 0 reason:{@"Control center activity suggestion button", v10}];
  if (*(v2 + 178) == 1 && v5 == v2[10])
  {
    v9 = [v2[1] suggestedActivityFeedbackReceiver];
    [v9 userDidAcceptSuggestedActivity:v5 location:0];
  }

LABEL_16:
}

void sub_1C4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1C70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[8];
    if (!v4)
    {
      v4 = WeakRetained[10];
    }

    v5 = v4;
    if (*(v3 + 177) == 1)
    {
      v6 = *(a1 + 32);
      BSRectWithSize();
      [v6 _activityPickerExpandedFrameForBounds:?];
      v50 = v8;
      v51 = v7;
      v49 = v9;
      v11 = v10;
      v12 = [v3[2] superview];
      v13 = [v3[6] view];
      v14 = [v13 superview];
      [v12 convertRect:v14 toView:{*(v3 + 12), *(v3 + 13), *(v3 + 14), *(v3 + 15)}];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v58 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
      minimum = v58.minimum;
      maximum = v58.maximum;
      preferred = v58.preferred;
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_2014;
      v55[3] = &unk_C348;
      v55[4] = v3;
      v57[1] = v51;
      v57[2] = v50;
      v57[3] = v49;
      v57[4] = v11;
      v57[5] = v16;
      v57[6] = v18;
      v57[7] = v20;
      v57[8] = v22;
      v26 = &v56;
      v56 = v5;
      v27 = v57;
      v57[0] = *(a1 + 40);
      v28 = v55;
      *&v29 = minimum;
      *&v30 = maximum;
      *&v31 = preferred;
    }

    else
    {
      v32 = [v3[2] superview];
      v33 = [v3[6] view];
      v34 = [v33 superview];
      [v32 convertRect:v34 toView:{*(v3 + 12), *(v3 + 13), *(v3 + 14), *(v3 + 15)}];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v59 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
      v43 = v59.minimum;
      v44 = v59.maximum;
      v45 = v59.preferred;
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_20DC;
      v52[3] = &unk_C370;
      v52[4] = v3;
      v54[1] = v36;
      v54[2] = v38;
      v54[3] = v40;
      v54[4] = v42;
      v26 = &v53;
      v53 = v5;
      v27 = v54;
      v54[0] = *(a1 + 40);
      v28 = v52;
      *&v29 = v43;
      *&v30 = v44;
      *&v31 = v45;
    }

    [UIView _modifyAnimationsWithPreferredFrameRateRange:1703937 updateReason:v28 animations:v29, v30, v31];

    [v3 _updateBackgroundContinuousCornerRadius];
    if (*(v3 + 177))
    {
      v46 = 0.0;
    }

    else
    {
      v46 = 1.0;
    }

    [v3[2] setAlpha:v46];
    v47 = [v3[6] view];
    [v47 setHidden:0];
    if (*(v3 + 177))
    {
      v48 = 1.0;
    }

    else
    {
      v48 = 0.0;
    }

    [v47 setAlpha:v48];
  }
}

void sub_2014(uint64_t a1)
{
  [*(*(a1 + 32) + 48) setExpandedFrame:*(a1 + 40) initialFrame:0 representedActivity:*(a1 + 48) presentationStyle:*(a1 + 56) transitionCoordinator:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(*(a1 + 32) + 16);
  v11 = [v10 superview];
  [v11 convertRect:0 fromView:{v3, v5, v7, v9}];
  [v10 setFrame:?];
}

id sub_20DC(uint64_t a1)
{
  [*(*(a1 + 32) + 48) setContractedFrame:*(a1 + 40) representedActivity:0 presentationStyle:*(a1 + 48) transitionCoordinator:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 32);
  v3 = *(v2 + 2);
  v2 += 12;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];

  return [v3 setFrame:{v4, v5, v6, v7}];
}

void sub_2154(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *(WeakRetained + 23);
    if (!v2 || (v3 = v2 - 1, (*(WeakRetained + 23) = v3) == 0))
    {
      if ((*(WeakRetained + 177) & 1) == 0)
      {
        v5 = WeakRetained;
        v4 = [*(WeakRetained + 6) view];
        [v4 setHidden:1];

        WeakRetained = v5;
      }
    }
  }
}

void sub_2788(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) activeActivity];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_283C;
    v4[3] = &unk_C3E8;
    v5 = v4[4] = WeakRetained;
    v3 = v5;
    dispatch_async(&_dispatch_main_q, v4);
  }
}

void sub_2958(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) availableActivities];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 activityUniqueIdentifier];
        v9 = [v8 isEqual:*(a1 + 40)];

        if (v9)
        {
          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = sub_2ADC;
          v10[3] = &unk_C3E8;
          v10[4] = *(a1 + 48);
          v10[5] = v7;
          dispatch_async(&_dispatch_main_q, v10);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_2C04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) suggestedActivityForLocation:0];
    v4 = v3 != 0;
    if (v3)
    {
      v5 = v3;
      if (!*(a1 + 40))
      {
        v6 = [*(a1 + 32) suggestedActivityFeedbackReceiver];
        [v6 didShowSuggestedActivity:v5 location:0];
      }
    }

    else
    {
      v5 = [*(a1 + 32) defaultActivity];
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2D14;
    block[3] = &unk_C460;
    v10 = v4;
    block[4] = WeakRetained;
    v9 = v5;
    v7 = v5;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_2FD4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    if ([a1[4] count])
    {
      v3 = 0;
      do
      {
        v4 = [a1[4] objectAtIndexedSubscript:v3];
        v5 = [WeakRetained[1] activityWithIdentifier:v4];
        if (v5)
        {
          v6 = [[FCUIActivityBaubleDescription alloc] initWithActivityDescription:v5];
        }

        else
        {
          v6 = [a1[5] objectAtIndexedSubscript:v3];
        }

        v7 = v6;
        if (v6)
        {
          [a1[6] addObject:v6];
        }

        ++v3;
      }

      while (v3 < [a1[4] count]);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_3144;
    v8[3] = &unk_C4B0;
    v9 = a1[6];
    v10 = a1[7];
    dispatch_async(&_dispatch_main_q, v8);
  }
}

void sub_3144(uint64_t a1)
{
  v2 = [[FCUIActivityBaubleGroupView alloc] initWithBaubleDescriptions:*(a1 + 32) baubleGroupType:0];
  [v2 setAdjustsFontForContentSizeCategory:0];
  (*(*(a1 + 40) + 16))();
}

void sub_3550(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

id sub_3CF0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 copy];
    v4 = [v3 elements];
    v5 = [v4 copy];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [v11 keyPath];
          v13 = [v12 isEqualToString:@"fillColor"];

          if (v13)
          {
            v14 = objc_alloc_init(CAStateSetValue);
            v15 = [v11 target];
            [v14 setTarget:v15];

            v16 = [v11 keyPath];
            [v14 setKeyPath:v16];

            v17 = [UIColor fcui_colorForActivity:*(a1 + 32)];
            [v14 setValue:{objc_msgSend(v17, "CGColor")}];

            [v3 removeElement:v11];
            [v3 addElement:v14];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_4654(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 32) + 128);
  v3 = &kFCUIPackageViewStateOn;
  if (!a2)
  {
    v3 = &kFCUIPackageViewStateOff;
  }

  return [v2 setGlyphState:*v3];
}

id sub_46AC(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

void sub_49F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_4A10(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setExpanded:*(a1 + 40)];
  }
}

void sub_4BD0(uint64_t a1)
{
  v2 = [CCUIControlTemplateView alloc];
  [*(a1 + 32) frame];
  v3 = [v2 initWithFrame:?];
  [v3 setSupportsAccessibilityContentSizeCategories:1];
  [v3 setMenuAffordancePosition:0];
  [v3 setShowsMenuAffordance:1];
  [v3 setResizing:{objc_msgSend(*(a1 + 40), "isResizing")}];
  [v3 setGridSizeClass:{objc_msgSend(*(a1 + 40), "gridSizeClass")}];
  v4 = [*(a1 + 40) contentMetrics];
  [v3 setContentMetrics:v4];

  [*(a1 + 40) continuousCornerRadius];
  [v3 setContinuousCornerRadius:?];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 requiredVisualStyleCategories];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [*(*(a1 + 40) + 24) objectForKey:v10];
        [v3 setVisualStylingProvider:v11 forCategory:{objc_msgSend(v10, "integerValue")}];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *(a1 + 40);
  v13 = *(v12 + 8);
  *(v12 + 8) = v3;
  v14 = v3;

  [*(a1 + 32) addSubview:v14];
}

void sub_53A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_53BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _roundButton];

    if (!v6)
    {
      [v5 _setInitialUseView:v3];
      [v5 _setRequestingInitialUseView:0];
      [v3 setContentMode:1];
      [v5[1] setCustomGlyphView:v3];
      v7 = [v5 view];
      [v7 setNeedsLayout];

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_54D0;
      v8[3] = &unk_C320;
      v8[4] = v5;
      [UIView fcui_animateWithDefaultParameters:v8 completion:0];
    }
  }
}

id sub_54D0(uint64_t a1)
{
  v4 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_5578;
  v3[3] = &unk_C320;
  v3[4] = *(a1 + 32);
  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1703937 updateReason:v3 animations:*&v4.minimum, *&v4.maximum, *&v4.preferred];
}

void sub_5578(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}