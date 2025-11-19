id BKLogMotionEvents()
{
  if (BKLogMotionEvents_onceToken != -1)
  {
    dispatch_once(&BKLogMotionEvents_onceToken, &__block_literal_global_33);
  }

  v1 = BKLogMotionEvents___logObj;

  return v1;
}

id BKLogHID()
{
  if (BKLogHID_onceToken != -1)
  {
    dispatch_once(&BKLogHID_onceToken, &__block_literal_global_15);
  }

  v1 = BKLogHID___logObj;

  return v1;
}

id BKLogBootUI()
{
  if (BKLogBootUI_onceToken != -1)
  {
    dispatch_once(&BKLogBootUI_onceToken, &__block_literal_global_225);
  }

  v1 = BKLogBootUI___logObj;

  return v1;
}

uint64_t __BKLogBootUI_block_invoke()
{
  BKLogBootUI___logObj = os_log_create(*MEMORY[0x277CF0540], "BootUI");

  return MEMORY[0x2821F96F8]();
}

id BKLogButton()
{
  if (BKLogButton_onceToken != -1)
  {
    dispatch_once(&BKLogButton_onceToken, &__block_literal_global_3);
  }

  v1 = BKLogButton___logObj;

  return v1;
}

uint64_t __BKLogButton_block_invoke()
{
  BKLogButton___logObj = os_log_create(*MEMORY[0x277CF0540], "Button");

  return MEMORY[0x2821F96F8]();
}

id BKLogDisplayAnnotations()
{
  if (BKLogDisplayAnnotations_onceToken != -1)
  {
    dispatch_once(&BKLogDisplayAnnotations_onceToken, &__block_literal_global_6);
  }

  v1 = BKLogDisplayAnnotations___logObj;

  return v1;
}

uint64_t __BKLogDisplayAnnotations_block_invoke()
{
  BKLogDisplayAnnotations___logObj = os_log_create(*MEMORY[0x277CF0540], "DisplayAnnotations");

  return MEMORY[0x2821F96F8]();
}

id BKLogDisplayMonitor()
{
  if (BKLogDisplayMonitor_onceToken != -1)
  {
    dispatch_once(&BKLogDisplayMonitor_onceToken, &__block_literal_global_9);
  }

  v1 = BKLogDisplayMonitor___logObj;

  return v1;
}

uint64_t __BKLogDisplayMonitor_block_invoke()
{
  BKLogDisplayMonitor___logObj = os_log_create(*MEMORY[0x277CF0540], "DisplayMonitor");

  return MEMORY[0x2821F96F8]();
}

id BKLogGenericGesture()
{
  if (BKLogGenericGesture_onceToken != -1)
  {
    dispatch_once(&BKLogGenericGesture_onceToken, &__block_literal_global_12);
  }

  v1 = BKLogGenericGesture___logObj;

  return v1;
}

uint64_t __BKLogGenericGesture_block_invoke()
{
  BKLogGenericGesture___logObj = os_log_create(*MEMORY[0x277CF0540], "GenericGesture");

  return MEMORY[0x2821F96F8]();
}

uint64_t __BKLogHID_block_invoke()
{
  BKLogHID___logObj = os_log_create(*MEMORY[0x277CF0540], "HID");

  return MEMORY[0x2821F96F8]();
}

id BKLogIdleTimer()
{
  if (BKLogIdleTimer_onceToken != -1)
  {
    dispatch_once(&BKLogIdleTimer_onceToken, &__block_literal_global_18);
  }

  v1 = BKLogIdleTimer___logObj;

  return v1;
}

uint64_t __BKLogIdleTimer_block_invoke()
{
  BKLogIdleTimer___logObj = os_log_create(*MEMORY[0x277CF0540], "IdleTimer");

  return MEMORY[0x2821F96F8]();
}

id BKLogRenderOverlay()
{
  if (BKLogRenderOverlay_onceToken != -1)
  {
    dispatch_once(&BKLogRenderOverlay_onceToken, &__block_literal_global_21);
  }

  v1 = BKLogRenderOverlay___logObj;

  return v1;
}

uint64_t __BKLogRenderOverlay_block_invoke()
{
  BKLogRenderOverlay___logObj = os_log_create(*MEMORY[0x277CF0540], "RenderOverlay");

  return MEMORY[0x2821F96F8]();
}

id BKLogHapticFeedback()
{
  if (BKLogHapticFeedback_onceToken != -1)
  {
    dispatch_once(&BKLogHapticFeedback_onceToken, &__block_literal_global_24);
  }

  v1 = BKLogHapticFeedback___logObj;

  return v1;
}

uint64_t __BKLogHapticFeedback_block_invoke()
{
  BKLogHapticFeedback___logObj = os_log_create(*MEMORY[0x277CF0540], "HapticFeedback");

  return MEMORY[0x2821F96F8]();
}

id BKLogAccelerometer()
{
  if (BKLogAccelerometer_onceToken != -1)
  {
    dispatch_once(&BKLogAccelerometer_onceToken, &__block_literal_global_27);
  }

  v1 = BKLogAccelerometer___logObj;

  return v1;
}

uint64_t __BKLogAccelerometer_block_invoke()
{
  BKLogAccelerometer___logObj = os_log_create(*MEMORY[0x277CF0540], "Accelerometer");

  return MEMORY[0x2821F96F8]();
}

id BKLogKeyPresses()
{
  if (BKLogKeyPresses_onceToken != -1)
  {
    dispatch_once(&BKLogKeyPresses_onceToken, &__block_literal_global_30);
  }

  v1 = BKLogKeyPresses___logObj;

  return v1;
}

uint64_t __BKLogKeyPresses_block_invoke()
{
  BKLogKeyPresses___logObj = os_log_create(*MEMORY[0x277CF0540], "KeyPresses");

  return MEMORY[0x2821F96F8]();
}

uint64_t __BKLogMotionEvents_block_invoke()
{
  BKLogMotionEvents___logObj = os_log_create(*MEMORY[0x277CF0540], "MotionEvents");

  return MEMORY[0x2821F96F8]();
}

id BKLogSendHIDEvent()
{
  if (BKLogSendHIDEvent_onceToken != -1)
  {
    dispatch_once(&BKLogSendHIDEvent_onceToken, &__block_literal_global_36);
  }

  v1 = BKLogSendHIDEvent___logObj;

  return v1;
}

uint64_t __BKLogSendHIDEvent_block_invoke()
{
  BKLogSendHIDEvent___logObj = os_log_create(*MEMORY[0x277CF0540], "SendHIDEvent");

  return MEMORY[0x2821F96F8]();
}