uint64_t sub_100001550(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_10001DD40 = objc_opt_new();

  return _objc_release_x1();
}

void sub_100001DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001DDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v11 = v8;
  if (a3 == 1028)
  {
    v10 = [AXEventRepresentation representationWithData:a4];
    if (([v10 additionalFlags] & 0x8000000) != 0)
    {
      [v11 _iosEventFilter:v10];
    }

    goto LABEL_8;
  }

  if (a3 == 1053)
  {
    if ([v8 snarfingEvents])
    {
      v9 = [v11 _axUIElementForNativeFocusItemChangedNotification:a4];
      [v11 _handleAccessibilityNotification:1053 forElement:v9];
      if (v9)
      {
        v10 = [[AXElement alloc] initWithAXUIElement:v9];
        [v11 _handleFocusMovedToElement:v10];
LABEL_8:
      }
    }
  }

  else
  {
    [v8 _handleAccessibilityNotification:a3 forElement:a2];
  }
}

void sub_10000203C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x100002014);
  }

  _Unwind_Resume(a1);
}

void sub_100002790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose((v46 - 232), 8);
  _Block_object_dispose((v46 - 184), 8);
  _Block_object_dispose((v46 - 136), 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1000027F0(uint64_t a1)
{
  v2 = [[AXElement alloc] initWithAXUIElement:*(a1 + 96)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(*(a1 + 40) + 8) + 40) label];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(*(*(a1 + 40) + 8) + 40) value];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(*(*(a1 + 40) + 8) + 40) hint];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(*(*(a1 + 40) + 8) + 40) uiElement];
  v15 = [v14 objectWithAXAttribute:5019];
  v16 = *(*(a1 + 72) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = sub_10000664C(*(a1 + 96), 0x836);
  v19 = *(*(a1 + 80) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v21 = *(*(*(a1 + 80) + 8) + 40);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [*(*(*(a1 + 80) + 8) + 40) count])
  {
    v22 = [*(*(*(a1 + 80) + 8) + 40) componentsJoinedByString:{@", "}];
    v23 = *(*(a1 + 88) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
  }

  v25 = *(a1 + 32);

  return dispatch_semaphore_signal(v25);
}

uint64_t sub_100002B78(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_10001DD50 = objc_opt_new();

  return _objc_release_x1();
}

void sub_100002EBC(id a1)
{
  v1 = +[XADDisplayManager sharedManager];
  [v1 setCursorFrameForElement:0];
}

void sub_100002F08(uint64_t a1)
{
  v3 = +[XADDisplayManager sharedManager];
  v2 = [*(a1 + 32) _currentElement];
  [v3 setCursorFrameForElement:v2];
}

void sub_1000030F8(id a1)
{
  v1 = qword_10001DD68;
  qword_10001DD68 = &__NSArray0__struct;
}

void sub_100003924(uint64_t a1, uint64_t a2)
{
  v6 = [NSString stringWithFormat:@"%@%i", @"AXAction-", a2];
  v4 = [*(a1 + 32) _humanReadableStringForAction:a2];
  v5 = [*(a1 + 32) addAttribute:v6 toSection:*(a1 + 40) withPrefix:@"Action" performsAction:1 settable:0 humanReadable:v4 valueType:1 overrideIsInternalWithValue:&__kCFBooleanFalse];
}

void sub_100004154(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_100004198(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateElementHighlight];
}

void sub_1000041D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateElementHighlight];
}

void sub_100004218(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateElementHighlight];
}

void sub_10000443C(void *a1, uint64_t a2)
{
  v8[0] = @"focused";
  v3 = a1;
  v4 = [NSNumber numberWithBool:a2];
  v8[1] = @"assistiveTech";
  v9[0] = v4;
  v9[1] = @"AXAudit";
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = [v3 uiElement];
  [v6 setAXAttribute:2018 withObject:v5 synchronous:0];

  v7 = [v3 elementForAttribute:2092];

  if (v7)
  {
    sub_10000443C(v7, a2);
  }
}

