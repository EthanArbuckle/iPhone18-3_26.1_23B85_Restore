uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient24applyTransportPropertiesEP12OSDictionaryS1__block_invoke_4(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  if (v2)
  {
    *(v4 + 184) = 1;
    v5 = (*(*v2 + 168))(v2);
    v7 = a1[6];
    v6 = a1[7];
    *(v7 + 188) = v5;
    if (v6)
    {
      LODWORD(v6) = (*(*v6 + 168))(v6);
      v7 = a1[6];
    }

    *(v7 + 192) = v6;
    v8 = _gc_log_psvr2();
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(v3);
    _os_log_internal(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Transport.OutputDelay' override {\n\t outputEnqueueDelay {\n\t\t timeUS = %u\n\t\t uncertaintyUS = %u\n\t}\n}", RegistryEntryID, *(a1[6] + 188), *(a1[6] + 192));
  }

  else
  {
    *(v4 + 184) = 0;
    v10 = _gc_log_psvr2();
    v11 = IORegistryEntry::getRegistryEntryID(v3);
    _os_log_internal(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[%#010llx] Remove 'Transport.OutputDelay' override", v11);
  }

  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient24applyAccessoryPropertiesEP12OSDictionaryS1__block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  if (v2)
  {
    *(v4 + 256) = 1;
    v5 = (*(*v2 + 168))(v2);
    v7 = a1[6];
    v6 = a1[7];
    *(v7 + 260) = v5;
    if (v6)
    {
      LODWORD(v6) = (*(*v6 + 168))(v6);
      v7 = a1[6];
    }

    *(v7 + 264) = v6;
    v8 = _gc_log_psvr2();
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(v3);
    _os_log_internal(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Accessory.InputBTSubmissionDelay' override {\n\t inputBTSubmissionDelay {\n\t\t timeUS = %u\n\t\t uncertaintyUS = %u\n\t}\n}", RegistryEntryID, *(a1[6] + 260), *(a1[6] + 264));
  }

  else
  {
    *(v4 + 256) = 0;
    v10 = _gc_log_psvr2();
    v11 = IORegistryEntry::getRegistryEntryID(v3);
    _os_log_internal(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[%#010llx] Remove 'Accessory.InputBTSubmissionDelay' override", v11);
  }

  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient21applyDriverPropertiesEP12OSDictionaryS1__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 268) = (*(**(a1 + 48) + 152))(*(a1 + 48)) != 0;
  v3 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Driver' configuration {\n\toutputReportForced = %d\n}", RegistryEntryID, *(*(a1 + 40) + 268) & 1);
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient21applyDriverPropertiesEP12OSDictionaryS1__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 269) = (*(**(a1 + 48) + 152))(*(a1 + 48)) != 0;
  v3 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Driver' configuration {\n\toutputReportTransmissionTimingEnabled = %d\n}", RegistryEntryID, *(*(a1 + 40) + 269) & 1);
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient21applyDriverPropertiesEP12OSDictionaryS1__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 270) = (*(**(a1 + 48) + 152))(*(a1 + 48)) != 0;
  v3 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Driver' configuration {\n\toutputReportLateLatchEnabled = %d\n}", RegistryEntryID, *(*(a1 + 40) + 270) & 1);
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient21applyDriverPropertiesEP12OSDictionaryS1__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 272) = (*(**(a1 + 48) + 168))(*(a1 + 48));
  v3 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Driver' configuration {\n\toutputReportInterval = %u\n}", RegistryEntryID, *(*(a1 + 40) + 272));
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient23applyTimeSyncPropertiesEP12OSDictionaryS1__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 2416) = (*(**(a1 + 48) + 152))(*(a1 + 48)) != 0;
  v3 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'TimeSync.LockTimestampConversion' configuration {\n\tlockTimestampConversion = %d\n}", RegistryEntryID, *(*(a1 + 40) + 2416) & 1);
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient20applyInputPropertiesEP12OSDictionaryS1__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  OSNumber::doubleValue(*(a1 + 48));
  *(*(a1 + 40) + 26000) = v3;
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Input' configuration {\n\tInput.NormalizedThumbstickDeadzoneRadius = %f\n}", RegistryEntryID, *(*(a1 + 40) + 26000));
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient20applyInputPropertiesEP12OSDictionaryS1__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  OSNumber::doubleValue(*(a1 + 48));
  *(*(a1 + 40) + 26016) = v3;
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Input' configuration {\n\tInput.NormalizedThumbstickAxisSnapRadius = %f\n}", RegistryEntryID, *(*(a1 + 40) + 26016));
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient20applyInputPropertiesEP12OSDictionaryS1__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  OSNumber::doubleValue(*(a1 + 48));
  *(*(a1 + 40) + 26024) = v3;
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Input' configuration {\n\tInput.NormalizedTriggerDeadzone = %f\n}", RegistryEntryID, *(*(a1 + 40) + 26024));
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient25setStatusOverridePropertyEP12OSDictionary_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v21 = v3;
  if (v2)
  {
    v4 = (*(*v2 + 136))(v2);
    v5 = *(a1 + 48);
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_6:
    v6 = (*(*v5 + 136))(v5);
    v7 = 1;
    goto LABEL_14;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v4 = 1;
    goto LABEL_6;
  }

  if (!*(a1 + 56) && !*(a1 + 64) && !*(a1 + 72) && !*(a1 + 80))
  {
    v7 = *(a1 + 88) != 0;
    v4 = 1;
    goto LABEL_13;
  }

  v4 = 1;
LABEL_12:
  v7 = 1;
LABEL_13:
  v6 = 1;
LABEL_14:
  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = (*(*v8 + 136))(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (*(*v10 + 136))(v10);
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = (*(*v12 + 152))(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = (*(*v14 + 152))(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 88);
  if (v16)
  {
    v17 = (*(*v16 + 152))(v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v21);
  _os_log_internal(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Status' override {\n\t enabled = %d\n\t statusLEDControl = %{BOOL}d\n\t statusLEDBrightnessControl = %{BOOL}d\n\t statusLEDRelease = %{BOOL}d\n\t on = %{BOOL}d\n\t brightness = %hhu\n\t reserved = %hhu\n\t reserved2 = %hhu\n}", RegistryEntryID, v7, v4, v6, v9, v11, v13, v15, v17);
  *(PSVR2SenseDevice::getSharedPage(*(a1 + 96)) + 26074) = v7;
  *(PSVR2SenseDevice::getSharedPage(*(a1 + 96)) + 26075) = v4;
  *(PSVR2SenseDevice::getSharedPage(*(a1 + 96)) + 26076) = v6;
  *(PSVR2SenseDevice::getSharedPage(*(a1 + 96)) + 26077) = v9;
  *(PSVR2SenseDevice::getSharedPage(*(a1 + 96)) + 26078) = v11;
  *(PSVR2SenseDevice::getSharedPage(*(a1 + 96)) + 26079) = v13;
  *(PSVR2SenseDevice::getSharedPage(*(a1 + 96)) + 26080) = v15;
  *(PSVR2SenseDevice::getSharedPage(*(a1 + 96)) + 26081) = v17;
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient20applyPowerPropertiesEP12OSDictionaryS1__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 26048) = (*(**(a1 + 48) + 152))(*(a1 + 48));
  v3 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Power' configuration {\n\tPower.Disconnect.OnBattery.AtLevel = %hhu\n}", RegistryEntryID, *(*(a1 + 40) + 26048));
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient20applyPowerPropertiesEP12OSDictionaryS1__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 26049) = (*(**(a1 + 48) + 136))(*(a1 + 48));
  v3 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Power' configuration {\n\tPower.Disconnect.OnBattery.AtLowVoltage = %d\n}", RegistryEntryID, *(*(a1 + 40) + 26049) & 1);
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient20applyPowerPropertiesEP12OSDictionaryS1__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 26052) = (*(**(a1 + 48) + 168))(*(a1 + 48));
  v3 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Power' configuration {\n\tPower.Disconnect.OnBattery.NotHeldAfterTime = %u\n}", RegistryEntryID, *(*(a1 + 40) + 26052));
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient23applyTrackingPropertiesEP12OSDictionaryS1__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 26088) = (*(**(a1 + 48) + 152))(*(a1 + 48));
  v3 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Tracking' override {\n\tTracking.EmissionTimeIntervalMultiplier = %hhi\n}", RegistryEntryID, *(*(a1 + 40) + 26088));
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient23applyTrackingPropertiesEP12OSDictionaryS1__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 26092) = (*(**(a1 + 48) + 168))(*(a1 + 48));
  v3 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Tracking' override {\n\tTracking.EmissionTimeOffset = %i\n}", RegistryEntryID, *(*(a1 + 40) + 26092));
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient23applyTrackingPropertiesEP12OSDictionaryS1__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 26096) = (*(**(a1 + 48) + 168))(*(a1 + 48));
  v3 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Tracking' override {\n\tTracking.ExposureWindow = %u\n}", RegistryEntryID, *(*(a1 + 40) + 26096));
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient23applyTrackingPropertiesEP12OSDictionaryS1__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 26100) = (*(**(a1 + 48) + 168))(*(a1 + 48));
  v3 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Tracking' override {\n\tTracking.MinimumModificationInterval = %u\n}", RegistryEntryID, *(*(a1 + 40) + 26100));
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient23applyTrackingPropertiesEP12OSDictionaryS1__block_invoke_5(void *a1)
{
  v2 = a1[5];
  v3 = a1[9] || a1[10] || a1[11] || a1[12] != 0;
  v33 = v3;
  v35 = a1[4];
  v4 = a1[6];
  v27 = a1[8];
  v29 = a1[7];
  v5 = *(a1[13] + 26168);
  v6 = *(a1[13] + 26172);
  v7 = *(a1[13] + 26176);
  v8 = *(a1[13] + 26180);
  v9 = *(a1[13] + 26181);
  v10 = *(a1[13] + 26182);
  v11 = *(a1[13] + 26183);
  v31 = v4;
  if (v2)
  {
    v36 = (*(*v2 + 152))(v2);
    v4 = a1[6];
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v36 = *(a1[13] + 26166);
  if (v4)
  {
LABEL_7:
    v5 = (*(*v4 + 168))(v4);
  }

LABEL_8:
  v12 = a1[7];
  if (v12)
  {
    v6 = (*(*v12 + 152))(v12);
  }

  v13 = a1[8];
  if (v13)
  {
    v7 = (*(*v13 + 168))(v13);
  }

  v14 = a1[9];
  if (v14)
  {
    v8 = (*(*v14 + 152))(v14);
  }

  v15 = a1[10];
  if (v15)
  {
    v9 = (*(*v15 + 152))(v15);
  }

  v16 = a1[11];
  v34 = v9;
  if (v16)
  {
    v10 = (*(*v16 + 152))(v16);
  }

  v17 = v8;
  v18 = a1[12];
  v19 = v7;
  if (v18)
  {
    v11 = (*(*v18 + 152))(v18);
  }

  v20 = v27 != 0;
  v21 = v29 != 0;
  v28 = v29 != 0;
  v22 = v31 != 0;
  v30 = v31 != 0;
  v32 = v2 != 0;
  v23 = a1[13] + 24576;
  *(v23 + 1584) = 1;
  *(v23 + 1585) = v32;
  *(v23 + 1586) = v22;
  *(v23 + 1587) = v21;
  *(v23 + 1588) = v20;
  *(v23 + 1589) = v33;
  *(v23 + 1590) = v36;
  *(v23 + 1592) = v5;
  *(v23 + 1596) = v6;
  *(v23 + 1600) = v19;
  *(v23 + 1604) = v17;
  *(a1[13] + 26181) = v34;
  *(a1[13] + 26182) = v10;
  *(a1[13] + 26183) = v11;
  v24 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v35);
  _os_log_internal(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Tracking' override {\n\t mode = %hhu (Apply: %d)\n\t emissionTime = %u (Apply: %d)\n\t emissionLength = %hhu (Apply: %d)\n\t cyclePeriod = %u (Apply: %d)\n\t channel1 = %hhu (Apply: %d)\n\t channel2 = %hhu (Apply: %d)\n\t channel3 = %hhu (Apply: %d)\n\t channel4 = %hhu (Apply: %d)\n}", RegistryEntryID, v36, v32, v5, v30, v6, v28, v19, v20, v17, v33, v34, v33, v10, v33, v11, v33);
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient22applyHapticsPropertiesEP12OSDictionaryS1__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = *(a1[8] + 26189);
  v7 = *(a1[8] + 26190);
  if (v3)
  {
    v8 = (*(*v3 + 152))(a1[5]);
    v9 = a1[6];
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = *(a1[8] + 26188);
  v9 = a1[6];
  if (v4)
  {
LABEL_3:
    v6 = (*(*v9 + 152))(v9);
  }

LABEL_4:
  v10 = a1[7];
  if (v10)
  {
    v7 = (*(*v10 + 152))(v10);
  }

  v11 = v3 != 0;
  v12 = (a1[8] + 24576);
  *(a1[8] + 26184) = 1;
  v13 = v5 != 0;
  v12[1609] = v11;
  v14 = v4 != 0;
  v12[1610] = v14;
  v12[1611] = v13;
  v12[1612] = v8;
  v12[1613] = v6;
  v12[1614] = v7;
  v15 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Haptics' override {\n\t rumbleMode = %hhu (Apply: %d)\n\t rumbleStrength = %hhu (Apply: %d)\n\t rumbleMaxAmplitude = %hhu (Apply: %d)\n}", RegistryEntryID, v8, v11, v6, v14, v7, v13);
  return 0;
}

OSMetaClass *_GLOBAL__sub_I_PSVR2SenseDeviceHIDEventServerUserClient_cpp()
{
  result = OSMetaClass::OSMetaClass(&PSVR2SenseDeviceHIDEventServerUserClient::gMetaClass, "PSVR2SenseDeviceHIDEventServerUserClient", &IOUserClient2022::gMetaClass, 0xE8u);
  result->__vftable = off_42170;
  return result;
}

OSMetaClass *IOGCCircularDataQueue::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "IOGCCircularDataQueue", &IODataQueue::gMetaClass, 0x60u);
  result->__vftable = off_42650;
  return result;
}

void IOGCCircularDataQueue::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void IOGCCircularDataQueue::IOGCCircularDataQueue(IOGCCircularDataQueue *this, const OSMetaClass *a2)
{
  v2 = IODataQueue::IODataQueue(this, a2);
  v2->__vftable = &off_42558;
  v2[1].__vftable = 0;
}

void IOGCCircularDataQueue::~IOGCCircularDataQueue(IODataQueue *this)
{
  this->__vftable = &off_42558;
  v2 = this[1].__vftable;
  if (v2)
  {
    (*(v2->~IODataQueue + 5))(v2);
  }

  this[1].__vftable = 0;

  IODataQueue::~IODataQueue(this);
}

{
  this->__vftable = &off_42558;
  v2 = this[1].__vftable;
  if (v2)
  {
    (*(v2->~IODataQueue + 5))(v2);
  }

  this[1].__vftable = 0;

  IODataQueue::~IODataQueue(this);
}

{
  IOGCCircularDataQueue::~IOGCCircularDataQueue(this);

  _OSObject_typed_operator_delete(&IOGCCircularDataQueue_ktv, this, 96);
}

IODataQueue *IOGCCircularDataQueue::MetaClass::alloc(IOGCCircularDataQueue::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  v2 = IODataQueue::IODataQueue(v1, &IOGCCircularDataQueue::gMetaClass);
  v2->__vftable = &off_42558;
  v2[1].__vftable = 0;
  OSMetaClass::instanceConstructed(&IOGCCircularDataQueue::gMetaClass);
  return v1;
}

void IOGCCircularDataQueue::IOGCCircularDataQueue(IOGCCircularDataQueue *this)
{
  v1 = IODataQueue::IODataQueue(this, &IOGCCircularDataQueue::gMetaClass);
  v1->__vftable = &off_42558;
  v1[1].__vftable = 0;
  OSMetaClass::instanceConstructed(&IOGCCircularDataQueue::gMetaClass);
}

uint64_t IOGCCircularDataQueue::withEntries(IOGCCircularDataQueue *this, uint64_t a2)
{
  v4 = (*(IOGCCircularDataQueue::gMetaClass + 104))();
  v5 = v4;
  if (v4 && ((*(*v4 + 136))(v4, this, a2) & 1) == 0)
  {
    (*(*v5 + 40))(v5);
    return 0;
  }

  return v5;
}

uint64_t IOGCCircularDataQueue::initWithEntries(IOGCCircularDataQueue *this, int a2, int a3)
{
  if (result)
  {
    v7 = ((a3 + 7) & 0xFFFFFFF8) + 56;
    v8 = (v7 * a2);
    if (v8 >= 0xFFFFFFC0)
    {
      IOGCCircularDataQueue::initWithEntries(v8);
    }

    else
    {
      v9 = v8 + 64;
      v10 = IOBufferMemoryDescriptor::withOptions(0x10000u, v8 + 64, (v8 + 64 + ~(-1 << PAGE_SHIFT_CONST)) & ~~(-1 << PAGE_SHIFT_CONST));
      v11 = *(this + 4);
      if (v11)
      {
        (*(*v11 + 40))(v11);
      }

      *(this + 4) = v10;
      if (v10)
      {
        v12 = (v10->getBytesNoCopy)(v10);
        *(this + 2) = v12;
        inited = IOCircularDataQueueInitFixed(v12, this + 40, v9, v7, 0x123456789ABCDELL);
        v14 = _gc_log_debug();
        if (inited)
        {
          _os_log_internal(&dword_0, v14, OS_LOG_TYPE_DEBUG, "IOGCCircularDataQueue::initWithEntries failed: %{mach.errno}d.", inited);
          return 0;
        }

        else
        {
          _os_log_internal(&dword_0, v14, OS_LOG_TYPE_DEBUG, "IOGCCircularDataQueue::initWithEntries -> queueSize:%#x entryDataSize:%u", *(*(this + 2) + 8), *(*(this + 2) + 12));
          *(this + 3) = this + 64;
          return 1;
        }
      }

      IOGCCircularDataQueue::initWithEntries(v9);
    }

    return 0;
  }

  return result;
}

uint64_t IOGCCircularDataQueue::getMemoryDescriptor(IOGCCircularDataQueue *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    (*(*v1 + 32))(*(this + 4));
  }

  return v1;
}

vm_offset_t IOGCCircularDataQueue::getQueueID(IOGCCircularDataQueue *this)
{
  up_addr = 0;
  vm_kernel_unslide_or_perm_external(this, &up_addr);
  return up_addr;
}

BOOL IOGCCircularDataQueue::enqueue(IOGCCircularDataQueue *this, void *__src, size_t __len)
{
  v4 = IOCircularDataQueueEnqueueCopy(*(this + 2), this + 40, __src, __len);
  v5 = v4;
  if (v4)
  {
    IOGCCircularDataQueue::enqueue(v4);
  }

  else
  {
    (*(*this + 120))(this);
  }

  return v5 == 0;
}

OSMetaClass *IOGCCircularDataQueueCursor::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "IOGCCircularDataQueueCursor", &OSObject::gMetaClass, 0x28u);
  result->__vftable = off_427A0;
  return result;
}

void IOGCCircularDataQueueCursor::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void IOGCCircularDataQueueCursor::IOGCCircularDataQueueCursor(IOGCCircularDataQueueCursor *this, const OSMetaClass *a2)
{
  v2 = OSObject::OSObject(this, a2);
  v2->__vftable = &off_426E8;
  v2[1].__vftable = 0;
}

void IOGCCircularDataQueueCursor::~IOGCCircularDataQueueCursor(OSObject *this)
{
  this->__vftable = &off_426E8;
  v2 = this[1].__vftable;
  if (v2)
  {
    (*(v2->~OSObject + 5))(v2);
  }

  this[1].__vftable = 0;

  OSObject::~OSObject(this);
}

{
  this->__vftable = &off_426E8;
  v2 = this[1].__vftable;
  if (v2)
  {
    (*(v2->~OSObject + 5))(v2);
  }

  this[1].__vftable = 0;

  OSObject::~OSObject(this);
}

{
  IOGCCircularDataQueueCursor::~IOGCCircularDataQueueCursor(this);

  _OSObject_typed_operator_delete(&IOGCCircularDataQueueCursor_ktv, this, 40);
}

OSObject *IOGCCircularDataQueueCursor::MetaClass::alloc(IOGCCircularDataQueueCursor::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  v2 = OSObject::OSObject(v1, &IOGCCircularDataQueueCursor::gMetaClass);
  v2->__vftable = &off_426E8;
  v2[1].__vftable = 0;
  OSMetaClass::instanceConstructed(&IOGCCircularDataQueueCursor::gMetaClass);
  return v1;
}

void IOGCCircularDataQueueCursor::IOGCCircularDataQueueCursor(IOGCCircularDataQueueCursor *this)
{
  v1 = OSObject::OSObject(this, &IOGCCircularDataQueueCursor::gMetaClass);
  v1->__vftable = &off_426E8;
  v1[1].__vftable = 0;
  OSMetaClass::instanceConstructed(&IOGCCircularDataQueueCursor::gMetaClass);
}

uint64_t IOGCCircularDataQueueCursor::initWithQueue(IOGCCircularDataQueueCursor *this, IOGCCircularDataQueue *a2)
{
  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == 1)
  {
    (*(*a2 + 32))(a2);
    v6 = *(this + 2);
    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    *(this + 2) = a2;
  }

  return v5;
}

