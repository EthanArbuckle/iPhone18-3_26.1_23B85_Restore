void sub_2560(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:@"container views"];
  (*(v2 + 16))(v2, v3);
}

BOOL sub_2920(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 validateClass:@"UIBezierPath" hasClassMethod:@"bezierPathWithRect:" withFullSignature:"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0];
  [(AXValidationManager *)v2 validateClass:@"UIBezierPath" hasInstanceMethod:@"addArcWithCenter: radius: startAngle: endAngle: clockwise:" withFullSignature:"v", "{CGPoint=dd}", "d", "d", "d", "B", 0];
  [(AXValidationManager *)v2 validateClass:@"UIBezierPath" hasInstanceMethod:@"addCurveToPoint: controlPoint1: controlPoint2:" withFullSignature:"v", "{CGPoint=dd}", "{CGPoint=dd}", "{CGPoint=dd}", 0];
  [(AXValidationManager *)v2 validateClass:@"UIBezierPath" hasInstanceMethod:@"addLineToPoint:" withFullSignature:"v", "{CGPoint=dd}", 0];
  [(AXValidationManager *)v2 validateClass:@"UIBezierPath" hasInstanceMethod:@"addQuadCurveToPoint: controlPoint:" withFullSignature:"v", "{CGPoint=dd}", "{CGPoint=dd}", 0];
  [(AXValidationManager *)v2 validateClass:@"UIBezierPath" hasInstanceMethod:@"appendPath:" withFullSignature:"v", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"UIBezierPath" hasInstanceMethod:@"applyTransform:" withFullSignature:"v", "{CGAffineTransform=dddddd}", 0];
  [(AXValidationManager *)v2 validateClass:@"UIBezierPath" hasInstanceMethod:@"copyWithZone:" withFullSignature:"@", "^{_NSZone=}", 0];
  [(AXValidationManager *)v2 validateClass:@"UIBezierPath" hasInstanceMethod:@"moveToPoint:" withFullSignature:"v", "{CGPoint=dd}", 0];

  return 1;
}

uint64_t sub_2AB4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v2 setValidationTargetName:v4];

  [v2 setOverrideProcessName:@"Guided Access (UI Server)"];
  [v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

id sub_2E14(uint64_t a1)
{
  v2 = GAXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "AXUIServer scene is ready for overlayActiveContentViewController", v4, 2u);
  }

  return [*(a1 + 32) setIsAXUIServerSceneReady:1];
}

void sub_3FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_3FBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 8);
  result = *(v1 + 8);
  *(v2 + 44) = *(v1 + 20);
  *(v2 + 32) = result;
  return result;
}

void sub_4044(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_336E8();
    }

    v7 = &dword_4 + 2;
  }

  else
  {
    v7 = [a2 unsignedIntegerValue];
  }

  [*(a1 + 32) _presentPasscodeViewControllerForSetup:0 passcodeLength:v7];
}

void sub_4898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_48B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 8);
  result = *(v1 + 8);
  *(v2 + 44) = *(v1 + 20);
  *(v2 + 32) = result;
  return result;
}

void sub_4C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4C64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_4C7C(uint64_t a1, id a2)
{
  v4 = a2;
  [a2 CGPath];
  v5 = AX_CGPathCopyDataRepresentation();
  if (v5)
  {
    v6 = v5;
    v7 = *(*(*(a1 + 32) + 8) + 40);
    if (!v7)
    {
      v8 = objc_opt_new();
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v7 addObject:v6];

    CFRelease(v6);
  }
}

uint64_t sub_4EF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 1;
  if (v5 && v6)
  {
    if (*(a1 + 40) != 1 && ([*(a1 + 32) sessionApplicationIdentifiers], v9 = objc_claimAutoreleasedReturnValue(), v10 = GAXSessionAppsContainMobilePhoneOrFacetime(v9), v9, (v10 & 1) != 0) || (objc_msgSend(*(a1 + 32), "sessionApplicationIdentifiers"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", @"com.apple.ContactlessUIService"), v11, (v12 & 1) != 0))
    {
      v8 = 0;
    }

    else
    {
      v13 = +[AXBackBoardServer server];
      v14 = [v13 isRestrictedForAAC];

      if (v14)
      {
        v15 = GAXLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Incoming call was blocked, but not showing banner.", buf, 2u);
        }
      }

      else
      {
        v16 = [v5 copy];
        v19 = [v7 copy];
        v17 = v19;
        v15 = v16;
        AXPerformBlockAsynchronouslyOnMainThread();
      }

      v8 = 1;
    }
  }

  return v8;
}

void sub_5770(id a1, int64_t a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = GAXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_337AC();
    }
  }
}

void sub_5898(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_58B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSpringboardClient:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _reestablishSpringboardClient];
}

void sub_61FC(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (*(a1 + 40) == 1)
  {
    v6 = [v13 objectForKey:@"alert remaining lockout duration"];
    if (v6)
    {
      v7 = [NSString alloc];
      v8 = GAXLocString(@"USER_LOCKED_OUT_VIA_FAIL");
      v9 = GAXLocalizedNumber(v6);
      v10 = [v7 initWithFormat:v8, v9];

      v11 = [*(a1 + 32) _showAlertWithText:v10 asBanner:1 isUrgent:0];
      [*(a1 + 32) setLockoutAlertIdentifier:v11];
    }
  }

  v12 = [*(a1 + 32) passiveInterestAreaViewController];
  if (v12)
  {
    [v12 setAllowsDimmingInterestAreaPaths:objc_msgSend(*(a1 + 32) animated:{"allowsTouch"), 1}];
  }
}

void sub_64C0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectForKey:@"passcode length"];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_666C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:@"passcode is correct"];
  (*(v2 + 16))(v2, [v3 BOOLValue]);
}

void sub_6968(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"interest area paths for storage"];
  v8 = v3;
  if (v3)
  {
    v4 = [*(a1 + 32) _unarchivedPathMappingWithData:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 40) objectForKey:*(a1 + 48)];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = *(a1 + 40);
    if (v4)
    {
      [v7 setObject:v4 forKey:*(a1 + 48)];
    }

    else
    {
      [v7 removeObjectForKey:*(a1 + 48)];
    }
  }

  else
  {
    [*(a1 + 32) _applyInterestAreaPathsForStorage:v4 toInterestAreaViewController:*(a1 + 56) andFadeInterestAreaPathsIn:*(a1 + 66) fadeInterestAreaSpecialControlsIn:*(a1 + 67) notifyClientOfReplacedInterestAreaPathsDuringSession:*(a1 + 68)];
  }
}

void sub_6FF8(uint64_t a1)
{
  v2 = GAXLocString(@"APP_SELF_LOCK_UNMANAGED_RESTRICTIONS");
  if (*(a1 + 32))
  {
    v3 = GAXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Using custom MC restrictions: %@", buf, 0xCu);
    }

    v5 = +[MCProfileConnection sharedConnection];
    v6 = *(a1 + 32);
    v11 = 0;
    [v5 applySingleAppModeConfiguration:v6 clientType:@"com.apple.accessibility.unmanaged.asam" clientUUID:@"com.apple.accessibility.unmanaged.asam.uuid" localizedClientDescription:v2 outError:&v11];
    v7 = v11;
  }

  else
  {
    v5 = +[MCProfileConnection sharedConnection];
    v8 = [*(a1 + 40) _unmanagedASAMRestrictionDictionaryForStyle:*(a1 + 48)];
    v10 = 0;
    [v5 applyRestrictionDictionary:v8 clientType:@"com.apple.accessibility.unmanaged.asam" clientUUID:@"com.apple.accessibility.unmanaged.asam.uuid" localizedClientDescription:v2 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v10];
    v7 = v10;
  }

  if (v7)
  {
    v9 = GAXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_3381C();
    }
  }
}

void sub_71F8(id a1)
{
  v1 = +[MCProfileConnection sharedConnection];
  v2 = GAXLocString(@"APP_SELF_LOCK_UNMANAGED_RESTRICTIONS");
  v5 = 0;
  [v1 applyRestrictionDictionary:0 clientType:@"com.apple.accessibility.unmanaged.asam" clientUUID:@"com.apple.accessibility.unmanaged.asam.uuid" localizedClientDescription:v2 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v5];
  v3 = v5;

  if (v3)
  {
    v4 = GAXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_3388C();
    }
  }
}

__n128 sub_7BE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(a1 + 40);
  *(v1 + 20) = *(a1 + 52);
  *(v1 + 8) = result;
  return result;
}

__n128 sub_7BFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(a1 + 40);
  *(v1 + 20) = *(a1 + 52);
  *(v1 + 8) = result;
  return result;
}

void sub_7DB4(uint64_t a1, uint64_t a2)
{
  v4 = +[AXUIDisplayManager sharedDisplayManager];
  v5 = [*(a1 + 32) unmanagedASAMConfirmationViewController];
  [v4 removeContentViewController:v5 withUserInteractionEnabled:1 forService:*(a1 + 32) context:0 completion:0];

  [*(a1 + 32) setUnmanagedASAMConfirmationViewController:0];
  v6 = *(a1 + 40);
  v9 = @"result";
  v7 = [NSNumber numberWithBool:a2];
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  (*(v6 + 16))(v6, v8, 0);
}

__n128 sub_8B78(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(a1 + 40);
  *(v1 + 20) = *(a1 + 52);
  *(v1 + 8) = result;
  return result;
}

void sub_8BA8(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = GAXLocString(@"SESSION_STARTED");
    if ((AXDeviceHasHomeButton() & 1) == 0)
    {
      v3 = AXLocStringKeyForHomeButtonAndExclusiveModel();
      v4 = GAXLocString(v3);

      v5 = [v2 stringByAppendingFormat:@"\n%@", v4];

      v2 = v5;
    }

    v6 = [*(a1 + 32) objectForKeyedSubscript:@"time restrictions enabled"];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = GAXLocString(@"TIME_RESTRICTION_APP_TIME_REMAINING_CENTER_BANNER");
      v9 = [*(a1 + 32) objectForKeyedSubscript:@"time restriction duration"];
      v10 = GAXLocalizedStringForTimeDuration([v9 integerValue] * 60.0);
      v11 = [NSString stringWithFormat:v8, v10];

      v12 = [v2 stringByAppendingFormat:@"\n%@", v11];

      v2 = v12;
    }

    v13 = [*(a1 + 40) _showAlertWithText:v2 asBanner:0 isUrgent:0];
  }

  if ([*(a1 + 40) allowsTouch])
  {
    v14 = [*(a1 + 40) _archivedInterestAreaPathsInScreenCoordinatesForInterestAreaViewController:*(a1 + 48)];
  }

  else
  {
    v14 = 0;
  }

  v20 = v14;
  if (*(a1 + 84) == 1)
  {
    v15 = [*(a1 + 40) _archiveInterestAreaPathsForStorage:*(a1 + 56)];
  }

  else
  {
    v15 = 0;
  }

  v16 = [*(a1 + 40) statesForAppRestrictions];
  v17 = objc_opt_new();
  v18 = v17;
  if (v16)
  {
    [v17 setObject:v16 forKey:@"states for restrictions"];
  }

  if (v15)
  {
    [v18 setObject:v15 forKey:@"interest area paths for storage"];
  }

  if (v20)
  {
    [v18 setObject:v20 forKey:@"interest area paths in screen coordinates"];
  }

  if (*(a1 + 64))
  {
    v19 = [NSNumber numberWithBool:1];
    [v18 setObject:v19 forKey:@"requires complete hiding workspace message"];
  }

  (*(*(a1 + 72) + 16))();
}

void sub_8E90(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 interestAreaViewController];
    v4 = [v3 interestAreaPathsForStorage];
    if (v4)
    {
      v5 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
    }

    else
    {
      v5 = 0;
    }

    v10 = [*(a1 + 40) statesForAppRestrictions];
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) interfaceOrientation]);
    v13 = objc_opt_new();
    [v13 setObject:v11 forKey:@"active interface orientation"];
    if (v10)
    {
      [v13 setObject:v10 forKey:@"states for restrictions"];
    }

    if (v5)
    {
      [v13 setObject:v5 forKey:@"interest area paths for storage"];
    }

    v12 = [NSNumber numberWithBool:1];
    [v13 setObject:v12 forKey:@"requires complete hiding workspace message"];

    v9 = v13;
  }

  else
  {
    [*(a1 + 40) _rotateDeviceToCurrentOrientation];
    if (*(a1 + 56) == 1)
    {
      v6 = *(a1 + 40);
      v7 = GAXLocString(@"SESSION_ENDED");
      v8 = [v6 _showAlertWithText:v7 subtitleText:0 iconImage:0 asBanner:0 isUrgent:0 duration:2.1];
    }

    [*(a1 + 40) setPassiveInterestAreaViewController:0];
    v9 = 0;
  }

  v14 = v9;
  (*(*(a1 + 48) + 16))();
}

__n128 sub_9220(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(a1 + 40);
  *(v1 + 20) = *(a1 + 52);
  *(v1 + 8) = result;
  return result;
}

id GAXLocString(void *a1)
{
  v1 = a1;
  if (qword_6D970 != -1)
  {
    sub_339B0();
  }

  if ((AXDeviceHasHomeButton() & 1) != 0 || !AXDeviceIsPad())
  {
    v4 = 0;
LABEL_10:
    v7 = [NSBundle bundleForClass:qword_6D968];
    v8 = [v7 localizedStringForKey:v1 value:&stru_5E950 table:@"GuidedAccess"];

    v4 = v8;
    goto LABEL_11;
  }

  v2 = [NSBundle bundleForClass:qword_6D968];
  v3 = [v1 stringByAppendingString:@"_NHB_IPAD"];
  v4 = [v2 localizedStringForKey:v3 value:&stru_5E950 table:@"GuidedAccess"];

  if (!v4)
  {
    goto LABEL_10;
  }

  if ([v4 isEqualToString:v1])
  {
    goto LABEL_10;
  }

  v5 = [v1 stringByAppendingString:@"_NHB_IPAD"];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v4;
}

