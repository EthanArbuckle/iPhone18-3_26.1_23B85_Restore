void sub_100070A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    _AXLogWithFacility();

    objc_end_catch();
    JUMPOUT(0x1000709FCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_10007149C(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  v5 = [@"recipe_" stringByAppendingFormat:@"%lu", a3];
  v6 = *(a1 + 32);
  v7 = [v19 name];
  v8 = [SCATModernMenuItem itemWithIdentifier:v5 delegate:v6 title:v7 imageName:0 activateBehavior:0];

  v9 = [v19 menuIconIdentifier];
  LODWORD(v5) = [v9 isEqualToString:AXSwitchRecipeMenuIconIdentifierCenterTap];

  if (v5)
  {
    v10 = @"SCATIcon_recipe_tapMiddleOfScreen";
LABEL_9:
    [v8 setImageName:v10];
    goto LABEL_10;
  }

  v11 = [v19 menuIconIdentifier];
  v12 = [v11 isEqualToString:AXSwitchRecipeMenuIconIdentifierTurnPages];

  if (v12)
  {
    v10 = @"SCATIcon_action_scrollRight";
    goto LABEL_9;
  }

  v13 = [v19 menuIconIdentifier];
  v14 = [v13 isEqualToString:AXSwitchRecipeMenuIconIdentifierTapPoint];

  if (v14)
  {
    v10 = @"SCATIcon_recipe_tapPoint";
    goto LABEL_9;
  }

  v15 = [v19 menuIconIdentifier];
  v16 = [v15 isEqualToString:AXSwitchRecipeMenuIconIdentifierHoldPoint];

  if (v16)
  {
    v10 = @"SCATIcon_recipe_holdPoint";
    goto LABEL_9;
  }

  v17 = [v19 name];
  v18 = [UIImage scat_singleCharacterImageForTitle:v17 charactersInUse:*(a1 + 40)];
  [v8 setImage:v18];

LABEL_10:
  [*(a1 + 48) addObject:v8];
}

void sub_1000719A8(uint64_t a1)
{
  v2 = [*(a1 + 32) menu];
  v3 = [v2 currentSheet];
  [v3 reload];

  v4 = [*(a1 + 32) menu];
  [v4 reloadFromCurrentSheet];

  v5 = +[SCATScannerManager sharedManager];
  [v5 beginScanningWithFocusContext:0];
}

id sub_100071F3C(uint64_t a1)
{
  if ([*(a1 + 32) isInputCoalesceEnabled])
  {
    v2 = CACurrentMediaTime();
    [*(a1 + 32) timeIntervalBetweenDidSendActions];
    v4 = v3;
    result = [*(a1 + 32) timeIntervalSinceDidSendAction];
    if (v2 - v6 <= v4)
    {
      return result;
    }

    [*(a1 + 32) setTimeIntervalSinceDidSendAction:v2];
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  return [v7 _sendActionWithIdentifier:v8];
}

void sub_10007238C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1000723CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sendActionWithIdentifier:*(a1 + 32)];
}

void sub_1000734F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007351C(uint64_t a1)
{
  v2 = SWCHLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100129BE8(a1, v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShouldIgnoreActions:0];
}

void sub_100073890(uint64_t a1)
{
  [*(a1 + 32) motionTrackerErrorCode];
  v2 = AXSSHumanReadableDescriptionForMotionTrackingErrorCode();
  [*(a1 + 32) _showAlert:v2 forSource:1];
  v3 = SWCHLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Showing alert for motion tracker. Alert: %@", &v4, 0xCu);
  }

  [*(a1 + 40) dismissEyeTrackingCalibration];
}

void sub_100076748(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Block_object_dispose((v1 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1000767A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 source];
  if ([v3 hasSelectAction])
  {
    v5 = 1;
  }

  else
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v7 = [v6 firstObject];
    v5 = [v7 BOOLValue];
  }

  if ([v3 hasStepAction])
  {
    v8 = 1;
  }

  else
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v10 = [v9 lastObject];
    v8 = [v10 BOOLValue];
  }

  v11 = [NSNumber numberWithBool:v5];
  v14[0] = v11;
  v12 = [NSNumber numberWithBool:v8];
  v14[1] = v12;
  v13 = [NSArray arrayWithObjects:v14 count:2];
  [*(a1 + 32) setObject:v13 forKeyedSubscript:v4];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (v8)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if ([v4 isEqualToString:SCATSwitchSourceScreen])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

id sub_100076E30(uint64_t a1)
{
  [*(a1 + 32) _hideAlerts];
  [*(a1 + 32) _removeInputSources];
  v2 = *(a1 + 32);

  return [v2 _removeInputTimers];
}

void sub_100077564(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

id sub_1000775BC(uint64_t a1)
{
  [*(a1 + 32) setValid:1];
  [*(a1 + 32) _updateTimeIntervalBeforeSendAction];
  [*(a1 + 32) _updateIsInputHoldEnabled];
  [*(a1 + 32) _updateTimeIntervalBeforeSendRepeatAction];
  [*(a1 + 32) _updateIsInputRepeatEnabled];
  [*(a1 + 32) _updateTimeIntervalBetweenDidSendActions];
  [*(a1 + 32) _updateIsInputCoalesceEnabled];
  [*(a1 + 32) _updateInputSources];
  v2 = *(a1 + 32);

  return [v2 _setupInputTimers];
}

void sub_100077634(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_1000776BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1000776D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTimeIntervalBeforeSendAction];
}

void sub_100077714(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_10007779C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1000777B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateIsInputHoldEnabled];
}

void sub_1000777F4(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_10007787C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_100077894(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTimeIntervalBeforeSendRepeatAction];
}

void sub_1000778D4(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_10007795C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_100077974(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateIsInputRepeatEnabled];
}

void sub_1000779B4(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_100077A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_100077A54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTimeIntervalBetweenDidSendActions];
}

void sub_100077A94(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_100077B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_100077B34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateIsInputCoalesceEnabled];
}

void sub_100077B74(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_100077BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_100077C14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateInputSources];
}

void sub_100077C54(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_100077CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_100077CF4(uint64_t a1)
{
  v4 = +[AXSettings sharedInstance];
  if (([v4 switchControlUseCameraForPointMode] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [WeakRetained isMotionTrackingEnabled];

    if (!v3)
    {
      return;
    }

    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 setHeadMotionTrackingEnabled:0];
  }
}

void sub_100077DA0(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_100077E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_100077E40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isMotionTrackingEnabled];

  if (v3)
  {
    v7 = +[AXSettings sharedInstance];
    v4 = [v7 switchControlCameraPointPickerMode];
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 motionTrackerInputSource];
    [v6 setMotionTrackingMode:v4];
  }
}

void sub_100077EF8(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_100077F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_100077F98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isMotionTrackingEnabled];

  if (v3)
  {
    v8 = +[AXSettings sharedInstance];
    [v8 switchControlCameraPointPickerSensitivity];
    v5 = v4;
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 motionTrackerInputSource];
    [v7 setSensitivity:v5];
  }
}

void sub_10007805C(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_1000780E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1000780FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isMotionTrackingEnabled];

  if (v3)
  {
    v8 = +[AXSettings sharedInstance];
    [v8 switchControlCameraPointPickerMovementToleranceInJoystickMode];
    v5 = v4;
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 motionTrackerInputSource];
    [v7 setJoystickModeMovementThreshold:v5];
  }
}

void sub_1000781C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isMotionTrackingEnabled];

  if (v3)
  {
    v7 = +[AXSettings sharedInstance];
    v4 = [v7 assistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints];
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 motionTrackerInputSource];
    [v6 setShouldShowUncalibratedPoints:v4];
  }
}

id sub_100078278(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 performSelector:"_updateMotionTrackingForOneness" withObject:0 afterDelay:0.0];
  }

  return result;
}

id sub_10007850C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_100078768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100078780(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [v8 source];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    if (!*(a1 + 40) || (v7 = [v8 isEnabled], v7 == objc_msgSend(*(a1 + 40), "BOOLValue")))
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

void sub_10007A698(uint64_t a1)
{
  v2 = [*(a1 + 32) menu];
  [v2 didTransitionToSheet:*(a1 + 40)];
}

void sub_10007A93C(id a1, SCATMenuSheetViewController *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  [(SCATMenuSheetViewController *)v4 willMoveToParentViewController:0];
  [(SCATMenuSheetViewController *)v4 removeFromParentViewController];
}

BOOL sub_10007A984(uint64_t a1, void *a2)
{
  v3 = [a2 sheet];
  v4 = v3 == *(a1 + 32);

  return v4;
}

BOOL sub_10007AB08(uint64_t a1, void *a2)
{
  v3 = [a2 sheet];
  v4 = v3 == *(a1 + 32);

  return v4;
}

void sub_10007AE98(uint64_t a1)
{
  v2 = [*(a1 + 32) menu];
  [v2 didTransitionToSheet:*(a1 + 40)];
}

int64_t sub_10007C598(id a1, NSIndexPath *a2, NSIndexPath *a3)
{
  v4 = a3;
  v5 = [(NSIndexPath *)a2 item];
  v6 = [(NSIndexPath *)v4 item];

  v7 = -1;
  if (v5 >= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

id sub_10007C5F4(id a1, SCATMenuItemCell *a2, unint64_t a3)
{
  v3 = [(SCATMenuItemCell *)a2 menuItem];
  v4 = [v3 scatElement];

  return v4;
}

id sub_10007CB4C(id a1, SCATMenuItemCell *a2, unint64_t a3)
{
  v3 = [(SCATMenuItemCell *)a2 menuItem];
  v4 = [v3 scatElement];

  return v4;
}

id sub_10007CB9C(id a1, SCATMenuItemCell *a2, unint64_t a3)
{
  v3 = [(SCATMenuItemCell *)a2 menuItem];
  v4 = [v3 scatElement];

  return v4;
}

BOOL sub_10007CFA4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 menuItem];
    v5 = v4 == *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10007DAA8(void **a1, void *a2)
{
  v12 = a2;
  v3 = [v12 source];
  v4 = [v3 isEqualToString:SCATSwitchSourceScreen];

  if (v4)
  {
    if (a1[4])
    {
      v5 = objc_opt_new();
      v6 = objc_opt_new();
      SCATGetActionIdentifiersForRecipeAndSwitch(a1[4], v12, v5, v6);
      [a1[5] setObject:v5 forKeyedSubscript:@"SwitchActionTypeNormal"];
      if ([v6 action])
      {
        [a1[5] setObject:v6 forKeyedSubscript:@"SwitchActionTypeLongPress"];
      }
    }

    else
    {
      if (([v12 hasLongPressAction] & 1) != 0 || (objc_msgSend(v12, "longPressShortcutIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
      {
        v8 = objc_opt_new();
        [v8 setAction:{objc_msgSend(v12, "longPressAction")}];
        v9 = [v12 longPressShortcutIdentifier];
        [v8 setShortcutIdentifier:v9];

        [a1[5] setObject:v8 forKeyedSubscript:@"SwitchActionTypeLongPress"];
      }

      v5 = objc_opt_new();
      [v5 setAction:{objc_msgSend(v12, "action")}];
      v10 = [v12 shortcutIdentifier];
      [v5 setShortcutIdentifier:v10];

      [a1[5] setObject:v5 forKeyedSubscript:@"SwitchActionTypeNormal"];
    }

    v11 = [v12 name];
    [a1[6] setSwitchDisplayName:v11];
  }
}

void sub_10007F684(_Unwind_Exception *a1)
{
  objc_destroyWeak(v2);
  objc_destroyWeak(v1);
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_10007F6D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 scrollContainer:v3 scrollInDirection:0];
}

void sub_10007F74C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 scrollContainer:v3 scrollInDirection:1];
}

void sub_10007F7C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 scrollContainer:v3 scrollInDirection:2];
}

void sub_10007F83C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 scrollContainer:v3 scrollInDirection:3];
}

void sub_100080570(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1000805B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained clearCachedCustomizableMouse];
}

void sub_1000805F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSensitivityMultiplier];
}

id sub_100080630(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained handleEventRepresentationFromFilter:v3];

  return v5;
}

void sub_100080890(id a1, HNDEventPointerStreamData *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(HNDEventPointerStreamData *)a2 pointerStream:a3];
  [v4 invalidate];
}

void sub_100081000(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  [*(a1 + 32) creatorHIDEvent];
  v4 = BKSHIDEventGetBaseAttributes();
  if ([*(a1 + 32) creatorHIDEvent])
  {
    [*(a1 + 32) creatorHIDEvent];
    v5 = BKSHIDEventGetPointerAttributes();
  }

  else
  {
    v5 = 0;
  }

  [*(a1 + 40) setCurrentAbsoluteSystemPointerPoint:v4 withAttributes:v5 pointerAttributes:{v2, v3}];
  v6 = [v4 display];
  v7 = [v6 safeStringForKey:@"_hardwareIdentifier"];

  v8 = objc_alloc_init(HNDEvent);
  v9 = [*(a1 + 48) scrollEvent];
  if (v9)
  {
    v10 = 4;
  }

  else
  {
    v10 = 3;
  }

  [(HNDEvent *)v8 setType:v10];

  [(HNDEvent *)v8 setLocation:v2, v3];
  [(HNDEvent *)v8 setHardwareIdentifier:v7];
  v11 = v8;
  AXPerformBlockAsynchronouslyOnMainThread();
}

id sub_10008118C(uint64_t a1)
{
  [*(a1 + 32) setCurrentSystemPointerPoint:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 informDelegatesOfEvent:v3];
}

id sub_1000812C8(uint64_t a1, void *a2)
{
  v3 = [a2 hardwareIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

BOOL sub_10008130C(id a1, HNDEventPointerStreamData *a2)
{
  v2 = [(HNDEventPointerStreamData *)a2 hardwareIdentifier];
  v3 = v2 == 0;

  return v3;
}

void sub_100081990(uint64_t a1)
{
  v2 = [*(a1 + 32) pointerControllerInfo];
  [v2 pointerX];
  v3 = [*(a1 + 32) pointerControllerInfo];
  [v3 pointerAccelX];

  v4 = [*(a1 + 32) pointerControllerInfo];
  [v4 pointerY];
  v5 = [*(a1 + 32) pointerControllerInfo];
  [v5 pointerAccelY];

  [*(a1 + 32) HIDTime];
  MouseEvent = IOHIDEventCreateMouseEvent();
  v7 = [AXEventRepresentation representationWithHIDEvent:MouseEvent hidStreamIdentifier:@"AST-IOHIDFilter"];
  [*(a1 + 40) _recordAndRepostEventRepresentation:? forButtonsWithSenderID:? buttonMask:?];
  if (MouseEvent)
  {
    CFRelease(MouseEvent);
  }
}

void sub_1000822C0(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) pointerController:*(a1 + 32) didReceivePointerEvent:{*(a1 + 40), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

id sub_100082450(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

void sub_100082550(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 32) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;
  }
}

BOOL sub_1000840A4(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 validateClass:@"UIApplication" hasInstanceMethod:@"__completeAndRunAsPlugin" withFullSignature:"v", 0];
  [(AXValidationManager *)v2 validateClass:@"UIApplication" hasInstanceMethod:@"_createStatusBarWithRequestedStyle:orientation:hidden:" withFullSignature:"v", "q", "q", "B", 0];
  [(AXValidationManager *)v2 validateClass:@"UIApplication" hasInstanceMethod:@"_supportedOnLockScreen" withFullSignature:"B", 0];
  [(AXValidationManager *)v2 validateClass:@"UIScreen" hasInstanceMethod:@"_focusSystem" withFullSignature:"@", 0];

  return 1;
}

BOOL sub_100084178(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"AssistiveTouch"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"AssistiveTouch Application"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

id sub_100084884(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v1 count]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = sub_100084884(v9);
            [v3 addObject:v10];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [v9 elementRef];
              v12 = v3;
            }

            else
            {
              v12 = v3;
              v11 = v9;
            }

            [v12 addObject:{v11, v14}];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100084D30(id a1)
{
  v2 = +[UIScreen mainScreen];
  v1 = [v2 safeValueForKey:@"_focusSystem"];
  [v1 _enableWithoutFocusRestoration];
}

id SCATHardwareInputSourceAvailabilityDetailLocalizedDescription(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = @"HARDWARE_DEVICE_NOT_FOUND";
  }

  else
  {
    v1 = @"HARDWARE_NONE";
  }

  v2 = sub_100042B24(v1);

  return v2;
}

void sub_100085840(void *a1, uint64_t a2, uint64_t a3, __IOHIDDevice *a4)
{
  Current = CFRunLoopGetCurrent();
  IOHIDDeviceUnscheduleFromRunLoop(a4, Current, kCFRunLoopDefaultMode);
  v8 = a1;
  v7 = v8;
  AXPerformBlockOnMainThreadAfterDelay();
}

void sub_1000858F4(__IOHIDDevice *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (AXDeviceSupportsTadmor())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = IOHIDDeviceOpen(a1, 0);
        if (v17)
        {
          v18 = v17;
          v19 = SWCHLogCommon();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_100129E60(v18, v19);
          }
        }

        IOHIDDeviceRegisterInputValueCallback(a1, sub_100086BEC, v3);
      }
    }

LABEL_46:
    [v3 _didUpdateAvailability:1 withDetail:0];
    goto LABEL_47;
  }

  v4 = IOHIDDeviceGetProperty(a1, @"DeviceUsagePairs");
  v5 = SWCHLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v52 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Usage pairs: %@", buf, 0xCu);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (!v7)
  {

LABEL_44:
    v40 = v3;
LABEL_45:

    goto LABEL_46;
  }

  v8 = v7;
  v42 = v3;
  v9 = *v48;
LABEL_6:
  v10 = 0;
  while (1)
  {
    if (*v48 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = *(*(&v47 + 1) + 8 * v10);
    v12 = [v11 objectForKey:@"DeviceUsage"];
    v13 = [v12 intValue];

    v14 = [v11 objectForKey:@"DeviceUsagePage"];
    v15 = [v14 intValue];

    if (v15 == 9)
    {
      break;
    }

    if (v15 == 1 && v13 == 10)
    {
      break;
    }

    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v47 objects:v59 count:16];
      if (v8)
      {
        goto LABEL_6;
      }

      v3 = v42;
      goto LABEL_44;
    }
  }

  v3 = v42;
  v20 = v42;
  v21 = [IOHIDDeviceGetProperty(a1 @"IAPHIDAccessoryCategory")];
  if (v21 == 7 || IOHIDDeviceConformsTo(a1, 1u, 0xAu))
  {
    v22 = IOHIDDeviceGetProperty(a1, @"ReportDescriptor");
    v43 = 0;
    v44 = 0;
    v46 = 0;
    v45 = 0;
    [v22 getBytes:&v43 length:26];
    [v20 setAvailableButtons:BYTE5(v44)];
    v23 = SWCHLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      Property = IOHIDDeviceGetProperty(a1, @"DeviceUsagePage");
      v25 = IOHIDDeviceGetProperty(a1, @"DeviceUsage");
      v26 = IOHIDDeviceGetProperty(a1, @"Manufacturer");
      *buf = 67110402;
      *v52 = v21;
      *&v52[4] = 2112;
      *&v52[6] = Property;
      *&v52[14] = 2112;
      *&v52[16] = v25;
      v53 = 2112;
      v54 = v26;
      v55 = 1024;
      v56 = BYTE3(v44);
      v57 = 1024;
      v58 = BYTE5(v44);
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found matching device [iAP category%d]: usage page: %@ usage: %@ mfc: %@\nUsage Min %d, Usage max: %d", buf, 0x32u);
    }

    v27 = SWCHLogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = IOHIDDeviceGetProperty(a1, @"VersionNumber");
      *buf = 136315394;
      *v52 = "VersionNumber";
      *&v52[8] = 2112;
      *&v52[10] = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s -- %@", buf, 0x16u);
    }

    v29 = SWCHLogCommon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = IOHIDDeviceGetProperty(a1, @"Manufacturer");
      *buf = 136315394;
      *v52 = "Manufacturer";
      *&v52[8] = 2112;
      *&v52[10] = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s -- %@", buf, 0x16u);
    }

    v31 = SWCHLogCommon();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = IOHIDDeviceGetProperty(a1, @"Product");
      *buf = 136315394;
      *v52 = "Product";
      *&v52[8] = 2112;
      *&v52[10] = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s -- %@", buf, 0x16u);
    }

    v33 = SWCHLogCommon();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = IOHIDDeviceGetProperty(a1, @"SerialNumber");
      *buf = 136315394;
      *v52 = "SerialNumber";
      *&v52[8] = 2112;
      *&v52[10] = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s -- %@", buf, 0x16u);
    }

    [v20 setVersionNumber:{IOHIDDeviceGetProperty(a1, @"VersionNumber"}];
    [v20 setProductName:{IOHIDDeviceGetProperty(a1, @"Product"}];
    [v20 setManufacturerName:{IOHIDDeviceGetProperty(a1, @"Manufacturer"}];
    [v20 setSerialNumber:{IOHIDDeviceGetProperty(a1, @"SerialNumber"}];
    v35 = IOHIDDeviceOpen(a1, 0);
    if (v35)
    {
      v36 = v35;
      v37 = SWCHLogCommon();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_100129E60(v36, v37);
      }
    }

    IOHIDDeviceRegisterInputValueCallback(a1, sub_100086A38, v20);
    v38 = IOHIDDeviceGetProperty(a1, @"Transport");
    if ([v38 isEqualToString:@"USB"])
    {
      v39 = +[SCATScannerManager sharedManager];
      [v39 handleUSBMFiDeviceConnected];
    }

    goto LABEL_45;
  }

  v41 = SWCHLogCommon();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v52 = v21;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Device did not match the MFi AssistiveSwitch type: %d", buf, 8u);
  }

LABEL_47:
}

