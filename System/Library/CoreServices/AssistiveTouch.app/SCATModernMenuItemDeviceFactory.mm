@interface SCATModernMenuItemDeviceFactory
+ (id)_stringForRingerOn:(BOOL)on;
+ (id)itemDetailsForItem:(id)item menu:(id)menu;
+ (id)menuItemWithItemDictionary:(id)dictionary menu:(id)menu delegate:(id)delegate;
+ (id)menuItemsForItem:(id)item menu:(id)menu delegate:(id)delegate;
+ (id)updateBlockForIdentifier:(id)identifier;
+ (void)_handleSpeakThis:(id)this;
+ (void)_handleSysdiagnose:(id)sysdiagnose;
@end

@implementation SCATModernMenuItemDeviceFactory

+ (id)menuItemsForItem:(id)item menu:(id)menu delegate:(id)delegate
{
  itemCopy = item;
  menuCopy = menu;
  delegateCopy = delegate;
  v11 = objc_alloc_init(NSMutableArray);
  v12 = [self actionMenuItemForItem:itemCopy menu:menuCopy delegate:delegateCopy];
  if (v12)
  {
    [v11 addObject:v12];
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = itemCopy;
    v13 = [self itemDetailsForItem:itemCopy menu:menuCopy];
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [self menuItemWithItemDictionary:*(*(&v21 + 1) + 8 * i) menu:menuCopy delegate:delegateCopy];
          [v11 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }

    itemCopy = v20;
  }

  return v11;
}

+ (id)itemDetailsForItem:(id)item menu:(id)menu
{
  itemCopy = item;
  menuCopy = menu;
  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceAppSwitcher])
  {
    v133[0] = @"device_appSwitcher";
    v132[0] = @"identifier";
    v132[1] = @"title";
    v8 = sub_100042B24(@"Device-App-Switcher");
    v132[2] = @"activateBehavior";
    v133[1] = v8;
    v133[2] = &off_1001E56A0;
    v9 = [NSDictionary dictionaryWithObjects:v133 forKeys:v132 count:3];
    v134 = v9;
    v10 = &v134;
LABEL_11:
    v11 = [NSArray arrayWithObjects:v10 count:1];
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceNotificationCenter])
  {
    v130[0] = @"device_notificationCenter";
    v129[0] = @"identifier";
    v129[1] = @"title";
    v8 = sub_100042B24(@"Device-Notification-Center");
    v129[2] = @"activateBehavior";
    v130[1] = v8;
    v130[2] = &off_1001E56A0;
    v9 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:3];
    v131 = v9;
    v10 = &v131;
    goto LABEL_11;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceControlCenter])
  {
    v127[0] = @"device_controlCenter";
    v126[0] = @"identifier";
    v126[1] = @"title";
    v8 = sub_100042B24(@"Device-Control-Center");
    v126[2] = @"activateBehavior";
    v127[1] = v8;
    v127[2] = &off_1001E56A0;
    v9 = [NSDictionary dictionaryWithObjects:v127 forKeys:v126 count:3];
    v128 = v9;
    v10 = &v128;
    goto LABEL_11;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceLockScreen])
  {
    v124[0] = @"device_lock";
    v123[0] = @"identifier";
    v123[1] = @"title";
    v8 = sub_100042B24(@"LOCK");
    v123[2] = @"activateBehavior";
    v124[1] = v8;
    v124[2] = &off_1001E56B8;
    v9 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:3];
    v125 = v9;
    v10 = &v125;
    goto LABEL_11;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceRotateScreen])
  {
    v121[0] = @"device_rotate";
    v120[0] = @"identifier";
    v120[1] = @"title";
    v8 = sub_100042B24(@"ORIENTATION");
    v120[2] = @"activateBehavior";
    v121[1] = v8;
    v121[2] = &off_1001E56A0;
    v9 = [NSDictionary dictionaryWithObjects:v121 forKeys:v120 count:3];
    v122 = v9;
    v10 = &v122;
    goto LABEL_11;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceMute])
  {
    v118[0] = @"device_mute";
    v117[0] = @"identifier";
    v117[1] = @"title";
    v13 = [self _stringForRingerOn:sub_100042494()];
    v117[2] = @"activateBehavior";
    v118[1] = v13;
    v118[2] = &off_1001E56D0;
    v14 = [NSDictionary dictionaryWithObjects:v118 forKeys:v117 count:3];
    v119 = v14;
    v8 = [NSArray arrayWithObjects:&v119 count:1];

    if (AXDeviceHasStaccato())
    {
      v115[0] = @"device_mute";
      v114[0] = @"identifier";
      v114[1] = @"title";
      v9 = sub_100042C9C(@"ACTION_BUTTON");
      v114[2] = @"activateBehavior";
      v115[1] = v9;
      v115[2] = &off_1001E56D0;
      v15 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:3];
      v116 = v15;
      v16 = &v116;
LABEL_20:
      v11 = [NSArray arrayWithObjects:v16 count:1];
LABEL_24:

      goto LABEL_12;
    }