uint64_t GAXIsWidescreenPhone()
{
  if (qword_6D980 != -1)
  {
    sub_339C4();
  }

  return byte_6D978;
}

void sub_AC90(id a1)
{
  if (GAXUserInterfaceIdiomIsPhone())
  {
    v2 = +[UIScreen mainScreen];
    [v2 bounds];
    if (v1 > 480.0)
    {
      byte_6D978 = 1;
    }
  }
}

BOOL GAXUserInterfaceIdiomIsPhone()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom] == 0;

  return v1;
}

uint64_t GAXIsMiniPad()
{
  if (qword_6D990 != -1)
  {
    sub_339D8();
  }

  return byte_6D988;
}

void sub_AD84(id a1)
{
  if (GAXUserInterfaceIdiomIsPad())
  {
    v1 = MGCopyAnswer();
    if (v1)
    {
      v2 = v1;
      v3 = CFGetTypeID(v1);
      if (v3 == CFNumberGetTypeID())
      {
        [v2 floatValue];
        v5 = v4;
        v6 = +[UIScreen mainScreen];
        [v6 scale];
        v8 = v5 / v7;

        if (v8 > 132.0)
        {
          byte_6D988 = 1;
        }
      }

      CFRelease(v2);
    }
  }
}

BOOL GAXUserInterfaceIdiomIsPad()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom] == &dword_0 + 1;

  return v1;
}

double GAXMainScreenScale()
{
  if (qword_6D998 != -1)
  {
    sub_339EC();
  }

  return *&qword_6D318;
}

void sub_AEC4(id a1)
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  qword_6D318 = v1;
}

uint64_t sub_C4A8()
{

  return NSRequestConcreteImplementation();
}

void sub_CC04(uint64_t a1)
{
  if (([*(a1 + 32) _hasOverlayUserInterface] & 1) == 0)
  {
    v2 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      [v2 overlayUserInterfaceWasEntirelyRemovedFromViewController:*(a1 + 32)];
    }
  }
}

void sub_D1A0(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 _gaxIsSimpleRectangle]);
  [v5 setObject:v7 forKey:v6];
}

uint64_t sub_D6CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_D6E4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if ([a3 isEqual:*(a1 + 32)])
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (!v5)
    {
      v6 = objc_opt_new();
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v5 addObject:v9];
  }
}

uint64_t sub_D8C4(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (!a3)
  {
    v5 = result;
    result = (*(*(result + 32) + 16))();
    if (*(*(*(v5 + 40) + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t sub_D928(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_DBB8(uint64_t a1, void *a2, void *a3)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_DCA8;
  v10[3] = &unk_5D018;
  v11 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v6 bezierPathByApplyingTransformation:v10];
  v9 = [v6 _gaxIsSimpleRectangle];

  [v8 _gaxSetSimpleRectangle:v9];
  [*(a1 + 32) setObject:v8 forKey:v7];
}

void sub_DE48(uint64_t a1, void *a2, void *a3)
{
  key = a3;
  v5 = *(a1 + 40);
  v6 = a2;
  CFDictionarySetValue(v5, key, v6);
  v7 = [*(a1 + 32) objectForKey:v6];

  if (v7)
  {
    v8 = key;
    [v8 _gaxSetSimpleRectangle:{objc_msgSend(v7, "BOOLValue")}];
  }
}

void sub_DFE4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) objectForKey:v8];
    if (objc_opt_isKindOfClass())
    {
      v7 = [*(a1 + 32) objectForKey:v5];
    }

    else
    {
      v7 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_E198(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 bounds];
  v3 = NSStringFromCGRect(v5);
  [v2 appendFormat:@"\n\tpath: %@", v3];
}

id *sub_EFCC(id *result, int a2)
{
  if (a2)
  {
    return [result[4] setHidden:1];
  }

  return result;
}

id *sub_F1F0(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _enumerateSpecialControlsUsingBlock:&stru_5D180];
  }

  return result;
}

id sub_F640(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 _enumerateSpecialControlsUsingBlock:&stru_5D1C0];
}

void sub_F694(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) clippedViews];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7) setHidden:1];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [*(a1 + 32) _enumerateSpecialControlsUsingBlock:&stru_5D1E0];
  }
}

id sub_F7B8(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 _enumerateSpecialControlsUsingBlock:&stru_5D220];
}

id *sub_F80C(id *result, int a2)
{
  if (a2)
  {
    return [result[4] setHidden:1];
  }

  return result;
}

void sub_10330(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndex:a2];
  [v3 removeFromSuperview];
  [*(a1 + 40) addSubview:v3];
}

id *sub_1039C(id *result, int a2)
{
  if (a2)
  {
    return [result[4] removeFromSuperview];
  }

  return result;
}

uint64_t sub_103AC(uint64_t result, unint64_t a2)
{
  v2 = *(*(result + 32) + 8);
  v3 = *(v2 + 24);
  if (v3 > a2)
  {
    *(v2 + 24) = v3 - 1;
  }

  return result;
}

uint64_t sub_103CC(uint64_t result, unint64_t a2)
{
  v2 = *(*(result + 32) + 8);
  v3 = *(v2 + 24);
  if (v3 > a2)
  {
    *(v2 + 24) = v3 - 1;
  }

  return result;
}

void sub_10F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10FA0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 containsPoint:{*(a1 + 40), *(a1 + 48)}];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

void sub_11A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose((v62 - 248), 8);
  _Unwind_Resume(a1);
}

void sub_11AB4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) != 1 || *(a1 + 32) != v3)
  {
    v4 = v3;
    [v3 removeFromSuperview];
    v3 = v4;
  }
}

uint64_t sub_11B14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_11B2C(uint64_t a1, id a2, void *a3, id a4, uint64_t a5, double a6, __n128 a7)
{
  v44 = a7;
  v11 = a3;
  if ([*(a1 + 32) knobPosition] == a2 && objc_msgSend(*(a1 + 32), "associatedInterestAreaPathIndex", *&v44) == a4)
  {
    goto LABEL_32;
  }

  if (a5)
  {
    v12 = a1 + 96;
    v13 = a1 + 104;
    if (*(*(*(a1 + 96) + 8) + 24) >= *(*(*(a1 + 104) + 8) + 24))
    {
      goto LABEL_12;
    }

    do
    {
      v14 = [*(a1 + 56) objectAtIndex:v44.n128_u64[0]];
      v15 = v14;
      if (v14 == *(a1 + 32))
      {

        v15 = 0;
        ++*(*(*v12 + 8) + 24);
      }

      v16 = *(*v12 + 8);
      v17 = *(v16 + 24);
    }

    while (v17 < *(*(*v13 + 8) + 24) && v15 == 0);
    if (!v15)
    {
LABEL_12:
      v19 = a1 + 112;
      v20 = *(*(*(a1 + 112) + 8) + 40);
      if (v20)
      {
        a5 = 1;
        v21 = 56;
LABEL_28:
        v15 = [GAXInterestAreaViewButton buttonWithImage:v20, v44.n128_u64[0]];
        [v15 setCloseButton:a5];
        [*(a1 + v21) addObject:v15];
        ++*(*(*v13 + 8) + 24);
        ++*(*(*v12 + 8) + 24);
        [v15 setUserInteractionEnabled:0];
        goto LABEL_29;
      }

      v24 = [*(a1 + 48) interestAreaViewCloseButtonImage];
      v21 = 56;
      goto LABEL_27;
    }
  }

  else
  {
    v12 = a1 + 72;
    v13 = a1 + 80;
    if (*(*(*(a1 + 72) + 8) + 24) >= *(*(*(a1 + 80) + 8) + 24))
    {
      goto LABEL_23;
    }

    do
    {
      v22 = [*(a1 + 40) objectAtIndex:v44.n128_u64[0]];
      v15 = v22;
      if (v22 == *(a1 + 32))
      {

        v15 = 0;
        ++*(*(*v12 + 8) + 24);
      }

      v16 = *(*v12 + 8);
      v17 = *(v16 + 24);
    }

    while (v17 < *(*(*v13 + 8) + 24) && v15 == 0);
    if (!v15)
    {
LABEL_23:
      v19 = a1 + 88;
      v20 = *(*(*(a1 + 88) + 8) + 40);
      if (v20)
      {
        a5 = 0;
        v21 = 40;
        goto LABEL_28;
      }

      v24 = [*(a1 + 48) interestAreaViewResizingKnobButtonImage];
      v21 = 40;
LABEL_27:
      v25 = *(*v19 + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;

      v20 = *(*(*v19 + 8) + 40);
      goto LABEL_28;
    }
  }

  *(v16 + 24) = v17 + 1;
LABEL_29:
  if ((*(*(*(a1 + 120) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 64) _scaleFactorForSpecialControls];
    v27 = *(*(a1 + 128) + 8);
    CGAffineTransformMakeScale(&v48, v28, v28);
    v30 = *&v48.c;
    v29 = *&v48.tx;
    v27[2] = *&v48.a;
    v27[3] = v30;
    v27[4] = v29;
    *(*(*(a1 + 120) + 8) + 24) = 1;
  }

  [v15 setKnobPosition:a2];
  [v15 setAssociatedInterestAreaPathIndex:a4];
  [v15 setAlpha:*(a1 + 136)];
  v31 = *(*(a1 + 128) + 8);
  v46 = v31[3];
  v47 = v31[4];
  *&v48.a = v31[2];
  *&v48.c = v46;
  *&v48.tx = v47;
  [v15 setTransform:&v48];
  [v11 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  [*(a1 + 64) _constrainedFrameForInsetFrame:a4 forInterestAreaPathAtIndex:?];
  memset(&v48, 0, sizeof(v48));
  GAX_CGAffineTransformMakeWithSourceAndDestinationFrames(&v48, v33, v35, v37, v39, v40, v41, v42, v43);
  [v15 gax_setCenter:1 alignWithGrid:{vaddq_f64(*&v48.tx, vmlaq_n_f64(vmulq_n_f64(*&v48.c, v44.n128_f64[0]), *&v48.a, a6))}];
  [*(a1 + 64) addSubview:v15];

LABEL_32:
}

void sub_11EEC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) interestAreaView:v6 visibleKnobPositionsForInterestAreaPathAtIndex:a3];
  v8 = [*(a1 + 40) interestAreaView:*(a1 + 32) shouldAddCloseButtonForInterestAreaPathAtIndex:a3];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_11FDC;
  v11[3] = &unk_5D350;
  v9 = *(a1 + 48);
  v12 = v5;
  v13 = v9;
  v14 = a3;
  v10 = v5;
  [v6 _enumerateSpecialControlPropertiesForInterestAreaPath:v10 visibleKnobPositions:v7 hasCloseButton:v8 usingBlock:v11];
}

void sub_12444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1246C(void *a1, void *a2)
{
  v13 = a2;
  v4 = [v13 superview];
  v5 = v4;
  if (v4 != a1[4])
  {

    goto LABEL_10;
  }

  v6 = a1[5];
  if (v6)
  {
    v7 = (*(v6 + 16))(v6, v13);

    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  [v13 center];
  AX_CGPointGetDistanceToPoint();
  v9 = v8;
  v10 = *(a1[6] + 8);
  v12 = *(v10 + 40);
  v11 = (v10 + 40);
  if (!v12 || v8 < *(*(a1[7] + 8) + 24))
  {
    objc_storeStrong(v11, a2);
    *(*(a1[7] + 8) + 24) = v9;
  }

LABEL_10:
}

void sub_12B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_12BA4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 containsPoint:{*(a1 + 40), *(a1 + 48)}];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_13D94(uint64_t a1, id a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  CGContextAddPath(v4, [a2 CGPath]);
  v6 = *(a1 + 32);

  CGContextStrokePath(v6);
}

void sub_141D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_141F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_14208(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (!v6)
  {
    v7 = objc_opt_new();
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v6 addPath:v10 withParentPath:v5];
}