void sub_1000864BC(id *a1, void *a2)
{
  v17 = a2;
  v3 = [v17 source];
  v4 = [a1[4] switchSource];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a1[4] switchKeyForSwitch:v17]);
    v7 = [a1[5] objectForKeyedSubscript:v6];
    if (!v7)
    {
      v7 = [[NSMutableDictionary alloc] initWithCapacity:2];
      [a1[5] setObject:v7 forKeyedSubscript:v6];
    }

    if (a1[6])
    {
      v8 = objc_opt_new();
      v9 = objc_opt_new();
      SCATGetActionIdentifiersForRecipeAndSwitch(a1[6], v17, v8, v9);
      [v7 setObject:v8 forKeyedSubscript:@"SwitchActionTypeNormal"];
      if (v9)
      {
        [v7 setObject:v9 forKeyedSubscript:@"SwitchActionTypeLongPress"];
      }
    }

    else
    {
      if (([v17 hasLongPressAction] & 1) != 0 || (objc_msgSend(v17, "longPressShortcutIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
      {
        v11 = objc_opt_new();
        [v11 setAction:{objc_msgSend(v17, "longPressAction")}];
        v12 = [v17 longPressShortcutIdentifier];
        [v11 setShortcutIdentifier:v12];

        [v7 setObject:v11 forKeyedSubscript:@"SwitchActionTypeLongPress"];
      }

      v8 = objc_opt_new();
      [v8 setAction:{objc_msgSend(v17, "action")}];
      v13 = [v17 shortcutIdentifier];
      [v8 setShortcutIdentifier:v13];

      [v7 setObject:v8 forKeyedSubscript:@"SwitchActionTypeNormal"];
    }

    v14 = [v17 uuid];
    v15 = [v14 UUIDString];
    [a1[7] setObject:v15 forKeyedSubscript:v6];

    v16 = [v17 name];
    [a1[8] setObject:v16 forKeyedSubscript:v6];
  }
}

void sub_10008692C(uint64_t a1)
{
  v2 = [*(a1 + 32) hidManager];
  if (v2 && (v3 = IOHIDManagerCopyDevices(v2)) != 0)
  {
    v4 = v3;
    Count = CFSetGetCount(v3);
    CFRelease(v4);
  }

  else
  {
    Count = 0;
  }

  v6 = SWCHLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithLong:Count];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device count: %@", &v8, 0xCu);
  }

  if (!Count)
  {
    [*(a1 + 32) _didUpdateAvailability:0 withDetail:1];
  }
}

void sub_100086A38(void *a1, int a2, int a3, IOHIDValueRef value)
{
  Element = IOHIDValueGetElement(value);
  UsagePage = IOHIDElementGetUsagePage(Element);
  Usage = IOHIDElementGetUsage(Element);
  IntegerValue = IOHIDValueGetIntegerValue(value);
  v10 = SWCHLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109632;
    v17[1] = UsagePage;
    v18 = 1024;
    v19 = Usage;
    v20 = 1024;
    v21 = IntegerValue > 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MFI: UsagePage: %d, Button Number: %d, Down: %d", v17, 0x14u);
  }

  if (UsagePage == 9)
  {
    v11 = IntegerValue > 0;
    v12 = a1;
    v13 = [v12 actionForButtonNumber:Usage withType:@"SwitchActionTypeNormal"];
    v14 = [v12 actionForButtonNumber:Usage withType:@"SwitchActionTypeLongPress"];
    v15 = [v12 persistentSwitchIdentifierForButtonNumber:Usage];
    v16 = [v12 switchDisplayNameForButtonNumber:Usage];
    [v12 _handleAction:v13 longPressAction:v14 start:v11 switchIdentifier:v15 switchDisplayName:v16];
  }
}

void sub_100086BEC(void *a1, uint64_t a2, uint64_t a3, __IOHIDValue *a4)
{
  v5 = a1;
  Element = IOHIDValueGetElement(a4);
  Usage = IOHIDElementGetUsage(Element);
  UsagePage = IOHIDElementGetUsagePage(Element);
  ReportID = IOHIDElementGetReportID(Element);
  v10 = SWCHLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138543362;
    *v33 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "--- TAD: value: %{public}@", &v32, 0xCu);
  }

  v11 = SWCHLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 67240704;
    *v33 = Usage;
    *&v33[4] = 1026;
    *&v33[6] = UsagePage;
    LOWORD(v34) = 1026;
    *(&v34 + 2) = ReportID;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "TAD: usage: %{public}d, usagePage: %{public}d, reportID: %{public}d", &v32, 0x14u);
  }

  if (UsagePage == 96 && Usage == 2)
  {
    BytePtr = IOHIDValueGetBytePtr(a4);
    v13 = *BytePtr;
    v14 = BytePtr[1];
    v15 = SWCHLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 134349312;
      *v33 = v14;
      *&v33[8] = 2050;
      v34 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "TAD: signal quality: %{public}ld, buttonNumber: %{public}ld", &v32, 0x16u);
    }

    [v5 updateSignalQuality:v14 forButtonNumber:v13];
  }

  else if (UsagePage == 96 && Usage == 4)
  {
    Length = IOHIDValueGetLength(a4);
    v17 = IOHIDValueGetBytePtr(a4);
    if (Length >= 1)
    {
      v18 = *v17;
      v19 = SWCHLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 134349056;
        *v33 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "TAD: item selection %{public}ld", &v32, 0xCu);
      }

      [v5 selectItemWithIndex:v18];
    }
  }

  else
  {
    if (UsagePage != 9)
    {
      if (UsagePage == 1 && Usage == 48)
      {
        v28 = SWCHLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 138543362;
          *v33 = a4;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "TAD: X position %{public}@", &v32, 0xCu);
        }

        IntegerValue = IOHIDValueGetIntegerValue(a4);
        v30 = 0.0;
      }

      else
      {
        if (UsagePage != 1 || Usage != 49)
        {
          goto LABEL_31;
        }

        v31 = SWCHLogCommon();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 138543362;
          *v33 = a4;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "TAD: Y position %{public}@", &v32, 0xCu);
        }

        v30 = IOHIDValueGetIntegerValue(a4);
        IntegerValue = 0.0;
      }

      [v5 pointerDidMoveWith:{IntegerValue, v30}];
      goto LABEL_31;
    }

    v20 = IOHIDValueGetElement(a4);
    v21 = IOHIDElementGetUsagePage(v20);
    v22 = IOHIDElementGetUsage(v20);
    v23 = IOHIDValueGetIntegerValue(a4);
    v24 = SWCHLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 67240704;
      *v33 = v21;
      *&v33[4] = 1026;
      *&v33[6] = v22;
      LOWORD(v34) = 1026;
      *(&v34 + 2) = v23 > 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "TAD: UsagePage: %{public}d, Button Number: %{public}d, Down: %{public}d", &v32, 0x14u);
    }

    v25 = [v5 actionForButtonNumber:v22 withType:@"SwitchActionTypeNormal"];
    v26 = [v5 persistentSwitchIdentifierForButtonNumber:v22];
    v27 = [v5 switchDisplayNameForButtonNumber:v22];
    [v5 _handleAction:v25 longPressAction:0 start:v23 > 0 switchIdentifier:v26 switchDisplayName:v27];
  }

LABEL_31:
}

id SCATCameraInputSourceAvailabilityDetailLocalizedDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v2 = @"CAMERA_NONE";
  }

  else
  {
    v2 = *(&off_1001D5DC8 + a1 - 1);
  }

  v3 = sub_100042B24(v2);

  return v3;
}

void sub_100087D28(uint64_t a1)
{
  v2 = +[HNDHandManager sharedManager];
  v3 = [v2 mainDisplayManager];
  v4 = [v3 scannerContentView];

  [v4 addSubview:*(a1 + 32)];
  [*(a1 + 32) ax_constrainLayoutAttribute:8 asEqualToConstant:160.0];
  [*(a1 + 32) ax_constrainLayoutAttribute:2 asEqualToValueOfView:v4 withOffset:-5.0];
  [*(a1 + 32) ax_constrainLayoutAttribute:3 asEqualToValueOfView:v4 withOffset:5.0];
  [*(a1 + 32) ax_constrainLayoutAttribute:7 asEqualToConstant:120.0];
}

id sub_1000883B0(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
  }

  else
  {
    v2 = 0.0;
    v5 = 160.0;
    v4 = 120.0;
    v3 = 0.0;
  }

  [*(a1 + 32) setFrame:{v2, v3, v4, v5}];
  v6 = *(a1 + 32);
  v7 = (*(a1 + 72) & 1) == 0;

  return [v6 setHidden:v7];
}

void sub_100088850(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 source];
  v4 = [v3 isEqualToString:SCATSwitchSourceCamera];

  if (v4)
  {
    v5 = objc_opt_new();
    [v5 setAction:{objc_msgSend(v9, "action")}];
    v6 = *(a1 + 32);
    if (v6)
    {
      SCATGetActionIdentifiersForRecipeAndSwitch(v6, v9, v5, 0);
    }

    v7 = *(a1 + 40);
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 headSwitch]);
    [v7 setObject:v5 forKeyedSubscript:v8];
  }
}

void sub_100089734(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100218AF0;
  qword_100218AF0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100089880(uint64_t a1, void *a2, void *a3)
{
  if (_AXSAccessibilitySecureIntentProvider() - 1 <= 1)
  {
    v5 = ASTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AST/SC received Secure Intent Notification: %@", &v7, 0xCu);
    }

    v6 = a2;
    if ([a3 isEqualToString:@"com.apple.LocalAuthentication.intent.waiting"])
    {
      [v6 setWaitingForSecureIntent:1];
      if (([v6 cachedHasShownHint] & 1) == 0)
      {
        [v6 _showFirstTimeAlert];
      }
    }

    else if ([a3 isEqualToString:@"com.apple.LocalAuthentication.intent.not-waiting"])
    {
      [v6 setWaitingForSecureIntent:0];
    }
  }
}

void sub_100089A88(uint64_t a1)
{
  [*(a1 + 32) setCachedHasShownHint:1];
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 setBool:1 forKey:@"com.apple.assistivetouchd.has_shown_secure_intent_confirm"];
}

void sub_100089B4C(id a1)
{
  v1 = objc_alloc_init(SCATSwitchControlWorkspace);
  v2 = qword_100218B00;
  qword_100218B00 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10008A828(id a1)
{
  v1 = [[SCATAssistiveTouchServerInstance alloc] _initServer];
  v2 = qword_100218B10;
  qword_100218B10 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10008B480(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 type];
  if ([v7 isEqualToString:*(a1 + 32)])
  {
  }

  else
  {
    v8 = [v6 title];
    v9 = [v8 isEqualToString:*(a1 + 32)];

    if (!v9)
    {
      v10 = 0;
      goto LABEL_6;
    }
  }

  v10 = 1;
  *a4 = 1;
LABEL_6:

  return v10;
}

id sub_10008B83C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 type];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

void sub_10008CE10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 replayGesture:v4];
  [*(a1 + 32) _saveRecentGesture:v4];
}

void sub_1000901BC(uint64_t a1)
{
  v2 = [*(a1 + 32) _fingerController];
  [v2 startGesture:*(a1 + 40)];
}

void sub_1000902A8(uint64_t a1)
{
  v2 = [*(a1 + 32) _fingerController];
  [v2 continueWithGesture:*(a1 + 40)];
}

id sub_100090544(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) clearAllFingersAnimated:1 endPointForAnimation:{CGPointZero.x, CGPointZero.y}];
  v4 = [*(a1 + 40) keyboardSlideGestureCompletion];

  if (v4)
  {
    v5 = [*(a1 + 40) keyboardSlideGestureCompletion];
    v5[2](v5, a2);

    [*(a1 + 40) setKeyboardSlideGestureCompletion:0];
  }

  v6 = *(a1 + 40);

  return [v6 _clearLineGestureState];
}

void sub_100091A28(uint64_t a1, void *a2, uint64_t a3)
{
  v29[0] = AXDictionaryElementKeyHint;
  v4 = a2;
  v5 = [v4 hint];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1001DB590;
  }

  v30[0] = v7;
  v29[1] = AXDictionaryElementKeyIndex;
  v26 = v7;
  v27 = [NSNumber numberWithUnsignedInteger:a3];
  v30[1] = v27;
  v29[2] = AXDictionaryElementKeyIsKeyboardKey;
  v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isKeyboardKey]);
  v30[2] = v25;
  v29[3] = AXDictionaryElementKeyLabel;
  v8 = [v4 label];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1001DB590;
  }

  v30[3] = v10;
  v29[4] = AXDictionaryElementKeyLanguage;
  v24 = v10;
  v11 = [v4 language];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1001DB590;
  }

  v30[4] = v13;
  v29[5] = AXDictionaryElementKeyTraits;
  v14 = v13;
  v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 traits]);
  v30[5] = v15;
  v29[6] = AXDictionaryElementKeyTraitsDescription;
  [v4 traits];
  v16 = _AXTraitsAsString();
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_1001DB590;
  }

  v30[6] = v18;
  v29[7] = AXDictionaryElementKeyValue;
  v19 = v18;
  v20 = [v4 value];

  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = &stru_1001DB590;
  }

  v30[7] = v21;
  v22 = v21;
  v23 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:8];

  [*(a1 + 32) addObject:v23];
}

id sub_100092084(uint64_t a1)
{
  v2 = +[HNDAccessibilityManager sharedManager];
  v3 = [v2 elements];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000938A4;
  v11 = sub_1000938B4;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000938BC;
  v6[3] = &unk_1001D5F20;
  v6[4] = &v7;
  v6[5] = a1;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1000921A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100092CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100092CD4(uint64_t a1)
{
  v4 = +[AXSettings sharedInstance];
  v2 = [v4 assistiveTouchInternalOnlyHiddenNubbitModeEnabled];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _enableHiddenNubbitMode:v2];
}