id sub_100004B88(void *a1)
{
  v1 = a1;
  v2 = [v1 uiElement];
  v3 = [v2 objectWithAXAttribute:5019];

  v4 = [AXAuditElement auditElementWithElement:v1 identifier:v3];
  v5 = sub_100004CAC(v1);
  v6 = [v1 elementRef];

  v7 = sub_10000664C(v6, 0x836);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 firstObject];
  }

  else
  {
    v8 = &stru_100019368;
  }

  v9 = [[AXAuditNode alloc] initWithAuditElement:v4 description:v5 roleDescription:v8];

  return v9;
}

id sub_100004CAC(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableString string];
  v3 = sub_10000664C([v1 elementRef], 0x836);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 length])
          {
            if ([v2 length])
            {
              [v2 appendFormat:@", %@", v9];
            }

            else
            {
              [v2 appendString:v9];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  v10 = [v1 label];
  if (![v10 length])
  {
    v11 = [v1 value];

    v10 = v11;
  }

  if ([v10 length])
  {
    v12 = [NSString stringWithFormat:@"%@ %@", v10, v2];
    [v2 setString:v12];
LABEL_19:

    goto LABEL_20;
  }

  pid = 0;
  if (AXUIElementGetPid([v1 elementRef], &pid) == kAXErrorSuccess && pid >= 1 && AuditDoesAllowDeveloperAttributes())
  {
    v12 = sub_10000664C([v1 elementRef], 0x13B5);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v2 appendFormat:@"<%@>", v12];
    }

    goto LABEL_19;
  }

LABEL_20:

  return v2;
}

id sub_100004F50(void *a1)
{
  v1 = [a1 children];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    if (v6 <= 0x32)
    {
      v9 = 50 - v6;
    }

    else
    {
      v9 = 0;
    }

    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v10 = sub_100004B88(*(*(&v12 + 1) + 8 * v8));
      [v2 addObject:{v10, v12}];

      if (v9 == v8)
      {
        break;
      }

      ++v6;
      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v2;
}

void *sub_1000050B0(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = v5;
    while (1)
    {
      v10 = v7;

      v11 = sub_100004B88(v9);

      if (a2 && !v8 && v7)
      {
        v12 = sub_100004F50(v9);
        if ([v12 count])
        {
          v13 = [[NSMutableArray alloc] initWithArray:v12];
          [v13 removeObject:v10];
          [v13 insertObject:v10 atIndex:0];
          [v11 setChildren:v13];
        }
      }

      else if (!v10)
      {
        if (!a3)
        {
          goto LABEL_14;
        }

        v16 = sub_100004F50(v9);
        if ([v16 count])
        {
LABEL_12:
          [v11 setChildren:v16];
        }

        goto LABEL_14;
      }

      v14 = [v11 children];
      v15 = [v14 count];

      if (!v15)
      {
        v21 = v10;
        v16 = [NSArray arrayWithObjects:&v21 count:1];
        goto LABEL_12;
      }

LABEL_14:
      pid = 0;
      if (AXUIElementGetPid([v9 elementRef], &pid) || pid < 1 || !AuditDoesAllowDeveloperAttributes())
      {
        goto LABEL_25;
      }

      v17 = [v9 parent];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        goto LABEL_25;
      }

      v9 = v17;
      v7 = v11;
      v8 = v10;
      if (!v17)
      {
        goto LABEL_25;
      }
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_25:
  v18 = v11;

  return v11;
}