void sub_14EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_14F20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 containsPoint:{*(a1 + 40), *(a1 + 48)}];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void sub_15250(uint64_t a1, void *a2)
{
  v3 = [a2 equivalentPathForDirection:0];
  [*(a1 + 32) _beginInterestAreaPathsUpdate];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = *(a1 + 32);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_15460;
  v13 = &unk_5D4E0;
  v5 = v3;
  v14 = v5;
  v15 = &v16;
  [v4 _enumerateInterestAreaPathsUsingBlock:&v10];
  if (*(v17 + 24) == 1)
  {

    v5 = 0;
LABEL_8:
    [*(a1 + 32) setFingerPath:{0, v10, v11, v12, v13}];
    v8 = *(a1 + 48);
    v9 = [NSIndexSet indexSetWithIndex:0];
    [v8 deleteDynamicInterestAreaPathAtIndices:v9];

    [*(a1 + 32) _updateBackgroundVisibilityAnimated:1];
    [*(a1 + 32) _didFinishRecordingCurrentSequenceOfTouchEvents];
    goto LABEL_9;
  }

  if (!v5 || ([v5 isEmpty] & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v5 == *(a1 + 40))
  {
    [*(a1 + 32) _updateInterestAreaPathsWithPath:v5 updatedInterestAreaPathAlreadyAdded:0];
    goto LABEL_8;
  }

  v6 = [[GAXPathInterpolator alloc] initWithStartingPath:*(a1 + 40) endingPath:v5];
  [*(a1 + 32) setPathInterpolator:v6];
  +[NSDate timeIntervalSinceReferenceDate];
  [*(a1 + 32) setSnapAnimationDidStartTimeInterval:?];
  v7 = +[AXDisplayLinkManager currentDisplayLinkManager];
  [v7 addTarget:*(a1 + 32) selector:"_displayDidRefresh:"];

  [*(a1 + 32) _updateBackgroundVisibilityAnimated:0];
LABEL_9:
  [*(a1 + 32) _endInterestAreaPathsUpdate];

  _Block_object_dispose(&v16, 8);
}

void sub_15440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_15460(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 containsPath:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void sub_164DC(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Unwind_Resume(a1);
}

void sub_1659C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v17 = a2;
  v7 = a3;
  if (*(a1 + 64) == 1)
  {
    if (!v17)
    {
      goto LABEL_13;
    }

    v8 = *(a1 + 32);
    if (v8 == v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!v17)
    {
      goto LABEL_13;
    }

    v8 = *(a1 + 32);
  }

  v9 = [*(a1 + 40) styleProvider];
  [v9 marginOfErrorForDecidingToMergeInterestAreaPaths];
  v10 = [v8 containsPath:v17 withMarginOfError:?];

  if (v10)
  {
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v11 = objc_opt_new();
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v14 = objc_opt_new();
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    [*(*(*(a1 + 48) + 8) + 40) addObject:v17];
    [*(*(*(a1 + 56) + 8) + 40) addIndex:a4];
  }

LABEL_13:
}

uint64_t sub_166EC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    if (a3)
    {
      v11 = v5;
      if ([*(*(*(a1 + 32) + 8) + 40) containsObject:a3])
      {
        v6 = *(*(*(a1 + 40) + 8) + 40);
        if (!v6)
        {
          v7 = objc_opt_new();
          v8 = *(*(a1 + 40) + 8);
          v9 = *(v8 + 40);
          *(v8 + 40) = v7;

          v6 = *(*(*(a1 + 40) + 8) + 40);
        }

        [v6 addObject:v11];
      }
    }
  }

  return _objc_release_x1();
}

void sub_16A60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _parentOfInterestAreaPath:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_16D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_16D78(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10 && *(a1 + 32) == v5)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (!v6)
    {
      v7 = objc_opt_new();
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v6 addObject:v10];
  }
}

void sub_16F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_16F68(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (*(a1 + 32) != v10 && [v10 intersectsPath:?])
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (!v6)
    {
      v7 = objc_opt_new();
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v6 addObject:v10];
  }
}

void sub_17470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_17488(uint64_t a1, unint64_t a2)
{
  if (*(*(*(a1 + 48) + 8) + 24) > a2)
  {
    v5 = [*(a1 + 32) objectAtIndex:a2];
    [*(a1 + 40) removePath:v5];
    [*(a1 + 32) removeObjectAtIndex:a2];
    --*(*(*(a1 + 48) + 8) + 24);
  }
}

double sub_178E4(uint64_t a1)
{
  [*(a1 + 32) convertPoint:*(a1 + 40) toView:?];
  v3 = *(a1 + 40);
  if (v3)
  {
    [v3 convertPoint:0 toWindow:?];
    [*(a1 + 40) _convertPointToSceneReferenceSpace:?];
  }

  if (*(a1 + 72) == 1 && (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return *(a1 + 56) - result;
  }

  return result;
}

id sub_17C00(uint64_t a1, double a2, double a3)
{
  if ((*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    a2 = *(a1 + 56) - a2;
    a3 = *(a1 + 64) - a3;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 _convertPointFromSceneReferenceSpace:{a2, a3}];
    [*(a1 + 32) convertPoint:0 fromWindow:?];
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);

  return [v6 convertPoint:v5 fromView:?];
}

void sub_17EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_17ED8(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  v8 = a3;
  if (*(a1 + 32) != v9 && [v9 containsPoint:{*(a1 + 48), *(a1 + 56)}])
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a5 = 1;
  }
}

id sub_183C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = [a3 isEqual:*(a1 + 32)];
  if (result)
  {
    v7 = *(a1 + 40);

    return [v7 addIndex:a4];
  }

  return result;
}

void sub_19488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_194B8(uint64_t a1, double *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = a2[2];
  if (a3)
  {
    v8 = *(*(*(a1 + 32) + 8) + 24);
    v9 = *(a1 + 56);
    if (v8 <= v9 && v9 < v7)
    {
      v12 = (v9 - v8) / (v7 - v8);
      InterpolatedPointInSegmentToPoint = GAX_CGPointGetInterpolatedPointInSegmentToPoint(*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), *a2, a2[1], v12);
      v14 = *(*(a1 + 40) + 8);
      *(v14 + 32) = InterpolatedPointInSegmentToPoint;
      *(v14 + 40) = v15;
      *a4 = 1;
    }
  }

  v16 = *(*(a1 + 48) + 8);
  *(v16 + 32) = v5;
  *(v16 + 40) = v6;
  *(*(*(a1 + 32) + 8) + 24) = v7;
}

void sub_19690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_196A8(uint64_t a1, double *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a2 + 2);
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(*(v6 + 8) + 48);
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_197C0;
    v17 = &unk_5D710;
    v20 = v8;
    v21 = v5;
    v19 = v6;
    v9 = *(a2 + 1);
    v22 = *a2;
    v23 = v9;
    v24 = *(a2 + 2);
    v18 = *(a1 + 32);
    [v7 enumerateLinePointsContextsUsingBlock:&v14];
    v10 = *(a2 + 10);
    if (v10 == 4)
    {
      [*(a1 + 32) closePath];
    }

    else if (v10 == 1)
    {
      [*(a1 + 32) addLineToPoint:{*a2, a2[1], v14, v15, v16, v17}];
    }
  }

  else
  {
    [*(a1 + 32) moveToPoint:{*a2, a2[1]}];
  }

  v11 = *(*(a1 + 48) + 8);
  result = *a2;
  v13 = *(a2 + 2);
  *(v11 + 48) = *(a2 + 1);
  *(v11 + 64) = v13;
  *(v11 + 32) = result;
  return result;
}

double *sub_197C0(double *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = result[6];
  if (v3 < v2)
  {
    v4 = result;
    v5 = result[7];
    if (v2 < v5)
    {
      v6 = v2 - v3;
      v7 = v6 / (v5 - v3);
      InterpolatedPointInSegmentToPoint = GAX_CGPointGetInterpolatedPointInSegmentToPoint(*(*(*(result + 5) + 8) + 32), *(*(*(result + 5) + 8) + 40), result[8], result[9], v7);
      v9 = *(v4 + 4);

      return [v9 addLineToPoint:InterpolatedPointInSegmentToPoint];
    }
  }

  return result;
}

void sub_19D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 216), 8);
  _Unwind_Resume(a1);
}

__n128 sub_19DAC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(a1 + 32) + 8);
  result = *a2;
  v6 = *(a2 + 32);
  *(v4 + 48) = *(a2 + 16);
  *(v4 + 64) = v6;
  *(v4 + 32) = result;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  *a4 = 1;
  return result;
}

uint64_t sub_19DDC(double *a1, __int128 *a2)
{
  v3 = *(*(*(a1 + 4) + 8) + 56);
  v4 = a2[5];
  v17[4] = a2[4];
  v17[5] = v4;
  v17[6] = a2[6];
  v18 = *(a2 + 14);
  v5 = a2[1];
  v17[0] = *a2;
  v17[1] = v5;
  v6 = a2[3];
  v17[2] = a2[2];
  v17[3] = v6;
  *&v6 = a1[5];
  v7 = a1[6];
  v19 = 0.0;
  v20 = 0.0;
  result = GAXPathLineSegmentGetAdjustedAngleRangeForComparingAngleFormedWithCenter(v17, &v20, &v19, v3, *&v6, v7);
  if ((v3 - v20) * (v3 - v19) <= 0.0)
  {
    Count = AXCArrayGetCount();
    _AXCArrayPrepareForInsertingElementAtIndex();
    result = _AXCArrayGetUnderlyingArray();
    v10 = result + 120 * Count;
    v11 = a2[3];
    v13 = *a2;
    v12 = a2[1];
    *(v10 + 32) = a2[2];
    *(v10 + 48) = v11;
    *v10 = v13;
    *(v10 + 16) = v12;
    v15 = a2[5];
    v14 = a2[6];
    v16 = a2[4];
    *(v10 + 112) = *(a2 + 14);
    *(v10 + 80) = v15;
    *(v10 + 96) = v14;
    *(v10 + 64) = v16;
  }

  return result;
}

uint64_t sub_19ED4(uint64_t a1, unsigned int a2, CGPoint *a3, uint64_t a4, uint64_t a5)
{
  v16 = CGPointZero;
  if (a2 > 1)
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  else
  {
    [*(a1 + 32) distanceFromStartingPointForPointWithElementIndex:a5];
    v16 = *a3;
    [*(a1 + 40) _pointFromStartingPointAtDistance:*(a1 + 48) inPath:v8 / *(a1 + 56) * *(a1 + 64)];
    x = v9;
    y = v11;
  }

  Count = AXCArrayGetCount();
  _AXCArrayPrepareForInsertingElementAtIndex();
  result = _AXCArrayGetUnderlyingArray();
  v15 = result + 40 * Count;
  *v15 = a2;
  *(v15 + 4) = 0;
  *(v15 + 8) = v16;
  *(v15 + 24) = x;
  *(v15 + 32) = y;
  return result;
}