void sub_100092D88(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100218B20;
  qword_100218B20 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000938A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000938BC(uint64_t a1, void *a2)
{
  v14 = a2;
  [v14 frame];
  v5 = v4;
  v7 = v6;
  [*(*(*(a1 + 32) + 8) + 40) frame];
  v8 = v5 * v7;
  v11 = v9 * v10;
  v12 = [v14 hasAllTraits:*(a1 + 40)];
  if (v8 > v11 && v12 != 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

id sub_10009507C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = *(a1 + 40) * 0.5 + *(a1 + 48);
  [*(a1 + 32) tailAngle];
  v12 = v10 * cos(v11 + 1.57079633);
  [*(a1 + 32) tailAngle];
  v14 = v10 * sin(v13 + 1.57079633);
  v33 = a3 - v14;
  v34 = a2 - v12;
  v32 = a3;
  CGPathMoveToPoint(*(a1 + 56), 0, a2 - v12, a3 - v14);
  CGPathAddLineToPoint(*(a1 + 56), 0, a4 - v12, a5 - v14);
  CGPathAddLineToPoint(*(a1 + 56), 0, a4 + v12, a5 + v14);
  v15 = a2 + v12;
  v16 = a3 + v14;
  CGPathAddLineToPoint(*(a1 + 56), 0, v15, a3 + v14);
  v17 = *(a1 + 48);
  [*(a1 + 32) tailAngle];
  v19 = v17 * cos(v18);
  v20 = *(a1 + 48);
  [*(a1 + 32) tailAngle];
  v22 = v20 * sin(v21);
  v23 = *(a1 + 40) * 0.5;
  [*(a1 + 32) tailAngle];
  v25 = v23 * cos(v24 + 1.57079633);
  v26 = *(a1 + 40) * 0.5;
  [*(a1 + 32) tailAngle];
  v28 = v26 * sin(v27 + 1.57079633);
  CGPathAddArcToPoint(*(a1 + 56), 0, v15 - v19, v16 - v22, a2 + v25 - v19, v32 + v28 - v22, *(a1 + 48));
  CGPathAddLineToPoint(*(a1 + 56), 0, a2 - v25 - v19, v32 - v28 - v22);
  CGPathAddArcToPoint(*(a1 + 56), 0, v34 - v19, v33 - v22, v34, v33, *(a1 + 48));
  CGPathCloseSubpath(*(a1 + 56));
  v29 = *(a1 + 32);
  v30 = *(a1 + 56);
  [v29 tailAngle];

  return [v29 _addGrayArrowHeadToPath:v30 tipAngle:? tipPoint:?];
}

id sub_100095354(uint64_t a1, int a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7, double a8, double a9, double a10, double a11, double a12)
{
  v24 = *(a1 + 40) * 0.5 + *(a1 + 48);
  v25 = a2 != 0;
  if (a2)
  {
    v26 = a5 - v24;
  }

  else
  {
    v26 = v24 + a5;
  }

  if (a2)
  {
    v27 = v24 + a5;
  }

  else
  {
    v27 = a5 - v24;
  }

  v28 = *(a1 + 56);
  v29 = __sincos_stret(a6);
  CGPathMoveToPoint(v28, 0, a3 + v26 * v29.__cosval, a4 + v26 * v29.__sinval);
  CGPathAddArc(*(a1 + 56), 0, a3, a4, v26, a6, a7, v25);
  v30 = *(a1 + 56);
  v53 = a7;
  v31 = __sincos_stret(a7);
  CGPathAddLineToPoint(v30, 0, a3 + v27 * v31.__cosval, a4 + v27 * v31.__sinval);
  CGPathAddArc(*(a1 + 56), 0, a3, a4, v27, a7, a6, a2 != 1);
  [*(a1 + 32) tailAngle];
  v33 = v24 * cos(v32 + 1.57079633);
  [*(a1 + 32) tailAngle];
  v35 = v24 * sin(v34 + 1.57079633);
  v36 = *(a1 + 48);
  [*(a1 + 32) tailAngle];
  v38 = v36 * cos(v37);
  v39 = *(a1 + 48);
  [*(a1 + 32) tailAngle];
  v41 = v39 * sin(v40);
  v42 = *(a1 + 40) * 0.5;
  [*(a1 + 32) tailAngle];
  v44 = v42 * cos(v43 + 1.57079633);
  v45 = *(a1 + 40) * 0.5;
  [*(a1 + 32) tailAngle];
  v47 = v45 * sin(v46 + 1.57079633);
  CGPathAddArcToPoint(*(a1 + 56), 0, a8 + v33 - v38, a9 + v35 - v41, a8 + v44 - v38, a9 + v47 - v41, *(a1 + 48));
  CGPathAddLineToPoint(*(a1 + 56), 0, a8 - v44 - v38, a9 - v47 - v41);
  CGPathAddArcToPoint(*(a1 + 56), 0, a8 - v33 - v38, a9 - v35 - v41, a8 - v33, a9 - v35, *(a1 + 48));
  CGPathCloseSubpath(*(a1 + 56));
  v48 = *(a1 + 32);
  v49 = *(a1 + 56);
  [v48 curvature];
  v51 = v53 - dbl_1001BD410[v50 < 0.0];

  return [v48 _addGrayArrowHeadToPath:v49 tipAngle:v51 tipPoint:{a11, a12}];
}

void sub_100095BFC(uint64_t a1, CGFloat a2, CGFloat a3, double a4)
{
  CGContextBeginPath(*(a1 + 32));
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = __sincos_stret(a4 + -2.35619449);
  CGContextMoveToPoint(v8, a2 + v9 * v10.__cosval, a3 + v9 * v10.__sinval);
  CGContextAddLineToPoint(*(a1 + 32), a2, a3);
  v11 = a4 + 2.35619449;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = __sincos_stret(v11);
  CGContextAddLineToPoint(v12, a2 + v13 * v14.__cosval, a3 + v13 * v14.__sinval);
  v15 = *(a1 + 32);

  CGContextStrokePath(v15);
}

uint64_t sub_100095CBC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  CGContextSetStrokeColorWithColor(*(a1 + 56), [*(a1 + 32) CGColor]);
  CGContextSetLineWidth(*(a1 + 56), *(a1 + 64));
  CGContextBeginPath(*(a1 + 56));
  CGContextMoveToPoint(*(a1 + 56), a2, a3);
  CGContextAddLineToPoint(*(a1 + 56), a4, a5);
  CGContextStrokePath(*(a1 + 56));
  v10 = *(a1 + 48);
  [*(a1 + 40) tailAngle];
  v11.n128_u64[0] = v13.n128_u64[0];
  v12 = *(v10 + 16);
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v12(v10, v13, v14, v11);
}

uint64_t sub_100095D84(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, unint64_t a17)
{
  CGContextSetStrokeColorWithColor(*(a1 + 56), [*(a1 + 32) CGColor]);
  CGContextBeginPath(*(a1 + 56));
  CGContextSetLineWidth(*(a1 + 56), *(a1 + 64));
  CGContextMoveToPoint(*(a1 + 56), a8, a9);
  CGContextAddArc(*(a1 + 56), a3, a4, a5, a6, a7, a2);
  CGContextStrokePath(*(a1 + 56));
  v26 = *(a1 + 48);
  [*(a1 + 40) curvature];
  v27.n128_f64[0] = a7 - dbl_1001BD410[v29.n128_f64[0] < 0.0];
  v28 = *(v26 + 16);
  v29.n128_u64[0] = a16;
  v30.n128_u64[0] = a17;

  return v28(v26, v29, v30, v27);
}

void sub_100096534(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, int a7)
{
  v10 = a3;
  v11 = a2;
  CGPathMoveToPoint(*(a1 + 64), 0, a2 - *(a1 + 48), a3 - *(a1 + 56));
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = a4 - v13;
  v16 = a5 - v14;
  v17 = a4 + v13;
  v18 = a5 + v14;
  if (a7)
  {
    [*(a1 + 32) arrowHeadBaseOffset];
    v32 = v10;
    v20 = v19;
    [*(a1 + 32) arrowHeadTipOffset];
    v31 = v11;
    v22 = v21;
    v23 = __sincos_stret(*(a1 + 72));
    v24 = v15 - v20 * v23.__cosval;
    v25 = v16 - v20 * v23.__sinval;
    v26 = v17 - v20 * v23.__cosval;
    v27 = a4 + v22 * v23.__cosval;
    CGPathAddLineToPoint(*(a1 + 64), 0, v24, v25);
    v28 = v18 - v20 * v23.__sinval;
    v29 = a5 + v22 * v23.__sinval;
    v11 = v31;
    v10 = v32;
    [*(a1 + 40) _addArrowHeadToPath:*(a1 + 64) baseLeftPoint:v24 baseRightPoint:v25 tipPoint:{v26, v28, v27, v29}];
  }

  else
  {
    CGPathAddLineToPoint(*(a1 + 64), 0, a4 - v13, a5 - v14);
    CGPathAddLineToPoint(*(a1 + 64), 0, v17, v18);
  }

  CGPathAddLineToPoint(*(a1 + 64), 0, v11 + *(a1 + 48), v10 + *(a1 + 56));
  v30 = *(a1 + 64);

  CGPathCloseSubpath(v30);
}

void sub_10009679C(uint64_t a1, int a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7, uint64_t a8, int a9)
{
  v17 = *(a1 + 48) * 0.5;
  v18 = a5 - v17;
  v19 = v17 + a5;
  if (a2)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  if (a2)
  {
    v21 = v19;
  }

  else
  {
    v21 = v18;
  }

  v22 = *(a1 + 56);
  v23 = __sincos_stret(a6);
  CGPathMoveToPoint(v22, 0, a3 + v20 * v23.__cosval, a4 + v20 * v23.__sinval);
  if (a9)
  {
    [*(a1 + 32) arrowHeadBaseOffset];
    v25 = v24;
    [*(a1 + 32) arrowHeadTipOffset];
    v27 = v25 / a5;
    if (a7 > a6)
    {
      v27 = -(v25 / a5);
    }

    v28 = v27 + a7;
    v29 = v26 / a5;
    if (a7 <= a6)
    {
      v29 = -v29;
    }

    v35 = v29 + a7;
    CGPathAddArc(*(a1 + 56), 0, a3, a4, v20, a6, v28, a2 != 0);
    v30 = __sincos_stret(v28);
    v31 = __sincos_stret(v35);
    [*(a1 + 40) _addArrowHeadToPath:*(a1 + 56) baseLeftPoint:a3 + v20 * v30.__cosval baseRightPoint:a4 + v20 * v30.__sinval tipPoint:{a3 + v21 * v30.__cosval, a4 + v21 * v30.__sinval, a3 + a5 * v31.__cosval, a4 + a5 * v31.__sinval}];
    a7 = v28;
  }

  else
  {
    CGPathAddArc(*(a1 + 56), 0, a3, a4, v20, a6, a7, a2 != 0);
    v32 = *(a1 + 56);
    v33 = __sincos_stret(a7);
    CGPathAddLineToPoint(v32, 0, a3 + v21 * v33.__cosval, a4 + v21 * v33.__sinval);
  }

  CGPathAddArc(*(a1 + 56), 0, a3, a4, v21, a7, a6, a2 != 1);
  v34 = *(a1 + 56);

  CGPathCloseSubpath(v34);
}

void sub_1000969CC(id a1)
{
  v1 = [UIImage imageNamed:@"cursor_blue.png"];
  v2 = qword_100218B30;
  qword_100218B30 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100096C18(id result, double a2, double a3)
{
  v3 = *(*(result + 5) + 8);
  if (*(v3 + 24))
  {
    v6 = result;
    [*(result + 4) size];
    result = [v6[4] drawAtPoint:0 blendMode:a2 - v7 * 0.5 alpha:{a3 - v8 * 0.5, (1.0 - *(*(v6[5] + 1) + 24) / (v6[6] + 1)) * 0.75}];
    v3 = *(v6[5] + 1);
    v9 = *(v3 + 24) + 1;
  }

  else
  {
    v9 = 1;
  }

  *(v3 + 24) = v9;
  return result;
}

void sub_1000970C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000970E4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained isRunning];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 _handleAXEvent:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1000972D4(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setAction:*(a1 + 56)];
  [*(a1 + 32) _handleAction:v2 longPressAction:0 start:1 switchIdentifier:*(a1 + 40) switchDisplayName:*(a1 + 48)];
  [*(a1 + 32) _handleAction:v2 longPressAction:0 start:0 switchIdentifier:*(a1 + 40) switchDisplayName:*(a1 + 48)];
}

void sub_10009AAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009AAE0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v4, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v4);
}

void sub_10009AB90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[9] = 0;
  }
}

void sub_10009ACF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10009AD18(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained isRunning];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 _handleAccessibilityEvent:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10009B4E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) name];
  v5 = [*(a1 + 48) name];
  [v2 _handleAction:v3 longPressAction:0 start:1 switchIdentifier:v4 switchDisplayName:v5];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = [*(a1 + 48) name];
  v8 = [*(a1 + 48) name];
  [v6 _handleAction:v7 longPressAction:0 start:0 switchIdentifier:v9 switchDisplayName:v8];
}

void sub_10009B7A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) name];
  v5 = [*(a1 + 48) name];
  [v2 _handleAction:v3 longPressAction:0 start:1 switchIdentifier:v4 switchDisplayName:v5];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = [*(a1 + 48) name];
  v8 = [*(a1 + 48) name];
  [v6 _handleAction:v7 longPressAction:0 start:0 switchIdentifier:v9 switchDisplayName:v8];
}

id sub_10009B98C(uint64_t a1)
{
  v4[0] = @"activated";
  v4[1] = @"name";
  v1 = *(a1 + 32);
  v5[0] = &__kCFBooleanTrue;
  v5[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

void sub_10009BB10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) name];
  v5 = [*(a1 + 48) name];
  [v2 _handleAction:v3 longPressAction:0 start:1 switchIdentifier:v4 switchDisplayName:v5];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = [*(a1 + 48) name];
  v8 = [*(a1 + 48) name];
  [v6 _handleAction:v7 longPressAction:0 start:0 switchIdentifier:v9 switchDisplayName:v8];
}

void sub_10009BCD4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) name];
  v5 = [*(a1 + 48) name];
  [v2 _handleAction:v3 longPressAction:0 start:1 switchIdentifier:v4 switchDisplayName:v5];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = [*(a1 + 48) name];
  v8 = [*(a1 + 48) name];
  [v6 _handleAction:v7 longPressAction:0 start:0 switchIdentifier:v9 switchDisplayName:v8];
}

void sub_10009BEB8(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 source];
  if (([v3 isEqualToString:SCATSwitchSourceAccessibility] & 1) == 0)
  {
    v4 = [v12 source];
    if (([v4 isEqualToString:SCATSwitchSourceBackTap] & 1) == 0)
    {
      v5 = [v12 source];
      if (![v5 isEqualToString:SCATSwitchSourceSound])
      {
        v10 = [v12 source];
        v11 = [v10 isEqualToString:SCATSwitchSourceHandGestures];

        if ((v11 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_7;
      }
    }
  }

LABEL_7:
  v6 = [SCATActionItem fromSwitch:v12 longPress:0];
  v7 = *(a1 + 32);
  if (v7)
  {
    SCATGetActionIdentifiersForRecipeAndSwitch(v7, v12, v6, 0);
  }

  v8 = *(a1 + 40);
  v9 = [v12 name];
  [v8 setObject:v6 forKeyedSubscript:v9];

LABEL_10:
}

id sub_10009CFA4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) screenPoint];
  [v12 CGPointValue];
  v17.x = v13;
  v17.y = v14;
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  if (CGRectContainsPoint(v18, v17))
  {
    v15 = [v3 isVisible];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

BOOL sub_10009DEA8(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1000A0954(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = [(SCATModernMenuSheet *)[SCATModernMenuDropConfirmationSheet alloc] initWithMenu:v2];
  [(SCATMenu *)v2 pushSheet:v3];
}

void sub_1000A2DFC(id a1, SCATMenu *a2)
{
  v7 = a2;
  v2 = [(SCATMenu *)v7 element];

  v3 = +[SCATScannerManager sharedManager];
  if (v2)
  {
    v4 = [(SCATMenu *)v7 element];
    v5 = [v3 activateElement:v4];

    if (v5)
    {
      goto LABEL_6;
    }

    v3 = +[SCATScannerManager sharedManager];
    v6 = [(SCATMenu *)v7 element];
    [v3 selectElement:v6];
  }

  else
  {
    v6 = [(SCATMenu *)v7 pointPicker];
    [v6 pickedPoint];
    [v3 selectElementAtPoint:?];
  }

LABEL_6:
  [(SCATMenu *)v7 setDidActivateElement:1];
  _AXSSetSwitchControlKeyboardContinuousPathEnabled();
}

void sub_1000A2F00(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = [[SCATModernMenuScrollSheet alloc] initWithMenu:v2];
  [(SCATMenu *)v2 pushSheet:v3];
}

void sub_1000A2F6C(id a1, SCATMenu *a2)
{
  v3 = a2;
  if ((sub_1000424B4() & 1) == 0)
  {
    v2 = +[AXPISystemActionHelper sharedInstance];
    [v2 activateHomeButton];
  }

  [(SCATMenu *)v3 didPressScreenChangingButton];
}

void sub_1000A2FE0(id a1, SCATMenu *a2)
{
  v2 = +[SCATScannerManager sharedManager];
  [v2 calibrateEyeTracking];
}

void sub_1000A3028(uint64_t a1)
{
  v1 = [*(a1 + 32) _typingCandidates];
  v3 = [v1 lastObject];

  if (v3)
  {
    v2 = +[SCATScannerManager sharedManager];
    [v2 activateElement:v3];
  }
}

void sub_1000A30A8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) _typingCandidates];
  if ([v3 count])
  {
    v4 = [v5 delegate];
    [v4 menu:v5 showTypingCandidates:v3];
  }
}

void sub_1000A3128(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = [(SCATMenu *)v2 delegate];
  v4 = [v3 gesturesSheetForMenu:v2];

  [(SCATMenu *)v2 pushSheet:v4];
}

void sub_1000A3198(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = [SCATModernMenuSimpleSheet alloc];
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 switchControlDeviceMenuItems];
  v6 = [(SCATModernMenuSimpleSheet *)v3 initWithMenu:v2 menuItemDictionaryArray:v5];

  [(SCATMenu *)v2 pushSheet:v6];
}

void sub_1000A3240(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = [SCATModernMenuSimpleSheet alloc];
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 switchControlSettingsMenuItems];
  v6 = [(SCATModernMenuSimpleSheet *)v3 initWithMenu:v2 menuItemDictionaryArray:v5];

  [(SCATMenu *)v2 pushSheet:v6];
}

void sub_1000A32E8(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = [SCATModernMenuSimpleSheet alloc];
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 switchControlMediaControlsMenuItems];
  v6 = [(SCATModernMenuSimpleSheet *)v3 initWithMenu:v2 menuItemDictionaryArray:v5];

  [(SCATMenu *)v2 pushSheet:v6];
}

void sub_1000A3390(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = [(SCATModernMenuSheet *)[SCATMenuSiriShorcutsSheet alloc] initWithMenu:v2];
  [(SCATMenu *)v2 pushSheet:v3];
}

void sub_1000A33FC(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = [[SCATModernMenuRecipesSheet alloc] initWithMenu:v2];
  [(SCATMenu *)v2 pushSheet:v3];
}

void sub_1000A3478(id a1, SCATMenu *a2)
{
  v2 = a2;
  v4 = [(SCATMenu *)v2 delegate];
  v3 = [(SCATMenu *)v2 element];
  [v4 menu:v2 showAlternateKeysForKey:v3];
}

void sub_1000A34EC(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = [[SCATModernMenuEditingSheet alloc] initWithMenu:v2];
  [(SCATMenu *)v2 pushSheet:v3];
}

void sub_1000A3558(id a1, SCATMenu *a2)
{
  v5 = a2;
  v2 = [(SCATMenu *)v5 element];
  v3 = [v2 scatIsAXElement];

  if (v3)
  {
    v4 = [(SCATMenu *)v5 element];
    [v4 zoomIn];
  }
}

void sub_1000A35CC(id a1, SCATMenu *a2)
{
  v5 = a2;
  v2 = [(SCATMenu *)v5 element];
  v3 = [v2 scatIsAXElement];

  if (v3)
  {
    v4 = [(SCATMenu *)v5 element];
    [v4 zoomOut];
  }
}

void sub_1000A364C(id a1, SCATMenu *a2)
{
  v2 = [(SCATMenu *)a2 keyboardApplication];
  [v2 scatPerformAction:2049];
}

void sub_1000A3694(id a1, SCATMenu *a2)
{
  v2 = a2;
  [(SCATMenu *)v2 setShouldNotResetPointPickerRefinement:1];
  v3 = [(SCATMenu *)v2 pointPicker];

  [v3 refineSelectedPoint];
}

void sub_1000A3708(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = [(SCATMenu *)v2 delegate];
  [v3 menu:v2 setItemMenuState:1];
}

void sub_1000A3764(id a1, SCATMenu *a2)
{
  v2 = +[AXElement systemWideElement];
  [v2 systemPressTVMenuButton];
}

void sub_1000A37AC(id a1, SCATMenu *a2)
{
  v2 = +[SCATScannerManager sharedManager];
  [v2 switchCurrentDisplayContext];
}

void sub_1000A37F4(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = [(SCATMenu *)v2 delegate];
  v4 = [v3 itemMenuStateForMenu:v2] < 2;

  v5 = [(SCATMenu *)v2 delegate];
  [v5 menu:v2 setItemMenuState:2 * v4];
}

void sub_1000A3880(uint64_t a1, void *a2)
{
  v4 = [a2 element];
  v3 = [*(a1 + 32) substringFromIndex:{objc_msgSend(@"customAction_", "length")}];
  [v4 scatPerformAction:2021 withValue:v3];
}

void sub_1000A3904(id a1, SCATMenu *a2)
{
  v2 = +[SCATScannerManager sharedManager];
  [v2 cancelDrag];
}

void sub_1000A394C(id a1, SCATMenu *a2)
{
  v3 = a2;
  if (sub_1000425F8())
  {
    v2 = +[AXPISystemActionHelper sharedInstance];
    [v2 toggleWatchRemoteScreen];
  }

  [(SCATMenu *)v3 didPressScreenChangingButton];
}

void sub_1000A39B8(id a1, SCATMenu *a2)
{
  v2 = a2;
  _AXSSetSwitchControlKeyboardContinuousPathEnabled();
  v4 = v2;
  v3 = v2;
  AXPerformBlockOnMainThreadAfterDelay();
}

void sub_1000A3A58(uint64_t a1)
{
  v4 = +[SCATScannerManager sharedManager];
  v2 = [v4 gestureProvider];
  v3 = [*(a1 + 32) gestureSheet];
  [v2 didChooseContinuousSlideGesture:v3 completion:&stru_1001D6578];
}

void sub_1000A3AF8(id a1, SCATMenu *a2)
{
  v2 = a2;
  _AXSSetSwitchControlKeyboardContinuousPathEnabled();
  v6 = +[SCATScannerManager sharedManager];
  v3 = [v6 gestureProvider];
  v4 = [(SCATMenu *)v2 gestureSheet];
  v5 = [(SCATMenu *)v2 element];

  [v3 didChooseSlideGesture:v4 startElement:v5 completion:0];
}

void sub_1000A3BAC(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = [[SCATModernMenuProfilesSheet alloc] initWithMenu:v2];
  [(SCATMenu *)v2 pushSheet:v3];
}

BOOL sub_1000A3DC0(id a1, SCATModernMenuItem *a2)
{
  v4 = a2;
  v2 = v4;
  AXPerformBlockAsynchronouslyOnMainThread();

  return 1;
}

void sub_1000A3E50(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 menu];
  v4 = [v3 keyboardApplication];
  v5 = [v4 uiElement];
  v6 = [v5 BOOLWithAXAttribute:3010];

  if (v6)
  {
    v7 = +[SCATScannerManager sharedManager];
    v8 = [v7 activeScannerDriver];
    [v8 freezeScanning];

    v9 = @"STOP_DICTATION";
  }

  else
  {
    v9 = @"START_DICTATION";
  }

  v10 = sub_100042B24(v9);
  [*(a1 + 32) setTitle:v10];

  [*(a1 + 32) setAllowsDwellScanningToAbortAfterTimeout:v6];
  v13 = [*(a1 + 32) delegate];
  v11 = [v13 menu];
  v12 = [v11 menuVisualProvider];
  [v12 updateModernMenuItem:*(a1 + 32)];
}