uint64_t IOGCCircularDataQueueCursor::read(IOGCCircularDataQueueCursor *this, void *a2, unsigned int *a3)
{
  v8 = a2;
  v3 = *(*(this + 2) + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZN27IOGCCircularDataQueueCursor4readEPvPj_block_invoke;
  v7[3] = &__block_descriptor_tmp_2;
  v7[4] = a3;
  v7[5] = a2;
  v4 = IOCircularDataQueueCursorAccess(v3, &v8, v7);
  v5 = v4;
  if (v4)
  {
    IOGCCircularDataQueueCursor::read(v4);
  }

  return v5;
}

void *___ZN27IOGCCircularDataQueueCursor4readEPvPj_block_invoke(uint64_t a1, const void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *v5;
  if (v6 <= a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  result = memmove(v4, a2, v7);
  **(a1 + 32) = v7;
  return result;
}

uint64_t IOGCCircularDataQueueCursor::access(IOGCCircularDataQueueCursor *this, void *a2, void *a3, int (*a4)(void *, void *, void *, unsigned int))
{
  v4 = *(*(this + 2) + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZN27IOGCCircularDataQueueCursor6accessEPvS0_PFiS0_S0_S0_jE_block_invoke;
  v8[3] = &__block_descriptor_tmp_11;
  v8[4] = a4;
  v8[5] = a2;
  v8[6] = a3;
  v5 = IOCircularDataQueueCursorAccess(v4, this + 3, v8);
  v6 = v5;
  if (v5)
  {
    IOGCCircularDataQueueCursor::access(v5);
  }

  return v6;
}

OSMetaClass *_GLOBAL__sub_I_IOGCCircularDataQueue_cpp()
{
  OSMetaClass::OSMetaClass(&IOGCCircularDataQueue::gMetaClass, "IOGCCircularDataQueue", &IODataQueue::gMetaClass, 0x60u)->__vftable = off_42650;
  result = OSMetaClass::OSMetaClass(&IOGCCircularDataQueueCursor::gMetaClass, "IOGCCircularDataQueueCursor", &OSObject::gMetaClass, 0x28u);
  result->__vftable = off_427A0;
  return result;
}

void global destructor keyed to_a_2()
{
  OSMetaClass::~OSMetaClass(&IOGCCircularDataQueueCursor::gMetaClass);

  OSMetaClass::~OSMetaClass(&IOGCCircularDataQueue::gMetaClass);
}

OSMetaClass *PSVR2SenseDeviceFastPathUserClientQueue::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "PSVR2SenseDeviceFastPathUserClientQueue", &IOService::gMetaClass, 0xA0u);
  result->__vftable = off_42DE8;
  return result;
}

void PSVR2SenseDeviceFastPathUserClientQueue::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void PSVR2SenseDeviceFastPathUserClientQueue::PSVR2SenseDeviceFastPathUserClientQueue(PSVR2SenseDeviceFastPathUserClientQueue *this, const OSMetaClass *a2)
{
  v2 = IOService::IOService(this, a2);
  v2->__vftable = off_42878;
  *&v2[1].retainCount = 0;
  v2[1].__vftable = 0;
  v2[1].IORegistryEntry::reserved = 0;
}

void PSVR2SenseDeviceFastPathUserClientQueue::~PSVR2SenseDeviceFastPathUserClientQueue(IOService *this)
{
  this->__vftable = off_42878;
  reserved = this[1].IORegistryEntry::reserved;
  if (reserved)
  {
    (*(*reserved + 40))(reserved);
  }

  this[1].IORegistryEntry::reserved = 0;
  v3 = *&this[1].retainCount;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *&this[1].retainCount = 0;
  v4 = this[1].__vftable;
  if (v4)
  {
    (*(v4->~IOService + 5))(v4);
  }

  this[1].__vftable = 0;

  IOService::~IOService(this);
}

void PSVR2SenseDeviceFastPathUserClientQueue::~PSVR2SenseDeviceFastPathUserClientQueue(PSVR2SenseDeviceFastPathUserClientQueue *this)
{
  __break(1u);
}

{
  __break(1u);
}

uint64_t PSVR2SenseDeviceFastPathUserClientQueue::init(PSVR2SenseDeviceFastPathUserClientQueue *this, OSDictionary *a2)
{
  if (v4)
  {
    if (a2)
    {
      v5 = (a2->getObject_1)(a2, "QueueChannel");
      v6 = OSNumber::metaClass;
      if (OSMetaClassBase::safeMetaCast(v5, OSNumber::metaClass))
      {
        (*(*this + 200))(this, "QueueChannel", v5);
        v7 = (a2->getObject_1)(a2, "QueueCapacity");
        if (OSMetaClassBase::safeMetaCast(v7, v6))
        {
          (*(*this + 200))(this, "QueueCapacity", v7);
        }
      }

      else
      {
        PSVR2SenseDeviceFastPathUserClientQueue::init();
      }
    }

    else
    {
      PSVR2SenseDeviceFastPathUserClientQueue::init();
    }
  }

  else
  {
    PSVR2SenseDeviceFastPathUserClientQueue::init();
  }

  return v4;
}

uint64_t PSVR2SenseDeviceFastPathUserClientQueue::start(PSVR2SenseDeviceFastPathUserClientQueue *this, IOService *a2)
{
  if (v4)
  {
    v5 = OSMetaClassBase::safeMetaCast(a2, &PSVR2SenseDeviceFastPathUserClient::gMetaClass);
    if (v5)
    {
      v6 = v5;
      v7 = (v5->__vftable[8].serialize)(v5);
      v8 = OSMetaClassBase::safeMetaCast(v7, &PSVR2SenseDevice::gMetaClass);
      if (v8)
      {
        v9 = v8;
        (v6->retain)(v6);
        v10 = *(this + 18);
        if (v10)
        {
          (*(*v10 + 40))(v10);
        }

        *(this + 18) = v6;
        (v9->retain)(v9);
        v11 = *(this + 17);
        if (v11)
        {
          (*(*v11 + 40))(v11);
        }

        *(this + 17) = v9;
        if (!*(this + 19))
        {
          v12 = (*(IOGCPortNotifier::gMetaClass + 104))();
          if (v12)
          {
            v13 = v12;
            if ((*(*v12 + 104))(v12))
            {
              __dmb(0xBu);
              v14 = *(this + 19);
              *(this + 19) = v13;
              (*(*v13 + 32))(v13);
              if (v14)
              {
                (*(*v14 + 40))(v14);
              }
            }

            else
            {
              PSVR2SenseDeviceFastPathUserClientQueue::start();
            }

            (*(*v13 + 40))(v13);
          }

          else
          {
            PSVR2SenseDeviceFastPathUserClientQueue::start();
          }
        }
      }

      else
      {
        PSVR2SenseDeviceFastPathUserClientQueue::start();
      }
    }

    else
    {
      PSVR2SenseDeviceFastPathUserClientQueue::start();
    }
  }

  else
  {
    PSVR2SenseDeviceFastPathUserClientQueue::start();
  }

  return v4;
}

uint64_t PSVR2SenseDeviceFastPathUserClientQueue::stop(PSVR2SenseDeviceFastPathUserClientQueue *this, IOService *a2)
{
  v4 = *(this + 19);
  if (v4)
  {
    (*(*v4 + 32))(*(this + 19));
    (*(*v4 + 152))(v4, 0);
    __dmb(0xBu);
    v5 = *(this + 19);
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    *(this + 19) = 0;
  }

  v6 = *(this + 17);
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 17) = 0;
  v7 = *(this + 18);
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  *(this + 18) = 0;
  if (v4)
  {
    v9 = *(*v4 + 40);

    return v9(v4);
  }

  return result;
}

uint64_t PSVR2SenseDeviceFastPathUserClientQueue::clientMemory(const IOService *this, unsigned int *a2, IOMemoryDescriptor **a3)
{
  if (IOService::isInactive(this))
  {
    PSVR2SenseDeviceFastPathUserClientQueue::clientMemory();
    return 3758097111;
  }

  else
  {
    v6 = (this->__vftable[1].release)(this);
    if (v6)
    {
      v7 = v6;
      v8 = (*(*v6 + 160))(v6);
      if (v8)
      {
        v9 = v8;
        v10 = OSMetaClassBase::safeMetaCast(v7, &IOGCCircularControlQueue::gMetaClass);
        if (v10)
        {
          v11 = v10;
          (v10->retain)(v10);
          (v11->release_0)(v11);
          v12 = 0;
        }

        else
        {
          v12 = 4096;
        }

        v13 = 0;
        *a2 = v12;
        *a3 = v9;
      }

      else
      {
        v13 = 3758097097;
        PSVR2SenseDeviceFastPathUserClientQueue::clientMemory();
      }

      (v7->release_0)(v7);
    }

    else
    {
      PSVR2SenseDeviceFastPathUserClientQueue::clientMemory();
      return 3758097112;
    }
  }

  return v13;
}

uint64_t PSVR2SenseDeviceFastPathUserClientQueue::registerNotificationPort(const IOService *this, ipc_port *a2)
{
  if (IOService::isInactive(this))
  {
    v5 = 3758097111;
    PSVR2SenseDeviceFastPathUserClientQueue::registerNotificationPort();
  }

  else
  {
    reserved = this[1].IORegistryEntry::reserved;
    if (reserved)
    {
      (*(*reserved + 32))(reserved);
      (*(*reserved + 152))(reserved, a2);
      (*(*reserved + 40))(reserved);
      return 0;
    }

    else
    {
      v6 = _gc_log_debug();
      _os_log_internal(&dword_0, v6, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "notifier", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/GameControllerDrivers/Sony/PSVR2/Kernel/PSVR2SenseDeviceFastPathUserClientQueue.cpp", 159, 0);
      return 3758097112;
    }
  }

  return v5;
}

OSMetaClass *PSVR2SenseDeviceFastPathUserClientInputQueue::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "PSVR2SenseDeviceFastPathUserClientInputQueue", &PSVR2SenseDeviceFastPathUserClientQueue::gMetaClass, 0xA8u);
  result->__vftable = off_433F0;
  return result;
}

void PSVR2SenseDeviceFastPathUserClientInputQueue::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void PSVR2SenseDeviceFastPathUserClientInputQueue::PSVR2SenseDeviceFastPathUserClientInputQueue(PSVR2SenseDeviceFastPathUserClientInputQueue *this, const OSMetaClass *a2)
{
  v2 = IOService::IOService(this, a2);
  v2[1].OSObject = 0u;
  v2->__vftable = &off_42E80;
  *&v2[1].IORegistryEntry::reserved = 0u;
}

void PSVR2SenseDeviceFastPathUserClientInputQueue::~PSVR2SenseDeviceFastPathUserClientInputQueue(IOService *this)
{
  this->__vftable = &off_42E80;
  fRegistryTable = this[1].fRegistryTable;
  if (fRegistryTable)
  {
    (fRegistryTable->release_0)(fRegistryTable);
  }

  this[1].fRegistryTable = 0;
  this->__vftable = off_42878;
  reserved = this[1].IORegistryEntry::reserved;
  if (reserved)
  {
    (*(*reserved + 40))(reserved);
  }

  this[1].IORegistryEntry::reserved = 0;
  v4 = *&this[1].retainCount;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *&this[1].retainCount = 0;
  v5 = this[1].__vftable;
  if (v5)
  {
    (*(v5->~IOService + 5))(v5);
  }

  this[1].__vftable = 0;

  IOService::~IOService(this);
}

{
  this->__vftable = &off_42E80;
  fRegistryTable = this[1].fRegistryTable;
  if (fRegistryTable)
  {
    (fRegistryTable->release_0)(fRegistryTable);
  }

  this[1].fRegistryTable = 0;
  this->__vftable = off_42878;
  reserved = this[1].IORegistryEntry::reserved;
  if (reserved)
  {
    (*(*reserved + 40))(reserved);
  }

  this[1].IORegistryEntry::reserved = 0;
  v4 = *&this[1].retainCount;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *&this[1].retainCount = 0;
  v5 = this[1].__vftable;
  if (v5)
  {
    (*(v5->~IOService + 5))(v5);
  }

  this[1].__vftable = 0;

  IOService::~IOService(this);
}

{
  PSVR2SenseDeviceFastPathUserClientInputQueue::~PSVR2SenseDeviceFastPathUserClientInputQueue(this);

  _OSObject_typed_operator_delete(&PSVR2SenseDeviceFastPathUserClientInputQueue_ktv, this, 168);
}

void PSVR2SenseDeviceFastPathUserClientInputQueue::MetaClass::alloc(PSVR2SenseDeviceFastPathUserClientInputQueue::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();

  PSVR2SenseDeviceFastPathUserClientInputQueue::PSVR2SenseDeviceFastPathUserClientInputQueue(v1);
}

void PSVR2SenseDeviceFastPathUserClientInputQueue::PSVR2SenseDeviceFastPathUserClientInputQueue(PSVR2SenseDeviceFastPathUserClientInputQueue *this)
{
  PSVR2SenseDeviceFastPathUserClientInputQueue::PSVR2SenseDeviceFastPathUserClientInputQueue(this);
}

{
  v1 = IOService::IOService(this, &PSVR2SenseDeviceFastPathUserClientInputQueue::gMetaClass);
  v1[1].OSObject = 0u;
  v1->__vftable = &off_42E80;
  *&v1[1].IORegistryEntry::reserved = 0u;
  OSMetaClass::instanceConstructed(&PSVR2SenseDeviceFastPathUserClientInputQueue::gMetaClass);
}

uint64_t PSVR2SenseDeviceFastPathUserClientInputQueue::start(IORegistryEntry *this, IOService *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  if (a2)
  {
    v6 = IORegistryEntry::getRegistryEntryID(a2);
  }

  else
  {
    v6 = 0;
  }

  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEBUG, "[%#010llx] PSVR2SenseDeviceFastPathUserClientInputQueue::start(<IOService %#010llx>)", RegistryEntryID, v6);
  v7 = PSVR2SenseDeviceFastPathUserClientQueue::start(this, a2);
  if (v7)
  {
    reserved = this[3].reserved;
    if (reserved)
    {
      (*(*reserved + 32))(this[3].reserved);
      v9 = (*(*reserved + 1552))(reserved);
      v10 = this[4].__vftable;
      if (v10)
      {
        (*(v10->~IORegistryEntry + 5))(v10);
      }

      this[4].__vftable = v9;
      if (v9)
      {
        v11 = OSNumber::withNumber(1uLL, 0x20u);
        (this->setProperty_1)(this, "HasDeviceSequenceIdentifiers", v11);
        v12 = (*(this[4].~IORegistryEntry + 21))();
        (this->setProperty_4)(this, "QueueID", v12, 64);
        v13 = (*(this[4].~IORegistryEntry + 22))();
        (this->setProperty_4)(this, "QueueGuard", v13, 64);
        v14 = (*(this[4].~IORegistryEntry + 23))();
        (this->setProperty_4)(this, "QueueMemorySize", v14, 32);
        v15 = (*(this[4].~IORegistryEntry + 24))();
        (this->setProperty_4)(this, "QueueEntrySize", v15, 32);
        if (v11)
        {
          (v11->release_0)(v11);
        }
      }

      else
      {
        PSVR2SenseDeviceFastPathUserClientInputQueue::start();
      }

      (*(*reserved + 40))(reserved);
    }

    else
    {
      v16 = _gc_log_debug();
      _os_log_internal(&dword_0, v16, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "device", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/GameControllerDrivers/Sony/PSVR2/Kernel/PSVR2SenseDeviceFastPathUserClientQueue.cpp", 192, 0);
    }
  }

  else
  {
    PSVR2SenseDeviceFastPathUserClientInputQueue::start();
  }

  return v7;
}

uint64_t PSVR2SenseDeviceFastPathUserClientInputQueue::stop(IORegistryEntry *this, IOService *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  if (a2)
  {
    v6 = IORegistryEntry::getRegistryEntryID(a2);
  }

  else
  {
    v6 = 0;
  }

  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEBUG, "[%#010llx] PSVR2SenseDeviceFastPathUserClientInputQueue::stop(<IOService %#010llx>)", RegistryEntryID, v6);

  return PSVR2SenseDeviceFastPathUserClientQueue::stop(this, a2);
}

uint64_t PSVR2SenseDeviceFastPathUserClientInputQueue::getQueue(PSVR2SenseDeviceFastPathUserClientInputQueue *this)
{
  v1 = *(this + 20);
  if (v1)
  {
    (*(*v1 + 32))(*(this + 20));
  }

  else
  {
    v2 = _gc_log_debug();
    _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "queue", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/GameControllerDrivers/Sony/PSVR2/Kernel/PSVR2SenseDeviceFastPathUserClientQueue.cpp", 234, 0);
  }

  return v1;
}

void PSVR2SenseDeviceFastPathUserClientInputQueue::notifyDataAvailable(const IOService *this)
{
  if (IOService::isInactive(this))
  {
    PSVR2SenseDeviceFastPathUserClientInputQueue::notifyDataAvailable();
  }

  else
  {
    __dmb(9u);
    reserved = this[1].IORegistryEntry::reserved;
    if (reserved)
    {
      (*(*reserved + 32))(reserved);
      (*(*reserved + 120))(reserved);
      v3 = *(*reserved + 40);

      v3(reserved);
    }

    else
    {
      v4 = _gc_log_debug();
      _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "notifier", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/GameControllerDrivers/Sony/PSVR2/Kernel/PSVR2SenseDeviceFastPathUserClientQueue.cpp", 252, 0);
    }
  }
}

OSMetaClass *PSVR2SenseDeviceFastPathUserClientTrackingQueue::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "PSVR2SenseDeviceFastPathUserClientTrackingQueue", &PSVR2SenseDeviceFastPathUserClientQueue::gMetaClass, 0xA8u);
  result->__vftable = off_439F8;
  return result;
}

void PSVR2SenseDeviceFastPathUserClientTrackingQueue::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void PSVR2SenseDeviceFastPathUserClientTrackingQueue::PSVR2SenseDeviceFastPathUserClientTrackingQueue(PSVR2SenseDeviceFastPathUserClientTrackingQueue *this, const OSMetaClass *a2)
{
  v2 = IOService::IOService(this, a2);
  v2[1].OSObject = 0u;
  v2->__vftable = &off_43488;
  *&v2[1].IORegistryEntry::reserved = 0u;
}

void PSVR2SenseDeviceFastPathUserClientTrackingQueue::~PSVR2SenseDeviceFastPathUserClientTrackingQueue(IOService *this)
{
  this->__vftable = &off_43488;
  fRegistryTable = this[1].fRegistryTable;
  if (fRegistryTable)
  {
    (fRegistryTable->release_0)(fRegistryTable);
  }

  this[1].fRegistryTable = 0;
  this->__vftable = off_42878;
  reserved = this[1].IORegistryEntry::reserved;
  if (reserved)
  {
    (*(*reserved + 40))(reserved);
  }

  this[1].IORegistryEntry::reserved = 0;
  v4 = *&this[1].retainCount;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *&this[1].retainCount = 0;
  v5 = this[1].__vftable;
  if (v5)
  {
    (*(v5->~IOService + 5))(v5);
  }

  this[1].__vftable = 0;

  IOService::~IOService(this);
}

{
  this->__vftable = &off_43488;
  fRegistryTable = this[1].fRegistryTable;
  if (fRegistryTable)
  {
    (fRegistryTable->release_0)(fRegistryTable);
  }

  this[1].fRegistryTable = 0;
  this->__vftable = off_42878;
  reserved = this[1].IORegistryEntry::reserved;
  if (reserved)
  {
    (*(*reserved + 40))(reserved);
  }

  this[1].IORegistryEntry::reserved = 0;
  v4 = *&this[1].retainCount;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *&this[1].retainCount = 0;
  v5 = this[1].__vftable;
  if (v5)
  {
    (*(v5->~IOService + 5))(v5);
  }

  this[1].__vftable = 0;

  IOService::~IOService(this);
}

{
  PSVR2SenseDeviceFastPathUserClientTrackingQueue::~PSVR2SenseDeviceFastPathUserClientTrackingQueue(this);

  _OSObject_typed_operator_delete(&PSVR2SenseDeviceFastPathUserClientTrackingQueue_ktv, this, 168);
}

void PSVR2SenseDeviceFastPathUserClientTrackingQueue::MetaClass::alloc(PSVR2SenseDeviceFastPathUserClientTrackingQueue::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();

  PSVR2SenseDeviceFastPathUserClientTrackingQueue::PSVR2SenseDeviceFastPathUserClientTrackingQueue(v1);
}

void PSVR2SenseDeviceFastPathUserClientTrackingQueue::PSVR2SenseDeviceFastPathUserClientTrackingQueue(PSVR2SenseDeviceFastPathUserClientTrackingQueue *this)
{
  PSVR2SenseDeviceFastPathUserClientTrackingQueue::PSVR2SenseDeviceFastPathUserClientTrackingQueue(this);
}

{
  v1 = IOService::IOService(this, &PSVR2SenseDeviceFastPathUserClientTrackingQueue::gMetaClass);
  v1[1].OSObject = 0u;
  v1->__vftable = &off_43488;
  *&v1[1].IORegistryEntry::reserved = 0u;
  OSMetaClass::instanceConstructed(&PSVR2SenseDeviceFastPathUserClientTrackingQueue::gMetaClass);
}

uint64_t PSVR2SenseDeviceFastPathUserClientTrackingQueue::start(IORegistryEntry *this, IOService *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  if (a2)
  {
    v6 = IORegistryEntry::getRegistryEntryID(a2);
  }

  else
  {
    v6 = 0;
  }

  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%#010llx] PSVR2SenseDeviceFastPathUserClientTrackingQueue::start(<IOService %#010llx>)", RegistryEntryID, v6);
  v7 = PSVR2SenseDeviceFastPathUserClientQueue::start(this, a2);
  if (v7)
  {
    reserved = this[3].reserved;
    if (reserved)
    {
      (*(*reserved + 32))(this[3].reserved);
      v9 = IOGCCircularControlQueue::withEntries((&dword_8 + 2), 40);
      v10 = this[4].__vftable;
      if (v10)
      {
        (*(v10->~IORegistryEntry + 5))(v10);
      }

      this[4].__vftable = v9;
      if (v9)
      {
        if ((*(*reserved + 1568))(reserved, this, 0, v9))
        {
          PSVR2SenseDeviceFastPathUserClientTrackingQueue::start();
        }

        else
        {
          v11 = (*(this[4].~IORegistryEntry + 21))(this[4].__vftable);
          (this->setProperty_4)(this, "QueueGuard", v11, 64);
          v12 = (*(this[4].~IORegistryEntry + 22))();
          (this->setProperty_4)(this, "QueueMemorySize", v12, 32);
          v13 = (*(this[4].~IORegistryEntry + 23))();
          (this->setProperty_4)(this, "QueueEntrySize", v13, 32);
        }
      }

      else
      {
        PSVR2SenseDeviceFastPathUserClientTrackingQueue::start();
      }

      (*(*reserved + 40))(reserved);
    }

    else
    {
      v14 = _gc_log_debug();
      _os_log_internal(&dword_0, v14, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "device", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/GameControllerDrivers/Sony/PSVR2/Kernel/PSVR2SenseDeviceFastPathUserClientQueue.cpp", 285, 0);
    }
  }

  else
  {
    PSVR2SenseDeviceFastPathUserClientTrackingQueue::start();
  }

  return v7;
}

uint64_t PSVR2SenseDeviceFastPathUserClientTrackingQueue::stop(IORegistryEntry *this, IOService *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  if (a2)
  {
    v6 = IORegistryEntry::getRegistryEntryID(a2);
  }

  else
  {
    v6 = 0;
  }

  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%#010llx] PSVR2SenseDeviceFastPathUserClientTrackingQueue::stop(<IOService %#010llx>)", RegistryEntryID, v6);
  reserved = this[3].reserved;
  if (reserved)
  {
    (*(*reserved + 32))(this[3].reserved);
    (*(*reserved + 1576))(reserved, this, 0);
    v8 = this[4].__vftable;
    if (v8)
    {
      (*(v8->~IORegistryEntry + 5))(v8);
    }

    this[4].__vftable = 0;
    PSVR2SenseDeviceFastPathUserClientQueue::stop(this, a2);
    v9 = *(*reserved + 40);

    return v9(reserved);
  }

  else
  {
    v11 = _gc_log_debug();
    _os_log_internal(&dword_0, v11, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "device", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/GameControllerDrivers/Sony/PSVR2/Kernel/PSVR2SenseDeviceFastPathUserClientQueue.cpp", 315, 0);

    return PSVR2SenseDeviceFastPathUserClientQueue::stop(this, a2);
  }
}

uint64_t PSVR2SenseDeviceFastPathUserClientTrackingQueue::getQueue(PSVR2SenseDeviceFastPathUserClientTrackingQueue *this)
{
  v1 = *(this + 20);
  if (v1)
  {
    (*(*v1 + 32))(*(this + 20));
  }

  return v1;
}

OSMetaClass *PSVR2SenseDeviceFastPathUserClientHapticsQueue::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "PSVR2SenseDeviceFastPathUserClientHapticsQueue", &PSVR2SenseDeviceFastPathUserClientQueue::gMetaClass, 0xA8u);
  result->__vftable = off_44000;
  return result;
}

void PSVR2SenseDeviceFastPathUserClientHapticsQueue::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void PSVR2SenseDeviceFastPathUserClientHapticsQueue::PSVR2SenseDeviceFastPathUserClientHapticsQueue(PSVR2SenseDeviceFastPathUserClientHapticsQueue *this, const OSMetaClass *a2)
{
  v2 = IOService::IOService(this, a2);
  v2[1].OSObject = 0u;
  v2->__vftable = &off_43A90;
  *&v2[1].IORegistryEntry::reserved = 0u;
}

void PSVR2SenseDeviceFastPathUserClientHapticsQueue::~PSVR2SenseDeviceFastPathUserClientHapticsQueue(IOService *this)
{
  this->__vftable = &off_43A90;
  fRegistryTable = this[1].fRegistryTable;
  if (fRegistryTable)
  {
    (fRegistryTable->release_0)(fRegistryTable);
  }

  this[1].fRegistryTable = 0;
  this->__vftable = off_42878;
  reserved = this[1].IORegistryEntry::reserved;
  if (reserved)
  {
    (*(*reserved + 40))(reserved);
  }

  this[1].IORegistryEntry::reserved = 0;
  v4 = *&this[1].retainCount;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *&this[1].retainCount = 0;
  v5 = this[1].__vftable;
  if (v5)
  {
    (*(v5->~IOService + 5))(v5);
  }

  this[1].__vftable = 0;

  IOService::~IOService(this);
}

{
  this->__vftable = &off_43A90;
  fRegistryTable = this[1].fRegistryTable;
  if (fRegistryTable)
  {
    (fRegistryTable->release_0)(fRegistryTable);
  }

  this[1].fRegistryTable = 0;
  this->__vftable = off_42878;
  reserved = this[1].IORegistryEntry::reserved;
  if (reserved)
  {
    (*(*reserved + 40))(reserved);
  }

  this[1].IORegistryEntry::reserved = 0;
  v4 = *&this[1].retainCount;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *&this[1].retainCount = 0;
  v5 = this[1].__vftable;
  if (v5)
  {
    (*(v5->~IOService + 5))(v5);
  }

  this[1].__vftable = 0;

  IOService::~IOService(this);
}

{
  PSVR2SenseDeviceFastPathUserClientHapticsQueue::~PSVR2SenseDeviceFastPathUserClientHapticsQueue(this);

  _OSObject_typed_operator_delete(&PSVR2SenseDeviceFastPathUserClientHapticsQueue_ktv, this, 168);
}

void PSVR2SenseDeviceFastPathUserClientHapticsQueue::MetaClass::alloc(PSVR2SenseDeviceFastPathUserClientHapticsQueue::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();

  PSVR2SenseDeviceFastPathUserClientHapticsQueue::PSVR2SenseDeviceFastPathUserClientHapticsQueue(v1);
}

void PSVR2SenseDeviceFastPathUserClientHapticsQueue::PSVR2SenseDeviceFastPathUserClientHapticsQueue(PSVR2SenseDeviceFastPathUserClientHapticsQueue *this)
{
  PSVR2SenseDeviceFastPathUserClientHapticsQueue::PSVR2SenseDeviceFastPathUserClientHapticsQueue(this);
}

{
  v1 = IOService::IOService(this, &PSVR2SenseDeviceFastPathUserClientHapticsQueue::gMetaClass);
  v1[1].OSObject = 0u;
  v1->__vftable = &off_43A90;
  *&v1[1].IORegistryEntry::reserved = 0u;
  OSMetaClass::instanceConstructed(&PSVR2SenseDeviceFastPathUserClientHapticsQueue::gMetaClass);
}

