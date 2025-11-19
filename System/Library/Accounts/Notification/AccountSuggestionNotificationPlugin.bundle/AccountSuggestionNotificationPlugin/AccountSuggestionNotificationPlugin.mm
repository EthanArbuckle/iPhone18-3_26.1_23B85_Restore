uint64_t sub_F38()
{
  v1 = OBJC_IVAR____TtC35AccountSuggestionNotificationPlugin35AccountSuggestionNotificationPlugin____lazy_storage___manager;
  if (*(v0 + OBJC_IVAR____TtC35AccountSuggestionNotificationPlugin35AccountSuggestionNotificationPlugin____lazy_storage___manager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC35AccountSuggestionNotificationPlugin35AccountSuggestionNotificationPlugin____lazy_storage___manager);
  }

  else
  {
    v3 = v0;
    v4 = sub_165C();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = sub_162C();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_10AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountSuggestionNotificationPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1114(void *a1, int a2, void *a3)
{
  v40 = a3;
  v41 = a1;
  v4 = sub_167C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v39 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v39 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v39 - v17;
  __chkstk_darwin(v16);
  v20 = &v39 - v19;
  sub_165C();
  if (sub_15FC())
  {
    if (MKBDeviceUnlockedSinceBoot())
    {
      sub_161C();
      v21 = sub_166C();
      v22 = sub_168C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109120;
        *(v23 + 4) = a2;
        _os_log_impl(&dword_0, v21, v22, "AccountSuggestionNotificationPlugin called with changeType %u", v23, 8u);
      }

      v24 = *(v5 + 8);
      v24(v15, v4);
      switch(a2)
      {
        case 3:
          if (v40)
          {
            v25 = v40;
            sub_F38();
            sub_163C();
            goto LABEL_21;
          }

          break;
        case 2:
          if (v41)
          {
            v25 = v41;
            sub_F38();
            sub_164C();
            goto LABEL_21;
          }

          break;
        case 1:
          if (v41)
          {
            v25 = v41;
            sub_F38();
            sub_160C();
LABEL_21:
          }

          break;
        default:
          sub_161C();
          v33 = sub_166C();
          v34 = sub_168C();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_0, v33, v34, "unknown change type??", v35, 2u);
          }

          v24(v12, v4);
          break;
      }

      sub_161C();
      v36 = sub_166C();
      v37 = sub_168C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_0, v36, v37, "AccountSuggestionNotificationPlugin finished", v38, 2u);
      }

      return (v24)(v9, v4);
    }

    sub_161C();
    v30 = sub_166C();
    v31 = sub_168C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "Not unlocked since first boot, we can't do anything", v32, 2u);
    }

    return (*(v5 + 8))(v18, v4);
  }

  else
  {
    sub_161C();
    v26 = sub_166C();
    v27 = sub_168C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Feature disabled", v28, 2u);
    }

    return (*(v5 + 8))(v20, v4);
  }
}