id sub_100005D8C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (([v3 isAccessibilityOpaqueElementProvider] & 1) == 0)
  {
    v4 = sub_100005F18(v3);
  }

  if (v4)
  {
    v5 = [NSNumber numberWithLong:a2];
    v13[0] = v5;
    v13[1] = &off_100019978;
    v6 = [NSValue valueWithRange:0x7FFFFFFFLL, 0];
    v13[2] = v6;
    v13[3] = @"AXAudit";
    v7 = [NSArray arrayWithObjects:v13 count:4];

    v8 = [v4 elementForAttribute:95225 parameter:v7];
    v9 = [v8 uiElement];
    v10 = [v9 BOOLWithAXAttribute:2046];

    if (v10)
    {
      v11 = sub_100005D8C(v8, a2);

      v8 = v11;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_100005F18(void *a1)
{
  v1 = a1;
  v2 = [v1 elementForAttribute:2066];
  if (!v2)
  {
    v3 = [v1 elementForAttribute:2092];
    v4 = v3;
    if (v3)
    {
      v2 = sub_100005F18(v3);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void sub_1000063F8(uint64_t a1)
{
  v1 = [*(a1 + 32) _elementVisualsCoalescer];
  [v1 notifyUpdateElementVisualsEventDidOccur];
}

id sub_10000664C(const __AXUIElement *a1, const __CFString *a2)
{
  value = 0;
  v2 = AXUIElementCopyAttributeValue(a1, a2, &value);
  v3 = 0;
  if (v2 == kAXErrorSuccess && value)
  {
    v4 = CFGetTypeID(value);
    if (v4 == CFArrayGetTypeID() || v4 == CFStringGetTypeID() || v4 == CFDictionaryGetTypeID() || v4 == CFNumberGetTypeID() || v4 == CFURLGetTypeID())
    {
      v3 = value;
    }

    else
    {
      CFRelease(value);
      v3 = 0;
    }
  }

  return v3;
}

void sub_10000708C(uint64_t a1, void *a2)
{
  v2 = [a2 anyObject];
  [v2 _settingDidChange:AXAuditDeviceSettingIdentifierInvertColors];
}

void sub_1000070DC(uint64_t a1, void *a2)
{
  v2 = [a2 anyObject];
  [v2 _settingDidChange:AXAuditDeviceSettingIdentifierIncreaseContrast];
}

void sub_10000712C(uint64_t a1, void *a2)
{
  v2 = [a2 anyObject];
  [v2 _settingDidChange:AXAuditDeviceSettingIdentifierReduceMotion];
}

void sub_10000717C(uint64_t a1, void *a2)
{
  v2 = [a2 anyObject];
  [v2 _settingDidChange:AXAuditDeviceSettingIdentifierReduceTransparency];
}

void sub_1000071CC(uint64_t a1, void *a2)
{
  v2 = [a2 anyObject];
  [v2 _settingDidChange:AXAuditDeviceSettingIdentifierBoldFonts];
}

void sub_10000721C(uint64_t a1, void *a2)
{
  v2 = [a2 anyObject];
  [v2 _settingDidChange:AXAuditDeviceSettingIdentifierOnOffLabels];
}

void sub_10000726C(uint64_t a1, void *a2)
{
  v2 = [a2 anyObject];
  [v2 _settingDidChange:AXAuditDeviceSettingIdentifierButtonShapes];
}

void sub_1000072BC(uint64_t a1, void *a2)
{
  v2 = [a2 anyObject];
  [v2 _settingDidChange:AXAuditDeviceSettingIdentifierGrayscale];
}

void sub_10000730C(uint64_t a1, void *a2)
{
  v2 = [a2 anyObject];
  [v2 _settingDidChange:AXAuditDeviceSettingIdentifierDifferentiateWithoutColor];
}

void sub_10000735C(uint64_t a1, void *a2)
{
  v2 = [a2 anyObject];
  [v2 _settingDidChange:AXAuditDeviceSettingIdentifierFontsSize];
}

void sub_100007E08(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"DidPostContentSizeChanged" object:0];
}

void sub_100007E5C(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"DidPostContentSizeChanged" object:0];
}

uint64_t sub_100007F88(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_10001DD70 = objc_opt_new();

  return _objc_release_x1();
}

void sub_100008B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008B68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkFrontmostAppPidChanged];
}

void sub_100009004(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 addObserver:*(a1 + 32) selector:"_appStateChanged:" name:SBApplicationNotificationStateChanged object:0];

    _SBApplicationStateBeginGeneratingChangeNotifications();
  }

  else
  {
    SBApplicationStateEndGeneratingChangeNotifications();
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:*(a1 + 32) name:SBApplicationNotificationStateChanged object:0];
  }
}