int sub_1A888(id a1, const void *a2, const void *a3)
{
  if (*a2 >= *a3)
  {
    result = 1;
  }

  else
  {
    result = -1;
  }

  if (*a2 == *a3)
  {
    v4 = *(a2 + 1);
    v5 = *(a3 + 1);
    if (v4 >= v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    if (v4 == v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

uint64_t sub_1AD30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1AD48(uint64_t a1, void *a2)
{
  v3 = [a2 smoothPathForFingerPath:*(*(*(a1 + 32) + 8) + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    v3 = (v5 + 40);
    if (v4 != v6)
    {
      v8 = v4;
      objc_storeStrong(v3, v4);
      v4 = v8;
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_1ADC0(void *a1, void *a2, _BYTE *a3)
{
  v6 = *(*(a1[4] + 8) + 40);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [a2 needsRotatedFingerPathToMinimizeBoundsArea])
  {
    if (!*(*(a1[5] + 8) + 40))
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1B05C;
      v27[3] = &unk_5D840;
      v27[4] = a1[4];
      v7 = objc_retainBlock(v27);
      [GAXMathUtilities minimizeFunctionWithBlock:v7 intervalStart:0.0 intervalEnd:1.57079633 precision:0.0174532925];
      *(*(a1[6] + 8) + 24) = v8;
      v9 = [*(*(a1[4] + 8) + 40) copy];
      v10 = *(a1[5] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = *(*(a1[5] + 8) + 40);
      CGAffineTransformMakeRotation(&v26, *(*(a1[6] + 8) + 24));
      [v12 applyTransform:&v26];
    }

    v13 = *(*(a1[6] + 8) + 24);
    if (fabs(v13 + -1.57079633) > 0.174532925 && fabs(v13) > 0.174532925)
    {
      v14 = *(*(a1[5] + 8) + 40);

      v6 = v14;
    }
  }

  v25 = 0.0;
  v15 = [a2 smoothPathForFingerPath:v6 probabilityOfMatch:&v25];
  if (v15)
  {
    v16 = *(a1[7] + 8);
    v18 = *(v16 + 40);
    v17 = (v16 + 40);
    if (v15 != v18 && v25 > *(*(a1[8] + 8) + 24))
    {
      if (v6 == *(*(a1[5] + 8) + 40))
      {
        v19 = [v15 copy];
        v20 = *(a1[7] + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        v22 = *(*(a1[7] + 8) + 40);
        CGAffineTransformMakeRotation(&v24, *(*(a1[6] + 8) + 24));
        CGAffineTransformInvert(&v26, &v24);
        [v22 applyTransform:&v26];
      }

      else
      {
        objc_storeStrong(v17, v15);
      }

      v23 = v25;
      *(*(a1[8] + 8) + 24) = v25;
      if (v23 > 0.95)
      {
        *a3 = 1;
      }
    }
  }
}

double sub_1B05C(uint64_t a1, CGFloat a2)
{
  v3 = [*(*(*(a1 + 32) + 8) + 40) copy];
  CGAffineTransformMakeRotation(&v11, a2);
  [v3 applyTransform:&v11];
  [v3 bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v8 = CGRectGetWidth(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v9 = v8 * CGRectGetHeight(v13);

  return v9;
}

uint64_t sub_1B108(uint64_t a1, void *a2)
{
  v3 = [a2 smoothPathForFingerPath:*(*(*(a1 + 32) + 8) + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    v3 = (v5 + 40);
    if (v4 != v6)
    {
      v8 = v4;
      objc_storeStrong(v3, v4);
      v4 = v8;
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_1B3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

double sub_1B3E0(uint64_t a1, unsigned int a2, double *a3)
{
  if (a2 <= 1)
  {
    GAX_CGPointGetAngleFormedBySegmentToPoint(*(a1 + 48), *(a1 + 56), *a3);
    v5 = v4;
    __sincos_stret(v4);
    v6 = vabdd_f64(v5, *(*(*(a1 + 32) + 8) + 24)) / 6.28318531;
    AX_CGPointGetDistanceToPoint();
    v8 = *(*(a1 + 40) + 8);
    result = *(v8 + 24) + v7 / *(a1 + 72) * v6;
    *(v8 + 24) = result;
    *(*(*(a1 + 32) + 8) + 24) = v5;
  }

  return result;
}

void sub_1BAE8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = GAXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_33B5C();
    }
  }
}

void sub_1BF64(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  v4 = [v3 objectForKey:@"GAXIPCPayloadKeyShouldAbortServerModeTransition"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Transition was aborted by system app.", v10, 2u);
    }

    v7 = 0;
  }

  else
  {
    v7 = objc_alloc_init(GAXSpringboardClientStatus);
    v8 = [v3 objectForKey:@"GAXIPCPayloadKeyFrontmostAppName"];
    [(GAXSpringboardClientStatus *)v7 setSessionApplicationName:v8];

    v9 = [v3 objectForKey:@"GAXIPCPayloadKeyFrontmostArchivedAppIcon"];
    [(GAXSpringboardClientStatus *)v7 setArchivedSessionApplicationIcon:v9];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1C6F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = AXLogIPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_33C50();
    }
  }

  else
  {
    v7 = [a2 payload];
    v8 = [v7 objectForKey:@"GAXIPCPayloadKeyNewPasscodeLength"];
    [v8 unsignedIntegerValue];
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_1DD08(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (a2 <= 1)
  {
    v3 = result;
    v4 = *a3;
    v5 = *(a3 + 8);
    GAX_CGPointGetAngleFormedBySegmentToPoint(*(result + 40), *(result + 48), *a3);
    v7 = v3[7];
    if (v7)
    {
      v8 = (v3[8] + 16);
      v9 = 1;
      while ((v6 - *(v8 - 1)) * (v6 - *v8) > 0.0)
      {
        v8 += 3;
        if (!--v7)
        {
          goto LABEL_9;
        }
      }

      v9 = *(v8 - 2);
    }

    else
    {
      v9 = 1;
    }

LABEL_9:
    if (v9 != *(*(v3[4] + 8) + 24))
    {
      Count = AXCArrayGetCount();
      if (Count)
      {
        v11 = Count;
        v12 = 0;
        for (i = 0; i != v11; ++i)
        {
          if (i >= AXCArrayGetCount())
          {
            AXCArrayGetCount();
            _AXAssert();
          }

          v17 = *(_AXCArrayGetUnderlyingArray() + v12);
          v14 = AXCArrayGetCount();
          _AXCArrayPrepareForInsertingElementAtIndex();
          *(_AXCArrayGetUnderlyingArray() + 16 * v14) = v17;
          v12 += 16;
        }
      }

      AXCArrayRemoveAllElements();
      *(*(v3[4] + 8) + 24) = v9;
    }

    v15 = AXCArrayGetCount();
    _AXCArrayPrepareForInsertingElementAtIndex();
    result = _AXCArrayGetUnderlyingArray();
    v16 = (result + 16 * v15);
    *v16 = v4;
    *(v16 + 1) = v5;
  }

  return result;
}

id sub_1EC48(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) transitionDuration];

  return [v1 _updateHostedApplicationViewWithAnimationDuration:? targetSize:?];
}

void sub_20DF0(uint64_t a1)
{
  [*(a1 + 32) _updateEverythingForLayoutMode:*(a1 + 40)];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

uint64_t sub_20E4C(uint64_t a1)
{
  [*(a1 + 32) _didFinishTransitionWithType:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_20FD4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) setTransitionInProgress:0];
  v12 = [*(a1 + 32) transitionContextQueue];
  v3 = [v12 count];
  v4 = v12;
  if (v3)
  {
    v5 = [v12 ax_dequeueObject];
    v6 = *(a1 + 32);
    v7 = [v5 type];
    v8 = [v5 completion];
    [v6 _performOrScheduleTransitionWithType:v7 completion:v8];

    v9 = [*(a1 + 32) transitionContextQueue];
    v10 = [v9 count];

    if (!v10)
    {
      [*(a1 + 32) setTransitionContextQueue:0];
    }

    v4 = v12;
  }

  return _objc_release_x1(v3, v4);
}

id sub_21300(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 48) * 0.5;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_213B8;
    v5[3] = &unk_5CD48;
    v6 = *(a1 + 32);
    [UIView animateWithDuration:v5 animations:v3];
  }

  return [*(a1 + 40) removeFromSuperview];
}

id *sub_215CC(id *result, unsigned int a2, double *a3)
{
  v4 = result;
  if (a2 > 1)
  {
    if (a2 == 4)
    {
      v6 = result[5];

      return [v6 closePath];
    }
  }

  else
  {
    [result[4] gax_convertPointToDeviceCoordinates:{*a3, a3[1]}];
    v5 = v4[5];
    if (a2)
    {

      return [v5 addLineToPoint:?];
    }

    else
    {

      return [v5 moveToPoint:?];
    }
  }

  return result;
}

void sub_2166C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) interestAreaView];
  [v4 contentsBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [v3 allValues];
  if (![v13 count])
  {
    goto LABEL_14;
  }

  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v18 = v13;
  v19 = [v18 countByEnumeratingWithState:&v51 objects:v55 count:16];
  v49 = v8;
  v50 = v6;
  v47 = v12;
  v48 = v10;
  if (v19)
  {
    v20 = v19;
    v21 = *v52;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v52 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v56 = NSRectFromString(*(*(&v51 + 1) + 8 * i));
        v23 = v56.origin.x;
        v24 = v56.origin.y;
        v25 = v56.size.width;
        v26 = v56.size.height;
        v56.origin.x = x;
        v56.origin.y = y;
        v56.size.width = width;
        v56.size.height = height;
        if (CGRectIsNull(v56))
        {
          height = v26;
          width = v25;
          y = v24;
          x = v23;
        }

        else
        {
          v57.origin.x = x;
          v57.origin.y = y;
          v57.size.width = width;
          v57.size.height = height;
          v67.origin.x = v23;
          v67.origin.y = v24;
          v67.size.width = v25;
          v67.size.height = v26;
          v58 = CGRectUnion(v57, v67);
          x = v58.origin.x;
          y = v58.origin.y;
          width = v58.size.width;
          height = v58.size.height;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v20);
  }

  [*(a1 + 40) bounds];
  v27 = v59.origin.x;
  v28 = v59.origin.y;
  v29 = v59.size.width;
  v30 = v59.size.height;
  v46 = CGRectGetWidth(v59);
  v60.origin.x = v27;
  v60.origin.y = v28;
  v60.size.width = v29;
  v60.size.height = v30;
  v31 = v46 * CGRectGetHeight(v60);
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  v32 = CGRectGetWidth(v61);
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v33 = v32 * CGRectGetHeight(v62) * 9.0 <= v31;
  v8 = v49;
  v6 = v50;
  v12 = v47;
  v10 = v48;
  if (v33 || ([*(a1 + 48) gax_convertRectFromDeviceCoordinates:{x, y, width, height}], v68.origin.x = v50, v68.origin.y = v49, v68.size.width = v48, v68.size.height = v47, v64 = CGRectIntersection(v63, v68), +[UIBezierPath bezierPathWithRect:](UIBezierPath, "bezierPathWithRect:", v64.origin.x, v64.origin.y, v64.size.width, v64.size.height), (v34 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_14:
    v35 = [UIBezierPath smoothPathForFingerPath:*(a1 + 40)];
    v34 = [v35 bezierPathConstrainedToFrame:{v6, v8, v10, v12}];
  }

  v36 = [*(a1 + 56) styleProvider];
  v37 = v36;
  if (v36)
  {
    [v36 minimumSizeForInterestAreaPath];
    v39 = v38;
    v41 = v40;
    [v34 bounds];
    v42 = v65.origin.x;
    v43 = v65.origin.y;
    v44 = v65.size.width;
    v45 = v65.size.height;
    if (CGRectGetWidth(v65) < v39 || (v66.origin.x = v42, v66.origin.y = v43, v66.size.width = v44, v66.size.height = v45, CGRectGetHeight(v66) < v41))
    {

      v34 = 0;
    }
  }

  (*(*(a1 + 64) + 16))();
}

void sub_2399C(id a1)
{
  v15[0] = @"GAXFeatureViewIdentifierKey";
  v15[1] = @"GAXFeatureViewIconKey";
  v16[0] = @"GAXProfileAllowsLockButton";
  v16[1] = @"hardwareFeatureViewLockIcon";
  v15[2] = @"GAXFeatureViewLocalizedTextKey";
  v1 = AXLocStringKeyForModel();
  v2 = AXLocStringKeyForHomeButton();
  v16[2] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  v17[0] = v3;
  v13[0] = @"GAXFeatureViewIdentifierKey";
  v13[1] = @"GAXFeatureViewIconKey";
  v14[0] = @"GAXProfileAllowsVolumeButtons";
  v14[1] = @"hardwareFeatureViewVolumeIcon";
  v13[2] = @"GAXFeatureViewLocalizedTextKey";
  v14[2] = @"HARDWARE_FEATURE_VOLUME";
  v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  v17[1] = v4;
  v11[0] = @"GAXFeatureViewIdentifierKey";
  v11[1] = @"GAXFeatureViewIconKey";
  v12[0] = @"GAXProfileAllowsMotion";
  v12[1] = @"systemFeatureViewMotionIcon";
  v11[2] = @"GAXFeatureViewLocalizedTextKey";
  v12[2] = @"SYS_FEATURE_MOTION";
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  v17[2] = v5;
  v9[0] = @"GAXFeatureViewIdentifierKey";
  v9[1] = @"GAXFeatureViewIconKey";
  v10[0] = @"GAXProfileAllowsKeyboardTextInput";
  v10[1] = @"systemFeatureViewKeyboardIcon";
  v9[2] = @"GAXFeatureViewLocalizedTextKey";
  v10[2] = @"SYS_FEATURE_KEYBOARD_TEXT_INPUT";
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  v17[3] = v6;
  v7 = [NSArray arrayWithObjects:v17 count:4];
  v8 = qword_6D9A0;
  qword_6D9A0 = v7;
}

void sub_23C50(id a1)
{
  v4[0] = @"GAXFeatureViewIdentifierKey";
  v4[1] = @"GAXFeatureViewIconKey";
  v5[0] = @"GAXProfileAllowsTouch";
  v5[1] = @"systemFeatureViewTouchIcon";
  v4[2] = @"GAXFeatureViewLocalizedTextKey";
  v5[2] = @"SYS_FEATURE_TOUCH";
  v1 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];
  v6 = v1;
  v2 = [NSArray arrayWithObjects:&v6 count:1];
  v3 = qword_6D9B0;
  qword_6D9B0 = v2;
}

void sub_23ED0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 iconForAppRestrictionWithIdentifier:v4];
  v5 = [*(a1 + 32) textForAppRestrictionWithIdentifier:v4];
  v6 = [*(a1 + 32) detailTextForAppRestrictionWithIdentifier:v4];
  [*(a1 + 32) appRestrictionStateForIdentifier:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_240B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [v3 objectForKeyedSubscript:@"GAXFeatureViewIdentifierKey"];
  v4 = *(a1 + 32);
  v5 = [v3 objectForKeyedSubscript:@"GAXFeatureViewIconKey"];
  v6 = [v4 valueForKey:v5];

  v7 = [v3 objectForKeyedSubscript:@"GAXFeatureViewLocalizedTextKey"];

  v8 = GAXLocString(v7);

  [*(a1 + 40) isFeatureEnabledForIdentifier:v9];
  (*(*(a1 + 48) + 16))();
}

void sub_242C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [v3 objectForKeyedSubscript:@"GAXFeatureViewIdentifierKey"];
  v4 = *(a1 + 32);
  v5 = [v3 objectForKeyedSubscript:@"GAXFeatureViewIconKey"];
  v6 = [v4 valueForKey:v5];

  v7 = [v3 objectForKeyedSubscript:@"GAXFeatureViewLocalizedTextKey"];

  v8 = GAXLocString(v7);

  [*(a1 + 40) isFeatureEnabledForIdentifier:v9];
  (*(*(a1 + 48) + 16))();
}

void sub_25194(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [*(a1 + 32) instructionsLabel];
  [v2 setAlpha:v1];
}

void sub_253BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [GAXFeatureView systemFeatureViewWithIdentifier:a2 icon:a3 text:a4 initialState:a5 styleProvider:*(a1 + 32)];
  [v7 setDelegate:*(a1 + 40)];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = v7;
  if (v7)
  {
    [*(a1 + 48) addObject:v7];
    v6 = v7;
  }
}

void sub_256B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = [GAXFeatureView appFeatureViewWithIdentifier:a2 icon:a3 text:a4 detailText:a5 initialState:a6 styleProvider:*(a1 + 32)];
  [v7 setDelegate:*(a1 + 40)];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(a1 + 48) addObject:v7];
}

void sub_25828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [GAXFeatureView hardwareFeatureViewWithIdentifier:a2 icon:a3 text:a4 initialState:a5 styleProvider:*(a1 + 32)];
  [v6 setDelegate:*(a1 + 40)];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(a1 + 48) addObject:v6];
}

void sub_25BD8(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [*(a1 + 32) instructionsLabel];
  [v2 setAlpha:v1];
}

void sub_25DB4(uint64_t a1)
{
  v1 = [*(a1 + 32) optionsView];
  [v1 layoutIfNeeded];
}

void sub_25DF8(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) resetCountDownDurationForDatePicker];
    v3 = [*(a1 + 40) optionsView];
    v5 = [v3 featuresScrollView];

    v4 = *(a1 + 32);
    [v4 bounds];
    [v4 convertRect:v5 toView:?];
    [v5 scrollRectToVisible:1 animated:?];
  }
}