LABEL_78:
    v11 = v8;
    goto LABEL_13;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceVolumeUpDown])
  {
    v112[0] = @"device_volumeDown";
    v111[0] = @"identifier";
    v111[1] = @"title";
    v8 = sub_100042B24(@"VOLUME_DOWN");
    v112[1] = v8;
    v112[2] = &off_1001E56D0;
    v111[2] = @"activateBehavior";
    v111[3] = @"menuItemGroup";
    v112[3] = @"menuItemGroupVolume";
    v9 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:4];
    v113[0] = v9;
    v110[0] = @"device_volumeUp";
    v109[0] = @"identifier";
    v109[1] = @"title";
    v15 = sub_100042B24(@"VOLUME_UP");
    v110[1] = v15;
    v110[2] = &off_1001E56D0;
    v109[2] = @"activateBehavior";
    v109[3] = @"menuItemGroup";
    v110[3] = @"menuItemGroupVolume";
    v17 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:4];
    v113[1] = v17;
    v18 = v113;
LABEL_23:
    v11 = [NSArray arrayWithObjects:v18 count:2];

    goto LABEL_24;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceSpotlightSearch])
  {
    v107[0] = @"device_spotlightSearch";
    v106[0] = @"identifier";
    v106[1] = @"title";
    v8 = sub_100042B24(@"SPOTLIGHT_SEARCH");
    v106[2] = @"activateBehavior";
    v107[1] = v8;
    v107[2] = &off_1001E56B8;
    v9 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:3];
    v108 = v9;
    v10 = &v108;
    goto LABEL_11;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceSiriVoiceControl])
  {
    if (j__AXDeviceIsSiriAvailable())
    {
      v19 = +[AXSystemAppServer server];
      isSiriVisible = [v19 isSiriVisible];

      if ((isSiriVisible & 1) == 0)
      {
        v101[0] = @"device_siri";
        v100[0] = @"identifier";
        v100[1] = @"title";
        v8 = sub_100042B24(@"SCAT_QUICK_ITEM_SIRI");
        v100[2] = @"activateBehavior";
        v101[1] = v8;
        v101[2] = &off_1001E56A0;
        v9 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:3];
        v102 = v9;
        v10 = &v102;
        goto LABEL_11;
      }
    }

    else if (j__AXDeviceIsVoiceControlAvailable())
    {
      v104[0] = @"device_voiceControl";
      v103[0] = @"identifier";
      v103[1] = @"title";
      v8 = sub_100042B24(@"SCAT_QUICK_ITEM_VOICE_CONTROL");
      v103[2] = @"activateBehavior";
      v104[1] = v8;
      v104[2] = &off_1001E56A0;
      v9 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:3];
      v105 = v9;
      v10 = &v105;
      goto LABEL_11;
    }
  }

  else if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceTypeToSiri])
  {
    if (j__AXDeviceIsSiriAvailable())
    {
      v98[0] = @"device_type_to_siri";
      v97[0] = @"identifier";
      v97[1] = @"title";
      v8 = sub_100042B24(@"SCAT_TYPE_TO_SIRI");
      v97[2] = @"activateBehavior";
      v98[1] = v8;
      v98[2] = &off_1001E56A0;
      v9 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:3];
      v99 = v9;
      v10 = &v99;
      goto LABEL_11;
    }
  }

  else
  {
    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceTripleClick])
    {
      v95[0] = @"device_tripleClick";
      v94[0] = @"identifier";
      v94[1] = @"title";
      v8 = +[CLFSystemShellSwitcher sharedSystemShellSwitcher];
      if ([v8 isClarityBoardEnabled])
      {
        v21 = @"TRIPLE_CLICK_ASSISTIVE_ACCESS";
      }

      else
      {
        v21 = @"TRIPLE_CLICK";
      }

      v9 = sub_100042B24(v21);
      v95[1] = v9;
      v95[2] = &off_1001E56B8;
      v94[2] = @"activateBehavior";
      v94[3] = @"assistiveAccess";
      v94[4] = @"guidedAccess";
      v95[3] = &__kCFBooleanTrue;
      v95[4] = &__kCFBooleanTrue;
      v15 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:5];
      v96 = v15;
      v16 = &v96;
      goto LABEL_20;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceShake])
    {
      v92[0] = @"device_shake";
      v91[0] = @"identifier";
      v91[1] = @"imageName";
      v8 = [NSString sc_deviceIconNameForIdentifier:?];
      v92[1] = v8;
      v91[2] = @"title";
      v9 = sub_100042B24(@"SHAKE");
      v92[2] = v9;
      v92[3] = &off_1001E56B8;
      v91[3] = @"activateBehavior";
      v91[4] = @"guidedAccess";
      v92[4] = &__kCFBooleanTrue;
      v15 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:5];
      v93 = v15;
      v16 = &v93;
      goto LABEL_20;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceScreenshot])
    {
      v89[0] = @"device_screenshot";
      v88[0] = @"identifier";
      v88[1] = @"title";
      v8 = sub_100042B24(@"SCREENSHOT");
      v88[2] = @"activateBehavior";
      v89[1] = v8;
      v89[2] = &off_1001E56B8;
      v9 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:3];
      v90 = v9;
      v10 = &v90;
      goto LABEL_11;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceIncreaseDecreaseZoom])
    {
      if (_AXSZoomTouchEnabled())
      {
        v86[0] = @"action_zoomOut";
        v85[0] = @"identifier";
        v85[1] = @"title";
        v8 = sub_100042B24(@"DECREASE_ZOOM");
        v86[1] = v8;
        v86[2] = &off_1001E56D0;
        v85[2] = @"activateBehavior";
        v85[3] = @"guidedAccess";
        v85[4] = @"menuItemGroup";
        v86[3] = &__kCFBooleanTrue;
        v86[4] = @"menuItemGroupZoom";
        v9 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:5];
        v87[0] = v9;
        v84[0] = @"action_zoomIn";
        v83[0] = @"identifier";
        v83[1] = @"title";
        v15 = sub_100042B24(@"INCREASE_ZOOM");
        v84[1] = v15;
        v84[2] = &off_1001E56D0;
        v83[2] = @"activateBehavior";
        v83[3] = @"guidedAccess";
        v83[4] = @"menuItemGroup";
        v84[3] = &__kCFBooleanTrue;
        v84[4] = @"menuItemGroupZoom";
        v17 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:5];
        v87[1] = v17;
        v18 = v87;
        goto LABEL_23;
      }
    }

    else if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceSpeakScreen])
    {
      if (_AXSSpeakThisEnabled())
      {
        v22 = +[AXSpringBoardServer server];
        isSpeakThisTemporarilyDisabled = [v22 isSpeakThisTemporarilyDisabled];

        if ((isSpeakThisTemporarilyDisabled & 1) == 0)
        {
          v81[0] = @"device_speakThis";
          v80[0] = @"identifier";
          v80[1] = @"title";
          v8 = sub_100042B24(@"SPEAK_SCREEN");
          v81[1] = v8;
          v81[2] = &off_1001E56B8;
          v80[2] = @"activateBehavior";
          v80[3] = @"guidedAccess";
          v81[3] = &__kCFBooleanTrue;
          v9 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:4];
          v82 = v9;
          v10 = &v82;
          goto LABEL_11;
        }
      }
    }

    else if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceSOS])
    {
      if (AXDeviceIsSOSAvailable())
      {
        v78[0] = @"device_SOS";
        v77[0] = @"identifier";
        v77[1] = @"title";
        v8 = sub_100042B24(@"SOS");
        v78[1] = v8;
        v78[2] = &off_1001E56B8;
        v77[2] = @"activateBehavior";
        v77[3] = @"guidedAccess";
        v78[3] = &__kCFBooleanTrue;
        v9 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:4];
        v79 = v9;
        v10 = &v79;
        goto LABEL_11;
      }
    }

    else if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceInterDevice])
    {
      delegate = [menuCopy delegate];
      v25 = [delegate canSearchForControllableDevicesWithMenu:menuCopy];

      if (v25)
      {
        v75[0] = @"device_multiDeviceSelectReceiver";
        v74[0] = @"identifier";
        v74[1] = @"title";
        v8 = sub_100042B24(@"CONNECT_TO_RECEIVER");
        v75[1] = v8;
        v75[2] = @"SCATIcon_interdevice_useOtherDevice";
        v74[2] = @"imageName";
        v74[3] = @"activateBehavior";
        v75[3] = &off_1001E56A0;
        v9 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:4];
        v76 = v9;
        v10 = &v76;
        goto LABEL_11;
      }

      delegate2 = [menuCopy delegate];
      v27 = [delegate2 canReturnControlToForwarderDevice:menuCopy];

      if (v27)
      {
        v72[0] = @"device_multiDeviceReturnToForwarder";
        v71[0] = @"identifier";
        v71[1] = @"title";
        v8 = sub_100042B24(@"DISCONNECT_FROM_FORWARDER");
        v72[1] = v8;
        v72[2] = @"SCATIcon_interdevice_cancel";
        v71[2] = @"imageName";
        v71[3] = @"activateBehavior";
        v72[3] = &off_1001E56E8;
        v9 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:4];
        v73 = v9;
        v10 = &v73;
        goto LABEL_11;
      }
    }

    else
    {
      if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceSysdiagnose])
      {
        v69[0] = @"device_sysdiagnose";
        v68[0] = @"identifier";
        v68[1] = @"title";
        v8 = sub_100042B24(@"SYSDIAGNOSE");
        v69[1] = v8;
        v69[2] = &off_1001E56E8;
        v68[2] = @"activateBehavior";
        v68[3] = @"guidedAccess";
        v69[3] = &__kCFBooleanTrue;
        v9 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:4];
        v70 = v9;
        v10 = &v70;
        goto LABEL_11;
      }

      if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceRebootDevice])
      {
        v66[0] = @"device_restart";
        v65[0] = @"identifier";
        v65[1] = @"title";
        v8 = sub_100042B24(@"REBOOT_DEVICE");
        v65[2] = @"activateBehavior";
        v66[1] = v8;
        v66[2] = &off_1001E56E8;
        v9 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:3];
        v67 = v9;
        v10 = &v67;
        goto LABEL_11;
      }

      if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceToggleDock])
      {
        if (AXDeviceSupportsSideApp())
        {
          v63[0] = @"device_dock";
          v62[0] = @"identifier";
          v62[1] = @"imageName";
          v8 = [NSString sc_deviceIconNameForIdentifier:?];
          v63[1] = v8;
          v62[2] = @"title";
          v9 = sub_100042B24(@"DOCK");
          v62[3] = @"activateBehavior";
          v63[2] = v9;
          v63[3] = &off_1001E56E8;
          v15 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:4];
          v64 = v15;
          v16 = &v64;
          goto LABEL_20;
        }
      }

      else if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceArmApplePay])
      {
        if (sub_100042534())
        {
          v28 = +[SCATScannerManager sharedManager];
          waitingForSecureIntent = [v28 waitingForSecureIntent];
        }

        else
        {
          waitingForSecureIntent = 0;
        }

        if ((AXDeviceCanArmApplePay() & 1) != 0 || waitingForSecureIntent)
        {
          v60[0] = @"device_applePay";
          v59[0] = @"identifier";
          v59[1] = @"title";
          v30 = sub_100042B24(@"APPLE_PAY");
          v59[2] = @"activateBehavior";
          v60[1] = v30;
          v60[2] = &off_1001E56E8;
          v31 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:3];
          v61 = v31;
          v8 = [NSArray arrayWithObjects:&v61 count:1];

          if (waitingForSecureIntent)
          {
            v57[0] = @"device_faceID";
            v56[0] = @"identifier";
            v56[1] = @"title";
            v9 = sub_100042B24(@"APPLE_PAY_CONFIRM");
            v56[2] = @"activateBehavior";
            v57[1] = v9;
            v57[2] = &off_1001E56E8;
            v15 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:3];
            v58 = v15;
            v16 = &v58;
            goto LABEL_20;
          }

          goto LABEL_78;
        }
      }

      else
      {
        if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceToggleCommandAndControl])
        {
          v53[0] = @"identifier";
          v53[1] = @"imageName";
          v54[0] = @"device_commandAndControl";
          v54[1] = @"IconCommandAndControl";
          v53[2] = @"title";
          v8 = sub_100042B24(@"COMMAND_AND_CONTROL");
          v53[3] = @"activateBehavior";
          v54[2] = v8;
          v54[3] = &off_1001E56E8;
          v9 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:4];
          v55 = v9;
          v10 = &v55;
          goto LABEL_11;
        }

        v32 = AXSSwitchControlMenuItemDeviceAssistiveTouch;
        if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceAssistiveTouch])
        {
          v51[0] = v32;
          v50[0] = @"identifier";
          v50[1] = @"title";
          v8 = sub_100042B24(@"SCAT_QUICK_ITEM_ASSISTIVE_TOUCH");
          v51[1] = v8;
          v51[2] = @"hand.point.up.fill";
          v50[2] = @"imageName";
          v50[3] = @"guidedAccess";
          v50[4] = @"activateBehavior";
          v51[3] = &__kCFBooleanFalse;
          v51[4] = &off_1001E56B8;
          v9 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:5];
          v52 = v9;
          v10 = &v52;
          goto LABEL_11;
        }

        if ([itemCopy isEqualToString:AXSSwitchControlMenuItemCameraButton])
        {
          if (AXDeviceSupportsCameraButton())
          {
            v48[0] = @"device_cameraButton";
            v47[0] = @"identifier";
            v47[1] = @"title";
            v8 = sub_100042D18(@"CAMERA_BUTTON");
            v48[1] = v8;
            v48[2] = @"SCATIcon_device_cameraButton";
            v47[2] = @"imageName";
            v47[3] = @"activateBehavior";
            v48[3] = &off_1001E56B8;
            v9 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:4];
            v49 = v9;
            v10 = &v49;
            goto LABEL_11;
          }
        }

        else if ([itemCopy isEqualToString:AXSSwitchControlMenuItemCameraButtonLightPress])
        {
          if (AXDeviceSupportsCameraButton())
          {
            v45[0] = @"device_cameraButtonLightPress";
            v44[0] = @"identifier";
            v44[1] = @"title";
            v8 = sub_100042D18(@"CAMERA_BUTTON_LIGHT_PRESS");
            v45[1] = v8;
            v45[2] = @"SCATIcon_device_cameraButton";
            v44[2] = @"imageName";
            v44[3] = @"activateBehavior";
            v45[3] = &off_1001E56B8;
            v9 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:4];
            v46 = v9;
            v10 = &v46;
            goto LABEL_11;
          }
        }

        else if ([itemCopy isEqualToString:AXSSwitchControlMenuItemCameraButtonDoubleLightPress])
        {
          if (AXDeviceSupportsCameraButton())
          {
            v42[0] = @"device_cameraButtonDoubleLightPress";
            v41[0] = @"identifier";
            v41[1] = @"title";
            v8 = sub_100042D18(@"CAMERA_BUTTON_DOUBLE_LIGHT_PRESS");
            v42[1] = v8;
            v42[2] = @"SCATIcon_device_cameraButton";
            v41[2] = @"imageName";
            v41[3] = @"activateBehavior";
            v42[3] = &off_1001E56B8;
            v9 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:4];
            v43 = v9;
            v10 = &v43;
            goto LABEL_11;
          }
        }

        else if ([itemCopy isEqualToString:AXSSwitchControlMenuItemVisualIntelligence])
        {
          if (AXDeviceSupportsCameraButton() && AXDeviceHasGreyMatterEnabled())
          {
            v39[0] = @"device_visualIntelligence";
            v38[0] = @"identifier";
            v38[1] = @"title";
            v8 = sub_100042D18(@"CAMERA_BUTTON_VISUAL_INTELLIGENCE");
            v38[2] = @"activateBehavior";
            v39[1] = v8;
            v39[2] = &off_1001E56B8;
            v9 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:3];
            v40 = v9;
            v10 = &v40;
            goto LABEL_11;
          }
        }

        else if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDeviceMenuBar])
        {
          v33 = +[AXSBMenuBarManager sharedInstance];
          isMenuBarSupported = [v33 isMenuBarSupported];

          if (isMenuBarSupported)
          {
            v36[0] = @"device_menuBar";
            v35[0] = @"identifier";
            v35[1] = @"title";
            v8 = sub_100042B24(@"MENU_BAR");
            v36[1] = v8;
            v36[2] = @"IconMenuBar";
            v35[2] = @"imageName";
            v35[3] = @"activateBehavior";
            v36[3] = &off_1001E56E8;
            v9 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];
            v37 = v9;
            v10 = &v37;
            goto LABEL_11;
          }
        }

        else
        {
          _AXAssert();
        }
      }
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