void sub_100009184(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _deviceCaptureScreenshot];
  [v1 invokeCompletionWithReturnValue:v2 error:0];
}

void sub_100009630(uint64_t a1)
{
  v4 = +[AXAuditObjectTransportManager sharedManager];
  v2 = [v4 objectForTransportDictionary:*(a1 + 32) expectedClass:objc_opt_class()];
  v3 = +[XADInspectorManager sharedManager];
  [v3 setDelegate:*(a1 + 40)];
  [v3 focusOnElement:v2];
}

void sub_100009948(uint64_t a1)
{
  v4 = +[AXAuditObjectTransportManager sharedManager];
  v2 = [v4 objectForTransportDictionary:*(a1 + 32) expectedClass:objc_opt_class()];
  v3 = +[XADInspectorManager sharedManager];
  [v3 setDelegate:*(a1 + 40)];
  [v3 previewOnElement:v2];
}

void sub_100009AA4(uint64_t a1)
{
  v2 = +[XADInspectorManager sharedManager];
  [v2 setDelegate:*(a1 + 32)];
  [v2 setMonitoredEventType:*(a1 + 40)];
}

id sub_100009C04(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = [*(a1 + 48) BOOLValue];
  v3 = *(a1 + 32);

  return [v3 setShowVisuals:v2];
}

void sub_100009CE8(uint64_t a1)
{
  v2 = +[XADInspectorManager sharedManager];
  [v2 setDelegate:*(a1 + 32)];
  [v2 lockOnCurrentElement];
}

void sub_10000A184(uint64_t a1)
{
  v2 = +[AXAuditObjectTransportManager sharedManager];
  v3 = [v2 objectForTransportDictionary:*(a1 + 32) expectedClass:objc_opt_class()];
  v4 = [v2 objectForTransportDictionary:*(a1 + 40) expectedClass:objc_opt_class()];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A29C;
  v6[3] = &unk_1000188A0;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v5 element:v3 performAction:v4 withValue:0 completion:v6];
}

void sub_10000A404(uint64_t a1)
{
  v2 = +[AXAuditObjectTransportManager sharedManager];
  v3 = [v2 objectForTransportDictionary:*(a1 + 32) expectedClass:objc_opt_class()];
  v4 = [v2 objectForTransportDictionary:*(a1 + 40) expectedClass:objc_opt_class()];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A518;
  v6[3] = &unk_100018BF8;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v5 element:v3 valueForAttribute:v4 completion:v6];
}

void sub_10000A518(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = +[AXAuditObjectTransportManager sharedManager];
  v4 = [v5 transportDictionaryForObject:v3];

  [*(a1 + 32) invokeCompletionWithReturnValue:v4 error:0];
}

void sub_10000A71C(uint64_t a1)
{
  v2 = +[AXAuditObjectTransportManager sharedManager];
  v3 = [v2 objectForTransportDictionary:*(a1 + 32) expectedClass:objc_opt_class()];
  v4 = [v2 objectForTransportDictionary:*(a1 + 40) expectedClass:objc_opt_class()];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A838;
  v7[3] = &unk_100018BF8;
  v8 = *(a1 + 64);
  [v5 element:v3 valueForParameterizedAttribute:v4 withObject:v6 completion:v7];
}

void sub_10000A838(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = +[AXAuditObjectTransportManager sharedManager];
  v4 = [v5 transportDictionaryForObject:v3];

  [*(a1 + 32) invokeCompletionWithReturnValue:v4 error:0];
}