void sub_26A8C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [UIVisualEffectView alloc];
  v7 = [*(a1 + 32) featureViewOptionsBlurEffect];
  v8 = [UIVibrancyEffect effectForBlurEffect:v7 style:4];
  v13 = [v6 initWithEffect:v8];

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(a1 + 40) addSubview:v13];
  v9 = [v13 contentView];
  [v9 addSubview:v5];

  v10 = [v13 contentView];
  [v5 ax_constrainLayoutAttribute:3 asEqualToLayoutAttribute:3 ofView:v10];
  [v5 ax_constrainLayoutAttribute:4 asEqualToLayoutAttribute:4 ofView:v10];
  [v5 ax_constrainLayoutAttribute:5 asEqualToLayoutAttribute:5 ofView:v10];
  [v5 ax_constrainLayoutAttribute:6 asEqualToLayoutAttribute:6 ofView:v10];

  v11 = [*(a1 + 48) objectAtIndexedSubscript:a3 + 1];
  [v13 ax_constrainLayoutAttribute:4 asEqualToLayoutAttribute:3 ofView:v11];

  [v13 ax_constrainLayoutAttribute:8 asEqualToConstant:*(a1 + 56)];
  [v13 ax_constrainLayoutAttribute:5 asEqualToValueOfView:*(a1 + 40) withOffset:*(a1 + 64)];
  [v13 ax_constrainLayoutAttribute:6 asEqualToValueOfView:*(a1 + 40) withOffset:*(a1 + 72)];
  v12 = [*(a1 + 48) objectAtIndexedSubscript:a3];
  [v13 ax_constrainLayoutAttribute:3 asEqualToLayoutAttribute:4 ofView:v12];
}

void sub_26C6C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = v5;
  if (a3)
  {
    if (*(a1 + 48) != a3)
    {
      goto LABEL_6;
    }

    v6 = 4;
    v7 = 64;
  }

  else
  {
    v6 = 3;
    v7 = 56;
  }

  [v5 ax_constrainLayoutAttribute:v6 asEqualToValueOfView:*(a1 + 32) withOffset:*(a1 + v7)];
LABEL_6:
  [*(a1 + 40) featureViewMinimumHeight];
  [v8 ax_constrainLayoutAttribute:8 asGreaterThanOrEqualToConstant:? priority:?];
  [v8 ax_constrainLayoutAttribute:5 asEqualToValueOfView:*(a1 + 32) withOffset:*(a1 + 72)];
  [v8 ax_constrainLayoutAttribute:6 asEqualToValueOfView:*(a1 + 32) withOffset:*(a1 + 80)];
}

id sub_26F3C(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundDimmingView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) modalView];
  [v3 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v5 = v4;
  v6 = [*(a1 + 32) modalViewBottomConstraint];
  [v6 setConstant:v5];

  v7 = *(a1 + 32);

  return [v7 layoutIfNeeded];
}

void sub_26FE0(uint64_t a1)
{
  v2 = [*(a1 + 32) superview];
  v3 = [*(a1 + 32) optionsViewPresentationConstraints];
  [v2 removeConstraints:v3];

  [*(a1 + 32) removeFromSuperview];
  v4 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v4, 0);
}

void sub_273AC(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundDimmingView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) modalViewBottomConstraint];
  [v3 setConstant:0.0];

  [*(a1 + 32) layoutIfNeeded];
  v7 = [*(a1 + 32) featuresScrollView];
  v4 = [*(a1 + 32) featuresContentView];
  [v4 frame];
  [v7 setContentSize:{v5, v6}];
}

void sub_27460(uint64_t a1)
{
  v2 = [*(a1 + 32) featuresScrollView];
  [v2 flashScrollIndicators];

  LODWORD(v2) = UIAccessibilityLayoutChangedNotification;
  v3 = [*(a1 + 32) modalView];
  UIAccessibilityPostNotification(v2, v3);
}

void sub_27D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_283E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_28400(id result, unsigned int a2, double *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (a2 <= 1)
  {
    v7 = result;
    v8 = *a3;
    v9 = a3[1];
    v10 = *(result + 6);
    if (v10 == 0.0)
    {
      result = [*(result + 4) containsPoint:{v8, v9}];
    }

    else
    {
      v11 = 0;
      v12 = v14;
      v13 = *a3;
      *v14 = v9;
      *&v14[1] = v8 - v10;
      *&v14[2] = v9 - v10;
      *&v14[3] = v8 + v10;
      *&v14[4] = v9 - v10;
      *&v14[5] = v8 + v10;
      *&v14[6] = v9 + v10;
      *&v14[7] = v8 - v10;
      *&v14[8] = v9 + v10;
      do
      {
        result = [v7[4] containsPoint:{*(v12 - 1), *v12}];
        if (v11 > 3)
        {
          break;
        }

        ++v11;
        v12 += 2;
      }

      while ((result & 1) == 0);
    }

    if ((result & 1) == 0)
    {
      *(*(v7[5] + 1) + 24) = 0;
      *a6 = 1;
    }
  }

  return result;
}

void sub_28690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id *sub_286A8(id *result, unsigned int a2, double *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (a2 <= 1)
  {
    v7 = result;
    result = [result[4] containsPoint:{*a3, a3[1]}];
    if (result)
    {
      *(*(v7[5] + 1) + 24) = 1;
      *a6 = 1;
    }
  }

  return result;
}

id *sub_286FC(id *result, unsigned int a2, double *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (a2 <= 1)
  {
    v7 = result;
    result = [result[4] containsPoint:{*a3, a3[1]}];
    if (result)
    {
      *(*(v7[5] + 1) + 24) = 1;
      *a6 = 1;
    }
  }

  return result;
}

double sub_28824(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 72);
  if (v2 * v3 < 0.0)
  {
    v4 = (*(a2 + 96) & 1) != 0 ? *a2 : (*(a1 + 48) - *(a2 + 112)) / *(a2 + 104);
    if (v4 < *(a1 + 40))
    {
      if (v2 * 3.14159265 >= 0.0)
      {
        if (v3 * 3.14159265 < 0.0)
        {
          v3 = v3 + 6.28318531;
        }
      }

      else
      {
        v2 = v2 + 6.28318531;
      }
    }
  }

  v5 = *(*(a1 + 32) + 8);
  result = v3 - v2 + *(v5 + 24);
  *(v5 + 24) = result;
  return result;
}

void sub_28B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_28B5C(uint64_t a1, unsigned int a2, CGPoint *a3)
{
  v9 = CGPointZero;
  if (a2 <= 1)
  {
    v9 = *a3;
  }

  Count = AXCArrayGetCount();
  _AXCArrayPrepareForInsertingElementAtIndex();
  *(_AXCArrayGetUnderlyingArray() + 4 * Count) = a2;
  v6 = AXCArrayGetCount();
  _AXCArrayPrepareForInsertingElementAtIndex();
  UnderlyingArray = _AXCArrayGetUnderlyingArray();
  result = v9;
  *(UnderlyingArray + 16 * v6) = v9;
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

double sub_28CF4(double *a1, double a2, double a3)
{
  AX_CGPointGetDistanceToPoint();
  v7 = v6 - a1[6];
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7 / v6;
  v9 = a1[4];
  v10 = a1[5];

  return GAX_CGPointGetInterpolatedPointInSegmentToPoint(v9, v10, a2, a3, v8);
}

void *sub_28E3C(void *result, unsigned int a2, double *a3)
{
  v4 = result;
  if (a2 >= 2)
  {
    if (a2 == 4)
    {
      v9 = result[4];

      return [v9 closePath];
    }
  }

  else
  {
    v5 = *a3;
    v6 = a3[1];
    v7 = result[5];
    if (v7)
    {
      (*(v7 + 16))(v5, v6);
    }

    v8 = v4[4];
    if (a2)
    {

      return [v8 addLineToPoint:{v5, v6}];
    }

    else
    {

      return [v8 moveToPoint:{v5, v6}];
    }
  }

  return result;
}

id *sub_29054(id *result, uint64_t a2, double *a3, uint64_t a4, unint64_t a5)
{
  if (result[6] <= a5)
  {
    v6 = result;
    if (a2 > 1)
    {
      v12 = *(result[5] + 1);
      if (a2 == 4)
      {
        *(v12 + 24) = 1;
      }

      else if (*(v12 + 24) == 1)
      {
        *(v12 + 24) = 0;
      }
    }

    else
    {
      v8 = *(result[5] + 1);
      if (*(v8 + 24) == 1)
      {
        *(v8 + 24) = 0;
        [result[4] closePath];
      }

      v9 = v6[4];
      v10 = *a3;
      v11 = a3[1];

      return [v9 appendElementOfType:a2 withSinglePoint:{v10, v11}];
    }
  }

  return result;
}

id *sub_29114(id *result, uint64_t a2, double *a3, uint64_t a4, unint64_t a5, _BYTE *a6)
{
  v7 = result;
  v8 = result[6];
  if (v8 <= a5)
  {
    if (v8 == a5)
    {
      if (a2 == 1)
      {
        result = [result[4] closePath];
      }

      *a6 = 1;
    }
  }

  else
  {
    v9 = *(result[5] + 1);
    if (a2 <= 1)
    {
      if (a5)
      {
        if (*(v9 + 24))
        {
          *(v9 + 24) = 0;
          [result[4] closePath];
        }
      }

      else if (*(v9 + 24))
      {
        *(v9 + 24) = 0;
        v12 = result[4];
        v13 = *a3;
        v14 = a3[1];
        v15 = 1;
LABEL_18:

        return [v12 appendElementOfType:v15 withSinglePoint:{v13, v14}];
      }

      v12 = v7[4];
      v13 = *a3;
      v14 = a3[1];
      v15 = a2;
      goto LABEL_18;
    }

    if (a2 == 4)
    {
      *(v9 + 24) = 1;
    }

    else if (*(v9 + 24) == 1)
    {
      *(v9 + 24) = 0;
    }
  }

  return result;
}

void sub_29308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a5;
    *a6 = 1;
  }

  return result;
}

void sub_29A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

CGFloat sub_29A98(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = 0.0;
  v6 = 0.0;
  if (a2 != a4)
  {
    v5 = (a5 - a3) / (a4 - a2);
    v6 = a3 - v5 * a2;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = (*(a1 + 40) + 32);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;
      if (a2 != a4 && v9 == v11)
      {
        v16 = v6 + v5 * v9;
        if ((v16 - v10) * (v16 - v12) <= 0.0 && (v9 - a2) * (v9 - a4) <= 0.0 && (v16 - a3) * (v16 - a5) <= 0.0)
        {
          return v9;
        }
      }

      else if (v10 == v12 && a3 != a5)
      {
        v15 = a2;
        if (a2 != a4)
        {
          v15 = (v10 - v6) / v5;
        }

        if ((v15 - v9) * (v15 - v11) <= 0.0 && (v15 - a2) * (v15 - a4) <= 0.0)
        {
          v9 = v15;
          if ((v10 - a3) * (v10 - a5) <= 0.0)
          {
            return v9;
          }
        }
      }

      v8 += 5;
      --v7;
    }

    while (v7);
  }

  return CGPointZero.x;
}

uint64_t sub_29BB0(uint64_t a1, double a2)
{
  GAX_CGPointGetAngleFormedBySegmentToPoint(*(a1 + 32), *(a1 + 40), a2);
  v4 = *(a1 + 48);
  if (!v4)
  {
    return 1;
  }

  v5 = (*(a1 + 56) + 16);
  result = 1;
  while ((v3 - *(v5 - 1)) * (v3 - *v5) > 0.0)
  {
    v5 += 3;
    if (!--v4)
    {
      return result;
    }
  }

  return *(v5 - 2);
}

double sub_29C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return CGPointZero.x;
  }

  v4 = *(a1 + 40);
  v5 = (v4 + 16);
  v6 = *(a1 + 32);
  while (*(v5 - 2) != a2)
  {
    v5 += 5;
    if (!--v6)
    {
      return CGPointZero.x;
    }
  }

  for (i = (v4 + 16); *(i - 2) != a3; i += 5)
  {
    if (!--v3)
    {
      return CGPointZero.x;
    }
  }

  result = *(v5 - 1);
  if (result != i[1] || *v5 != i[2])
  {
    result = v5[1];
    if (result != *(i - 1) || v5[2] != *i)
    {
      return CGPointZero.x;
    }
  }

  return result;
}