uint64_t sub_1000A3F90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v8 = 0;
  v3 = a2;
  [v2 _title:&v8 imageForNavigationItem:&v7];
  v4 = v8;
  v5 = v7;
  [v3 setTitle:v4];
  [v3 setImageName:v5];

  return 1;
}

uint64_t sub_1000A401C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v8 = 0;
  v3 = a2;
  [v2 _title:&v8 imageForAlternateNavigationItem:&v7];
  v4 = v8;
  v5 = v7;
  [v3 setTitle:v4];
  [v3 setImageName:v5];

  return 1;
}

uint64_t sub_1000A40A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v8 = 0;
  v3 = a2;
  [v2 _title:&v8 imageForEyeTrackingNavigationItem:&v7];
  v4 = v8;
  v5 = v7;
  [v3 setTitle:v4];
  [v3 setImageName:v5];

  return 1;
}

void sub_1000A574C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [SCATDragMenuItem alloc];
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v8 = [(SCATDragMenuItem *)v6 initWithTitle:v7 element:*(a1 + 40) activationToken:v5 delegate:*(a1 + 48)];

  [*(a1 + 56) addObject:v8];
}

void sub_1000A5960(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = 0.0;
  v10 = 0.0;
  v5 = [a2 objectForKeyedSubscript:AXInteractionLocationDescriptorFixedScreenSpacePointKey];

  AXValueGetValue(v5, kAXValueTypeCGPoint, &v9);
  v6 = [SCATDropMenuItem alloc];
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v8 = [(SCATDropMenuItem *)v6 initWithTitle:v7 fixedSpaceScreenPoint:*(a1 + 40) delegate:*(a1 + 48) menu:v9, v10];

  [*(a1 + 56) addObject:v8];
}

void sub_1000A5CC0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_1000A603C(uint64_t a1)
{
  [*(a1 + 32) _handleFireActionAndResumeAutoscanning:*(a1 + 40)];
  v1 = +[SCATScannerManager sharedManager];
  v2 = [v1 isUsingPointMode];

  if (v2)
  {
    v3 = +[SCATScannerManager sharedManager];
    [v3 beginScanningWithFocusContext:0];
  }
}

void sub_1000A79DC(id a1)
{
  v1 = +[AXElement systemWideElement];
  [v1 systemPressTVUpButton];
}

void sub_1000A7A24(id a1)
{
  v1 = +[AXElement systemWideElement];
  [v1 systemPressTVDownButton];
}

void sub_1000A7A6C(id a1)
{
  v1 = +[AXElement systemWideElement];
  [v1 systemPressTVLeftButton];
}

void sub_1000A7AB4(id a1)
{
  v1 = +[AXElement systemWideElement];
  [v1 systemPressTVRightButton];
}

uint64_t sub_1000A8484(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v10 isDescendantOfView:{v5, v12}])
        {
          v7 = 1;
          goto LABEL_12;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v7;
}

id sub_1000A8954()
{
  if (qword_100218B68 != -1)
  {
    sub_10012AB18();
  }

  v1 = qword_100218B60;

  return v1;
}

void sub_1000A8998(id a1)
{
  v1 = ASTLogMouse();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Cleaning up shared virtual mouse device", v3, 2u);
  }

  [qword_100218B48 unload];
  v2 = qword_100218B48;
  qword_100218B48 = 0;
}

id sub_1000A8E18(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setDelegate:?];
  [*(*(a1 + 32) + 32) setCancelHandler:&stru_1001D6908];
  [*(*(a1 + 32) + 32) setDispatchQueue:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 32);

  return [v2 activate];
}

void sub_1000A8E7C(id a1)
{
  v1 = ASTLogMouse();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "HID virtual event service cancelled!", v2, 2u);
  }
}

id sub_1000A9088(uint64_t a1)
{
  result = [*(a1 + 32) type];
  if (result <= 2)
  {
    if (result == 1)
    {
      v11 = qword_100218B48;
      v4 = [*(a1 + 32) buttonNumber];
      v5 = v11;
      v6 = 1;
      goto LABEL_10;
    }

    if (result == 2)
    {
      v3 = qword_100218B48;
      v4 = [*(a1 + 32) buttonNumber];
      v5 = v3;
      v6 = 0;
LABEL_10:
      result = [v5 _handleButtonNumber:v4 isDown:v6];
      goto LABEL_11;
    }

LABEL_8:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    return result;
  }

  if (result == 3)
  {
    if ([*(a1 + 32) isEyeTrackingEvent])
    {
      v12 = qword_100218B48;
      [*(a1 + 32) deltaX];
      v14 = v13;
      [*(a1 + 32) deltaY];
      result = [v12 _handleEyeTrackingMovementWithDelta:{v14, v15}];
    }

    else
    {
      v16 = [*(a1 + 32) isHeadTrackingEvent];
      v17 = qword_100218B48;
      v18 = *(a1 + 32);
      if (v16)
      {
        [v18 location];
        result = [v17 _handleHeadTrackingMovementWithAbsolutePoint:?];
      }

      else
      {
        [v18 deltaX];
        v20 = v19;
        [*(a1 + 32) deltaY];
        result = [v17 _handleMovementWithDelta:{v20, v21}];
      }
    }

    goto LABEL_11;
  }

  if (result != 4)
  {
    goto LABEL_8;
  }

  v7 = qword_100218B48;
  [*(a1 + 32) deltaX];
  v9 = v8;
  [*(a1 + 32) deltaY];
  result = [v7 _handleScrollWithDelta:{v9, v10}];
LABEL_11:
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_1000A9A5C(void *a1)
{
  v1 = qword_100218B78;
  v2 = a1;
  if (v1 != -1)
  {
    sub_10012AC74();
  }

  v3 = [qword_100218B70 containsObject:v2];

  return v3;
}

void sub_1000AA260(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.accessibility.ASTVirtualHIDMouse", v3);
  v2 = qword_100218B60;
  qword_100218B60 = v1;
}

void sub_1000AA2C4(id a1)
{
  v1 = [NSSet setWithObjects:@"DeviceOpenedByEventSystem", @"LastActivityTimestamp", @"BatchInterval", @"PreserveTimestamp", 0];
  v2 = qword_100218B70;
  qword_100218B70 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000AA34C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_1000AC050(id a1)
{
  v1 = [NSSet setWithObjects:AXSSwitchControlMenuItemElementSpecificActions, AXSSwitchControlMenuItemATVRemoteMenu, 0];
  v2 = qword_100218B80;
  qword_100218B80 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1000AD39C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uiElement];
  v6 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];

  [v5 performAXAction:2065 withValue:v6];
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v7 _handleCompletedCutCopyPasteOperationForTextElement:v8];
}

void sub_1000AE520(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000AE554(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained getTrackpadColor];
  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setColor:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 updateFrameLayer];
}

void sub_1000AE5E0(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchVirtualTrackpadBorderOpacity];
  v4 = v3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setOpacity:v4];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 updateFrameLayer];
}

void sub_1000AE674(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchVirtualTrackpadBorderWidth];
  v4 = v3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setWidth:v4];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 updateTrackpadBorderWidth];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 updateResizeIcon];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 updateFrameLayer];
}

void sub_1000AF594(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000AF5C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained getTrackpadColor];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setBackgroundColor:v2];
}

void sub_1000AF634(uint64_t a1)
{
  v5 = +[AXSettings sharedInstance];
  [v5 assistiveTouchVirtualTrackpadInnerOpacity];
  v3 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAlpha:v3];
}

id sub_1000B0250(uint64_t a1)
{
  [*(a1 + 32) _updateCursorDrawing];
  v2 = *(a1 + 32);

  return [v2 _resetPointer];
}

id sub_1000B028C(uint64_t a1)
{
  [*(a1 + 32) _updateCursorDrawing];
  v2 = *(a1 + 32);

  return [v2 _resetPointer];
}

void sub_1000B0510(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000B0534(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetPointer];
}

void sub_1000B1BC8(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = +[SCATScannerManager sharedManager];
  v4 = [v3 gestureProvider];
  [v4 performTap];

  v5 = [(SCATMenu *)v2 element];

  LODWORD(v2) = [v5 scatIsKeyboardKey];
  if (v2)
  {

    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void sub_1000B1C84(id a1, SCATMenu *a2)
{
  v3 = +[SCATScannerManager sharedManager];
  v2 = [v3 gestureProvider];
  [v2 performTapAndHold];
}

void sub_1000B1CE4(id a1, SCATMenu *a2)
{
  v2 = a2;
  v5 = +[SCATScannerManager sharedManager];
  v3 = [v5 gestureProvider];
  v4 = [(SCATMenu *)v2 gestureSheet];

  [v3 didChooseFlickGesture:v4];
}

void sub_1000B1D78(id a1, SCATMenu *a2)
{
  v2 = a2;
  v5 = +[SCATScannerManager sharedManager];
  v3 = [v5 gestureProvider];
  v4 = [(SCATMenu *)v2 gestureSheet];

  [v3 didChoosePanGesture:v4];
}

void sub_1000B1E0C(id a1, SCATMenu *a2)
{
  v2 = a2;
  v5 = +[SCATScannerManager sharedManager];
  v3 = [v5 gestureProvider];
  v4 = [(SCATMenu *)v2 gestureSheet];

  [v3 didChoosePinchGesture:v4];
}

void sub_1000B1EA0(id a1, SCATMenu *a2)
{
  v2 = a2;
  v5 = +[SCATScannerManager sharedManager];
  v3 = [v5 gestureProvider];
  v4 = [(SCATMenu *)v2 gestureSheet];

  [v3 didChooseDragGesture:v4];
}

void sub_1000B1F34(id a1, SCATMenu *a2)
{
  v2 = a2;
  v5 = +[SCATScannerManager sharedManager];
  v3 = [v5 gestureProvider];
  v4 = [(SCATMenu *)v2 gestureSheet];

  [v3 didChooseFingers:v4];
}

void sub_1000B1FC8(id a1, SCATMenu *a2)
{
  v2 = a2;
  v5 = +[SCATScannerManager sharedManager];
  v3 = [v5 gestureProvider];
  v4 = [(SCATMenu *)v2 gestureSheet];

  [v3 didChooseDoubleTapGesture:v4];
}

void sub_1000B205C(id a1, SCATMenu *a2)
{
  v2 = a2;
  v5 = +[SCATScannerManager sharedManager];
  v3 = [v5 gestureProvider];
  v4 = [(SCATMenu *)v2 gestureSheet];

  [v3 didChooseHoldAndDragGesture:v4];
}

void sub_1000B20F0(id a1, SCATMenu *a2)
{
  v2 = a2;
  v5 = +[SCATScannerManager sharedManager];
  v3 = [v5 gestureProvider];
  v4 = [(SCATMenu *)v2 gestureSheet];

  [v3 didChooseActiveHoldAndDragGesture:v4];
}

void sub_1000B2184(id a1, SCATMenu *a2)
{
  v2 = a2;
  v5 = +[SCATScannerManager sharedManager];
  v3 = [v5 gestureProvider];
  v4 = [(SCATMenu *)v2 gestureSheet];

  [v3 didChooseFavorites:v4];
}

void sub_1000B2218(id a1, SCATMenu *a2)
{
  v2 = a2;
  v5 = +[SCATScannerManager sharedManager];
  v3 = [v5 gestureProvider];
  v4 = [(SCATMenu *)v2 gestureSheet];

  [v3 didChooseDrawingGesture:v4];
}

void sub_1000B22AC(id a1, SCATMenu *a2)
{
  v2 = a2;
  v5 = +[SCATScannerManager sharedManager];
  v3 = [v5 gestureProvider];
  v4 = [(SCATMenu *)v2 gestureSheet];

  [v3 didChooseForceTouchGesture:v4];
}

uint64_t sub_1000B23EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SCATScannerManager sharedManager];
  v5 = [v4 gestureProvider];
  v6 = [v5 numberOfFingers];

  v7 = [*(a1 + 32) _fingerItemStringForNumberOfFingers:v6];
  [v3 setTitle:v7];

  v8 = [*(a1 + 32) _imageNameForNumberOfFingers:v6];
  [v3 setImageName:v8];

  return 1;
}

void sub_1000B3168(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  SCATGetActionIdentifiersForRecipeAndSwitch(*(a1 + 32), v9, v3, v4);
  v5 = *(a1 + 40);
  v6 = [v9 uuid];
  [v5 setObject:v3 forKeyedSubscript:v6];

  if ([v4 action])
  {
    v7 = *(a1 + 48);
    v8 = [v9 uuid];
    [v7 setObject:v4 forKeyedSubscript:v8];
  }
}

id sub_1000B3848(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 remoteSwitchIdentifier];
  v5 = [*(a1 + 32) switchIdentifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 remoteDeviceIdentifier];
    v7 = [*(a1 + 32) deviceIdentifier];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1000B54C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B54DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _activateWithActualElement:*(a1 + 32)];
}

void sub_1000B7618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B7634(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained scrollDelegate];
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 scrollViewController:v4 showVerticalScrollerForContextElement:*(a1 + 32)];
  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 verticalScroller];
  [v7 setHidden:v5 ^ 1];

  v12 = objc_loadWeakRetained((a1 + 40));
  v8 = [v12 scrollDelegate];
  v9 = objc_loadWeakRetained((a1 + 40));
  LODWORD(v4) = [v8 scrollViewController:v9 showHorizontalScrollerForContextElement:*(a1 + 32)];
  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 horizontalScroller];
  [v11 setHidden:v4 ^ 1];
}

void sub_1000BA388(uint64_t a1)
{
  if ([*(a1 + 32) shouldUpdateItemsOnOrientationChange])
  {
    [*(a1 + 32) reload];
    v2 = *(a1 + 32);
    v3 = [v2 menu];
    v4 = [v3 currentSheet];

    if (v2 == v4)
    {
      v5 = [*(a1 + 32) menu];
      [v5 reloadFromCurrentSheet];

      v6 = +[SCATScannerManager sharedManager];
      [v6 beginScanningWithFocusContext:0];
    }
  }
}

void sub_1000BB8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BB8CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[AXSettings sharedInstance];
  [v1 switchControlCameraPointPickerDwellMovementToleranceRadius];
  [WeakRetained setCachedToleranceRadius:?];
}

void sub_1000BC2FC(uint64_t a1)
{
  v2 = [*(a1 + 32) controlViewController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BC38C;
  v3[3] = &unk_1001D3750;
  v3[4] = *(a1 + 32);
  [v2 startDwellAnimationWithCompletion:v3];
}

id *sub_1000BC38C(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [result[4] delegate];
    v4 = v2[4];
    v5 = [v4 controlViewController];
    [v5 currentPoint];
    [v3 pointPicker:v4 didFinishDwellingOnPoint:?];

    v6 = v2[4];

    return [v6 cancelDwellTimer];
  }

  return result;
}

void sub_1000BC4AC(uint64_t a1)
{
  v1 = [*(a1 + 32) controlViewController];
  [v1 cancelDwellAnimation];
}

void sub_1000C01AC(id a1)
{
  v3 = +[NSNotificationCenter defaultCenter];
  v1 = +[NSOperationQueue mainQueue];
  v2 = [v3 addObserverForName:UIContentSizeCategoryDidChangeNotification object:0 queue:v1 usingBlock:&stru_1001D6E70];
}

void sub_1000C0290(id a1)
{
  v1 = [[SCATMenuItemCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v2 = qword_100218BA8;
  qword_100218BA8 = v1;

  v5 = +[NSNotificationCenter defaultCenter];
  v3 = +[NSOperationQueue mainQueue];
  v4 = [v5 addObserverForName:UIContentSizeCategoryDidChangeNotification object:0 queue:v3 usingBlock:&stru_1001D6EB0];
}

void sub_1000C0354(id a1, NSNotification *a2)
{
  v2 = [[SCATMenuItemCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v3 = qword_100218BA8;
  qword_100218BA8 = v2;

  _objc_release_x1(v2, v3);
}

void sub_1000C296C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1000C2990(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained pressedBackgroundBorderImageView];
  [v1 setAlpha:1.0];
}

void sub_1000C29EC(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C2B08;
  v4[3] = &unk_1001D3460;
  objc_copyWeak(&v5, (a1 + 32));
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000C2B64;
  v2[3] = &unk_1001D4458;
  objc_copyWeak(&v3, (a1 + 32));
  [UIView animateWithDuration:v4 animations:v2 completion:0.1];
  objc_destroyWeak(&v3);
  objc_destroyWeak(&v5);
}

void sub_1000C2AEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1000C2B08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained pressedBackgroundBorderImageView];
  [v1 setAlpha:0.0];
}

void sub_1000C2B64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsFlashing:0];
}

CGPath *sub_1000C4F9C(CGFloat a1, CGFloat a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v28.origin.x = a5;
  v28.origin.y = a6;
  v28.size.width = a7;
  v28.size.height = a8;
  if (NSIsEmptyRect(v28))
  {

    return sub_1000C5150(a1, a2, a3, a4, a9);
  }

  else
  {
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, a5 + a9, a6);
    CGPathAddArcToPoint(Mutable, 0, a5 + a7, a6, a5 + a7, a6 + a9, a9);
    CGPathAddArcToPoint(Mutable, 0, a1 + a3, a2 + a4, a1 + a3 - a9, a2 + a4, a9);
    CGPathAddArcToPoint(Mutable, 0, a1, a2 + a4, a1, a2 + a4 - a9, a9);
    CGPathAddArcToPoint(Mutable, 0, a1, a2, a1 + a9, a2, a9);
    CGPathAddArcToPoint(Mutable, 0, a5, a6 + a8, a5, a6 + a8 - a9, a9);
    CGPathAddArcToPoint(Mutable, 0, a5, a6, a5 + a9, a6, a9);
    CGPathCloseSubpath(Mutable);
    return Mutable;
  }
}

CGPath *sub_1000C5150(CGFloat a1, CGFloat a2, double a3, double a4, CGFloat a5)
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, a1 + a5, a2);
  v11 = a1 + a3;
  CGPathAddArcToPoint(Mutable, 0, v11, a2, v11, a2 + a5, a5);
  v12 = a2 + a4;
  CGPathAddArcToPoint(Mutable, 0, v11, v12, v11 - a5, v12, a5);
  CGPathAddArcToPoint(Mutable, 0, a1, v12, a1, v12 - a5, a5);
  CGPathAddArcToPoint(Mutable, 0, a1, a2, a1 + a5, a2, a5);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

CGContext *sub_1000C5248(CGFloat a1, CGFloat a2, CGFloat a3)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (!DeviceRGB)
  {
    return 0;
  }

  v7 = DeviceRGB;
  v8 = CGBitmapContextCreate(0, (a1 * a3), (a2 * a3), 8uLL, (4 * (a1 * a3)), DeviceRGB, 1u);
  CGColorSpaceRelease(v7);
  if (v8)
  {
    y = CGRectZero.origin.y;
    CGAffineTransformMakeScale(&v11, a3, a3);
    CGContextSetCTM();
    v12.origin.x = CGRectZero.origin.x;
    v12.origin.y = y;
    v12.size.width = a1;
    v12.size.height = a2;
    v13 = CGRectInset(v12, -1.0, -1.0);
    CGContextClearRect(v8, v13);
  }

  return v8;
}

