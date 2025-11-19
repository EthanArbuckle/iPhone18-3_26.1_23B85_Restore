id VirtualControllerBundle()
{
  if (VirtualControllerBundle_onceToken != -1)
  {
    VirtualControllerBundle_cold_1();
  }

  v1 = VirtualControllerBundle_Bundle;

  return v1;
}

id GCVirtualControllerBlurEffectView()
{
  v0 = [UIVisualEffectView alloc];
  v1 = [UIBlurEffect effectWithStyle:17];
  v2 = [v0 initWithEffect:v1];

  [v2 _setGroupName:@"GCVirtualControllerBlurEffectView"];

  return v2;
}

id GCVirtualControllerSaturationVibrancyEffectView()
{
  v0 = [UIVisualEffectView alloc];
  v1 = GCVirtualControllerSaturationVibrancyEffect();
  v2 = [v0 initWithEffect:v1];

  [v2 _setGroupName:@"GCVirtualControllerSaturationVibrancyEffectView"];

  return v2;
}

id GCVirtualControllerSaturationVibrancyEffect()
{
  if (GCVirtualControllerSaturationVibrancyEffect_onceToken != -1)
  {
    GCVirtualControllerSaturationVibrancyEffect_cold_1();
  }

  v1 = GCVirtualControllerSaturationVibrancyEffect_sharedEffect;

  return v1;
}

id GCVirtualControllerAdditiveVibrancyEffectView()
{
  if (GCVirtualControllerAdditiveVibrancyEffectView_onceToken != -1)
  {
    GCVirtualControllerAdditiveVibrancyEffectView_cold_1();
  }

  v0 = [UIVisualEffectView alloc];
  v1 = [v0 initWithEffect:GCVirtualControllerAdditiveVibrancyEffectView_sharedEffect];

  return v1;
}

CGImageRef GCVirtualControllerCreateAlphaMaskImage(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 CGImage];
  Width = CGImageGetWidth(v4);
  Height = CGImageGetHeight(v4);
  BitsPerPixel = CGImageGetBitsPerPixel(v4);
  BytesPerRow = CGImageGetBytesPerRow(v4);
  DataProvider = CGImageGetDataProvider(v4);
  v10 = CGDataProviderCopyData(DataProvider);
  BytePtr = CFDataGetBytePtr(v10);
  Length = CFDataGetLength(v10);
  v13 = malloc_type_malloc(Height * Width, 0x8B9F0F32uLL);
  v14 = v13;
  if (Height)
  {
    v15 = 0;
    v16 = 0;
    v17 = v13;
    do
    {
      v18 = v17;
      v19 = v15;
      for (i = Width; i; --i)
      {
        if (v19 >= Length)
        {
          GCVirtualControllerCreateAlphaMaskImage_cold_1();
        }

        *v18++ = BytePtr[v19 + 3] ^ (a2 << 31 >> 31);
        v19 += BitsPerPixel >> 3;
      }

      ++v16;
      v15 += BytesPerRow;
      v17 += Width;
    }

    while (v16 != Height);
  }

  CFRelease(v10);
  v21 = CGBitmapContextCreate(v14, Width, Height, 8uLL, Width, 0, 7u);
  Image = CGBitmapContextCreateImage(v21);
  CGContextRelease(v21);
  free(v14);

  return Image;
}

id _gc_log_virtualcontroller()
{
  if (_gc_log_virtualcontroller_onceToken != -1)
  {
    _gc_log_virtualcontroller_cold_1();
  }

  v1 = _gc_log_virtualcontroller_Log;

  return v1;
}

void ___gc_log_virtualcontroller_block_invoke(id a1)
{
  _gc_log_virtualcontroller_Log = os_log_create("com.apple.gamecontroller", "VirtualController");

  _objc_release_x1();
}

void GCAnalyticsSendVirtualControllerConnectedEvent(void *a1, void *a2, char a3)
{
  v5 = a1;
  if (v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3254779904;
    v6[2] = __GCAnalyticsSendVirtualControllerConnectedEvent_block_invoke;
    v6[3] = &__block_descriptor_48_e8_32n11_8_8_s0_t8w1_e30___NSObject_OS_xpc_object__8__0l;
    v7 = a2;
    v8 = a3;
    [v5 sendEvent:@"com.apple.GameController.VirtualController.connected" withXPCPayloadBuilder:v6];
  }
}

xpc_object_t __GCAnalyticsSendVirtualControllerConnectedEvent_block_invoke(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[NSProcessInfo processInfo];
    v5 = [v6 processName];
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) containsObject:GCInputLeftThumbstick];
  v9 = [*(a1 + 32) containsObject:GCInputRightThumbstick];
  v10 = [*(a1 + 32) containsObject:GCInputDirectionPad];
  if ([*(a1 + 32) containsObject:GCInputLeftShoulder])
  {
    v11 = 1;
  }

  else
  {
    v11 = [*(a1 + 32) containsObject:GCInputRightShoulder];
  }

  if ([*(a1 + 32) containsObject:GCInputLeftTrigger])
  {
    v12 = 1;
  }

  else
  {
    v12 = [*(a1 + 32) containsObject:GCInputRightTrigger];
  }

  *keys = *off_10650;
  v18 = *off_10660;
  v19 = *off_10670;
  v16[0] = xpc_BOOL_create(v7);
  v16[1] = xpc_BOOL_create(v8);
  v16[2] = xpc_BOOL_create(v9);
  v16[3] = xpc_BOOL_create(v10);
  v16[4] = xpc_BOOL_create(v11);
  v16[5] = xpc_BOOL_create(v12);
  v13 = xpc_dictionary_create(keys, v16, 6uLL);
  if (v13)
  {
    __GCAnalyticsSendVirtualControllerConnectedEvent_block_invoke_cold_1(v5, v13);
  }

  for (i = 5; i != -1; --i)
  {
  }

  return v13;
}

void sub_4E18(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

id __copy_helper_block_e8_32n11_8_8_s0_t8w1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

void sub_72C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64((&a41 + i));
  }

  _Unwind_Resume(a1);
}

void __destructor_8_s0_s48_s56_s64(uint64_t a1)
{
  v2 = *(a1 + 64);
}

id __GCAnalyticsSendVirtualControllerConnectedEvent_block_invoke_cold_1(void *a1, void *a2)
{
  v2 = [a1 UTF8String];
  if (v2)
  {
    xpc_dictionary_set_string(a2, "bundleID", v2);
  }

  return a2;
}