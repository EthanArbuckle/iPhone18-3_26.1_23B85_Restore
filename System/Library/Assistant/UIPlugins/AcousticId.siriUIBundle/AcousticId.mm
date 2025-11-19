void sub_26F8(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_27A8;
  block[3] = &unk_8270;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void *sub_27A8(void *result)
{
  if (result[4])
  {
    v1 = result;
    result = result[5];
    if (result[1] == v1[6])
    {
      return [result _updateAttributionButton:result[3] withImage:?];
    }
  }

  return result;
}

id sub_35B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 40) setPlayButtonState:1];
  }

  else
  {
    return [*(a1 + 32) play];
  }
}

id SiriAcousticIdLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.assistant.AcousticId"];
  v3 = [v2 siriUILocalizedStringForKey:v1];

  return v3;
}