+ (id)menuItemWithItemDictionary:(id)dictionary menu:(id)menu delegate:(id)delegate
{
  dictionaryCopy = dictionary;
  delegateCopy = delegate;
  v9 = [dictionaryCopy objectForKey:@"identifier"];
  v26 = [dictionaryCopy objectForKey:@"title"];
  v10 = [dictionaryCopy objectForKey:@"imageName"];
  v11 = [dictionaryCopy objectForKey:@"activateBehavior"];
  unsignedIntegerValue = [v11 unsignedIntegerValue];

  v12 = [dictionaryCopy objectForKey:@"guidedAccess"];
  bOOLValue = [v12 BOOLValue];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"assistiveAccess"];
  v15 = v14;
  bOOLValue2 = bOOLValue;
  if (v14)
  {
    bOOLValue2 = [v14 BOOLValue];
  }

  if ([v9 isEqualToString:@"device_siri"])
  {
    v17 = &stru_1001D77C8;
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"device_type_to_siri"])
  {
    v17 = &stru_1001D77E8;
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"device_voiceControl"])
  {
    v17 = &stru_1001D7808;
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"device_appSwitcher"])
  {
    v17 = &stru_1001D7828;
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"device_notificationCenter"])
  {
    v17 = &stru_1001D7848;
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"device_controlCenter"])
  {
    v17 = &stru_1001D7868;
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"device_lock"])
  {
    v17 = &stru_1001D7888;
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"device_rotate"])
  {
    v17 = &stru_1001D78A8;
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"device_mute"])
  {
    v17 = &stru_1001D78C8;
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"device_volumeDown"])
  {
    v17 = &stru_1001D78E8;
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"device_volumeUp"])
  {
    v17 = &stru_1001D7908;
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"device_tripleClick"])
  {
    v17 = &stru_1001D7928;
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"device_shake"])
  {
    v17 = &stru_1001D7948;
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"device_screenshot"])
  {
    v17 = &stru_1001D7968;
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"action_zoomIn"])
  {
    v17 = &stru_1001D79A8;
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"action_zoomOut"])
  {
    v17 = &stru_1001D79C8;
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"device_speakThis"])
  {
    v18 = v28;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v19 = sub_1000F14C0;
LABEL_37:
    v18[2] = v19;
    v18[3] = &unk_1001D6298;
    v18[4] = self;
    v17 = objc_retainBlock(v18);
    goto LABEL_46;
  }

  if ([v9 isEqualToString:@"device_spotlightSearch"])
  {
    v17 = &stru_1001D79E8;
  }

  else if ([v9 isEqualToString:@"device_multiDeviceSelectReceiver"])
  {
    v17 = &stru_1001D7A08;
  }

  else if ([v9 isEqualToString:@"device_multiDeviceReturnToForwarder"])
  {
    v17 = &stru_1001D7A28;
  }

  else if ([v9 isEqualToString:@"device_SOS"])
  {
    v17 = &stru_1001D7A48;
  }

  else
  {
    if ([v9 isEqualToString:@"device_sysdiagnose"])
    {
      v18 = v27;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v19 = sub_1000F16A4;
      goto LABEL_37;
    }

    if ([v9 isEqualToString:@"device_restart"])
    {
      v17 = &stru_1001D7A68;
    }

    else if ([v9 isEqualToString:@"device_dock"])
    {
      v17 = &stru_1001D7A88;
    }

    else if ([v9 isEqualToString:@"device_applePay"])
    {
      v17 = &stru_1001D7AA8;
    }

    else if ([v9 isEqualToString:@"device_faceID"])
    {
      v17 = &stru_1001D7AC8;
    }

    else if ([v9 isEqualToString:@"device_commandAndControl"])
    {
      v17 = &stru_1001D7AE8;
    }

    else if ([v9 isEqualToString:AXSSwitchControlMenuItemDeviceAssistiveTouch])
    {
      v17 = &stru_1001D7B08;
    }

    else if ([v9 isEqualToString:@"device_cameraButton"])
    {
      v17 = &stru_1001D7B48;
    }

    else if ([v9 isEqualToString:@"device_cameraButtonLightPress"])
    {
      v17 = &stru_1001D7B68;
    }

    else if ([v9 isEqualToString:@"device_cameraButtonDoubleLightPress"])
    {
      v17 = &stru_1001D7B88;
    }

    else if ([v9 isEqualToString:@"device_visualIntelligence"])
    {
      v17 = &stru_1001D7BA8;
    }

    else if ([v9 isEqualToString:@"device_menuBar"])
    {
      v17 = &stru_1001D7BC8;
    }

    else
    {
      v17 = 0;
    }
  }

