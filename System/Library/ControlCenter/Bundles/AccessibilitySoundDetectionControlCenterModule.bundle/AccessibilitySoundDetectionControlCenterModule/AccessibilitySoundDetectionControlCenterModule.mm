id sub_29C9325CC(void *a1)
{
  v1 = MEMORY[0x29EDB9F48];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_2A23E0440 table:@"Accessibility"];

  return v4;
}

void sub_29C9329F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_29C932A28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained soundDetectionDelegate];
  [v2 openSoundDetectionSettings];

  return 0;
}

void sub_29C932A6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axSettingsDidChange];
}

uint64_t sub_29C933A84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 _confirmedToggleSoundDetectionStatusForType:?];
  }

  else
  {
    return [v1 _confirmedEnableSoundDetection:1];
  }
}

uint64_t sub_29C933BEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 _confirmedToggleSoundDetectionStatusForCustomType:?];
  }

  else
  {
    return [v1 _confirmedEnableSoundDetection:1];
  }
}

void sub_29C934FCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x380]);
  _Unwind_Resume(a1);
}

uint64_t sub_29C9352BC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 category];
  if ([v3 isEqualToString:*MEMORY[0x29EDBDD18]])
  {
    v4 = [v2 isModelReady];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_29C935328(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 category];
  if ([v3 isEqualToString:*MEMORY[0x29EDBDD10]])
  {
    v4 = [v2 isModelReady];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_29C935394(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDD80]];

  return 0;
}

uint64_t sub_29C9353D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDDA0]];

  return 0;
}

uint64_t sub_29C935414(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDDA8]];

  return 0;
}

uint64_t sub_29C935454(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _toggleSoundDetectionStatusForCustomType:*(a1 + 32)];

  return 0;
}

uint64_t sub_29C935490(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDD50]];

  return 0;
}

uint64_t sub_29C9354D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDD68]];

  return 0;
}

uint64_t sub_29C935510(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDD30]];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDD38]];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDD40]];

  return 0;
}

uint64_t sub_29C935594(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDD48]];

  return 0;
}

uint64_t sub_29C9355D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDD78]];

  return 0;
}

uint64_t sub_29C935614(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDD70]];

  return 0;
}

uint64_t sub_29C935654(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDD88]];

  return 0;
}

uint64_t sub_29C935694(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDD90]];

  return 0;
}

uint64_t sub_29C9356D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDDB0]];

  return 0;
}

uint64_t sub_29C935714(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _toggleSoundDetectionStatusForCustomType:*(a1 + 32)];

  return 0;
}

uint64_t sub_29C935750(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDD60]];

  return 0;
}

uint64_t sub_29C935790(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDD98]];

  return 0;
}

uint64_t sub_29C9357D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleSoundDetectionStatusForType:*MEMORY[0x29EDBDD58]];

  return 0;
}