uint64_t PSVR2SenseDeviceFastPathUserClientHapticsQueue::start(IORegistryEntry *this, IOService *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  if (a2)
  {
    v6 = IORegistryEntry::getRegistryEntryID(a2);
  }

  else
  {
    v6 = 0;
  }

  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%#010llx] PSVR2SenseDeviceFastPathUserClientHapticsQueue::start(<IOService %#010llx>)", RegistryEntryID, v6);
  v7 = PSVR2SenseDeviceFastPathUserClientQueue::start(this, a2);
  if (v7)
  {
    reserved = this[3].reserved;
    if (reserved)
    {
      (*(*reserved + 32))(this[3].reserved);
      v9 = (this->copyProperty_4)(this, "QueueCapacity");
      v10 = OSMetaClassBase::safeMetaCast(v9, OSNumber::metaClass);
      if (v10)
      {
        v11 = v10;
        v12 = (v10->__vftable[1].isEqualTo)(v10);
        v13 = IOGCCircularControlQueue::withEntries(v12, 16);
        v14 = this[4].__vftable;
        if (v14)
        {
          (*(v14->~IORegistryEntry + 5))(v14);
        }

        this[4].__vftable = v13;
        if (v13)
        {
          if ((*(*reserved + 1584))(reserved, this, 0, v13))
          {
            PSVR2SenseDeviceFastPathUserClientHapticsQueue::start();
          }

          else
          {
            v15 = (*(this[4].~IORegistryEntry + 21))(this[4].__vftable);
            (this->setProperty_4)(this, "QueueGuard", v15, 64);
            v16 = (*(this[4].~IORegistryEntry + 22))();
            (this->setProperty_4)(this, "QueueMemorySize", v16, 32);
            v17 = (*(this[4].~IORegistryEntry + 23))();
            (this->setProperty_4)(this, "QueueEntrySize", v17, 32);
          }
        }

        else
        {
          PSVR2SenseDeviceFastPathUserClientHapticsQueue::start();
        }

        (v11->release_0)(v11);
      }

      else
      {
        if (v9)
        {
          (v9->release_0)(v9);
        }

        v19 = _gc_log_debug();
        _os_log_internal(&dword_0, v19, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "queueCapacity", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/GameControllerDrivers/Sony/PSVR2/Kernel/PSVR2SenseDeviceFastPathUserClientQueue.cpp", 362, 0);
      }

      (*(*reserved + 40))(reserved);
    }

    else
    {
      v18 = _gc_log_debug();
      _os_log_internal(&dword_0, v18, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "device", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/GameControllerDrivers/Sony/PSVR2/Kernel/PSVR2SenseDeviceFastPathUserClientQueue.cpp", 359, 0);
    }
  }

  else
  {
    PSVR2SenseDeviceFastPathUserClientHapticsQueue::start();
  }

  return v7;
}

uint64_t PSVR2SenseDeviceFastPathUserClientHapticsQueue::stop(IORegistryEntry *this, IOService *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  if (a2)
  {
    v6 = IORegistryEntry::getRegistryEntryID(a2);
  }

  else
  {
    v6 = 0;
  }

  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%#010llx] PSVR2SenseDeviceFastPathUserClientHapticsQueue::stop(<IOService %#010llx>)", RegistryEntryID, v6);
  reserved = this[3].reserved;
  if (reserved)
  {
    (*(*reserved + 32))(this[3].reserved);
    (*(*reserved + 1592))(reserved, this, 0);
    v8 = this[4].__vftable;
    if (v8)
    {
      (*(v8->~IORegistryEntry + 5))(v8);
    }

    this[4].__vftable = 0;
    PSVR2SenseDeviceFastPathUserClientQueue::stop(this, a2);
    v9 = *(*reserved + 40);

    return v9(reserved);
  }

  else
  {
    v11 = _gc_log_debug();
    _os_log_internal(&dword_0, v11, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "device", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/GameControllerDrivers/Sony/PSVR2/Kernel/PSVR2SenseDeviceFastPathUserClientQueue.cpp", 392, 0);

    return PSVR2SenseDeviceFastPathUserClientQueue::stop(this, a2);
  }
}

uint64_t PSVR2SenseDeviceFastPathUserClientHapticsQueue::getQueue(PSVR2SenseDeviceFastPathUserClientHapticsQueue *this)
{
  v1 = *(this + 20);
  if (v1)
  {
    (*(*v1 + 32))(*(this + 20));
  }

  return v1;
}

OSMetaClass *PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue", &PSVR2SenseDeviceFastPathUserClientQueue::gMetaClass, 0xA8u);
  result->__vftable = off_44608;
  return result;
}

void PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue(PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue *this, const OSMetaClass *a2)
{
  v2 = IOService::IOService(this, a2);
  v2[1].OSObject = 0u;
  v2->__vftable = &off_44098;
  *&v2[1].IORegistryEntry::reserved = 0u;
}

void PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::~PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue(IOService *this)
{
  this->__vftable = &off_44098;
  fRegistryTable = this[1].fRegistryTable;
  if (fRegistryTable)
  {
    (fRegistryTable->release_0)(fRegistryTable);
  }

  this[1].fRegistryTable = 0;
  this->__vftable = off_42878;
  reserved = this[1].IORegistryEntry::reserved;
  if (reserved)
  {
    (*(*reserved + 40))(reserved);
  }

  this[1].IORegistryEntry::reserved = 0;
  v4 = *&this[1].retainCount;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *&this[1].retainCount = 0;
  v5 = this[1].__vftable;
  if (v5)
  {
    (*(v5->~IOService + 5))(v5);
  }

  this[1].__vftable = 0;

  IOService::~IOService(this);
}

{
  this->__vftable = &off_44098;
  fRegistryTable = this[1].fRegistryTable;
  if (fRegistryTable)
  {
    (fRegistryTable->release_0)(fRegistryTable);
  }

  this[1].fRegistryTable = 0;
  this->__vftable = off_42878;
  reserved = this[1].IORegistryEntry::reserved;
  if (reserved)
  {
    (*(*reserved + 40))(reserved);
  }

  this[1].IORegistryEntry::reserved = 0;
  v4 = *&this[1].retainCount;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *&this[1].retainCount = 0;
  v5 = this[1].__vftable;
  if (v5)
  {
    (*(v5->~IOService + 5))(v5);
  }

  this[1].__vftable = 0;

  IOService::~IOService(this);
}

{
  PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::~PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue(this);

  _OSObject_typed_operator_delete(&PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue_ktv, this, 168);
}

void PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::MetaClass::alloc(PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();

  PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue(v1);
}

void PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue(PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue *this)
{
  PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue(this);
}

{
  v1 = IOService::IOService(this, &PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::gMetaClass);
  v1[1].OSObject = 0u;
  v1->__vftable = &off_44098;
  *&v1[1].IORegistryEntry::reserved = 0u;
  OSMetaClass::instanceConstructed(&PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::gMetaClass);
}

uint64_t PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::start(IORegistryEntry *this, IOService *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  if (a2)
  {
    v6 = IORegistryEntry::getRegistryEntryID(a2);
  }

  else
  {
    v6 = 0;
  }

  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEBUG, "[%#010llx] PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::start(<IOService %#010llx>)", RegistryEntryID, v6);
  v7 = PSVR2SenseDeviceFastPathUserClientQueue::start(this, a2);
  if (v7)
  {
    reserved = this[3].reserved;
    if (reserved)
    {
      (*(*reserved + 32))(this[3].reserved);
      v9 = (*(*reserved + 1560))(reserved);
      v10 = this[4].__vftable;
      if (v10)
      {
        (*(v10->~IORegistryEntry + 5))(v10);
      }

      this[4].__vftable = v9;
      if (v9)
      {
        v11 = OSNumber::withNumber(1uLL, 0x20u);
        (this->setProperty_1)(this, "HasDeviceSequenceIdentifiers", v11);
        v12 = (*(this[4].~IORegistryEntry + 22))();
        (this->setProperty_4)(this, "QueueGuard", v12, 64);
        v13 = (*(this[4].~IORegistryEntry + 23))();
        (this->setProperty_4)(this, "QueueMemorySize", v13, 32);
        v14 = (*(this[4].~IORegistryEntry + 24))();
        (this->setProperty_4)(this, "QueueEntrySize", v14, 32);
        if (v11)
        {
          (v11->release_0)(v11);
        }
      }

      else
      {
        PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::start();
      }

      (*(*reserved + 40))(reserved);
    }

    else
    {
      v15 = _gc_log_debug();
      _os_log_internal(&dword_0, v15, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "device", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/GameControllerDrivers/Sony/PSVR2/Kernel/PSVR2SenseDeviceFastPathUserClientQueue.cpp", 431, 0);
    }
  }

  else
  {
    PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::start();
  }

  return v7;
}

uint64_t PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::stop(IORegistryEntry *this, IOService *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  if (a2)
  {
    v6 = IORegistryEntry::getRegistryEntryID(a2);
  }

  else
  {
    v6 = 0;
  }

  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEBUG, "[%#010llx] PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::stop(<IOService %#010llx>)", RegistryEntryID, v6);

  return PSVR2SenseDeviceFastPathUserClientQueue::stop(this, a2);
}

uint64_t PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::getQueue(PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue *this)
{
  v1 = *(this + 20);
  if (v1)
  {
    (*(*v1 + 32))(*(this + 20));
  }

  else
  {
    v2 = _gc_log_debug();
    _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "queue", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/GameControllerDrivers/Sony/PSVR2/Kernel/PSVR2SenseDeviceFastPathUserClientQueue.cpp", 472, 0);
  }

  return v1;
}

OSMetaClass *_GLOBAL__sub_I_PSVR2SenseDeviceFastPathUserClientQueue_cpp()
{
  OSMetaClass::OSMetaClass(&PSVR2SenseDeviceFastPathUserClientQueue::gMetaClass, "PSVR2SenseDeviceFastPathUserClientQueue", &IOService::gMetaClass, 0xA0u);
  PSVR2SenseDeviceFastPathUserClientQueue::gMetaClass.__vftable = off_42DE8;
  OSMetaClass::OSMetaClass(&PSVR2SenseDeviceFastPathUserClientInputQueue::gMetaClass, "PSVR2SenseDeviceFastPathUserClientInputQueue", &PSVR2SenseDeviceFastPathUserClientQueue::gMetaClass, 0xA8u)->__vftable = off_433F0;
  OSMetaClass::OSMetaClass(&PSVR2SenseDeviceFastPathUserClientTrackingQueue::gMetaClass, "PSVR2SenseDeviceFastPathUserClientTrackingQueue", &PSVR2SenseDeviceFastPathUserClientQueue::gMetaClass, 0xA8u)->__vftable = off_439F8;
  OSMetaClass::OSMetaClass(&PSVR2SenseDeviceFastPathUserClientHapticsQueue::gMetaClass, "PSVR2SenseDeviceFastPathUserClientHapticsQueue", &PSVR2SenseDeviceFastPathUserClientQueue::gMetaClass, 0xA8u)->__vftable = off_44000;
  result = OSMetaClass::OSMetaClass(&PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::gMetaClass, "PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue", &PSVR2SenseDeviceFastPathUserClientQueue::gMetaClass, 0xA8u);
  result->__vftable = off_44608;
  return result;
}

void global destructor keyed to_a_3()
{
  OSMetaClass::~OSMetaClass(&PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::gMetaClass);
  OSMetaClass::~OSMetaClass(&PSVR2SenseDeviceFastPathUserClientHapticsQueue::gMetaClass);
  OSMetaClass::~OSMetaClass(&PSVR2SenseDeviceFastPathUserClientTrackingQueue::gMetaClass);
  OSMetaClass::~OSMetaClass(&PSVR2SenseDeviceFastPathUserClientInputQueue::gMetaClass);

  OSMetaClass::~OSMetaClass(&PSVR2SenseDeviceFastPathUserClientQueue::gMetaClass);
}

os_log_t OUTLINED_FUNCTION_1_0()
{

  return _gc_log_debug();
}

OSMetaClass *IOGCCircularControlQueue::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "IOGCCircularControlQueue", &IODataQueue::gMetaClass, 0x48u);
  result->__vftable = off_447C0;
  return result;
}

void IOGCCircularControlQueue::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void IOGCCircularControlQueue::IOGCCircularControlQueue(IOGCCircularControlQueue *this, const OSMetaClass *a2)
{
  v2 = IODataQueue::IODataQueue(this, a2);
  v2->__vftable = &off_446A0;
  v2[1].__vftable = 0;
}

void IOGCCircularControlQueue::~IOGCCircularControlQueue(IODataQueue *this)
{
  this->__vftable = &off_446A0;
  v2 = this[1].__vftable;
  if (v2)
  {
    (*(v2->~IODataQueue + 5))(v2);
  }

  this[1].__vftable = 0;

  IODataQueue::~IODataQueue(this);
}

{
  this->__vftable = &off_446A0;
  v2 = this[1].__vftable;
  if (v2)
  {
    (*(v2->~IODataQueue + 5))(v2);
  }

  this[1].__vftable = 0;

  IODataQueue::~IODataQueue(this);
}

{
  IOGCCircularControlQueue::~IOGCCircularControlQueue(this);

  _OSObject_typed_operator_delete(&IOGCCircularControlQueue_ktv, this, 72);
}

IODataQueue *IOGCCircularControlQueue::MetaClass::alloc(IOGCCircularControlQueue::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  v2 = IODataQueue::IODataQueue(v1, &IOGCCircularControlQueue::gMetaClass);
  v2->__vftable = &off_446A0;
  v2[1].__vftable = 0;
  OSMetaClass::instanceConstructed(&IOGCCircularControlQueue::gMetaClass);
  return v1;
}

void IOGCCircularControlQueue::IOGCCircularControlQueue(IOGCCircularControlQueue *this)
{
  v1 = IODataQueue::IODataQueue(this, &IOGCCircularControlQueue::gMetaClass);
  v1->__vftable = &off_446A0;
  v1[1].__vftable = 0;
  OSMetaClass::instanceConstructed(&IOGCCircularControlQueue::gMetaClass);
}

uint64_t IOGCCircularControlQueue::withEntries(IOGCCircularControlQueue *this, uint64_t a2)
{
  v4 = (*(IOGCCircularControlQueue::gMetaClass + 104))();
  v5 = v4;
  if (v4 && ((*(*v4 + 136))(v4, this, a2) & 1) == 0)
  {
    (*(*v5 + 40))(v5);
    return 0;
  }

  return v5;
}

uint64_t IOGCCircularControlQueue::initWithEntries(IOGCCircularControlQueue *this, int a2, unsigned int a3)
{
  if (result)
  {
    v7 = IOGCCircularControlQueueMemorySize(a3, a2);
    if (v7)
    {
      v8 = (v7 + ~(-1 << PAGE_SHIFT_CONST)) & ~~(-1 << PAGE_SHIFT_CONST);
      v9 = IOBufferMemoryDescriptor::withOptions(0x10000u, v8, 0x4000uLL);
      v10 = *(this + 4);
      if (v10)
      {
        (*(*v10 + 40))(v10);
      }

      *(this + 4) = v9;
      if (v9)
      {
        v11 = (v9->getBytesNoCopy)(v9);
        *(this + 2) = v11;
        *(this + 5) = v11;
        return IOGCCircularControlQueueMemoryInit(v11, this + 48, v8, a3, 0x1111111111111111uLL) == 0;
      }

      else
      {
        v13 = _gc_log_debug();
        _os_log_internal(&dword_0, v13, OS_LOG_TYPE_DEBUG, "::initWithEntries failed: could not allocate memory.");
        return 0;
      }
    }

    else
    {
      v12 = _gc_log_debug();
      _os_log_internal(&dword_0, v12, OS_LOG_TYPE_DEBUG, "::initWithEntries failed: invalid entry data size [%u].", a3);
      return 0;
    }
  }

  return result;
}

uint64_t IOGCCircularControlQueue::getMemoryDescriptor(IOGCCircularControlQueue *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    (*(*v1 + 32))(*(this + 4));
  }

  return v1;
}

OSMetaClass *_GLOBAL__sub_I_IOGCCircularControlQueue_cpp()
{
  result = OSMetaClass::OSMetaClass(&IOGCCircularControlQueue::gMetaClass, "IOGCCircularControlQueue", &IODataQueue::gMetaClass, 0x48u);
  result->__vftable = off_447C0;
  return result;
}

OSMetaClass *IOHIDGCDevice::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "IOHIDGCDevice", &IOService::gMetaClass, 0xC0u);
  result->__vftable = off_44E80;
  return result;
}

void IOHIDGCDevice::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void IOHIDGCDevice::IOHIDGCDevice(IOHIDGCDevice *this, const OSMetaClass *a2)
{
  v2 = IOService::IOService(this, a2);
  v2->__vftable = &off_44858;
  v2[1].OSObject = 0u;
  *&v2[1].IORegistryEntry::reserved = 0u;
}

void IOHIDGCDevice::~IOHIDGCDevice(IOService *this)
{
  this->__vftable = &off_44858;
  fRegistryTable = this[1].fRegistryTable;
  if (fRegistryTable)
  {
    (fRegistryTable->release_0)(fRegistryTable);
  }

  this[1].fRegistryTable = 0;
  reserved = this[1].IORegistryEntry::reserved;
  if (reserved)
  {
    (*(*reserved + 40))(reserved);
  }

  this[1].IORegistryEntry::reserved = 0;
  v4 = *&this[1].retainCount;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *&this[1].retainCount = 0;
  v5 = this[1].__vftable;
  if (v5)
  {
    (*(v5->~IOService + 5))(v5);
  }

  this[1].__vftable = 0;

  IOService::~IOService(this);
}

{
  this->__vftable = &off_44858;
  fRegistryTable = this[1].fRegistryTable;
  if (fRegistryTable)
  {
    (fRegistryTable->release_0)(fRegistryTable);
  }

  this[1].fRegistryTable = 0;
  reserved = this[1].IORegistryEntry::reserved;
  if (reserved)
  {
    (*(*reserved + 40))(reserved);
  }

  this[1].IORegistryEntry::reserved = 0;
  v4 = *&this[1].retainCount;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *&this[1].retainCount = 0;
  v5 = this[1].__vftable;
  if (v5)
  {
    (*(v5->~IOService + 5))(v5);
  }

  this[1].__vftable = 0;

  IOService::~IOService(this);
}

{
  IOHIDGCDevice::~IOHIDGCDevice(this);

  _OSObject_typed_operator_delete(&IOHIDGCDevice_ktv, this, 192);
}

void IOHIDGCDevice::MetaClass::alloc(IOHIDGCDevice::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();

  IOHIDGCDevice::IOHIDGCDevice(v1);
}

void IOHIDGCDevice::IOHIDGCDevice(IOHIDGCDevice *this)
{
  IOHIDGCDevice::IOHIDGCDevice(this);
}

{
  v1 = IOService::IOService(this, &IOHIDGCDevice::gMetaClass);
  v1->__vftable = &off_44858;
  v1[1].OSObject = 0u;
  *&v1[1].IORegistryEntry::reserved = 0u;
  OSMetaClass::instanceConstructed(&IOHIDGCDevice::gMetaClass);
}

uint64_t IOHIDGCDevice::start(OSObject *this, IOService *anObject)
{
  v4 = OSMetaClassBase::safeMetaCast(anObject, IOHIDInterface::metaClass);
  v5 = v4;
  if (v4)
  {
    (v4->retain)(v4);
  }

  v6 = this[9].__vftable;
  if (v6)
  {
    (*(v6->~OSObject + 5))(v6);
  }

  this[9].__vftable = v5;
  if (v5)
  {
    v7 = (v5->__vftable[8].serialize)(v5);
    v8 = OSMetaClassBase::safeMetaCast(v7, IOHIDDevice::metaClass);
    v9 = v8;
    if (v8)
    {
      (v8->retain)(v8);
    }

    v10 = *&this[8].retainCount;
    if (v10)
    {
      (*(*v10 + 40))(v10);
    }

    *&this[8].retainCount = v9;
    if (v9)
    {
      {
        v11 = (anObject->getWorkLoop)(anObject);
        v12 = v11;
        if (v11)
        {
          (*(*v11 + 32))(v11);
        }

        v13 = *&this[9].retainCount;
        if (v13)
        {
          (*(*v13 + 40))(v13);
        }

        *&this[9].retainCount = v12;
        if (v12)
        {
          v14 = IOCommandGate::commandGate(this, 0);
          v15 = this[10].__vftable;
          if (v15)
          {
            (*(v15->~OSObject + 5))(v15);
          }

          this[10].__vftable = v14;
          if (!v14)
          {
            IOHIDGCDevice::start();
            return 1;
          }

          v16 = (*(**&this[9].retainCount + 160))(*&this[9].retainCount, v14);
          if (v16)
          {
            IOHIDGCDevice::start(v16);
            return 1;
          }

          v17 = (this->__vftable[11].retain)(this);
          (this->__vftable[1].taggedRelease)(this, "Transport", v17);
          v18 = (this->__vftable[11].release_0)(this);
          (this->__vftable[1].init)(this, "LocationID", v18, 32);
          v19 = (this->__vftable[11].serialize)(this);
          (this->__vftable[1].init)(this, "VendorID", v19, 32);
          v20 = (this->__vftable[11].getMetaClass)(this);
          (this->__vftable[1].init)(this, "VendorIDSource", v20, 32);
          v21 = (this->__vftable[11].isEqualTo)(this);
          (this->__vftable[1].init)(this, "ProductID", v21, 32);
          v22 = (this->__vftable[11].taggedRetain)(this);
          (this->__vftable[1].init)(this, "VersionNumber", v22, 32);
          v23 = (this->__vftable[11].taggedRelease)(this);
          (this->__vftable[1].init)(this, "CountryCode", v23, 32);
          v24 = (this->__vftable[11].taggedRelease_0)(this);
          (this->__vftable[1].taggedRelease)(this, "Manufacturer", v24);
          v25 = (this->__vftable[11].Dispatch)(this);
          (this->__vftable[1].taggedRelease)(this, "Product", v25);
          v26 = (this->__vftable[11].init)(this);
          (this->__vftable[1].taggedRelease)(this, "SerialNumber", v26);
          v27 = (this->__vftable[11].free)(this);
          (this->__vftable[1].taggedRelease)(this, "PhysicalDeviceUniqueID", v27);
          if ((this->__vftable[12].retain)(this, this[9].__vftable))
          {
            return 1;
          }

          IOHIDGCDevice::start();
        }

        else
        {
          IOHIDGCDevice::start();
        }
      }

      else
      {
        IOHIDGCDevice::start();
      }
    }

    else
    {
      IOHIDGCDevice::start();
    }
  }

  else
  {
    IOHIDGCDevice::start();
  }

  return 0;
}

uint64_t IOHIDGCDevice::stop(IOHIDGCDevice *this, IOService *a2)
{
  (*(*this + 1480))(this, *(this + 18));
  if (*(this + 20))
  {
    (*(**(this + 19) + 168))(*(this + 19));
  }

  return (stop)(this, a2);
}

uint64_t IOHIDGCDevice::message(IOHIDGCDevice *this, int a2, IOService *a3, void *a4)
{
  if (a2 == -536870656)
  {
    return 0;
  }

  if (a2 == -536870640)
  {
    IOHIDGCDevice::_providerMaybeUnseized(this);
    return 0;
  }

  return (message)(this);
}

uint64_t IOHIDGCDevice::_providerMaybeUnseized(IOHIDGCDevice *this)
{
  if ((*(*this + 768))(this, 0))
  {
    v2 = *(this + 21);
    if (v2)
    {
      if (!thread_call_enter1(v2, *(this + 22)))
      {
        (*(*this + 32))(this);
      }
    }
  }

  (*(*this + 776))(this);
  return 0;
}

uint64_t IOHIDGCDevice::copyProviderProperty(IOHIDGCDevice *this, const char *a2)
{
  v2 = *(this + 18);
  if (v2)
  {
    (*(*v2 + 32))(*(this + 18));
    v5 = (*(*v2 + 328))(v2, a2);
    if (!v5)
    {
      v6 = *(this + 17);
      if (v6)
      {
        (*(*v6 + 32))(v6);
        v5 = (*(*v6 + 328))(v6, a2);
        (*(*v6 + 40))(v6);
      }

      else
      {
        v8 = _gc_log_debug();
        _os_log_internal(&dword_0, v8, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "device", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 95, 0);
        v5 = 0;
      }
    }

    (*(*v2 + 40))(v2);
  }

  else
  {
    v7 = _gc_log_debug();
    _os_log_internal(&dword_0, v7, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "interface", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 89, 0);
    return 0;
  }

  return v5;
}

uint64_t IOHIDGCDevice::getDevice(IOHIDGCDevice *this)
{
  v1 = *(this + 17);
  if (v1)
  {
    (*(*v1 + 32))(*(this + 17));
  }

  return v1;
}

uint64_t IOHIDGCDevice::getInterface(IOHIDGCDevice *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    (*(*v1 + 32))(*(this + 18));
  }

  return v1;
}

