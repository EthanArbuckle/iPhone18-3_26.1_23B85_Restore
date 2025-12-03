@interface InterAppAudioGroup
+ (id)sharedInstance;
- (id)getApps:(float)apps;
@end

@implementation InterAppAudioGroup

- (id)getApps:(float)apps
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = CADeprecated::TSingleton<IPCAUClient>::sInstance;
  if (CADeprecated::TSingleton<IPCAUClient>::sInstance)
  {
    os_unfair_recursive_lock_lock_with_options();
    if (!*(v5 + 248) || (v6 = *(v5 + 232), v38 = (v5 + 240), v6 == (v5 + 240)))
    {
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      v37 = v4;
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v6[5];
        v10 = *(*(v9 + 16) + 52);
        v11 = CFUUIDCreateFromUUIDBytes(0, *(v9 + 56));
        if (v11)
        {
          v12 = CFUUIDCreateString(0, v11);
          v13 = v12;
          if (v12)
          {
            v14 = CFStringCreateWithFormat(0, 0, @"com-apple-audiounit:%@/%c", v12, 78);
            if (v14)
            {
              v15 = CFURLCreateWithString(0, v14, 0);
              CFRelease(v14);
            }

            else
            {
              v15 = 0;
            }

            CFRelease(v13);
          }

          else
          {
            v15 = 0;
          }

          CFRelease(v11);
        }

        else
        {
          v15 = 0;
        }

        v16 = *(*(v9 + 16) + 168);
        Icon = AudioComponentGetIcon(*(v9 + 48), apps);
        CFRetain(v16);
        v18 = v8 - v7;
        v19 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0x666666666666666)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        if (0x999999999999999ALL * (-v7 >> 3) > v20)
        {
          v20 = 0x999999999999999ALL * (-v7 >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * (-v7 >> 3) >= 0x333333333333333)
        {
          v21 = 0x666666666666666;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          if (v21 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v22 = 40 * v19;
        *v22 = 0;
        *(v22 + 4) = v10;
        *(v22 + 8) = Icon;
        *(v22 + 16) = v16;
        *(v22 + 24) = 0;
        *(v22 + 32) = v15;
        v8 = 40 * v19 + 40;
        v23 = (v22 + 40 * (v18 / -40));
        memcpy(v23, v7, v18);
        if (v7)
        {
          operator delete(v7);
        }

        v7 = v23;
        v24 = v6[1];
        if (v24)
        {
          do
          {
            v25 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v25 = v6[2];
            v26 = *v25 == v6;
            v6 = v25;
          }

          while (!v26);
        }

        v6 = v25;
      }

      while (v25 != v38);
      os_unfair_recursive_lock_unlock();
      v4 = v37;
      if (v23 != v8)
      {
        v27 = v23;
        do
        {
          AddApp(v27++, apps, v37);
        }

        while (v27 != v8);
      }

      if (v23)
      {
        operator delete(v23);
      }
    }
  }

  if (CADeprecated::TSingleton<AURegistrationServerConnection>::sInstance)
  {
    v28 = *(CADeprecated::TSingleton<AURegistrationServerConnection>::sInstance + 48);
    memset(&msg_16[4], 0, 44);
    msg_4 = 0;
    reply_port = mig_get_reply_port();
    msg_8 = v28;
    msg_12 = reply_port;
    msg = 5395;
    *msg_16 = 0x15F9E00000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&msg);
      v30 = msg_12;
    }

    else
    {
      v30 = reply_port;
    }

    v31 = mach_msg(&msg, 275, 0x18u, 0x40u, v30, gMediaServerTimeout, 0);
    v32 = v31;
    if ((v31 - 268435458) <= 0xE && ((1 << (v31 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg_12);
    }

    else
    {
      if (!v31)
      {
        if (*&msg_16[4] != 90114 || (msg & 0x80000000) == 0 || *&msg_16[8] != 1 || msg_4 != 56 || msg_8 || msg_16[23] != 1 || (v33 = *&msg_16[24], *&msg_16[24] != *&msg_16[36]))
        {
LABEL_57:
          mach_msg_destroy(&msg);
          goto LABEL_64;
        }

        v34 = *&msg_16[12];
        goto LABEL_60;
      }

      mig_dealloc_reply_port(msg_12);
    }

    if (v32 == 268435460)
    {
      if ((msg & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], msg_12);
      }

      goto LABEL_57;
    }

    if (v32)
    {
      goto LABEL_64;
    }

    v34 = 0;
    v33 = 0;
LABEL_60:
    CADeserializer::CADeserializer(&msg, v34);
    while (*&msg_16[8] != *msg_16)
    {
      v40 = 0;
      CADeserializer::Read(&msg, &v40);
      v39.var0 = v40 != 0;
      CADeserializer::Read(&msg, &v39.var1);
      v39.var2 = 0;
      operator>>();
      operator>>();
      operator>>();
      AddApp(&v39, apps, v4);
    }

    mig_deallocate(v34, v33);
    MEMORY[0x193ADE3E0](&msg);
  }

LABEL_64:
  v35 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)sharedInstance
{
  if (gInterAppAudioGroupOnce != -1)
  {
    dispatch_once(&gInterAppAudioGroupOnce, &__block_literal_global_1461);
  }

  return gInterAppAudioGroup;
}

InterAppAudioGroup *__36__InterAppAudioGroup_sharedInstance__block_invoke()
{
  result = objc_alloc_init(InterAppAudioGroup);
  gInterAppAudioGroup = result;
  return result;
}

@end