uint64_t sub_29CE8(uint64_t result, unsigned int a2, double *a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  if (a2 > 1)
  {
    if (a2 == 4)
    {
      v10 = *(*(result + 64) + 8);
      x = *(v10 + 32);
      y = *(v10 + 40);
    }

    else
    {
      x = CGPointZero.x;
      y = CGPointZero.y;
    }
  }

  else
  {
    x = *a3;
    y = a3[1];
    if (!a2)
    {
      v9 = *(*(result + 64) + 8);
      *(v9 + 32) = x;
      *(v9 + 40) = y;
    }
  }

  v11 = *(*(result + 72) + 8);
  if (*(v11 + 32) != x || *(v11 + 40) != y)
  {
    if (!a5)
    {
      result = [*(result + 32) moveToPoint:{x, y}];
      v13 = 1;
LABEL_53:
      v41 = *(*(v6 + 72) + 8);
      *(v41 + 32) = x;
      *(v41 + 40) = y;
      *(*(*(v6 + 80) + 8) + 24) = v13;
      return result;
    }

    v45.x = x;
    v45.y = y;
    result = CGRectContainsPoint(*(result + 112), v45);
    v13 = result;
    v14 = CGPointZero.x;
    v15 = CGPointZero.y;
    v16 = *(*(*(v6 + 80) + 8) + 24);
    v17 = result ^ 1;
    if (((v16 ^ 1) & 1) == 0 && (v17 & 1) == 0)
    {
      switch(a2)
      {
        case 4u:
          result = [*(v6 + 32) closePath];
          *(*(*(v6 + 88) + 8) + 24) = 1;
          break;
        case 1u:
          result = [*(v6 + 32) addLineToPoint:{x, y}];
          break;
        case 0u:
          result = [*(v6 + 32) moveToPoint:{x, y}];
          break;
      }

      goto LABEL_36;
    }

    if ((v16 ^ 1 | result))
    {
      v18 = x;
      v19 = y;
      if ((v16 | result))
      {
        if ((v16 | v17))
        {
          goto LABEL_36;
        }

        v18 = (*(*(v6 + 40) + 16))(*(*(*(v6 + 72) + 8) + 32), *(*(*(v6 + 72) + 8) + 40), x, y);
        v19 = v20;
      }
    }

    else
    {
      v21 = (*(*(v6 + 40) + 16))(*(*(*(v6 + 72) + 8) + 32), *(*(*(v6 + 72) + 8) + 40), x, y);
      v23 = v22;
      [*(v6 + 32) addLineToPoint:?];
      *(*(*(v6 + 96) + 8) + 24) = (*(*(v6 + 48) + 16))(v21, v23);
      v18 = x;
      v19 = y;
    }

    result = (*(*(v6 + 48) + 16))(v18, v19);
    v24 = *(*(*(v6 + 96) + 8) + 24);
    if (v24 == result)
    {
LABEL_35:
      v14 = v18;
      v15 = v19;
LABEL_36:
      if (((*(*(*(v6 + 80) + 8) + 24) | v17) & 1) == 0)
      {
        if (*(*(*(v6 + 104) + 8) + 24))
        {
          v35 = 0;
          v36 = 0;
          do
          {
            v37 = *(v6 + 144);
            if (v36 >= AXCArrayGetCount())
            {
              Count = AXCArrayGetCount();
              v44 = v36;
              v42 = v37;
              _AXAssert();
            }

            UnderlyingArray = _AXCArrayGetUnderlyingArray();
            [*(v6 + 32) addLineToPoint:{*(UnderlyingArray + v35 + 8), *(UnderlyingArray + v35 + 16)}];
            ++v36;
            v35 += 24;
          }

          while (v36 < *(*(*(v6 + 104) + 8) + 24));
        }

        v39 = v15 == y && v14 == x;
        if (a2 == 4 && v39)
        {
          result = [*(v6 + 32) closePath];
          *(*(*(v6 + 88) + 8) + 24) = 1;
        }

        else
        {
          result = [*(v6 + 32) addLineToPoint:{v14, v15, v42, Count, v44}];
          if (!v39)
          {
            v40 = *(v6 + 32);
            if (a2 == 4)
            {
              result = [v40 closePath];
              *(*(*(v6 + 88) + 8) + 24) = 1;
            }

            else
            {
              result = [v40 addLineToPoint:{x, y}];
            }
          }
        }

        *(*(*(v6 + 104) + 8) + 24) = 0;
      }

      goto LABEL_53;
    }

    v25 = result;
    v26 = *(*(*(v6 + 104) + 8) + 24);
    if (v26)
    {
      v27 = *(v6 + 144);
      v28 = v26 - 1;
      if (v26 - 1 >= AXCArrayGetCount())
      {
        Count = AXCArrayGetCount();
        v44 = v28;
        v42 = v27;
        _AXAssert();
      }

      result = _AXCArrayGetUnderlyingArray();
      if (*(result + 24 * v28) == v25)
      {
        v29 = -1;
LABEL_34:
        *(*(*(v6 + 104) + 8) + 24) += v29;
        *(*(*(v6 + 96) + 8) + 24) = v25;
        goto LABEL_35;
      }

      v24 = *(*(*(v6 + 96) + 8) + 24);
    }

    v30 = (*(*(v6 + 56) + 16))(*(v6 + 56), v24, v25);
    v32 = v31;
    v33 = *(*(*(v6 + 104) + 8) + 24);
    _AXCArrayPrepareForInsertingElementAtIndex();
    result = _AXCArrayGetUnderlyingArray();
    v34 = (result + 24 * v33);
    *v34 = v24;
    v34[1] = v30;
    *(v34 + 2) = v32;
    v29 = 1;
    goto LABEL_34;
  }

  return result;
}

void sub_2A434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

__n128 sub_2A458(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a1[5] + 8);
    if (*a2 != *(v5 + 32) || *(a2 + 8) != *(v5 + 40))
    {
      (*(a1[4] + 16))();
      ++*(*(a1[6] + 8) + 24);
    }
  }

  v7 = *(a1[5] + 8);
  result = *a2;
  v9 = *(a2 + 32);
  *(v7 + 48) = *(a2 + 16);
  *(v7 + 64) = v9;
  *(v7 + 32) = result;
  return result;
}

void sub_2A6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_2A6C4(uint64_t a1, unsigned int a2, __n128 *a3)
{
  if (a2 <= 3)
  {
    Count = AXCArrayGetCount();
    _AXCArrayPrepareForInsertingElementAtIndex();
    UnderlyingArray = _AXCArrayGetUnderlyingArray();
    result = *a3;
    *(UnderlyingArray + 16 * Count) = *a3;
  }

  return result;
}

