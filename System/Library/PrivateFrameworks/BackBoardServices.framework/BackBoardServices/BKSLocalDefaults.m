@interface BKSLocalDefaults
- (BKSLocalDefaults)init;
- (id)valueForKey:(id)a3 defaultValueProvider:(id)a4;
- (void)_bindAndRegisterDefaults;
- (void)migrateDefaultsIfNecessary;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation BKSLocalDefaults

- (id)valueForKey:(id)a3 defaultValueProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BSAbstractDefaultDomain *)self _store];
  v9 = [v8 objectForKey:v7];

  if (v6 && !v9)
  {
    v9 = v6[2](v6);
  }

  return v9;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BSAbstractDefaultDomain *)self _store];
  [v8 setObject:v7 forKey:v6];
}

- (void)migrateDefaultsIfNecessary
{
  v2 = [(BSAbstractDefaultDomain *)self _store];
  [v2 removeObjectForKey:@"InvertColorsEnabled"];
}

- (void)_bindAndRegisterDefaults
{
  v50[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ignoreAccelerometerAndOrientationEvents"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"BKIgnoreAccelerometerAndOrientationEvents" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ALSEnabled"];
  v6 = MEMORY[0x1E695E118];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"BKEnableALS" toDefaultValue:MEMORY[0x1E695E118] options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ALSEpoch"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"BKALSUserPreferencesEpoch" toDefaultValue:&unk_1EF56BE80 options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ALSUserPreferences"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"BKALSUserPreferences" toDefaultValue:0 options:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ALSDelayOnUnlock"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"BKALSDelayOnUnlock" toDefaultValue:&unk_1EF56BE98 options:1];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"brightnessCurve"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"brightness-curve" toDefaultValue:&unk_1EF56BE80 options:1];

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ignoreTetheringPreferences"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v11 withDefaultKey:@"BKIgnoreTetherPrefs" toDefaultValue:v4 options:1];

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ditheringEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v12 withDefaultKey:@"BKDitherEnabled" toDefaultValue:v4 options:1];

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"simulatePhoneButton"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v13 withDefaultKey:@"SimulateRedGreenPhoneButton" toDefaultValue:v4 options:1];

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"digitizerSignpostsEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v14 withDefaultKey:@"BKDigitizerSignpostsEnabled" toDefaultValue:v4 options:1];

  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"digitizerVisualizeTouches"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v15 withDefaultKey:@"BKDigitizerVisualizeTouches" toDefaultValue:v4 options:1];

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"digitizerVisualizeHitTestRegions"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v16 withDefaultKey:@"BKDigitizerVisualizeHitTestRegions" toDefaultValue:v4 options:1];

  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"digitizerServicePersistentProperties"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v17 withDefaultKey:@"BKDigitizerPersistentServiceProperties" toDefaultValue:0 options:1];

  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"eventBufferingEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v18 withDefaultKey:@"BKHIDEventBufferingEnabled" toDefaultValue:v6 options:1];

  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"squeezeForSystemShortcutEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v19 withDefaultKey:@"BKSqueezeForSystemShortcutEnabled" toDefaultValue:v4 options:1];

  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualizeMousePointer"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v20 withDefaultKey:@"BKVisualizeMousePointer" toDefaultValue:v4 options:1];

  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"pointerRegionArrangementEdge"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v21 withDefaultKey:@"BKPointerRegionArrangementEdge" toDefaultValue:&unk_1EF56BEB0 options:1];

  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"globalMouseDevicePreferences"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v22 withDefaultKey:@"BKGlobalMouseDevicePreferences" toDefaultValue:0 options:1];

  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mouseInterpolation"];
  v50[0] = @"scroll";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
  [(BSAbstractDefaultDomain *)self _bindProperty:v23 withDefaultKey:@"BKMouseInterpolation" toDefaultValue:v24 options:4];

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showBuildNumber"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v25 withDefaultKey:@"BKShowBuildNumber" toDefaultValue:v4 options:1];

  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"loggingTypesEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v26 withDefaultKey:@"BackBoardLogging" toDefaultValue:0 options:1];

  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"forceMirroredOrientation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v27 withDefaultKey:@"BKForceMirroredOrientation" toDefaultValue:0 options:1];

  v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"hideAppleLogoOnLaunch"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v28 withDefaultKey:@"BKHideAppleLogoOnLaunch" toDefaultValue:v4 options:4];

  v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"steveNoteRotationEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v29 withDefaultKey:@"BKEnableStevenoteRotation" toDefaultValue:v4 options:1];

  v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableCloneMirroring"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v30 withDefaultKey:@"BKDisableCloneMirroring" toDefaultValue:v4 options:1];

  v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableCAOverscan"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v31 withDefaultKey:@"BKDisableCAOverscan" toDefaultValue:v4 options:1];

  v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableCAYUV"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v32 withDefaultKey:@"BKDisableCA_YUV" toDefaultValue:v4 options:1];

  v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableCAScaling"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v33 withDefaultKey:@"BKDisableCAScaling" toDefaultValue:v4 options:1];

  v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"steveNoteOverscanEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v34 withDefaultKey:@"BKEnableStevenoteOverscan" toDefaultValue:v4 options:1];

  v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"forceCloneMirroring"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v35 withDefaultKey:@"BKForceCloneMirroring" toDefaultValue:v4 options:1];

  v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableExtendedDisplayByDefault"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v36 withDefaultKey:@"BKDisableExtendedDisplayByDefault" toDefaultValue:v4 options:1];

  v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"allowWirelessExtendedDisplay"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v37 withDefaultKey:@"BKAllowWirelessExtendedDisplay" toDefaultValue:v6 options:1];

  v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableStudyLogVolumeKeyLogging"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v38 withDefaultKey:@"BKDisableStudyLogVolumeKeyLogging" toDefaultValue:v4 options:1];

  v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableStudyLogBTKeyboardEventRedirection"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v39 withDefaultKey:@"BKDisableStudyLogBTKeyboardEventRedirection" toDefaultValue:v4 options:1];

  v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableStudyLogBTKeyboardEventLogging"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v40 withDefaultKey:@"BKDisableStudyLogBTKeyboardEventLogging" toDefaultValue:v4 options:1];

  v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableStudyLogButtonLogging"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v41 withDefaultKey:@"BKDisableStudyLogButtonLogging" toDefaultValue:v4 options:1];

  v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableStudyLogHomeButtonLogging"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v42 withDefaultKey:@"BKDisableStudyLogHomeButtonLogging" toDefaultValue:v4 options:1];

  v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableStudyLogCameraKeyLogging"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v43 withDefaultKey:@"BKDisableStudyLogCameraKeyLogging" toDefaultValue:v4 options:1];

  v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableStudyLogPowerButtonLogging"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v44 withDefaultKey:@"BKDisableStudyLogPowerButtonLogging" toDefaultValue:v4 options:1];

  v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableStudyLogAccelerometerLogging"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v45 withDefaultKey:@"BKDisableStudyLogAccelerometerLogging" toDefaultValue:v4 options:1];

  v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableStudyLogALSLogging"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v46 withDefaultKey:@"BKDisableStudyLogALSLogging" toDefaultValue:v4 options:1];

  v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableStudyLogGyroLogging"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v47 withDefaultKey:@"BKDisableStudyLogGyroLogging" toDefaultValue:v4 options:1];

  v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"keyboardTypeRemap"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v48 withDefaultKey:@"BKKeyboardTypeRemap" toDefaultValue:0 options:1];

  v49 = *MEMORY[0x1E69E9840];
}

- (BKSLocalDefaults)init
{
  v3.receiver = self;
  v3.super_class = BKSLocalDefaults;
  return [(BSAbstractDefaultDomain *)&v3 _initWithDomain:@"com.apple.backboardd"];
}

@end