OSMetaClassBase *IOHIDGCDevice::getTransport(IOHIDGCDevice *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    (*(*v1 + 32))(*(this + 18));
    v2 = (*(*v1 + 328))(v1, "Transport");
    v3 = OSMetaClassBase::safeMetaCast(v2, OSString::metaClass);
    v4 = v3;
    if (v2)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      (v2->release_0)(v2);
    }

    (*(*v1 + 40))(v1);
    if (v4)
    {
      (v4->release_0)(v4);
    }
  }

  else
  {
    v6 = _gc_log_debug();
    _os_log_internal(&dword_0, v6, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "interface", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 120, 0);
    return 0;
  }

  return v4;
}

OSMetaClassBase *IOHIDGCDevice::getManufacturer(IOHIDGCDevice *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    (*(*v1 + 32))(*(this + 18));
    v2 = (*(*v1 + 328))(v1, "Manufacturer");
    v3 = OSMetaClassBase::safeMetaCast(v2, OSString::metaClass);
    v4 = v3;
    if (v2)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      (v2->release_0)(v2);
    }

    (*(*v1 + 40))(v1);
    if (v4)
    {
      (v4->release_0)(v4);
    }
  }

  else
  {
    v6 = _gc_log_debug();
    _os_log_internal(&dword_0, v6, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "interface", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 134, 0);
    return 0;
  }

  return v4;
}

OSMetaClassBase *IOHIDGCDevice::getProduct(IOHIDGCDevice *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    (*(*v1 + 32))(*(this + 18));
    v2 = (*(*v1 + 328))(v1, "Product");
    v3 = OSMetaClassBase::safeMetaCast(v2, OSString::metaClass);
    v4 = v3;
    if (v2)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      (v2->release_0)(v2);
    }

    (*(*v1 + 40))(v1);
    if (v4)
    {
      (v4->release_0)(v4);
    }
  }

  else
  {
    v6 = _gc_log_debug();
    _os_log_internal(&dword_0, v6, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "interface", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 148, 0);
    return 0;
  }

  return v4;
}

OSMetaClassBase *IOHIDGCDevice::getSerialNumber(IOHIDGCDevice *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    (*(*v1 + 32))(*(this + 18));
    v2 = (*(*v1 + 328))(v1, "SerialNumber");
    v3 = OSMetaClassBase::safeMetaCast(v2, OSString::metaClass);
    v4 = v3;
    if (v2)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      (v2->release_0)(v2);
    }

    (*(*v1 + 40))(v1);
    if (v4)
    {
      (v4->release_0)(v4);
    }
  }

  else
  {
    v6 = _gc_log_debug();
    _os_log_internal(&dword_0, v6, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "interface", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 162, 0);
    return 0;
  }

  return v4;
}

OSMetaClassBase *IOHIDGCDevice::getPhysicalDeviceUniqueID(IOHIDGCDevice *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    (*(*v1 + 32))(*(this + 18));
    v2 = (*(*v1 + 328))(v1, "PhysicalDeviceUniqueID");
    v3 = OSMetaClassBase::safeMetaCast(v2, OSString::metaClass);
    v4 = v3;
    if (v2)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      (v2->release_0)(v2);
    }

    (*(*v1 + 40))(v1);
    if (v4)
    {
      (v4->release_0)(v4);
    }
  }

  else
  {
    v6 = _gc_log_debug();
    _os_log_internal(&dword_0, v6, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "interface", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 176, 0);
    return 0;
  }

  return v4;
}

uint64_t IOHIDGCDevice::getLocationID(IOHIDGCDevice *this)
{
  v1 = *(this + 18);
  if (!v1)
  {
    return 0;
  }

  v2 = (*(*v1 + 328))(v1, "LocationID");
  v3 = OSMetaClassBase::safeMetaCast(v2, OSNumber::metaClass);
  if (v3)
  {
    v4 = (v3->__vftable[1].isEqualTo)(v3);
    if (!v2)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if (v2)
  {
LABEL_7:
    (v2->release_0)(v2);
  }

  return v4;
}

uint64_t IOHIDGCDevice::getVendorID(IOHIDGCDevice *this)
{
  v1 = *(this + 18);
  if (!v1)
  {
    return 0;
  }

  v2 = (*(*v1 + 328))(v1, "VendorID");
  v3 = OSMetaClassBase::safeMetaCast(v2, OSNumber::metaClass);
  if (v3)
  {
    v4 = (v3->__vftable[1].isEqualTo)(v3);
    if (!v2)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if (v2)
  {
LABEL_7:
    (v2->release_0)(v2);
  }

  return v4;
}

uint64_t IOHIDGCDevice::getVendorIDSource(IOHIDGCDevice *this)
{
  v1 = *(this + 18);
  if (!v1)
  {
    return 0;
  }

  v2 = (*(*v1 + 328))(v1, "VendorIDSource");
  v3 = OSMetaClassBase::safeMetaCast(v2, OSNumber::metaClass);
  if (v3)
  {
    v4 = (v3->__vftable[1].isEqualTo)(v3);
    if (!v2)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if (v2)
  {
LABEL_7:
    (v2->release_0)(v2);
  }

  return v4;
}

uint64_t IOHIDGCDevice::getProductID(IOHIDGCDevice *this)
{
  v1 = *(this + 18);
  if (!v1)
  {
    return 0;
  }

  v2 = (*(*v1 + 328))(v1, "ProductID");
  v3 = OSMetaClassBase::safeMetaCast(v2, OSNumber::metaClass);
  if (v3)
  {
    v4 = (v3->__vftable[1].isEqualTo)(v3);
    if (!v2)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if (v2)
  {
LABEL_7:
    (v2->release_0)(v2);
  }

  return v4;
}

uint64_t IOHIDGCDevice::getVersion(IOHIDGCDevice *this)
{
  v1 = *(this + 18);
  if (!v1)
  {
    return 0;
  }

  v2 = (*(*v1 + 328))(v1, "VersionNumber");
  v3 = OSMetaClassBase::safeMetaCast(v2, OSNumber::metaClass);
  if (v3)
  {
    v4 = (v3->__vftable[1].isEqualTo)(v3);
    if (!v2)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if (v2)
  {
LABEL_7:
    (v2->release_0)(v2);
  }

  return v4;
}

uint64_t IOHIDGCDevice::getCountryCode(IOHIDGCDevice *this)
{
  v1 = *(this + 18);
  if (!v1)
  {
    return 0;
  }

  v2 = (*(*v1 + 328))(v1, "CountryCode");
  v3 = OSMetaClassBase::safeMetaCast(v2, OSNumber::metaClass);
  if (v3)
  {
    v4 = (v3->__vftable[1].isEqualTo)(v3);
    if (!v2)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if (v2)
  {
LABEL_7:
    (v2->release_0)(v2);
  }

  return v4;
}

uint64_t IOHIDGCDevice::_tryOpenProvider(IOHIDGCDevice *this, uint64_t a2, unint64_t a3)
{
  v3 = 3758097109;
  v4 = *(this + 18);
  if (v4)
  {
    (*(*v4 + 32))(*(this + 18));
    if (((*(*this + 768))(this, 0) & 1) == 0)
    {
      IOHIDGCDevice::_tryOpenProvider();
      v3 = 3758097111;
      goto LABEL_16;
    }

    if (*(this + 22) <= a3)
    {
      v9 = (*(*v4 + 720))(v4, this);
      if ((v9 & 1) == 0 && ((*(*v4 + 1344))(v4, this, a2, IOHIDGCDevice::_handleInterruptReport, a3) & 1) == 0)
      {
        (*(*this + 776))(this);
        (*(*v4 + 712))(v4, this, 0);
        goto LABEL_16;
      }

      v10 = *(this + 21);
      if (v10)
      {
        if (thread_call_cancel(v10))
        {
          (*(*this + 40))(this);
        }

        thread_call_free(*(this + 21));
        *(this + 21) = 0;
      }

      if ((v9 & 1) == 0)
      {
        (*(*this + 1488))(this, a3);
      }

      v3 = 0;
    }

    else
    {
      v3 = 3758097134;
    }

    (*(*this + 776))(this);
LABEL_16:
    (*(*v4 + 40))(v4);
    return v3;
  }

  v8 = _gc_log_debug();
  _os_log_internal(&dword_0, v8, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "interface", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 296, 0);
  return 3758097112;
}

void IOHIDGCDevice::_handleInterruptReport(IORegistryEntry *this, uintptr_t a2, IOMemoryDescriptor *a3, IOHIDReportType a4, uint64_t a5, void *a6)
{
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug(0x31CC0206u, RegistryEntryID, 0, 0, 0, 0);
  }

  v12 = IORegistryEntry::getRegistryEntryID(this);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug(0x31CC0209u, v12, a2, a4, a5, 0);
  }

  if (a4 == kIOHIDReportTypeInput)
  {
    (this->__vftable[2].getProperty_4)(this, a2, a5, a3);
  }

  v13 = IORegistryEntry::getRegistryEntryID(this);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug(0x31CC020Au, v13, a2, a4, a5, 0);
  }

  v14 = IORegistryEntry::getRegistryEntryID(this);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {

    kernel_debug(0x31CC0205u, v14, 0, 0, 0, 0);
  }
}

uint64_t IOHIDGCDevice::_openProviderThreadCallback(IOHIDGCDevice *this, unint64_t a2)
{
  IOHIDGCDevice::_tryOpenProvider(this, 0, a2);
  v3 = *(*this + 40);

  return v3(this);
}

uint64_t IOHIDGCDevice::openProvider(IOHIDGCDevice *this, uint64_t a2)
{
  if ((*(*this + 768))(this, 0))
  {
    v4 = *(this + 22) + 1;
    *(this + 22) = v4;
    v5 = IOHIDGCDevice::_tryOpenProvider(this, a2, v4);
    (*(*this + 776))(this);
    return v5;
  }

  else
  {
    IOHIDGCDevice::openProvider();
    return 3758097111;
  }
}

uint64_t IOHIDGCDevice::openProviderInBackground(IOHIDGCDevice *this)
{
  if ((*(*this + 768))(this, 0))
  {
    if (!*(this + 21))
    {
      v2 = thread_call_allocate_with_options(IOHIDGCDevice::_openProviderThreadCallback, this, THREAD_CALL_PRIORITY_KERNEL, 1u);
      *(this + 21) = v2;
      if (!v2)
      {
        v4 = 3758097085;
        IOHIDGCDevice::openProviderInBackground();
        return v4;
      }

      v3 = (*(this + 22) + 1);
      *(this + 22) = v3;
      if (!thread_call_enter1(v2, v3))
      {
        (*(*this + 32))(this);
      }
    }

    (*(*this + 776))(this);
    return 0;
  }

  else
  {
    IOHIDGCDevice::openProviderInBackground();
    return 3758097111;
  }
}

uint64_t IOHIDGCDevice::closeProvider(IOHIDGCDevice *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    (*(*v1 + 32))(*(this + 18));
    (*(*this + 768))(this, 1);
    v3 = *(this + 21);
    v4 = *(this + 22) + 1;
    *(this + 22) = v4;
    if (v3)
    {
      if (thread_call_cancel(v3))
      {
        (*(*this + 40))(this);
      }

      thread_call_free(*(this + 21));
      *(this + 21) = 0;
    }

    if ((*(**(this + 18) + 720))(*(this + 18), this))
    {
      (*(**(this + 18) + 712))(*(this + 18), this, 0);
      (*(*this + 1496))(this, v4);
    }

    (*(*this + 776))(this);
    (*(*v1 + 40))(v1);
    return 0;
  }

  else
  {
    v6 = _gc_log_debug();
    _os_log_internal(&dword_0, v6, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "interface", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 405, 0);
    return 3758097112;
  }
}

void IOHIDGCDevice::handleInputReport(IOHIDGCDevice *this, uint64_t a2, uint64_t a3, IOMemoryDescriptor *a4)
{
  v7 = (a4->map)(a4, 0);
  if (v7)
  {
    v8 = v7;
    v9 = (*(*v7 + 120))(v7);
    v10 = (*(*v8 + 136))(v8);
    (*(*this + 1512))(this, a2, a3, v9, v10);
    v11 = *(*v8 + 40);

    v11(v8);
  }

  else
  {
    IOHIDGCDevice::handleInputReport();
  }
}

uint64_t IOHIDGCDevice::getReport(IOService *this, uint64_t a2, uint64_t a3, IOMemoryDescriptor *a4)
{
  if (IOService::isInactive(this))
  {
    IOHIDGCDevice::getReport();
    return 3758097111;
  }

  else
  {
    v8 = *&this[1].retainCount;
    if (v8)
    {
      (*(*v8 + 32))(*&this[1].retainCount);
      if ((*(*v8 + 720))(v8, this))
      {
        RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
        if ((kdebug_enable & 0xFFFFFFF7) != 0)
        {
          kernel_debug(0x31CC020Du, RegistryEntryID, 0, a2, a3, 0);
        }

        v10 = (*(*v8 + 1464))(v8, a4, a2, a3, 0);
        v11 = IORegistryEntry::getRegistryEntryID(this);
        if ((kdebug_enable & 0xFFFFFFF7) != 0)
        {
          kernel_debug(0x31CC020Eu, v11, 0, a2, v10, 0);
        }
      }

      else
      {
        v10 = 3758097112;
        IOHIDGCDevice::getReport();
      }

      (*(*v8 + 40))(v8);
    }

    else
    {
      v10 = 3758097112;
      v12 = _gc_log_debug();
      _os_log_internal(&dword_0, v12, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "interface", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 511, 0);
    }
  }

  return v10;
}

uint64_t IOHIDGCDevice::getReport(IOService *this, uint64_t a2, uint64_t a3, IOMemoryDescriptor *a4, uint64_t a5, OSObject *a6, void *a7, void (*a8)(OSObject *, void *, IOMemoryDescriptor *, int))
{
  v32 = 0;
  v33 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (IOService::isInactive(this))
  {
    IOHIDGCDevice::getReport();
    v16 = 0;
    v17 = 0;
    v21 = 3758097111;
    goto LABEL_11;
  }

  v16 = *&this[1].retainCount;
  if (!v16)
  {
    v21 = 3758097112;
    v22 = _gc_log_debug();
    _os_log_internal(&dword_0, v22, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "interface", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 563, 0);
    v17 = 0;
    goto LABEL_11;
  }

  (*(*v16 + 32))(*&this[1].retainCount);
  if (((*(*v16 + 720))(v16, this) & 1) == 0)
  {
    v21 = 3758097112;
    IOHIDGCDevice::getReport();
    v17 = 0;
    goto LABEL_11;
  }

  v17 = this[1].__vftable;
  if (!v17)
  {
    v21 = 3758097112;
    v23 = _gc_log_debug();
    _os_log_internal(&dword_0, v23, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "device", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 566, 0);
    goto LABEL_11;
  }

  (*(v17->~IOService + 4))(this[1].__vftable);
  v28 = a8;
  if (a8)
  {
    v18 = IOMallocTypeImpl();
    if (!v18)
    {
      IOHIDGCDevice::getReport();
      v21 = 3758097085;
      goto LABEL_11;
    }

    v19 = v18;
    libkern::intrusive_shared_ptr<OSObject,intrusive_osobject_retainer>::reset(&v33, a6);
    libkern::intrusive_shared_ptr<OSObject,intrusive_osobject_retainer>::reset(&v32, a4);
    *v19 = v28;
    *(v19 + 8) = a7;
    *(v19 + 16) = a4;
    *(v19 + 24) = IORegistryEntry::getRegistryEntryID(this);
    *(v19 + 32) = a2;
    v29 = v33;
    v30 = _IOHIDDevice_getReport_completion_thunk;
    v31 = v19;
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug(0x31CC020Du, RegistryEntryID, 0, a2, a3, 0);
    }
  }

  else
  {
    v29 = 0;
    v30 = _IOHIDDevice_getReport_completion_thunk;
    v31 = 0;
    v25 = IORegistryEntry::getRegistryEntryID(this);
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug(0x31CC020Cu, v25, 0, a2, a3, 0);
    }

    v19 = 0;
  }

  v21 = (*(v17->~IOService + 193))(v17, a4, a2, a3, a5, &v29);
  if (!v21)
  {
    goto LABEL_23;
  }

  v26 = _gc_log_debug();
  _os_log_internal(&dword_0, v26, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "ret == 0 ", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 593, v21);
  if (v28)
  {
    v27 = IORegistryEntry::getRegistryEntryID(this);
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug(0x31CC020Eu, v27, 0, a2, v21, 0);
    }

    if (v19)
    {
      IOFreeTypeImpl();
    }
  }

LABEL_11:
  if (v32)
  {
    (*(*v32 + 40))(v32);
  }

  if (v33)
  {
    (*(*v33 + 40))(v33);
  }

  if (v17)
  {
LABEL_23:
    (*(v17->~IOService + 5))(v17);
    if (!v16)
    {
      return v21;
    }

    goto LABEL_17;
  }

  if (v16)
  {
LABEL_17:
    (*(*v16 + 40))(v16);
  }

  return v21;
}

uint64_t *libkern::intrusive_shared_ptr<OSObject,intrusive_osobject_retainer>::reset(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (a2)
  {
    (*(*a2 + 32))(a2);
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

uint64_t _IOHIDDevice_getReport_completion_thunk(uint64_t result, void *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = result;
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug(0x31CC020Eu, a2[3], 0, *(a2 + 8), a3, 0);
    }

    v6 = a2[2];
    (*a2)(v5, a2[1], v6, a3);
    *a2 = 0;
    a2[1] = 0;
    result = IOFreeTypeImpl();
    if (v5)
    {
      result = (*(*v5 + 40))(v5);
    }

    if (v6)
    {
      v7 = *(*v6 + 40);

      return v7(v6);
    }
  }

  return result;
}

uint64_t IOHIDGCDevice::getReport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock)
{
  if (aBlock)
  {
    v11 = _Block_copy(aBlock);
    if (!v11)
    {
      IOHIDGCDevice::getReport();
      return 3758097085;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 1528))(a1, a2, a3, a4, a5, 0, v11, _IOHIDDevice_getReport_completion_block);
  if (v12)
  {
    v14 = _gc_log_debug();
    _os_log_internal(&dword_0, v14, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "ret == 0 ", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 634, v12);
    if (v11)
    {
      _Block_release(v11);
    }
  }

  return v12;
}

void _IOHIDDevice_getReport_completion_block(void *a1, void (**a2)(void, void, void), IOMemoryDescriptor *a3, uint64_t a4)
{
  if (a2)
  {
    (a2)[2](a2, a3, a4);

    _Block_release(a2);
  }
}

uint64_t IOHIDGCDevice::setReport(IOService *this, uint64_t a2, uint64_t a3, IOMemoryDescriptor *a4)
{
  if (IOService::isInactive(this))
  {
    IOHIDGCDevice::setReport();
    return 3758097111;
  }

  else
  {
    v8 = *&this[1].retainCount;
    if (v8)
    {
      (*(*v8 + 32))(*&this[1].retainCount);
      if ((*(*v8 + 720))(v8, this))
      {
        RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
        if ((kdebug_enable & 0xFFFFFFF7) != 0)
        {
          kernel_debug(0x31CC0211u, RegistryEntryID, 0, 1uLL, a3, 0);
        }

        v10 = (*(*v8 + 1456))(v8, a4, a2, a3, 0);
        v11 = IORegistryEntry::getRegistryEntryID(this);
        if ((kdebug_enable & 0xFFFFFFF7) != 0)
        {
          kernel_debug(0x31CC0212u, v11, 0, 1uLL, v10, 0);
        }
      }

      else
      {
        v10 = 3758097112;
        IOHIDGCDevice::setReport();
      }

      (*(*v8 + 40))(v8);
    }

    else
    {
      v10 = 3758097112;
      v12 = _gc_log_debug();
      _os_log_internal(&dword_0, v12, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "interface", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 654, 0);
    }
  }

  return v10;
}

uint64_t IOHIDGCDevice::setReport(IOService *this, uint64_t a2, uint64_t a3, IOMemoryDescriptor *a4, uint64_t a5, OSObject *a6, void *a7, void (*a8)(OSObject *, void *, IOMemoryDescriptor *, int))
{
  v32 = 0;
  v33 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (IOService::isInactive(this))
  {
    IOHIDGCDevice::setReport();
    v16 = 0;
    v17 = 0;
    v21 = 3758097111;
    goto LABEL_11;
  }

  v16 = *&this[1].retainCount;
  if (!v16)
  {
    v21 = 3758097112;
    v22 = _gc_log_debug();
    _os_log_internal(&dword_0, v22, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "interface", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 705, 0);
    v17 = 0;
    goto LABEL_11;
  }

  (*(*v16 + 32))(*&this[1].retainCount);
  if (((*(*v16 + 720))(v16, this) & 1) == 0)
  {
    v21 = 3758097112;
    IOHIDGCDevice::setReport();
    v17 = 0;
    goto LABEL_11;
  }

  v17 = this[1].__vftable;
  if (!v17)
  {
    v21 = 3758097112;
    v23 = _gc_log_debug();
    _os_log_internal(&dword_0, v23, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "device", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 708, 0);
    goto LABEL_11;
  }

  (*(v17->~IOService + 4))(this[1].__vftable);
  v28 = a8;
  if (a8)
  {
    v18 = IOMallocTypeImpl();
    if (!v18)
    {
      IOHIDGCDevice::setReport();
      v21 = 3758097085;
      goto LABEL_11;
    }

    v19 = v18;
    libkern::intrusive_shared_ptr<OSObject,intrusive_osobject_retainer>::reset(&v33, a6);
    libkern::intrusive_shared_ptr<OSObject,intrusive_osobject_retainer>::reset(&v32, a4);
    *v19 = v28;
    v19[1] = a7;
    v19[2] = a4;
    v19[3] = IORegistryEntry::getRegistryEntryID(this);
    v29 = a6;
    v30 = _IOHIDDevice_setReport_completion_thunk;
    v31 = v19;
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug(0x31CC0211u, RegistryEntryID, 0, 1uLL, a3, 0);
    }
  }

  else
  {
    v29 = a6;
    v30 = _IOHIDDevice_setReport_completion_thunk;
    v31 = 0;
    v25 = IORegistryEntry::getRegistryEntryID(this);
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug(0x31CC0210u, v25, 0, 1uLL, a3, 0);
    }

    v19 = 0;
  }

  v21 = (*(this[1].~IOService + 194))(this[1].__vftable, a4, a2, a3, a5, &v29);
  if (!v21)
  {
    goto LABEL_23;
  }

  v26 = _gc_log_debug();
  _os_log_internal(&dword_0, v26, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "ret == 0 ", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 734, v21);
  if (v28)
  {
    v27 = IORegistryEntry::getRegistryEntryID(this);
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug(0x31CC0212u, v27, 0, 1uLL, v21, 0);
    }

    if (v19)
    {
      IOFreeTypeImpl();
    }
  }

LABEL_11:
  if (v32)
  {
    (*(*v32 + 40))(v32);
  }

  if (v33)
  {
    (*(*v33 + 40))(v33);
  }

  if (v17)
  {
LABEL_23:
    (*(v17->~IOService + 5))(v17);
    if (!v16)
    {
      return v21;
    }

    goto LABEL_17;
  }

  if (v16)
  {
LABEL_17:
    (*(*v16 + 40))(v16);
  }

  return v21;
}

uint64_t _IOHIDDevice_setReport_completion_thunk(uint64_t result, void *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = result;
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug(0x31CC0212u, a2[3], 0, 1uLL, a3, 0);
    }

    v6 = a2[2];
    (*a2)(v5, a2[1], v6, a3);
    *a2 = 0;
    a2[1] = 0;
    result = IOFreeTypeImpl();
    if (v5)
    {
      result = (*(*v5 + 40))(v5);
    }

    if (v6)
    {
      v7 = *(*v6 + 40);

      return v7(v6);
    }
  }

  return result;
}

uint64_t IOHIDGCDevice::setReport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock)
{
  if (aBlock)
  {
    v11 = _Block_copy(aBlock);
    if (!v11)
    {
      IOHIDGCDevice::setReport();
      return 3758097085;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 1544))(a1, a2, a3, a4, a5, 0, v11, _IOHIDDevice_setReport_completion_block);
  if (v12)
  {
    v14 = _gc_log_debug();
    _os_log_internal(&dword_0, v14, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "ret == 0 ", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Service/IOHIDGCDevice.cpp", 775, v12);
    if (v11)
    {
      _Block_release(v11);
    }
  }

  return v12;
}

void _IOHIDDevice_setReport_completion_block(void *a1, void (**a2)(void, void, void), IOMemoryDescriptor *a3, uint64_t a4)
{
  if (a2)
  {
    (a2)[2](a2, a3, a4);

    _Block_release(a2);
  }
}

OSMetaClass *_GLOBAL__sub_I_IOHIDGCDevice_cpp()
{
  result = OSMetaClass::OSMetaClass(&IOHIDGCDevice::gMetaClass, "IOHIDGCDevice", &IOService::gMetaClass, 0xC0u);
  result->__vftable = off_44E80;
  return result;
}

OSMetaClass *IOGCCommandQueue::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "IOGCCommandQueue", &IOEventSource::gMetaClass, 0x68u);
  result->__vftable = off_45060;
  return result;
}

