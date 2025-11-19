id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_4548 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _userIsWheelchairUserWithVoiceOverOn()
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = ___userIsWheelchairUserWithVoiceOverOn_block_invoke_2;
    v4[3] = &unk_4280;
    v5 = &__block_literal_global_314;
    v6 = &v7;
    if (_userIsWheelchairUserWithVoiceOverOn_onceToken != -1)
    {
      dispatch_once(&_userIsWheelchairUserWithVoiceOverOn_onceToken, v4);
    }

    if ((v8[3] & 1) == 0)
    {
      v0 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = ___userIsWheelchairUserWithVoiceOverOn_block_invoke_3;
      block[3] = &unk_42A8;
      v3 = &__block_literal_global_314;
      dispatch_async(v0, block);
    }

    _Block_object_dispose(&v7, 8);
  }

  return _userIsWheelchairUserWithVoiceOverOn___isWheelchair;
}

void ___userIsWheelchairUserWithVoiceOverOn_block_invoke(id a1)
{
  v1 = objc_alloc_init(HKHealthStore);
  v4 = 0;
  v2 = [v1 wheelchairUseWithError:&v4];
  v3 = v2;
  if (!v4)
  {
    _userIsWheelchairUserWithVoiceOverOn___isWheelchair = [v2 wheelchairUse] == &dword_0 + 2;
  }
}

uint64_t ___userIsWheelchairUserWithVoiceOverOn_block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}