id sub_10000A9A4(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 focusOnAXElement:v3];
}

void sub_10000AB10(uint64_t a1)
{
  v4 = [*(a1 + 32) fetchSpecialElement:*(a1 + 48)];
  v2 = +[AXAuditObjectTransportManager sharedManager];
  v3 = [v2 transportDictionaryForObject:v4];
  [*(a1 + 40) invokeCompletionWithReturnValue:v3 error:0];
}

void sub_10000AC90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithUnsignedChar:_AXSMossdeepEnabled()];
  [v1 invokeCompletionWithReturnValue:v2 error:0];
}

void sub_10000AE24(uint64_t a1)
{
  v4 = [*(a1 + 32) fetchElementAtNormalizedDeviceCoordinate:{*(a1 + 48), *(a1 + 56)}];
  v2 = +[AXAuditObjectTransportManager sharedManager];
  v3 = [v2 transportDictionaryForObject:v4];
  [*(a1 + 40) invokeCompletionWithReturnValue:v3 error:0];
}

id sub_10000B184(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 deviceDidGetTargeted];
}

id sub_10000B27C(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setMonitoredEventType:0];
}

void sub_10000B39C(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [AXElement elementWithUIElement:*(a1 + 48)];
  [v2 focusOnAXElement:v3];
}

id sub_10000B4DC(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);

  return [v2 focusOnElementAtPoint:{v3, v4}];
}

void sub_10000BAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000BAD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000BAF0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 pid] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_10000BF68(uint64_t a1)
{
  v4 = +[AXAuditObjectTransportManager sharedManager];
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  v3 = [v4 transportArrayForArray:v2];

  [*(a1 + 32) invokeCompletionWithReturnValue:v3 error:0];
}

BOOL sub_10000C06C(id a1, AXElement *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = [(AXElement *)v4 bundleId];
  v6 = [v5 isEqualToString:@"com.apple.springboard"];

  v7 = [(AXElement *)v4 bundleId];
  v8 = [v7 isEqualToString:AX_SpotlightBundleName];

  v9 = +[AXSpringBoardServer server];
  v10 = [v9 jindoAppBundleIndentifiers];
  v11 = [(AXElement *)v4 bundleId];

  LODWORD(v4) = [v10 containsObject:v11];
  return ((v6 | v4 | v8) & 1) == 0;
}

id sub_10000C240(void *a1)
{
  v1 = a1;
  v2 = +[XADInspectorManager sharedManager];
  v3 = [v2 firstElementInHierarchy:v1];

  return v3;
}

id sub_10000C69C(uint64_t a1)
{
  [*(a1 + 32) set_screenChangeHandleAttempts:{objc_msgSend(*(a1 + 32), "_screenChangeHandleAttempts") + 1}];
  v2 = *(a1 + 32);

  return [v2 _handleScreenChangedNotification];
}

uint64_t start()
{
  if (DTHostInDeveloperMode())
  {
    v0 = _AXSApplicationAccessibilityEnabled();
    _AXSApplicationAccessibilitySetEnabled();
    _AXSSetAuditInspectionModeEnabled();
    SystemWide = AXUIElementCreateSystemWide();
    AXUIElementSetMessagingTimeout(SystemWide, 10000.0);
    if (!v0)
    {
      AXDisableAccessibilityOnTermination();
    }

    v2 = +[AXAuditPluginManager sharedManager];
    [v2 loadAuditBundles];

    mach_service = xpc_connection_create_mach_service("com.apple.accessibility.axAuditDaemon.deviceservice.xpc", 0, 1uLL);
    xpc_connection_set_event_handler(mach_service, &stru_100018D40);
    xpc_connection_resume(mach_service);
    v4 = lockdown_checkin_xpc();
    v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v5)
      {
        v8 = 136315650;
        v9 = getprogname();
        v10 = 1024;
        v11 = getpid();
        v12 = 1024;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s(%d) xpc-based lockdown checkin failure: %d\n", &v8, 0x18u);
      }

      exit(1);
    }

    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Starting RSD checkin handler.", &v8, 2u);
    }

    remote_service_listen();
    v6 = +[NSRunLoop currentRunLoop];
    [v6 run];

    return 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000D658();
    }

    return 1;
  }
}