void sub_1000C5330(CGContext *a1, CGColor *a2, CGColor *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat width, CGFloat a11, double a12, CGFloat a13, double a14)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v28 = a14 * 0.5;
  v47 = 1.0 / a12;
  v29 = [UIColor colorWithWhite:0.0 alpha:0.2];
  v30 = CGColorRetain([v29 CGColor]);

  v51.origin.x = a4;
  v51.origin.y = a5;
  v51.size.width = a6;
  v51.size.height = a7;
  v52 = CGRectInset(v51, v28, v28);
  y = v52.origin.y;
  height = v52.size.height;
  v43 = v52.origin.x + 0.0;
  rect = v52.size.width;
  x = a8;
  v52.origin.x = a8;
  v52.origin.y = a9;
  v52.size.width = width;
  v52.size.height = a11;
  if (CGRectIsEmpty(v52))
  {
    v42 = a11;
    v34 = y;
  }

  else
  {
    v53.origin.x = a8;
    v53.origin.y = a9;
    v53.size.width = width;
    v53.size.height = a11;
    v54 = CGRectInset(v53, v28, v28);
    x = v54.origin.x;
    a9 = v54.origin.y;
    width = v54.size.width;
    v34 = y + v54.size.height;
    v42 = v54.size.height;
    height = height - v54.size.height;
  }

  v55.origin.x = v43;
  v55.origin.y = v34;
  v55.size.width = rect;
  v55.size.height = height;
  v56 = CGRectInset(v55, v47 * 0.5 + v28, v47 * 0.5 + v28);
  if (a1)
  {
    v35 = v56.origin.x;
    v36 = v43;
    v37 = v56.origin.y;
    v44 = v56.size.width;
    v38 = v56.size.height;
    v39 = sub_1000C4F9C(v36, v34, rect, height, x, a9, width, v42, a13);
    v40 = a13 * 0.5;
    if (a13 >= 4.0)
    {
      v40 = a13;
    }

    v41 = sub_1000C4F9C(v35, v37, v44, v38, x, a9, width, v42, v40);
    CGContextSetFillColorWithColor(a1, a2);
    CGContextAddPath(a1, v39);
    CGContextFillPath(a1);
    CGContextSetStrokeColorWithColor(a1, a3);
    CGContextAddPath(a1, v39);
    CGContextSetLineWidth(a1, a14);
    CGContextStrokePath(a1);
    CGContextSetStrokeColorWithColor(a1, v30);
    CGContextAddPath(a1, v41);
    CGContextSetLineWidth(a1, v47);
    CGContextStrokePath(a1);
    if (v41)
    {
      CFRelease(v41);
    }

    if (v39)
    {
      CFRelease(v39);
    }
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (DeviceRGB)
  {

    CFRelease(DeviceRGB);
  }
}

CGContext *sub_1000C5640(CGColor *a1, CGColor *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13)
{
  result = sub_1000C5248(a5, a6, a11);
  if (result)
  {
    v29 = result;
    sub_1000C5330(result, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
    Image = CGBitmapContextCreateImage(v29);
    CFRelease(v29);
    return Image;
  }

  return result;
}

void sub_1000C576C(id a1)
{
  v1 = objc_alloc_init(SCATStyleProvider);
  v2 = qword_100218BB8;
  qword_100218BB8 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000C6518(int a1, void *a2, CFTypeRef cf1)
{
  if (CFEqual(cf1, @"com.apple.language.changed") || (result = CFEqual(cf1, @"com.apple.purplebuddy.LanguageResetReady"), result))
  {

    return [a2 performSelector:"_languageChanged:" withObject:0 afterDelay:2.0];
  }

  return result;
}

void sub_1000C6DC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1000C6DEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _assistAppValidationMode];
}

id sub_1000C6E2C(uint64_t a1)
{
  v2 = ASTLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Reached timeout for waiting for IDS message. Will stop if no activity is in progress.", v4, 2u);
  }

  return [*(a1 + 32) stopIfAllowed];
}

uint64_t sub_1000C6EA0()
{
  result = AXInPreboardScenario();
  if ((result & 1) == 0)
  {
    v1 = ASTLogCommon();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "No longer in PreBoard scenario.  Killing ourselves so we can relaunch with a proper SpringBoard server.", v2, 2u);
    }

    exit(0);
  }

  return result;
}

BOOL sub_1000C6F18(uint64_t a1)
{
  [HNDHandManager screenFrame:]_0();
  v2 = ASTLogRuntimeManager();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "Setup AST/SC runtime.", "", v8, 2u);
  }

  [HNDHandManager screenFrame:]_0();
  return v6 != CGSizeZero.height || v5 != CGSizeZero.width;
}

id sub_1000C71BC(uint64_t a1, void *a2, const void *a3)
{
  v5 = ASTLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Handling preferenced change: %@", &v7, 0xCu);
  }

  if (CFEqual(a3, kAXSAssistiveTouchEnabledNotification))
  {
    return [a2 _assistiveTouchEnabledChange];
  }

  if (CFEqual(a3, kAXSAssistiveTouchScannerEnabledNotification))
  {
    return [a2 _scannerEnabledChange];
  }

  result = CFEqual(a3, kAXSAssistiveTouchSettingsChangedNotification);
  if (result)
  {
    return [a2 _assistiveTouchSettingsChanged];
  }

  return result;
}

void sub_1000C7684(uint64_t a1)
{
  if (_AXSAssistiveTouchEnabled() || _AXSAssistiveTouchScannerEnabled())
  {
    v2 = ASTLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Not stopping, because either AssistiveTouch or Switch Control was enabled.", v4, 2u);
    }
  }

  else
  {
    v3 = ASTLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AssistiveTouch and Switch Control were both disabled. Stopping.", buf, 2u);
    }

    [*(a1 + 32) stop];
  }
}

void sub_1000C7848(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = NSStringFromSelector(v2);
  [v3 setVisualsHidden:1 forReason:v4 animated:1];

  v6 = +[HNDHandManager sharedManager];
  v5 = [v3 hardwareIdentifier];

  [v6 removeFingersToPoint:v5 onDisplay:{CGPointZero.x, CGPointZero.y}];
}

void sub_1000C7B1C(id a1)
{
  +[SCATScannerManager updateElementCacheScheme];

  AXPerformBlockAsynchronouslyOnMainThread();
}

void sub_1000C7B54(id a1)
{
  v1 = +[SCATScannerManager sharedManager];
  [v1 loadScanner];

  v2 = +[SCATScannerManager sharedManager];
  [v2 beginScanningWithFocusContext:0];
}

void sub_1000C7BC0(id a1)
{
  v1 = +[SCATScannerManager sharedManager];
  [v1 unloadScanner];
}

void sub_1000C7DEC(uint64_t a1)
{
  v2 = ASTLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received reset notification from event manager.", v4, 2u);
  }

  [*(a1 + 32) setShouldStop:1];
  v3 = [*(a1 + 32) delegate];
  [v3 stop];
}

void sub_1000C8680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000C86A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _accessibilityHandleAccessibilityEvent:v3];

  return v5;
}

void sub_1000C8924(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_100042B24(@"SOUND_ACTION_ALERT_TITLE");
  v4 = sub_100042B24(*(a1 + 40));
  [v2 showBannerWithTitle:v3 text:v4];

  v6 = +[HNDHandManager sharedManager];
  v5 = [v6 currentDisplayManager];
  [v5 activateAssistiveTouchAction:*(a1 + 48) fromButtonPress:1];
}

id sub_1000C8BE8(uint64_t a1)
{
  v2 = +[HNDHandManager sharedManager];
  [v2 systemServerConnected];

  v3 = *(a1 + 32);

  return [v3 setSystemAppReady:1];
}

void sub_1000C97B8(id a1)
{
  v1 = MGCopyAnswer();
  v2 = qword_100218BC8;
  qword_100218BC8 = v1;

  if (![qword_100218BC8 length])
  {
    _AXAssert();
  }

  if (![qword_100218BC8 length])
  {
    v3 = +[NSUUID UUID];
    v4 = [v3 UUIDString];
    v5 = [v4 copy];
    v6 = qword_100218BC8;
    qword_100218BC8 = v5;

    v7 = AXSSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10012AE40(v7);
    }
  }
}

void sub_1000C9D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C9D38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didReceiveActionWithIdentifier:*(a1 + 32) start:1 ignoreInputHold:1];
}

void sub_1000C9D90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setFallbackActionBlock:0];

  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 delegate];
  v5 = objc_loadWeakRetained((a1 + 40));
  [v4 didEndLongPressForInputSource:v5];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 _didReceiveActionWithIdentifier:*(a1 + 32) start:1 ignoreInputHold:1];
}

void SCATGetActionIdentifiersForRecipeAndSwitch(void *a1, void *a2, void *a3, void *a4)
{
  v24 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v24;
  if (!v24)
  {
    _AXAssert();
    v10 = 0;
  }

  v11 = [v10 mappings];
  v12 = [v11 count];

  if (!v12)
  {
LABEL_7:
    _AXAssert();
    v20 = 0;
    v21 = 0;
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = 0;
  v14 = 2;
  while (1)
  {
    v15 = [v24 mappings];
    v16 = [v15 objectAtIndexedSubscript:v13];

    v17 = [v16 switchUUID];
    v18 = [v7 uuid];
    v19 = [v17 isEqual:v18];

    if (v19)
    {
      break;
    }

    ++v13;
    v14 += 2;
    if (v12 == v13)
    {
      goto LABEL_7;
    }
  }

  v20 = v14 - 1;
  v21 = [v16 longPressAction];
  if (v21)
  {
    v22 = [v16 action];
    v23 = AXSwitchRecipeMappingActionAllowsLongPress();

    if (v23)
    {
      v21 = v14;
    }

    else
    {
      v21 = 0;
    }
  }

  if (v8)
  {
LABEL_8:
    [v8 setAction:v20];
  }

LABEL_9:
  if (v9)
  {
    [v9 setAction:v21];
  }
}

id SCATGetRecipeMappingIndexAndLongPressVariant(void *a1, uint64_t *a2, BOOL *a3)
{
  result = [a1 action];
  if (a2)
  {
    *a2 = (result - 1) / 2;
  }

  if (a3)
  {
    *a3 = ((result - 1) & 0x8000000000000001) == 1;
  }

  return result;
}

id sub_1000CBA38(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) center];

  return [v1 _tapSegmentAtPoint:?];
}

void sub_1000CD62C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100218BE0;
  qword_100218BE0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000CD8B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CD8E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAudioSessionProperties];
}

void sub_1000CD920(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDuckingMode];
}

void sub_1000CDD60(uint64_t a1)
{
  v2 = [*(a1 + 32) _usesAVAudioPlayer];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 soundIDsToAudioPlayer];
    v5 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (!v6)
    {
      v7 = [*(a1 + 32) _urlForSoundEffect:*(a1 + 40)];
      v21 = 0;
      v6 = [[AVAudioPlayer alloc] initWithContentsOfURL:v7 error:&v21];
      v8 = v21;
      [v6 setDelegate:*(a1 + 32)];
      if (v8)
      {
        v9 = SWCHLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10012AF1C(v8, v9);
        }
      }

      else
      {
        v9 = [*(a1 + 32) soundIDsToAudioPlayer];
        v15 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
        [v9 setObject:v6 forKeyedSubscript:v15];
      }
    }

    [*(a1 + 32) _volume];
    [v6 setVolume:?];
    [v6 play];
  }

  else
  {
    v10 = [v3 registeredSoundIDs];
    v11 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
    v6 = [v10 objectForKey:v11];

    if (v6)
    {
      [*(a1 + 32) _playSoundWithSoundID:{objc_msgSend(v6, "unsignedIntValue")}];
    }

    else
    {
      v12 = [*(a1 + 32) _urlForSoundEffect:*(a1 + 40)];
      v13 = v12;
      if (v12)
      {
        outSystemSoundID = 0;
        v14 = AudioServicesCreateSystemSoundID(v12, &outSystemSoundID);
        if (v14)
        {
          v19 = [NSNumber numberWithInt:v14];
          _AXLogWithFacility();
        }

        else
        {
          v16 = [*(a1 + 32) registeredSoundIDs];
          v17 = [NSNumber numberWithUnsignedInt:outSystemSoundID];
          v18 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
          [v16 setObject:v17 forKey:v18];

          [*(a1 + 32) _playSoundWithSoundID:outSystemSoundID];
        }
      }
    }
  }
}

void sub_1000CE098(id a1)
{
  v1 = +[NSBundle mainBundle];
  v3 = [v1 pathForResource:@"mouseclick" ofType:@"wav"];

  v2 = [NSURL fileURLWithPath:v3];
  AudioServicesCreateSystemSoundID(v2, &dword_100218BF0);
}

void sub_1000CE32C(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) registeredSoundIDs];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        AudioServicesDisposeSystemSoundID([*(*(&v9 + 1) + 8 * v6) unsignedIntValue]);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) registeredSoundIDs];
  [v7 removeAllObjects];

  v8 = [*(a1 + 32) soundIDsToAudioPlayer];
  [v8 removeAllObjects];
}

void *sub_1000CF1DC(void *result, void *a2, uint64_t a3)
{
  if (result[4] == a3)
  {
    v4 = result[5];
    v5 = [a2 integerValue];

    return [v4 _updateSoundEffect:v5 isActive:0];
  }

  return result;
}

void sub_1000CF4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CF4EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000CF504(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000D018C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000D01A8(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained unfinishedSpeechActionsWithCompletionBlocks];
  [v7 removeObject:v5];

  v8 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D0298;
  v9[3] = &unk_1001D7158;
  v10 = *(a1 + 32);
  v11 = a3;
  dispatch_async(v8, v9);
}

void sub_1000D02F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000D0350(id a1)
{
  v1 = objc_alloc_init(SCATAssistiveTouchWorkspace);
  v2 = qword_100218C00;
  qword_100218C00 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000D0CE8(id a1, SCATElement *a2, unint64_t a3, BOOL *a4)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (v5 = [(SCATElement *)v6 scatTraits], (kAXScrollableTrait & v5) != 0))
  {
    [(SCATElement *)v6 scatScrollToVisible];
    *a4 = 1;
  }
}

void sub_1000D0D74(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (v5 = [v6 scatTraits], (kAXScrollableTrait & v5) != 0))
  {
    [v6 scatScrollToVisible];
    *a4 = 1;
  }
}

void sub_1000D0F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000D0F88(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 scatDisplayId];
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

void sub_1000D123C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___SCATElement])
  {
    [v3 setParentGroup:*(a1 + 32)];
  }
}

void sub_1000D1A58(id a1)
{
  v1 = +[NSParagraphStyle defaultParagraphStyle];
  v2 = [v1 mutableCopy];

  [v2 setAlignment:1];
  [v2 setLineBreakMode:0];
  LODWORD(v3) = 0.25;
  [v2 setHyphenationFactor:v3];
  if (UIAccessibilityIsBoldTextEnabled())
  {
    [UIFont systemFontOfSize:14.0];
  }

  else
  {
    [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  }
  v4 = ;
  v7[0] = NSFontAttributeName;
  v7[1] = NSParagraphStyleAttributeName;
  v8[0] = v4;
  v8[1] = v2;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v6 = qword_100218C18;
  qword_100218C18 = v5;
}

id sub_1000D23DC(void *a1)
{
  v1 = a1;
  v2 = [v1 imageName];
  v3 = [UIImage scat_cachedMenuImageForImageName:v2];

  if (!v3)
  {
    v4 = [v1 imageName];
    v5 = [UIImage _deviceSpecificImageNamed:v4];
    v6 = +[UIColor systemWhiteColor];
    v7 = [v5 imageWithTintColor:v6 renderingMode:1];
    v3 = [v7 resizableImageWithCapInsets:1 resizingMode:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    if (!v3)
    {
      v8 = [v1 imageName];
      v3 = [UIImage _systemImageNamed:v8];
    }

    if ([v3 isSymbolImage])
    {
      +[SCATModernMenuItem imageSize];
      v10 = [UIImageSymbolConfiguration configurationWithPointSize:v9 + -20.0];
      v11 = [v3 imageWithConfiguration:v10];
      v12 = +[UIColor systemWhiteColor];
      v13 = [v11 imageWithTintColor:v12 renderingMode:1];

      v3 = v13;
    }

    if ([v1 shouldFlipForRTL] && objc_msgSend(UIApp, "userInterfaceLayoutDirection") == 1)
    {
      v14 = [v3 imageWithHorizontallyFlippedOrientation];

      v3 = v14;
    }

    v15 = [v1 imageName];
    [UIImage scat_setCachedMenuImage:v3 forImageName:v15];
  }

  return v3;
}

void sub_1000D2914(uint64_t a1)
{
  v1 = [*(a1 + 32) menu];
  [v1 hideWithCompletion:0];
}

void sub_1000D3E6C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v7 = [v2 displayContextForCursor:v4 forDisplayID:v3];
  v5 = [v7 layer];
  v6 = [v4 cursorContainerLayer];

  [v5 addSublayer:v6];
}

void sub_1000D53D4(id a1, SCATMenu *a2)
{
  v3 = [(SCATMenu *)a2 element];
  v2 = [v3 scrollableElement];
  [v2 scatPerformAction:2019];
}

void sub_1000D5434(id a1, SCATMenu *a2)
{
  v3 = [(SCATMenu *)a2 element];
  v2 = [v3 scrollableElement];
  [v2 scatPerformAction:2020];
}

void sub_1000D5494(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = +[SCATScannerManager sharedManager];
  v4 = [v3 autoscroller];

  v5 = [v8 element];
  v6 = [v5 scrollableElement];

  if (([v6 hasWebContent] & 1) != 0 || (objc_msgSend(v6, "scatSupportsAction:", 2030) & 1) == 0)
  {
    v7 = [*(a1 + 32) _fallbackAncestorForScrollToTopForMenu:v8];

    v6 = v7;
  }

  [v4 setScrollElement:v6];
  [v4 scrollToTop];
  AXPerformBlockOnMainThreadAfterDelay();
}

void sub_1000D558C(id a1)
{
  v1 = +[HNDAccessibilityManager sharedManager];
  [v1 refreshElements];
}

void sub_1000D55D4(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = +[SCATScannerManager sharedManager];
  v4 = [v3 autoscroller];

  v5 = [v9 element];
  v6 = [v5 scrollableElement];

  if (([v6 hasWebContent] & 1) != 0 || (objc_msgSend(v6, "scatSupportsAction:", 2006) & 1) == 0 && (objc_msgSend(v6, "scatSupportsAction:", 2007) & 1) == 0)
  {
    v7 = [*(a1 + 32) _fallbackAncestorForAutoscrollForMenu:v9];

    v6 = v7;
  }

  [v4 setScrollElement:v6];
  [v4 resume];
  v8 = [(SCATModernMenuSheet *)[SCATModernMenuAutoscrollSheet alloc] initWithMenu:v9];
  [v9 pushSheet:v8];
}

uint64_t sub_1000D5B78(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 menu:*(a1 + 32) showScrollViewPickerForScrollViews:*(a1 + 40) elementsToScroll:*(a1 + 48) scrollAction:*(a1 + 56)];

  return AXPerformBlockOnMainThreadAfterDelay();
}

void sub_1000D5BD8(id a1)
{
  v1 = +[SCATScannerManager sharedManager];
  [v1 beginScanningWithFocusContext:0];
}

void sub_1000D63CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

BOOL sub_1000D63F0(id a1, SCATModernMenuItem *a2, unint64_t a3)
{
  v3 = [(SCATModernMenuItem *)a2 identifier];
  v4 = [v3 isEqualToString:@"device_mute"];

  return v4;
}

id *sub_1000D6434(id *result, uint64_t a2)
{
  if (a2 == 2)
  {
    return [result[4] updateItem];
  }

  return result;
}

void sub_1000D6448(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSpringBoardActionHandlerIdentifier:v3];
}

void sub_1000D8C28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000D8C4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCameraSwitchCache];
  [WeakRetained _updateMotionTrackerExpressionConfig];
}

void sub_1000D95EC(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = [*(a1 + 32) _actionForExpression:{objc_msgSend(a2, "unsignedIntegerValue")}];
  v6 = [v9 action];
  if (v6 || ([v9 shortcutIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = +[SCATScannerManager sharedManager];
    v8 = [v7 isUsingPointMode];

    if (v6)
    {
      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if (v8)
    {
LABEL_5:
      [*(a1 + 32) _didReceiveActionWithIdentifier:v9 start:a3 ignoreInputHold:1];
    }
  }

LABEL_6:
}

void sub_1000D96C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000D972C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(*(a1 + 32) + 136) containsObject:?] & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }
}

