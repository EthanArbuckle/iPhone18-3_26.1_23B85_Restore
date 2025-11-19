uint64_t TPSSIMPasscodeLog()
{
  if (qword_D530 != -1)
  {
    sub_3EF0();
  }

  return qword_D528;
}

id TPSPasscodeStringForRemainingSIMPINAttempts(void *a1, int a2, int a3)
{
  v5 = a1;
  if (v5)
  {
    v6 = objc_alloc_init(NSNumberFormatter);
    v7 = [v6 stringFromNumber:v5];
  }

  else
  {
    v7 = @"?";
  }

  if ([v5 integerValue] == &dword_0 + 1)
  {
    v8 = @"%@_SIM_ATTEMPT_REMAINING";
  }

  else
  {
    v8 = @"%@_SIM_ATTEMPTS_REMAINING";
  }

  v9 = [TPSSIMPasscodeLocalizedString localizedStringForKey:v8];
  v10 = [NSString stringWithFormat:v9, v7];

  v11 = @"ENTER_PASSWORD_FOR_UNLOCK_%@";
  if (a2)
  {
    v11 = @"ENTER_PASSWORD_FOR_LOCK_%@";
  }

  v12 = @"COULD_NOT_LOCK_REASON_%@";
  if (!a2)
  {
    v12 = @"COULD_NOT_UNLOCK_REASON_%@";
  }

  if (a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = [TPSSIMPasscodeLocalizedString localizedStringForKey:v13];
  v15 = [NSString stringWithFormat:v14, v10];

  return v15;
}