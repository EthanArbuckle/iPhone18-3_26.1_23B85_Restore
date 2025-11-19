id sub_29C8E11A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Plugin();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29C8E11F8()
{
  v0 = sub_29C8E1700();
  sub_29C8E167C(v0, qword_2A1796CE8);
  sub_29C8E1644(v0, qword_2A1796CE8);
  return sub_29C8E16F0();
}

void sub_29C8E1278(void *a1, int a2, void *a3)
{
  if (!a1)
  {
    goto LABEL_19;
  }

  v6 = [a1 accountType];
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = [v6 identifier];

  if (!v8)
  {
LABEL_19:
    v21 = *MEMORY[0x29EDB81C8];
    sub_29C8E1710();
    goto LABEL_20;
  }

  v9 = sub_29C8E1710();
  v11 = v10;

  v12 = *MEMORY[0x29EDB81C8];
  v13 = sub_29C8E1710();
  if (!v11)
  {
LABEL_20:

    return;
  }

  if (v9 == v13 && v11 == v14)
  {

    if (a2 != 2)
    {
LABEL_11:
      if (a2 == 1)
      {
        if (qword_2A1796CE0 != -1)
        {
          swift_once();
        }

        v17 = sub_29C8E1700();
        sub_29C8E1644(v17, qword_2A1796CE8);
        v18 = sub_29C8E16E0();
        v19 = sub_29C8E1720();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_29C8E0000, v18, v19, "LockdownModeAccountNotificationPlugin: account added", v20, 2u);
          MEMORY[0x29ED4A040](v20, -1, -1);
        }

        notify_post("com.apple.LockdownMode.accountChanged");
      }

      return;
    }
  }

  else
  {
    v16 = sub_29C8E1730();

    if ((v16 & 1) == 0)
    {
      return;
    }

    if (a2 != 2)
    {
      goto LABEL_11;
    }
  }

  if (a3)
  {
    v22 = objc_opt_self();
    v32 = a1;
    v33 = a3;
    v23 = [v22 sharedInstance];
    v24 = [v23 securityLevelForAccount_];

    if (v24 == 4 || (v25 = [v22 sharedInstance], v26 = objc_msgSend(v25, sel_securityLevelForAccount_, v32), v25, v26 != 4))
    {

      v31 = v32;
    }

    else
    {
      if (qword_2A1796CE0 != -1)
      {
        swift_once();
      }

      v27 = sub_29C8E1700();
      sub_29C8E1644(v27, qword_2A1796CE8);
      v28 = sub_29C8E16E0();
      v29 = sub_29C8E1720();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_29C8E0000, v28, v29, "LockdownModeAccountNotificationPlugin: account is now eligible", v30, 2u);
        MEMORY[0x29ED4A040](v30, -1, -1);
      }

      notify_post("com.apple.LockdownMode.accountChanged");
      v31 = v33;
    }
  }
}

uint64_t sub_29C8E1644(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_29C8E167C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}