id sub_1000D990C(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) lookAtPoint];

  return [v1 _motionTrackerInputSourceTrackedFaceAtPoint:?];
}

void sub_1000D9F00(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 motionTrackerInputSource:*(a1 + 32) didReceiveActionWithIdentifier:*(a1 + 40) start:*(a1 + 48) ignoreInputHold:*(a1 + 49)];
  }
}

void sub_1000DA384(uint64_t a1)
{
  v2 = +[SCATScannerManager sharedManager];
  v3 = [v2 isLoaded];

  if (v3)
  {
    v4 = +[SCATScannerManager sharedManager];
    v5 = [v4 pointPicker];

    if (([v5 conformsToProtocol:&OBJC_PROTOCOL___ASTUIGazePointDelegate]& 1) != 0)
    {
      v6 = *(a1 + 32);
      v5 = v5;
      v7 = [v6 mainDisplayManager];
      [v7 setGazePointManager:v5];

      v8 = [*(a1 + 32) mainDisplayManager];
      [v8 setNeedsRecalibration:*(a1 + 40)];
    }

    else
    {
      v9 = SWCHLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10012B268(v9);
      }
    }
  }

  else
  {
    v5 = SWCHLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10012B224(v5);
    }
  }
}

void sub_1000DA7A8(uint64_t a1)
{
  v2 = +[SCATScannerManager sharedManager];
  [v2 showUIContext:0];

  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 motionTrackerInputSource:*(a1 + 32) isShowingCalibrationUI:0];
  }
}

void sub_1000DA9CC(uint64_t a1)
{
  v2 = +[SCATScannerManager sharedManager];
  [v2 hideUIContext:1];

  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 motionTrackerInputSource:*(a1 + 32) isShowingCalibrationUI:1];
  }
}

Class sub_1000DB394(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_100218C30)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000DB4C0;
    v3[4] = &unk_1001D4BC0;
    v3[5] = v3;
    v4 = off_1001D7440;
    v5 = 0;
    qword_100218C30 = _sl_dlopen();
  }

  if (!qword_100218C30)
  {
    sub_10012B530(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AXUserEventTimer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10012B4B4();
  }

  qword_100218C28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000DB4C0()
{
  result = _sl_dlopen();
  qword_100218C30 = result;
  return result;
}

const __CFString *sub_1000DB534(int a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1001D7498[a1 - 1];
  }
}

void sub_1000DB5A0(id a1)
{
  v1 = objc_alloc_init(SCATFocusContext);
  v2 = qword_100218C38;
  qword_100218C38 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000DB620(id a1)
{
  v1 = objc_alloc_init(SCATFocusContext);
  v2 = qword_100218C48;
  qword_100218C48 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000DCE7C(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 switchControlSelectedProfile];
  v7 = [v14 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [@"profile_" stringByAppendingFormat:@"%lu", a3];
    v9 = *(a1 + 32);
    v10 = [v14 name];
    v11 = [SCATModernMenuItem itemWithIdentifier:v8 delegate:v9 title:v10 imageName:0 activateBehavior:0];

    v12 = [v14 name];
    v13 = [UIImage scat_singleCharacterImageForTitle:v12 charactersInUse:*(a1 + 40)];
    [v11 setImage:v13];

    [*(a1 + 48) addObject:v11];
  }
}

void sub_1000DE174(uint64_t a1)
{
  v6 = [*(a1 + 32) element];
  if ([*(a1 + 32) selectBehavior] == 4)
  {
    v2 = v6;
  }

  else
  {
    v2 = [v6 parentGroup];
  }

  v3 = v2;
  v4 = [v2 selectionPath];
  [*(a1 + 40) setCurrentSelectionPath:v4];

  objc_opt_class();
  LOBYTE(v4) = objc_opt_isKindOfClass();
  v5 = [*(a1 + 40) pointPickerView];
  [v5 setCenterPointVisible:v4 & 1];
}

void sub_1000DF00C(id a1)
{
  v1 = objc_alloc_init(SCATScannerManager);
  v2 = qword_100218C58;
  qword_100218C58 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000DF6F4(uint64_t a1)
{
  [*(a1 + 32) _setUSBRMPreferenceDisabled];
  v1 = +[AXSettings sharedInstance];
  [v1 setSwitchControlUserDidReadUSBRestrictedModeAlert:1];
}

void sub_1000E0538(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 200));
  objc_destroyWeak((v1 - 160));
  objc_destroyWeak((v1 - 120));
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_1000E05E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained cursorManager];
  [v1 updateWithFocusContext:0 animated:0 options:0];
}

void sub_1000E064C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateElementVisuals];
}

void sub_1000E068C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateElementVisuals];

  v3 = +[HNDAccessibilityManager sharedManager];
  [v3 refreshElements];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 activeElementManager];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 menu];

  if (v5 == v7)
  {
    v9 = objc_loadWeakRetained((a1 + 32));
    v8 = [v9 menu];
    [v8 updateMenuVisualsForUpdatedElementVisuals];
  }
}

void sub_1000E0788(id a1)
{
  v3 = +[AXSettings sharedInstance];
  if (([v3 switchControlUseCameraForPointMode] & 1) == 0)
  {
    v1 = +[AXSettings sharedInstance];
    v2 = [v1 assistiveTouchScanningMode];

    if (v2 != 3)
    {
      return;
    }

    v3 = +[AXSettings sharedInstance];
    [v3 setAssistiveTouchScanningMode:1];
  }
}

void sub_1000E083C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCameraPointPickerSwitchesCache];
}

void sub_1000E087C(uint64_t a1)
{
  v6 = +[AXSettings sharedInstance];
  [v6 switchControlAutoTapTimeout];
  v3 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained selectActionHandler];
  [v5 setTimeoutDuration:v3];
}

void sub_1000E0904(uint64_t a1)
{
  v2 = +[HNDAccessibilityManager sharedManager];
  [v2 groupingEnabledDidChange];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained menu];
  [v4 groupingEnabledDidChange];

  v5 = objc_loadWeakRetained((a1 + 32));
  LODWORD(v4) = [v5 isActive];

  if (v4)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 beginScanningWithFocusContext:0];
  }
}

void sub_1000E09CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateScanningStyle];

  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 inputController];
  [v3 updateWhetherSwitchConfigurationRendersDeviceUnusable];
}

void sub_1000E0A3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scanningModePreferenceDidChange];
}

void sub_1000E0A7C(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  [*(a1 + 32) setSpeechEnabled:{objc_msgSend(v2, "assistiveTouchScannerSpeechEnabled")}];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateAudioSessionState];

  v4 = +[HNDAccessibilityManager sharedManager];
  [v4 speechEnabledDidChange];

  v5 = +[HNDAccessibilityManager sharedManager];
  [v5 groupingEnabledDidChange];

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 menu];
  [v7 groupingEnabledDidChange];

  v8 = objc_loadWeakRetained((a1 + 40));
  LODWORD(v7) = [v8 isActive];

  if (v7)
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    [v9 beginScanningWithFocusContext:0];
  }
}

void sub_1000E0B98(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  [*(a1 + 32) setSoundEffectsEnabled:{objc_msgSend(v2, "assistiveTouchScannerSoundEnabled")}];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateAudioSessionState];
}

void sub_1000E0C18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[AXSettings sharedInstance];
  [WeakRetained setHighlightFocusContext:{objc_msgSend(v1, "assistiveTouchBubbleModeEnabled")}];
}

void sub_1000E1E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E1EA8(uint64_t a1)
{
  objc_copyWeak(&v3, (a1 + 48));
  v2 = *(a1 + 40);
  AXPerformBlockAsynchronouslyOnMainThread();

  objc_destroyWeak(&v3);
}

uint64_t sub_1000E1F60(uint64_t a1)
{
  v2 = [*(a1 + 32) _driverForScannerState];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v2 outputManager:WeakRetained didSpeakFocusContext:0];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_1000E2C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000E2C30(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 displayID];
  result = [*(a1 + 32) lockedToDisplayID];
  if (v6 == result)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_1000E2E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E2E40(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 displayID] != *(*(*(a1 + 32) + 8) + 24))
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = [v6 displayID];
  }
}

void sub_1000E328C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) cursorManager];
    [v2 updateWithFocusContext:0 animated:0 options:0];
  }

  v3 = [*(a1 + 32) activeElementManager];
  [v3 redisplayIfNeeded:0];

  v4 = [*(a1 + 32) activeElementManager];

  if (v4)
  {
    v5 = [*(a1 + 32) activeScannerDriver];

    if (!v5)
    {
      v6 = [*(a1 + 32) _driverForScannerState];
      [*(a1 + 32) setActiveScannerDriver:v6];
    }

    v7 = *(a1 + 49);
    v8 = [*(a1 + 32) activeScannerDriver];
    v9 = *(a1 + 40);
    v13 = v8;
    if (v7 == 1)
    {
      [v8 beginScanningWithFocusContext:v9];
    }

    else
    {
      [v8 continueScanningWithFocusContext:v9];
    }
  }

  else
  {
    if ((*(a1 + 49) & 1) == 0)
    {
      _AXAssert();
    }

    v10 = [*(a1 + 32) beginScanningTimer];
    [v10 cancel];

    v11 = [*(a1 + 32) beginScanningTimer];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000E3464;
    v14[3] = &unk_1001D36E8;
    v12 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v12;
    [v11 afterDelay:v14 processBlock:1.0];
  }
}

void sub_1000E3C00(id a1)
{
  v1 = +[AXSpringBoardServer server];
  [v1 requestDismissJindo];
}

BOOL sub_1000E57F0(id a1, AXSwitch *a2, BOOL *a3)
{
  v3 = a2;
  v4 = [(AXSwitch *)v3 source];
  v5 = [v4 isEqualToString:SCATSwitchSourceRemote];

  v6 = [(AXSwitch *)v3 remoteSwitchIdentifier];

  v7 = [(AXSwitch *)v3 remoteDeviceIdentifier];

  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v7 && v8;
}

void sub_1000E5C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E5C38(id *a1)
{
  v2 = a1[4];
  objc_copyWeak(&v4, a1 + 6);
  v3 = a1[5];
  AXPerformBlockAsynchronouslyOnMainThread();

  objc_destroyWeak(&v4);
}

void sub_1000E5CFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v2 outputManager:WeakRetained didSpeakFocusContext:*(a1 + 40)];
}

void sub_1000E6D0C(uint64_t a1)
{
  v1 = [*(a1 + 32) axManager];
  [v1 refreshElements];
}

void sub_1000E726C(uint64_t a1)
{
  v2 = [*(a1 + 32) menu];
  [v2 nativeFocusElementDidChange:*(a1 + 40)];

  v3 = [*(a1 + 32) activeScannerDriver];
  [v3 tickleIdleTimer];
}

void sub_1000E7E8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [SCATActionItem fromAction:103];
  [v1 inputController:v2 didReceiveAction:v3];
}

void sub_1000E8340(id a1, NSString *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = AXSSLogForCategory();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sysdiagnose completed. File path: %{public}@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10012B790(v5, v7);
  }
}

uint64_t sub_1000EB6C0(uint64_t result, _DWORD *a2, uint64_t a3)
{
  v3 = -5;
  if (a2 && a3 == 4)
  {
    v3 = 0;
    **(result + 40) = *a2;
  }

  *(*(*(result + 32) + 8) + 24) = v3;
  return result;
}

void sub_1000EB7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000EB818(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMIDIEvent:v12 device:v11 entity:v10 endpoint:v9];
}

void sub_1000EB99C(uint64_t a1)
{
  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) _switchKeyForEvent:*(a1 + 40)]);
  if ([v13 integerValue] <= 0)
  {
    _AXAssert();
  }

  v2 = [*(a1 + 32) persistentSwitchIdentifiers];
  v3 = [v2 objectForKeyedSubscript:v13];

  v4 = [*(a1 + 32) switchDisplayNames];
  v5 = [v4 objectForKeyedSubscript:v13];

  v6 = [*(a1 + 32) actions];
  v7 = [v6 objectForKeyedSubscript:v13];

  if (!v7)
  {
    v11 = [*(a1 + 32) actions];
    v12 = *(a1 + 40);
    v10 = v13;
    _AXAssert();
  }

  v8 = [v7 objectForKeyedSubscript:{@"SwitchActionTypeNormal", v10, v11, v12}];
  v9 = [v7 objectForKeyedSubscript:@"SwitchActionTypeLongPress"];
  [*(a1 + 32) _handleAction:v8 longPressAction:v9 start:objc_msgSend(*(a1 + 40) switchIdentifier:"isDownEvent") switchDisplayName:{v3, v5}];
}

void sub_1000EECF8(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void sub_1000EEDC0(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

void sub_1000F0F14(id a1, SCATMenu *a2)
{
  v3 = a2;
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 activateSiri];

  [(SCATMenu *)v3 didPressScreenChangingButton];
}

void sub_1000F0F7C(id a1, SCATMenu *a2)
{
  v3 = a2;
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 activateTypeToSiri];

  [(SCATMenu *)v3 didPressScreenChangingButton];
}

void sub_1000F0FE4(id a1, SCATMenu *a2)
{
  v3 = a2;
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 activateVoiceControl];

  [(SCATMenu *)v3 didPressScreenChangingButton];
}

void sub_1000F104C(id a1, SCATMenu *a2)
{
  v3 = a2;
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 toggleAppSwitcher];

  [(SCATMenu *)v3 didPressScreenChangingButton];
}

void sub_1000F10B4(id a1, SCATMenu *a2)
{
  v3 = a2;
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 toggleNotificationCenter];

  [(SCATMenu *)v3 didPressScreenChangingButton];
}

void sub_1000F111C(id a1, SCATMenu *a2)
{
  v3 = a2;
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 toggleControlCenter];

  [(SCATMenu *)v3 didPressScreenChangingButton];
}

void sub_1000F1184(id a1, SCATMenu *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 activateLockButton];
}

void sub_1000F11CC(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = [(SCATModernMenuSheet *)[SCATModernMenuRotateItemsSheet alloc] initWithMenu:v2];
  [(SCATMenu *)v2 pushSheet:v3];
}

void sub_1000F1238(id a1, SCATMenu *a2)
{
  HasStaccato = AXDeviceHasStaccato();
  v3 = +[AXPISystemActionHelper sharedInstance];
  if (HasStaccato)
  {
    [v3 pressStaccato];
  }

  else
  {
    [v3 toggleRingerSwitch:!sub_100042494()];
  }
}

void sub_1000F12AC(id a1, SCATMenu *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 decreaseVolume];
}

void sub_1000F12F4(id a1, SCATMenu *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 increaseVolume];
}

void sub_1000F133C(id a1, SCATMenu *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 activateTripleClick];
}

void sub_1000F1384(id a1, SCATMenu *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 shake];
}

void sub_1000F13E0(id a1)
{
  v1 = +[AXPISystemActionHelper sharedInstance];
  [v1 takeScreenshot];
}

void sub_1000F1428(id a1, SCATMenu *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 adjustSystemZoom:0];
}

void sub_1000F1474(id a1, SCATMenu *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 adjustSystemZoom:1];
}

void sub_1000F14C0(uint64_t a1, void *a2)
{
  v2 = a2;
  [objc_opt_class() _handleSpeakThis:v2];
}

void sub_1000F1514(id a1, SCATMenu *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 toggleSpotlight];
}

void sub_1000F155C(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = [SCATModernMenuControllableDevicesSheet alloc];
  v4 = [(SCATMenu *)v2 delegate];
  v5 = [v4 interDeviceCommunicatorForMenu:v2];
  v6 = [(SCATModernMenuControllableDevicesSheet *)v3 initWithMenu:v2 interDeviceCommunicator:v5];

  [(SCATMenu *)v2 pushSheet:v6];
}

void sub_1000F1604(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = [(SCATMenu *)v2 delegate];
  [v3 returnControlToForwarderDevice:v2];
}

void sub_1000F165C(id a1, SCATMenu *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 activateSOSMode];
}

void sub_1000F16A4(uint64_t a1, void *a2)
{
  v2 = a2;
  [objc_opt_class() _handleSysdiagnose:v2];
}

void sub_1000F16F8(id a1, SCATMenu *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 rebootDevice];
}

void sub_1000F1740(id a1, SCATMenu *a2)
{
  v3 = a2;
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 toggleDock];

  [(SCATMenu *)v3 didPressScreenChangingButton];
}

void sub_1000F17A8(id a1, SCATMenu *a2)
{
  v3 = a2;
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 armApplePay];

  [(SCATMenu *)v3 didPressScreenChangingButton];
}

void sub_1000F1810(id a1, SCATMenu *a2)
{
  v2 = a2;
  [LAContext notifyEvent:1];
  [(SCATMenu *)v2 didPressScreenChangingButton];
}

void sub_1000F186C(id a1, SCATMenu *a2)
{
  v2 = _AXSCommandAndControlEnabled() == 0;

  __AXSCommandAndControlSetEnabled(v2);
}

void sub_1000F189C(id a1, SCATMenu *a2)
{
  v2 = +[AXSpringBoardServer server];
  [v2 showAlert:9 withHandler:&stru_1001D7B28];
}

void sub_1000F18F0(id a1, int64_t a2)
{
  if (!a2)
  {
    _AXSAssistiveTouchScannerSetEnabled();

    _AXSAssistiveTouchSetEnabled();
  }
}

void sub_1000F1928(id a1, SCATMenu *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 pressCameraButton];
}

void sub_1000F1970(id a1, SCATMenu *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 lightPressCameraButton];
}

void sub_1000F19B8(id a1, SCATMenu *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 doubleLightPressCameraButton];
}

void sub_1000F1A00(id a1, SCATMenu *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 openVisualIntelligence];
}

void sub_1000F1A48(id a1, SCATMenu *a2)
{
  v2 = +[AXSBMenuBarManager sharedInstance];
  [v2 toggleMenuBar];
}

void sub_1000F1B88(id a1, NSError *a2)
{
  if (a2)
  {
    _AXLogWithFacility();
  }
}

void sub_1000F1C94(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 menu:*(a1 + 32) showSysdiagnoseDisplayString:v4];
}

uint64_t sub_1000F1E40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100042494();
  if (AXDeviceHasStaccato())
  {
    v5 = sub_100042C9C(@"ACTION_BUTTON");
    [v3 setTitle:v5];

    v6 = @"square.3.layers.3d";
  }

  else
  {
    v7 = [*(a1 + 32) _stringForRingerOn:v4];
    [v3 setTitle:v7];

    if (v4)
    {
      v6 = @"SCATIcon_device_mute";
    }

    else
    {
      v6 = @"SCATIcon_device_unmute";
    }
  }

  [v3 setImageName:v6];

  return 1;
}

BOOL sub_1000F1EFC(id a1, SCATModernMenuItem *a2)
{
  v2 = a2;
  v3 = _AXSTripleClickCopyOptions();
  v4 = +[CLFSystemShellSwitcher sharedSystemShellSwitcher];
  v5 = [v4 isClarityBoardEnabled];

  if (v5)
  {
    v6 = sub_100042B24(@"TRIPLE_CLICK_ASSISTIVE_ACCESS");
  }

  else
  {
    v6 = sub_100042B24(@"TRIPLE_CLICK");
    if ([v3 count] == 1)
    {
      v7 = [v3 firstObject];
      v8 = +[AXTripleClickHelpers localizedTitleForAccessibilityShortcutOption:](AXTripleClickHelpers, "localizedTitleForAccessibilityShortcutOption:", [v7 intValue]);
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v6;
      }

      v11 = v10;

      v6 = v11;
    }
  }

  [(SCATModernMenuItem *)v2 setTitle:v6];

  return 1;
}