int sub_2A894(id a1, const void *a2, const void *a3)
{
  if (*a2 >= *a3)
  {
    result = 1;
  }

  else
  {
    result = -1;
  }

  if (*a2 == *a3)
  {
    v4 = *(a2 + 1);
    v5 = *(a3 + 1);
    if (v4 >= v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    if (v4 == v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

int sub_2AA6C(id a1, const void *a2, const void *a3)
{
  if (*a2 >= *a3)
  {
    result = 1;
  }

  else
  {
    result = -1;
  }

  if (*a2 == *a3)
  {
    v4 = *(a2 + 1);
    v5 = *(a3 + 1);
    if (v4 >= v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    if (v4 == v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

int sub_2AA9C(id a1, const void *a2, const void *a3)
{
  if (*a2 >= *a3)
  {
    result = 1;
  }

  else
  {
    result = -1;
  }

  if (*a2 == *a3)
  {
    v4 = *(a2 + 1);
    v5 = *(a3 + 1);
    if (v4 >= v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    if (v4 == v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

void sub_2ADD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 176), 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2AE14(uint64_t a1, uint64_t a2, int a3, char a4, double a5, double a6)
{
  v11 = 0;
  if ((a4 & 1) == 0)
  {
    AX_CGPointGetDistanceToPoint();
    *(*(*(a1 + 32) + 8) + 24) = v12 + *(*(*(a1 + 32) + 8) + 24);
    v11 = *(*(*(a1 + 32) + 8) + 24);
  }

  GAX_CGPointGetAngleFormedBySegmentToPoint(*(a1 + 48), *(a1 + 56), a5);
  v14 = v13;
  Count = AXCArrayGetCount();
  _AXCArrayPrepareForInsertingElementAtIndex();
  v16 = _AXCArrayGetUnderlyingArray() + 48 * Count;
  *v16 = a5;
  *(v16 + 8) = a6;
  *(v16 + 16) = v11;
  *(v16 + 24) = v14;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  *(v16 + 44) = 0;
  _AXCArrayPrepareForInsertingElementAtIndex();
  UnderlyingArray = _AXCArrayGetUnderlyingArray();
  result = AXCArrayGetCount();
  *(UnderlyingArray + 8 * a2) = result - 1;
  v19 = *(*(a1 + 40) + 8);
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  return result;
}

void *sub_2AF2C(void *result, int a2, unint64_t *a3, uint64_t a4, __n128 a5, __n128 a6)
{
  v6 = result;
  if (a4 != 1)
  {
    if (a4 || a2 != 4)
    {
      return result;
    }

    v7 = *(result[5] + 8);
    v8 = *(result[4] + 16);
    a5.n128_u64[0] = *(v7 + 32);
    a6.n128_u64[0] = *(v7 + 40);
    goto LABEL_12;
  }

  v10 = *a3;
  v9 = a3[1];
  if (a2 == 1)
  {
    if ((*(*(result[6] + 8) + 24) & 1) == 0)
    {
      (*(result[4] + 16))(*(*(result[5] + 8) + 32), *(*(result[5] + 8) + 40));
      *(*(v6[6] + 8) + 24) = 1;
    }

    v8 = *(v6[4] + 16);
    a5.n128_u64[0] = v10;
    a6.n128_u64[0] = v9;
LABEL_12:

    return v8(a5, a6);
  }

  if (!a2)
  {
    v11 = *(result[5] + 8);
    *(v11 + 32) = v10;
    *(v11 + 40) = v9;
    *(*(result[6] + 8) + 24) = 0;
  }

  return result;
}

void sub_2B230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 200), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2B26C(uint64_t result, double *a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(result + 64);
  v5 = *(result + 72);
  v6 = *a2;
  if (v4 == *a2 && v5 == a2[1])
  {
    goto LABEL_19;
  }

  if (v4 == a2[6] && v5 == a2[7])
  {
    goto LABEL_19;
  }

  v9 = *(result + 80);
  v10 = a2[3];
  v11 = a2[9];
  if (v10 * v11 < 0.0)
  {
    if ((a2[12] & 1) == 0)
    {
      v6 = (*(result + 96) - a2[14]) / a2[13];
    }

    if (v6 < *(result + 88))
    {
      if (v9 * v10 >= 0.0)
      {
        if (v9 * v11 < 0.0)
        {
          v11 = v11 + v9 / fabs(v9) * 6.28318531;
        }
      }

      else
      {
        v10 = v10 + v9 / fabs(v9) * 6.28318531;
      }
    }
  }

  if ((v9 - v10) * (v9 - v11) <= 0.0)
  {
    v12 = *(*(result + 32) + 8);
    v14 = *(a2 + 5);
    v13 = *(a2 + 6);
    v15 = *(a2 + 4);
    *(v12 + 144) = a2[14];
    *(v12 + 112) = v14;
    *(v12 + 128) = v13;
    *(v12 + 96) = v15;
    v16 = *a2;
    v17 = *(a2 + 1);
    v18 = *(a2 + 3);
    *(v12 + 64) = *(a2 + 2);
    *(v12 + 80) = v18;
    *(v12 + 32) = v16;
    *(v12 + 48) = v17;
    *(*(*(result + 40) + 8) + 24) = v10;
    *(*(*(result + 48) + 8) + 24) = v11;
    *(*(*(result + 56) + 8) + 24) = 1;
LABEL_19:
    *a4 = 1;
  }

  return result;
}

uint64_t GAXPathLineSegmentGetAdjustedAngleRangeForComparingAngleFormedWithCenter(uint64_t result, double *a2, double *a3, double a4, double a5, double a6)
{
  v6 = *(result + 24);
  v7 = *(result + 72);
  if (v6 * v7 < 0.0)
  {
    v8 = *(result + 96) == 1 ? *result : (a6 - *(result + 112)) / *(result + 104);
    if (v8 < a5)
    {
      if (v6 * a4 >= 0.0)
      {
        if (v7 * a4 < 0.0)
        {
          v7 = v7 + a4 / fabs(a4) * 6.28318531;
        }
      }

      else
      {
        v6 = v6 + a4 / fabs(a4) * 6.28318531;
      }
    }
  }

  if (a2)
  {
    *a2 = v6;
  }

  if (a3)
  {
    *a3 = v7;
  }

  return result;
}

id sub_2B82C(uint64_t a1)
{
  v2 = [*(a1 + 32) resultHandler];
  v2[2](v2, 1);

  v3 = *(a1 + 32);

  return [v3 setResultHandler:0];
}

id sub_2B888(uint64_t a1)
{
  v2 = [*(a1 + 32) resultHandler];
  v2[2](v2, 0);

  v3 = *(a1 + 32);

  return [v3 setResultHandler:0];
}

uint64_t sub_2C3DC(uint64_t a1)
{
  v1 = [*(a1 + 32) _textColor];
  v2 = qword_6D9C0;
  qword_6D9C0 = v1;

  return _objc_release_x1(v1, v2);
}

void GAX_CGPointGetAngleFormedBySegmentToPoint(double a1, double a2, double a3)
{
  AX_CGPointGetDistanceToPoint();
  if (v5 != 0.0)
  {
    acos((a3 - a1) / v5);
  }
}

double GAX_CGPointGetProjectionToFrame(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  MinX = CGRectGetMinX(v14);
  if (a1 < MinX)
  {
    a1 = MinX;
  }

  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  MaxX = CGRectGetMaxX(v15);
  if (a1 >= MaxX)
  {
    a1 = MaxX;
  }

  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  CGRectGetMinY(v16);
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  CGRectGetMaxY(v17);
  return a1;
}

void GAX_CGAffineTransformMakeWithSourceAndDestinationFrames(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  v31 = *&CGAffineTransformIdentity.c;
  v32 = *&CGAffineTransformIdentity.a;
  *a1 = *&CGAffineTransformIdentity.a;
  *(a1 + 16) = v31;
  v30 = *&CGAffineTransformIdentity.tx;
  *(a1 + 32) = v30;
  Width = CGRectGetWidth(*&a2);
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  if (Width * CGRectGetHeight(v36) > 0.0)
  {
    v37.origin.x = a2;
    v37.origin.y = a3;
    v37.size.width = a4;
    v37.size.height = a5;
    v46.origin.x = a6;
    v46.origin.y = a7;
    v46.size.width = a8;
    v46.size.height = a9;
    if (!CGRectEqualToRect(v37, v46))
    {
      v38.origin.x = a2;
      v38.origin.y = a3;
      v38.size.width = a4;
      v38.size.height = a5;
      MinX = CGRectGetMinX(v38);
      v39.origin.x = a2;
      v39.origin.y = a3;
      v39.size.width = a4;
      v39.size.height = a5;
      MinY = CGRectGetMinY(v39);
      v40.origin.x = a2;
      v40.origin.y = a3;
      v40.size.width = a4;
      v40.size.height = a5;
      MaxX = CGRectGetMaxX(v40);
      v41.origin.x = a2;
      v41.origin.y = a3;
      v41.size.width = a4;
      v41.size.height = a5;
      MaxY = CGRectGetMaxY(v41);
      v42.origin.x = a6;
      v42.origin.y = a7;
      v42.size.width = a8;
      v42.size.height = a9;
      v19 = CGRectGetMinX(v42);
      v43.origin.x = a6;
      v43.origin.y = a7;
      v43.size.width = a8;
      v43.size.height = a9;
      v20 = CGRectGetMinY(v43);
      v44.origin.x = a6;
      v44.origin.y = a7;
      v44.size.width = a8;
      v44.size.height = a9;
      v21 = CGRectGetMaxX(v44);
      v45.origin.x = a6;
      v45.origin.y = a7;
      v45.size.width = a8;
      v45.size.height = a9;
      v22 = CGRectGetMaxY(v45);
      v23 = (v21 - v19) / (MaxX - MinX);
      v24 = (v22 - v20) / (MaxY - MinY);
      *&v35.a = v32;
      *&v35.c = v31;
      *&v35.tx = v30;
      CGAffineTransformTranslate(a1, &v35, (v19 + v21 - v23 * (MinX + MaxX)) * 0.5, (v20 + v22 - v24 * (MinY + MaxY)) * 0.5);
      v25 = *(a1 + 16);
      *&v34.a = *a1;
      *&v34.c = v25;
      *&v34.tx = *(a1 + 32);
      CGAffineTransformScale(&v35, &v34, v23, v24);
      v26 = *&v35.c;
      *a1 = *&v35.a;
      *(a1 + 16) = v26;
      *(a1 + 32) = *&v35.tx;
    }
  }
}

void sub_2CA0C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = GAXLogCommon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      LOWORD(v12) = 0;
      v8 = "Biometric authentication for Guided Access succeeded";
      v9 = v6;
      v10 = 2;
LABEL_6:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
    }
  }

  else if (v7)
  {
    v12 = 138412290;
    v13 = v5;
    v8 = "Biometric authentication for Guided Access failed with error %@";
    v9 = v6;
    v10 = 12;
    goto LABEL_6;
  }

  v11 = [*(a1 + 32) delegate];
  [v11 biometricManager:*(a1 + 32) attemptWasSuccessful:a2];

  AXPerformBlockOnMainThreadAfterDelay();
}

void sub_2CB28(id a1)
{
  v1 = +[AXSpringBoardServer server];
  [v1 acquireSystemApertureInertAssertion];
}

id GAXFallbackValueForProfileKey(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (qword_6D9E0 == -1)
  {
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_33DC8();
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  v6 = [qword_6D9D8 objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    goto LABEL_10;
  }

LABEL_6:
  v8 = qword_6D9D0;
  v9 = [NSNumber numberWithUnsignedInt:a2];
  v10 = [v8 objectForKey:v9];
  v7 = [v10 objectForKey:v5];

  if (!v7)
  {
    v11 = GAXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_33DDC(v5, v11);
    }

    v7 = 0;
  }

LABEL_10:

  return v7;
}

void sub_2CCB8(id a1)
{
  v52[0] = @"GAXProfileAllowsKeyboardTextInput";
  v52[1] = @"GAXProfileAllowsTouch";
  v53[0] = &__kCFBooleanTrue;
  v53[1] = &__kCFBooleanTrue;
  v52[2] = @"GAXProfileAllowsMotion";
  v52[3] = @"GAXProfileAllowsRingerSwitch";
  v53[2] = &__kCFBooleanTrue;
  v53[3] = &__kCFBooleanFalse;
  v52[4] = @"GAXProfileAllowsProximity";
  v52[5] = @"GAXProfileAllowsLockButton";
  v53[4] = &__kCFBooleanFalse;
  v53[5] = &__kCFBooleanTrue;
  v52[6] = @"GAXProfileAllowsVolumeButtons";
  v52[7] = @"GAXProfileAllowsAutolock";
  v53[6] = &__kCFBooleanTrue;
  v53[7] = &__kCFBooleanTrue;
  v52[8] = @"GAXProfileAppTimeoutDuration";
  v52[9] = @"GAXProfileAppTimeoutEnabled";
  v53[8] = &off_61850;
  v53[9] = &__kCFBooleanFalse;
  v52[10] = @"GAXProfileAllowsAXAutoEnableVoiceOver";
  v41 = +[NSNull null];
  v53[10] = v41;
  v52[11] = @"GAXProfileAllowsAXAutoEnableZoom";
  v38 = +[NSNull null];
  v53[11] = v38;
  v52[12] = @"GAXProfileAllowsAXAutoEnableInvertColors";
  v35 = +[NSNull null];
  v53[12] = v35;
  v52[13] = @"GAXProfileAllowsAXAutoEnableGrayscale";
  v32 = +[NSNull null];
  v53[13] = v32;
  v52[14] = @"GAXProfileAllowsAXAutoEnableAssistiveTouch";
  v29 = +[NSNull null];
  v53[14] = v29;
  v52[15] = @"GAXProfileAllowsAXAutoEnableSpeakSelection";
  v1 = +[NSNull null];
  v53[15] = v1;
  v52[16] = @"GAXProfileAllowsAXAutoEnableMonoAudio";
  v2 = +[NSNull null];
  v53[16] = v2;
  v52[17] = @"GAXProfileAllowsAXAutoEnableCommandAndControl";
  v3 = +[NSNull null];
  v53[17] = v3;
  v53[18] = &__kCFBooleanFalse;
  v52[18] = @"GAXProfileAllowsAXToggleVoiceOver";
  v52[19] = @"GAXProfileAllowsAXToggleZoom";
  v53[19] = &__kCFBooleanFalse;
  v53[20] = &__kCFBooleanFalse;
  v52[20] = @"GAXProfileAllowsAXToggleInvertColors";
  v52[21] = @"GAXProfileAllowsAXToggleGrayscale";
  v53[21] = &__kCFBooleanFalse;
  v53[22] = &__kCFBooleanFalse;
  v52[22] = @"GAXProfileAllowsAXToggleAssistiveTouch";
  v52[23] = @"GAXProfileAllowsAXToggleCommandAndControl";
  v53[23] = &__kCFBooleanFalse;
  v52[24] = @"GAXProfileIgnoredTouchRegionsPortrait";
  v4 = +[NSNull null];
  v53[24] = v4;
  v52[25] = @"GAXProfileIgnoredTouchRegionsLandscape";
  v5 = +[NSNull null];
  v53[25] = v5;
  v52[26] = @"GAXProfileStatesForRestrictions";
  v6 = +[NSNull null];
  v53[26] = v6;
  v52[27] = @"GAXProfileUnappliedChangedStatesForRestrictions";
  v7 = +[NSNull null];
  v53[27] = v7;
  v53[28] = &__kCFBooleanFalse;
  v52[28] = @"GAXProfileAllowsHomeButton";
  v52[29] = @"GAXProfileShouldAutolaunchCrashedApps";
  v53[29] = &__kCFBooleanTrue;
  v53[30] = &__kCFBooleanTrue;
  v52[30] = @"GAXProfileShowsUserConfirmationPromptsAndBanners";
  v52[31] = @"GAXProfileShouldAutolaunchAppsAfterSystemCrash";
  v53[31] = &__kCFBooleanTrue;
  v53[32] = &__kCFBooleanTrue;
  v52[32] = @"GAXProfileAllowsExit";
  v52[33] = @"GAXProfileShouldAutolaunchAfterLowBatteryShutDown";
  v53[33] = &__kCFBooleanFalse;
  v53[34] = &__kCFBooleanTrue;
  v52[34] = @"GAXProfileAllowsWebTextDefine";
  v52[35] = @"GAXProfileAllowsAccessibilityShortcut";
  v53[35] = &__kCFBooleanFalse;
  v43 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:36];

  v50[0] = @"GAXProfileAllowsKeyboardTextInput";
  v50[1] = @"GAXProfileAllowsTouch";
  v51[0] = &__kCFBooleanTrue;
  v51[1] = &__kCFBooleanTrue;
  v50[2] = @"GAXProfileAllowsMotion";
  v50[3] = @"GAXProfileAllowsRingerSwitch";
  v51[2] = &__kCFBooleanTrue;
  v51[3] = &__kCFBooleanTrue;
  v50[4] = @"GAXProfileAllowsProximity";
  v50[5] = @"GAXProfileAllowsLockButton";
  v51[4] = &__kCFBooleanTrue;
  v51[5] = &__kCFBooleanTrue;
  v50[6] = @"GAXProfileAllowsVolumeButtons";
  v50[7] = @"GAXProfileAllowsAutolock";
  v51[6] = &__kCFBooleanTrue;
  v51[7] = &__kCFBooleanTrue;
  v50[8] = @"GAXProfileAppTimeoutDuration";
  v50[9] = @"GAXProfileAppTimeoutEnabled";
  v51[8] = &off_61850;
  v51[9] = &__kCFBooleanFalse;
  v50[10] = @"GAXProfileAllowsAXAutoEnableVoiceOver";
  v39 = +[NSNull null];
  v51[10] = v39;
  v50[11] = @"GAXProfileAllowsAXAutoEnableZoom";
  v36 = +[NSNull null];
  v51[11] = v36;
  v50[12] = @"GAXProfileAllowsAXAutoEnableInvertColors";
  v33 = +[NSNull null];
  v51[12] = v33;
  v50[13] = @"GAXProfileAllowsAXAutoEnableGrayscale";
  v30 = +[NSNull null];
  v51[13] = v30;
  v50[14] = @"GAXProfileAllowsAXAutoEnableAssistiveTouch";
  v27 = +[NSNull null];
  v51[14] = v27;
  v50[15] = @"GAXProfileAllowsAXAutoEnableSpeakSelection";
  v8 = +[NSNull null];
  v51[15] = v8;
  v50[16] = @"GAXProfileAllowsAXAutoEnableMonoAudio";
  v9 = +[NSNull null];
  v51[16] = v9;
  v50[17] = @"GAXProfileAllowsAXAutoEnableCommandAndControl";
  v10 = +[NSNull null];
  v51[17] = v10;
  v51[18] = &__kCFBooleanFalse;
  v50[18] = @"GAXProfileAllowsAXToggleVoiceOver";
  v50[19] = @"GAXProfileAllowsAXToggleZoom";
  v51[19] = &__kCFBooleanFalse;
  v51[20] = &__kCFBooleanFalse;
  v50[20] = @"GAXProfileAllowsAXToggleInvertColors";
  v50[21] = @"GAXProfileAllowsAXToggleGrayscale";
  v51[21] = &__kCFBooleanFalse;
  v51[22] = &__kCFBooleanFalse;
  v50[22] = @"GAXProfileAllowsAXToggleAssistiveTouch";
  v50[23] = @"GAXProfileAllowsAXToggleCommandAndControl";
  v51[23] = &__kCFBooleanFalse;
  v50[24] = @"GAXProfileIgnoredTouchRegionsPortrait";
  v11 = +[NSNull null];
  v51[24] = v11;
  v50[25] = @"GAXProfileIgnoredTouchRegionsLandscape";
  v12 = +[NSNull null];
  v51[25] = v12;
  v50[26] = @"GAXProfileStatesForRestrictions";
  v13 = +[NSNull null];
  v51[26] = v13;
  v50[27] = @"GAXProfileUnappliedChangedStatesForRestrictions";
  v14 = +[NSNull null];
  v51[27] = v14;
  v51[28] = &__kCFBooleanFalse;
  v50[28] = @"GAXProfileAllowsHomeButton";
  v50[29] = @"GAXProfileShouldAutolaunchCrashedApps";
  v51[29] = &__kCFBooleanTrue;
  v51[30] = &__kCFBooleanTrue;
  v50[30] = @"GAXProfileShowsUserConfirmationPromptsAndBanners";
  v50[31] = @"GAXProfileShouldAutolaunchAppsAfterSystemCrash";
  v51[31] = &__kCFBooleanTrue;
  v51[32] = &__kCFBooleanFalse;
  v50[32] = @"GAXProfileAllowsExit";
  v50[33] = @"GAXProfileShouldAutolaunchAfterLowBatteryShutDown";
  v51[33] = &__kCFBooleanTrue;
  v51[34] = &__kCFBooleanTrue;
  v50[34] = @"GAXProfileAllowsWebTextDefine";
  v50[35] = @"GAXProfileAllowsAccessibilityShortcut";
  v51[35] = &__kCFBooleanFalse;
  v42 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:36];

  v48[0] = @"GAXProfileAllowsKeyboardTextInput";
  v48[1] = @"GAXProfileAllowsTouch";
  v49[0] = &__kCFBooleanTrue;
  v49[1] = &__kCFBooleanTrue;
  v48[2] = @"GAXProfileAllowsMotion";
  v48[3] = @"GAXProfileAllowsRingerSwitch";
  v49[2] = &__kCFBooleanTrue;
  v49[3] = &__kCFBooleanTrue;
  v48[4] = @"GAXProfileAllowsProximity";
  v48[5] = @"GAXProfileAllowsLockButton";
  v49[4] = &__kCFBooleanTrue;
  v49[5] = &__kCFBooleanTrue;
  v48[6] = @"GAXProfileAllowsVolumeButtons";
  v48[7] = @"GAXProfileAllowsAutolock";
  v49[6] = &__kCFBooleanTrue;
  v49[7] = &__kCFBooleanTrue;
  v48[8] = @"GAXProfileAppTimeoutDuration";
  v48[9] = @"GAXProfileAppTimeoutEnabled";
  v49[8] = &off_61850;
  v49[9] = &__kCFBooleanFalse;
  v48[10] = @"GAXProfileAllowsAXAutoEnableVoiceOver";
  v40 = +[NSNull null];
  v49[10] = v40;
  v48[11] = @"GAXProfileAllowsAXAutoEnableZoom";
  v37 = +[NSNull null];
  v49[11] = v37;
  v48[12] = @"GAXProfileAllowsAXAutoEnableInvertColors";
  v34 = +[NSNull null];
  v49[12] = v34;
  v48[13] = @"GAXProfileAllowsAXAutoEnableGrayscale";
  v31 = +[NSNull null];
  v49[13] = v31;
  v48[14] = @"GAXProfileAllowsAXAutoEnableAssistiveTouch";
  v28 = +[NSNull null];
  v49[14] = v28;
  v48[15] = @"GAXProfileAllowsAXAutoEnableSpeakSelection";
  v15 = +[NSNull null];
  v49[15] = v15;
  v48[16] = @"GAXProfileAllowsAXAutoEnableMonoAudio";
  v16 = +[NSNull null];
  v49[16] = v16;
  v48[17] = @"GAXProfileAllowsAXAutoEnableCommandAndControl";
  v17 = +[NSNull null];
  v49[17] = v17;
  v49[18] = &__kCFBooleanFalse;
  v48[18] = @"GAXProfileAllowsAXToggleVoiceOver";
  v48[19] = @"GAXProfileAllowsAXToggleZoom";
  v49[19] = &__kCFBooleanFalse;
  v49[20] = &__kCFBooleanFalse;
  v48[20] = @"GAXProfileAllowsAXToggleInvertColors";
  v48[21] = @"GAXProfileAllowsAXToggleGrayscale";
  v49[21] = &__kCFBooleanFalse;
  v49[22] = &__kCFBooleanFalse;
  v48[22] = @"GAXProfileAllowsAXToggleAssistiveTouch";
  v48[23] = @"GAXProfileAllowsAXToggleCommandAndControl";
  v49[23] = &__kCFBooleanFalse;
  v48[24] = @"GAXProfileIgnoredTouchRegionsPortrait";
  v18 = +[NSNull null];
  v49[24] = v18;
  v48[25] = @"GAXProfileIgnoredTouchRegionsLandscape";
  v19 = +[NSNull null];
  v49[25] = v19;
  v48[26] = @"GAXProfileStatesForRestrictions";
  v20 = +[NSNull null];
  v49[26] = v20;
  v48[27] = @"GAXProfileUnappliedChangedStatesForRestrictions";
  v21 = +[NSNull null];
  v49[27] = v21;
  v49[28] = &__kCFBooleanFalse;
  v48[28] = @"GAXProfileAllowsHomeButton";
  v48[29] = @"GAXProfileShouldAutolaunchCrashedApps";
  v49[29] = &__kCFBooleanTrue;
  v49[30] = &__kCFBooleanTrue;
  v48[30] = @"GAXProfileShowsUserConfirmationPromptsAndBanners";
  v48[31] = @"GAXProfileShouldAutolaunchAppsAfterSystemCrash";
  v49[31] = &__kCFBooleanTrue;
  v49[32] = &__kCFBooleanFalse;
  v48[32] = @"GAXProfileAllowsExit";
  v48[33] = @"GAXProfileShouldAutolaunchAfterLowBatteryShutDown";
  v49[33] = &__kCFBooleanTrue;
  v49[34] = &__kCFBooleanTrue;
  v48[34] = @"GAXProfileAllowsWebTextDefine";
  v48[35] = @"GAXProfileAllowsAccessibilityShortcut";
  v49[35] = &__kCFBooleanFalse;
  v22 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:36];

  v46[0] = @"GAXProfileAllowsAutolock";
  v46[1] = @"GAXProfileAllowsLockButton";
  v47[0] = &__kCFBooleanFalse;
  v47[1] = &__kCFBooleanFalse;
  v23 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
  v24 = qword_6D9D8;
  qword_6D9D8 = v23;

  v44[0] = &off_617C8;
  v44[1] = &off_617E0;
  v45[0] = v43;
  v45[1] = v42;
  v44[2] = &off_617F8;
  v45[2] = v22;
  v25 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:3];
  v26 = qword_6D9D0;
  qword_6D9D0 = v25;
}

id GAXAppIsMobilePhoneOrFacetime(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.mobilephone"])
  {
    v2 = &dword_0 + 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.facetime"];
  }

  return v2;
}

uint64_t GAXSessionAppsContainMobilePhoneOrFacetime(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isEqualToString:{@"com.apple.mobilephone", v9}] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"com.apple.facetime"))
        {
          v7 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v7 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_13:

  return v7;
}

void extractGAXBackboardStateFromMessage(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  v3 = [a1 payload];
  v4 = [v3 objectForKey:@"GAXIPCPayloadKeyGAXBackboardState"];

  [v4 getBytes:a2 length:28];
}

id gaxDebugDescriptionForGAXBackboardState(unsigned int *a1)
{
  v2 = [NSMutableString stringWithString:@"GAXBackboardState:\n"];
  [v2 appendFormat:@"  mode: %ld\n", *a1];
  [v2 appendFormat:@"  passcodeWindowContextID: %ld\n", a1[1]];
  [v2 appendFormat:@"  voiceOverItemChooserWindowContextID: %ld\n", a1[2]];
  [v2 appendFormat:@"  tripleClickSheetWindowContextID: %ld\n", a1[3]];
  [v2 appendFormat:@"  shouldBlockAllEvents: %ld\n", a1[6] & 1];
  [v2 appendFormat:@"  restartingAndWasActiveBeforeRestart: %ld\n", (a1[6] >> 1) & 1];
  [v2 appendFormat:@"  verifyingDeviceUnlockInSAM: %ld\n", (a1[6] >> 2) & 1];
  [v2 appendFormat:@"  isPasscodeViewVisible: %ld\n", (a1[6] >> 3) & 1];
  [v2 appendFormat:@"  isRestricted: %ld\n", (a1[6] >> 4) & 1];
  [v2 appendFormat:@"  overrideAllowsAllTouchSBMiniAlertIsShowing: %ld\n", (a1[6] >> 5) & 1];
  [v2 appendFormat:@"  overrideAllowsAllTouchCallStateIsChanging: %ld\n", (a1[6] >> 6) & 1];
  [v2 appendFormat:@"  overrideAllowsAllTouchMakingEmergencyCall: %ld\n", (a1[6] >> 7) & 1];
  [v2 appendFormat:@"  overrideIgnoresAllTouchAllowedAppNotFound: %ld\n", (a1[6] >> 8) & 1];
  [v2 appendFormat:@"  overrideIgnoresAllTouchVerifyingIntegrity: %ld\n", (a1[6] >> 9) & 1];
  [v2 appendFormat:@"  profileConfiguration: %ld\n", a1[5]];
  [v2 appendFormat:@"  allowsTouch: %ld\n", (a1[6] >> 10) & 1];
  [v2 appendFormat:@"  allowsLockButton: %ld\n", (a1[6] >> 11) & 1];
  [v2 appendFormat:@"  allowsAppExit: %ld\n", (a1[6] >> 12) & 1];
  [v2 appendFormat:@"  allowsHomeButton: %ld\n", (a1[6] >> 13) & 1];
  [v2 appendFormat:@"  allowsVolumeButtons: %ld\n", (a1[6] >> 14) & 1];
  [v2 appendFormat:@"  allowsRingerSwitch: %ld\n", (a1[6] >> 15) & 1];
  [v2 appendFormat:@"  allowsMotion: %ld\n", (a1[6] >> 16) & 1];
  [v2 appendFormat:@"  allowsAutolock: %ld\n", (a1[6] >> 17) & 1];
  [v2 appendFormat:@"  allowsKeyboardTextInput: %ld\n", (a1[6] >> 18) & 1];
  [v2 appendFormat:@"  allowsProximity: %ld\n", (a1[6] >> 19) & 1];

  return v2;
}

BOOL GAXSecTaskHasBooleanEntitlement(__SecTask *a1, void *a2)
{
  v3 = a2;
  error = 0;
  v4 = SecTaskCopyValueForEntitlement(a1, v3, &error);
  if (error)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v11 = a1;
      v12 = 2112;
      v13 = v3;
      v14 = 2112;
      v15 = error;
      _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Unable to check if task %@ has entitlement %@: %@", buf, 0x20u);
    }

    CFRelease(error);
  }

  if (v4)
  {
    v6 = CFGetTypeID(v4);
    v7 = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id GAXAllowedRemoteUIProcesses()
{
  if (qword_6D9F0 != -1)
  {
    sub_33E54();
  }

  v1 = qword_6D9E8;

  return v1;
}

void sub_2F728(id a1)
{
  v3[0] = @"com.apple.MailCompositionService";
  v3[1] = @"com.apple.mobilesms.compose";
  v3[2] = @"com.apple.MessageCompositionService";
  v3[3] = @"com.apple.social.remoteui.SocialUIService";
  v3[4] = @"com.apple.quicklook.quicklookd";
  v3[5] = @"com.apple.SafariViewService";
  v3[6] = @"com.apple.CoreAuthUI";
  v3[7] = @"com.apple.InCallService";
  v3[8] = @"com.apple.datadetectors.DDActionsService";
  v3[9] = @"com.apple.shortcuts.runtime";
  v3[10] = @"com.apple.SleepLockScreen";
  v3[11] = @"com.apple.ContactlessUIService";
  v1 = [NSArray arrayWithObjects:v3 count:12];
  v2 = qword_6D9E8;
  qword_6D9E8 = v1;
}

id GAXURLSchemeIsPhoneRelated(void *a1)
{
  v1 = [a1 scheme];
  if ([v1 isEqualToString:@"tel"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"facetime"))
  {
    v2 = &dword_0 + 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"facetime-audio"];
  }

  return v2;
}