void IOGCCommandQueue::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void IOGCCommandQueue::~IOGCCommandQueue(IOEventSource *this)
{
  IOEventSource::~IOEventSource(this);
}

{
  IOEventSource::~IOEventSource(this);
}

{
  IOEventSource::~IOEventSource(this);

  _OSObject_typed_operator_delete(&IOGCCommandQueue_ktv, this, 104);
}

IOEventSource *IOGCCommandQueue::MetaClass::alloc(IOGCCommandQueue::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOEventSource::IOEventSource(v1, &IOGCCommandQueue::gMetaClass)->__vftable = off_44F18;
  OSMetaClass::instanceConstructed(&IOGCCommandQueue::gMetaClass);
  return v1;
}

uint64_t IOGCCommandQueue::commandQueue(IOGCCommandQueue *this, OSObject *a2, int (*a3)(OSObject *, void *))
{
  v5 = (*(IOGCCommandQueue::gMetaClass + 104))();
  v6 = v5;
  if (v5 && ((*(*v5 + 216))(v5, this, a2) & 1) == 0)
  {
    (*(*v6 + 40))(v6);
    return 0;
  }

  return v6;
}

IOSimpleLock *IOGCCommandQueue::init(IOGCCommandQueue *this, OSObject *a2, void (*a3)(OSObject *, ...))
{
  if (result)
  {
    result = IOSimpleLockAlloc();
    *(this + 12) = result;
    if (result)
    {
      IOSimpleLockInit(result);
      *(this + 10) = 0;
      *(this + 11) = this + 80;
      return (&dword_0 + 1);
    }
  }

  return result;
}

uint64_t IOGCCommandQueue::free(IOGCCommandQueue *this)
{
  if (*(this + 6))
  {
    (*(*this + 136))(this, 0);
  }

  return (free)(this);
}

uint64_t IOGCCommandQueue::commandSleep(IOGCCommandQueue *this, void *a2)
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t IOGCCommandQueue::checkForWork(IOSimpleLock **this)
{
  IOSimpleLockLock(this[12]);
  v2 = this[10];
  if (v2)
  {
    v3 = *(v2 + 1);
    this[10] = v3;
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = 0;
      this[11] = (this + 10);
    }
  }

  else
  {
    v4 = 0;
  }

  IOSimpleLockUnlock(this[12]);
  v5 = _gc_log_debug();
  _os_log_internal(&dword_0, v5, OS_LOG_TYPE_DEBUG, "::checkForWork() -> %{BOOL}d", v2 != 0);
  if (!v2)
  {
    return 0;
  }

  (*(v2 + 2))(this[3], *(v2 + 3));
  *v2 = 0;
  *(v2 + 3) = 0;
  *(v2 + 2) = 0;
  v6 = *(v2 + 32);
  *(v2 + 32) = v6 & 0xFE;
  if ((v6 & 2) != 0)
  {
    *(v2 + 32) = v6 & 0xFC;
    IOFreeTypeImpl();
  }

  return v4;
}

uint64_t IOGCCommandQueue::syncAction(IOEventSource *this, uint64_t (*a2)(OSObject *, void *), void *a3)
{
  if (a2)
  {
    if ((this->getWorkLoop)(this))
    {
      IOEventSource::closeGate(this);
      v6 = a2(this->owner, a3);
      IOEventSource::openGate(this);
      return v6;
    }

    IOGCCommandQueue::syncAction();
    return 3758097112;
  }

  else
  {
    v8 = 3758097090;
    IOGCCommandQueue::syncAction();
  }

  return v8;
}

uint64_t IOGCCommandQueue::syncCommand(IOGCCommandQueue *this, void *a2)
{
  v4 = (*(*this + 168))(this);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*this + 248);

  return v6(this, v5, a2);
}

uint64_t IOGCCommandQueue::asyncAction(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void **a5)
{
  if (!a2)
  {
    IOGCCommandQueue::asyncAction();
    return 3758097090;
  }

  if (!a5 || (v8 = *a5) == 0)
  {
    v9 = 3758097085;
    if ((a4 & 3) != 0)
    {
      return v9;
    }

    v10 = IOMallocTypeImpl();
    if (!v10)
    {
      IOGCCommandQueue::asyncAction();
      return v9;
    }

    v8 = v10;
    *(v10 + 32) |= 2u;
LABEL_9:
    *v8 = a1;
    v8[2] = a2;
    v8[3] = a3;
    IOSimpleLockLock(*(a1 + 96));
    v8[1] = 0;
    **(a1 + 88) = v8;
    *(a1 + 88) = v8 + 1;
    IOSimpleLockUnlock(*(a1 + 96));
    v11 = _gc_log_debug();
    _os_log_internal(&dword_0, v11, OS_LOG_TYPE_DEBUG, "::asyncAction() Signal Work Available");
    IOEventSource::signalWorkAvailable(a1);
    return 0;
  }

  if (!*v8)
  {
    goto LABEL_9;
  }

  IOGCCommandQueue::asyncAction();
  return 3758097109;
}

uint64_t IOGCCommandQueue::asyncCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 168))(a1);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a1 + 280);

  return v10(a1, v9, a2, a3, a4);
}

uint64_t IOGCCommandQueue::asyncBlock(uint64_t a1, _DWORD *aBlock, uint64_t a3, uint64_t a4)
{
  if ((a3 & 3) != 0)
  {
    v7 = aBlock[2] & 0x10000000;
    if ((aBlock[2] & 0x11000000) == 0)
    {
      v8 = 0;
      v9 = 3758097085;
LABEL_5:
      _Block_release(v8);
      return v9;
    }
  }

  v8 = _Block_copy(aBlock);
  v9 = (*(*a1 + 280))(a1, _async_action_block_thunk_, v8, a3, a4);
  if (v9)
  {
    goto LABEL_5;
  }

  return v9;
}

{
  if ((a3 & 3) != 0)
  {
    v7 = aBlock[2] & 0x10000000;
    if ((aBlock[2] & 0x11000000) == 0)
    {
      v8 = 0;
      v9 = 3758097085;
LABEL_5:
      _Block_release(v8);
      return v9;
    }
  }

  v8 = _Block_copy(aBlock);
  v9 = (*(*a1 + 288))(a1, _async_function_block_thunk_, v8, a3, a4);
  if (v9)
  {
    goto LABEL_5;
  }

  return v9;
}

uint64_t _async_action_block_thunk_(OSObject *a1, uint64_t (**a2)(void))
{
  v3 = a2[2](a2);
  _Block_release(a2);
  return v3;
}

void _async_function_block_thunk_(OSObject *a1, void (**a2)(void))
{
  a2[2](a2);

  _Block_release(a2);
}

OSMetaClass *_GLOBAL__sub_I_IOGCCommandQueue_cpp()
{
  result = OSMetaClass::OSMetaClass(&IOGCCommandQueue::gMetaClass, "IOGCCommandQueue", &IOEventSource::gMetaClass, 0x68u);
  result->__vftable = off_45060;
  return result;
}

uint64_t IOGCCircularControlQueueMemoryInit(unint64_t *a1, uint64_t a2, unsigned int a3, int a4, unint64_t a5)
{
  bzero(a1, a3);
  *a2 = a5;
  *a1 = a5;
  *(a2 + 8) = a3;
  *(a2 + 12) = a4;
  *(a1 + 2) = a3;
  *(a1 + 3) = a4;
  atomic_store(0, a1 + 2);
  atomic_store(0xFFFFFFFFFFFFFFFFLL, a1 + 3);
  atomic_store(0xFFFFFFFFFFFFFFFFLL, a1 + 4);
  atomic_store(0xFFFFFFFFFFFFFFFFLL, a1 + 5);
  atomic_store(0xFFFFFFFFFFFFFFFFLL, a1 + 6);
  atomic_store(0xFFFFFFFFFFFFFFFFLL, a1 + 7);
  v10 = ((2 * a4 + 14) & 0xFFFFFFF0) + 64;
  atomic_store(0xFFFFFFFFFFFFFFFFLL, a1 + 8);
  if (v10 <= a3 - 72)
  {
    v11 = 0;
    v12 = 0;
    v13 = a1 + 9;
    *&v14 = -1;
    *(&v14 + 1) = -1;
    do
    {
      v15 = v13 + v11;
      if (v11 != v11)
      {
        v15 = (v13 + v11) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
      }

      *v15 = a5;
      *(v15 + 16) = xmmword_B20;
      *(v15 + 32) = xmmword_B30;
      *(v15 + 48) = v14;
      ++v12;
      v11 += v10;
    }

    while (v12 < (a3 - 72) / v10);
  }

  return 0;
}

uint64_t IOGCCircularControlQueueInit(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (*a2 == a5)
  {
    if (*(a2 + 8) == a3)
    {
      if (*(a2 + 12) == a4)
      {
        v5 = 0;
        *a1 = a2;
        *(a1 + 8) = a5;
        *(a1 + 16) = a3;
        *(a1 + 20) = a4;
      }

      else
      {
        v5 = 3758097105;
        IOGCCircularControlQueueInit_cold_3();
      }
    }

    else
    {
      v5 = 3758097105;
      IOGCCircularControlQueueInit_cold_2();
    }
  }

  else
  {
    v5 = 3758097105;
    IOGCCircularControlQueueInit_cold_1();
  }

  return v5;
}

uint64_t IOGCCircularControlQueueReset(void *a1, unint64_t a2)
{
  v2 = *a1;
  if (**a1 == a1[1])
  {
    result = 0;
    v4 = v2 + 2;
    v5 = atomic_load_explicit(v2 + 2, memory_order_acquire) + 1;
    v6 = &v2[3 * (v5 & 1) + 3];
    atomic_store(0xFFFFFFFFFFFFFFFFLL, v6);
    atomic_store(a2, v6 + 1);
    atomic_store(0xFFFFFFFFFFFFFFFFLL, v6 + 2);
    atomic_store(v5, v4);
  }

  else
  {
    IOGCCircularControlQueueReset_cold_1();
    return 3758097105;
  }

  return result;
}

uint64_t IOGCCircularControlQueueGetNextApplyPosition(void *a1, void *a2)
{
  v2 = *a1;
  if (**a1 == a1[1])
  {
    result = 0;
    *a2 = v2[3 * (atomic_load_explicit(v2 + 2, memory_order_acquire) & 1) + 4];
  }

  else
  {
    IOGCCircularControlQueueGetNextApplyPosition_cold_1();
    return 3758097105;
  }

  return result;
}

uint64_t IOGCCircularControlQueueGetLastAppliedPosition(void *a1, void *a2)
{
  v2 = *a1;
  if (**a1 == a1[1])
  {
    result = 0;
    *a2 = v2[3 * (atomic_load_explicit(v2 + 2, memory_order_acquire) & 1) + 3];
  }

  else
  {
    IOGCCircularControlQueueGetLastAppliedPosition_cold_1();
    return 3758097105;
  }

  return result;
}

uint64_t __IOGCCircularControlQueueReadBackwardsFromLatestEnqueued_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a10;
  if (a10 == -1)
  {
    return 3758097112;
  }

  if (a10 < a8)
  {
LABEL_9:
    v20 = 3758097136;
    if (*(a1 + 40))
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 1107296256;
      v23[2] = __IOGCCircularControlQueueReadBackwardsFromLatestEnqueued_block_invoke_9;
      v18 = *(a1 + 32);
      v23[3] = &__block_descriptor_tmp_12;
      v23[4] = v18;
      v23[5] = v12;
      v23[6] = a7;
      v19 = (*(a12 + 16))(a12, a6, v23);
      if (v19 == -536870166)
      {
        return 3758097136;
      }

      else
      {
        return v19;
      }
    }
  }

  else
  {
    while (1)
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 1107296256;
      v24[2] = __IOGCCircularControlQueueReadBackwardsFromLatestEnqueued_block_invoke_2;
      v24[3] = &__block_descriptor_tmp_3;
      v24[4] = *(a1 + 32);
      v24[5] = v12;
      v24[6] = a7;
      v24[7] = a9;
      v16 = (*(a12 + 16))(a12, v12, v24);
      if (v16 != -536870166 && v16 != -536870184)
      {
        return v16;
      }

      if (--v12 < a8)
      {
        goto LABEL_9;
      }
    }
  }

  return v20;
}

uint64_t __IOGCCircularControlQueueReadBackwardsFromLatestEnqueued_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!(*(*(a1 + 32) + 16))())
  {
    return 3758097130;
  }

  result = 0;
  v4 = *(a1 + 40);
  **(a1 + 48) = v4;
  atomic_store(v4 + 1, *(a1 + 56));
  return result;
}

uint64_t __IOGCCircularControlQueueReadBackwardsFromLatestEnqueued_block_invoke_9(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!(*(*(a1 + 32) + 16))())
  {
    return 3758097130;
  }

  result = 0;
  **(a1 + 48) = *(a1 + 40);
  return result;
}

uint64_t __IOGCCircularControlQueueReadForwardFromNextApply_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12)
{
  result = 3758097112;
  if (a8 != -1 && a10 != -1)
  {
    v14 = a8;
    while (1)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 1107296256;
      v20[2] = __IOGCCircularControlQueueReadForwardFromNextApply_block_invoke_2;
      v20[3] = &__block_descriptor_tmp_19;
      v20[4] = *(a1 + 32);
      v20[5] = v14;
      v20[6] = a7;
      v20[7] = a9;
      result = (*(a12 + 16))(a12, v14, v20);
      if (result != -536870166 && result != -536870184)
      {
        break;
      }

      if (++v14 >= a10)
      {
        result = 3758097136;
        if (*(a1 + 40))
        {
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 1107296256;
          v19[2] = __IOGCCircularControlQueueReadForwardFromNextApply_block_invoke_20;
          v17 = *(a1 + 32);
          v19[3] = &__block_descriptor_tmp_23;
          v19[4] = v17;
          v19[5] = v14;
          LODWORD(result) = (*(a12 + 16))(a12, a6, v19);
          if (result == -536870166)
          {
            return 3758097136;
          }

          else
          {
            return result;
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t __IOGCCircularControlQueueReadForwardFromNextApply_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!(*(*(a1 + 32) + 16))())
  {
    return 3758097130;
  }

  result = 0;
  v4 = *(a1 + 40);
  **(a1 + 48) = v4;
  atomic_store(v4 + 1, *(a1 + 56));
  return result;
}

uint64_t __IOGCCircularControlQueueReadForwardFromNextApply_block_invoke_20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a1 + 32) + 16))(*(a1 + 32), *(a1 + 40), 1, a2, a3))
  {
    return 0;
  }

  else
  {
    return 3758097130;
  }
}

os_log_t _gc_log_psvr2()
{
  result = _gc_log_psvr2_Log;
  if (!_gc_log_psvr2_Log)
  {
    result = os_log_create("com.apple.gamecontroller.driver", "PSVR2");
    _gc_log_psvr2_Log = result;
  }

  return result;
}

OSMetaClass *IOGCResource::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "IOGCResource", &IOService::gMetaClass, 0x90u);
  result->__vftable = off_45790;
  return result;
}

void IOGCResource::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void IOGCResource::IOGCResource(IOGCResource *this, const OSMetaClass *a2)
{
  v2 = IOService::IOService(this, a2);
  v2->__vftable = &off_45238;
  v2[1].__vftable = 0;
}

void IOGCResource::~IOGCResource(IOService *this)
{
  v2 = this[1].__vftable;
  if (v2)
  {
    (*(v2->~IOService + 5))(v2);
  }

  this[1].__vftable = 0;

  IOService::~IOService(this);
}

{
  v2 = this[1].__vftable;
  if (v2)
  {
    (*(v2->~IOService + 5))(v2);
  }

  this[1].__vftable = 0;

  IOService::~IOService(this);
}

{
  IOGCResource::~IOGCResource(this);

  _OSObject_typed_operator_delete(&IOGCResource_ktv, this, 144);
}

IOService *IOGCResource::MetaClass::alloc(IOGCResource::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  v2 = IOService::IOService(v1, &IOGCResource::gMetaClass);
  v2->__vftable = &off_45238;
  v2[1].__vftable = 0;
  OSMetaClass::instanceConstructed(&IOGCResource::gMetaClass);
  return v1;
}

void IOGCResource::IOGCResource(IOGCResource *this)
{
  v1 = IOService::IOService(this, &IOGCResource::gMetaClass);
  v1->__vftable = &off_45238;
  v1[1].__vftable = 0;
  OSMetaClass::instanceConstructed(&IOGCResource::gMetaClass);
}

uint64_t IOGCResource::start(IOGCResource *this, IOService *a2)
{
  {
    v3 = IOWorkLoop::workLoop();
    v4 = *(this + 17);
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    *(this + 17) = v3;
    if (v3)
    {
      (*(*this + 672))(this, 8);
      return 1;
    }

    IOGCResource::start();
  }

  else
  {
    IOGCResource::start();
  }

  return 0;
}

OSMetaClass *_GLOBAL__sub_I_IOGCResource_cpp()
{
  result = OSMetaClass::OSMetaClass(&IOGCResource::gMetaClass, "IOGCResource", &IOService::gMetaClass, 0x90u);
  result->__vftable = off_45790;
  return result;
}

OSMetaClass *IOGCPortNotifier::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "IOGCPortNotifier", &IODataQueue::gMetaClass, 0x40u);
  result->__vftable = off_458E8;
  return result;
}

void IOGCPortNotifier::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void IOGCPortNotifier::~IOGCPortNotifier(IODataQueue *this)
{
  IODataQueue::~IODataQueue(this);
}

{
  IODataQueue::~IODataQueue(this);
}

{
  IODataQueue::~IODataQueue(this);

  _OSObject_typed_operator_delete(&IOGCPortNotifier_ktv, this, 64);
}

IODataQueue *IOGCPortNotifier::MetaClass::alloc(IOGCPortNotifier::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IODataQueue::IODataQueue(v1, &IOGCPortNotifier::gMetaClass)->__vftable = off_45828;
  OSMetaClass::instanceConstructed(&IOGCPortNotifier::gMetaClass);
  return v1;
}

uint64_t IOGCPortNotifier::init(IOGCPortNotifier *this)
{
  if (result)
  {
    *(this + 3) = this + 32;
  }

  return result;
}

OSMetaClass *_GLOBAL__sub_I_IOGCPortNotifier_cpp()
{
  result = OSMetaClass::OSMetaClass(&IOGCPortNotifier::gMetaClass, "IOGCPortNotifier", &IODataQueue::gMetaClass, 0x40u);
  result->__vftable = off_458E8;
  return result;
}

uint64_t IOCircularDataQueueMemorySize(unsigned int a1, unsigned int a2)
{
  v2 = (a1 + 63) & 0x1FFFFFFF8;
  if ((v2 * a2 + 64) >> 32)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 >= a1;
  }

  if (!v3 || a2 == 0)
  {
    return 0;
  }

  else
  {
    return v2 * a2 + 64;
  }
}

uint64_t _start()
{
  if (_realmain)
  {
    return _realmain();
  }

  else
  {
    return 0;
  }
}

uint64_t _stop()
{
  if (_antimain)
  {
    return _antimain();
  }

  else
  {
    return 0;
  }
}

void PSVR2SenseDeviceFastPathUserClient::_userCreateInputQueue()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 497, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 498, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 499, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 495, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 480, 0);
}

uint64_t PSVR2SenseDeviceFastPathUserClient::_userCreateInputQueue()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v3, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v5, v6, v7, 505, v2);
  return (*(*v1 + 696))(v1, v0);
}

void PSVR2SenseDeviceFastPathUserClient::_userCreateControlQueue(IORegistryEntry *a1, uint64_t a2)
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v7, v8, v9, 533, 0);
  v5 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(a1);
  _os_log_internal(&dword_0, v5, OS_LOG_TYPE_INFO, "[%#010llx] Create control queue (%llx): Not permitted", RegistryEntryID, **(a2 + 32));
}

void PSVR2SenseDeviceFastPathUserClient::_userCreateControlQueue()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 551, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 552, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 553, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 549, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 536, 0);
}

uint64_t PSVR2SenseDeviceFastPathUserClient::_userCreateControlQueue()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v3, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v5, v6, v7, 559, v2);
  return (*(*v1 + 696))(v1, v0);
}

void PSVR2SenseDeviceFastPathUserClient::_userDestroyQueue(int a1)
{
  v1 = a1;
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 589, v1);
}

void PSVR2SenseDeviceFastPathUserClient::_userDestroyQueue()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 592, 0);
}

void PSVR2SenseDeviceFastPathUserClient::_userGetQueueProperties(int a1)
{
  v1 = a1;
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 620, v1);
}

uint64_t PSVR2SenseDeviceFastPathUserClient::_userGetQueueProperties(uint64_t a1)
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v4, v5, v6, 665, 0);
  return (*(*a1 + 40))(a1);
}

void PSVR2SenseDeviceFastPathUserClient::_userGetQueueProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 663, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 626, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 623, 0);
}

void PSVR2SenseDeviceFastPathUserClient::initWithTask()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 93, 0);
}

void PSVR2SenseDeviceFastPathUserClient::start()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 149, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 159, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 156, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v2, v3, v4, 153, 0);
  v1 = _gc_log_psvr2();
  _os_log_internal(&dword_0, v1, OS_LOG_TYPE_DEBUG, "PSVR2SenseDeviceFastPathUserClient provider must be PSVR2SenseDevice.");
}

void PSVR2SenseDeviceFastPathUserClient::start(int a1)
{
  v1 = a1;
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 160, v1);
}

void PSVR2SenseDeviceFastPathUserClient::clientMemoryForSharedPage()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 278, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 275, 0);
}

void PSVR2SenseDeviceFastPathUserClient::setProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 308, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 305, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 302, 0);
}

void PSVR2SenseDeviceFastPathUserClient::clientMemoryForType(int a1)
{
  v1 = a1;
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 360, v1);
}

void PSVR2SenseDeviceFastPathUserClient::clientMemoryForType()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 363, 0);
}

void PSVR2SenseDeviceFastPathUserClient::registerNotificationPort(int a1)
{
  v1 = a1;
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 387, v1);
}

void PSVR2SenseDeviceFastPathUserClient::registerNotificationPort()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 390, 0);
}

void PSVR2SenseDeviceFastPathUserClient::externalMethod()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 414, 0);
}

void ___ZN34PSVR2SenseDeviceFastPathUserClient9_userOpenEPS_PvP25IOExternalMethodArguments_block_invoke_cold_1()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 438, 0);
}

void ___ZN34PSVR2SenseDeviceFastPathUserClient9_userOpenEPS_PvP25IOExternalMethodArguments_block_invoke_cold_2()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 436, 0);
}

void ___ZN34PSVR2SenseDeviceFastPathUserClient10_userCloseEPS_PvP25IOExternalMethodArguments_block_invoke_cold_1()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 457, 0);
}

void PSVR2SenseDeviceFastPathUserClient::unserializeInputArguments(int a1)
{
  v1 = a1;
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 696, v1);
}

void PSVR2SenseDeviceFastPathUserClient::unserializeInputArguments()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 700, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 703, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 693, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 690, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 687, 0);
}

IONotifier *PSVR2SenseDevice::registerInterest(IOService *this, const OSSymbol *a2, IOReturn (__cdecl *a3)(void *, void *, UInt32, IOService *, void *, vm_size_t), void *a4, void *a5)
{
  v7 = IOService::registerInterest(this, a2, a3, a4, a5);
  if (v7)
  {
    if (gIOGeneralInterest == a2)
    {
      timeBusy = this[1].__timeBusy;
      OUTLINED_FUNCTION_9();
      atomic_fetch_or(v9, 1u);
    }
  }

  else
  {
    _gc_log_debug();
    OUTLINED_FUNCTION_0();
    _os_log_internal(&dword_0, v11, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v12, v13, v14, 476, 0);
  }

  return v7;
}

