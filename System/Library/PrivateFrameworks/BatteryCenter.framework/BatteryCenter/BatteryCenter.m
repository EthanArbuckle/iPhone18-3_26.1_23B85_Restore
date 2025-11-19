void BCRegisterUserNotificationsLogging()
{
  if (BCRegisterUserNotificationsLogging_onceToken != -1)
  {
    BCRegisterUserNotificationsLogging_cold_1();
  }
}

uint64_t __BCRegisterUserNotificationsLogging_block_invoke()
{
  v0 = os_log_create(BCLogSubsystem, "Controller");
  v1 = BCLogDeviceController;
  BCLogDeviceController = v0;

  v2 = os_log_create(BCLogSubsystem, "PowerSourceController");
  v3 = BCLogPowerSourceController;
  BCLogPowerSourceController = v2;

  BCLogWidget = os_log_create(BCLogSubsystem, "Widget");

  return MEMORY[0x2821F96F8]();
}

id BCStringFromParts(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x277CCAB68] string];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __BCStringFromParts_block_invoke;
    v7[3] = &unk_278D05D20;
    v3 = v2;
    v8 = v3;
    v4 = MEMORY[0x245CF6EF0](v7);
    v5 = v4;
    if (v1)
    {
      (*(v4 + 16))(v4, v3, @"left");
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    (v5)[2](v5, v3, @"right");
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
LABEL_7:
        v1 = v3;

        goto LABEL_8;
      }

LABEL_6:
      (v5)[2](v5, v3, @"single");
      goto LABEL_7;
    }

LABEL_13:
    (v5)[2](v5, v3, @"case");
    if ((v1 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:

  return v1;
}

void sub_241AC2AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void __BCStringFromParts_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:@"-"];
  }

  [*(a1 + 32) appendString:v4];
}