BOOL sub_1000F2004(id a1, SCATModernMenuItem *a2)
{
  v2 = a2;
  v3 = sub_100042D18(@"CAMERA_BUTTON_VISUAL_INTELLIGENCE");
  [(SCATModernMenuItem *)v2 setTitle:v3];

  [(SCATModernMenuItem *)v2 setImageName:@"apple.intelligence"];
  return 1;
}

void sub_1000F22C8(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

void sub_1000F2440(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

id sub_1000F2488(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 didDismiss:v4];
}

char *sub_1000F28B0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____AXSlideToTypeImageView_slideToTypeImageHostingController;
  v11 = static Color.white.getter();
  v12 = objc_allocWithZone(type metadata accessor for SlideToTypeHostingController(0));
  v24 = sub_1000F2EC8;
  v25 = 0;
  v26 = 0;
  v27 = v11;
  *&v5[v10] = UIHostingController.init(rootView:)();
  v23.receiver = v5;
  v23.super_class = type metadata accessor for SlideToTypeImageView();
  v13 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 clearColor];
  [v15 setBackgroundColor:v16];

  v17 = OBJC_IVAR____AXSlideToTypeImageView_slideToTypeImageHostingController;
  result = [*&v15[OBJC_IVAR____AXSlideToTypeImageView_slideToTypeImageHostingController] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v19 = result;
  v20 = [v14 clearColor];
  [v19 setBackgroundColor:v20];

  result = [*&v15[v17] view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v21 = result;
  [v15 addSubview:result];

  result = [*&v15[v17] view];
  if (result)
  {
    v22 = result;
    [result setAutoresizingMask:18];

    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1000F2CE0(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for SlideToTypeHostingController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

id sub_1000F2D78(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_1000F2E14(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = objc_allocWithZone(type metadata accessor for SlideToTypeHostingController(0));

  sub_1000F4658(v2, v3, v4);
  v6 = UIHostingController.init(coder:rootView:)();
  v7 = v6;
  sub_1000F4668(v2, v3, v4);

  if (v6)
  {
  }

  return v6;
}

id sub_1000F2EC8()
{
  if (qword_100218C70 != -1)
  {
    swift_once();
  }

  v1 = qword_100218C78;

  return v1;
}

uint64_t sub_1000F2F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = static Alignment.center.getter();
  v7 = v6;
  sub_1000F313C(&v34);
  v29 = v42;
  v30 = v43;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v32[8] = v42;
  v32[9] = v43;
  v32[4] = v38;
  v32[5] = v39;
  v32[6] = v40;
  v32[7] = v41;
  v32[0] = v34;
  v32[1] = v35;
  v31 = v44;
  v33 = v44;
  v32[2] = v36;
  v32[3] = v37;
  sub_1000F44E4(&v21, &v9, &qword_100217458);
  sub_1000F454C(v32, &qword_100217458);
  v18 = v29;
  v19 = v30;
  LOBYTE(v20) = v31;
  v14 = v25;
  v15 = v26;
  v17 = v28;
  v16 = v27;
  v10 = v21;
  v11 = v22;
  v13 = v24;
  v12 = v23;
  *&v9 = v5;
  *(&v9 + 1) = v7;
  *(&v20 + 1) = a4;

  sub_1000F40B0(&qword_100217460);
  sub_1000F40F8();
  View.allowsSecureDrawing()();
  v42 = v17;
  v43 = v18;
  v44 = v19;
  v45 = v20;
  v38 = v13;
  v39 = v14;
  v40 = v15;
  v41 = v16;
  v34 = v9;
  v35 = v10;
  v36 = v11;
  v37 = v12;
  return sub_1000F454C(&v34, &qword_100217460);
}

uint64_t sub_1000F313C@<X0>(_OWORD *a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for Image.ResizingMode();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  v5 = *(v2 + 104);
  HIDWORD(v24) = enum case for Image.ResizingMode.stretch(_:);
  v25 = v5;
  v5(v4);
  v27 = Image.resizable(capInsets:resizingMode:)();

  v26 = *(v2 + 8);
  v26(v4, v1);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v48) = 1;
  *&v47[3] = *&v47[27];
  *&v47[11] = *&v47[35];
  *&v47[19] = *&v47[43];
  type metadata accessor for SlideToTypeObservable(0);
  sub_1000F4224();
  v6 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v48 == 1)
  {
    Image.init(systemName:)();
    v25(v4, HIDWORD(v24), v1);
    v7 = Image.resizable(capInsets:resizingMode:)();

    v26(v4, v1);
    static Font.title.getter();
    static Font.Weight.light.getter();
    v8 = Font.weight(_:)();

    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v40[0]) = 0;
    v42 = v7;
    LOWORD(v43) = 1;
    *(&v43 + 1) = KeyPath;
    *&v44 = v8;
    BYTE8(v46[1]) = 0;
  }

  else
  {
    Image.init(systemName:)();
    v25(v4, HIDWORD(v24), v1);
    v10 = Image.resizable(capInsets:resizingMode:)();

    v26(v4, v1);
    static Font.title.getter();
    static Font.Weight.light.getter();
    v11 = Font.weight(_:)();

    v12 = swift_getKeyPath();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v40[0]) = 1;
    v42 = v10;
    LOWORD(v43) = 1;
    *(&v43 + 1) = v12;
    *&v44 = v11;
    BYTE8(v46[1]) = 1;
  }

  sub_1000F40B0(&qword_100217490);
  sub_1000F42D4();
  _ConditionalContent<>.init(storage:)();
  v44 = v50;
  v45 = v51;
  v46[0] = v52[0];
  *(v46 + 9) = *(v52 + 9);
  v42 = v48;
  v43 = v49;
  v13 = v27;
  v38[0] = v27;
  v38[1] = 0;
  v39[0] = 1;
  v39[1] = 0;
  *&v39[48] = *&v47[23];
  *&v39[34] = *&v47[16];
  *&v39[18] = *&v47[8];
  *&v39[2] = *v47;
  v35 = *&v39[16];
  v36 = *&v39[32];
  *&v34[23] = v27;
  *&v34[31] = *v39;
  v40[0] = v48;
  v40[1] = v49;
  *(v41 + 9) = *(v52 + 9);
  v40[3] = v51;
  v41[0] = v52[0];
  v40[2] = v50;
  *v37 = *&v39[48];
  *&v37[24] = v49;
  *&v37[8] = v48;
  *&v37[81] = *(v52 + 9);
  *&v37[72] = v52[0];
  *&v37[56] = v51;
  *&v37[40] = v50;
  v14 = *v39;
  v15 = v28;
  *v28 = v27;
  v15[1] = v14;
  v16 = v35;
  v17 = v36;
  v18 = *&v37[16];
  v15[4] = *v37;
  v15[5] = v18;
  v15[2] = v16;
  v15[3] = v17;
  v19 = *&v37[32];
  v20 = *&v37[48];
  v21 = *&v37[64];
  v22 = *&v37[80];
  *(v15 + 160) = v37[96];
  v15[8] = v21;
  v15[9] = v22;
  v15[6] = v19;
  v15[7] = v20;
  sub_1000F44E4(v38, v29, &qword_1002174D0);
  sub_1000F44E4(v40, v29, &qword_1002174D8);
  sub_1000F454C(&v42, &qword_1002174D8);
  v29[0] = v13;
  v29[1] = 0;
  v30 = 1;
  v31 = 0;
  v32 = *v47;
  v33 = *&v47[8];
  *v34 = *&v47[16];
  *&v34[7] = *&v47[23];
  return sub_1000F454C(v29, &qword_1002174D0);
}

id sub_1000F3750()
{
  result = [objc_allocWithZone(type metadata accessor for SlideToTypeObservable(0)) init];
  qword_100218C78 = result;
  return result;
}

uint64_t sub_1000F3858()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

__CFNotificationCenter *sub_1000F38CC()
{
  v1 = sub_1000F40B0(&unk_1002174E0);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC15assistivetouchdP33_E95A5B9CFBC065073A07D7F97181393021SlideToTypeObservable__isDwellSlideToTypeEnabled;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 assistiveTouchDwellKeyboardContinuousPathEnabled];

  v15 = v7;
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v5], v4, v1);
  v8 = type metadata accessor for SlideToTypeObservable(0);
  v14.receiver = v0;
  v14.super_class = v8;
  v9 = objc_msgSendSuper2(&v14, "init");
  result = CFNotificationCenterGetLocalCenter();
  if (kAXSDwellKeyboardContinuousPathEnabledNotification)
  {
    v11 = result;
    v12 = kAXSDwellKeyboardContinuousPathEnabledNotification;
    CFNotificationCenterAddObserver(v11, v9, sub_1000F3A88, v12, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000F3A88(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    __chkstk_darwin();
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }
}

__CFNotificationCenter *sub_1000F3B5C()
{
  result = CFNotificationCenterGetLocalCenter();
  if (kAXSDwellKeyboardContinuousPathEnabledNotification)
  {
    v2 = result;
    v3 = kAXSDwellKeyboardContinuousPathEnabledNotification;
    CFNotificationCenterRemoveObserver(v2, v0, v3, 0);

    v4.receiver = v0;
    v4.super_class = type metadata accessor for SlideToTypeObservable(0);
    return objc_msgSendSuper2(&v4, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F3CFC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SlideToTypeObservable(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000F3D3C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1000F3DBC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1000F3EC0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F3EF8()
{
  sub_1000F3F88();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000F3F88()
{
  if (!qword_100217450)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100217450);
    }
  }
}

__n128 sub_1000F3FE4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000F3FF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F4038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F40B0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000F40F8()
{
  result = qword_100217468;
  if (!qword_100217468)
  {
    sub_1000F41DC(&qword_100217460);
    sub_1000F449C(&qword_100217470, &qword_100217478);
    sub_1000F449C(&qword_100217480, &qword_100217488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217468);
  }

  return result;
}

uint64_t sub_1000F41DC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000F4224()
{
  result = qword_100218DC0;
  if (!qword_100218DC0)
  {
    type metadata accessor for SlideToTypeObservable(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218DC0);
  }

  return result;
}

uint64_t sub_1000F427C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000F42D4()
{
  result = qword_100217498;
  if (!qword_100217498)
  {
    sub_1000F41DC(&qword_100217490);
    sub_1000F4360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217498);
  }

  return result;
}

unint64_t sub_1000F4360()
{
  result = qword_1002174A0;
  if (!qword_1002174A0)
  {
    sub_1000F41DC(&qword_1002174A8);
    sub_1000F4418();
    sub_1000F449C(&qword_1002174C0, &qword_1002174C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002174A0);
  }

  return result;
}

unint64_t sub_1000F4418()
{
  result = qword_1002174B0;
  if (!qword_1002174B0)
  {
    sub_1000F41DC(&qword_1002174B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002174B0);
  }

  return result;
}

uint64_t sub_1000F449C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F41DC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F44E4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000F40B0(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F454C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000F40B0(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F45AC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 assistiveTouchDwellKeyboardContinuousPathEnabled];

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  return static Published.subscript.setter();
}

id sub_1000F4658(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

uint64_t sub_1000F4668(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_release_x1(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1000F4678()
{
  sub_1000F41DC(&qword_100217460);
  sub_1000F40F8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000F46DC()
{
  v0 = type metadata accessor for Logger();
  sub_1000FB624(v0, qword_10021C8E0);
  sub_1000F4758(v0, qword_10021C8E0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000F4758(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

Swift::Int sub_1000F47A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000F481C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

id sub_1000F48A0()
{
  result = [objc_opt_self() cyanColor];
  static CameraInputSourceManager.CameraInputSourceDefaults.previewLayerColor = result;
  return result;
}

uint64_t *CameraInputSourceManager.CameraInputSourceDefaults.previewLayerColor.unsafeMutableAddressor()
{
  if (qword_100218DE8 != -1)
  {
    swift_once();
  }

  return &static CameraInputSourceManager.CameraInputSourceDefaults.previewLayerColor;
}

id static CameraInputSourceManager.CameraInputSourceDefaults.previewLayerColor.getter()
{
  if (qword_100218DE8 != -1)
  {
    swift_once();
  }

  v1 = static CameraInputSourceManager.CameraInputSourceDefaults.previewLayerColor;

  return v1;
}

void sub_1000F4988(uint64_t a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_delegates) + 16);
  if (*(a1 + 16))
  {
    if (!v2)
    {
      sub_1000F60A8();
    }
  }

  else if (v2)
  {
    sub_1000F5ED8();
  }

  if (!*(*(v1 + OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_delegates) + 16))
  {
    v3 = *(v1 + OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureSession);
    if (v3)
    {
      if ([v3 isRunning])
      {

        sub_1000F60A8();
      }
    }
  }
}

id sub_1000F4A24()
{
  v1 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureSessionPreset;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1000F4A78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureSessionPreset;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1000F4B34()
{
  v1 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureOutputPixelFormat;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000F4B78(int a1)
{
  v3 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureOutputPixelFormat;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000F4C28@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x120))();
  *a2 = result;
  return result;
}

void sub_1000F4C8C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureOutputPreview;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *CameraInputSourceManager.captureOutputPreview.getter()
{
  v1 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureOutputPreview;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000F4D38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureOutputPreview;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CameraInputSourceManager.isPreviewEnabled.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 assistiveTouchCameraSwitchPreviewEnabled];

  return v1;
}

void CameraInputSourceManager.isPreviewEnabled.setter(char a1)
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchCameraSwitchPreviewEnabled:a1 & 1];
}

void (*CameraInputSourceManager.isPreviewEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 sharedInstance];
  v4 = [v3 assistiveTouchCameraSwitchPreviewEnabled];

  *(a1 + 8) = v4;
  return sub_1000F4EDC;
}

void sub_1000F4EDC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = [*a1 sharedInstance];
  [v2 setAssistiveTouchCameraSwitchPreviewEnabled:v1];
}

id sub_1000F4F48()
{
  result = [objc_allocWithZone(type metadata accessor for CameraInputSourceManager()) init];
  qword_10021C900 = result;
  return result;
}

uint64_t *sub_1000F4F78()
{
  if (qword_100218DF0 != -1)
  {
    swift_once();
  }

  return &qword_10021C900;
}

id sub_1000F4FC8()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v2 - 8);
  v13 = v2;
  __chkstk_darwin();
  v11 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  *&v0[OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureSession] = 0;
  *&v0[OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureOutputPreview] = 0;
  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000F4758(v4, qword_10021C8E0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Initializing Camera Input Source Manager.", v7, 2u);
  }

  *&v1[OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_delegates] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_layers] = sub_1000FB45C(&_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureSessionPreset] = AVCaptureSessionPreset640x480;
  *&v1[OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureOutputPixelFormat] = 875704422;
  sub_1000FB560(0, &unk_100217B00);
  v8 = AVCaptureSessionPreset640x480;
  static DispatchQoS.unspecified.getter();
  v15 = &_swiftEmptyArrayStorage;
  sub_1000FAD78(&qword_100217600, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000F40B0(&qword_100217608);
  sub_1000F449C(&qword_100217610, &qword_100217608);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *&v1[OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureOutputQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = type metadata accessor for CameraInputSourceManager();
  v14.receiver = v1;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

id CameraInputSourceManager.__deallocating_deinit()
{
  v1 = v0;
  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000F4758(v2, qword_10021C8E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinitializing Camera Input Source Manager.", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureOutputPreview;
  swift_beginAccess();
  v7 = *&v1[v6];
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    aBlock[4] = sub_1000F55C8;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000F55D8;
    aBlock[3] = &unk_1001D7E28;
    v9 = _Block_copy(aBlock);
    v10 = v7;

    AXPerformBlockSynchronouslyOnMainThread();
    _Block_release(v9);
  }

  v11 = type metadata accessor for CameraInputSourceManager();
  v14.receiver = v1;
  v14.super_class = v11;
  return objc_msgSendSuper2(&v14, "dealloc");
}

uint64_t sub_1000F5590()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F55D8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000F561C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void CameraInputSourceManager.addObserver<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000F4758(v8, qword_10021C8E0);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Adding observer: %@", v12, 0xCu);
    sub_1000F454C(v13, &qword_100217528);
  }

  if ((*((swift_isaMask & *v4) + 0x168))(v9, a2, a3))
  {
    v15 = v9;
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v15;
      *v18 = v15;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, oslog, v16, "Observer has already been added. Ignoring observer: %@", v17, 0xCu);
      sub_1000F454C(v18, &qword_100217528);
    }
  }

  else
  {
    v20 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_delegates;
    v21 = *(v4 + OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_delegates);
    v22 = v9;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1000F90F4(0, v21[2] + 1, 1, v21);
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_1000F90F4((v23 > 1), v24 + 1, 1, v21);
    }

    v21[2] = v24 + 1;
    v25 = &v21[2 * v24];
    v25[4] = v22;
    v25[5] = a3;
    v26 = *(v4 + v20);
    *(v4 + v20) = v21;
    sub_1000F4988(v26);
  }
}

void CameraInputSourceManager.removeObserver<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000F4758(v7, qword_10021C8E0);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "Removing observer: %@", v11, 0xCu);
    sub_1000F454C(v12, &qword_100217528);
  }

  sub_1000FA0E4(v8, v3, v14, a3);
  if ((v16 & 1) == 0)
  {
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "Removing observer at index: %ld", v20, 0xCu);
    }

    v21 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_delegates;
    v23 = *(v4 + OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_delegates);

    v22 = *(v4 + v21);
    *(v4 + v21) = v23;
    sub_1000F4988(v22);
  }
}

uint64_t sub_1000F5C64(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000F9900(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

BOOL CameraInputSourceManager.containsObserver<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000F4758(v6, qword_10021C8E0);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Checking if we already have observer: %@", v10, 0xCu);
    sub_1000F454C(v11, &qword_100217528);
  }

  sub_1000FA0E4(v7, v3, v13, a3);
  v15 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    if (v15)
    {
      v18 = "Did not find observer.";
    }

    else
    {
      v18 = "Found observer.";
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, v18, v19, 2u);
  }

  return (v15 & 1) == 0;
}

void sub_1000F5ED8()
{
  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000F4758(v1, qword_10021C8E0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will start running", v4, 2u);
  }

  v5 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureSession;
  v6 = *(v0 + OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureSession);
  if (!v6)
  {
    goto LABEL_13;
  }

  if ([v6 isRunning])
  {
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Already running. Ignoring", v8, 2u);
    }

    return;
  }

  v9 = *(v0 + v5);
  if (!v9)
  {
LABEL_13:
    sub_1000F6330();
    sub_1000F6640();
    v9 = *(v0 + v5);
  }

  [v9 startRunning];
}

void sub_1000F60A8()
{
  v1 = v0;
  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000F4758(v2, qword_10021C8E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Will stop running", v5, 2u);
  }

  v6 = *(v0 + OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureSession);
  if (v6 && [v6 isRunning])
  {
    sub_1000F6D60();
    v7 = (*((swift_isaMask & *v0) + 0x120))();
    if (v7)
    {

      v8 = swift_allocObject();
      *(v8 + 16) = v0;
      aBlock[4] = sub_1000FB244;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000F55D8;
      aBlock[3] = &unk_1001D81D8;
      v9 = _Block_copy(aBlock);
      v10 = v1;

      AXPerformBlockSynchronouslyOnMainThread();
      _Block_release(v9);
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "Already stopped running. Ignoring.", v12, 2u);
    }
  }
}

void sub_1000F6330()
{
  v1 = v0;
  v2 = [objc_allocWithZone(AVCaptureSession) init];
  v13 = v2;
  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000F4758(v3, qword_10021C8E0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v2;
    *v7 = v2;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "Setting up new capture session: %@", v6, 0xCu);
    sub_1000F454C(v7, &qword_100217528);
  }

  swift_beginAccess();
  sub_1000F6ED4(&v13);
  swift_endAccess();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Done setting up capture session.", v11, 2u);
  }

  v12 = *(v1 + OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureSession);
  *(v1 + OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureSession) = v2;
}