void PSVR2SenseDevice::handleInputDataForTimesync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 216);
  v7 = *a3;
  if (*(v6 + 148))
  {
    v8 = (v6 + 152);
  }

  else
  {
    v8 = (v6 + 144);
  }

  v9 = *(v6 + 244);
  v10 = *v8;
  if (*(v6 + 199))
  {
    v11 = 200;
  }

  else
  {
    if ((*(v6 + 197) & 1) == 0)
    {
      if ((*(v6 + 196) & 1) == 0)
      {
        goto LABEL_10;
      }

      LOBYTE(v12) = 0;
      goto LABEL_68;
    }

    v11 = 198;
  }

  v12 = *(v6 + v11);
  if ((v12 ^ *(v6 + 196)))
  {
LABEL_68:
    _gc_log_psvr2();
    OUTLINED_FUNCTION_10();
    v166 = *a3;
    v161 = *(*(a1 + 216) + 196) & 1;
    OUTLINED_FUNCTION_24(&dword_0, v143, v144, "[%#010llx] #TRANSPORT Time synchronization state changed: %d -> %d (%llu)");
    v6 = *(a1 + 216);
    *(v6 + 196) = v12 & 1;
    ++*(v6 + 224);
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if (v12)
  {
LABEL_8:
    v13 = 0;
    v14 = 1;
    goto LABEL_12;
  }

LABEL_10:
  v14 = 0;
  if (*(v6 + 164))
  {
    v141 = *(a1 + 232);
    v142 = *(a1 + 236);
    v7 = (v7 * v141 / v142 - 1000 * *(v6 + 168)) * v142 / v141;
    v13 = 1000 * v142 * *(v6 + 172) / v141;
  }

  else
  {
    v13 = 0;
  }

LABEL_12:
  *(v6 + 208) = v7;
  *(v6 + 216) = v13;
  v15 = *(a3 + 16);
  v17 = *(a3 + 40);
  v16 = *(a3 + 48);
  *v17 = v15;
  *(v17 + 8) = v10;
  *(v17 + 12) = v14;
  *(v17 + 13) = *(a3 + 64) & 1;
  v18 = *(a1 + 232);
  v19 = *(a1 + 236);
  v20 = *(a3 + 8);
  v21 = *a3 * v18 / v19 / 0x14D;
  *(v17 + 16) = *a3;
  *(v17 + 24) = v21;
  *(v17 + 32) = v20;
  *(v17 + 40) = v20 * v18 / v19 / 0x14D;
  *(v17 + 48) = v7;
  *(v17 + 56) = v13;
  *(v17 + 64) = v7 * v18 / v19 / 0x14D;
  *(v17 + 72) = v13 * v18 / v19 / 0x14D;
  v22 = *(a2 + 11);
  v23 = *(a2 + 47);
  *(v17 + 80) = v22;
  *(v17 + 84) = v23;
  v24 = v22 < *(v16 + 80);
  v25 = v23 < *(v16 + 84);
  v26 = *(a2 + 27);
  v27 = *(a2 + 43);
  *(v17 + 88) = v26;
  v28 = v26 < *(v16 + 88);
  *(v17 + 92) = v27;
  v29 = ((*(v16 + 100) << 32) + (v24 << 32)) | v22;
  v30 = (*(v16 + 108) << 32) + (v25 << 32);
  *(v17 + 96) = v29;
  *(v17 + 104) = v30 | v23;
  *(v17 + 112) = ((*(v16 + 116) << 32) + (v28 << 32)) | v26;
  if (v27)
  {
    v31 = *(v6 + 296);
    if ((v31 & 0xFFFFFFFF00000000 | v27) <= v31)
    {
      v27 |= v31 & 0xFFFFFFFF00000000;
    }

    *(v17 + 120) = v27;
    *(v6 + 312) = v27;
  }

  if (v15 >= 2)
  {
    if (v29 != *(v16 + 96) + 1)
    {
      _gc_log_psvr2();
      OUTLINED_FUNCTION_11();
      v140 = *(a3 + 40);
      v139 = *(a3 + 48);
      v180 = v139[13];
      v181 = v140[13];
      v177 = v139[5];
      v179 = v140[5];
      v173 = v139[8];
      v175 = v140[8];
      v169 = v139[2];
      v171 = v140[2];
      v160 = *v139;
      v164 = *v140;
      OUTLINED_FUNCTION_26(&dword_0, v139[12], v140[12], "[%#010llx] #ACCESSORY Unexpected sequence number delta between input reports %llu -> %llu{\n\t deviceSequenceNumber: %llu -> %llu\n\t reportTimestampHost: %llu -> %llu\n\t receiveTimestamp3US: %llu -> %llu\n\t driverTimestamp3US: %llu -> %llu\n\t deviceTimestamp3US: %llu -> %llu\n}");
      ++*(*(a1 + 216) + 25984);
      v16 = *(a3 + 48);
    }

    v32 = *(a3 + 40);
    if (*(v32 + 64) - *(v16 + 64) > 0xE4E1C0uLL || *(v32 + 40) - *(v16 + 40) > 0xE4E1C0uLL || *(v32 + 104) - *(v16 + 104) > 0xE4E1C0uLL || *(v32 + 112) - *(v16 + 112) > 0xE4E1C0uLL)
    {
      _gc_log_psvr2();
      OUTLINED_FUNCTION_11();
      v138 = *(a3 + 40);
      v137 = *(a3 + 48);
      v185 = v138[14];
      v184 = v137[14];
      v182 = v137[13];
      v183 = v138[13];
      v176 = v137[8];
      v178 = v138[8];
      v172 = v137[3];
      v174 = v138[3];
      v168 = v137[2];
      v170 = v138[2];
      v165 = v137[12];
      v167 = v138[12];
      v159 = *v137;
      v163 = *v138;
      OUTLINED_FUNCTION_26(&dword_0, v137[5], v138[5], "[%#010llx] #TIMESYNC Detected suspicious timestamp delta between input reports %llu -> %llu{\n\t deviceSequenceNumber: %llu -> %llu\n\t reportTimestampHost: %llu -> %llu\n\t reportTimestamp3US: %llu -> %llu\n\t receiveTimestamp3US: %llu -> %llu (%d)\n\t driverTimestamp3US: %llu -> %llu (%d)\n\t deviceTimestamp3US: %llu -> %llu (%d)\n\t deviceMotionTimestamp3US: %llu -> %llu (%d)\n}");
      ++*(*(a1 + 216) + 25992);
      v32 = *(a3 + 40);
      v16 = *(a3 + 48);
    }

    if (*(v32 + 96) == *(v16 + 96) + 1)
    {
      v36 = *(v32 + 40) - *(v16 + 40);
      *(v32 + 128) = *(v32 + 24) - *(v16 + 24);
      *(v32 + 132) = v36;
      v37 = *(v32 + 64) - *(v16 + 64);
      *(v32 + 136) = v37;
      *(v32 + 140) = vmovn_s64(vsubq_s64(*(v32 + 104), *(v16 + 104)));
    }

    else
    {
      v37 = *(v32 + 136);
    }

    v38 = (3 * v10);
    if (v37)
    {
      if (9 * *(v32 + 8) < (2 * v37))
      {
        v39 = (v37 + 60) / v38 - 1;
        *(v32 + 148) = v39;
        *(*(a1 + 216) + 2424) += v39;
      }
    }

    else
    {
      *(v32 + 148) = -1;
    }

    v40 = *(v32 + 140);
    if (9 * v10 >= (2 * v40))
    {
      *(v32 + 149) = 0;
      if (*(v32 + 148))
      {
        goto LABEL_46;
      }
    }

    else
    {
      v41 = (v40 + v9) / v38 - 1;
      *(*(a1 + 216) + 2424) -= v41;
      *(v32 + 149) = v41;
      if (*(v32 + 148) | v41)
      {
LABEL_46:
        *(v32 + 150) = *(*(a1 + 216) + 2424);
        _gc_log_psvr2();
        OUTLINED_FUNCTION_10();
        v43 = **(a3 + 40);
        v44 = *(a3 + 24);
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_3(v45, v46, v47, "[%#010llx] --- TIMESYNC %llu (prev %llu) (IN) ---");
        _gc_log_psvr2();
        v48 = OUTLINED_FUNCTION_10();
        v148 = *(*(a3 + 40) + 12) & 1;
        OUTLINED_FUNCTION_3(v48, v49, v50, "[%#010llx] \t isTransportTimeSynchronized = %d");
        _gc_log_psvr2();
        v51 = OUTLINED_FUNCTION_10();
        v149 = *(*(a3 + 40) + 13) & 1;
        OUTLINED_FUNCTION_3(v51, v52, v53, "[%#010llx] \t invalidChecksum = %d");
        _gc_log_psvr2();
        v54 = OUTLINED_FUNCTION_10();
        v150 = *(*(a3 + 40) + 96);
        OUTLINED_FUNCTION_3(v54, v55, v56, "[%#010llx] \t deviceSequenceNumber = %llu");
        _gc_log_psvr2();
        v57 = OUTLINED_FUNCTION_10();
        v151 = *(*(a3 + 40) + 16);
        OUTLINED_FUNCTION_3(v57, v58, v59, "[%#010llx] \t reportTimestampHost = %llu");
        _gc_log_psvr2();
        v60 = OUTLINED_FUNCTION_10();
        v152 = *(*(a3 + 40) + 48);
        OUTLINED_FUNCTION_3(v60, v61, v62, "[%#010llx] \t receiveTimestampHost = %llu");
        _gc_log_psvr2();
        v63 = OUTLINED_FUNCTION_10();
        v153 = *(*(a3 + 40) + 64);
        OUTLINED_FUNCTION_3(v63, v64, v65, "[%#010llx] \t receiveTimestamp3US = %llu");
        _gc_log_psvr2();
        v66 = OUTLINED_FUNCTION_10();
        v154 = *(*(a3 + 40) + 104);
        OUTLINED_FUNCTION_3(v66, v67, v68, "[%#010llx] \t deviceTimestamp3US = %llu");
        _gc_log_psvr2();
        v69 = OUTLINED_FUNCTION_10();
        v155 = *(*(a3 + 40) + 112);
        OUTLINED_FUNCTION_3(v69, v70, v71, "[%#010llx] \t deviceMotionTimestamp3US = %llu");
        _gc_log_psvr2();
        v72 = OUTLINED_FUNCTION_10();
        v156 = *(*(a3 + 40) + 148);
        OUTLINED_FUNCTION_3(v72, v73, v74, "[%#010llx] \t retransmissions (rts estimated) = %hhi");
        _gc_log_psvr2();
        v75 = OUTLINED_FUNCTION_10();
        v76 = *(a3 + 40);
        v157 = *(v76 + 149);
        v162 = *(v76 + 8);
        OUTLINED_FUNCTION_3(v75, v77, v78, "[%#010llx] \t retransmissions (dts estimated) = %hhi (@%uus)");
        _gc_log_psvr2();
        v145 = OUTLINED_FUNCTION_10();
        v158 = *(*(a3 + 40) + 150);
        OUTLINED_FUNCTION_3(v145, v79, v80, "[%#010llx] \t retransmission bubble = %hhi");
        _gc_log_psvr2();
        OUTLINED_FUNCTION_10();
        v81 = *(*(a3 + 40) + 128);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_3(v82, v83, v84, "[%#010llx] \t reportTimestampDelta3US = %u (%uus)");
        _gc_log_psvr2();
        OUTLINED_FUNCTION_10();
        v85 = *(*(a3 + 40) + 136);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_3(v86, v87, v88, "[%#010llx] \t receiveTimestampDelta3US = %u (%uus)");
        _gc_log_psvr2();
        OUTLINED_FUNCTION_10();
        v89 = *(*(a3 + 40) + 140);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_3(v90, v91, v92, "[%#010llx] \t deviceTimestampDelta3US = %u (%uus)");
        _gc_log_psvr2();
        OUTLINED_FUNCTION_10();
        v93 = *(*(a3 + 40) + 144);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_3(v94, v95, v96, "[%#010llx] \t deviceMotionTimestampDelta3US = %u (%uus)");
        v97 = *(a1 + 216);
        if (*(v97 + 256))
        {
          v98 = (v97 + 260);
        }

        else
        {
          v98 = (v97 + 248);
        }

        v99 = *v98;
        v100 = *(a3 + 40);
        v101 = v100[8] - 3 * v99 - 1875;
        v102 = v100[13];
        v100[19] = v102 - v101;
        v100[20] = v101 - v102;
        _gc_log_psvr2();
        OUTLINED_FUNCTION_11();
        v103 = (*(*(a3 + 40) + 152) - *(*(a3 + 48) + 152)) / 3;
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_7(v104, v105, v106, "[%#010llx] \t hostToDeviceTimestampConversion3US = %lli (delta %llius)");
        _gc_log_psvr2();
        OUTLINED_FUNCTION_11();
        v107 = (*(*(a3 + 40) + 160) - *(*(a3 + 48) + 160)) / 3;
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_7(v108, v109, v110, "[%#010llx] \t deviceToHostTimestampConversion3US = %lli (delta %llius)");
        _gc_log_psvr2();
        v146 = OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_7(v146, v111, v112, "[%#010llx] \t accessoryInputBTSubmissionDelayUS = %llu");
        if (!(*(a3 + 16) % 0x14uLL))
        {
          v113 = *(a1 + 216);
          if ((*(v113 + 2416) & 1) == 0)
          {
            if (*(v113 + 256))
            {
              v114 = (v113 + 260);
            }

            else
            {
              v114 = (v113 + 248);
            }

            v115 = 0;
            v116 = 0;
            v117 = 0;
            v118 = -3 * *v114 - 1875;
            v119 = (v113 + 2614);
            v120 = 1;
            v121 = 140;
            do
            {
              if (!*(v119 - 2) && !*(v119 - 1) && !*v119)
              {
                v122 = v118 + *(v119 - 86);
                v123 = *(v119 - 46);
                v116 = v123 + v116 - v122;
                v115 = v115 - v123 + v122;
                v120 &= *(v119 - 138);
                ++v117;
              }

              v119 += 168;
              --v121;
            }

            while (v121);
            *(v113 + 2432) = v116 / v117;
            *(v113 + 2448) = v115 / v117;
            _gc_log_psvr2();
            v124 = OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_7(v124, v125, v126, "[%#010llx] (AVG) isTransportTimeSynchronized = %d / %u");
            _gc_log_psvr2();
            v127 = OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_7(v127, v128, v129, "[%#010llx] (AVG) hostToDeviceTimestampConversion3US = %lli / %u");
            _gc_log_psvr2();
            v147 = OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_7(v147, v130, v131, "[%#010llx] (AVG) deviceToHostTimestampConversion3US = %lli / %u");
          }
        }

        goto LABEL_59;
      }
    }

    if (!*(v16 + 148) && !*(v16 + 149))
    {
      v42 = *(a3 + 56);
      if (!*(v42 + 148) && !*(v42 + 149))
      {
        *(*(a1 + 216) + 2424) = 0;
      }
    }

    goto LABEL_46;
  }

LABEL_59:
  v132 = *(a1 + 344);
  if (v132)
  {
    v192 = 0;
    memset(v191, 0, sizeof(v191));
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    LODWORD(v186) = v10;
    BYTE4(v186) = v14;
    v133 = *(a3 + 40);
    *(&v186 + 1) = *v133;
    v187 = *(v133 + 16);
    v134 = *(v133 + 64);
    *&v188 = *(v133 + 48);
    *(&v188 + 1) = v134;
    v190 = *(v133 + 96);
    *&v191[0] = *(v133 + 112);
    DWORD2(v191[0]) = *(v133 + 92);
    *(v191 + 12) = vuzp1q_s32(*(v133 + 128), vrev64q_s32(*(v133 + 128)));
    HIDWORD(v191[1]) = *(v133 + 144);
    LOWORD(v192) = *(v133 + 148);
    if (((*(*v132 + 144))(v132, &v186, 120) & 1) == 0)
    {
      _gc_log_psvr2();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_21(&dword_0, v135, v136, "[%#010llx] Driver Debug Timesync Queue Enqueue failed");
    }
  }
}