void sub_10000CDF0(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000CF30;
    handler[3] = &unk_100018D68;
    v3 = v2;
    v5 = v3;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_resume(v3);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = getprogname();
    v8 = 1024;
    v9 = getpid();
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s(%d): Invalid connection\n", buf, 0x12u);
  }
}

void sub_10000CF30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    region = 0;
    v4 = xpc_dictionary_get_value(v3, "dtx_shared_memory");
    v5 = v4;
    if (v4 && xpc_shmem_map(v4, &region))
    {
      v6 = [DTXSharedMemoryTransport alloc];
      v7 = [v6 initWithMappedMemory:region];
      v8 = v7;
      if (v7)
      {
        sub_10000D204(v7);
        reply = xpc_dictionary_create_reply(v3);
        xpc_connection_send_message(*(a1 + 32), reply);
        v10 = *(a1 + 32);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10000D26C;
        v17[3] = &unk_1000188A0;
        v18 = v10;
        xpc_connection_send_barrier(v18, v17);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v14 = getprogname();
          v15 = getpid();
          pid = xpc_connection_get_pid(*(a1 + 32));
          *buf = 136315650;
          v21 = v14;
          v22 = 1024;
          v23 = v15;
          v24 = 1024;
          v25 = pid;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s(%d): failed to create transport; xpc peer: %d\n", buf, 0x18u);
        }

        xpc_connection_cancel(*(a1 + 32));
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v11 = getprogname();
        v12 = getpid();
        v13 = xpc_connection_get_pid(*(a1 + 32));
        *buf = 136315650;
        v21 = v11;
        v22 = 1024;
        v23 = v12;
        v24 = 1024;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s(%d): shared memory mapping failed; xpc peer: %d\n", buf, 0x18u);
      }

      xpc_connection_cancel(*(a1 + 32));
    }
  }

  else
  {
    xpc_connection_cancel(*(a1 + 32));
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = getprogname();
      v22 = 1024;
      v23 = getpid();
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s(%d): Invalid event type\n", buf, 0x12u);
    }
  }
}

void sub_10000D204(void *a1)
{
  v1 = a1;
  v2 = [[XADAuditServer alloc] initWithTransport:v1];

  [(XADAuditServer *)v2 resume];
}

void sub_10000D274(id a1, _lockdown_connection *a2, __CFDictionary *a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000D318;
  v4[3] = &unk_100018878;
  v4[4] = a2;
  v3 = [[DTXSocketTransport alloc] initWithConnectedSocket:lockdown_get_socket() disconnectAction:v4];
  sub_10000D204(v3);
}

uint64_t sub_10000D318(uint64_t a1)
{
  v2 = +[XADDisplayManager sharedManager];
  [v2 hideVisualsSynchronously];

  v3 = *(a1 + 32);

  return _lockdown_disconnect(v3);
}

uint64_t sub_10000D468(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RSD handler: Socket transport disconnect action fired. Closing socket.", v3, 2u);
  }

  return close(*(a1 + 32));
}

void sub_10000D4D8()
{
  v0 = 136315138;
  v1 = "[XADEventManager _handleAccessibilityNotification:forElement:]";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: took too long for AX IPC calls", &v0, 0xCu);
}

void sub_10000D574(void *a1)
{
  v2 = [a1 connection];
  if (v2)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = 136315650;
  v5 = "[XADAuditServer _checkFrontmostAppPidChanged]";
  v6 = 2112;
  v7 = v3;
  v8 = 2048;
  v9 = [a1 hostAPIVersion];
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: could not update running apps, connection is valid: %@, hostAPIVersion: %ld", &v4, 0x20u);
}