LABEL_46:
  v20 = [objc_opt_class() updateBlockForIdentifier:v9];
  LOBYTE(v24) = bOOLValue2;
  v21 = [SCATModernMenuItem itemWithIdentifier:v9 delegate:delegateCopy title:v26 imageName:v10 activateBehavior:unsignedIntegerValue allowedWithGuidedAccess:bOOLValue allowedWithAssistiveAccess:v24 activateHandler:v17 updateHandler:v20];

  v22 = [dictionaryCopy objectForKeyedSubscript:@"menuItemGroup"];
  [v21 setMenuItemGroupName:v22];

  return v21;
}

+ (void)_handleSpeakThis:(id)this
{
  thisCopy = this;
  screenPoint = [thisCopy screenPoint];

  if (!screenPoint)
  {
    _AXAssert();
  }

  screenPoint2 = [thisCopy screenPoint];

  if (screenPoint2)
  {
    screenPoint3 = [thisCopy screenPoint];
    [screenPoint3 CGPointValue];
    x = v6;
    y = v8;
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  v10 = +[SpeakThisServices sharedInstance];
  [v10 speakThisWithOptions:12 useAppAtPoint:&stru_1001D7BE8 errorHandler:{x, y}];
}

+ (void)_handleSysdiagnose:(id)sysdiagnose
{
  sysdiagnoseCopy = sysdiagnose;
  v4 = +[AXPISystemActionHelper sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F1C94;
  v6[3] = &unk_1001D3AB0;
  v7 = sysdiagnoseCopy;
  v5 = sysdiagnoseCopy;
  [v4 performSysdiagnoseWithStatusUpdateHandler:v6];
}

+ (id)_stringForRingerOn:(BOOL)on
{
  if (on)
  {
    v3 = @"MUTE";
  }

  else
  {
    v3 = @"UNMUTE";
  }

  v4 = sub_100042B24(v3);

  return v4;
}

+ (id)updateBlockForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"device_mute"])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F1E40;
    v7[3] = &unk_1001D4AA8;
    v7[4] = self;
    v5 = objc_retainBlock(v7);
  }

  else if ([identifierCopy isEqualToString:@"device_tripleClick"])
  {
    v5 = &stru_1001D7C08;
  }

  else if ([identifierCopy isEqualToString:@"device_visualIntelligence"])
  {
    v5 = &stru_1001D7C28;
  }

  else
  {
    v5 = &stru_1001D7C48;
  }

  return v5;
}

@end