void sub_1000F6640()
{
  v1 = v0;
  if (((*((swift_isaMask & *v0) + 0x138))() & 1) == 0)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureSession);
  if (!v2)
  {
    if (qword_100218DE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000F4758(v9, qword_10021C8E0);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Attempting to setup camera preview when no capture session is configured.", v11, 2u);
    }

    goto LABEL_13;
  }

  v3 = *((swift_isaMask & *v0) + 0x120);
  v4 = v2;
  v5 = v3();
  if (v5)
  {

    if (qword_100218DE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000F4758(v6, qword_10021C8E0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Camera preview is already setup. No need to setup again.", v8, 2u);
    }

LABEL_13:

    return;
  }

  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000F4758(v12, qword_10021C8E0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Setting up capture preview", v15, 2u);
  }

  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  sub_1000F4758(v12, qword_10021C8E0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Setting up camera output preview.", v18, 2u);
  }

  v19 = [objc_opt_self() greenColor];
  v20 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v20 setBackgroundColor:v19];
  v21 = [v20 layer];
  v22 = [v19 CGColor];
  [v21 setBorderColor:v22];

  v23 = [v20 layer];
  [v23 setBorderWidth:2.0];

  v24 = [v20 layer];
  [v24 setCornerRadius:5.0];

  v25 = [v20 layer];
  [v25 setMasksToBounds:1];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [objc_allocWithZone(AVCaptureVideoPreviewLayer) initWithSession:v4];
  [v26 setFrame:sub_1000FAFC0()];
  v27 = [v20 layer];
  [v27 addSublayer:v26];

  v28 = swift_allocObject();
  *(v28 + 16) = v20;
  aBlock[4] = sub_1000FAFDC;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000F55D8;
  aBlock[3] = &unk_1001D8188;
  v29 = _Block_copy(aBlock);
  v30 = v20;

  AXPerformBlockSynchronouslyOnMainThread();
  _Block_release(v29);

  v31 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v31;
    *v35 = v31;
    v36 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "Created capture output preview: %@", v34, 0xCu);
    sub_1000F454C(v35, &qword_100217528);
  }

  v37 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureOutputPreview;
  swift_beginAccess();
  v38 = *(v1 + v37);
  *(v1 + v37) = v31;
}

void sub_1000F6D60()
{
  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000F4758(v1, qword_10021C8E0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *&v2[OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureSession];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Tearing down capture session: %@", v5, 0xCu);
    sub_1000F454C(v6, &qword_100217528);
  }

  v9 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureSession;
  [*&v2[OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureSession] stopRunning];
  v10 = *&v2[v9];
  *&v2[v9] = 0;
}

void sub_1000F6ED4(id *a1)
{
  v3 = v2;
  v4 = v1;
  v5 = (*((swift_isaMask & *v1) + 0xB8))();
  sub_1000F40B0(&qword_1002175E8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001BD7D0;
  *(v6 + 32) = AVCaptureDeviceTypeBuiltInUltraWideCamera;
  *(v6 + 40) = AVCaptureDeviceTypeBuiltInWideAngleCamera;
  p_isa = AVMediaTypeVideo;
  type metadata accessor for DeviceType(0);
  v8 = AVCaptureDeviceTypeBuiltInUltraWideCamera;
  v9 = AVCaptureDeviceTypeBuiltInWideAngleCamera;
  v10 = AVMediaTypeVideo;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [objc_opt_self() discoverySessionWithDeviceTypes:isa mediaType:v10 position:2];

  v13 = [v12 devices];
  sub_1000FB560(0, &unk_1002175F0);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_55:

    v18 = 0;
    if (!v2)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_55;
  }

LABEL_3:
  if ((v14 & 0xC000000000000001) != 0)
  {
    p_isa = &v5->isa;
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_61:
      swift_once();
      goto LABEL_10;
    }

    p_isa = &v5->isa;
    v15 = *(v14 + 32);
  }

  v16 = v15;

  v17 = objc_allocWithZone(AVCaptureDeviceInput);
  v75[0] = 0;
  v5 = v16;
  v18 = [v17 initWithDevice:v5 error:v75];
  v19 = v75[0];
  if (v18)
  {

    v5 = p_isa;
    if (!v2)
    {
      goto LABEL_13;
    }

LABEL_56:

    goto LABEL_57;
  }

  v20 = v19;
  v3 = _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100218DE0 != -1)
  {
    goto LABEL_61;
  }

LABEL_10:
  v21 = type metadata accessor for Logger();
  sub_1000F4758(v21, qword_10021C8E0);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v18))
  {
    v23 = swift_slowAlloc();
    v70 = v10;
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v25;
    *v24 = v25;
    _os_log_impl(&_mh_execute_header, v22, v18, "Could not create capture device input. Error: %@", v23, 0xCu);
    sub_1000F454C(v24, &qword_100217528);
    v10 = v70;
  }

  swift_willThrow();
  v5 = p_isa;
  if (v3)
  {
    goto LABEL_56;
  }

LABEL_13:

  if (!v18)
  {
    return;
  }

  v26 = *a1;
  if ([*a1 canAddInput:v18])
  {
    v71 = v10;
    [v26 addInput:v18];
    v74 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureOutputQueue;
    v27 = *((swift_isaMask & *v4) + 0xD0);
    v28 = *(v4 + OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureOutputQueue);
    v29 = v27();
    v30 = [objc_allocWithZone(AVCaptureVideoDataOutput) init];
    v31 = AVCaptureVideoDataOutput.availableVideoPixelFormatTypes.getter();
    v32 = *(v31 + 16);
    v33 = 32;
    do
    {
      if (!v32)
      {

        if (qword_100218DE0 != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        sub_1000F4758(v54, qword_10021C8E0);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 67109120;
          *(v57 + 4) = v29;
          _os_log_impl(&_mh_execute_header, v55, v56, "Could not create capture video data output with pixel format type: %u", v57, 8u);
        }

        goto LABEL_36;
      }

      v34 = *(v31 + v33);
      v33 += 4;
      --v32;
    }

    while (v34 != v29);

    [v30 setAlwaysDiscardsLateVideoFrames:1];
    sub_1000F40B0(&qword_1002175D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001BD7E0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v36;
    *(inited + 72) = &type metadata for UInt32;
    *(inited + 48) = v29;
    sub_1000FAE08(inited);
    swift_setDeallocating();
    sub_1000F454C(inited + 32, &qword_1002175D8);
    v37 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v30 setVideoSettings:v37];

    [v30 setSampleBufferDelegate:v4 queue:v28];
    if (v30)
    {
      if ([v26 canAddOutput:v30])
      {
        [v26 addOutput:v30];
        v38 = [v30 connectionWithMediaType:v71];
        if (v38)
        {
          v69 = v30;
          v72 = v38;
          if ([v38 isCameraIntrinsicMatrixDeliverySupported])
          {
            [v72 setCameraIntrinsicMatrixDeliveryEnabled:1];
          }

          v39 = *(v4 + v74);
          v40 = objc_allocWithZone(AVCaptureMetadataOutput);
          v41 = v39;
          v42 = [v40 init];
          [v42 setMetadataObjectsDelegate:v4 queue:v41];

          if ([v26 canAddOutput:v42])
          {
            [v26 addOutput:v42];
            v43 = [v42 availableMetadataObjectTypes];
            type metadata accessor for ObjectType(0);
            v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v75[0] = v44;
            sub_1000F40B0(&qword_1002175B0);
            v45 = swift_allocObject();
            *(v45 + 16) = xmmword_1001BD7E0;
            *(v45 + 32) = AVMetadataObjectTypeFace;
            v75[11] = v45;
            v68 = AVMetadataObjectTypeFace;
            sub_1000F40B0(&qword_1002175B8);
            sub_1000F449C(&qword_1002175C0, &qword_1002175B8);
            sub_1000FAD78(&qword_1002175C8, type metadata accessor for ObjectType);
            LOBYTE(v43) = Collection<>.contains<A>(_:)();

            if (v43)
            {
              v46 = swift_allocObject();
              *(v46 + 16) = xmmword_1001BD7E0;
              *(v46 + 32) = v68;
              v47 = v68;
              v48 = Array._bridgeToObjectiveC()().super.isa;

              [v42 setMetadataObjectTypes:v48];
            }

            v5 = v72;
          }

          else
          {
            if (qword_100218DE0 != -1)
            {
              swift_once();
            }

            v64 = type metadata accessor for Logger();
            sub_1000F4758(v64, qword_10021C8E0);
            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.error.getter();
            v5 = v72;
            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              *v67 = 0;
              _os_log_impl(&_mh_execute_header, v65, v66, "Could not create capture output. Could not add capture metadata output.", v67, 2u);
            }
          }
        }

        else
        {

          v5 = v30;
        }
      }

      else
      {
        if (qword_100218DE0 != -1)
        {
          swift_once();
        }

        v61 = type metadata accessor for Logger();
        sub_1000F4758(v61, qword_10021C8E0);
        v5 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v5, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&_mh_execute_header, v5, v62, "Could not create capture output. Could not add capture device output", v63, 2u);
        }
      }

      goto LABEL_57;
    }

LABEL_36:
    if (qword_100218DE0 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000F4758(v58, qword_10021C8E0);
    v5 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v5, v59, "Could not create capture output. Could not add catpure device output.", v60, 2u);
      goto LABEL_40;
    }
  }

  else
  {
    if (qword_100218DE0 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1000F4758(v49, qword_10021C8E0);
    v50 = v18;
    v5 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v5, v51))
    {

      goto LABEL_57;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 138412290;
    *(v52 + 4) = v50;
    *v53 = v18;
    v18 = v50;
    _os_log_impl(&_mh_execute_header, v5, v51, "Could not create capture output. Could not add capture device input: %@", v52, 0xCu);
    sub_1000F454C(v53, &qword_100217528);

LABEL_40:
  }

LABEL_57:
}

uint64_t CameraInputSourceManager.createLayer(withID:color:width:height:)(uint64_t a1, unint64_t a2, void *a3, double a4, double a5)
{
  v6 = v5;
  v12 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_layers;
  v13 = swift_beginAccess();
  if (*(*(v5 + v12) + 16))
  {

    sub_1000F97D0(a1, a2);
    v15 = v14;

    if (v15)
    {
      if (qword_100218DE0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000F4758(v16, qword_10021C8E0);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        aBlock[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_1000F9228(a1, a2, aBlock);
        _os_log_impl(&_mh_execute_header, v17, v18, "Layer already exists for ID: (%s.", v19, 0xCu);
        sub_1000FA500(v20);
      }

      v21 = *(v6 + v12);
      if (*(v21 + 16))
      {

        v22 = sub_1000F97D0(a1, a2);
        if (v23)
        {
          v24 = *(*(v21 + 56) + 8 * v22);

          return v24;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_19:
      swift_once();
      goto LABEL_14;
    }
  }

  v25 = (*((swift_isaMask & *v5) + 0x120))(v13);
  if (v25)
  {
    v26 = v25;
    v27 = [objc_allocWithZone(CALayer) init];
    v28 = [a3 CGColor];
    [v27 setBorderColor:v28];

    [v27 setBorderWidth:2.0];
    [v27 setCornerRadius:5.0];
    [v27 setFrame:{0.0, 0.0, a4, a5}];
    [v27 setHidden:1];
    swift_beginAccess();

    v29 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v6 + v12);
    *(v6 + v12) = 0x8000000000000000;
    sub_1000F9E00(v29, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v6 + v12) = v41;
    swift_endAccess();
    v31 = swift_allocObject();
    v31[2] = a1;
    v31[3] = a2;
    v31[4] = v29;
    v31[5] = v26;
    aBlock[4] = sub_1000FA310;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000F55D8;
    aBlock[3] = &unk_1001D7E78;
    v32 = _Block_copy(aBlock);

    v24 = v29;
    v33 = v26;

    AXPerformBlockAsynchronouslyOnMainThread();
    _Block_release(v32);

    return v24;
  }

  if (qword_100218DE0 != -1)
  {
    goto LABEL_19;
  }

LABEL_14:
  v35 = type metadata accessor for Logger();
  sub_1000F4758(v35, qword_10021C8E0);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Capture output preview is not setup!", v38, 2u);
  }

  sub_1000FA274();
  swift_allocError();
  *v39 = 1;
  return swift_willThrow();
}

void CameraInputSourceManager.updateLayer(withID:frame:transform:isHidden:color:)(uint64_t a1, unint64_t a2, __int128 *a3, char a4, void *a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000F4758(v20, qword_10021C8E0);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v43 = a4;
    v23 = a5;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1000F9228(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v21, v22, "Attepting to update layer for id: %s", v24, 0xCu);
    sub_1000FA500(v25);

    a5 = v23;
    a4 = v43;
  }

  v26 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_layers;
  swift_beginAccess();
  v27 = *(v10 + v26);
  if (*(v27 + 16))
  {

    v28 = sub_1000F97D0(a1, a2);
    if (v29)
    {
      v30 = *(*(v27 + 56) + 8 * v28);

      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = a5;
      *(v31 + 32) = a6;
      *(v31 + 40) = a7;
      *(v31 + 48) = a8;
      *(v31 + 56) = a9;
      *(v31 + 64) = a4 & 1;
      v32 = a3[4];
      *(v31 + 152) = a3[5];
      v33 = a3[7];
      *(v31 + 168) = a3[6];
      *(v31 + 184) = v33;
      *(v31 + 200) = *(a3 + 128);
      v34 = *a3;
      *(v31 + 88) = a3[1];
      v35 = a3[3];
      *(v31 + 104) = a3[2];
      *(v31 + 120) = v35;
      *(v31 + 136) = v32;
      *(v31 + 72) = v34;
      aBlock[4] = sub_1000FA58C;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000F55D8;
      aBlock[3] = &unk_1001D7EC8;
      v36 = _Block_copy(aBlock);
      v37 = a5;
      v38 = v30;

      AXPerformBlockSynchronouslyOnMainThread();
      _Block_release(v36);

      return;
    }
  }

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_1000F9228(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v39, v40, "No layer exists for ID: (%s.", v41, 0xCu);
    sub_1000FA500(v42);
  }
}

Swift::Bool __swiftcall CameraInputSourceManager.removeLayer(withID:)(Swift::String withID)
{
  object = withID._object;
  countAndFlagsBits = withID._countAndFlagsBits;
  swift_beginAccess();
  v3 = sub_1000F9914(countAndFlagsBits, object);
  swift_endAccess();
  if (v3)
  {
    v4 = swift_allocObject();
    v4[2] = countAndFlagsBits;
    v4[3] = object;
    v4[4] = v3;
    v13[4] = sub_1000FA830;
    v13[5] = v4;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1000F55D8;
    v13[3] = &unk_1001D7F18;
    v5 = _Block_copy(v13);

    v6 = v3;

    AXPerformBlockSynchronouslyOnMainThread();

    _Block_release(v5);
  }

  else
  {
    if (qword_100218DE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000F4758(v7, qword_10021C8E0);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1000F9228(countAndFlagsBits, object, v13);
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to remove CALayer for ID: %s. No layer with that ID exists.", v10, 0xCu);
      sub_1000FA500(v11);
    }
  }

  return v3 != 0;
}

CALayer_optional __swiftcall CameraInputSourceManager.layer(withID:)(Swift::String withID)
{
  object = withID._object;
  countAndFlagsBits = withID._countAndFlagsBits;
  v4 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_layers;
  swift_beginAccess();
  v6 = *(v1 + v4);
  if (*(v6 + 16))
  {

    v7 = sub_1000F97D0(countAndFlagsBits, object);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      v10 = v9;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  result.value.super.isa = v11;
  result.is_nil = v5;
  return result;
}

Swift::Void __swiftcall CameraInputSourceManager.metadataOutput(_:didOutput:from:)(AVCaptureMetadataOutput _, Swift::OpaquePointer didOutput, AVCaptureConnection from)
{
  v4 = *(v3 + OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_delegates);
  v5 = *(v4 + 16);
  if (v5)
  {
    internal = _._internal;
    isa = _.super.super.isa;
    outputInternal = _.super._outputInternal;

    v7 = (v4 + 40);
    v8 = v3;
    do
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 16);
      v13 = v9;
      v12(v8, isa, outputInternal, internal, ObjectType, v10);

      v7 += 2;
      --v5;
    }

    while (v5);
  }
}

Swift::Void __swiftcall CameraInputSourceManager.captureOutput(_:didOutput:from:)(AVCaptureOutput _, CMSampleBufferRef didOutput, AVCaptureConnection from)
{
  v4 = *(v3 + OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_delegates);
  v5 = *(v4 + 16);
  if (v5)
  {
    isa = _.super.isa;
    outputInternal = _._outputInternal;

    v7 = (v4 + 40);
    v8 = v3;
    do
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 24);
      v13 = v9;
      v12(v8, isa, outputInternal, didOutput, ObjectType, v10);

      v7 += 2;
      --v5;
    }

    while (v5);
  }
}

Swift::Void __swiftcall CameraInputSourceManager.captureOutput(_:didDrop:from:)(AVCaptureOutput _, CMSampleBufferRef didDrop, AVCaptureConnection from)
{
  v4 = *(v3 + OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_delegates);
  v5 = *(v4 + 16);
  if (v5)
  {
    isa = _.super.isa;
    outputInternal = _._outputInternal;

    v7 = (v4 + 40);
    v8 = v3;
    do
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 32);
      v13 = v9;
      v12(v8, isa, outputInternal, didDrop, ObjectType, v10);

      v7 += 2;
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_1000F8B70(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000F8BE8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000F8C68@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000F8CB0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000F8CDC(uint64_t a1)
{
  v2 = sub_1000FAD78(&qword_100217680, type metadata accessor for DeviceType);
  v3 = sub_1000FAD78(&qword_100217688, type metadata accessor for DeviceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F8D98@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000F8DE0(uint64_t a1)
{
  v2 = sub_1000FAD78(&qword_100217598, type metadata accessor for Preset);
  v3 = sub_1000FAD78(&unk_1002175A0, type metadata accessor for Preset);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F8E9C(uint64_t a1)
{
  v2 = sub_1000FAD78(&qword_100217690, type metadata accessor for ObjectType);
  v3 = sub_1000FAD78(&qword_100217698, type metadata accessor for ObjectType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F8F64()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000F8FA0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000F8FF4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_1000F906C()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

void *sub_1000F90F4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000F40B0(&qword_100217628);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F40B0(&qword_100217630);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000F9228(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000F92F4(v11, 0, 0, 1, a1, a2);
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
    sub_1000FB5C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000FA500(v11);
  return v7;
}

unint64_t sub_1000F92F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000F9400(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_1000F9400(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000F944C(a1, a2);
  sub_1000F957C(&off_1001D7DD8);
  return v3;
}

char *sub_1000F944C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000F9668(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000F9668(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_1000F957C(uint64_t result)
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

  result = sub_1000F96DC(result, v11, 1, v3);
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

void *sub_1000F9668(uint64_t a1, uint64_t a2)
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

  sub_1000F40B0(&qword_100217620);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000F96DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F40B0(&qword_100217620);
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

unint64_t sub_1000F97D0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000F9848(a1, a2, v4);
}

unint64_t sub_1000F9848(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000F9914(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1000F97D0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000F9F78();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1000F9C50(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1000F99AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000F40B0(&qword_100217618);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000F9C50(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000F9E00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000F97D0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000F99AC(v16, a4 & 1);
      v11 = sub_1000F97D0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_1000F9F78();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return _objc_release_x1(v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

id sub_1000F9F78()
{
  v1 = v0;
  sub_1000F40B0(&qword_100217618);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

void sub_1000FA0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_delegates);
  v6 = *(v5 + 16);

  v21 = v6;
  v7 = 0;
  if (v6)
  {
    v8 = (v5 + 40);
    while (v7 < *(v5 + 16))
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 8);
      v13 = v9;
      v14 = v12(ObjectType, v10);
      v16 = v15;
      v17 = swift_getObjectType();
      if (v14 == (*(a4 + 8))(v17, a4) && v16 == v18)
      {

        goto LABEL_13;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        ++v7;
        v8 += 2;
        if (v21 != v7)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}