void PSVR2SenseDevice::handleSensePowerData()
{
  OUTLINED_FUNCTION_19();
  if (*(v2 + 2))
  {
    v3 = v2;
    v4 = *(*(v1 + 216) + 26056);
    v5 = *(*(v1 + 216) + 26060);
    v6 = *(v0 + 41);
    if (((v4 >> 14) & 1) != ((v6 >> 14) & 1))
    {
      _gc_log_psvr2();
      OUTLINED_FUNCTION_15();
      v43 = (*(v0 + 41) >> 14) & 1;
      OUTLINED_FUNCTION_8(&dword_0, v32, v33, "[%#010llx] #POWER Power detection changed %d -> %d");
      v6 = *(v0 + 41);
    }

    v7 = v4 & 0xF;
    if (v7 != (v6 & 0xF))
    {
      _gc_log_psvr2();
      OUTLINED_FUNCTION_15();
      v44 = *(v0 + 41) & 0xF;
      OUTLINED_FUNCTION_8(&dword_0, v34, v35, "[%#010llx] #POWER Battery level changed %d -> %d");
      v6 = *(v0 + 41);
    }

    v8 = v4 >> 15;
    if (v4 >> 15 != v6 >> 15)
    {
      _gc_log_psvr2();
      OUTLINED_FUNCTION_15();
      v45 = *(v0 + 41) >> 15;
      OUTLINED_FUNCTION_8(&dword_0, v36, v37, "[%#010llx] #POWER Battery low voltage changed %d -> %d");
      LOWORD(v6) = *(v0 + 41);
    }

    v9 = *(v1 + 216);
    v10 = v9 + 24576;
    if ((v6 & 0x4000) != 0)
    {
      *(v9 + 26060) = 0;
      if (!v5)
      {
        goto LABEL_32;
      }

      v18 = 0;
      goto LABEL_34;
    }

    v11 = *(v9 + 26048);
    v12 = *(v10 + 1473);
    v13 = *(v10 + 1476);
    if (*(v10 + 1472))
    {
      v14 = (v6 & 0xF) <= v11;
      v15 = 2 * v14;
      if (((v14 ^ (v7 > v11)) & 1) == 0)
      {
        _gc_log_psvr2();
        OUTLINED_FUNCTION_15();
        v42 = *(v0 + 41) & 0xF;
        OUTLINED_FUNCTION_8(&dword_0, v16, v17, "[%#010llx] #POWER Battery level %d meets BATTERY disconnect criteria.");
      }

      if ((v12 & 1) == 0)
      {
LABEL_19:
        v22 = *(v1 + 216);
        if (v13)
        {
          v23 = *(v22 + 26200);
          if (*(v22 + 26192) <= 0 && v23 != 0)
          {
            v25 = *(v1 + 232);
            v26 = *(v1 + 236);
            v27 = v23 * v25 / v26 / 0xF4240;
            v28 = *(*(v3 + 5) + 32) * v25 / v26 / 0xF4240;
            v29 = v28 - v27 > v13;
            v15 |= v29;
            if (v29 != (v5 & 1))
            {
              _gc_log_psvr2();
              v30 = OUTLINED_FUNCTION_25();
              _os_log_internal(&dword_0, v3, OS_LOG_TYPE_DEBUG, "[%#010llx] #POWER 'Controller not held' time meets BATTERY disconnect criteria {\n\t now = %llums\n\t last held in hand update = %llums\n\t should disconnect after = %ums\n}", v30, v28, v27, v13);
              v22 = *(v1 + 216);
            }
          }
        }

        if (v15)
        {
          v18 = v15 | 0x80000000;
        }

        else
        {
          v18 = 0;
        }

        *(v22 + 26060) = v18;
        if (v18 == v5)
        {
          if (!v15)
          {
            goto LABEL_32;
          }

          v31 = atomic_load((v22 + 26064));
          if ((v31 & 1) == 0)
          {
            goto LABEL_32;
          }

          v38 = *(v1 + 216);
          v18 = v15 | 0x80000000;
        }

LABEL_34:
        OUTLINED_FUNCTION_9();
        atomic_store(0, v39);
        _gc_log_psvr2();
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_26(&dword_0, v40, v41, "[%#010llx] #POWER Notifying clients that 'should disconnect' state changed %#x -> %#x");
        (*(*v1 + 1072))(v1, 3758096896, v18, 0);
        goto LABEL_32;
      }
    }

    else
    {
      v15 = 0;
      if ((*(v10 + 1473) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v19 = *(v0 + 41);
    v15 |= (v19 >> 13) & 4;
    if (v8 != v19 >> 15)
    {
      _gc_log_psvr2();
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_8(&dword_0, v20, v21, "[%#010llx] #POWER Battery low voltage meets BATTERY disconnect criteria.");
    }

    goto LABEL_19;
  }

LABEL_32:
  *(*(v1 + 216) + 26056) = *(v0 + 41);
}

const OSMetaClassBase *PSVR2SenseDevice::handleInputReportData(uint64_t a1)
{
  v2 = *(a1 + 216);
  v3 = 168 * (*(v2 + 280) % 0x8CuLL);
  v4 = (v2 + 2464 + v3);
  if (v3 != v3)
  {
    v4 = ((v2 + 2464 + v3) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  bzero(v4, 0xA8uLL);
  v5 = OUTLINED_FUNCTION_16();
  PSVR2SenseDevice::handleInputDataForTimesync(v5, v6, v7);
  v8 = OUTLINED_FUNCTION_16();
  PSVR2SenseDevice::handleSenseInputData(v8, v9, v10);
  OUTLINED_FUNCTION_16();
  PSVR2SenseDevice::handleSensePowerData();
  ++*(*(a1 + 216) + 280);
  v11 = OUTLINED_FUNCTION_18(*(a1 + 328));
  (*(v12 + 120))(v11);
  for (result = (*(**(a1 + 328) + 136))(); result; result = (*(**(a1 + 328) + 136))())
  {
    v14 = OSMetaClassBase::requiredMetaCast(result, &PSVR2SenseDeviceFastPathUserClient::gMetaClass);
    PSVR2SenseDeviceFastPathUserClient::inputDataAvailable(v14);
  }

  return result;
}

uint64_t ___ZN16PSVR2SenseDevice19prepareOutputReportER19OutputWakeupContext_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = **(a1 + 40);
  v3 = *(v1 + 216);
  if (v2 > *(v3 + 304))
  {
    *(v3 + 304) = v2;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = v3 + 856;
  v8 = 20;
  do
  {
    if ((*(v7 + 32) & 0x20) != 0)
    {
      v9 = *(v7 + 8);
      if (v9 > *v7)
      {
        v10 = v9 * *(v1 + 232) / *(v1 + 236) / 0x3E8 - *v7 * *(v1 + 232) / *(v1 + 236) / 0x3E8;
        v5 += v10 >> 1;
        if (v10 >> 1 > v4)
        {
          v4 = v10 >> 1;
        }

        ++v6;
      }
    }

    v7 += 80;
    --v8;
  }

  while (v8);
  if (v6)
  {
    v11 = v5 / v6;
    *(v3 + 176) = v11;
    *(v3 + 180) = v4 - v11;
    _gc_log_psvr2();
    OUTLINED_FUNCTION_22();
    v12 = *(v1 + 216);
    v16 = *(v12 + 176);
    v17 = *(v12 + 180);
    OUTLINED_FUNCTION_21(&dword_0, v13, v14, "[%#010llx] >>>> Calculated new transport delay %uus +/-%u");
  }

  return 0;
}

uint64_t ___ZN16PSVR2SenseDevice19wakeForOutputReportEP18IOTimerEventSource_block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 216);
  v6 = *(v5 + 288);
  v7 = v5 + 336;
  v8 = v6 % 0x14;
  v9 = 24 * (v6 % 0x14);
  v10 = (v5 + 336 + v9);
  if (v9 != v9)
  {
    v10 = ((v5 + 336 + v9) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  *(v5 + 288) = v6 + 1;
  v11 = *(v3 + 8);
  v10[2] = v11;
  v12 = *(v5 + 320);
  *v10 = v6;
  v10[1] = v12;
  v13 = *(v4 + 232);
  v14 = *(v4 + 236);
  v15 = v11 * v13 / v14 / 0x3E8;
  v16 = v12 * v13 / v14 / 0x3E8;
  _gc_log_psvr2();
  v17 = OUTLINED_FUNCTION_11();
  v18 = 24 * ((v6 - 1) % 0x14) + 16;
  v19 = (v7 + v18);
  if (v18 != v18)
  {
    v19 = ((v7 + v18) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  _os_log_internal(&dword_0, v1, OS_LOG_TYPE_DEBUG, "[%#010llx] (^) WAKE FOR OUTPUT REPORT (%llu) @ %lluus (+%lluus after scheduled), +%lluus after previous", v17, v6, v15, v15 - v16, v15 - *v19 * *(v4 + 232) / *(v4 + 236) / 0x3E8);
  v20 = *(v4 + 216);
  v21 = *(v20 + 268);
  if (*(v20 + 148))
  {
    v22 = (v20 + 152);
  }

  else
  {
    v22 = (v20 + 144);
  }

  if (*(v20 + 184))
  {
    v23 = (v20 + 188);
  }

  else
  {
    v23 = (v20 + 176);
  }

  v24 = *v22;
  v25 = *(v20 + 269);
  v26 = *(v20 + 272);
  v27 = *v23;
  v28 = *(v4 + 232);
  v29 = *(v4 + 236);
  v30 = *(v20 + 208) * v28;
  v31 = *(a1 + 40);
  *v31 = *(v20 + 320);
  *(v31 + 16) = *(v31 + 8);
  *(v31 + 24) = 0;
  *(v31 + 40) = v21 & 1;
  v32 = v30 / v29;
  if (!v8)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = (v20 + 352);
    v50 = -1;
    v51 = 20;
    do
    {
      v52 = *(v49 - 1);
      if (*v49 >= v52)
      {
        v53 = *v49 * v28 / v29 / 0x3E8 - v52 * v28 / v29 / 0x3E8;
        v47 += v53;
        if (v53 < v50)
        {
          v50 = *v49 * v28 / v29 / 0x3E8 - v52 * v28 / v29 / 0x3E8;
        }

        if (v53 > v46)
        {
          v46 = *v49 * v28 / v29 / 0x3E8 - v52 * v28 / v29 / 0x3E8;
        }

        ++v48;
      }

      v49 += 3;
      --v51;
    }

    while (v51);
    if (v48)
    {
      *(v20 + 328) = v47 / v48;
      *(v20 + 332) = (v46 - v50) >> 1;
      _gc_log_psvr2();
      v54 = OUTLINED_FUNCTION_11();
      _os_log_internal(&dword_0, v25, OS_LOG_TYPE_DEBUG, "[%#010llx] (^)\t Calculated new wake delay %uus +/-%u", v54, *(*(v4 + 216) + 328), *(*(v4 + 216) + 332));
    }
  }

  if (v32 >= 0x3E8)
  {
    v33 = v32 / 0x3E8;
    if (v15 > v32 / 0x3E8)
    {
      v34 = 6;
      v35 = (v15 - v32 / 0x3E8) / v24;
      do
      {
        v36 = v33 + ++v35 * v24;
        if (!--v34)
        {
          _gc_log_psvr2();
          v45 = OUTLINED_FUNCTION_11();
          _os_log_internal(&dword_0, v25, OS_LOG_TYPE_DEBUG, "[%#010llx] (^) #WARNING Could not estimate the transmission time {\n    wakeupTimestampUS = %lluus\n    lastAnchorTimestampUS = %lluus\n    transportReportIntervalUS = %uus\n    hostTransportOutputEnqueueDelayUS = %uus\n    nextAnchorTimestampUS = %lluus\n}", v45, v15, v33, v24, v27, v36);
          goto LABEL_25;
        }
      }

      while (v36 <= v15 + v27);
      if ((v25 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    _gc_log_debug();
    OUTLINED_FUNCTION_0();
    _os_log_internal(&dword_0, v55, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v56, v57, v58, 2714, 0);
  }

LABEL_25:
  v36 = v15;
  if (v25)
  {
LABEL_16:
    *(*(a1 + 40) + 16) = 1000 * v36 * *(v4 + 236) / *(v4 + 232);
  }

LABEL_17:
  if (v26 <= v24)
  {
    v37 = v24;
  }

  else
  {
    v37 = v26;
  }

  if (v21)
  {
    v38 = v26;
  }

  else
  {
    v38 = v37;
  }

  _gc_log_psvr2();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_21(&dword_0, v39, v40, "[%#010llx] (^)\t Schedule next wakeup in %uus");
  v41 = *(v4 + 208);
  *(*(v4 + 216) + 320) = 1000 * (v15 + v38) * *(v4 + 236) / *(v4 + 232);
  v42 = OUTLINED_FUNCTION_18(v41);
  (*(v43 + 304))(v42);
  return 0;
}

void PSVR2SenseDevice::handleStart(int a1)
{
  v1 = a1;
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 83, v1);
}

{
  v1 = a1;
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 89, v1);
}

{
  v1 = a1;
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 95, v1);
}

{
  v1 = a1;
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 353, v1);
}

void PSVR2SenseDevice::handleStart()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 119, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_32(v0, v1, v2, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n");
  _gc_log_psvr2();
  v5 = OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14(v5, v3, v4, "[%#010llx] Could not determine device type!");
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 345, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 108, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 94, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 88, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 82, 0);
}

void PSVR2SenseDevice::setProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 463, 0);
}

uint64_t PSVR2SenseDevice::refreshMotionCorrectionData(uint64_t a1, void ***a2)
{
  v2 = OUTLINED_FUNCTION_0_0(a1, a2);
  OUTLINED_FUNCTION_13(COERCE_DOUBLE(1107296256), v2, v3);
  OUTLINED_FUNCTION_12(v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  return IOGCCommandQueue::asyncBlock(v9, v10, v11, v12);
}

{
  v2 = OUTLINED_FUNCTION_0_0(a1, a2);
  OUTLINED_FUNCTION_13(COERCE_DOUBLE(1107296256), v2, v3);
  OUTLINED_FUNCTION_12(v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  return IOGCCommandQueue::asyncBlock(v9, v10, v11, v12);
}

{
  v2 = OUTLINED_FUNCTION_0_0(a1, a2);
  OUTLINED_FUNCTION_13(COERCE_DOUBLE(1107296256), v2, v3);
  OUTLINED_FUNCTION_12(v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  return IOGCCommandQueue::asyncBlock(v9, v10, v11, v12);
}

uint64_t PSVR2SenseDevice::refreshMotionCorrectionData()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8(&dword_0, v2, v3, "[%#010llx] Motion correction fetch request is outdated.");
  OUTLINED_FUNCTION_5();
  v1[1] = 1107296256;
  v1[2] = ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_122;
  v1[3] = &__block_descriptor_tmp_125;
  v1[4] = v0;
  OUTLINED_FUNCTION_29();
  return IOGCCommandQueue::asyncBlock(v4, v5, v6, 0);
}

uint64_t PSVR2SenseDevice::refreshFirmwareInfo(uint64_t a1, void ***a2)
{
  v2 = OUTLINED_FUNCTION_0_0(a1, a2);
  OUTLINED_FUNCTION_13(COERCE_DOUBLE(1107296256), v2, v3);
  OUTLINED_FUNCTION_12(v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  return IOGCCommandQueue::asyncBlock(v9, v10, v11, v12);
}

{
  v2 = OUTLINED_FUNCTION_0_0(a1, a2);
  OUTLINED_FUNCTION_13(COERCE_DOUBLE(1107296256), v2, v3);
  OUTLINED_FUNCTION_12(v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  return IOGCCommandQueue::asyncBlock(v9, v10, v11, v12);
}

{
  v2 = OUTLINED_FUNCTION_0_0(a1, a2);
  OUTLINED_FUNCTION_13(COERCE_DOUBLE(1107296256), v2, v3);
  OUTLINED_FUNCTION_12(v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  return IOGCCommandQueue::asyncBlock(v9, v10, v11, v12);
}

uint64_t PSVR2SenseDevice::refreshFirmwareInfo()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8(&dword_0, v2, v3, "[%#010llx] Firmware info fetch request is outdated.");
  OUTLINED_FUNCTION_5();
  v1[1] = 1107296256;
  v1[2] = ___ZN16PSVR2SenseDevice19refreshFirmwareInfoEybU13block_pointerFviE_block_invoke_67;
  v1[3] = &__block_descriptor_tmp_70;
  v1[4] = v0;
  OUTLINED_FUNCTION_29();
  return IOGCCommandQueue::asyncBlock(v4, v5, v6, 0);
}

void ___ZN16PSVR2SenseDevice19refreshFirmwareInfoEybU13block_pointerFviE_block_invoke_4_cold_1(void *a1)
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 737, 0);
  *a1 = 0xCDA1000000000000;
}

void ___ZN16PSVR2SenseDevice19refreshFirmwareInfoEybU13block_pointerFviE_block_invoke_4_cold_2()
{
  _gc_log_psvr2();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_21(&dword_0, v0, v1, "[%#010llx] Accessory firmware info fetch request was cancelled.");
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_1()
{
  _gc_log_psvr2();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_21(&dword_0, v0, v1, "[%#010llx] Accessory motion correction fetch request was replaced.");
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_2()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_32(v0, v1, v2, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n");
  _gc_log_psvr2();
  v5 = OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14(v5, v3, v4, "[%#010llx] Motion correction data page out of order.");
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_3()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1236, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_4()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1235, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_5()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1234, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_6()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1233, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_7()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1232, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_8()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1231, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_9()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1230, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_10()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1229, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_11()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1228, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_12()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1227, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_13()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1226, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_14()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1225, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_15()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1224, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_16()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1223, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_17()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1222, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_18()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1221, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_19()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1220, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_20()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1219, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_21()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1218, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_22()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1217, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_23()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1216, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_24()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1215, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_25()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1214, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_26()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1213, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_27()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1212, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_28()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1211, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_29()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1210, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_30()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1209, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_31()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1208, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_32()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1207, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_33()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1206, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_34()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1205, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_35()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1204, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_36()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1203, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_37()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1202, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_38()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1201, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_39()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1200, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_40()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1199, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_41()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1198, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_42()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1197, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_43()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1196, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_44()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1195, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_45()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1194, 0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_46()
{
  OUTLINED_FUNCTION_19();
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_31(v1, v2, v3, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n");
  _gc_log_psvr2();
  v7 = OUTLINED_FUNCTION_15();
  v4 = OUTLINED_FUNCTION_4();
  _os_log_internal(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, v0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_47()
{
  OUTLINED_FUNCTION_19();
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_31(v1, v2, v3, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n");
  _gc_log_psvr2();
  v7 = OUTLINED_FUNCTION_15();
  v4 = OUTLINED_FUNCTION_4();
  _os_log_internal(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, v0);
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_48()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_32(v0, v1, v2, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n");
  _gc_log_psvr2();
  v5 = OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14(v5, v3, v4, "[%#010llx] Missing some motion correction data pages.");
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_49()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_32(v0, v1, v2, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n");
  _gc_log_psvr2();
  v5 = OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14(v5, v3, v4, "[%#010llx] Missing motion correction data pages.");
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_50(void *a1)
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 1132, 0);
  *a1 = 0xCDA1000000000000;
}

void ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_51()
{
  _gc_log_psvr2();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_21(&dword_0, v0, v1, "[%#010llx] Accessory motion correction fetch request was cancelled.");
}

void PSVR2SenseDevice::handleSenseInputData()
{
  _gc_log_psvr2();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_21(&dword_0, v0, v1, "[%#010llx] #INPUT Queue Enqueue failed.");
}

void PSVR2SenseDevice::prepareOutputDataForTracking()
{
  OUTLINED_FUNCTION_19();
  _gc_log_psvr2();
  v2 = OUTLINED_FUNCTION_25();
  _os_log_internal(&dword_0, v1, OS_LOG_TYPE_DEBUG, "[%#010llx] > (TRACKING) Queue read failed: %x", v2, v0);
}

void PSVR2SenseDevice::handleUSBInputReport()
{
  _gc_log_psvr2();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8(&dword_0, v0, v1, "[%#010llx] Payload for input report [%#x] has length [%{bytes}zu], which is less than the minimum expected length [%{bytes}zu]. Ignoring.");
}

void PSVR2SenseDevice::handleBluetoothInputReport(uint64_t a1, int a2, uint64_t a3)
{
  _gc_log_psvr2();
  v6 = OUTLINED_FUNCTION_20();
  _os_log_internal(&dword_0, v3, OS_LOG_TYPE_INFO, "[%#010llx] Input report %#0.2x payload has length (%zu bytes), which is less than the minimum expected length (%zu bytes). Ignoring.", v6, a2, a3, 8uLL);
}

void PSVR2SenseDevice::setOutputReport(int a1)
{
  v1 = a1;
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 2821, v1);
}

void PSVR2SenseDevice::setOutputReport()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 2818, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 2799, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 2791, 0);
}

void PSVR2SenseDevice::getFeatureReport(int a1)
{
  v1 = a1;
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 2883, v1);
}

void PSVR2SenseDevice::getFeatureReport()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 2880, 0);
}

uint64_t ___ZN16PSVR2SenseDevice16getFeatureReportEhmbU13block_pointerFviPKvmNS_9CRCResultEE_block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _gc_log_psvr2();
  OUTLINED_FUNCTION_20();
  v10 = *(a2 + 56);
  OUTLINED_FUNCTION_24(&dword_0, v5, v6, "[%#010llx] Get feature report %#0.2x failed: %#x");
  result = *(a2 + 32);
  if (result)
  {
    v8 = OUTLINED_FUNCTION_17(result);

    return v9(v8, a3, 0, 0, 0, 0);
  }

  return result;
}

uint64_t ___ZN16PSVR2SenseDevice16getFeatureReportEhmbU13block_pointerFviPKvmNS_9CRCResultEE_block_invoke_cold_2(IORegistryEntry *a1, uint64_t a2, unsigned __int8 a3, void *a4)
{
  v8 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(a1);
  _os_log_internal(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[%#010llx] Get feature report %#0.2x error: Response [%#0.2x] is too short. Expected at least %zu bytes.", RegistryEntryID, *(a2 + 56), a3, *a4);
  result = *(a2 + 32);
  if (result)
  {
    v11 = OUTLINED_FUNCTION_17(result);

    return v12(v11, 3758097127, 0, 0, 0, 0);
  }

  return result;
}

uint64_t ___ZN16PSVR2SenseDevice16getFeatureReportEhmbU13block_pointerFviPKvmNS_9CRCResultEE_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_19();
  _gc_log_psvr2();
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_26(&dword_0, v3, v4, "[%#010llx] Get feature report %#0.2x error: Response is empty. Expected at least %zu bytes.");
  result = *(v0 + 32);
  if (result)
  {
    v6 = OUTLINED_FUNCTION_17(result);

    return v7(v6, 3758097127, 0, 0, 0, 0);
  }

  return result;
}

uint64_t ___ZN16PSVR2SenseDevice16getFeatureReportEhmbU13block_pointerFviPKvmNS_9CRCResultEE_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_20();
  v6 = *(v0 + 56);
  OUTLINED_FUNCTION_24(&dword_0, v1, v2, "[%#010llx] Get feature report %#0.2x error: Response has length %{bytes}zu, which is abnormally large.");
  result = *(v0 + 32);
  if (result)
  {
    v4 = OUTLINED_FUNCTION_17(result);

    return v5(v4, 3758097128, 0, 0, 0, 0);
  }

  return result;
}

uint64_t ___ZN16PSVR2SenseDevice16getFeatureReportEhmbU13block_pointerFviPKvmNS_9CRCResultEE_block_invoke_cold_5()
{
  OUTLINED_FUNCTION_19();
  _gc_log_psvr2();
  OUTLINED_FUNCTION_25();
  v6 = *(v0 + 56);
  OUTLINED_FUNCTION_26(&dword_0, v1, v2, "[%#010llx] Get feature report %#0.2x error: Could not map response.");
  result = *(v0 + 32);
  if (result)
  {
    v4 = OUTLINED_FUNCTION_17(result);

    return v5(v4, 3758097096, 0, 0, 0, 0);
  }

  return result;
}

void PSVR2SenseDevice::setFeatureReport(int a1)
{
  v1 = a1;
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 3025, v1);
}

void PSVR2SenseDevice::setFeatureReport()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 3022, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 3002, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 2994, 0);
}

void ___ZN16PSVR2SenseDevice16setFeatureReportEPvmbbU13block_pointerFviE_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_19();
  v2 = *(v1 + 40);
  _gc_log_psvr2();
  OUTLINED_FUNCTION_20();
  v5 = *(v0 + 48);
  OUTLINED_FUNCTION_24(&dword_0, v3, v4, "[%#010llx] Set feature report %#0.2x failed: %#x");
}

void ___ZN16PSVR2SenseDevice19openTrackingControlEP9IOServicejP24IOGCCircularControlQueue_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_19();
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_31(v2, v3, v4, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n");
  _gc_log_psvr2();
  v5 = OUTLINED_FUNCTION_15();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(*(v0 + 40));
  v10 = *(v1 + 360);
  v6 = OUTLINED_FUNCTION_4();
  _os_log_internal(v6, v7, OS_LOG_TYPE_ERROR, v8, v5, RegistryEntryID, v10, 3131, 0);
}

void ___ZN16PSVR2SenseDevice19openTrackingControlEP9IOServicejP24IOGCCircularControlQueue_block_invoke_cold_2()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 3133, 0);
}

void ___ZN16PSVR2SenseDevice19openTrackingControlEP9IOServicejP24IOGCCircularControlQueue_block_invoke_cold_3()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 3130, 0);
}

void ___ZN16PSVR2SenseDevice20closeTrackingControlEP9IOServicej_block_invoke_cold_1()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 3149, 0);
}

void ___ZN16PSVR2SenseDevice18openHapticsControlEP9IOServicejP24IOGCCircularControlQueue_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_19();
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_31(v2, v3, v4, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n");
  _gc_log_psvr2();
  v5 = OUTLINED_FUNCTION_15();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(*(v0 + 40));
  v10 = *(v1 + 384);
  v6 = OUTLINED_FUNCTION_4();
  _os_log_internal(v6, v7, OS_LOG_TYPE_ERROR, v8, v5, RegistryEntryID, v10, 3167, 0);
}

void ___ZN16PSVR2SenseDevice18openHapticsControlEP9IOServicejP24IOGCCircularControlQueue_block_invoke_cold_2()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 3169, 0);
}

void ___ZN16PSVR2SenseDevice18openHapticsControlEP9IOServicejP24IOGCCircularControlQueue_block_invoke_cold_3()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 3166, 0);
}

void ___ZN16PSVR2SenseDevice19closeHapticsControlEP9IOServicej_block_invoke_cold_1()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 3185, 0);
}

void PSVR2SenseDevice::newUserClient()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 3202, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 3202, 0);
}

void PSVR2SenseDevice::handleStart(IOHIDInterface *)::$_0::__invoke()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 220, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 217, 0);
}

uint64_t ___ZL17fetchFirmwareInfoP28FirmwareInfoDataFetchContext_block_invoke_cold_1(uint64_t a1, uint64_t a2, IORegistryEntry ***a3)
{
  OUTLINED_FUNCTION_30();
  IORegistryEntry::getRegistryEntryID(**v3);
  v9 = (*v3)[9];
  v10 = *(*v3 + 21);
  if (v4 == v5)
  {
    OUTLINED_FUNCTION_24(&dword_0, v7, v8, "[%#010llx] Fetch accessory firmware info (g: %llu a:%u) failed: %#x (will retry)");
    v11 = *v3;
    *a3 = *v3;
    v12 = *(v11 + 21);
    ++*(v11 + 22);
    *(v11 + 23) = v12;
    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_24(&dword_0, v7, v8, "[%#010llx] Fetch accessory firmware info (g: %llu a:%u) failed: %#x");
    v14 = *v3;
    v15 = *(*v3 + 21);
    *(v14 + 32) = v4;
    *(v14 + 33) = v15;
    (v14[19]->reserved)(v14[19], 0, v16, v17);
    return 0;
  }
}

OSMetaClassBase *___ZL33fetchNextMotionCorrectionDataPageP32MotionCorrectionDataFetchContext_block_invoke_cold_1(uint64_t a1, unsigned int index)
{
  v4 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  anObject = v3;
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_18(v3);
    (*(v6 + 32))(v5);
  }

  OSArray::setObject(v4, index, &anObject);
  result = anObject;
  if (anObject)
  {
    v8 = OUTLINED_FUNCTION_18(anObject);
    return (*(v9 + 40))(v8);
  }

  return result;
}

uint64_t ___ZL33fetchNextMotionCorrectionDataPageP32MotionCorrectionDataFetchContext_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_30();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(**v0);
  v4 = *(*v0 + 9);
  v5 = (*v0)[1];
  v6 = OUTLINED_FUNCTION_18((*v0)[2]);
  v17 = (*(v7 + 144))(v6);
  OUTLINED_FUNCTION_29();
  if (v1 == v2)
  {
    _os_log_internal(v8, v9, v10, v11, RegistryEntryID, v5, v4, v17, v2);
    v12 = *v0;
    v13 = *(*v0 + 9);
    *(v12 + 10) = *(*v0 + 10) + 1;
    *(v12 + 11) = v13;
    return 1;
  }

  else
  {
    _os_log_internal(v8, v9, v10, v11, RegistryEntryID, v5, v4, v17, v1);
    v15 = *v0;
    v16 = *(*v0 + 9);
    *(v15 + 20) = v1;
    *(v15 + 21) = v16;
    (v15[13]->reserved)();
    return 0;
  }
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::_userGetProperties(uint64_t a1)
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v4, v5, v6, 284, 0);
  return (*(*a1 + 40))(a1);
}

void PSVR2SenseDeviceHIDEventServerUserClient::_userGetProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 229, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 226, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 223, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::_userSetProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 340, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 338, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 313, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 310, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 307, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::initWithTask()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 58, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::start()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 96, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 106, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 103, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v2, v3, v4, 100, 0);
  v1 = _gc_log_psvr2();
  _os_log_internal(&dword_0, v1, OS_LOG_TYPE_DEBUG, "PSVR2SenseDeviceFastPathUserClient provider must be PSVR2SenseDevice.");
}

void PSVR2SenseDeviceHIDEventServerUserClient::start(int a1)
{
  v1 = a1;
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 107, v1);
}

void PSVR2SenseDeviceHIDEventServerUserClient::setProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 164, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::clientMemoryForSharedPage()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 366, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 363, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::externalMethod()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 199, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::unserializeInputArguments(int a1)
{
  v1 = a1;
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 1337, v1);
}

void PSVR2SenseDeviceHIDEventServerUserClient::unserializeInputArguments()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1341, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v2, v3, v4, 1344, 0);
  v1 = _gc_log_psvr2();
  _os_log_internal(&dword_0, v1, OS_LOG_TYPE_ERROR, "Could not unserialize input arguments!");
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1334, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1331, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1328, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::fetchTransportProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 490, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 487, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::fetchAccessoryProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 544, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 541, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::fetchDriverProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 591, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 588, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::fetchTimeSyncProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 688, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 685, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::fetchInputProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 771, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 768, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::getStatusOverrideProperty()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 847, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 844, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::fetchPowerProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 956, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 953, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::fetchTrackingProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1041, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1038, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::fetchHapticsProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1224, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1221, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::applyTransportProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 516, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 513, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::applyAccessoryProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 566, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 563, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::applyDriverProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 632, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 629, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::applyTimeSyncProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 732, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 729, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::applyInputProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 803, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 800, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::setStatusOverrideProperty()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 884, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 881, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::applyPowerProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 988, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 985, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::applyTrackingProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1099, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1096, 0);
}

void PSVR2SenseDeviceHIDEventServerUserClient::applyHapticsProperties()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1258, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 1255, 0);
}

void IOGCCircularDataQueue::initWithEntries(uint64_t a1)
{
  v2 = _gc_log_debug();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "IOGCCircularDataQueue::initWithEntries failed: could not allocate memory (size=%zu).", a1);
}

{
  v2 = _gc_log_debug();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "IOGCCircularDataQueue::initWithEntries failed: size [%zd] too large.", a1);
}

void IOGCCircularDataQueue::enqueue(int a1)
{
  v1 = a1;
  v2 = _gc_log_debug();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "ret == 0 ", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Utility/DataQueue/IOGCCircularDataQueue.cpp", 214, v1);
}

void IOGCCircularDataQueueCursor::read(int a1)
{
  v1 = a1;
  v2 = _gc_log_debug();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "ret == 0 ", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Utility/DataQueue/IOGCCircularDataQueue.cpp", 281, v1);
}

void IOGCCircularDataQueueCursor::access(int a1)
{
  v1 = a1;
  v2 = _gc_log_debug();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "ret == 0 ", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/Utility/DataQueue/IOGCCircularDataQueue.cpp", 294, v1);
}

void PSVR2SenseDeviceFastPathUserClientQueue::init()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 30, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 40, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 32, 0);
}

void PSVR2SenseDeviceFastPathUserClientQueue::start()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 73, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 86, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 79, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 76, 0);
}

void PSVR2SenseDeviceFastPathUserClientQueue::clientMemory()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 133, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 130, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 127, 0);
}

void PSVR2SenseDeviceFastPathUserClientQueue::registerNotificationPort()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 156, 0);
}

void PSVR2SenseDeviceFastPathUserClientInputQueue::start()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 189, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 195, 0);
}

void PSVR2SenseDeviceFastPathUserClientInputQueue::notifyDataAvailable()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 247, 0);
}

void PSVR2SenseDeviceFastPathUserClientTrackingQueue::start()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 282, 0);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v8, v9, v10, 291, v3);
  v5 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v1);
  v7 = IORegistryEntry::getRegistryEntryID(v0);
  _os_log_internal(&dword_0, v5, OS_LOG_TYPE_ERROR, "[%#010llx] openTrackingControl(<PSVR2SenseDevice %#010llx>) denied: %x.", RegistryEntryID, v7, v2);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 288, 0);
}

void PSVR2SenseDeviceFastPathUserClientHapticsQueue::start()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 356, 0);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v8, v9, v10, 368, v3);
  v5 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v1);
  v7 = IORegistryEntry::getRegistryEntryID(v0);
  _os_log_internal(&dword_0, v5, OS_LOG_TYPE_ERROR, "[%#010llx] openHapticsControl(<PSVR2SenseDevice %#010llx>) denied: %x.", RegistryEntryID, v7, v2);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 365, 0);
}

void PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::start()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 428, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 434, 0);
}

void IOHIDGCDevice::start()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 27, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 50, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 33, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 30, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 25, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 22, 0);
}

void IOHIDGCDevice::start(int a1)
{
  v1 = a1;
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v3, v4, v5, 34, v1);
}

void IOHIDGCDevice::_tryOpenProvider()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 298, 0);
}

void IOHIDGCDevice::openProvider()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 358, 0);
}

void IOHIDGCDevice::openProviderInBackground()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 375, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 381, 0);
}

void IOHIDGCDevice::handleInputReport()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 486, 0);
}

void IOHIDGCDevice::getReport()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 512, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 508, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 564, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 570, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 560, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 624, 0);
}

