@interface PersonalAudioListener
+ (id)sharedInstance;
- (PersonalAudioListener)init;
- (id).cxx_construct;
- (void)_fire;
- (void)addListener:(function<void)( withID:;
- (void)dealloc;
- (void)removeListener:(unsigned int)listener;
@end

@implementation PersonalAudioListener

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 850045863;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 11) = 0;
  return self;
}

- (void)dealloc
{
  v3 = +[PASettings sharedInstance];
  [v3 registerUpdateBlock:0 forRetrieveSelector:"personalMediaEnabledByRouteUID" withListener:self];

  v4 = +[PASettings sharedInstance];
  [v4 registerUpdateBlock:0 forRetrieveSelector:"personalMediaConfigurationByRouteUID" withListener:self];

  v5 = +[PASettings sharedInstance];
  [v5 registerUpdateBlock:0 forRetrieveSelector:"accommodationTypesByRouteUID" withListener:self];

  v6.receiver = self;
  v6.super_class = PersonalAudioListener;
  [(PersonalAudioListener *)&v6 dealloc];
}

- (PersonalAudioListener)init
{
  v18.receiver = self;
  v18.super_class = PersonalAudioListener;
  v2 = [(PersonalAudioListener *)&v18 init];
  v3 = +[PASettings sharedInstance];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_459518;
  v16[3] = &unk_6D8008;
  v4 = v2;
  v17 = v4;
  [v3 registerUpdateBlock:v16 forRetrieveSelector:"personalMediaEnabledByRouteUID" withListener:v4];

  v5 = +[PASettings sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_4595EC;
  v14[3] = &unk_6D8008;
  v6 = v4;
  v15 = v6;
  [v5 registerUpdateBlock:v14 forRetrieveSelector:"personalMediaConfigurationByRouteUID" withListener:v6];

  v7 = +[PASettings sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_4596C0;
  v12[3] = &unk_6D8008;
  v8 = v6;
  v13 = v8;
  [v7 registerUpdateBlock:v12 forRetrieveSelector:"accommodationTypesByRouteUID" withListener:v8];

  v9 = v13;
  v10 = v8;

  return v10;
}

- (void)_fire
{
  selfCopy = self;
  v3 = sub_68E60();
  v4 = selfCopy;
  v5 = v3;
  operator new();
}

- (void)removeListener:(unsigned int)listener
{
  std::mutex::lock((self + 32));
  v6 = *(self + 1);
  v5 = *(self + 2);
  v7 = v5;
  if (v6 != v5)
  {
    while (1)
    {
      v10 = *v6;
      sub_51F38(v12, (v6 + 2));
      sub_4C70(v12);
      if (v10 == listener)
      {
        break;
      }

      v6 += 10;
      if (v6 == v5)
      {
        goto LABEL_13;
      }
    }

    if (v6 != v5)
    {
      v8 = v6 + 10;
      if (v6 + 10 == v5)
      {
        v7 = v6;
      }

      else
      {
        v7 = v6;
        do
        {
          v11 = *v8;
          sub_51F38(v12, (v8 + 2));
          sub_4C70(v12);
          if (v11 != listener)
          {
            sub_459E28(v7, v8);
            v7 += 40;
          }

          v8 += 10;
        }

        while (v8 != v5);
      }
    }
  }

LABEL_13:
  v9 = *(self + 2);
  if (v7 != v9)
  {
    do
    {
      sub_4C70(v9 - 32);
      v9 -= 40;
    }

    while (v9 != v7);
    *(self + 2) = v7;
  }

  std::mutex::unlock((self + 32));
}

- (void)addListener:(function<void)( withID:
{
  std::mutex::lock((self + 32));
  sub_51F38(v23, a3);
  v8 = *(self + 2);
  v7 = *(self + 3);
  if (v8 >= v7)
  {
    v10 = *(self + 1);
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v10) >> 3);
    v12 = v11 + 1;
    if (v11 + 1 > 0x666666666666666)
    {
      sub_189A00();
    }

    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v10) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x666666666666666)
      {
        operator new();
      }

      sub_6ACD8();
    }

    *(40 * v11) = a4;
    v9 = 40 * v11 + 40;
    sub_24B68C(40 * v11 + 8, v23);
    v16 = *(self + 1);
    v15 = *(self + 2);
    v17 = 40 * v11 - (v15 - v16);
    if (v15 != v16)
    {
      v18 = 40 * v11 - 8 * ((v15 - v16) >> 3) + 8;
      v19 = *(self + 1);
      v20 = v19;
      do
      {
        v21 = *v20;
        v20 += 40;
        *(v18 - 8) = v21;
        v18 = sub_24B68C(v18, (v19 + 8)) + 40;
        v19 = v20;
      }

      while (v20 != v15);
      do
      {
        sub_4C70((v16 + 8));
        v16 += 40;
      }

      while (v16 != v15);
    }

    v22 = *(self + 1);
    *(self + 1) = v17;
    *(self + 1) = 40 * v11 + 40;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v8 = a4;
    v9 = (v8 + 10);
    sub_24B68C((v8 + 2), v23);
  }

  *(self + 2) = v9;
  sub_4C70(v23);
  std::mutex::unlock((self + 32));
}

+ (id)sharedInstance
{
  if ((atomic_load_explicit(&qword_6FF588, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FF588))
  {
    qword_6FF580 = objc_alloc_init(PersonalAudioListener);
    __cxa_guard_release(&qword_6FF588);
  }

  v2 = qword_6FF580;

  return v2;
}

@end