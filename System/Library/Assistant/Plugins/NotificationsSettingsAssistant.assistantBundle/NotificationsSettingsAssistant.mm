void sub_C90(uint64_t a1, uint64_t a2)
{
  if ((a2 + 1) <= 3)
  {
    [*(a1 + 32) setValue:(8u >> ((a2 + 1) & 0xF)) & 1];
  }

  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) dictionary];
  (*(v3 + 16))(v3, v4);
}

void sub_1078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10B8(uint64_t a1, uint64_t a2)
{
  if (a2 > 0)
  {
    if (a2 == 1)
    {
      if ([*(a1 + 40) value])
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_14;
      }

      if (![*(a1 + 40) value])
      {
        goto LABEL_11;
      }
    }

    v3 = [SACommandFailed alloc];
    v4 = [v3 initWithErrorCode:SASettingValueUnchangedErrorCode];
LABEL_13:
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v4;

    goto LABEL_14;
  }

  if (a2 == -1)
  {
    v5 = SACommandFailed;
LABEL_12:
    v4 = objc_alloc_init(v5);
    goto LABEL_13;
  }

  if (!a2)
  {
LABEL_11:
    [*(a1 + 32) setEffectiveGlobalSpokenNotificationSetting:*(a1 + 64)];
    v5 = SACommandSucceeded;
    goto LABEL_12;
  }

LABEL_14:
  v8 = *(a1 + 48);
  v9 = [*(*(*(a1 + 56) + 8) + 40) dictionary];
  (*(v8 + 16))(v8, v9);
}