void IOHIDGCDevice::setReport()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 655, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 651, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 706, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 712, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 702, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 765, 0);
}

void IOGCCommandQueue::syncAction()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 151, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 148, 0);
}

void IOGCCommandQueue::asyncAction()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 205, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 214, 0);
}

{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 201, 0);
}

uint64_t IOGCCircularControlQueueMemorySize(unsigned int a1, int a2)
{
  result = 0;
  if (a2)
  {
    v4 = ((2 * a1 + 14) & 0xFFFFFFF0) + 64;
    if (v4 >= a1)
    {
      v5 = 2 * a2 * v4;
      if (v5 > 0xFFFFFFB7)
      {
        return 0;
      }

      else
      {
        return v5 + 72;
      }
    }
  }

  return result;
}

uint64_t _IOGCCircularControlQueueValidateAndAccess(uint64_t a1)
{
  v2 = *a1;
  if (**a1 == *(a1 + 8))
  {
    if (*(v2 + 2) == *(a1 + 16))
    {
      v3 = *(v2 + 3);
      OUTLINED_FUNCTION_1_1();
      if (v7 == *(v6 + 20))
      {
        explicit = atomic_load_explicit((v5 + 16), memory_order_acquire);
        v9 = (v5 + 24 + 24 * (explicit & 1));
        atomic_load_explicit(v9, memory_order_acquire);
        atomic_load_explicit(v9 + 1, memory_order_acquire);
        atomic_load_explicit(v9 + 2, memory_order_acquire);
        if (explicit == atomic_load_explicit((v5 + 16), memory_order_acquire))
        {
          return (*(v4 + 16))(v4, v5);
        }

        else
        {
          return (v1 + 4);
        }
      }

      else
      {
        _gc_log_debug();
        OUTLINED_FUNCTION_0();
        _os_log_internal(&dword_0, v13, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v14, v15, v16, 258, 0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_1();
      _gc_log_debug();
      OUTLINED_FUNCTION_0();
      _os_log_internal(&dword_0, v12, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v14, v15, v16, 257, 0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    _gc_log_debug();
    OUTLINED_FUNCTION_0();
    _os_log_internal(&dword_0, v11, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v14, v15, v16, 256, 0);
  }

  return v1;
}

uint64_t IOGCCircularControlQueueReadNext(uint64_t a1)
{
  v2 = *a1;
  if (**a1 == *(a1 + 8))
  {
    if (*(v2 + 2) == *(a1 + 16))
    {
      v3 = *(v2 + 3);
      OUTLINED_FUNCTION_1_1();
      if (v5 == *(v9 + 20))
      {
        explicit = atomic_load_explicit((v7 + 16), memory_order_acquire);
        v11 = (v7 + 24 + 24 * (explicit & 1));
        v12 = atomic_load_explicit(v11 + 1, memory_order_acquire);
        if (v12 == -1)
        {
          return (v1 + 7);
        }

        else
        {
          v13 = ((2 * v5 + 14) & 0xFFFFFFF0) + 64;
          v14 = v13 * (v12 % ((v8 - 72) / v13));
          v15 = (v7 + 72 + v14);
          if (v14 != v14)
          {
            v15 = ((v7 + 72 + v14) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
          }

          if (v15 + v13 > v7 + v8)
          {
            _gc_log_debug();
            OUTLINED_FUNCTION_0();
            _os_log_internal(&dword_0, v25, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v27, v28, v29, 585, 0);
          }

          else if (*v15 == v6)
          {
            v16 = atomic_load_explicit(v15 + 1, memory_order_acquire) & 1;
            v17 = (8 * v16) & 0xFFFFFFFFFFFFFFEFLL | (16 * v16);
            v18 = v15 + v17 + 16;
            if (v17 != v17)
            {
              v18 = (v15 + v17 + 16) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
            }

            v1 = (v1 + 7);
            if (*(v18 + 8) == explicit && *(v18 + 16) == v12)
            {
              v19 = v16 * ((v5 + 7) & 0xFFFFFFF8);
              v20 = v15 + v19 + 64;
              if (v19 != v19)
              {
                v20 = (v15 + v19 + 64) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
              }

              v1 = 0;
              if ((*(v4 + 16))(v4, v12, v20))
              {
                *v11 = v12;
                atomic_store(v12 + 1, v11 + 1);
              }
            }
          }

          else
          {
            _gc_log_debug();
            OUTLINED_FUNCTION_0();
            _os_log_internal(&dword_0, v26, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v27, v28, v29, 586, 0);
          }
        }
      }

      else
      {
        _gc_log_debug();
        OUTLINED_FUNCTION_0();
        _os_log_internal(&dword_0, v24, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v27, v28, v29, 571, 0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_1();
      _gc_log_debug();
      OUTLINED_FUNCTION_0();
      _os_log_internal(&dword_0, v23, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v27, v28, v29, 570, 0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    _gc_log_debug();
    OUTLINED_FUNCTION_0();
    _os_log_internal(&dword_0, v22, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v27, v28, v29, 569, 0);
  }

  return v1;
}

uint64_t IOGCCircularControlQueueEntryModify(uint64_t a1)
{
  v2 = *a1;
  if (**a1 == *(a1 + 8))
  {
    if (*(v2 + 2) == *(a1 + 16))
    {
      v3 = *(v2 + 3);
      OUTLINED_FUNCTION_1_1();
      if (v6 == *(v10 + 20))
      {
        explicit = atomic_load_explicit((v8 + 16), memory_order_acquire);
        v12 = atomic_load_explicit((v8 + 24 + 24 * (explicit & 1) + 8), memory_order_acquire);
        if (v12 == -1)
        {
          return (v1 + 7);
        }

        else
        {
          v13 = (v6 + 7) & 0xFFFFFFF8;
          v14 = ((v9 - 72) / (2 * v13 + 64)) >> 1;
          if (v12 + v14 <= v4)
          {
            return (v1 + 23);
          }

          else if (v14 + v4 <= v12)
          {
            return (v1 + 22);
          }

          else
          {
            v15 = ((2 * v6 + 14) & 0xFFFFFFF0) + 64;
            v16 = v15 * (v4 % ((v9 - 72) / v15));
            v17 = v16 == v16;
            v18 = (v8 + 72 + v16);
            v19 = (v8 + 72 + v16) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
            if (!v17)
            {
              v18 = v19;
            }

            if (v18 + v15 > v8 + v9)
            {
              _gc_log_debug();
              OUTLINED_FUNCTION_0();
              _os_log_internal(&dword_0, v31, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v33, v34, v35, 664, 0);
            }

            else if (*v18 == v7)
            {
              v20 = atomic_load_explicit(v18 + 1, memory_order_acquire);
              v21 = (8 * (~v20 & 1)) & 0xFFFFFFFFFFFFFFEFLL | (16 * (~v20 & 1));
              v17 = v21 == v21;
              v22 = (v18 + ((8 * ((v20 & 1) == 0)) & 0xEF | (16 * ((v20 & 1) == 0))) + 16);
              v23 = (v18 + v21 + 16) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
              if (!v17)
              {
                v22 = v23;
              }

              v24 = v18 + 8;
              v25 = ((v20 & 1) == 0) * v13;
              v26 = v24 + v25;
              if (v25 != v25)
              {
                v26 = (v24 + v25) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
              }

              *v22 = v20;
              v22[1] = explicit;
              v22[2] = v4;
              (*(v5 + 16))(v5, v26, v6);
              return 0;
            }

            else
            {
              _gc_log_debug();
              OUTLINED_FUNCTION_0();
              _os_log_internal(&dword_0, v32, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v33, v34, v35, 665, 0);
            }
          }
        }
      }

      else
      {
        _gc_log_debug();
        OUTLINED_FUNCTION_0();
        _os_log_internal(&dword_0, v30, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v33, v34, v35, 635, 0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_1();
      _gc_log_debug();
      OUTLINED_FUNCTION_0();
      _os_log_internal(&dword_0, v29, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v33, v34, v35, 634, 0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    _gc_log_debug();
    OUTLINED_FUNCTION_0();
    _os_log_internal(&dword_0, v28, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v33, v34, v35, 633, 0);
  }

  return v1;
}

uint64_t IOGCCircularControlQueueEntryCommitModifications(uint64_t a1)
{
  v2 = *a1;
  if (**a1 != *(a1 + 8))
  {
    OUTLINED_FUNCTION_1_1();
    _gc_log_debug();
    OUTLINED_FUNCTION_0();
    _os_log_internal(&dword_0, v27, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v32, v33, v34, 699, 0);
    return v1;
  }

  if (*(v2 + 2) != *(a1 + 16))
  {
    OUTLINED_FUNCTION_1_1();
    _gc_log_debug();
    OUTLINED_FUNCTION_0();
    _os_log_internal(&dword_0, v28, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v32, v33, v34, 700, 0);
    return v1;
  }

  v3 = *(v2 + 3);
  OUTLINED_FUNCTION_1_1();
  if (v8 != *(v9 + 20))
  {
    _gc_log_debug();
    OUTLINED_FUNCTION_0();
    _os_log_internal(&dword_0, v29, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v32, v33, v34, 701, 0);
    return v1;
  }

  explicit = atomic_load_explicit((v6 + 16), memory_order_acquire);
  v11 = v6 + 24 + 24 * (explicit & 1);
  v12 = atomic_load_explicit((v11 + 8), memory_order_acquire);
  v13 = (v11 + 16);
  v14 = atomic_load_explicit(v13, memory_order_acquire);
  if (v12 == -1)
  {
    return (v1 + 7);
  }

  v15 = ((2 * v8 + 14) & 0xFFFFFFF0) + 64;
  v16 = (v7 - 72) / v15;
  v17 = v16 >> 1;
  if (v12 + v17 <= v4)
  {
    return (v1 + 23);
  }

  if (v17 + v4 <= v12)
  {
    return (v1 + 22);
  }

  v18 = v15 * (v4 % v16);
  v19 = (v6 + 72 + v18);
  if (v18 != v18)
  {
    v19 = ((v6 + 72 + v18) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  if (v19 + v15 > v6 + v7)
  {
    _gc_log_debug();
    OUTLINED_FUNCTION_0();
    _os_log_internal(&dword_0, v30, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v32, v33, v34, 731, 0);
    return v1;
  }

  if (*v19 != v5)
  {
    _gc_log_debug();
    OUTLINED_FUNCTION_0();
    _os_log_internal(&dword_0, v31, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v32, v33, v34, 732, 0);
    return v1;
  }

  v20 = v19 + 1;
  v21 = atomic_load_explicit(v19 + 1, memory_order_acquire) + 1;
  v22 = v19 + 2;
  v23 = (8 * (v21 & 1)) & 0xEF | (16 * (v21 & 1));
  v24 = v22 + v23;
  if (v23 != v23)
  {
    v24 = (v22 + v23) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  if (*(v24 + 8) != explicit)
  {
    return (v1 + 26);
  }

  if (*(v24 + 16) != v4)
  {
    return (v1 + 7);
  }

  atomic_store(v21, v20);
  v1 = 0;
  if (v14 == -1 || v14 < v4)
  {
    atomic_store(v4, v13);
  }

  return v1;
}

uint64_t IOGCCircularControlQueueEntryResetModifications(uint64_t a1)
{
  v2 = *a1;
  if (**a1 == *(a1 + 8))
  {
    if (*(v2 + 2) == *(a1 + 16))
    {
      v3 = *(v2 + 3);
      OUTLINED_FUNCTION_1_1();
      if (v5 == *(v9 + 20))
      {
        explicit = atomic_load_explicit((v7 + 24 + 24 * (atomic_load_explicit((v7 + 16), memory_order_acquire) & 1) + 8), memory_order_acquire);
        if (explicit == -1)
        {
          return (v1 + 7);
        }

        else
        {
          v11 = (v5 + 7) & 0xFFFFFFF8;
          v12 = ((v8 - 72) / (2 * v11 + 64)) >> 1;
          if (explicit + v12 <= v4)
          {
            return (v1 + 23);
          }

          else if (v12 + v4 <= explicit)
          {
            return (v1 + 22);
          }

          else
          {
            v13 = ((2 * v5 + 14) & 0xFFFFFFF0) + 64;
            v14 = v13 * (v4 % ((v8 - 72) / v13));
            v15 = (v7 + 72 + v14);
            if (v14 != v14)
            {
              v15 = ((v7 + 72 + v14) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
            }

            if (v15 + v13 > v7 + v8)
            {
              _gc_log_debug();
              OUTLINED_FUNCTION_0();
              _os_log_internal(&dword_0, v31, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v33, v34, v35, 802, 0);
            }

            else if (*v15 == v6)
            {
              v16 = atomic_load_explicit(v15 + 1, memory_order_acquire);
              v17 = v15 + 8;
              v18 = !(v16 & 1) * v11;
              v19 = v15 + v18 + 64;
              if (v18 != v18)
              {
                v19 = ((v15 + v18 + 64) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
              }

              v20 = (v16 & 1) * v11;
              v21 = v17 + v20;
              if (v20 != v20)
              {
                v21 = ((v17 + v20) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
              }

              v22 = v15 + 2;
              v23 = (8 * !(v16 & 1)) | (16 * !(v16 & 1));
              v24 = v15 + v23 + 16;
              if (v23 != v23)
              {
                v24 = (v15 + v23 + 16) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
              }

              v25 = (8 * (v16 & 1)) & 0xEF | (16 * (v16 & 1));
              v26 = v22 + v25;
              if (v25 != v25)
              {
                v26 = (v22 + v25) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
              }

              memmove(v19, v21, v5);
              v1 = 0;
              *v24 = *v26;
              *(v24 + 16) = *(v26 + 16);
            }

            else
            {
              _gc_log_debug();
              OUTLINED_FUNCTION_0();
              _os_log_internal(&dword_0, v32, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v33, v34, v35, 803, 0);
            }
          }
        }
      }

      else
      {
        _gc_log_debug();
        OUTLINED_FUNCTION_0();
        _os_log_internal(&dword_0, v30, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v33, v34, v35, 773, 0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_1();
      _gc_log_debug();
      OUTLINED_FUNCTION_0();
      _os_log_internal(&dword_0, v29, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v33, v34, v35, 772, 0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    _gc_log_debug();
    OUTLINED_FUNCTION_0();
    _os_log_internal(&dword_0, v28, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v33, v34, v35, 771, 0);
  }

  return v1;
}

void IOGCCircularControlQueueInit_cold_1()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 148, 0);
}

void IOGCCircularControlQueueInit_cold_2()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 149, 0);
}

void IOGCCircularControlQueueInit_cold_3()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 150, 0);
}

void IOGCCircularControlQueueReset_cold_1()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 170, 0);
}

void IOGCCircularControlQueueGetNextApplyPosition_cold_1()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 195, 0);
}

void IOGCCircularControlQueueGetLastAppliedPosition_cold_1()
{
  _gc_log_debug();
  OUTLINED_FUNCTION_0();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v1, v2, v3, 216, 0);
}

void IOGCResource::start()
{
  v0 = _gc_log_debug();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "IOService::start(provider)", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/IOGCResource.cpp", 31, 0);
}

{
  v0 = _gc_log_debug();
  _os_log_internal(&dword_0, v0, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "_workLoop", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/IOGameControllerFamily/IOGCResource.cpp", 34, 0);
}

uint64_t IOCircularDataQueueInitFixed(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  if (HIDWORD(a3))
  {
    return 3758097090;
  }

  result = 0;
  *a2 = a5;
  *a1 = a5;
  *(a2 + 8) = a3;
  *(a2 + 12) = a4;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  atomic_store(1uLL, (a1 + 16));
  atomic_store(1uLL, (a1 + 24));
  atomic_store(0, (a1 + 32));
  atomic_store(0xFFFFFFFFFFFFFFFFLL, (a1 + 40));
  atomic_store(0xFFFFFFFFFFFFFFFFLL, (a1 + 48));
  atomic_store(0xFFFFFFFFFFFFFFFFLL, (a1 + 56));
  return result;
}

uint64_t IOCircularDataQueueGetStartingPosition(uint64_t a1, void *a2)
{
  result = 3758097095;
  if (*(a1 + 12))
  {
    v4 = *(a1 + 40);
    if (v4 == -1)
    {
      return OUTLINED_FUNCTION_0_1(-536870201);
    }

    else
    {
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t IOCircularDataQueueGetLatestPosition(uint64_t a1, unint64_t *a2)
{
  result = 3758097095;
  if (*(a1 + 12))
  {
    explicit = atomic_load_explicit((a1 + 48), memory_order_acquire);
    if (explicit == -1)
    {
      return OUTLINED_FUNCTION_0_1(-536870201);
    }

    else
    {
      result = 0;
      *a2 = explicit;
    }
  }

  return result;
}

uint64_t IOCircularDataQueueReset(uint64_t a1, unint64_t a2)
{
  result = 3758097109;
  if (a2 == -1)
  {
    return 3758097090;
  }

  explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
  v5 = (a1 + 24);
  if (explicit == atomic_load_explicit((a1 + 24), memory_order_acquire))
  {
    v6 = explicit;
    atomic_compare_exchange_strong(v5, &v6, explicit + 1);
    if (v6 == explicit)
    {
      if (atomic_load_explicit((a1 + 32), memory_order_acquire) < 1)
      {
        if (*(a1 + 12))
        {
          result = 0;
          atomic_store(a2, (a1 + 40));
          atomic_store(0xFFFFFFFFFFFFFFFFLL, (a1 + 48));
          atomic_store(a2, (a1 + 56));
        }

        else
        {
          result = 3758097095;
        }

        atomic_store(explicit + 1, (a1 + 16));
      }

      else
      {
        atomic_store(explicit, v5);
      }
    }
  }

  return result;
}

uint64_t IOCircularDataQueueEnqueueCopy(uint64_t a1, uint64_t a2, void *__src, size_t __len)
{
  result = 3758097090;
  v6 = *(a1 + 8);
  if (v6 != *(a2 + 8))
  {
    return 3758097105;
  }

  v7 = *(a1 + 12);
  if (v7 != *(a2 + 12))
  {
    return 3758097105;
  }

  if (__len <= 0xFFFFFFC7)
  {
    atomic_fetch_add((a1 + 32), 1uLL);
    explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
    if (explicit == atomic_load_explicit((a1 + 24), memory_order_acquire))
    {
      if (v7)
      {
        v9 = 3758097090;
        if (v7 >= __len)
        {
          v10 = atomic_load_explicit((a1 + 40), memory_order_acquire);
          v11 = atomic_load_explicit((a1 + 56), memory_order_acquire);
          if (v11 == -1)
          {
            v9 = 3758097112;
            goto LABEL_30;
          }

          v12 = (v7 + 63) & 0x1FFFFFFF8;
          v13 = (v6 - 64) / v12;
          v14 = v11 % v13 * v12;
          v9 = 3758097097;
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_30;
          }

          v15 = a1 + 64;
          v16 = a1 + 64 + v14;
          if (v14 != v14)
          {
            v16 = (a1 + 64 + v14) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
          }

          if (v16 >= a1 + v6)
          {
            goto LABEL_30;
          }

          v17 = v11;
          atomic_compare_exchange_strong((a1 + 56), &v17, v11 + 1);
          if (v17 == v11)
          {
            v18 = (v16 + 32);
            atomic_store(0xFFFFFFFFFFFFFFFFLL, (v16 + 32));
            atomic_store(v11, (v16 + 40));
            *v16 = *a1;
            atomic_store(explicit, (v16 + 8));
            if (v11 <= v10)
            {
              v19 = -1;
            }

            else
            {
              v19 = v11 - 1;
            }

            atomic_store(v19, (v16 + 16));
            atomic_store(0xFFFFFFFFFFFFFFFFLL, (v16 + 24));
            *(v16 + 48) = __len;
            memmove((v16 + 56), __src, __len);
            atomic_store(v11, v18);
            if (v11 > v10)
            {
              v20 = (v11 - 1) % v13 * v12;
              v21 = v15 + v20;
              if (v20 != v20)
              {
                v21 = (v15 + v20) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
              }

              atomic_store(v11, (v21 + 24));
            }

            v22 = (a1 + 48);
            do
            {
              v23 = atomic_load_explicit(v22, memory_order_acquire);
              if (v23 != -1 && v17 <= v23)
              {
                break;
              }

              v25 = v23;
              atomic_compare_exchange_strong(v22, &v25, v17);
            }

            while (v25 != v23);
            v9 = 0;
            goto LABEL_30;
          }

          goto LABEL_29;
        }
      }

      else
      {
        v9 = 3758097095;
      }

LABEL_30:
      atomic_fetch_add((a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
      return v9;
    }

LABEL_29:
    v9 = 3758097109;
    goto LABEL_30;
  }

  return result;
}

uint64_t IOCircularDataQueueCursorReset(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  result = 3758097095;
  if (*(a1 + 12))
  {
    explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
    v6 = atomic_load_explicit((a1 + 40), memory_order_acquire);
    v7 = atomic_load_explicit((a1 + 48), memory_order_acquire);
    if (v7 == -1)
    {
      return OUTLINED_FUNCTION_0_1(-536870201);
    }

    else if (v6 > a3)
    {
      return 3758097127;
    }

    else if (v7 < a3)
    {
      return 3758097128;
    }

    else
    {
      result = 0;
      *a2 = explicit;
      a2[1] = a3;
    }
  }

  return result;
}

uint64_t IOCircularDataQueueCursorResetLatest(uint64_t a1, unint64_t *a2)
{
  result = 3758097095;
  explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
  if (*(a1 + 12))
  {
    v5 = atomic_load_explicit((a1 + 48), memory_order_acquire);
    if (v5 == -1)
    {
      return OUTLINED_FUNCTION_0_1(-536870201);
    }

    else
    {
      result = 0;
      *a2 = explicit;
      a2[1] = v5;
    }
  }

  return result;
}

uint64_t IOCircularDataQueueCursorMovePrevious(uint64_t a1, void *a2, BOOL *a3)
{
  result = 3758097095;
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
  v8 = atomic_load_explicit((a1 + 40), memory_order_acquire);
  v9 = atomic_load_explicit((a1 + 48), memory_order_acquire);
  if (*a2 != explicit)
  {
    return 3758097131;
  }

  if (v6)
  {
    if (v9 == -1)
    {
      return OUTLINED_FUNCTION_0_1(-536870201);
    }

    else
    {
      v10 = a2[1];
      if (v10 <= v8)
      {
        return 3758097127;
      }

      else
      {
        a2[1] = v10 - 1;
        result = 0;
        if (a3)
        {
          *a3 = v9 - (v5 - 64) / ((v6 + 63) & 0x1FFFFFFF8uLL) >= v10 - 1;
        }
      }
    }
  }

  return result;
}

uint64_t IOCircularDataQueueCursorMoveNext(uint64_t a1, void *a2, BOOL *a3)
{
  result = 3758097095;
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
  v8 = atomic_load_explicit((a1 + 48), memory_order_acquire);
  if (*a2 != explicit)
  {
    return 3758097131;
  }

  if (v6)
  {
    if (v8 == -1)
    {
      return OUTLINED_FUNCTION_0_1(-536870201);
    }

    else
    {
      v9 = a2[1];
      if (v9 >= v8)
      {
        return 3758097128;
      }

      else
      {
        a2[1] = v9 + 1;
        result = 0;
        if (a3)
        {
          *a3 = v8 - (v5 - 64) / ((v6 + 63) & 0x1FFFFFFF8uLL) > v9;
        }
      }
    }
  }

  return result;
}

uint64_t IOCircularDataQueueCursorAccess(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
  v6 = atomic_load_explicit((a1 + 48), memory_order_acquire);
  if (*a2 != explicit)
  {
    return 3758097131;
  }

  v7 = a2[1];
  if (v7 > v6)
  {
    return 3758097128;
  }

  if (!v3)
  {
    return 3758097095;
  }

  v9 = v7 % ((v4 - 64) / ((v3 + 63) & 0x1FFFFFFF8uLL)) * ((v3 + 63) & 0x1FFFFFFF8);
  result = 3758097097;
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = a1 + 64 + v9;
    if (v9 != v9)
    {
      v11 = (a1 + 64 + v9) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
    }

    if (v11 < a1 + v4)
    {
      if (*v11 != *a1)
      {
        return 3758097105;
      }

      if (atomic_load_explicit((v11 + 8), memory_order_acquire) == explicit)
      {
        v12 = (v11 + 32);
        v13 = atomic_load_explicit((v11 + 32), memory_order_acquire);
        v14 = (v11 + 40);
        if (v13 != atomic_load_explicit((v11 + 40), memory_order_acquire))
        {
          return 3758097127;
        }

        result = 3758097127;
        if (v13 == a2[1])
        {
          (*(a3 + 16))(a3, v11 + 56, *(v11 + 48));
          v15 = atomic_load_explicit(v12, memory_order_acquire);
          if (atomic_load_explicit(v14, memory_order_acquire) == v13 && v15 == v13)
          {
            return 0;
          }

          else
          {
            return 3758097127;
          }
        }

        return result;
      }

      return 3758097131;
    }
  }

  return result;
}