id GAXLocalizedStringForTimeDuration(double a1)
{
  v2 = objc_opt_new();
  [v2 setZeroFormattingBehavior:1];
  [v2 setUnitsStyle:3];
  if (a1 >= 60.0)
  {
    if (a1 % 60 > 30)
    {
      a1 = a1 + 60.0;
    }

    v3 = 96;
  }

  else
  {
    v3 = 128;
  }

  [v2 setAllowedUnits:v3];
  v4 = [v2 stringFromTimeInterval:a1];

  return v4;
}

void sub_32B10(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) _datePickerWithInitialEnabledState:1 initialDurationInMinutes:{objc_msgSend(*(a1 + 32), "durationInMinutes")}];
    [*(a1 + 32) setDatePicker:v2];

    v3 = *(a1 + 32);
    v4 = [v3 datePicker];
    [v3 addSubview:v4];

    v5 = [*(a1 + 32) topShelfContainer];
    v6 = [*(a1 + 32) datePicker];
    v7 = _NSDictionaryOfVariableBindings(@"topShelfContainer, datePicker", v5, v6, 0);
    v8 = +[NSMutableArray array];
    v9 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[topShelfContainer][datePicker]|" options:0 metrics:&__NSDictionary0__struct views:v7];
    [v8 addObjectsFromArray:v9];

    v10 = [NSLayoutConstraint constraintWithItem:v6 attribute:9 relatedBy:0 toItem:*(a1 + 32) attribute:9 multiplier:1.0 constant:0.0];
    [v8 addObject:v10];

    [*(a1 + 32) addConstraints:v8];
    LODWORD(v11) = 1148846080;
    [v6 setContentHuggingPriority:1 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [v6 setContentCompressionResistancePriority:1 forAxis:v12];
    v13 = [*(a1 + 32) detailTextZeroHeightConstraint];

    if (v13)
    {
      v14 = *(a1 + 40);
      v15 = [*(a1 + 32) detailTextZeroHeightConstraint];
      [v14 removeConstraint:v15];

      [*(a1 + 32) setDetailTextZeroHeightConstraint:0];
    }
  }

  else
  {
    v16 = [*(a1 + 32) datePicker];
    LODWORD(v17) = 1132068864;
    [v16 setContentHuggingPriority:1 forAxis:v17];

    v18 = [*(a1 + 32) datePicker];
    LODWORD(v19) = 1132068864;
    [v18 setContentCompressionResistancePriority:1 forAxis:v19];

    v20 = [*(a1 + 32) datePicker];
    [v20 removeFromSuperview];

    [*(a1 + 32) setDatePicker:0];
    v5 = [NSLayoutConstraint constraintWithItem:*(a1 + 40) attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:0.0];
    LODWORD(v21) = 1148846080;
    [v5 setPriority:v21];
    [*(a1 + 40) addConstraint:v5];
    [*(a1 + 32) setDetailTextZeroHeightConstraint:v5];
  }

  if (*(a1 + 48))
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = [*(a1 + 32) datePicker];
  [v23 setAlpha:v22];
}

uint64_t sub_32E10(uint64_t a1)
{
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_33104(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_33128(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained delegate];

  if (objc_opt_respondsToSelector())
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = [v3 datePicker];
    [v5 featureView:v3 didChangeTimeRestrictionDuration:objc_msgSend(v4 timeRestrictionsEnabled:{"selectedDurationInMinutes"), objc_msgSend(*(a1 + 32), "isOn")}];
  }
}

void sub_335F0()
{
  sub_9CA4();
  sub_9C98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_336E8()
{
  sub_9CA4();
  sub_9C98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_337AC()
{
  sub_9CA4();
  sub_9C98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_3381C()
{
  sub_9CA4();
  sub_9C98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_3388C()
{
  sub_9CA4();
  sub_9C98();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_33DDC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "No fallback value was registered for profile key: %@", &v2, 0xCu);
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}